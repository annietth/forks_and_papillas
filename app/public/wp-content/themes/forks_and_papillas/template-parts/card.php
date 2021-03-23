<?php 
$taxonomies = get_the_terms(get_the_ID(), 'type-cuisine'); 

if($taxonomies) {
  $taxonomy = $taxonomies[0]->name;
  } else {
  $taxonomy = "";
}

?>



<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <a href="<?php esc_url( the_permalink() ) ?>" class="box">
        <div class="card__header">
          <?php if ( has_post_thumbnail() ) {
            the_post_thumbnail('listing-card');
          } else { ?>
            <!-- <img class="" src="<?php echo get_template_directory_uri(); ?>/img/pizza.png" alt="<?php the_title(); ?>"> -->
          <?php } ?>
          <div class="card__body">
            <p class="cardcategory__name">
            <?php echo $taxonomy;?>
            </p>
            <div class="line"></div>
            <p class="cardrestaurant__name">				
              <?php the_title(); ?>
            </p>
            <div class="stars">
            <img class=""src="<?php echo get_template_directory_uri(); ?>/img/Stars_average.png" alt="stars">
            </div>
          </div>
        </div>
    </a>
</article>
