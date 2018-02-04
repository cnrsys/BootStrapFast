<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package BootstrapFast
 */

get_header(); ?>
	<div class="row">
		<?php
		if ( ! bootstrapfast_main_sidebar_placement() ) {
			get_sidebar();
		}
		?>
		<section id="primary" class="content-area col">
			<main id="main" class="site-main" role="main">

			<?php
			if ( have_posts() ) :
				?>

				<header class="page-header">
					<h1 class="page-title"><?php printf( esc_html( 'Search Results for: %s', 'bootstrapfast' ), '<span>' . get_search_query() . '</span>' ); ?></h1>
				</header><!-- .page-header -->

				<?php
				/* Start the Loop */
				while ( have_posts() ) :
					the_post();

					/**
					 * Run the loop for the search to output the results.
					 * If you want to overload this in a child theme then include a file
					 * called content-search.php and that will be used instead.
					 */
					get_template_part( 'template-parts/content', 'search' );

				endwhile;

				the_posts_navigation();

			else :

				get_template_part( 'template-parts/content', 'none' );

			endif;
				?>

			</main><!-- #main -->
		</section><!-- #primary -->
	</div><!-- #row -->
<?php
get_footer();
