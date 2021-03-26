<?php 
$taxonomies = get_the_terms(get_the_ID(), 'type_cuisine'); 

if($taxonomies) {
  $taxonomy = $taxonomies[0]->name;
  } else {
  $taxonomy = "";
}

$post_id = get_the_ID();
$address = get_field('card_address');
$phone = get_field('card_phone');
$bon_appetit = get_field('card_bon_appetit');

?>



<section class="content">
  <div class="content__content">
    
    <div class="content__taxoAndshare">
      <h2><?php echo $taxonomy ?></h2>
      <div class="socials-networks" >
        <p>Partager</p>
      
        <?php $actualURL = get_permalink(); ?>
      
        <a class="fb-share" href="https://www.facebook.com/sharer/sharer.php?display=popup&u=<?php echo $actualURL; ?>" target="_blank" >
          <img src="<?php echo get_template_directory_uri(); ?>/img/facebook.svg" alt="share_on_facebook">
        </a>
      
        <a class="tw-share" href="http://twitter.com/share?text=Mmmmh&url=<?php echo $actualURL; ?>&hashtags=food,gastronomy" target="_blank">
          <img src="<?php echo get_template_directory_uri(); ?>/img/twitter.svg" alt="share_on_twitter">
        </a>
      
      </div>
    </div>
    <h1><?php the_title() ?></h1>
  
    <?php if(get_field('grade') == '1star') { ?>
      <img class="stars" src="<?php echo get_template_directory_uri(); ?>/img/1star.svg" alt="1 etoile">
  
      <?php } else if(get_field('grade') == '2stars') { ?>
        <img class="stars" src="<?php echo get_template_directory_uri(); ?>/img/2stars.svg" alt="2 etoiles">
  
      <?php } else if(get_field('grade') == '3stars') { ?>
        <img class="stars" src="<?php echo get_template_directory_uri(); ?>/img/3stars.svg" alt="3 etoiles">
  
      <?php } else if(get_field('grade') == '4stars') { ?>
        <img class="stars" src="<?php echo get_template_directory_uri(); ?>/img/4stars.svg" alt="4 etoiles">
  
      <?php } else if(get_field('grade') == '5stars') { ?>
  
        <img class="stars" src="<?php echo get_template_directory_uri(); ?>/img/5stars.svg" alt="5 etoiles">
  
    <?php }; ?> 
  
    <div class="content__contact">
      <p class="address"><?= $address; ?></p>
      <p class="phone"><?= $phone; ?></p>
    </div>
  
    <div class="content__advantages">
    <?php 
      if (have_rows('card_advantages')):
        while (have_rows('card_advantages')): the_row(); 

        $advantage = get_sub_field('card_advantage'); ?>

        <div class="advantage">
          <p class="advantage__text"><?= $advantage; ?></p>
        </div>
    <?php endwhile; endif; ?> 

    </div>
  
    <div class="content__description">
      <?php the_content(); ?>
    </div>
    
  </div>

  <div class="content__illustration">
    <div class="illustration__bg"></div>
    <div class="illustration__container">
      <?php 
      if ( has_post_thumbnail() ) {
        echo the_post_thumbnail($post_id, array(550, 500)); 
      } else { ?>
        <img class="illustration" width="550" height="500" alt="img default" src="<?php echo get_template_directory_uri(); ?>/img/pizza.jpg">;
      <?php } ?>

      <marquee  scrollamount="7" width="100%" class="bonappetit"><?= $bon_appetit; ?></marquee>
    </div>
  </div>

    


</section>
