<?php get_header(); ?>




<h1 class="title_taxo_page">La selection des meilleurs restaurants Français à Paris</h1>

<div class="list-articles">


  <?php
  
    $loop = new WP_Query(array(
      'post_type'  => array('food'),
      'tax_query' => array(
        array(
          'taxonomy' => 'type_cuisine',
          'field' => 'slug',
          'terms' => 'frenchfood' // you need to know the term_id of your term "example 1"
           )
      )    
    
    ));

    if ( $loop->have_posts() ) :

      /* Start the Loop */
      while ( $loop->have_posts() ) :
        $loop->the_post();

        get_template_part( 'template-parts/card', get_post_type() );



      endwhile;


    else :

      get_template_part( 'template-parts/content', 'none' );

    endif;
  ?>
</div>

<?php get_footer(); ?>