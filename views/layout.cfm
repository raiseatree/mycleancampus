<cfoutput>
<cfparam name="title" default="Welcome to CleanCampus">
<cfparam name="page" default="">
	
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>#title#</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		#stylesheetLinkTag('bootstrap,bootstrap-responsive')#
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,600" rel="stylesheet">
		
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	    
	    <!-- Include JQ here as we use it in various places around the site -->
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
					
					<cfif Not(IsDefined("data.hideNav"))>
						<div class="nav-collapse collapse">
						
							<ul class="nav">
								<li<cfif page EQ 'home'> class="active"</cfif>><a href="/">Home</a></li>
								<li><a href="/##benefits">Benefits</a></li>
								<li><a href="/##features">Features</a></li>
								<li<cfif page EQ 'contact'> class="active"</cfif>>#linkTo(controller="main", action="contact", text="Contact")#</a></li>
								<li>#linkTo(controller="main", action="signup", text="Sign Up &raquo;", class="btn btn-primary")#</li>
							</ul>
						
						</div><!--/.nav-collapse -->
					</cfif>
				
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
		
		<!--- Display any flash messages --->
		<cfif NOT flashIsEmpty()>
			<div id="notification" class="notification <cfif flashKeyExists('success')>success<cfelseif flashKeyExists('error')>error</cfif>">
				<span id="notification-text"><cfif flashKeyExists("success")>#flash("success")#<cfelseif flashKeyExists("error")>#flash("error")#</cfif></span>
			</div>
		</cfif>
		
		<!-- Cookie control stuff -->
		<script src="http://www.geoplugin.net/javascript.gp" type="text/javascript"></script>
		
		<!-- JS Here to load page quicker -->
		#javaScriptIncludeTag('cookieControl-5.1.min,global')#
		
		<!-- More Cookie Control Stuff -->
		<script type="text/javascript">//<![CDATA[
			 cookieControl({
			     introText:'<p>This site uses some unobtrusive cookies to store information on your computer.</p>',
			     fullText:'<p>Some cookies on this site are essential, and the site won\'t work as expected without them. These cookies are set when you submit a form, login or interact with the site by doing something that goes beyond clicking on simple links.</p><p>We also use some non-essential cookies to anonymously track visitors or enhance your experience of the site. If you\'re not happy with this, we won\'t set these cookies but some nice features of the site may be unavailable.</p><p>To control third party cookies, you can also adjust your <a href="browser-settings" target="_blank">browser settings</a>.</p><p>By using our site you accept the terms of our <a href="http://www.mycleancampus.com/main/privacy">Privacy Policy</a>.</p>',
			     position:'left', // left or right
			     shape:'triangle', // triangle or diamond
			     theme:'light', // light or dark
			     startOpen:false,
			     autoHide:6000,
			     subdomains:true,
			     protectedCookies: [], //list the cookies you do not want deleted ['analytics', 'twitter']
			     consentModel:'information_only',
			     onAccept:function(){ccAddAnalytics()},
			     onReady:function(){},
			     onCookiesAllowed:function(){ccAddAnalytics()},
			     onCookiesNotAllowed:function(){},
			     countries:'' // Or supply a list ['United Kingdom', 'Greece']
			     });
			
			     function ccAddAnalytics() {
			       jQuery.getScript("http://www.google-analytics.com/ga.js", function() {
			         var GATracker = _gat._createTracker('UA-37319894-1');
			         GATracker._trackPageview();
			       });
			     }
			  //]]>
		</script>  

		<!-- Google Analytics Stuff -->
		#googleAnalyticsTag()#

	</body>
</html>
</cfoutput>