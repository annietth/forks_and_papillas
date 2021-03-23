<?php 
$class_section = get_sub_field('class_section');
$padding = "section-padding-".get_sub_field('padding');
$subnav_title = get_sub_field('subnav_title');
$subnav_icon = get_sub_field('subnav_icon');
$show_arrows = get_sub_field('show-arrows');
$has_subcontent = get_sub_field('has-subcontent');
$has_autoplay = get_sub_field('slider-autoplay');
?>

<div
  class="slider<?php if(!$has_subcontent): echo ' slider--no-subcontent'; endif; ?> <?= $padding." ".$class_section; ?>"
  id="usp_slider"
  data-section-type="<?= get_sub_field("section_type"); ?>"
  data-anchor="<?= sanitize_title($subnav_title); ?>"
  data-anchor-title="<?= $subnav_title; ?>"
  data-anchor-icon="<?= $subnav_icon ? $subnav_icon['url'] : ''; ?>"
>
  <?php if(get_sub_field('block_title')):?>
    <h2 class="slider__title"><?= get_sub_field('block_title')?></h2>
  <?php endif; ?>

  <div class="slider-nav--container">
    <?php if($show_arrows): ?>
    <div class="usp_slider__arrow usp_slider__arrow--left">
      <svg fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd"
          d="M9.72636 15.1514L19.4435 5.43419C19.9122 4.96559 20.6719 4.96559 21.1405 5.43419L22.2739 6.56754C22.7418 7.03541 22.7426 7.79366 22.2759 8.2626L14.5749 15.9999L22.2759 23.7371C22.7426 24.2061 22.7418 24.9643 22.2739 25.4322L21.1405 26.5655C20.6719 27.0341 19.9121 27.0341 19.4435 26.5655L9.7264 16.8484C9.25775 16.3798 9.25775 15.62 9.72636 15.1514Z"
          fill="#0596DE" />
      </svg>
    </div>
    <?php endif; ?>

    <?php 
      if (have_rows('usp_slider')):
        $nav_slider_count = 0;
        while(have_rows('usp_slider')): the_row();
          $nav_slider_count++;
        endwhile;
      endif;
    ?>
    <div class="slider-nav<?php if($has_autoplay): echo ' has-autoplay'; endif; ?>" id="usp_slider-nav"
      data-slick='{"slidesToShow": <?php echo $nav_slider_count ?>, "slidesToScroll": <?php echo $nav_slider_count ?>}'>

      <?php 
        if (have_rows('usp_slider')):
          while(have_rows('usp_slider')): the_row();?>
      <div class="usp-item">
        <div class="usp-item__container">
          <div class="usp-item__icon-navContainer">
            <img src="<?= get_sub_field('slide_nav_icon');?>" class="icon-nav">
          </div>
          <p class="text-nav">
            <?php the_sub_field('slide_nav_title');?>
          </p>
          <?php if($has_subcontent): ?>
          <div class="usp-item__chevronContainer">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M20.1709 8.67376C20.3472 8.85001 20.3472 9.135 20.1709 9.31125L12.3184 17.1638C12.1422 17.34 11.8572 17.34 11.681 17.1638L3.82845 9.31125C3.65223 9.135 3.65223 8.85001 3.82845 8.67376L4.57098 7.93126C4.7472 7.75501 5.03222 7.75501 5.20848 7.93126L11.9997 14.7075L18.7909 7.93126C18.9672 7.75501 19.2522 7.75501 19.4284 7.93126L20.1709 8.67376Z" fill="#224358"/>
            </svg>
          </div>
          <?php endif; ?>
        </div>
      </div>
      <?php endwhile; endif; ?>

    </div>

    <?php if($show_arrows): ?>
    <div class="usp_slider__arrow usp_slider__arrow--right">
      <svg fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd"
          d="M22.2735 16.8486L12.5564 26.5658C12.0877 27.0344 11.3279 27.0344 10.8593 26.5658L9.72599 25.4325C9.25812 24.9646 9.25725 24.2063 9.72399 23.7374L17.425 16.0001L9.72399 8.26287C9.25725 7.79393 9.25812 7.03568 9.72599 6.56781L10.8593 5.43446C11.328 4.96586 12.0878 4.96586 12.5564 5.43446L22.2735 15.1516C22.7421 15.6202 22.7421 16.38 22.2735 16.8486Z"
          fill="#0596DE" />
      </svg>
    </div>
    <?php endif; ?>
  </div>



  <div class="slider-for<?php if(!$has_subcontent): echo ' hidden'; endif; ?>" id="usp_slider-for">
    <?php
      if (have_rows('usp_slider')):
        while(have_rows('usp_slider')): the_row();?>
    <div class="sliderfor__item">
      <?php if(get_sub_field('benefit_illustration')): ?>
      <div class="illustration-for-container">
        <div class="illustration-background"></div>
        <img src="<?php echo get_sub_field('benefit_illustration')['url'];?>"
          alt="<?php echo get_sub_field('benefit_illustration')['alt'];?>" class="img-for">
      </div>
      <?php endif; ?>

      <div class="content-for-container">
        <?php
            if (have_rows('benefit_content')):
              while(have_rows('benefit_content')): the_row();?>
        <div class="content-for">
          <img src="<?php echo get_sub_field('benefit_icon')['url'];?>" alt="benefit_icon" class="icon-for">
          <div class="text-for">
            <p class="title-for"><?php the_sub_field('benefit_title');?></p>
            <div class="para-for"><?php the_sub_field('benefit_paragraphe');?></div>
          </div>
        </div>
        <?php endwhile; endif; ?>
      </div>

    </div>
    <?php endwhile; endif; ?>
  </div>

  <?php

    if (have_rows('usp_cta')):
      while(have_rows('usp_cta')): the_row();
        if(get_sub_field('cta-title')) : ?>

  <?php if(get_sub_field('link') == "page") { ?>
  <a href="<?= trailingslashit(get_sub_field('page-link')); ?>" class="btn cta_usp-bloc-slider"><?php the_sub_field('cta-title');?></a>
  <?php } else if(get_sub_field('link') == "modal") { ?>
  <button class="btn open-modal cta_usp-bloc-slider "><?php the_sub_field('cta-title');?></button>
  <?php } else if(get_sub_field('link') == "external") { ?>
  <a href="<?= get_sub_field('url'); ?>" class="btn "><?php the_sub_field('cta-title');?></a>
  <?php } else if(get_sub_field('link') == "anchor") { ?>
  <a href="<?= get_sub_field('anchor'); ?>" class="btn cta_usp-bloc-slider"><?php the_sub_field('cta-title');?></a>
  <?php } else { ?>
  <button class="btn open-modal cta_usp-bloc-slider "><?php the_sub_field('cta-title');?></button>
  <?php }?>

  <?php endif;endwhile; endif; ?>

</div>