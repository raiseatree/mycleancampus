<cfoutput>
	
	<div class="row">
		<br /><br /><br /><br />
		<div class="span7">
			<h2>Contact CleanCampus</h2>
			<p><strong>You're 30 seconds away from having a much cleaner campus! Fill in the form below and we'll activate your account immediately.</strong></p>
			
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
				
				<fieldset class="purchaseOrder">
					<legend>Purchase Order Details</legend>
					<p>
						<span class="span2"><strong>Purchase Order Ref#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="purchaseOrder")#</span>
					</p>
				</fieldset>
				
				<br /><br />
				<p>
					<span class="span2">#submitTag(name="btnSubmit", class="btn btn-primary btn-large span2", value="Sign Up &raquo;")#</span> <span class="span4"><strong>Any questions? Give us a call on 0191 XXX XXXX or email #mailTo('info@cleancampus.com')#</strong></span>
				</p>
			
			#endFormTag()#
		</div>
		
		<div class="span5">
			<a href="##">#imageTag('features.png')#</a>
		</div>

	</div>
	
	<script>
		$(document).ready(function() {
			$('.online').click(function() {
				$('.purchaseOrder').fadeOut();
			});
			$('.invoice').click(function() {
				$('.purchaseOrder').fadeIn();
			});
		});
	</script>

</cfoutput>