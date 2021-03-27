<?php wp_footer(); ?>
<?php
    $logo = get_field('logo', 'options')['url'];
    $catch_word = get_field('catch_word', 'options');
    $address = get_field('address', 'options');
    $phone_number = get_field('phone_number', 'options');
    $email = get_field('email', 'options');
    
?>
<div id="footer" class="footer">
    <div class="footer__container">
        <div class="footer__logo">
            <a href="<?= get_home_url() ?>">
                <img class="logo" src="<?= $logo; ?>"></img>
            </a>
        </div>
        <div class="footer__title">
        
            <h3> <?= $catch_word; ?> </h3>
        </div>
        <div class="footer__tablet">
            <div class="footer__address">
                <p><?=$address; ?></p>
                <br>
                <p><?=$phone_number;?> </p>
                <p><?=$email;?></p>
            </div>
            <div class="footer__net">
                <div class="footer__net__works">
                <?php if (have_rows('socials_networks', 'options')):
                    while (have_rows('socials_networks', 'options')): the_row(); 
                    $social_url = get_sub_field('url');
                    $social_label = get_sub_field('label');
                    $social_logo = get_sub_field('logo');
                ?>
                    <a href="<?= $social_url; ?>"> <?= $social_label; ?> </a>
                <?php endwhile; endif; ?>
                </div>
            <button class="footer__net__up">
                <img class="logo" src="<?= get_template_directory_uri(); ?>/img/arrow_up.svg"></img>
            </div>

        </div>
        
        </div>
        <h4>Prenez soins de vous !</h4>

    </div>
</div>
</body>
</html>