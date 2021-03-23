<!DOCTYPE html>
<html lang="<?php echo LANG; ?>">
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
    
    <?php wp_body_open(); ?>

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
                        while (have_rows('element', 'options')): the_row(); ?>
                        <li class="header__item">
                            <a href="<?php the_sub_field('url'); ?>">
                            <?php the_sub_field('label'); ?>
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
                <li class="subnavbar__item">
                    <a href="">
                        <img src="<?= get_template_directory_uri(); ?>/img/fork_knife.svg" alt="logo couverts"> 
                    Français
                    </a>
                </li>
                <li class="subnavbar__item">
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
                </li>
            </ul>
        </div>
    </div>