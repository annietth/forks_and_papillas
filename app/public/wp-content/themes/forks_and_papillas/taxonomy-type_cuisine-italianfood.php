<?php get_header(); 


// $term_slug = 'italianfood'; // you need to pass a slug
// $term_link = get_term_link( $term_slug, 'type_cuisine' );
// echo $term_link;

?>




<h1>La selection des meilleurs restaurants Italiens à Paris</h1>

<div class="list-articles">


  <?php
  
    $loop = new WP_Query(array(
      'post_type'  => array('food'),
      'tax_query' => array(
        array(
          'taxonomy' => 'type_cuisine',
          'field' => 'slug',
          'terms' => 'italianfood' // you need to know the term_id of your term "example 1"
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