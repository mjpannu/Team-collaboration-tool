<div style="width:auto ">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Development/DragDropInteractions/"><span>Previous Demo</span></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=21345"><span>Back to the Codrops Article</span></a></span>
			</div>
			<div id="wrap" class="wrap">
				<div class="mockup">
					<img class="mockup__img" src="img/mockup4.jpg" />
					<div class="mobile">
						<ul id="slideshow-1" class="slideshow">
							<li class="slideshow__item"><img src="img/small/1.png"/></li>
							<li class="slideshow__item"><img src="img/small/2.png"/></li>
							<li class="slideshow__item"><img src="img/small/3.png"/></li>
							<li class="slideshow__item"><img src="img/small/4.png"/></li>
						</ul>
					</div>
					<div class="screen">
						<ul id="slideshow-2" class="slideshow">
							<li class="slideshow__item current"><img src="img/large/1.png"/></li>
							<li class="slideshow__item"><img src="img/large/2.png"/></li>
							<li class="slideshow__item"><img src="img/large/3.png"/></li>
							<li class="slideshow__item"><img src="img/large/4.png"/></li>
						</ul>
					</div>
					<header class="codrops-header">
						<h1><span>Mockup</span> Slideshow <i>An animated perspective mockup with 3D transforms computed with <a href="http://franklinta.com/2014/09/08/computing-css-matrix3d-transforms/">Franklin Ta's helper script</a></i></h1>
					</header>
				</div>
			</div>
			<div class="content">
				<nav class="codrops-demos">
					<a href="index.html">Demo 1</a>
					<a href="index2.html">Demo 2</a>
					<a href="index3.html">Demo 3</a>
					<a class="current-demo" href="index4.html">Demo 4</a>
				</nav>
				<p><strong>Free Mockup images from:</strong></p>
				<ul class="ref">
					<li><strong>Demo 1 and 3:</strong> <a href="https://www.behance.net/gallery/19352531/Free-PSD-mockup-vol-2">Free PSD Mockups Vol.2</a></li>
					<li><strong>Demo 4:</strong> <a href="http://pixelbuddha.net/freebie/morning-device-mockups">Morning Device Mockups</a></li>
				</ul>
				<ul class="ref">
					<li><strong>Demo 2</strong> image copyright by Vadim Sherbakov with granted permission to be used in this demo</li> 
					<li><a href="https://creativemarket.com/Vadim.Sherbakov/50038-6-Macbook-In-the-house-mock-ups">6 MacBook in the house mockups</a></li>
					<li><a href="http://madebyvadim.robot.co/">Made by Vadim</a></li>
					<li><a href="https://creativemarket.com/Vadim.Sherbakov"> Vadim Sherbakov's Creative Market Shop</a></li>
				</ul>
				<ul class="ref">
					<li><strong><a href="http://pixelbuddha.net/freebie/280-line-icons-pack">Line Icons</a></strong> by Jonas Nullens for PixelBuddha</li>
				</ul>
			</div>
			<!-- Related demos -->
			<section class="related">
				<p>If you enjoyed this demo you might also like</p>
				<a href="http://tympanus.net/Tutorials/TiltedContentSlideshow/">
					<img src="img/related/TiltedContentSlideshow.jpg" />
					<h3>Tilted Content Slideshow</h3>
				</a>
				<a href="http://tympanus.net/codrops/2013/08/01/3d-effect-for-mobile-app-showcase/">
					<img src="img/related/AppShowcase.jpg" />
					<h3>3D App Showcase</h3>
				</a>
			</section>
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
		<script>
			(function() {
				new Slideshow( document.getElementById( 'slideshow-1' ) );
				setTimeout( function() {
					new Slideshow( document.getElementById( 'slideshow-2' ) );
				}, 1750 );

				/* Mockup responsiveness */
				var body = docElem = window.document.documentElement,
					wrap = document.getElementById( 'wrap' ),
					mockup = wrap.querySelector( '.mockup' ),
					mockupWidth = mockup.offsetWidth;

				scaleMockup();

				function scaleMockup() {
					var wrapWidth = wrap.offsetWidth,
						val = wrapWidth / mockupWidth;

					mockup.style.transform = 'scale3d(' + val + ', ' + val + ', 1)';
				}
				
				window.addEventListener( 'resize', resizeHandler );

				function resizeHandler() {
					function delayed() {
						resize();
						resizeTimeout = null;
					}
					if ( typeof resizeTimeout != 'undefined' ) {
						clearTimeout( resizeTimeout );
					}
					resizeTimeout = setTimeout( delayed, 50 );
				}

				function resize() {
					scaleMockup();
				}
			})();
		</script>