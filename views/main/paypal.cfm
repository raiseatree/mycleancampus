<cfparam name="data">
<cfoutput>

	<cfparam name="title" default="Welcome to CleanCampus - Pay online securely with PayPal">
	
	<div class="row">
		<br /><br /><br /><br />
		<div class="span12">
			<h2>CleanCampus - Pay Online Securely Now</h2>
			<p>Thanks for joining CleanCampus! Simply click the PayPal button below now to complete your payment and then you'll be away with CleanCampus instantly.</p>
			<p><strong>NOTE - The transaction on your statement will be marked as from 'WASTEACTION RESOURCE EFFICIENCY'</strong></p>
		</div>
	</div>
	
	<br/>

	<script src="paypal-button.min.js?merchant=daniel@wasteaction.com" 
	    data-button="buynow" 
	    data-name="Clean Campus Licence" 
	    data-amount="#data.amount#" 
	    data-shipping="0.00" 
	    data-tax="#((data.amount/100)*rtnTaxRate())#" 
	    data-currency="GBP"></script>

	#javascriptIncludeTag('paypal-button.min')#

	<hr/>
	
	<h3>Contact CleanCampus</h3>
	<p><strong>Got a question? We're hear to help and would love to hear from you</strong></p>
	<p class="clearfix">
		#mailTo(emailAddress="hello@cleancampus.co.uk", name="Email Us &raquo;", class="btn btn-primary span1")#
		<span class="span3">Alternatively, feel free to give us a call on 0191 XXX XXXX</span>
	</p>

</cfoutput>