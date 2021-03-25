<?php get_header(); ?>




<div class="list-articles">

<h1>archive.php</h1>

	<?php if( have_posts() ) : while( have_posts() ) : the_post(); 
	
	
		get_template_part( 'template-parts/card'); 
	

	
	endwhile; endif; ?>

</div>



<?php get_footer(); ?>