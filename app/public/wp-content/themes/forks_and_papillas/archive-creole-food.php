

<div class="list-articles">
  <h1>COUCUUUU</h1>
  <?php
  
    $loop = new WP_Query(array(
      'post_type'  => array('food'),
      'tax_query' => array(
        array (
            'taxonomy' => 'type_cuisine',
            'field' => 'slug',
            'terms' => 'creole-food',
        )
    ),  
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