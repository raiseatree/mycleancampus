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
		
	</head>
	
	<body>
		
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					<a class="brand" href="##">My Clean Campus</a>
					
					<div class="nav-collapse collapse">
						
						<ul class="nav">
							<li class="active"><a href="##">Home</a></li>
							<li><a href="##about">About</a></li>
							<li><a href="##contact">Contact</a></li>
							<li class="dropdown">
								<a href="##" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="##">Action</a></li>
									<li><a href="##">Another action</a></li>
									<li><a href="##">Something else here</a></li>
									<li class="divider"></li>
									<li class="nav-header">Nav header</li>
									<li><a href="##">Separated link</a></li>
									<li><a href="##">One more separated link</a></li>
								</ul>
							</li>
						</ul>
					
					</div><!--/.nav-collapse -->
				
				</div>
			
			</div>

		</div>

		<div class="container">

			#includeContent()#
	
			<hr>
	
			<footer>
			  <p>&copy; My Clean Campus 2012</p>
			</footer>
	
		</div> <!-- /container -->
		
		<!-- JS Here to load page quicker -->
		#javaScriptIncludeTag('jquery.min,bootstrap-dropdown,bootstrap-carousel')#
	
	</body>
</html>
</cfoutput>