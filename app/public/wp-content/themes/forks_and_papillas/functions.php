
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
			'taxonomies' 					=> array('type_cuisine'),
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

	register_taxonomy( 'type_cuisine', 'food', $args );
}

add_action('init', 'create_topics_hierarchical_taxonomy', 0);


// function generate_taxonomy_rewrite_rules( $wp_rewrite ) {
//   $rules = array();
//   $post_types = get_post_types( array( 'name' => 'food', 'public' => true, '_builtin' => false ), 'objects' );
//   $taxonomies = get_taxonomies( array( 'name' => 'type_cuisine', 'public' => true, '_builtin' => false ), 'objects' );

//   foreach ( $post_types as $post_type ) {
//     $post_type_name = $post_type->name; // 'developer'
//     $post_type_slug = $post_type->rewrite['slug']; // 'developers'

//     foreach ( $taxonomies as $taxonomy ) {
//       if ( $taxonomy->object_type[0] == $post_type_name ) {
//         $terms = get_categories( array( 'type' => $post_type_name, 'taxonomy' => $taxonomy->name, 'hide_empty' => 0 ) );
//         foreach ( $terms as $term ) {
//           $rules[$post_type_slug . '/' . $term->slug . '/?$'] = 'index.php?' . $term->taxonomy . '=' . $term->slug;
//         }
//       }
//     }
//   }
//   $wp_rewrite->rules = $rules + $wp_rewrite->rules;
// }
// add_action('generate_rewrite_rules', 'generate_taxonomy_rewrite_rules');


