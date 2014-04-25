<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * For example, it puts together the home page when no home.php file exists.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Twelve
 * @since Twenty Twelve 1.0
 */

get_header(); ?>
    <!--   Top Boxes.-->
    <div class="home_box_container">
        <div class="box">
            <div class="box_head">Live Monthly Events</div>
            <div class="box_content">
                <ul>
                    <li>Stocks, ETF's and</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li><label class="dollar">$1295</label> for course and materials</li>
                    </br>
                    <li>Forex and Futures</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li><label class="dollar">$1295</label> for course and materials</li>
                </ul>
                <div class="box_next_icon">
                    <img src="http://localhost/wordpress/wp-content/uploads/box_next_icon.gif"/>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="box_head">Personal Coaching</div>
            <div class="box_content">
                <ul>
                    <li>One on one mentoring with kevin on</li>
                    <li>the Asset class of your choice.</li>
                    </br>
                    <li>Coaching times will be determined</li>
                    <li>between Student and Trainer to fit</li>
                    <li>your schedule<label class="dollar">$159/hr</label></li>
                    </br>
                </ul>
                <div class="box_next_icon">
                    <img src="http://localhost/wordpress/wp-content/uploads/box_next_icon.gif"/>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="box_head">Live Market Webinars</div>
            <div class="box_content">
                <ul>
                    <li>Stocks, ETF's and</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li>$1295 for course and materials</li>
                    </br>
                    <li>Forex and Futures</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li>$1295 for course and materials</li>
                </ul>
                <div class="box_next_icon">
                    <img src="http://localhost/wordpress/wp-content/uploads/box_next_icon.gif"/>
                </div>
            </div>
        </div>

        <div class="box remove_margin_frombox">
            <div class="box_head">Products</div>
            <div class="box_content">
                <ul>
                    <li>Stocks, ETF's and</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li>$1295 for course and materials</li>
                    </br>
                    <li>Forex and Futures</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li>$1295 for course and materials</li>
                </ul>
                <div class="box_next_icon">
                    <img src="http://localhost/wordpress/wp-content/uploads/box_next_icon.gif"/>
                </div>
            </div>
        </div>
    </div>
    <!--  End of top Boxes.-->

    <!--  Second Boxes.-->
    <div class="home_box_container">
        <div class="box">
            <div class="bottom_box_head">Live Monthly Events

                <hr style="height:5px;border:none;color:#333;background-color:#333;margin:0px;"/>
            </div>

            <div class="box_content">
                <ul>
                    <li>Stocks, ETF's and</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li><label class="dollar">$1295</label> for course and materials</li>
                    </br>
                    <li>Forex and Futures</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li><label class="dollar">$1295</label> for course and materials</li>
                </ul>

            </div>
        </div>

        <div class="box">
            <div class="bottom_box_head">Live Market Webinars</div>
            <div class="box_content">
                <ul>
                    <li>Stocks, ETF's and</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li>$1295 for course and materials</li>
                    </br>
                    <li>Forex and Futures</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li>$1295 for course and materials</li>
                </ul>

            </div>
        </div>

        <div class="box remove_margin_frombox">
            <div class="bottom_box_head">Products</div>
            <div class="box_content">
                <ul>
                    <li>Stocks, ETF's and</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li>$1295 for course and materials</li>
                    </br>
                    <li>Forex and Futures</li>
                    <li><a href="#">(click to view description)</a></li>
                    <li>$1295 for course and materials</li>
                </ul>
            </div>
        </div>
    </div>
    <!--  End of Second Boxes.-->
    <div id="primary" class="site-content">
        <div id="content" role="main">

            <?php if (have_posts()) : ?>

                <?php /* Start the Loop */ ?>
                <?php while (have_posts()) : the_post(); ?>
                    <?php get_template_part('content', get_post_format()); ?>
                <?php endwhile; ?>

                <?php twentytwelve_content_nav('nav-below'); ?>

            <?php else : ?>

                <article id="post-0" class="post no-results not-found">

                    <?php if (current_user_can('edit_posts')) :
                        // Show a different message to a logged-in user who can add posts.
                        ?>
                        <header class="entry-header">
                            <h1 class="entry-title"><?php _e('No posts to display', 'twentytwelve'); ?></h1>
                        </header>

                        <div class="entry-content">
                            <p><?php printf(__('Ready to publish your first post? <a href="%s">Get started here</a>.', 'twentytwelve'), admin_url('post-new.php')); ?></p>
                        </div><!-- .entry-content -->

                    <?php else :
                        // Show the default message to everyone else.
                        ?>
                        <header class="entry-header">
                            <h1 class="entry-title"><?php _e('Nothing Found', 'twentytwelve'); ?></h1>
                        </header>

                        <div class="entry-content">
                            <p><?php _e('Apologies, but no results were found. Perhaps searching will help find a related post.', 'twentytwelve'); ?></p>
                            <?php get_search_form(); ?>
                        </div><!-- .entry-content -->
                    <?php endif; // end current_user_can() check ?>

                </article><!-- #post-0 -->

            <?php endif; // end have_posts() check ?>

        </div>
        <!-- #content -->
    </div><!-- #primary -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>