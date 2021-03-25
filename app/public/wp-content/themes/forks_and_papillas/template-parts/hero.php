<?php
    $scrollingte_text = get_field('scrollingte_text', 'options');
    $first_sentences = the_field('$first_sentences', 'options');
    

    
    $description = get_field('$description', 'otpions');
?>

<marquee class="hero__anime" scrollamount="5" width="300">
    <?= $scrollingte_text; ?>
</marquee> 
<br>
<br>
<div class="hero"> 

     <div class="hero__texts">

        <h1 class="hero__text">
            <?= $first_sentences; ?>
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
        À la recherche du bon restaurent, en cette pandémie aider vos restaurateurs en les soutenants au mieux ! Nous sommes en collaborations avec plusieurs chefs et proposons le meilleurs pour vous.

    </p>
    <br>
    <br>
    <p>
        Suivez notre Newsletter pour ne rater aucune nouvelles
    </p>
    <form class="subhero__input">
        <label for="mail"></label>
        <input type="email" id="mail" name="user_email" placeholder="exemple@gmail.com">
        <button><img src= "<?php echo get_template_directory_uri(); ?>/img/enter_arrow.svg" alt="enter"></button>
    </form>
</div>