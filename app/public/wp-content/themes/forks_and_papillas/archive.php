<?php get_header(); ?>


<div class="list-articles">

	<?php if( have_posts() ) : while( have_posts() ) : the_post(); 
	
	
		get_template_part( 'template-parts/card'); 
	

	
	endwhile; endif; ?>

</div>



<?php get_footer(); ?>