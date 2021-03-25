<?php 
$taxonomies = get_the_terms(get_the_ID(), 'type_cuisine'); 

if($taxonomies) {
  $taxonomy = $taxonomies[0]->name;
  } else {
  $taxonomy = "";
}

$post_id = get_the_ID();

?>


<h1><?php the_title() ?></h1>
<h2><?php echo $taxonomy ?></h2>
<div class="entry-image">
  <?php 
    if ( has_post_thumbnail() ) :
      echo get_the_post_thumbnail($post_id, array(543, 428)); 
    else:
      echo '<img width="643" height="528" alt="img default" src="'. get_template_directory_uri()  . '/img/pizza.jpg">';
    endif;
    ?>
</div>

<div class="socials-networks" >

<?php $actualURL = get_permalink(); ?>

  <a class="fb-share" href="https://www.facebook.com/sharer/sharer.php?display=popup&u=<?php echo $actualURL; ?>" target="_blank" >
    <img src="<?php echo get_template_directory_uri(); ?>/img/foundation_social-facebook.svg" alt="share_on_facebook">
  </a>

  <a class="tw-share" href="http://twitter.com/share?text=Mmmmh&url=<?php echo $actualURL; ?>&hashtags=food,gastronomy" target="_blank">
    <img src="<?php echo get_template_directory_uri(); ?>/img/foundation_social-twitter.svg" alt="share_on_twitter">
  </a>

</div>

<p><?php the_content(); ?></p>
