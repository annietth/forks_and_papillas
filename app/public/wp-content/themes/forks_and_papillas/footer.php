<?php wp_footer(); ?>

<div id="footer" class="footer">
    <div class="footer__container">
        <div class="footer__logo">
            <a href="<?= get_home_url() ?>">
                <img class="logo" src="<?= get_template_directory_uri(); ?>/img/logo_fp.svg"></img>
            </a>
        </div>
        <div class="footer__title">
            <h3>Rejoint nous !</h3>
        </div>
        <div class="footer__tablet">
            <div class="footer__address">
                <p>12 rue Emile Zola, 75002 Paris</p>
                <br>
                <p>(+33) 6 23 45 58 18 </p>
                <p>hello@forksandpapillas.com</p>
            </div>
            <div class="footer__net">
                <div class="footer__net__works">
                    <a href="#">Twitter</a>
                    <a href="#">Facebook</a>
                    <a href="#">Instagram</a>
                    <a href="#">Newsletter</a>  
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