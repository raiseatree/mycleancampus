<cfcomponent extends="Controller" output="false">

	<cffunction name="encryptPassword" access="private">
		<cfargument name="password" type="string" required="yes">
		
		<!--- Create the return structure --->
		<cfset local.rtn = StructNew()>
		
		<!--- First create a salt and hash the password --->
		<cfset theSalt = CreateUUID()>
		<cfset local.rtn.password = Hash(ARGUMENTS.password & theSalt, 'SHA-512')>
		
		<!--- Next encrypt the salt --->
		<cfset local.rtn.passwordsalt = encrypt(theSalt,getEncryptKey(),'CFMX_COMPAT','hex')>
		
		<cfreturn local.rtn>
	
	</cffunction>

	<cffunction name="init"></cffunction>
	
	<cffunction name="home"></cffunction>
	
	<cffunction name="paypal">
	
		<cfif IsDefined("SESSION.amount")>
			<!--- Define the payment amount and details --->
			<cfset data.amount = SESSION.amount>
			
			<!--- Hide the nav menu so the user can't escape --->
			<cfset data.hideNav = true>
		<cfelse>
			<!--- Redirect back --->
			<cfset redirectTo(controller="main", action="signup")>
		</cfif>
	
	</cffunction>
	
	<cffunction name="processSignup">
	
		<cfif IsPost()>
		
			<!--- Create the expiry date and determine whether to auto enable the customer's account --->
			<cfset params.customer.licenceExpiry = DateAdd("yyyy",1,now())>
			<cfif IsDefined("params.paymentOption") AND params.paymentOption EQ 'invoice'>
				<cfset params.customer.enabled = 1>
			<cfelse>
				<cfset params.customer.enabled = 0>
			</cfif>
			
			<!--- Work out if the user chose an institution we don't currently have in our db --->
			<cfif params.customer.universityID EQ 0>
				<cfif IsDefined("params.customer.newInstitution") AND params.customer.newInstitution GT ''>
					
					<!--- Add a new institution --->
					<cfset loc.addUni = model("university").create(uniName=params.customer.newInstitution)>
					<cfset params.customer.universityID = loc.addUni.ID>
					
				<cfelse>
					<cfset flashInsert(error="Sorry - If you specify 'other' for your institution you must enter a new Institution Name")>
					<cfset redirectTo(back=true)>
				</cfif>
			</cfif>
		
			<!--- Add the customer --->
			<cfset loc.addCustomer = model("customer").create(params.customer)>
			
			<!--- Check for errors --->
			<cfif loc.addCustomer.hasErrors()>
				<!--- Save the data the user input and render the signup form --->
				<cfset data.customer = loc.addCustomer>

				<!--- Check if any of the invoice details are filled in --->
				<cfif IsDefined("params.invoice")>
					<cfset data.invoice = params.invoice>
				</cfif>
				
				<!--- Load the packages --->
				<cfset data.packages = model("package").findAll(order="ID ASC")>
				
				<cfset renderPage(action="signup")>
			</cfif>
			
			<!--- Now add in a user to specific university so their account is setup --->
			<cfset StructAppend( params.customer, encryptPassword(params.customer.password) )>
			
			<!--- Split the name down and set the default roles --->
			<cfset params.customer.firstName = ListFirst(params.customer.fullName,' ')>
			<cfset params.customer.surname = ListLast(params.customer.fullName,' ')>
			<cfset params.customer.roles = 'user'>
		
			<!--- Create the user --->
			<cfset result = model("user").create(params.customer)>
			
			<!--- Check if the customer chose to pay by invoice --->
			<cfif IsDefined("params.paymentOption") AND params.paymentOption EQ 'invoice'>
			
				<!--- Save the customer number --->
				<cfset params.invoice.customerID = loc.addCustomer.ID>
			
				<!--- Add the customer invoice --->
				<cfset loc.invoice = model("customerinvoice").create(params.invoice)>
			
				<!--- Check for problems --->
				<cfif loc.invoice.hasErrors()>
					
					<!--- Delete the customer we added so we don't duplicate --->
					<cfset loc.del = model("customer").deleteOne(where="ID=#loc.addCustomer.ID#")>
					
					<!--- Save the customer data and the invoice data then render the registrations form again --->
					<cfset data.customer = loc.addCustomer>
					<cfset data.invoice = loc.invoice>
					
					<!--- Load the packages --->
					<cfset data.packages = model("package").findAll(order="ID ASC")>
					
					<cfset renderPage(action="signup")>
				<cfelse>
					<!--- Save the new customer --->
					<cfset loc.addCustomer.save()>
				</cfif>
			
				<!--- Flash and redirect --->
				<cfset flashInsert(success="Thanks for registering, your account is now setup")>
				<cfset redirectTo(controller="main", action="complete")>
			
			<cfelse>
				<!--- Work out the package the customer wants to subscribe to --->
				<cfset loc.package = model("package").findOne(where="ID=#params.customer.packageID#", returnAs="query")>
				
				<!--- Define the session variables and then forward to paypal --->
				<cfset SESSION.amount = loc.package.price>
				<cfset flashInsert(success="Thanks for registering, your account is now setup")>
				<cfset redirectTo(controller="main", action="paypal")>
			</cfif>
		
		<cfelse>
			<cfset flashInsert(error="Sorry - cannot be accessed like that")>
			<cfset redirectTo(back=true)>
		</cfif>
	
	</cffunction>
	
	<cffunction name="signup">
	
		<!--- Create a new customer instance --->
		<cfset data.customer = model("customer").new()>
		
		<!--- Create a new customer invoice instance --->
		<cfset data.invoice = model("customerinvoice").new()>
		
		<!--- Load the institutions --->
		<cfset data.institutions = model("university").findAll(order="uniName ASC")>
		
		<!--- Load the packages --->
		<cfset data.packages = model("package").findAll(order="ID ASC")>
		
		<cfset flashInsert(success="Half Price Early Adopter Offer - LIMITED TIME ONLY!")>
	
	</cffunction>

</cfcomponent>