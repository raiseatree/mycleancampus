<cfoutput>

	<cfparam name="title" default="Welcome to CleanCampus!">
	
	<div class="row">
		<br /><br /><br /><br />
		<div class="span12">
			<h2>Welcome to CleanCampus!</h2>
			<p><strong>Thanks for joining CleanCampus! We'll generate your invoice now and send it off to the nominated contact within your organisation.</strong></p>
		</div>
	</div>
	
	<br />
	
	<!--- Code to log into the app --->
	#linkTo(href="#loadAppURL()#", class="btn btn-primary btn-large", text="Login to CleanCampus &raquo;")#
	
</cfoutput>