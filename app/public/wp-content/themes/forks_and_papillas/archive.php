<?php get_header(); ?>

<?php 

var_dump(get_term_link ($type_cuisine , $taxonomie  =  'creole-food' ))


?>

<h1>coucocuuuu</h1>



<div class="list-articles">

	<?php if( have_posts() ) : while( have_posts() ) : the_post(); 
	
	
		get_template_part( 'template-parts/card'); 
	

	
	endwhile; endif; ?>

</div>



<?php get_footer(); ?>