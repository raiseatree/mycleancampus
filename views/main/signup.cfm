<cfparam name="data">
<cfoutput>

	<cfparam name="title" default="Sign Up to CleanCampus">
	
	<div class="row">
		<br /><br /><br /><br />
		<div class="span12">
			<h2>Sign Up CleanCampus</h2>
			<h3>Launch offer: Half price for first 20 subscribers!</h3>
			<p>You're 30 seconds away from having a much cleaner campus! Select your package and then fill in the short form and we'll activate your account so you can receive reports.</p>
		</div>	
	
		<cfloop query="data.packages">
			<span class="signupBox">
				<h3>#packageName#</h3>
				<h4><strike class="red">&pound;#DecimalFormat(price)#</strike> &pound;#DecimalFormat(price/2)#/year</h4>
				<p class="green"><strong>ex VAT</strong></p>
				<p>Up to #LSNumberFormat(noStaff)# staff</p>
				<p><a href="##" class="btn btn-primary btn-large signup-btn" id="#id#">Select</a></p>
			</span>
		</cfloop>
		
	</div>
	
	<div id="signupMsg">
	
		<h3>#imageTag('up-arrow.png')# Select a package above to proceed</h3>
	
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
						<span class="span3">#textField(objectName="data.customer", property="fullname", class="customer-name", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Email#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.customer", property="email", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Password#imageTag('req.png')# </strong></span>
						<span class="span3">#passwordFieldTag(name="customer[password]", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Telephone#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.customer", property="phone", label="")#</span>
					</p>
				</fieldset>
				
				<fieldset>
					<legend>Institution Details</legend>
					<p>
						<span class="span2"><strong>Institution Name#imageTag('req.png')# </strong></span>
						<span class="span3">#select(objectName="data.customer", property="universityID", options=data.institutions, includeBlank=true, label="", class="uniID")#</span>
					</p>
					<p class="hide other">
						<span class="span2"><strong>Enter Institution Name#imageTag('req.png')# </strong></span>
						<span class="span3">#textFieldTag(name="customer[newInstitution]", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Address#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.customer", property="address", class="customer-address", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Address 2 </strong></span>
						<span class="span3">#textField(objectName="data.customer", property="address2", class="customer-address2", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Town/City#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.customer", property="townCity", class="customer-towncity", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>State/County#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.customer", property="county", class="customer-county", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Post/Zip Code#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.customer", property="postCode", class="customer-postcode", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>How did you find us?#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.customer", property="referral", label="")#</span>
					</p>
				</fieldset>
				
				<fieldset>
					<legend>Payment Details</legend>
					<p>
						<span class="span2"><strong>Payment Option#imageTag('req.png')# </strong></span>
						<span class="span3">#radioButtonTag(name="paymentOption", class="online", value="online")# Pay Online Securely <br /><br />#imageTag('paypal.png')#<br /><br />#radioButtonTag(name="paymentOption", class="invoice", value="invoice")# Pay by Invoice</span>
						<br />
					</p>
				</fieldset>
				
				<fieldset class="purchaseOrder hide">
					<legend>Purchase Order Details</legend>
					<p>
						<span class="span2"><strong>Purchase Order Ref#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.invoice", property="purchaseOrderRef", label="")#</span>
					</p>
					
					<legend>Invoice Address Details</legend>
					<p>
						<span class="span2"><strong>FAO#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.invoice", property="fao", class="invoice-fao", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Address#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.invoice", property="address", class="invoice-address", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Address 2 </strong></span>
						<span class="span3">#textField(objectName="data.invoice", property="address2", class="invoice-address2", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Town/City#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.invoice", property="townCity", class="invoice-towncity", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>State/County#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.invoice", property="county", class="invoice-county", label="")#</span>
					</p>
					<p>
						<span class="span2"><strong>Post/Zip Code#imageTag('req.png')# </strong></span>
						<span class="span3">#textField(objectName="data.invoice", property="postCode", class="invoice-postcode", label="")#</span>
					</p>
				</fieldset>
				
				<br /><br />
				<p>
					#hiddenFieldTag(name="customer[packageID]", value="", id="packageID")#
					<span class="span2">#submitTag(name="btnSubmit", class="btn btn-primary btn-large span2", value="Sign Up Now &raquo;")#</span> <span class="span4"><strong>Any questions? <!---Give us a call on 0191 XXX XXXX or email---> Email us on #mailTo('hello@cleancampus.com')#</strong></span>
				</p>
			
			#endFormTag()#
		</div>
		
		<div class="span5">
			<a href="##">#imageTag('features.png')#</a>
		</div>

	</div>
	
	<script>
		$(document).ready(function() {
			
			// Add an other option into the institutions list 
			$('.uniID').append('<option value=0>Other</option>');
			
			// Action for when user chooses a package
			$('.signup-btn').click(function() {
				
				// Set the package id 
				$('##packageID').val($(this).attr('id'));
				
				// Reset any packages which have previously been selected
				$('.signupBox').each(function() {
					$(this).css('background-color','rgba(1,1,1,0)');
					$('.signup-btn').text('Select');
				});
				
				// Activate the new styles for the chosen package
				$(this).parent().parent().css('background-color','rgba(131,197,0,0.25)');
				
				// Change the text on the button
				$(this).text('Selected');
				
				$('##mainForm').fadeIn(function() {
					$('##signupMsg').hide();
				});
			});
			
			// Work out if user has selected 'other' institution
			$('.uniID').change(function() {
				var str = "";
				$(".uniID option:selected").each(function () {
					str += $(this).text()
				});
				
				if (str == 'Other') $('.other').fadeIn();
				//else $('.other').fadeOut();
			});
			
			// Show/hide the purchase order form
			$('.online').click(function() {
				$('.purchaseOrder').fadeOut();
			});
			$('.invoice').click(function() {
				$('.purchaseOrder').fadeIn();
				
				// Now prefill the user's billing/delivery details
				$('.invoice-fao').val($('.customer-name').val());
				$('.invoice-address').val($('.customer-address').val());
				$('.invoice-address2').val($('.customer-address2').val());
				$('.invoice-towncity').val($('.customer-towncity').val());
				$('.invoice-county').val($('.customer-county').val());
				$('.invoice-postcode').val($('.customer-postcode').val());
				
			});
		});
	</script>

</cfoutput>