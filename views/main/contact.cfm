<cfoutput>
	
	<div class="row">
		<br /><br /><br /><br />
		<div class="span7">
			<h2>Contact CleanCampus</h2>
			<p><strong>Got a question? We're hear to help and would love to hear from you</strong></p>
			<p>#mailTo(emailAddress="info@cleancampus.co.uk?subject=I have a question!", class="btn btn-primary", name="Email Us &raquo;")#</p>
			
			<h3>Book in a Webinar Session</h3>
			<p>We frequently run online demos of CleanCampus and would love to show you as well - simply register for the next demo at <a href="http://www.cleancampus.eventbrite.com">http://www.cleancampus.eventbrite.com</a></p>
			<p>#linkTo(href="http://www.cleancampus.eventbrite.com", class="btn", text="Book A Demo &raquo;")#</p>
			
			<h3>Ask a Question</h3>
			<p>If you have any questions, we'd be delighted to answer them for you. Simply send an email to: #mailTo(emailAddress="info@cleancampus.co.uk?subject=I have a question!", name="info@cleancampus.co.uk")#</p>
			<p>#mailTo(emailAddress="info@cleancampus.co.uk?subject=I have a question!", class="btn", name="Ask A Question &raquo;")#</p>
				
			<h3>Book in Telephone Chat</h3>
			<p>We'd be more than happy to chat through any questions or queries you have on the phone, simply call us on 0191 XXX XXXX or email us to arrange a callback: #mailTo(emailAddress="info@cleancampus.co.uk?subject=Call Me!", name="info@cleancampus.co.uk")#</p>
			<p>#mailTo(emailAddress="info@cleancampus.co.uk?subject=Call Me!", class="btn", name="Call Me &raquo;")#</p>
				
			<h3>FAQ</h3>
			<h4>Do I have to pay online?</h4>
			<p>Not at all, we are happy to invoice you as long as you have raised a purchase order internally and include the Purchase Order reference number on the #linkTo(controller="main", action="signup", text="Sign Up Page")#.</p>
		</div>
		
		<div class="span5">
			[LINK TO VIDEO HERE]
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