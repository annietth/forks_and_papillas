<?php 
$taxonomies = get_the_terms(get_the_ID(), 'type_cuisine'); 

if($taxonomies) {
  $taxonomy = $taxonomies[0]->name;
  } else {
  $taxonomy = "";
}

$top_restaurant = get_field('top_restaurant');
$grade = get_field('grade');

?>



 

<?php 

if ( has_post_thumbnail() ) { ?>
<article  class="card" style="background-image: url('<?= the_post_thumbnail_url('listing-card') ?>');"> 

<?php } else { ?>
  <article  class="card" style="background-image: url('<?php echo get_template_directory_uri(); ?>/img/pizza.jpg');"> 
<?php } ?>

  <a  
    href="<?php esc_url( the_permalink() ) ?>" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

    <?php if(get_field('top_restaurant') == 1): ?>
      <img class="topicon" src="<?php echo get_template_directory_uri(); ?>/img/topicon.svg" alt="Top restaurant">
    <?php endif; ?> 
  
  
    <div class="card__band">
      <p class="card__category"><?php echo $taxonomy;?></p>
      <div class="card__line"></div>
      <h3 class="card__restaurant"><?php the_title(); ?></h3>

      <?php if(get_field('grade') == '1star') { ?>
      <img src="<?php echo get_template_directory_uri(); ?>/img/1star.svg" alt="1 etoile">

      <?php } else if(get_field('grade') == '2stars') { ?>
        <img src="<?php echo get_template_directory_uri(); ?>/img/2stars.svg" alt="2 etoiles">

      <?php } else if(get_field('grade') == '3stars') { ?>
        <img src="<?php echo get_template_directory_uri(); ?>/img/3stars.svg" alt="3 etoiles">

      <?php } else if(get_field('grade') == '4stars') { ?>
        <img src="<?php echo get_template_directory_uri(); ?>/img/4stars.svg" alt="4 etoiles">

      <?php } else if(get_field('grade') == '5stars') { ?>

        <img src="<?php echo get_template_directory_uri(); ?>/img/5stars.svg" alt="5 etoiles">

      <?php }; ?> 
    </div>
  </a>
  </article>


