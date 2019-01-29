<?php get_header(); ?>
     
    <div class="row">
    <div class="col-9">

    <h1>Cardápio do Dia</h1>
    
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
    
    </div>
        <div class="col-3">
            <?php get_sidebar(); ?>
        </div>
    </div>
    
<?php get_footer(); ?>