<cfoutput>

	<cfparam name="title" default="Sign Up to CleanCampus">
	
	<div class="row">
		<br /><br /><br /><br />
		<div class="span12">
			<h2>Sign Up CleanCampus</h2>
			<p><strong>You're 30 seconds away from having a much cleaner campus! Select your package and then fill in the short form and we'll activate your account as quickly as we can.</strong></p>
		</div>	
	
		<span class="signupBox">
			<h3>College</h3>
			<h4><strike class="red">&pound;500.00</strike> &pound;250.00/year</h4>
			<p class="green"><strong>ex VAT</strong></p>
			<p>Up to 250 staff</p>
			<p><a href="##" class="btn btn-primary btn-large signup-btn">Select</a></p>
		</span>
		<span class="signupBox">
			<h3>Large College</h3>
			<h4><strike class="red">&pound;1,000.00</strike> &pound;500.00/year</h4>
			<p class="green"><strong>ex VAT</strong></p>
			<p>Up to 1,000 staff</p>
			<p><a href="##" class="btn btn-primary btn-large signup-btn">Select</a></p>
		</span>
		<span class="signupBox">
			<h3>University</h3>
			<h4><strike class="red">&pound;2,000.00</strike> &pound;1,000.00/year</h4>
			<p class="green"><strong>ex VAT</strong></p>
			<p>Up to 5,000 staff</p>
			<p><a href="##" class="btn btn-primary btn-large signup-btn">Select</a></p>
		</span>
		<span class="signupBox">
			<h3>Large University</h3>
			<h4><strike class="red">&pound;4,000.00</strike> &pound;2,000.00/year</h4>
			<p class="green"><strong>ex VAT</strong></p>
			<p>Over 5,000 staff</p>
			<p><a href="##" class="btn btn-primary btn-large signup-btn">Select</a></p>
		</span>
	</div>
	
	<div class="row hide" id="mainForm">
		<br /><br />
		
		<div class="span7">

			#startFormTag(controller="main", action="processSignup", method="post")#
			
				<p>#imageTag('req.png')# Denotes a required field</p>
				
				<fieldset>
					<legend>Your Details</legend>
					<p>
						<span class="span2"><strong>Full Name#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="fullName")#</span>
					</p>
					<p>
						<span class="span2"><strong>Email#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="email")#</span>
					</p>
					<p>
						<span class="span2"><strong>Telephone#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="tel")#</span>
					</p>
				</fieldset>
				
				<fieldset>
					<legend>Campus Details</legend>
					<p>
						<span class="span2"><strong>Campus Name#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="campusName")#</span>
					</p>
					<p>
						<span class="span2"><strong>Address#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="campusAddress")#</span>
					</p>
					<p>
						<span class="span2"><strong>Address 2 </strong></span>
						<span class="span3">#textFieldTag(name="campusAddress2")#</span>
					</p>
					<p>
						<span class="span2"><strong>Town/City#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="campusTownCity")#</span>
					</p>
					<p>
						<span class="span2"><strong>State/County#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="campusCounty")#</span>
					</p>
					<p>
						<span class="span2"><strong>Post/Zip Code#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="campusPostCode")#</span>
					</p>
				</fieldset>
				
				<fieldset>
					<legend>Payment Details</legend>
					<p>
						<span class="span2"><strong>Payment Option#imageTag('req.png')# </strong></span>
						<span class="span3">#radioButtonTag(name="paymentOption", class="online", value="online")# Pay Online Securely #imageTag('worldpay.gif')#<br /><br />#radioButtonTag(name="paymentOption", class="invoice", value="invoice")# Pay by Invoice</span>
						<br />
					</p>
				</fieldset>
				
				<fieldset class="purchaseOrder hide">
					<legend>Purchase Order Details</legend>
					<p>
						<span class="span2"><strong>Purchase Order Ref#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="purchaseOrder")#</span>
					</p>
					
					<legend>Invoice Address Details</legend>
					<p>
						<span class="span2"><strong>FAO#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="invoiceFAO")#</span>
					</p>
					<p>
						<span class="span2"><strong>Address#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="invoiceAddress")#</span>
					</p>
					<p>
						<span class="span2"><strong>Address 2 </strong></span>
						<span class="span3">#textFieldTag(name="invoiceAddress2")#</span>
					</p>
					<p>
						<span class="span2"><strong>Town/City#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="invoiceTownCity")#</span>
					</p>
					<p>
						<span class="span2"><strong>State/County#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="invoiceCounty")#</span>
					</p>
					<p>
						<span class="span2"><strong>Post/Zip Code#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="invoicePostCode")#</span>
					</p>
				</fieldset>
				
				<br /><br />
				<p>
					<span class="span2">#submitTag(name="btnSubmit", class="btn btn-primary btn-large span2", value="Sign Up Now &raquo;")#</span> <span class="span4"><strong>Any questions? Give us a call on 0191 XXX XXXX or email #mailTo('hello@cleancampus.com')#</strong></span>
				</p>
			
			#endFormTag()#
		</div>
		
		<div class="span5">
			<a href="##">#imageTag('features.png')#</a>
		</div>

	</div>
	
	<script>
		$(document).ready(function() {
			
			$('.signup-btn').click(function() {
				
				// Reset any packages which have previously been selected
				$('.signupBox').each(function() {
					$(this).css('background-color','rgba(1,1,1,0)');
					$('.signup-btn').text('Select');
				});
				
				// Activate the new styles for the chosen package
				$(this).parent().parent().css('background-color','rgba(131,197,0,0.25)');
				
				// Change the text on the button
				$(this).text('Selected');
				
				$('##mainForm').fadeIn();
			});
			
			$('.online').click(function() {
				$('.purchaseOrder').fadeOut();
			});
			$('.invoice').click(function() {
				$('.purchaseOrder').fadeIn();
			});
		});
	</script>

</cfoutput>