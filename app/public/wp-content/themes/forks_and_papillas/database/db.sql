-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  jeu. 25 mars 2021 à 14:31
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `forks_and_papillas`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-12 10:46:45', '2021-03-12 09:46:45', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/forks_and_papillas/app/public', 'yes'),
(2, 'home', 'http://localhost:8888/forks_and_papillas/app/public', 'yes'),
(3, 'blogname', 'Forks and Papillas', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'roux.anthony@hetic.net', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/%category%/', 'yes'),
(29, 'rewrite_rules', 'a:139:{s:7:\"food/?$\";s:24:\"index.php?post_type=food\";s:37:\"food/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=food&feed=$matches[1]\";s:32:\"food/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=food&feed=$matches[1]\";s:24:\"food/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=food&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:32:\"food/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"food/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"food/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"food/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"food/([^/]+)/embed/?$\";s:37:\"index.php?food=$matches[1]&embed=true\";s:25:\"food/([^/]+)/trackback/?$\";s:31:\"index.php?food=$matches[1]&tb=1\";s:45:\"food/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?food=$matches[1]&feed=$matches[2]\";s:40:\"food/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?food=$matches[1]&feed=$matches[2]\";s:33:\"food/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&paged=$matches[2]\";s:40:\"food/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&cpage=$matches[2]\";s:29:\"food/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?food=$matches[1]&page=$matches[2]\";s:21:\"food/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"food/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"food/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"food/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:53:\"type-cuisine/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?type-cuisine=$matches[1]&feed=$matches[2]\";s:48:\"type-cuisine/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?type-cuisine=$matches[1]&feed=$matches[2]\";s:29:\"type-cuisine/([^/]+)/embed/?$\";s:45:\"index.php?type-cuisine=$matches[1]&embed=true\";s:41:\"type-cuisine/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?type-cuisine=$matches[1]&paged=$matches[2]\";s:23:\"type-cuisine/([^/]+)/?$\";s:34:\"index.php?type-cuisine=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\"[^/]+/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"[^/]+/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"[^/]+/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"[^/]+/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"([^/]+)/(.+?)/embed/?$\";s:63:\"index.php?name=$matches[1]&category_name=$matches[2]&embed=true\";s:26:\"([^/]+)/(.+?)/trackback/?$\";s:57:\"index.php?name=$matches[1]&category_name=$matches[2]&tb=1\";s:46:\"([^/]+)/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:41:\"([^/]+)/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:34:\"([^/]+)/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:41:\"([^/]+)/(.+?)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&cpage=$matches[3]\";s:30:\"([^/]+)/(.+?)(?:/([0-9]+))?/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&page=$matches[3]\";s:20:\"[^/]+/.+?/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"[^/]+/.+?/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"[^/]+/.+?/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"[^/]+/.+?/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:29:\"health-check/health-check.php\";i:3;s:41:\"wordpress-importer/wordpress-importer.php\";i:4;s:43:\"wp-extra-file-types/wp-extra-file-types.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:105:\"/Applications/MAMP/htdocs/forks_and_papillas/app/public/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'forks_and_papillas', 'yes'),
(41, 'stylesheet', 'forks_and_papillas', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'author', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1631094405', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:133:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"edit_embed_page\";b:1;s:16:\"edit_embed_pages\";b:1;s:22:\"edit_other_embed_pages\";b:1;s:19:\"publish_embed_pages\";b:1;s:15:\"read_embed_page\";b:1;s:24:\"read_private_embed_pages\";b:1;s:17:\"delete_embed_page\";b:1;s:18:\"delete_embed_pages\";b:1;s:18:\"create_embed_pages\";b:1;s:15:\"edit_event_page\";b:1;s:16:\"edit_event_pages\";b:1;s:22:\"edit_other_event_pages\";b:1;s:19:\"publish_event_pages\";b:1;s:15:\"read_event_page\";b:1;s:24:\"read_private_event_pages\";b:1;s:17:\"delete_event_page\";b:1;s:18:\"delete_event_pages\";b:1;s:18:\"create_event_pages\";b:1;s:9:\"edit_form\";b:1;s:10:\"edit_forms\";b:1;s:16:\"edit_other_forms\";b:1;s:13:\"publish_forms\";b:1;s:9:\"read_form\";b:1;s:18:\"read_private_forms\";b:1;s:11:\"delete_form\";b:1;s:12:\"delete_forms\";b:1;s:12:\"create_forms\";b:1;s:16:\"edit_testimonial\";b:1;s:17:\"edit_testimonials\";b:1;s:23:\"edit_other_testimonials\";b:1;s:20:\"publish_testimonials\";b:1;s:16:\"read_testimonial\";b:1;s:25:\"read_private_testimonials\";b:1;s:18:\"delete_testimonial\";b:1;s:19:\"delete_testimonials\";b:1;s:19:\"create_testimonials\";b:1;s:18:\"edit_gated_content\";b:1;s:19:\"edit_gated_contents\";b:1;s:25:\"edit_other_gated_contents\";b:1;s:22:\"publish_gated_contents\";b:1;s:18:\"read_gated_content\";b:1;s:27:\"read_private_gated_contents\";b:1;s:20:\"delete_gated_content\";b:1;s:21:\"delete_gated_contents\";b:1;s:21:\"create_gated_contents\";b:1;s:11:\"edit_replay\";b:1;s:12:\"edit_replays\";b:1;s:18:\"edit_other_replays\";b:1;s:15:\"publish_replays\";b:1;s:11:\"read_replay\";b:1;s:20:\"read_private_replays\";b:1;s:13:\"delete_replay\";b:1;s:14:\"delete_replays\";b:1;s:14:\"create_replays\";b:1;s:14:\"edit_paid_page\";b:1;s:15:\"edit_paid_pages\";b:1;s:21:\"edit_other_paid_pages\";b:1;s:18:\"publish_paid_pages\";b:1;s:14:\"read_paid_page\";b:1;s:23:\"read_private_paid_pages\";b:1;s:16:\"delete_paid_page\";b:1;s:17:\"delete_paid_pages\";b:1;s:17:\"create_paid_pages\";b:1;s:13:\"edit_ehr_page\";b:1;s:14:\"edit_ehr_pages\";b:1;s:20:\"edit_other_ehr_pages\";b:1;s:17:\"publish_ehr_pages\";b:1;s:13:\"read_ehr_page\";b:1;s:22:\"read_private_ehr_pages\";b:1;s:15:\"delete_ehr_page\";b:1;s:16:\"delete_ehr_pages\";b:1;s:16:\"create_ehr_pages\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'fr_FR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:8:{i:1616683605;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1616708805;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1616752005;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616752014;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616752016;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616838405;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1617055417;a:1:{s:40:\"health-check-scheduled-site-status-check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1615543959;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(152, 'current_theme', 'forks-and-papillas', 'yes'),
(153, 'theme_mods_pro', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1615542579;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"header-2\";a:0:{}s:8:\"header-3\";a:0:{}s:8:\"header-4\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'cornerstone_version', '5.1.5', 'yes'),
(156, 'pro_version', '4.1.5', 'yes'),
(157, 'x_dismiss_update_notice', '1', 'yes'),
(158, 'cornerstone_font_items', '[{\\\"_id\\\":\\\"426f647920436f7079\\\",\\\"title\\\":\\\"Body Copy\\\",\\\"family\\\":\\\"Helvetica\\\",\\\"stack\\\":\\\"Helvetica, Arial, sans-serif\\\",\\\"weights\\\":[\\\"300\\\",\\\"300i\\\",\\\"400\\\",\\\"400i\\\",\\\"700\\\",\\\"700i\\\"],\\\"source\\\":\\\"system\\\"},{\\\"_id\\\":\\\"48656164696e6773\\\",\\\"title\\\":\\\"Headings\\\",\\\"family\\\":\\\"Helvetica\\\",\\\"stack\\\":\\\"Helvetica, Arial, sans-serif\\\",\\\"weights\\\":[\\\"300\\\",\\\"300i\\\",\\\"400\\\",\\\"400i\\\",\\\"700\\\",\\\"700i\\\"],\\\"source\\\":\\\"system\\\"}]', 'yes'),
(159, 'cornerstone_color_items', '[{\\\"title\\\":\\\"Brand Primary\\\",\\\"value\\\":\\\"transparent\\\",\\\"_id\\\":\\\"3229da7eee11b17a93240ae1b1b01d04\\\"},{\\\"title\\\":\\\"Brand Secondary\\\",\\\"value\\\":\\\"transparent\\\",\\\"_id\\\":\\\"88a6c1f291cd0728a87919cac0f3aea2\\\"},{\\\"title\\\":\\\"Link\\\",\\\"value\\\":\\\"transparent\\\",\\\"_id\\\":\\\"3da9444561d43a5521f2c62f1862aff2\\\"},{\\\"title\\\":\\\"Link Interaction\\\",\\\"value\\\":\\\"transparent\\\",\\\"_id\\\":\\\"bc5dfe400cb33ff92abde6d8a9962f6f\\\"}]', 'yes'),
(162, 'cs_assignment_cache_layout_archive', 'a:0:{}', 'yes'),
(163, 'cs_assignment_cache_header', 'a:0:{}', 'yes'),
(164, 'cs_assignment_cache_footer', 'a:0:{}', 'yes'),
(165, 'x_cache_google_fonts_request', 'a:1:{i:0;a:4:{s:6:\"family\";s:4:\"Lato\";s:7:\"weights\";a:7:{i:0;s:3:\"400\";i:1;s:4:\"400i\";i:2;s:3:\"700\";i:3;s:4:\"700i\";i:4;s:3:\"700\";i:5;s:3:\"700\";i:6;s:3:\"700\";}s:5:\"stack\";s:18:\"\"Lato\", sans-serif\";s:6:\"source\";s:6:\"google\";}}', 'yes'),
(169, 'recently_activated', 'a:0:{}', 'yes'),
(176, 'acf_version', '5.8.12', 'yes'),
(185, 'category_children', 'a:0:{}', 'yes'),
(187, 'theme_mods_forks_and_papillas', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(195, 'new_admin_email', 'roux.anthony@hetic.net', 'yes'),
(198, '_wp_suggested_policy_text_has_changed', 'not-changed', 'yes'),
(206, '_transient_health-check-site-status-result', '{\"good\":\"9\",\"recommended\":\"5\",\"critical\":\"3\"}', 'yes'),
(231, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1616877239', 'no'),
(232, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(276, 'recovery_mode_email_last_sent', '1616436426', 'yes'),
(278, '_site_transient_timeout_browser_84eda8c9cf213fabf646db5ced0b2601', '1617041480', 'no'),
(279, '_site_transient_browser_84eda8c9cf213fabf646db5ced0b2601', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.150\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(292, 'options_element_0_label', 'Accueil', 'no'),
(293, '_options_element_0_label', 'field_60590a456a67c', 'no'),
(294, 'options_element_0_url', 'http://forkandpapillas.azurewebsites.net/', 'no'),
(295, '_options_element_0_url', 'field_60590a4f6a67d', 'no'),
(296, 'options_element_1_label', 'Qui sommes nous  ?', 'no'),
(297, '_options_element_1_label', 'field_60590a456a67c', 'no'),
(298, 'options_element_1_url', '', 'no'),
(299, '_options_element_1_url', 'field_60590a4f6a67d', 'no'),
(300, 'options_element_2_label', 'Contact', 'no'),
(301, '_options_element_2_label', 'field_60590a456a67c', 'no'),
(302, 'options_element_2_url', '', 'no'),
(303, '_options_element_2_url', 'field_60590a4f6a67d', 'no'),
(304, 'options_element', '3', 'no'),
(305, '_options_element', 'field_6058de9f22bad', 'no'),
(318, '_site_transient_timeout_browser_d1be6d46f51355ccd87430b5bd4da961', '1617055560', 'no'),
(319, '_site_transient_browser_d1be6d46f51355ccd87430b5bd4da961', 'a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(322, 'options_label', 'Element', 'no'),
(323, '_options_label', 'field_6059160af61b1', 'no'),
(331, 'wpeft_types', 'a:8:{s:3:\"txt\";s:10:\"text/plain\";s:2:\"7z\";s:27:\"application/x-7z-compressed\";s:3:\"bz2\";s:19:\"application/x-bzip2\";s:2:\"gz\";s:18:\"application/x-gzip\";s:3:\"tgz\";s:18:\"application/x-gzip\";s:3:\"txz\";s:16:\"application/x-xz\";s:2:\"xz\";s:16:\"application/x-xz\";s:3:\"zip\";s:15:\"application/zip\";}', 'yes'),
(332, 'wpeft_custom_types', '', 'yes'),
(372, 'type-cuisine_children', 'a:0:{}', 'yes'),
(399, 'options_the_items_0_label', 'Français', 'no'),
(400, '_options_the_items_0_label', 'field_60591ffe9315d', 'no'),
(401, 'options_the_items_0_url', '', 'no'),
(402, '_options_the_items_0_url', 'field_605920349315f', 'no'),
(403, 'options_the_items_1_label', 'Italien', 'no'),
(404, '_options_the_items_1_label', 'field_60591ffe9315d', 'no'),
(405, 'options_the_items_1_url', '', 'no'),
(406, '_options_the_items_1_url', 'field_605920349315f', 'no'),
(407, 'options_the_items_2_label', 'Orientale', 'no'),
(408, '_options_the_items_2_label', 'field_60591ffe9315d', 'no'),
(409, 'options_the_items_2_url', '', 'no'),
(410, '_options_the_items_2_url', 'field_605920349315f', 'no'),
(411, 'options_the_items_3_label', 'Créole', 'no'),
(412, '_options_the_items_3_label', 'field_60591ffe9315d', 'no'),
(413, 'options_the_items_3_url', '', 'no'),
(414, '_options_the_items_3_url', 'field_605920349315f', 'no'),
(415, 'options_the_items_4_label', 'Vietnamien', 'no'),
(416, '_options_the_items_4_label', 'field_60591ffe9315d', 'no'),
(417, 'options_the_items_4_url', '', 'no'),
(418, '_options_the_items_4_url', 'field_605920349315f', 'no'),
(419, 'options_the_items_5_label', 'Indonésien', 'no'),
(420, '_options_the_items_5_label', 'field_60591ffe9315d', 'no'),
(421, 'options_the_items_5_url', '', 'no'),
(422, '_options_the_items_5_url', 'field_605920349315f', 'no'),
(423, 'options_the_items', '7', 'no'),
(424, '_options_the_items', 'field_60591fcb9315c', 'no'),
(425, 'options_the_items_6_label', 'Mongolien', 'no'),
(426, '_options_the_items_6_label', 'field_60591ffe9315d', 'no'),
(427, 'options_the_items_6_url', '', 'no'),
(428, '_options_the_items_6_url', 'field_605920349315f', 'no'),
(430, '_site_transient_timeout_popular_importers_5f3d3845dac17bcbe638f56e3742a832', '1616785493', 'no'),
(431, '_site_transient_popular_importers_5f3d3845dac17bcbe638f56e3742a832', 'a:2:{s:9:\"importers\";a:7:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(442, '_transient_timeout_acf_plugin_updates', '1616795222', 'no'),
(443, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.8.12\";}}', 'no'),
(456, 'type_cuisine_children', 'a:0:{}', 'yes'),
(461, '_site_transient_timeout_theme_roots', '1616671904', 'no'),
(462, '_site_transient_theme_roots', 'a:4:{s:18:\"forks_and_papillas\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(464, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1616670107;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"5.7\";s:7:\"updated\";s:19:\"2021-03-19 23:51:11\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(465, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616670109;s:7:\"checked\";a:4:{s:18:\"forks_and_papillas\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(466, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616670110;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.8.12\";s:29:\"health-check/health-check.php\";s:5:\"1.4.5\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.18\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";s:43:\"wp-extra-file-types/wp-extra-file-types.php\";s:7:\"0.4.4.1\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.9.5\";s:7:\"updated\";s:19:\"2021-03-13 14:28:49\";s:7:\"package\";s:88:\"http://downloads.wordpress.org/translation/plugin/advanced-custom-fields/5.9.5/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"health-check\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.4.5\";s:7:\"updated\";s:19:\"2021-03-19 06:56:18\";s:7:\"package\";s:78:\"http://downloads.wordpress.org/translation/plugin/health-check/1.4.5/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"svg-support\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"2.3.18\";s:7:\"updated\";s:19:\"2020-12-21 21:34:07\";s:7:\"package\";s:78:\"http://downloads.wordpress.org/translation/plugin/svg-support/2.3.18/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:18:\"wordpress-importer\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"0.7\";s:7:\"updated\";s:19:\"2020-12-06 17:27:03\";s:7:\"package\";s:82:\"http://downloads.wordpress.org/translation/plugin/wordpress-importer/0.7/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"health-check/health-check.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/health-check\";s:4:\"slug\";s:12:\"health-check\";s:6:\"plugin\";s:29:\"health-check/health-check.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/health-check/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/plugin/health-check.1.4.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/health-check/assets/icon-256x256.png?rev=1823210\";s:2:\"1x\";s:57:\"https://ps.w.org/health-check/assets/icon.svg?rev=1828244\";s:3:\"svg\";s:57:\"https://ps.w.org/health-check/assets/icon.svg?rev=1828244\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/health-check/assets/banner-1544x500.png?rev=1823210\";s:2:\"1x\";s:67:\"https://ps.w.org/health-check/assets/banner-772x250.png?rev=1823210\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.18\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/plugin/svg-support.2.3.18.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"wp-extra-file-types/wp-extra-file-types.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/wp-extra-file-types\";s:4:\"slug\";s:19:\"wp-extra-file-types\";s:6:\"plugin\";s:43:\"wp-extra-file-types/wp-extra-file-types.php\";s:11:\"new_version\";s:7:\"0.4.4.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/wp-extra-file-types/\";s:7:\"package\";s:69:\"http://downloads.wordpress.org/plugin/wp-extra-file-types.0.4.4.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/wp-extra-file-types.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 2, '_edit_lock', '1615543875:1'),
(6, 6, '_edit_lock', '1616339355:1'),
(7, 6, '_edit_last', '1'),
(8, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:5171:\"<h2>Qui sommes-nous ?</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:8888/forks_and_papillas/app/public.</p><h2>Commentaires</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h2>Médias</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><h2>Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><h2>Contenu embarqué depuis d’autres sites</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h2>Utilisation et transmission de vos données personnelles</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><h2>Durées de stockage de vos données</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\";s:5:\"added\";i:1615562168;}'),
(9, 11, '_edit_lock', '1616436276:1'),
(10, 12, '_edit_lock', '1616436277:1'),
(11, 14, '_edit_lock', '1616451278:1'),
(12, 14, '_edit_last', '1'),
(13, 16, '_edit_lock', '1616445128:1'),
(14, 17, '_edit_lock', '1616445388:1'),
(15, 18, '_edit_lock', '1616445420:1'),
(16, 22, '_edit_lock', '1616609457:1'),
(17, 22, '_edit_last', '1'),
(18, 27, '_edit_lock', '1616528264:1'),
(19, 29, '_edit_lock', '1616528344:1'),
(20, 30, '_edit_lock', '1616528290:1'),
(21, 30, '_edit_last', '1'),
(22, 32, '_edit_lock', '1616528842:1'),
(23, 32, '_edit_last', '1'),
(24, 34, '_edit_lock', '1616529481:1'),
(25, 35, '_edit_lock', '1616529512:1'),
(26, 36, '_edit_lock', '1616529414:1'),
(27, 36, '_edit_last', '1'),
(30, 1, '_wp_trash_meta_status', 'publish'),
(31, 1, '_wp_trash_meta_time', '1616530791'),
(32, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(33, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(34, 39, '_edit_lock', '1616531045:1'),
(35, 39, '_edit_last', '1'),
(40, 41, '_edit_lock', '1616534987:1'),
(41, 41, '_edit_last', '1'),
(44, 43, '_edit_lock', '1616534930:1'),
(45, 45, '_edit_lock', '1616535177:1'),
(46, 48, '_edit_lock', '1616535209:1'),
(47, 52, '_edit_last', '1'),
(48, 52, '_edit_lock', '1616681942:1'),
(49, 54, '_edit_lock', '1616628000:1'),
(50, 54, '_edit_last', '1'),
(51, 56, '_edit_lock', '1616627991:1'),
(52, 56, '_edit_last', '1'),
(53, 41, '_wp_trash_meta_status', 'publish'),
(54, 41, '_wp_trash_meta_time', '1616535847'),
(55, 41, '_wp_desired_post_slug', 'chez-annie'),
(56, 39, '_wp_trash_meta_status', 'publish'),
(57, 39, '_wp_trash_meta_time', '1616535847'),
(58, 39, '_wp_desired_post_slug', 'chez-dorian'),
(59, 36, '_wp_trash_meta_status', 'publish'),
(60, 36, '_wp_trash_meta_time', '1616535847'),
(61, 36, '_wp_desired_post_slug', 'article-1'),
(62, 58, '_edit_lock', '1616681852:1'),
(63, 58, '_edit_last', '1'),
(64, 60, '_wp_attached_file', '2021/03/IMG_42F9AE2F3575-1.jpeg'),
(65, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1242;s:6:\"height\";i:1551;s:4:\"file\";s:31:\"2021/03/IMG_42F9AE2F3575-1.jpeg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-240x300.jpeg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG_42F9AE2F3575-1-820x1024.jpeg\";s:5:\"width\";i:820;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-768x959.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:959;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"IMG_42F9AE2F3575-1-1230x1536.jpeg\";s:5:\"width\";i:1230;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-384x182.jpeg\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-146x182.jpeg\";s:5:\"width\";i:146;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-643x528.jpeg\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(66, 60, '_wp_attachment_image_alt', 'Pizza'),
(67, 58, '_thumbnail_id', '60'),
(68, 63, '_edit_lock', '1616612253:1'),
(69, 63, '_edit_last', '1'),
(70, 73, '_edit_lock', '1616682616:1'),
(71, 73, '_edit_last', '1'),
(72, 58, 'top_restaurant', '1'),
(73, 58, '_top_restaurant', 'field_605c9846fc9a9'),
(74, 58, 'grade', '5stars'),
(75, 58, '_grade', 'field_605c9875fc9aa'),
(76, 76, 'top_restaurant', '1'),
(77, 76, '_top_restaurant', 'field_605c9846fc9a9'),
(78, 76, 'grade', '5stars'),
(79, 76, '_grade', 'field_605c9875fc9aa'),
(80, 52, 'top_restaurant', '1'),
(81, 52, '_top_restaurant', 'field_605c9846fc9a9'),
(82, 52, 'grade', '3stars'),
(83, 52, '_grade', 'field_605c9875fc9aa'),
(84, 77, 'top_restaurant', '1'),
(85, 77, '_top_restaurant', 'field_605c9846fc9a9'),
(86, 77, 'grade', '3stars'),
(87, 77, '_grade', 'field_605c9875fc9aa');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-12 10:46:45', '2021-03-12 09:46:45', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2021-03-23 21:19:51', '2021-03-23 20:19:51', '', 0, 'http://localhost:8888/forks-and-papillas/app/public/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-12 10:46:45', '2021-03-12 09:46:45', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost:8888/forks-and-papillas/app/public/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2021-03-12 10:46:45', '2021-03-12 09:46:45', '', 0, 'http://localhost:8888/forks-and-papillas/app/public/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-12 10:46:45', '2021-03-12 09:46:45', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:8888/forks-and-papillas/app/public.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2021-03-12 10:46:45', '2021-03-12 09:46:45', '', 0, 'http://localhost:8888/forks-and-papillas/app/public/?page_id=3', 0, 'page', '', 0),
(6, 1, '2021-03-12 11:27:34', '2021-03-12 10:27:34', '', '', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2021-03-21 16:11:19', '2021-03-21 15:11:19', '', 0, 'http://localhost:8888/forks-and-papillas/app/public/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-03-12 11:27:34', '2021-03-12 10:27:34', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-03-12 11:27:34', '2021-03-12 10:27:34', '', 6, 'http://localhost:8888/forks-and-papillas/app/public/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-03-12 11:42:50', '2021-03-12 10:42:50', 'Je suis sur la homepage !!', 'Homepage', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-03-12 11:42:50', '2021-03-12 10:42:50', '', 6, 'http://localhost:8888/forks-and-papillas/app/public/?p=8', 0, 'revision', '', 0),
(10, 1, '2021-03-21 16:11:19', '2021-03-21 15:11:19', '', '', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-03-21 16:11:19', '2021-03-21 15:11:19', '', 6, 'http://localhost:8888/forks_and_papillas/app/public/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-03-22 19:00:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-22 19:00:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2021-03-22 19:04:36', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-22 19:04:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2021-03-22 19:11:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-22 19:11:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?p=13', 0, 'post', '', 0),
(14, 1, '2021-03-22 19:15:47', '2021-03-22 18:15:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'group_6058de9674ea3', '', '', '2021-03-22 23:15:01', '2021-03-22 22:15:01', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&#038;p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2021-03-22 19:15:47', '2021-03-22 18:15:47', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Element', 'element', 'publish', 'closed', 'closed', '', 'field_6058de9f22bad', '', '', '2021-03-22 22:26:14', '2021-03-22 21:26:14', '', 14, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=15', 0, 'acf-field', '', 0),
(16, 1, '2021-03-22 21:26:51', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-22 21:26:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2021-03-22 21:36:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-22 21:36:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2021-03-22 21:36:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-22 21:36:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2021-03-22 22:21:48', '2021-03-22 21:21:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"Element\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Label', 'label', 'publish', 'closed', 'closed', '', 'field_60590a456a67c', '', '', '2021-03-22 22:26:59', '2021-03-22 21:26:59', '', 15, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=19', 0, 'acf-field', '', 0),
(20, 1, '2021-03-22 22:21:48', '2021-03-22 21:21:48', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_60590a4f6a67d', '', '', '2021-03-22 22:26:59', '2021-03-22 21:26:59', '', 15, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=20', 1, 'acf-field', '', 0),
(22, 1, '2021-03-22 23:55:10', '2021-03-22 22:55:10', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'SubNavbar', 'subnavbar', 'publish', 'closed', 'closed', '', 'group_60591fc383787', '', '', '2021-03-23 00:04:53', '2021-03-22 23:04:53', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2021-03-22 23:55:10', '2021-03-22 22:55:10', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'The items', 'the_items', 'publish', 'closed', 'closed', '', 'field_60591fcb9315c', '', '', '2021-03-22 23:55:10', '2021-03-22 22:55:10', '', 22, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
(25, 1, '2021-03-22 23:55:10', '2021-03-22 22:55:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"Français\";s:11:\"placeholder\";s:10:\"Vietnamien\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Label', 'label', 'publish', 'closed', 'closed', '', 'field_60591ffe9315d', '', '', '2021-03-23 00:04:53', '2021-03-22 23:04:53', '', 23, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=25', 0, 'acf-field', '', 0),
(26, 1, '2021-03-22 23:55:10', '2021-03-22 22:55:10', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_605920349315f', '', '', '2021-03-23 00:04:53', '2021-03-22 23:04:53', '', 23, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=26', 1, 'acf-field', '', 0),
(27, 1, '2021-03-23 20:32:17', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 20:32:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=frenchfood&p=27', 0, 'frenchfood', '', 0),
(28, 1, '2021-03-23 20:37:46', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 20:37:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=frenchfood&p=28', 0, 'frenchfood', '', 0),
(29, 1, '2021-03-23 20:38:03', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 20:38:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2021-03-23 20:40:30', '2021-03-23 19:40:30', '<span style=\"font-weight: 400;\">La lettre est signée de votre confrère généraliste. “Merci de recevoir Monsieur X…”, vous demande-t-il, avant de vous détailler les antécédents de son patient, qui aujourd’hui vous fait face. C’est une démarche dont vous avez l’habitude : en tant que spécialiste, vous recevez régulièrement des patients adressés par d’autres professionnels de santé. Au coeur du parcours de soins coordonnés, l’adressage fluidifie le parcours des patients et contribue à la continuité et à la pertinence des soins.</span>\r\n\r\n<span style=\"font-weight: 400;\">La réforme de l’Assurance maladie de 2004 a accentué une pratique en cours depuis toujours : lorsqu’un confrère le juge utile, il oriente le patient dont l’état de santé le requiert vers vous. Par une lettre d’adressage, un fax ou un appel téléphonique, il peut même prendre rendez-vous avec vous directement, pour son patient. Une enquête réalisée par l’URPS Ile-de-France en 2014 plaçait le courrier en tête des moyens de communication entre confrères pour l’adressage (50 %). Venait ensuite le téléphone (40 %), et le mail (5 %). Cette même étude indiquait qu’en tant que médecin correspondant, vous utilisiez pour rendre compte de la consultation à votre confrère le courrier (61 %) et le mail (23 %</span>', 'Chez Jean-Paul', '', 'publish', 'closed', 'closed', '', 'chez-jean-paul', '', '', '2021-03-23 20:40:30', '2021-03-23 19:40:30', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=frenchfood&#038;p=30', 0, 'frenchfood', '', 0),
(31, 1, '2021-03-23 20:40:30', '2021-03-23 19:40:30', '<span style=\"font-weight: 400;\">La lettre est signée de votre confrère généraliste. “Merci de recevoir Monsieur X…”, vous demande-t-il, avant de vous détailler les antécédents de son patient, qui aujourd’hui vous fait face. C’est une démarche dont vous avez l’habitude : en tant que spécialiste, vous recevez régulièrement des patients adressés par d’autres professionnels de santé. Au coeur du parcours de soins coordonnés, l’adressage fluidifie le parcours des patients et contribue à la continuité et à la pertinence des soins.</span>\r\n\r\n<span style=\"font-weight: 400;\">La réforme de l’Assurance maladie de 2004 a accentué une pratique en cours depuis toujours : lorsqu’un confrère le juge utile, il oriente le patient dont l’état de santé le requiert vers vous. Par une lettre d’adressage, un fax ou un appel téléphonique, il peut même prendre rendez-vous avec vous directement, pour son patient. Une enquête réalisée par l’URPS Ile-de-France en 2014 plaçait le courrier en tête des moyens de communication entre confrères pour l’adressage (50 %). Venait ensuite le téléphone (40 %), et le mail (5 %). Cette même étude indiquait qu’en tant que médecin correspondant, vous utilisiez pour rendre compte de la consultation à votre confrère le courrier (61 %) et le mail (23 %</span>', 'Chez Jean-Paul', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-03-23 20:40:30', '2021-03-23 19:40:30', '', 30, 'http://localhost:8888/forks_and_papillas/app/public/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-03-23 20:43:32', '2021-03-23 19:43:32', '<span style=\"font-weight: 400;\">La lettre est signée de votre confrère généraliste. “Merci de recevoir Monsieur X…”, vous demande-t-il, avant de vous détailler les antécédents de son patient, qui aujourd’hui vous fait face. C’est une démarche dont vous avez l’habitude : en tant que spécialiste, vous recevez régulièrement des patients adressés par d’autres professionnels de santé. Au coeur du parcours de soins coordonnés, l’adressage fluidifie le parcours des patients et contribue à la continuité et à la pertinence des soins.</span>\r\n\r\n<span style=\"font-weight: 400;\">La réforme de l’Assurance maladie de 2004 a accentué une pratique en cours depuis toujours : lorsqu’un confrère le juge utile, il oriente le patient dont l’état de santé le requiert vers vous. Par une lettre d’adressage, un fax ou un appel téléphonique, il peut même prendre rendez-vous avec vous directement, pour son patient. Une enquête réalisée par l’URPS Ile-de-France en 2014 plaçait le courrier en tête des moyens de communication entre confrères pour l’adressage (50 %). Venait ensuite le téléphone (40 %), et le mail (5 %). Cette même étude indiquait qu’en tant que médecin correspondant, vous utilisiez pour rendre compte de la consultation à votre confrère le courrier (61 %) et le mail (23 %</span>', 'Chez Patrick', '', 'publish', 'closed', 'closed', '', 'chez-patrick', '', '', '2021-03-23 20:43:32', '2021-03-23 19:43:32', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=frenchfood&#038;p=32', 0, 'frenchfood', '', 0),
(33, 1, '2021-03-23 20:43:32', '2021-03-23 19:43:32', '<span style=\"font-weight: 400;\">La lettre est signée de votre confrère généraliste. “Merci de recevoir Monsieur X…”, vous demande-t-il, avant de vous détailler les antécédents de son patient, qui aujourd’hui vous fait face. C’est une démarche dont vous avez l’habitude : en tant que spécialiste, vous recevez régulièrement des patients adressés par d’autres professionnels de santé. Au coeur du parcours de soins coordonnés, l’adressage fluidifie le parcours des patients et contribue à la continuité et à la pertinence des soins.</span>\r\n\r\n<span style=\"font-weight: 400;\">La réforme de l’Assurance maladie de 2004 a accentué une pratique en cours depuis toujours : lorsqu’un confrère le juge utile, il oriente le patient dont l’état de santé le requiert vers vous. Par une lettre d’adressage, un fax ou un appel téléphonique, il peut même prendre rendez-vous avec vous directement, pour son patient. Une enquête réalisée par l’URPS Ile-de-France en 2014 plaçait le courrier en tête des moyens de communication entre confrères pour l’adressage (50 %). Venait ensuite le téléphone (40 %), et le mail (5 %). Cette même étude indiquait qu’en tant que médecin correspondant, vous utilisiez pour rendre compte de la consultation à votre confrère le courrier (61 %) et le mail (23 %</span>', 'Chez Patrick', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-03-23 20:43:32', '2021-03-23 19:43:32', '', 32, 'http://localhost:8888/forks_and_papillas/app/public/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-03-23 20:51:31', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-23 20:51:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?p=34', 0, 'post', '', 0),
(35, 1, '2021-03-23 20:58:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-23 20:58:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?p=35', 0, 'post', '', 0),
(36, 1, '2021-03-23 20:58:55', '2021-03-23 19:58:55', 'kzdjdzejkjdmjz', 'Article 1', '', 'trash', 'open', 'open', '', 'article-1__trashed', '', '', '2021-03-23 22:44:07', '2021-03-23 21:44:07', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?p=36', 0, 'post', '', 0),
(37, 1, '2021-03-23 20:58:55', '2021-03-23 19:58:55', 'kzdjdzejkjdmjz', 'Article 1', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-03-23 20:58:55', '2021-03-23 19:58:55', '', 36, 'http://localhost:8888/forks_and_papillas/app/public/?p=37', 0, 'revision', '', 0),
(38, 1, '2021-03-23 21:19:51', '2021-03-23 20:19:51', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-03-23 21:19:51', '2021-03-23 20:19:51', '', 1, 'http://localhost:8888/forks_and_papillas/app/public/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-03-23 21:20:16', '2021-03-23 20:20:16', 'Mmmmmh c\'est bon', 'Chez Dorian', '', 'trash', 'open', 'open', '', 'chez-dorian__trashed', '', '', '2021-03-23 22:44:07', '2021-03-23 21:44:07', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?p=39', 0, 'post', '', 0),
(40, 1, '2021-03-23 21:20:16', '2021-03-23 20:20:16', 'Mmmmmh c\'est bon', 'Chez Dorian', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2021-03-23 21:20:16', '2021-03-23 20:20:16', '', 39, 'http://localhost:8888/forks_and_papillas/app/public/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-03-23 21:26:52', '2021-03-23 20:26:52', 'cjkdedkekmld', 'chez annie', '', 'trash', 'open', 'open', '', 'chez-annie__trashed', '', '', '2021-03-23 22:44:07', '2021-03-23 21:44:07', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?p=41', 0, 'post', '', 0),
(42, 1, '2021-03-23 21:26:52', '2021-03-23 20:26:52', 'cjkdedkekmld', 'chez annie', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-03-23 21:26:52', '2021-03-23 20:26:52', '', 41, 'http://localhost:8888/forks_and_papillas/app/public/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-03-23 22:24:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 22:24:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&p=43', 0, 'food', '', 0),
(44, 1, '2021-03-23 22:32:14', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 22:32:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&p=44', 0, 'food', '', 0),
(45, 1, '2021-03-23 22:32:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 22:32:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&p=45', 0, 'food', '', 0),
(46, 1, '2021-03-23 22:32:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 22:32:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&p=46', 0, 'food', '', 0),
(47, 1, '2021-03-23 22:33:11', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 22:33:11', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&p=47', 0, 'food', '', 0),
(48, 1, '2021-03-23 22:33:13', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 22:33:13', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&p=48', 0, 'food', '', 0),
(49, 1, '2021-03-23 22:33:34', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 22:33:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&p=49', 0, 'food', '', 0),
(50, 1, '2021-03-23 22:33:36', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 22:33:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&p=50', 0, 'food', '', 0),
(51, 1, '2021-03-23 22:33:51', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-23 22:33:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&p=51', 0, 'food', '', 0),
(52, 1, '2021-03-23 22:34:03', '2021-03-23 21:34:03', '', 'Chez Priska', '', 'publish', 'closed', 'closed', '', 'chez-priska', '', '', '2021-03-25 15:20:04', '2021-03-25 14:20:04', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=52', 0, 'food', '', 0),
(53, 1, '2021-03-23 22:34:03', '2021-03-23 21:34:03', '', 'Chez Priska', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-03-23 22:34:03', '2021-03-23 21:34:03', '', 52, 'http://localhost:8888/forks_and_papillas/app/public/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-03-23 22:42:33', '2021-03-23 21:42:33', '', 'Chez Annie', '', 'publish', 'closed', 'closed', '', 'chez-annie', '', '', '2021-03-25 00:22:22', '2021-03-24 23:22:22', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=54', 0, 'food', '', 0),
(55, 1, '2021-03-23 22:42:33', '2021-03-23 21:42:33', '', 'Chez Annie', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-03-23 22:42:33', '2021-03-23 21:42:33', '', 54, 'http://localhost:8888/forks_and_papillas/app/public/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-03-23 22:42:55', '2021-03-23 21:42:55', '', 'Chez Dorian', '', 'publish', 'closed', 'closed', '', 'chez-dorian', '', '', '2021-03-25 00:22:14', '2021-03-24 23:22:14', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=56', 0, 'food', '', 0),
(57, 1, '2021-03-23 22:42:55', '2021-03-23 21:42:55', '', 'Chez Dorian', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-03-23 22:42:55', '2021-03-23 21:42:55', '', 56, 'http://localhost:8888/forks_and_papillas/app/public/?p=57', 0, 'revision', '', 0),
(58, 1, '2021-03-23 22:45:05', '2021-03-23 21:45:05', 'Mimo aime la vie, la cuisine, recevoir et partager ! L\'Italie pour lui c\'est toute sa vie. Des pasta flambées dans la meule de parmesan aux pizze napolitaines, il arrose le tout de ses cocktails fins et distingués.\r\n\r\nMimo est un oiseau de nuit, ses clients deviennent ses amis, il aime danser et faire danser. Des Rolling Stones à Wes Anderson, tomber amoureux de son univers à votre premier pas chez lui.', 'Chez Anthonio', '', 'publish', 'closed', 'closed', '', 'chez-anthonio', '', '', '2021-03-25 15:19:51', '2021-03-25 14:19:51', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=58', 0, 'food', '', 0),
(59, 1, '2021-03-23 22:45:05', '2021-03-23 21:45:05', '', 'Chez Anthonio', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-03-23 22:45:05', '2021-03-23 21:45:05', '', 58, 'http://localhost:8888/forks_and_papillas/app/public/?p=59', 0, 'revision', '', 0),
(60, 1, '2021-03-24 18:49:37', '2021-03-24 17:49:37', '', 'gruppo_mimo', '', 'inherit', 'open', 'closed', '', 'img_42f9ae2f3575-1', '', '', '2021-03-24 18:49:58', '2021-03-24 17:49:58', '', 58, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/IMG_42F9AE2F3575-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-03-24 18:56:33', '2021-03-24 17:56:33', 'Miammmmm', 'Chez Anthonio', '', 'inherit', 'closed', 'closed', '', '58-autosave-v1', '', '', '2021-03-24 18:56:33', '2021-03-24 17:56:33', '', 58, 'http://localhost:8888/forks_and_papillas/app/public/?p=61', 0, 'revision', '', 0),
(62, 1, '2021-03-24 18:57:04', '2021-03-24 17:57:04', 'Mimo aime la vie, la cuisine, recevoir et partager ! L\'Italie pour lui c\'est toute sa vie. Des pasta flambées dans la meule de parmesan aux pizze napolitaines, il arrose le tout de ses cocktails fins et distingués.\r\n\r\nMimo est un oiseau de nuit, ses clients deviennent ses amis, il aime danser et faire danser. Des Rolling Stones à Wes Anderson, tomber amoureux de son univers à votre premier pas chez lui.', 'Chez Anthonio', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-03-24 18:57:04', '2021-03-24 17:57:04', '', 58, 'http://localhost:8888/forks_and_papillas/app/public/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-03-24 19:54:35', '2021-03-24 18:54:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'group_605b8902912ac', '', '', '2021-03-24 19:59:54', '2021-03-24 18:59:54', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2021-03-24 19:54:35', '2021-03-24 18:54:35', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:18:\"Ici mettre le logo\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_605b8924112d4', '', '', '2021-03-24 19:54:35', '2021-03-24 18:54:35', '', 63, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2021-03-24 19:54:35', '2021-03-24 18:54:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:17:\"Phrase d\'accroche\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:14:\"Rejoins-nous !\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Catch word', 'catch_word', 'publish', 'closed', 'closed', '', 'field_605b8985112d5', '', '', '2021-03-24 19:54:35', '2021-03-24 18:54:35', '', 63, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=65', 1, 'acf-field', '', 0),
(66, 1, '2021-03-24 19:54:35', '2021-03-24 18:54:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:15:\"Adresse postale\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:30:\"12 rue Emile Zola, 75002 Paris\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_605b8a76112d6', '', '', '2021-03-24 19:54:35', '2021-03-24 18:54:35', '', 63, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=66', 2, 'acf-field', '', 0),
(68, 1, '2021-03-24 19:59:44', '2021-03-24 18:59:44', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:4;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Socials Networks', 'socials_networks', 'publish', 'closed', 'closed', '', 'field_605b8ba10a290', '', '', '2021-03-24 19:59:54', '2021-03-24 18:59:54', '', 63, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=68', 3, 'acf-field', '', 0),
(69, 1, '2021-03-24 19:59:44', '2021-03-24 18:59:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Label', 'label', 'publish', 'closed', 'closed', '', 'field_605b8bc10a291', '', '', '2021-03-24 19:59:44', '2021-03-24 18:59:44', '', 68, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=69', 0, 'acf-field', '', 0),
(70, 1, '2021-03-24 19:59:44', '2021-03-24 18:59:44', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_605b8bcc0a292', '', '', '2021-03-24 19:59:44', '2021-03-24 18:59:44', '', 68, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=70', 1, 'acf-field', '', 0),
(71, 1, '2021-03-24 19:59:44', '2021-03-24 18:59:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_605b8bdb0a293', '', '', '2021-03-24 19:59:44', '2021-03-24 18:59:44', '', 68, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=71', 2, 'acf-field', '', 0),
(72, 1, '2021-03-24 22:30:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-24 22:30:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?page_id=72', 0, 'page', '', 0),
(73, 1, '2021-03-25 15:07:45', '2021-03-25 14:07:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"food\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Card', 'card', 'publish', 'closed', 'closed', '', 'group_605c983c8e9a4', '', '', '2021-03-25 15:08:16', '2021-03-25 14:08:16', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2021-03-25 15:07:45', '2021-03-25 14:07:45', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Top Restaurant ?', 'top_restaurant', 'publish', 'closed', 'closed', '', 'field_605c9846fc9a9', '', '', '2021-03-25 15:07:45', '2021-03-25 14:07:45', '', 73, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2021-03-25 15:07:45', '2021-03-25 14:07:45', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:15:\"Mettez une note\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:5:{s:5:\"1star\";s:6:\"1 star\";s:6:\"2stars\";s:7:\"2 stars\";s:6:\"3stars\";s:7:\"3 stars\";s:6:\"4stars\";s:7:\"4 stars\";s:6:\"5stars\";s:7:\"5 stars\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Grade', 'grade', 'publish', 'closed', 'closed', '', 'field_605c9875fc9aa', '', '', '2021-03-25 15:08:16', '2021-03-25 14:08:16', '', 73, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=75', 1, 'acf-field', '', 0),
(76, 1, '2021-03-25 15:08:28', '2021-03-25 14:08:28', 'Mimo aime la vie, la cuisine, recevoir et partager ! L\'Italie pour lui c\'est toute sa vie. Des pasta flambées dans la meule de parmesan aux pizze napolitaines, il arrose le tout de ses cocktails fins et distingués.\r\n\r\nMimo est un oiseau de nuit, ses clients deviennent ses amis, il aime danser et faire danser. Des Rolling Stones à Wes Anderson, tomber amoureux de son univers à votre premier pas chez lui.', 'Chez Anthonio', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-03-25 15:08:28', '2021-03-25 14:08:28', '', 58, 'http://localhost:8888/forks_and_papillas/app/public/?p=76', 0, 'revision', '', 0),
(77, 1, '2021-03-25 15:20:04', '2021-03-25 14:20:04', '', 'Chez Priska', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-03-25 15:20:04', '2021-03-25 14:20:04', '', 52, 'http://localhost:8888/forks_and_papillas/app/public/?p=77', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Cuisine Française', 'french-food', 0),
(3, 'Cuisine Italienne', 'italian-food', 0),
(4, 'Cuisine Indonésienne', 'indonesian-food', 0),
(5, 'Cuisine Orientale', 'oriental-food', 0),
(6, 'Cuisine Vietnamienne', 'vietnanian-food', 0),
(7, 'Cuisine Créole', 'caribbean-food', 0),
(8, 'Cuisine Française', 'french-food', 0),
(9, 'Cuisine Indonésienne', 'indonesian-food', 0),
(10, 'Cuisine Italienne', 'italian-food', 0),
(11, 'Cuisine Créole', 'creole-food', 0),
(12, 'Cuisine Vietnamienne', 'vietnamian-food', 0),
(13, 'Cuisine Orientale', 'oriental-food', 0),
(14, 'Cuisine Française', 'french-food', 0),
(15, 'Cuisine Italienne', 'italian-food', 0),
(16, 'Cuisine Orientale', 'oriental-food', 0),
(17, 'Cuisine Créole', 'creole-food', 0),
(18, 'Cuisine Indonésienne', 'indonesian-food', 0),
(19, 'Cuisine Vietnamienne', 'vietnamian-food', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(36, 7, 0),
(39, 2, 0),
(41, 6, 0),
(52, 9, 0),
(52, 18, 0),
(54, 12, 0),
(54, 19, 0),
(56, 11, 0),
(56, 16, 0),
(58, 10, 0),
(58, 15, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'type-cuisine', '', 0, 0),
(9, 9, 'type-cuisine', '', 0, 1),
(10, 10, 'type-cuisine', '', 0, 1),
(11, 11, 'type-cuisine', '', 0, 1),
(12, 12, 'type-cuisine', '', 0, 1),
(13, 13, 'type-cuisine', '', 0, 0),
(14, 14, 'type_cuisine', '', 0, 0),
(15, 15, 'type_cuisine', '', 0, 1),
(16, 16, 'type_cuisine', '', 0, 1),
(17, 17, 'type_cuisine', '', 0, 0),
(18, 18, 'type_cuisine', '', 0, 1),
(19, 19, 'type_cuisine', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'anthony.roux'),
(2, 1, 'first_name', 'Anthony'),
(3, 1, 'last_name', 'Roux'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"793732dbef7357d15e87c214b989ea94e9820383be03eb6f1b69d5e1627f553e\";a:4:{s:10:\"expiration\";i:1616792536;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36\";s:5:\"login\";i:1616619736;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '13'),
(18, 2, 'nickname', 'dorian.vidal'),
(19, 2, 'first_name', 'Dorian'),
(20, 2, 'last_name', 'Vidal'),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', ''),
(29, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(30, 2, 'wp_user_level', '10'),
(31, 2, 'dismissed_wp_pointers', ''),
(32, 3, 'nickname', 'annie.tran@hetic.net'),
(33, 3, 'first_name', 'Annie'),
(34, 3, 'last_name', 'Tran'),
(35, 3, 'description', ''),
(36, 3, 'rich_editing', 'true'),
(37, 3, 'syntax_highlighting', 'true'),
(38, 3, 'comment_shortcuts', 'false'),
(39, 3, 'admin_color', 'fresh'),
(40, 3, 'use_ssl', '0'),
(41, 3, 'show_admin_bar_front', 'true'),
(42, 3, 'locale', ''),
(43, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(44, 3, 'wp_user_level', '10'),
(45, 3, 'dismissed_wp_pointers', ''),
(47, 2, 'wp_dashboard_quick_press_last_post_id', '9'),
(48, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=tinymce'),
(49, 1, 'wp_user-settings-time', '1616612201'),
(50, 1, 'closedpostboxes_frenchfood', 'a:0:{}'),
(51, 1, 'metaboxhidden_frenchfood', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'roux.anthony@hetic.net', '$P$B5SNs0VcUS7yqOw0wotvOSojsQPV3d/', 'roux-anthonyhetic-net', 'roux.anthony@hetic.net', 'http://localhost:8888/forks_and_papillas/app/public', '2021-03-12 09:46:45', '', 0, 'Anthony Roux'),
(2, 'dorian.vidal@hetic.net', '$P$BcRgvoK.iq4o6o1OsO5XddyVSI6H5d.', 'dorian-vidalhetic-net', 'dorian.vidal@hetic.net', '', '2021-03-12 09:58:17', '1615563195:$P$Bq8m6zI8THR/X8BIHgXry0ZHdL8o1q1', 0, 'Dorian Vidal'),
(3, 'annie.tran@hetic.net', '$P$BOd0ggNq03MvKBhIEWiiLQSovaDN2l1', 'annie-tranhetic-net', 'annie.tran@hetic.net', '', '2021-03-12 09:59:44', '1615543184:$P$BqfHtcZmzGzDpfQqDcXwh9uTIqnVMN1', 0, 'Annie Tran');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
