<cfoutput>
<p>Dear Team,</p>
<p>Someone has registered for Clean Campus - you need to approve this account before it goes live:</p>
<p>---</p>
<p>Customer Name:<br />#customer.fullName#</p>
<p>Email: <br />#customer.email#</p>
<p>Phone: <br />#customer.phone#</p>
<p>-</p>
<p>Institution Name: <br />#uni#</p>
<p>Address: <br />#customer.address#</p>
<p>Address2: <br />#customer.address2#</p>
<p>Town/City: <br />#customer.townCity#</p>
<p>County: <br />#customer.county#</p>
<p>Post Code: <br />#customer.postCode#</p>
<p>-</p>
<p>Referral: <br />#customer.referral#</p>
<p>-</p>
<p>Payment Method: <br />Purchase Order/Invoice</p>
<p>-</p>
<p>Purchase Order No:<br />#invoice.purchaseOrderRef#</p>
<p>FAO:<br />#invoice.fao#</p>
<p>Address:<br />#invoice.address#</p>
<p>Address2:<br />#invoice.address2#</p>
<p>Town/City:<br />#invoice.townCity#</p>
<p>County:<br />#invoice.county#</p>
<p>Post Code:<br />#invoice.postCode#</p>

<cfset urlLink = "http://#CGI.HTTP_HOST##URLFor(controller='main', action='approve', params='ID=#encrypt(customer.ID, GetEncryptKey(),'CFMX_COMPAT','Hex')#')#">
<p><a href="#urlLink#">Approve New Account</a></p>

</cfoutput>