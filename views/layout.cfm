<cfoutput>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		#stylesheetLinkTag('bootstrap,bootstrap-responsive')#
		
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	    
	    <script language="javascript" type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		
	</head>
	
	<body>
		
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					#linkTo(controller="main", action="home", class="brand", text=imageTag('cleancampus-logo.png'))#
					
					<div class="nav-collapse collapse">
						
						<ul class="nav">
							<li class="active"><a href="/">Home</a></li>
							<li><a href="/##benefits">Benefits</a></li>
							<li><a href="/##features">Features</a></li>
							<li>#linkTo(controller="main", action="contact", text="Contact")#</a></li>
							<li>#linkTo(controller="main", action="signup", text="Sign Up &raquo;", class="btn btn-primary")#</li>
						</ul>
					
					</div><!--/.nav-collapse -->
				
				</div>
			
			</div>

		</div>

		<div class="container">

			#includeContent()#
	
			<hr>
	
			<footer>
			  <p>&copy; CleanCampus 2012-#DateFormat(now(), 'yy')#</p>
			</footer>
	
		</div> <!-- /container -->
		
		<!-- JS Here to load page quicker -->
		#javaScriptIncludeTag('jquery.min,bootstrap-dropdown,bootstrap-carousel')#
	
	</body>
</html>
</cfoutput>