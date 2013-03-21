<!--- Place functions here that should be globally available in your application. --->
<cffunction name="GetEncryptKey">
	
	<cfreturn "675FTYYSsdWT6&T6sta">
	
</cffunction>

<cffunction name="loadAppURL" hint="I return the URL to the CleanCampus app">

	<cfif findNoCase('local', CGI.HTTP_HOST) EQ 0>
		<!--- Production --->
		<cfreturn 'http://beta.cleancampus.co.uk' />
	<cfelse>
		<!--- Development --->
		<cfreturn 'http://cleancampus.local:8600' />
	</cfif>

</cffunction>

<cffunction name="rtnTaxRate" hint="I return the VAT tax rate">
	
	<cfreturn 20>

</cffunction>