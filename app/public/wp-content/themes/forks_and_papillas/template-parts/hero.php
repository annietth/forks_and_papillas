<?php
    $scrollingte_text = get_field('scrollingte_text', 'options');
    $first_sentences = get_field('first_sentences', 'options'); 
    $description = get_field('description', 'otpions');
    $follow_newsletter = get_field('follow_newsletter', 'options');
?>

<marquee class="hero__anime" scrollamount="5" width="300">
    <?= $scrollingte_text; ?>
</marquee> 
<br>
<br>
<div class="hero"> 

     <div class="hero__texts">

        <h1 class="hero__text">
            <?= get_field('first_sentences', 'options'); ?>
        </h1>

        <button>Recherche</button>
        
    </div>
    <div class="hero__image">
        <img class="hero__image__mobile" style="width:100%"src= "<?php echo get_template_directory_uri(); ?>/img/hero_mbl.png" alt="image_of_hero">
        <img class="hero__image__desktop" style="width:100%"src= "<?php echo get_template_directory_uri(); ?>/img/hero_dktp.png" alt="image_of_desktop">
    </div>
</div>

<div class="subhero">
    <p>
        <?= get_field('description', 'options'); ?>
    </p>
    <br>
    <br>
    <p>
        <?= get_field('follow_newsletter', 'options'); ?>
    </p>
    <form class="subhero__input">
        <label for="mail"></label>
        <input type="email" id="mail" name="user_email" placeholder="exemple@gmail.com">
        <button><img src= "<?php echo get_template_directory_uri(); ?>/img/enter_arrow.svg" alt="enter"></button>
    </form>
</div>