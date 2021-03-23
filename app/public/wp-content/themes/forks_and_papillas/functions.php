
<?php 

// Ajouter la prise en charge des images mises en avant
add_theme_support( 'post-thumbnails' );

// Ajouter automatiquement le titre du site dans l'en-tête du site
add_theme_support( 'title-tag' );

// to desactivate gutenberg
add_filter('use_block_editor_for_post', '__return_false', 10);

/* Remove adminbar */
function wpc_show_admin_bar() {
	return false;
}
add_filter('show_admin_bar' , 'wpc_show_admin_bar');


function forks_and_papillas_scripts() {
	wp_enqueue_style('style-css', get_template_directory_uri() . '/css/styles.css');
	wp_enqueue_script('scripts-js', get_template_directory_uri() . '/js/all.min.js', array('jquery'), '1.0.0', true);
}

add_action('wp_enqueue_scripts', 'forks_and_papillas_scripts');


// require get_template_directory() . '/inc/template-functions.php';
// require get_template_directory() . '/inc/acf.php';

if( function_exists('acf_add_options_page') ) {
	
	acf_add_options_page(array(
		'page_title' 	=> 'Theme General Settings',
		'menu_title'	=> 'Theme Settings',
		'menu_slug' 	=> 'theme-general-settings',
		'capability'	=> 'edit_posts',
		'redirect'		=> false
	));
	
	acf_add_options_sub_page(array(
		'page_title' 	=> 'Theme Header Settings',
		'menu_title'	=> 'Header',
		'parent_slug'	=> 'theme-general-settings',
	));
	
	acf_add_options_sub_page(array(
		'page_title' 	=> 'Theme Footer Settings',
		'menu_title'	=> 'Footer',
		'parent_slug'	=> 'theme-general-settings',
	));
	
}
