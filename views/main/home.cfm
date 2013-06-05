<cfoutput>
	<!--- Define the nav tab to highlight --->
	<cfset page = 'home'>
	
	<div id="myCarousel" class="carousel slide">
		
			<div class="hero-unit clearfix">
				<span class="span4">
					<h1>CleanCampus</h1><br />
					<p>CleanCampus gives approved staff or students the ability to report environmental and aesthetic issues using their smart phone, reports are automatically sent to relevant staff for attention.</p>
					<p><br />#linkTo(controller="main", action="signup", text="Sign Up &raquo;", class="btn btn-primary btn-large")#</p>
				</span>
				<span class="span6 pull-right">
					<iframe width="420" height="300" src="http://www.youtube.com/embed/83kKZ7jAGRU" frameborder="0" allowfullscreen></iframe>
				</span>
			</div>
			
	</div>

	<div class="row" id="benefits">
		
		<div class="span7">
			<h2>How Does CleanCampus Work?</h2>
			<p>Using their smart phone staff or students report problems on campus, such as fly tipping, broken glass, a light left on, a wonky paving slab, dog dirt or overflowing bins.</p>
			<p>The details of the problem are sent to a key contact on campus. The task is automatically assigned to the responsible person in order to fix the problem. Tasks are scheduled depending on their urgency and can be rejected or prioritised.</p>
			<p>When the job is fixed the status is updated and the original reporter is notified.</p>
		</div>
		
		<div class="span5"><br /><br /><br />
			#linkTo(href="https://itunes.apple.com/en/app/clean-campus/id648337851?mt=8", text=imageTag('app-store-logo.png'))#
			#imageTag('android-market-logo.png')#
		</div>
		
	</div><hr>
	
	<div class="row" id="features">
		
		<div class="span7">
			<h2>Benefits</h2>
			<p>Campus appearance is one of the most important aspects in attracting students. CleanCampus allows your staff and stakeholders to report issues and get them resolved quickly and efficiently - ensuring your campus is always at its best.</p>
			<p>CleanCampus also offers Facilities Managers the opportunity to evaluate all campus appearance issues in one place, over time. This allows managers to focus resources efficiently - toward the common goal of maintaining the campus at the highest possible standard. </p>
		</div>
		
		<div class="span2 offset1">
			#imageTag(source='iphone-scnshot.png', class="center-align span2")#
		</div>
		
	</div><hr>
	
	<div class="row">
		
		<div class="span7">
			<h2>Features</h2>
			<ul class="iconList">
				<li>Empower staff and students to be Campus Guardians</li>
				<li>Easy and simple reporting, scheduling and fixing.</li>
				<li>Integrates and satisfies requirements for Environmental Management Systems such as ISO14001 and EcoCampus.</li>
				<li>Provides the facility to manage assign, reject and schedule jobs.</li>
				<li>Overview on map to show stakeholders when jobs are complete and can be used to manage and spot trends and prevent problems in future.</li>
				<li>Download full job history for management and efficiency reports</li>
			</ul>
		</div>
		
		<div class="span5">
			#imageTag('features.png')#
		</div>
		
	</div><hr>
	
	<div class="row">
	
		<div class="span7">
			<h2>Sign Up To CleanCampus</h2>
			<p>The Estates Director or Facilities Manager or equivalent needs to register your campus in order to start receiving reports from app users. You can pay online or let us invoice you.</p>
			<p><p>#linkTo(controller="main", action="signup", text="Sign up now &raquo;", class="btn btn-primary btn-large")#</p></p>
			<p>Once you have signed up, your campus will then be live on the system and you will start getting notifications to the key contact. The administrator then assigns categories of tasks to relevant staff.</p>
		</div>
		
		<div class="span5">
			<h2>Download the iPhone App</h2>
			#linkTo(href="https://itunes.apple.com/en/app/clean-campus/id648337851?mt=8", text=imageTag('app-store-logo.png'))#
		</div>

	</div>

</cfoutput>