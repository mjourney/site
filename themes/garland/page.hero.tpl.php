<?php
global $base_url;
$path = $base_url . '/' . drupal_get_path ( 'theme', 'garland' );
$nodes = $page['content']['system_main']['nodes'];
$content = null;
foreach (array_keys($nodes) as $key) {
	if (is_array($nodes[$key])) {
		$content = $nodes[$key];
	}
}
if (is_null($content)) {
	return;
}

?>
<div class="container">
	<div class="span4"></div>
	<div class="span4" >
		<span>
			<h2><?php echo $content['#node']->title?></h2>
		</span>
	</div>
	<div class = "span12">
		<div id="carousel" class="flexslider" style="margin: 0 0 0px;">
		   <ul class="slides">
		  	<?php
				foreach ( $content ['field_zhaopian'] ['#items'] as $f_zhaopian ) {
					$f_pic = $f_zhaopian['entity']->field_pic;
					$image_url = file_create_url ( $f_pic['und'] [0] ['uri'] );
			?>
		    <li>
		      <div style="height: 70px;
				background-image: url(<?php print $image_url; ?>);
				background-repeat: no-repeat;
				background-size: contain;"></div>
		    </li>
		   	<?php }?>    
			  </ul>
		</div>
		<!-- Place somewhere in the <body> of your page -->
		<div id="slider" class="flexslider" style="margin: 0 0 0px;">
		  <ul class="slides">
		  	<?php
				foreach ( $content ['field_zhaopian'] ['#items'] as $f_zhaopian ) {
					$f_pic = $f_zhaopian['entity']->field_pic;
					$image_url = file_create_url ( $f_pic['und'] [0] ['uri'] );
					
			?>
		    <li>
		    	<div style="height: 450px;
					background-image: url(<?php print $image_url; ?>);
					background-repeat: no-repeat;
					background-size: contain;">
				</div>
				<div>
					<blockquote>
						<p>
							<?php echo $f_zhaopian['entity']->title?>
						</p>
					</blockquote>
				</div>
			</li>
		   	<?php }?>    
		  </ul>
		</div>
		
	</div>
</div>

<script type="text/javascript">
$(window).load(function() {
	  // The slider being synced must be initialized first
	  $('#carousel').flexslider({
	    animation: "slide",
	    controlNav: false,
	    animationLoop: false,
	    slideshow: false,
	    itemWidth: 110,
	    itemMargin: 5,
	    asNavFor: '#slider',
	  });
	   
	  $('#slider').flexslider({
	    animation: "slide",
	    controlNav: false,
	    animationLoop: false,
	    slideshow: false,
	    sync: "#carousel"
	  });
	});
</script>