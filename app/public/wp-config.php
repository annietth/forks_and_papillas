<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'forks_and_papillas' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

// CUSTOM VARIABLES 
// define( 'LANG', 'fr' );
define( 'LANG', 'fr' );


/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'HOcWn6B4JbjcvtNczUZ5sXSJMOFWzloQTNWUdbOGJ33v4av5odC2A2YxkARQL93m1sQhwnE6i/rRQOw/Fet1Ow==');
define('SECURE_AUTH_KEY',  'Krr21dfPiwnr6odWU3dMIXECEUCKNf0sMXmoCGZ5Vq2xqQSBAF2ZcdOxedYapoU8de69hGEpA64IVfLxFk7FOA==');
define('LOGGED_IN_KEY',    'L9u5TSrcDHd9qM49+WMjOCd48e2ck7zn8lnyex4qQSXeoF9QFEXxY6iKVdm3kMRxo4JeuwdLDma2ICFzjRf1hg==');
define('NONCE_KEY',        'joRul0NSEDMSdh6kvR7bq6Lh1rEskea9XsoNGEQLK7kA9ljRnWJwYlkCRRCqeJunMV+Kxsbdmj6yOIZdl7mnNg==');
define('AUTH_SALT',        '8NktONMgd1l10iJWd/h1JABuZKClC7yf+RsmUVm36DRDCaUB4SMybHJaFCSlEn2w0ULM9I0sChHqz9v+8c1Ibg==');
define('SECURE_AUTH_SALT', 'KT8O/uMvPPRvUzdjGQp/pshtIeXH25Cl7E1eptj2RwLqo/5klom7awszXmWKQ5uWsT/vnt8T2mTpmFT1eFphCA==');
define('LOGGED_IN_SALT',   '7s141ikMHB6EEm/xx5vIsbaj1BoabB1AswIiaIr/tdHe2Wn5Epz/7+9ec+WFuwSFvJvfx29h7MWqSNgc5LDE5w==');
define('NONCE_SALT',       '9EG5dtnel0TAaFfx4nJpQ13+cRPZPfYGLUqoiErQqPCvvUluYGs7R3MW9dG2KdvE8F/mf2S1Izbu1QMw/MCVKQ==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
