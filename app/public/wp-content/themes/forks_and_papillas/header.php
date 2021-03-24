<!DOCTYPE html>
<html lang="<?php echo LANG; ?>">
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
    
    <?php wp_body_open(); ?>

    <?php


        
    ?>

    <header id="header" class="header">
        <div class="header__container">
            <div class="header__burgerContainer" id="burger">
                <div class="burger-line"></div>
                <div class="burger-line"></div>
                <div class="burger-line"></div>
                <p class="close-text">Close</p>
            </div>
            <div class="header__logo">
                <a href="<?= get_home_url() ?>">
                    <img class="logo" src="<?= get_template_directory_uri(); ?>/img/logo_fp.svg"></img>
                </a>
            </div>
            <div class="header__window">
                <ul class="header__items">
                    <?php if (have_rows('element', 'options')):
                        while (have_rows('element', 'options')): the_row(); 
                        
                        $header_item_url = get_sub_field('url');
                        $header_item_label = get_sub_field('label');?>
                        
                        <li class="header__item">
                            <a href="<?= $header_item_url; ?>">
                            <?= $header_item_label; ?>
                            </a>
                        </li>

                    <?php endwhile; endif; ?>
                    <li class="header__item newsletter-container"><a href="">Newsletter</a></li>
                </ul>
            </div>
        </div>
    </header>

    <div class="subnavbar">
        <div class="subnavbar__container">
            <ul class="subnavbar__items">
            <?php if (have_rows('the_items', 'options')):
                    while (have_rows('the_items', 'options')): the_row(); 

                    $subnavbar_item_label = get_sub_field('label');
                    $subnavbar_item_url = get_sub_field('url');?>

                <li class="subnavbar__item">
                    <a href="<?= $subnavbar_item_url; ?>">
                        <img src="<?= get_template_directory_uri(); ?>/img/fork_knife.svg" alt="logo couverts"> 
                        <?= $subnavbar_item_label; ?>
                    </a>
                </li>
            <?php endwhile; endif; ?>   

                <!-- <li class="subnavbar__item">
                    <a href="">
                        <img src="<?= get_template_directory_uri(); ?>/img/fork_knife.svg" alt="logo couverts"> 
                    Italien
                    </a>
                </li>
                <li class="subnavbar__item">
                    <a href="">
                        <img src="<?= get_template_directory_uri(); ?>/img/fork_knife.svg" alt="logo couverts"> 
                    Orientale</a>
                </li>
                <li class="subnavbar__item">
                    <a href="">
                        <img src="<?= get_template_directory_uri(); ?>/img/fork_knife.svg" alt="logo couverts"> 
                    Créole</a>
                </li>
                <li class="subnavbar__item">
                    <a href="">
                        <img src="<?= get_template_directory_uri(); ?>/img/fork_knife.svg" alt="logo couverts"> 
                    Vietnamien</a>
                </li>
                <li class="subnavbar__item">
                    <a href="">
                        <img src="<?= get_template_directory_uri(); ?>/img/fork_knife.svg" alt="logo couverts"> 
                    Indonésien</a>
                </li> -->
            </ul>
        </div>
    </div>