
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


function ms_setup() {
	add_image_size( 'listing-card', 384, 182, true, array( 'center', 'top' ) );
	add_image_size( 'listing-card-without-crop', 384, 182, false );
	add_image_size( 'header-article', 643, 528, true );
}
add_action( 'after_setup_theme', 'ms_setup' );

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
		'page_title' 	=> 'Theme Hero Settings',
		'menu_title'	=> 'Hero',
		'parent_slug'	=> 'theme-general-settings',
	));

	acf_add_options_sub_page(array(
		'page_title' 	=> 'Theme Footer Settings',
		'menu_title'	=> 'Footer',
		'parent_slug'	=> 'theme-general-settings',
	));

}


// register_post_type(
// 	'frenchfood',
// 	array(
// 			'label'     => 'French Food',
// 			'labels'    => array(
// 					'name'                => 'French Food',
// 					'singular_name'       => 'French Food',
// 					'menu_name'           => 'French Food',
// 					'all_items'           => 'All French Foods',
// 					'view_item'           => 'See all French Food',
// 					'add_new_item'        => 'Add a French Food',
// 					'add_new'             => 'Add',
// 					'edit_item'           => 'Edit the French Food',
// 					'update_item'         => 'Modify the French Food',
// 					'search_items'        => 'Search an French Food',
// 					'not_found'           => 'Non trouvée',
// 					'not_found_in_trash'  => 'Non trouvée dans la corbeille',
// 			),
// 			'menu_icon'           => 'dashicons-calendar-alt',
// 			'supports'            => array('title', 'editor', 'author', 'thumbnail', 'revisions', 'custom-fields', 'page-attributes' ),
// 			'hierarchical'        => false,
// 			'public'              => true,
// 			'has_archive'         => true,
// 			'publicly_queryable'  => true,
// 			'capability_type'     => 'post',
// 			'show_in_rest' => true,
// 			'rewrite'             => array( 'slug' => esc_html__('french_food')),
// 	)
// );
// register_post_type(
// 	'vietnamianfood',
// 	array(
// 			'label'     => 'Vietnamian Food',
// 			'labels'    => array(
// 					'name'                => 'Vietnamian Food',
// 					'singular_name'       => 'Vietnamian Food',
// 					'menu_name'           => 'Vietnamian Food',
// 					'all_items'           => 'All Vietnamian Foods',
// 					'view_item'           => 'See all Vietnamian Food',
// 					'add_new_item'        => 'Add a Vietnamian Food',
// 					'add_new'             => 'Add',
// 					'edit_item'           => 'Edit the Vietnamian Food',
// 					'update_item'         => 'Modify the Vietnamian Food',
// 					'search_items'        => 'Search an Vietnamian Food',
// 					'not_found'           => 'Non trouvée',
// 					'not_found_in_trash'  => 'Non trouvée dans la corbeille',
// 			),
// 			'menu_icon'           => 'dashicons-calendar-alt',
// 			'supports'            => array('title', 'editor', 'author', 'thumbnail', 'revisions', 'custom-fields', 'page-attributes' ),
// 			'hierarchical'        => false,
// 			'public'              => true,
// 			'has_archive'         => true,
// 			'publicly_queryable'  => true,
// 			'capability_type'     => 'post',
// 			'show_in_rest' => true,
// 			'rewrite'             => array( 'slug' => esc_html__('vietnamian_food')),
// 	)
// );
register_post_type(
	'food',
	array(
			'label'     => 'Food',
			'labels'    => array(
					'name'                => 'Food',
					'singular_name'       => 'Food',
					'menu_name'           => 'Food',
					'all_items'           => 'All Foods',
					'view_item'           => 'See all Food',
					'add_new_item'        => 'Add a Food',
					'add_new'             => 'Add',
					'edit_item'           => 'Edit the Food',
					'update_item'         => 'Modify the Food',
					'search_items'        => 'Search a Food',
					'not_found'           => 'Non trouvée',
					'not_found_in_trash'  => 'Non trouvée dans la corbeille',
			),
			'menu_icon'           => 'dashicons-calendar-alt',
			'supports'            => array('title', 'editor', 'author', 'thumbnail', 'revisions', 'custom-fields', 'page-attributes' ),
			'taxonomies' 					=> array(),
			'hierarchical'        => false,
			'public'              => true,
			'has_archive'         => true,
			'publicly_queryable'  => true,
			'capability_type'     => 'post',
			'show_in_rest' => true,
			'rewrite'             => array( 'slug' => esc_html__('food')),
	)
);




