<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'donetselling');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'admin');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '^Pxuc>8B.22aOJ!&PCMZq6TIJ:a8Nbj4]*WhnG/9yndO@)o^QPi`[32FW^0wKL^L');
define('SECURE_AUTH_KEY',  'Z?RP*7f/htwl5_9v1R~+G bxvF}*QNrizS3nG#@.7@am~-;VugdlC^>WAl)ij|5u');
define('LOGGED_IN_KEY',    'NS=ORkA-hzsG6{20%,`3>edRJpleB)~=B`Nj+~tf0zoU}S{7.-guS*,?GGTA$6k@');
define('NONCE_KEY',        'cU<E7Pt<R[`/:syFNU_V^2s>dqT+&PntGV^>NeBW#*&$HN;WA|W;[P>gP6 9UKr,');
define('AUTH_SALT',        'A$*]5}T^^[Hf&H>Rs.%L0Ems4-:epVI1X|g`q|08+GX,,M.fVD6?9#%1F8B|RL(Y');
define('SECURE_AUTH_SALT', '}/ejQTQ|g&.ZkKs4l-Wl@__M6vJMqn$!QDfL5b^H,X6IEA}_ERp<%~R<F)Hiyi<=');
define('LOGGED_IN_SALT',   '@?E?!JpP=X<feYv?BRtOda!E;ZW^$ML!l|3LDKuNKrTU,m0`o}FSW0i%ayzrT%}O');
define('NONCE_SALT',       'hN5*KC6c+**##(dMr$hsQs,0tvh]yk,x&# 00$,YH9^s2k_4#{cKzaW[92yGip}.');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'do';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
