<div class="body-modal" id="modal">
  <div class="modal-content popin">
    <?php 
    if(get_field('which_form')){
      $formId = get_field('which_form');
    }else{
      $formId = get_field('modal-form', 'options');
    }
    if(get_field('modal_title')){
      $form_title = get_field('modal_title');
    } else {
      $form_title = "";
    }
		set_query_var( 'origin', 'modal' );
    set_query_var( 'title', $form_title );
		set_query_var( 'formId', $formId );
    set_query_var( 'userValidation', 'true' );
    set_query_var( 'hideFields', 'false' );
    set_query_var( 'isMagic', 'false' );
    set_query_var( 'autocomplete', false );

		get_template_part( 'template-parts/comp', 'form' ); ?>
    <div class="side-wrapper">
      <div style="background-image: url('<?= get_field('modal-img', 'options')['url']; ?>');">
        <?php if( have_rows('modal-usp', 'options') ):
					while ( have_rows('modal-usp', 'options') ) : the_row(); ?>
        <p>
          <strong><?= get_sub_field('strong'); ?></strong>
          <?= get_sub_field('normal'); ?>
        </p>
        <?php endwhile;
				endif; ?>
      </div>
    </div>
    <img src="<?= get_template_directory_uri(); ?>/img/close-light.svg" alt="Fermer" class="close close-modal">
  </div>
</div>