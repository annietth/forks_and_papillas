<?php get_header(); ?>
	 
	<?php get_template_part('template-parts/hero','none') ?>
	<?php get_template_part('template-parts/card','none') ?>

	<?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>
    
    	<h1><?php the_title(); ?></h1>
    
    	<?php the_content(); ?>

	<?php endwhile; endif; ?>


<?php get_footer(); ?>