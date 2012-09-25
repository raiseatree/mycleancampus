<cfoutput>

	<!-- Main hero unit for a primary marketing message or call to action -->
	<!---<div class="hero-unit">
		<h1>Hello, world!</h1>
		<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
		<p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
	</div>--->
	
	<div id="myCarousel" class="carousel slide">
		<!-- Carousel items -->
		<div class="carousel-inner">
			<div class="active item">
				#imageTag('img-1.png')#
				<div class="carousel-caption">
					<h4>First Thumbnail label</h4>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
			</div>
			<div class="item">
				#imageTag('img-2.png')#
				<div class="carousel-caption">
					<h4>Second Thumbnail label</h4>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
			</div>
			<div class="item">
				#imageTag('img-3.png')#
				<div class="carousel-caption">
					<h4>Third Thumbnail label</h4>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
			</div>
		</div>
	
		<!-- Carousel nav -->
		<a class="carousel-control left" href="##myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="##myCarousel" data-slide="next">&rsaquo;</a>
	</div>

	<!-- Example row of columns -->
	<div class="row">
		
		<div class="span4">
			<h2>Heading</h2>
			<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
			<p><a class="btn" href="##">View details &raquo;</a></p>
		</div>
		
		<div class="span4">
			<h2>Heading</h2>
			<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
			<p><a class="btn" href="##">View details &raquo;</a></p>
		</div>
	
		<div class="span4">
			<h2>Heading</h2>
			<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
			<p><a class="btn" href="##">View details &raquo;</a></p>
		</div>

	</div>

</cfoutput>