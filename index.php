<?php get_header(); ?>
     
    
    
    
        <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

                <?php
                if ( has_post_thumbnail() ) {
                    set_post_thumbnail_size( 680, 380 );
                    the_post_thumbnail();
                    } 
                    
                ?>

            <h1>
                <a href="<?php echo get_attachment_link(); ?>">
                    <?php the_title(); ?>
                </a>
            </h1>
            <p><?php echo wp_trim_words( get_the_content(), 40, '...' ); ?></p>

            <?php endwhile; else : ?>
                <p><?php _e( 'Nenhum post encontrado!' ); ?></p>
        <?php endif; ?>
   
    
<?php get_footer(); ?>