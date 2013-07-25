<cfoutput>
	<cfparam name="title" default="Contact CleanCampus">
	<cfset page = 'contact'>
	
	<div class="row">
		<br /><br /><br /><br />
		<div class="span6">
			<h2>Contact CleanCampus</h2>
			<p><strong>Got a question? We're hear to help and would love to hear from you</strong></p>
			<p class="clearfix">
				#mailTo(emailAddress="hello@cleancampus.co.uk", name="Email Us &raquo;", class="btn btn-primary btn-large span2")#
				<!---<span class="span3">Alternatively, feel free to give us a call on 0191 XXX XXXX</span>--->
			</p>
			
			<hr/>

			<h3>Book in a Webinar Session</h3>
			<p>We frequently run online demos of CleanCampus and would love to show you as well - simply register for the next demo at <!---<a href="http://www.cleancampus.eventbrite.com">http://www.cleancampus.eventbrite.com</a>--->#LinkTo(href="https://attendee.gotowebinar.com/register/6717059822534318848", text="https://attendee.gotowebinar.com/register/6717059822534318848")#</p>
			
			<h3>Ask a Question</h3>
			<p>If you have any questions, we'd be delighted to answer them for you. Simply send an email to: #mailTo(emailAddress="hello@cleancampus.co.uk?subject=I have a question!", name="hello@cleancampus.co.uk")#</p>
				
			<h3>Book in Telephone Chat</h3>
			<p>We'd be more than happy to chat through any questions or queries you have on the phone, simply <!---call us on 0191 XXX XXXX or --->email us to arrange a callback: #mailTo(emailAddress="hello@cleancampus.co.uk?subject=Call Me!", name="hello@cleancampus.co.uk")#</p>
				
			<h3>FAQ</h3>
			<h4>Do I have to pay online?</h4>
			<p>Not at all, we are happy to invoice you as long as you have raised a purchase order internally and include the Purchase Order reference number on the #linkTo(controller="main", action="signup", text="Sign Up Page")#.</p>
		</div>
		
		<div class="span6">
			<iframe width="560" height="315" src="http://www.youtube.com/embed/QACVOOsY-u0" frameborder="0" allowfullscreen></iframe>
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