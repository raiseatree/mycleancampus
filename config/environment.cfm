<cfif FindNoCase('.co',CGI.HTTP_HOST) EQ 0>
	<cfset set(environment="development")>
<cfelse>
	<cfset set(environment="production")>
</cfif>