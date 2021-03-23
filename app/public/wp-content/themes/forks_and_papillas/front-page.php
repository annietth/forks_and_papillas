<?php get_header(); ?>
	 
	<?php get_template_part('template-parts/hero','none') ?>

	<div class="list-articles">
				<?php
					$total_posts = 0;
					$total_posts += wp_count_posts('food')->publish;
					$total_posts += wp_count_posts('post')->publish;
					
					// $nb_per_page = ($total_posts % 3 == 0) ? ($total_posts / 3) : (($total_posts / 3) - 1);
					// $page = (get_query_var('page')) ? get_query_var('page') : 1;

					$loop = new WP_Query(array(
					    'post_type'		=> array( 'post', 'food'),
							// 'paged'=>$page,
							'order' => 'DESC',
					    // 'posts_per_page' => $nb_per_page,
					    // 'current'      => max( 1, $page ),
					));

					// Pagination fix
					$temp_query = $wp_query;
					$wp_query   = NULL;
					$wp_query   = $loop;

					$cpt = 0;

					if ( $loop->have_posts() ) :

						/* Start the Loop */
						while ( $loop->have_posts() ) :
							$loop->the_post();

							/*
							 * Include the Post-Type-specific template for the content.
							 * If you want to override this in a child theme, then include a file
							 * called content-___.php (where ___ is the Post Type name) and that will be used instead.
							 */

							get_template_part( 'template-parts/card', get_post_type() );
						endwhile;

						wp_reset_postdata();


						// Reset main query object
						$wp_query = NULL;
						$wp_query = $temp_query;

					else :

						get_template_part( 'template-parts/content', 'none' );

					endif;
				?>
			</div>


<?php get_footer(); ?>