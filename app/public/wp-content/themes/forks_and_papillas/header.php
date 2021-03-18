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
            <div class="header__logo">
                <div class="logo"></div>
            </div>
            <ul class="header__items">
                <li class="header__item">Accueil</li>
                <li class="header__item">Qui sommes nous ?</li>
                <li class="header__item">Contact</li>
            </ul>
        </div>
    </header>