function create_topics_hierarchical_taxonomy() {

	// Déclaration de la Taxonomie
	$labels = array(
		'name' => 'Type de cuisine',
		'new_item_name' => 'Nouveau type de cuisine',
		'parent_item' => 'Type de projet parent',
	);
	
	$args = array( 
		'labels' => $labels,
		'public' => true, 
		'show_in_rest' => true,
		'hierarchical' => true, 
	);

	register_taxonomy( 'type-cuisine', 'food', $args );
}

add_action('init', 'create_topics_hierarchical_taxonomy', 0);




// register_post_type(
// 	'creolefood',
// 	array(
// 			'label'     => 'Creole Food',
// 			'labels'    => array(
// 					'name'                => 'Creole Food',
// 					'singular_name'       => 'Creole Food',
// 					'menu_name'           => 'Creole Food',
// 					'all_items'           => 'All Creole Foods',
// 					'view_item'           => 'See all Creole Food',
// 					'add_new_item'        => 'Add a Creole Food',
// 					'add_new'             => 'Add',
// 					'edit_item'           => 'Edit the Creole Food',
// 					'update_item'         => 'Modify the Creole Food',
// 					'search_items'        => 'Search an Creole Food',
// 					'not_found'           => 'Non trouvée',
// 					'not_found_in_trash'  => 'Non trouvée dans la corbeille',
// 			),
// 			'menu_icon'           => 'dashicons-calendar-alt',
// 			'supports'            => array('title', 'editor', 'author', 'thumbnail', 'revisions', 'custom-fields', 'page-attributes' ),
// 			'hierarchical'        => false,
// 			'public'              => true,
// 			'has_archive'         => true,
// 			'publicly_queryable'  => true,
// 			'capability_type'     => 'post',
// 			'show_in_rest' => true,
// 			'rewrite'             => array( 'slug' => esc_html__('creole_food')),
// 	)
// );

// register_post_type(
// 	'indonesianfood',
// 	array(
// 			'label'     => 'Indonesian Food',
// 			'labels'    => array(
// 					'name'                => 'Indonesian Food',
// 					'singular_name'       => 'Indonesian Food',
// 					'menu_name'           => 'Indonesian Food',
// 					'all_items'           => 'All Indonesian Foods',
// 					'view_item'           => 'See all Indonesian Food',
// 					'add_new_item'        => 'Add a Indonesian Food',
// 					'add_new'             => 'Add',
// 					'edit_item'           => 'Edit the Indonesian Food',
// 					'update_item'         => 'Modify the Indonesian Food',
// 					'search_items'        => 'Search an Indonesian Food',
// 					'not_found'           => 'Non trouvée',
// 					'not_found_in_trash'  => 'Non trouvée dans la corbeille',
// 			),
// 			'menu_icon'           => 'dashicons-calendar-alt',
// 			'supports'            => array('title', 'editor', 'author', 'thumbnail', 'revisions', 'custom-fields', 'page-attributes' ),
// 			'hierarchical'        => false,
// 			'public'              => true,
// 			'has_archive'         => true,
// 			'publicly_queryable'  => true,
// 			'capability_type'     => 'post',
// 			'show_in_rest' => true,
// 			'rewrite'             => array( 'slug' => esc_html__('indonesian_food')),
// 	)
// );
// register_post_type(
// 	'orientalfood',
// 	array(
// 			'label'     => 'Oriental Food',
// 			'labels'    => array(
// 					'name'                => 'Oriental Food',
// 					'singular_name'       => 'Oriental Food',
// 					'menu_name'           => 'Oriental Food',
// 					'all_items'           => 'All Oriental Foods',
// 					'view_item'           => 'See all Oriental Food',
// 					'add_new_item'        => 'Add a Oriental Food',
// 					'add_new'             => 'Add',
// 					'edit_item'           => 'Edit the Oriental Food',
// 					'update_item'         => 'Modify the Oriental Food',
// 					'search_items'        => 'Search an Oriental Food',
// 					'not_found'           => 'Non trouvée',
// 					'not_found_in_trash'  => 'Non trouvée dans la corbeille',
// 			),
// 			'menu_icon'           => 'dashicons-calendar-alt',
// 			'supports'            => array('title', 'editor', 'author', 'thumbnail', 'revisions', 'custom-fields', 'page-attributes' ),
// 			'hierarchical'        => false,
// 			'public'              => true,
// 			'has_archive'         => true,
// 			'publicly_queryable'  => true,
// 			'capability_type'     => 'post',
// 			'show_in_rest' => true,
// 			'rewrite'             => array( 'slug' => esc_html__('oriental_food')),
// 	)
// );

