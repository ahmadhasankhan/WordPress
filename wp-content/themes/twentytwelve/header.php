<?php
/**
 * The Header template for our theme
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Twelve
 * @since Twenty Twelve 1.0
 */
?><!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<?php // Loads HTML5 JavaScript file to add support for HTML5 elements in older IE versions. ?>
<!--[if lt IE 9]>
<script src="<?php echo get_template_directory_uri(); ?>/js/html5.js" type="text/javascript"></script>
<![endif]-->
<?php wp_head(); ?>
</head>

<body>
<div id="page" class="hfeed site">
	<header id="masthead" class="site-header" role="banner">
		<div class="login">Sign In | Register</div>
		<hgroup>
<div class="logo"><div class="logo_img"><img src="http://localhost/wordpress/wp-content/uploads/header_logo.gif" /></div>
<div class="header_contact"><span>The Trading School Of Choice</span> &nbsp;&nbsp;<label class="header_email"> info@KevinDixonTrading.com</label>
<label class="header_number"> 1.800.340.6477</label></div>
</div>
		</hgroup>

		<nav id="site-navigation" class="main-navigation" role="navigation">
			<h3 class="menu-toggle"><?php _e( 'Menu', 'twentytwelve' ); ?></h3>
			<a class="assistive-text" href="#content" title="<?php esc_attr_e( 'Skip to content', 'twentytwelve' ); ?>"><?php _e( 'Skip to content', 'twentytwelve' ); ?></a>
			<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_class' => 'nav-menu' ));?>
		</nav><!-- #site-navigation -->
<div class="header_image">
		<?php if ( get_header_image() ) : ?>
		<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php header_image(); ?>" class="header-image" width="<?php echo get_custom_header()->width; ?>" height="<?php echo get_custom_header()->height; ?>" alt="" /></a>
		<?php endif; ?>
<div class="header_form"><span>Sign Up for</span>
<img src="http://localhost/wordpress/wp-content/uploads/header_form.gif"/>
<form class="header_form">
<input type="text" placeholder="First Name">
<input type="text" placeholder="Last Name">
<input type="email" placeholder="Email">
<input type="submit" class="header_submit">
</form>
<img src="http://localhost/wordpress/wp-content/uploads/social_logos.gif"/>
</div>
</div>
	</header><!-- #masthead -->

	<div id="main" class="wrapper">