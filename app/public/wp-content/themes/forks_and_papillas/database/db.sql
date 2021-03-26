-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  ven. 26 mars 2021 à 23:18
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
(22, 'posts_per_page', '50', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:126:{s:7:\"food/?$\";s:24:\"index.php?post_type=food\";s:37:\"food/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=food&feed=$matches[1]\";s:32:\"food/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=food&feed=$matches[1]\";s:24:\"food/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=food&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:32:\"food/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"food/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"food/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"food/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"food/([^/]+)/embed/?$\";s:37:\"index.php?food=$matches[1]&embed=true\";s:25:\"food/([^/]+)/trackback/?$\";s:31:\"index.php?food=$matches[1]&tb=1\";s:45:\"food/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?food=$matches[1]&feed=$matches[2]\";s:40:\"food/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?food=$matches[1]&feed=$matches[2]\";s:33:\"food/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&paged=$matches[2]\";s:40:\"food/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&cpage=$matches[2]\";s:29:\"food/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?food=$matches[1]&page=$matches[2]\";s:21:\"food/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"food/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"food/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"food/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:53:\"type_cuisine/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?type_cuisine=$matches[1]&feed=$matches[2]\";s:48:\"type_cuisine/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?type_cuisine=$matches[1]&feed=$matches[2]\";s:29:\"type_cuisine/([^/]+)/embed/?$\";s:45:\"index.php?type_cuisine=$matches[1]&embed=true\";s:41:\"type_cuisine/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?type_cuisine=$matches[1]&paged=$matches[2]\";s:23:\"type_cuisine/([^/]+)/?$\";s:34:\"index.php?type_cuisine=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
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
(108, 'cron', 'a:7:{i:1616802405;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1616838405;a:6:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1616838414;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616838416;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616880370;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"8d0b3ce3dc4b5b7343b250e206e5d2cd\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:85;}}}}i:1617055417;a:1:{s:40:\"health-check-scheduled-site-status-check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(187, 'theme_mods_forks_and_papillas', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(195, 'new_admin_email', 'roux.anthony@hetic.net', 'yes'),
(198, '_wp_suggested_policy_text_has_changed', 'changed', 'yes'),
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
(401, 'options_the_items_0_url', 'http://forkandpapillas.azurewebsites.net/type_cuisine/frenchfood/', 'no'),
(402, '_options_the_items_0_url', 'field_605920349315f', 'no'),
(403, 'options_the_items_1_label', 'Italien', 'no'),
(404, '_options_the_items_1_label', 'field_60591ffe9315d', 'no'),
(405, 'options_the_items_1_url', 'http://forkandpapillas.azurewebsites.net/type_cuisine/italianfood/', 'no'),
(406, '_options_the_items_1_url', 'field_605920349315f', 'no'),
(407, 'options_the_items_2_label', 'Hawaïenne', 'no'),
(408, '_options_the_items_2_label', 'field_60591ffe9315d', 'no'),
(409, 'options_the_items_2_url', 'http://forkandpapillas.azurewebsites.net/type_cuisine/haleiwafood/', 'no'),
(410, '_options_the_items_2_url', 'field_605920349315f', 'no'),
(411, 'options_the_items_3_label', 'Créole', 'no'),
(412, '_options_the_items_3_label', 'field_60591ffe9315d', 'no'),
(413, 'options_the_items_3_url', 'http://forkandpapillas.azurewebsites.net/type_cuisine/creolefood/', 'no'),
(414, '_options_the_items_3_url', 'field_605920349315f', 'no'),
(415, 'options_the_items_4_label', 'Vietnamien', 'no'),
(416, '_options_the_items_4_label', 'field_60591ffe9315d', 'no'),
(417, 'options_the_items_4_url', 'http://forkandpapillas.azurewebsites.net/type_cuisine/vietnamianfood/', 'no'),
(418, '_options_the_items_4_url', 'field_605920349315f', 'no'),
(419, 'options_the_items_5_label', 'Indonésien', 'no'),
(420, '_options_the_items_5_label', 'field_60591ffe9315d', 'no'),
(421, 'options_the_items_5_url', 'http://forkandpapillas.azurewebsites.net/type_cuisine/indonesianfood/', 'no'),
(422, '_options_the_items_5_url', 'field_605920349315f', 'no'),
(423, 'options_the_items', '6', 'no'),
(424, '_options_the_items', 'field_60591fcb9315c', 'no'),
(535, '_site_transient_timeout_popular_importers_5f3d3845dac17bcbe638f56e3742a832', '1616966742', 'no'),
(536, '_site_transient_popular_importers_5f3d3845dac17bcbe638f56e3742a832', 'a:2:{s:9:\"importers\";a:7:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(537, 'category_children', 'a:0:{}', 'yes'),
(541, '_transient_timeout_acf_plugin_updates', '1616968077', 'no'),
(542, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.8.12\";}}', 'no'),
(543, '_site_transient_timeout_theme_roots', '1616797078', 'no'),
(544, '_site_transient_theme_roots', 'a:4:{s:18:\"forks_and_papillas\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(546, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1616795281;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"5.7\";s:7:\"updated\";s:19:\"2021-03-19 23:51:11\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(547, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616795281;s:7:\"checked\";a:4:{s:18:\"forks_and_papillas\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(548, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616795282;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.8.12\";s:29:\"health-check/health-check.php\";s:5:\"1.4.5\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.18\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";s:43:\"wp-extra-file-types/wp-extra-file-types.php\";s:7:\"0.4.4.1\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.9.5\";s:7:\"updated\";s:19:\"2021-03-13 14:28:49\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/5.9.5/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"health-check\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.4.5\";s:7:\"updated\";s:19:\"2021-03-19 06:56:18\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/health-check/1.4.5/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"svg-support\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"2.3.18\";s:7:\"updated\";s:19:\"2020-12-21 21:34:07\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/svg-support/2.3.18/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:18:\"wordpress-importer\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"0.7\";s:7:\"updated\";s:19:\"2020-12-06 17:27:03\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/translation/plugin/wordpress-importer/0.7/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"health-check/health-check.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/health-check\";s:4:\"slug\";s:12:\"health-check\";s:6:\"plugin\";s:29:\"health-check/health-check.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/health-check/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/health-check.1.4.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/health-check/assets/icon-256x256.png?rev=1823210\";s:2:\"1x\";s:57:\"https://ps.w.org/health-check/assets/icon.svg?rev=1828244\";s:3:\"svg\";s:57:\"https://ps.w.org/health-check/assets/icon.svg?rev=1828244\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/health-check/assets/banner-1544x500.png?rev=1823210\";s:2:\"1x\";s:67:\"https://ps.w.org/health-check/assets/banner-772x250.png?rev=1823210\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.18\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.18.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"wp-extra-file-types/wp-extra-file-types.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/wp-extra-file-types\";s:4:\"slug\";s:19:\"wp-extra-file-types\";s:6:\"plugin\";s:43:\"wp-extra-file-types/wp-extra-file-types.php\";s:11:\"new_version\";s:7:\"0.4.4.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/wp-extra-file-types/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/wp-extra-file-types.0.4.4.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/wp-extra-file-types.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(556, 'type_cuisine_children', 'a:0:{}', 'yes'),
(557, 'options_logo', '260', 'no'),
(558, '_options_logo', 'field_605b8924112d4', 'no'),
(559, 'options_catch_word', 'Rejoins-nous !', 'no'),
(560, '_options_catch_word', 'field_605b8985112d5', 'no'),
(561, 'options_address', '12 rue Emile Zola, 75001 Paris', 'no'),
(562, '_options_address', 'field_605b8a76112d6', 'no'),
(563, 'options_socials_networks_0_label', 'Instagram', 'no'),
(564, '_options_socials_networks_0_label', 'field_605b8bc10a291', 'no'),
(565, 'options_socials_networks_0_url', '', 'no'),
(566, '_options_socials_networks_0_url', 'field_605b8bcc0a292', 'no'),
(567, 'options_socials_networks_0_logo', '', 'no'),
(568, '_options_socials_networks_0_logo', 'field_605b8bdb0a293', 'no'),
(569, 'options_socials_networks_1_label', 'Facebook', 'no'),
(570, '_options_socials_networks_1_label', 'field_605b8bc10a291', 'no'),
(571, 'options_socials_networks_1_url', '', 'no'),
(572, '_options_socials_networks_1_url', 'field_605b8bcc0a292', 'no'),
(573, 'options_socials_networks_1_logo', '', 'no'),
(574, '_options_socials_networks_1_logo', 'field_605b8bdb0a293', 'no'),
(575, 'options_socials_networks_2_label', 'Twitter', 'no'),
(576, '_options_socials_networks_2_label', 'field_605b8bc10a291', 'no'),
(577, 'options_socials_networks_2_url', '', 'no'),
(578, '_options_socials_networks_2_url', 'field_605b8bcc0a292', 'no'),
(579, 'options_socials_networks_2_logo', '', 'no'),
(580, '_options_socials_networks_2_logo', 'field_605b8bdb0a293', 'no'),
(581, 'options_socials_networks', '3', 'no'),
(582, '_options_socials_networks', 'field_605b8ba10a290', 'no'),
(583, 'options_phone_number', '0601801905', 'no'),
(584, '_options_phone_number', 'field_605d030e261f6', 'no'),
(585, 'options_email', 'anthony.roux93@gmail.com', 'no'),
(586, '_options_email', 'field_605d032f261f7', 'no');

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
(48, 52, '_edit_lock', '1616698307:1'),
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
(62, 58, '_edit_lock', '1616774978:1'),
(63, 58, '_edit_last', '1'),
(64, 60, '_wp_attached_file', '2021/03/IMG_42F9AE2F3575-1.jpeg'),
(65, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1242;s:6:\"height\";i:1551;s:4:\"file\";s:31:\"2021/03/IMG_42F9AE2F3575-1.jpeg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-240x300.jpeg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG_42F9AE2F3575-1-820x1024.jpeg\";s:5:\"width\";i:820;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-768x959.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:959;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"IMG_42F9AE2F3575-1-1230x1536.jpeg\";s:5:\"width\";i:1230;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-384x182.jpeg\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-146x182.jpeg\";s:5:\"width\";i:146;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:31:\"IMG_42F9AE2F3575-1-643x528.jpeg\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(66, 60, '_wp_attachment_image_alt', 'Pizza'),
(67, 58, '_thumbnail_id', '60'),
(68, 63, '_edit_lock', '1616612253:1'),
(69, 63, '_edit_last', '1'),
(70, 73, '_edit_lock', '1616795551:1'),
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
(87, 77, '_grade', 'field_605c9875fc9aa'),
(88, 78, '_edit_lock', '1616796195:1'),
(89, 78, '_edit_last', '1'),
(90, 78, 'top_restaurant', '1'),
(91, 78, '_top_restaurant', 'field_605c9846fc9a9'),
(92, 78, 'grade', '4stars'),
(93, 78, '_grade', 'field_605c9875fc9aa'),
(94, 79, 'top_restaurant', '1'),
(95, 79, '_top_restaurant', 'field_605c9846fc9a9'),
(96, 79, 'grade', '4stars'),
(97, 79, '_grade', 'field_605c9875fc9aa'),
(98, 80, '_edit_lock', '1616698581:1'),
(99, 80, '_edit_last', '1'),
(100, 80, 'top_restaurant', '0'),
(101, 80, '_top_restaurant', 'field_605c9846fc9a9'),
(102, 80, 'grade', '2stars'),
(103, 80, '_grade', 'field_605c9875fc9aa'),
(104, 81, 'top_restaurant', '0'),
(105, 81, '_top_restaurant', 'field_605c9846fc9a9'),
(106, 81, 'grade', '2stars'),
(107, 81, '_grade', 'field_605c9875fc9aa'),
(108, 82, 'top_restaurant', '1'),
(109, 82, '_top_restaurant', 'field_605c9846fc9a9'),
(110, 82, 'grade', '4stars'),
(111, 82, '_grade', 'field_605c9875fc9aa'),
(114, 14, '_edit_last', '1'),
(115, 22, '_edit_last', '1'),
(116, 60, '_wp_attachment_image_alt', 'Pizza'),
(117, 60, '_wp_attachment_image_alt', 'Pizza'),
(118, 63, '_edit_last', '1'),
(119, 73, '_edit_last', '1'),
(120, 91, '_edit_last', '1'),
(121, 93, '_edit_last', '1'),
(122, 93, 'top_restaurant', '1'),
(123, 93, '_top_restaurant', 'field_605c9846fc9a9'),
(124, 93, 'grade', '3stars'),
(125, 93, '_grade', 'field_605c9875fc9aa'),
(126, 93, '_thumbnail_id', '200'),
(127, 94, '_edit_last', '1'),
(128, 94, '_thumbnail_id', '203'),
(129, 94, 'top_restaurant', '0'),
(130, 94, '_top_restaurant', 'field_605c9846fc9a9'),
(131, 94, 'grade', '1star'),
(132, 94, '_grade', 'field_605c9875fc9aa'),
(133, 95, '_edit_last', '1'),
(134, 95, '_thumbnail_id', '196'),
(135, 95, 'top_restaurant', '0'),
(136, 95, '_top_restaurant', 'field_605c9846fc9a9'),
(137, 95, 'grade', '1star'),
(138, 95, '_grade', 'field_605c9875fc9aa'),
(139, 96, '_edit_last', '1'),
(140, 96, '_thumbnail_id', '189'),
(141, 96, 'top_restaurant', '1'),
(142, 96, '_top_restaurant', 'field_605c9846fc9a9'),
(143, 96, 'grade', '5stars'),
(144, 96, '_grade', 'field_605c9875fc9aa'),
(145, 97, '_edit_last', '1'),
(146, 97, 'top_restaurant', '1'),
(147, 97, '_top_restaurant', 'field_605c9846fc9a9'),
(148, 97, 'grade', '4stars'),
(149, 97, '_grade', 'field_605c9875fc9aa'),
(150, 98, '_edit_last', '1'),
(151, 98, 'top_restaurant', '0'),
(152, 98, '_top_restaurant', 'field_605c9846fc9a9'),
(153, 98, 'grade', '2stars'),
(154, 98, '_grade', 'field_605c9875fc9aa'),
(155, 98, '_thumbnail_id', '193'),
(156, 99, '_edit_last', '1'),
(157, 99, 'top_restaurant', '0'),
(158, 99, '_top_restaurant', 'field_605c9846fc9a9'),
(159, 99, 'grade', '3stars'),
(160, 99, '_grade', 'field_605c9875fc9aa'),
(161, 100, '_edit_last', '1'),
(162, 100, '_thumbnail_id', '143'),
(163, 100, 'top_restaurant', '0'),
(164, 100, '_top_restaurant', 'field_605c9846fc9a9'),
(165, 100, 'grade', '1star'),
(166, 100, '_grade', 'field_605c9875fc9aa'),
(167, 101, '_edit_last', '1'),
(168, 101, '_thumbnail_id', '140'),
(169, 101, 'top_restaurant', '0'),
(170, 101, '_top_restaurant', 'field_605c9846fc9a9'),
(171, 101, 'grade', '1star'),
(172, 101, '_grade', 'field_605c9875fc9aa'),
(173, 102, '_edit_last', '1'),
(174, 102, '_thumbnail_id', '137'),
(175, 102, 'top_restaurant', '1'),
(176, 102, '_top_restaurant', 'field_605c9846fc9a9'),
(177, 102, 'grade', '5stars'),
(178, 102, '_grade', 'field_605c9875fc9aa'),
(179, 103, '_edit_last', '1'),
(180, 103, '_thumbnail_id', '146'),
(181, 103, 'top_restaurant', '0'),
(182, 103, '_top_restaurant', 'field_605c9846fc9a9'),
(183, 103, 'grade', '1star'),
(184, 103, '_grade', 'field_605c9875fc9aa'),
(185, 104, '_edit_last', '1'),
(186, 104, '_thumbnail_id', '149'),
(187, 104, 'top_restaurant', '0'),
(188, 104, '_top_restaurant', 'field_605c9846fc9a9'),
(189, 104, 'grade', '1star'),
(190, 104, '_grade', 'field_605c9875fc9aa'),
(191, 105, '_edit_last', '1'),
(192, 105, '_thumbnail_id', '155'),
(193, 105, 'top_restaurant', '0'),
(194, 105, '_top_restaurant', 'field_605c9846fc9a9'),
(195, 105, 'grade', '1star'),
(196, 105, '_grade', 'field_605c9875fc9aa'),
(197, 106, '_edit_last', '1'),
(198, 106, '_thumbnail_id', '151'),
(199, 106, 'top_restaurant', '0'),
(200, 106, '_top_restaurant', 'field_605c9846fc9a9'),
(201, 106, 'grade', '1star'),
(202, 106, '_grade', 'field_605c9875fc9aa'),
(203, 107, '_edit_last', '1'),
(204, 107, '_thumbnail_id', '159'),
(205, 107, 'top_restaurant', '0'),
(206, 107, '_top_restaurant', 'field_605c9846fc9a9'),
(207, 107, 'grade', '1star'),
(208, 107, '_grade', 'field_605c9875fc9aa'),
(209, 109, '_edit_last', '1'),
(210, 109, '_thumbnail_id', '110'),
(211, 109, 'top_restaurant', '0'),
(212, 109, '_top_restaurant', 'field_605c9846fc9a9'),
(213, 109, 'grade', '1star'),
(214, 109, '_grade', 'field_605c9875fc9aa'),
(215, 112, '_edit_last', '1'),
(216, 112, '_thumbnail_id', '165'),
(217, 112, 'top_restaurant', '1'),
(218, 112, '_top_restaurant', 'field_605c9846fc9a9'),
(219, 112, 'grade', '1star'),
(220, 112, '_grade', 'field_605c9875fc9aa'),
(221, 115, '_edit_last', '1'),
(222, 115, '_thumbnail_id', '166'),
(223, 115, 'top_restaurant', '0'),
(224, 115, '_top_restaurant', 'field_605c9846fc9a9'),
(225, 115, 'grade', '1star'),
(226, 115, '_grade', 'field_605c9875fc9aa'),
(227, 118, '_edit_last', '1'),
(228, 118, '_thumbnail_id', '171'),
(229, 118, 'top_restaurant', '0'),
(230, 118, '_top_restaurant', 'field_605c9846fc9a9'),
(231, 118, 'grade', '1star'),
(232, 118, '_grade', 'field_605c9875fc9aa'),
(233, 121, '_edit_last', '1'),
(234, 121, '_thumbnail_id', '175'),
(235, 121, 'top_restaurant', '0'),
(236, 121, '_top_restaurant', 'field_605c9846fc9a9'),
(237, 121, 'grade', '1star'),
(238, 121, '_grade', 'field_605c9875fc9aa'),
(239, 124, '_edit_last', '1'),
(240, 124, '_thumbnail_id', '178'),
(241, 124, 'top_restaurant', '1'),
(242, 124, '_top_restaurant', 'field_605c9846fc9a9'),
(243, 124, 'grade', '1star'),
(244, 124, '_grade', 'field_605c9875fc9aa'),
(245, 127, '_edit_last', '1'),
(246, 127, '_thumbnail_id', '186'),
(247, 127, 'top_restaurant', '0'),
(248, 127, '_top_restaurant', 'field_605c9846fc9a9'),
(249, 127, 'grade', '1star'),
(250, 127, '_grade', 'field_605c9875fc9aa'),
(251, 130, '_edit_last', '1'),
(252, 130, '_thumbnail_id', '181'),
(253, 130, 'top_restaurant', '0'),
(254, 130, '_top_restaurant', 'field_605c9846fc9a9'),
(255, 130, 'grade', '1star'),
(256, 130, '_grade', 'field_605c9875fc9aa'),
(257, 134, '_edit_last', '1'),
(258, 134, '_thumbnail_id', '183'),
(259, 134, 'top_restaurant', '1'),
(260, 134, '_top_restaurant', 'field_605c9846fc9a9'),
(261, 134, 'grade', '1star'),
(262, 134, '_grade', 'field_605c9875fc9aa'),
(263, 161, '_edit_last', '1'),
(264, 161, '_thumbnail_id', '162'),
(265, 161, 'top_restaurant', '0'),
(266, 161, '_top_restaurant', 'field_605c9846fc9a9'),
(267, 161, 'grade', '1star'),
(268, 161, '_grade', 'field_605c9875fc9aa'),
(269, 205, '_edit_last', '1'),
(270, 205, '_thumbnail_id', '206'),
(271, 205, 'top_restaurant', '0'),
(272, 205, '_top_restaurant', 'field_605c9846fc9a9'),
(273, 205, 'grade', '1star'),
(274, 205, '_grade', 'field_605c9875fc9aa'),
(275, 209, '_edit_last', '1'),
(276, 209, '_thumbnail_id', '210'),
(277, 209, 'top_restaurant', '0'),
(278, 209, '_top_restaurant', 'field_605c9846fc9a9'),
(279, 209, 'grade', '1star'),
(280, 209, '_grade', 'field_605c9875fc9aa'),
(281, 212, '_edit_last', '1'),
(282, 212, '_thumbnail_id', '213'),
(283, 212, 'top_restaurant', '0'),
(284, 212, '_top_restaurant', 'field_605c9846fc9a9'),
(285, 212, 'grade', '1star'),
(286, 212, '_grade', 'field_605c9875fc9aa'),
(287, 215, '_edit_last', '1'),
(288, 215, '_thumbnail_id', '216'),
(289, 215, 'top_restaurant', '0'),
(290, 215, '_top_restaurant', 'field_605c9846fc9a9'),
(291, 215, 'grade', '1star'),
(292, 215, '_grade', 'field_605c9875fc9aa'),
(293, 218, '_edit_last', '1'),
(294, 218, '_thumbnail_id', '219'),
(295, 218, 'top_restaurant', '0'),
(296, 218, '_top_restaurant', 'field_605c9846fc9a9'),
(297, 218, 'grade', '1star'),
(298, 218, '_grade', 'field_605c9875fc9aa'),
(299, 221, '_edit_last', '1'),
(300, 221, '_thumbnail_id', '222'),
(301, 221, 'top_restaurant', '0'),
(302, 221, '_top_restaurant', 'field_605c9846fc9a9'),
(303, 221, 'grade', '1star'),
(304, 221, '_grade', 'field_605c9875fc9aa'),
(305, 225, '_edit_last', '1'),
(306, 225, '_thumbnail_id', '253'),
(307, 225, 'top_restaurant', '0'),
(308, 225, '_top_restaurant', 'field_605c9846fc9a9'),
(309, 225, 'grade', '1star'),
(310, 225, '_grade', 'field_605c9875fc9aa'),
(311, 230, '_edit_last', '1'),
(313, 230, 'top_restaurant', '0'),
(314, 230, '_top_restaurant', 'field_605c9846fc9a9'),
(315, 230, 'grade', '1star'),
(316, 230, '_grade', 'field_605c9875fc9aa'),
(317, 233, '_edit_last', '1'),
(319, 233, 'top_restaurant', '0'),
(320, 233, '_top_restaurant', 'field_605c9846fc9a9'),
(321, 233, 'grade', '1star'),
(322, 233, '_grade', 'field_605c9875fc9aa'),
(323, 236, '_edit_last', '1'),
(325, 236, 'top_restaurant', '0'),
(326, 236, '_top_restaurant', 'field_605c9846fc9a9'),
(327, 236, 'grade', '1star'),
(328, 236, '_grade', 'field_605c9875fc9aa'),
(329, 239, '_edit_last', '1'),
(330, 239, '_thumbnail_id', '240'),
(331, 239, 'top_restaurant', '0'),
(332, 239, '_top_restaurant', 'field_605c9846fc9a9'),
(333, 239, 'grade', '1star'),
(334, 239, '_grade', 'field_605c9875fc9aa'),
(335, 243, '_edit_last', '1'),
(336, 243, '_thumbnail_id', '301'),
(337, 243, 'top_restaurant', '0'),
(338, 243, '_top_restaurant', 'field_605c9846fc9a9'),
(339, 243, 'grade', '1star'),
(340, 243, '_grade', 'field_605c9875fc9aa'),
(341, 1, '_wp_trash_meta_status', 'publish'),
(342, 1, '_wp_trash_meta_time', '1616530791'),
(343, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(344, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(345, 2, '_wp_page_template', 'default'),
(346, 3, '_wp_page_template', 'default'),
(347, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:5171:\"<h2>Qui sommes-nous ?</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:8888/forks_and_papillas/app/public.</p><h2>Commentaires</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h2>Médias</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><h2>Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><h2>Contenu embarqué depuis d’autres sites</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h2>Utilisation et transmission de vos données personnelles</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><h2>Durées de stockage de vos données</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\";s:5:\"added\";i:1615562168;}'),
(348, 6, '_edit_last', '1'),
(349, 36, '_edit_last', '1'),
(350, 36, '_wp_trash_meta_status', 'publish'),
(351, 36, '_wp_trash_meta_time', '1616535847'),
(352, 36, '_wp_desired_post_slug', 'article-1'),
(353, 39, '_edit_last', '1'),
(354, 39, '_wp_trash_meta_status', 'publish'),
(355, 39, '_wp_trash_meta_time', '1616535847'),
(356, 39, '_wp_desired_post_slug', 'chez-dorian'),
(357, 41, '_edit_last', '1'),
(358, 41, '_wp_trash_meta_status', 'publish'),
(359, 41, '_wp_trash_meta_time', '1616535847'),
(360, 41, '_wp_desired_post_slug', 'chez-annie'),
(361, 247, '_edit_last', '1'),
(363, 247, 'top_restaurant', '0'),
(364, 247, '_top_restaurant', 'field_605c9846fc9a9'),
(365, 247, 'grade', '1star'),
(366, 247, '_grade', 'field_605c9875fc9aa'),
(367, 236, '_edit_lock', '1616800434:1'),
(368, 253, '_wp_attached_file', '2021/03/Comment-faire-une-pizza-reine.jpg'),
(369, 253, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:41:\"2021/03/Comment-faire-une-pizza-reine.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"Comment-faire-une-pizza-reine-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"Comment-faire-une-pizza-reine-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"Comment-faire-une-pizza-reine-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:41:\"Comment-faire-une-pizza-reine-384x182.jpg\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:41:\"Comment-faire-une-pizza-reine-182x182.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:41:\"Comment-faire-une-pizza-reine-643x528.jpg\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 78, '_thumbnail_id', '253'),
(371, 78, 'card_address', '18 rue de Paris, 75001 Paris'),
(372, 78, '_card_address', 'field_605e53abaafe2'),
(373, 78, 'card_phone', '0601890909'),
(374, 78, '_card_phone', 'field_605e56bf02887'),
(375, 78, 'card_advantages_0_card_advantage', 'Végétarien'),
(376, 78, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(377, 78, 'card_advantages_1_card_advantage', 'Pizza au feu de bois'),
(378, 78, '_card_advantages_1_card_advantage', 'field_605e53ecaafe4'),
(379, 78, 'card_advantages_2_card_advantage', 'Livraison'),
(380, 78, '_card_advantages_2_card_advantage', 'field_605e53ecaafe4'),
(381, 78, 'card_advantages_3_card_advantage', 'Terrasse'),
(382, 78, '_card_advantages_3_card_advantage', 'field_605e53ecaafe4'),
(383, 78, 'card_advantages', '4'),
(384, 78, '_card_advantages', 'field_605e53cfaafe3'),
(385, 78, 'card_bon_appetit', 'Buon appetito !'),
(386, 78, '_card_bon_appetit', 'field_605e5572aafe5'),
(387, 254, 'top_restaurant', '1'),
(388, 254, '_top_restaurant', 'field_605c9846fc9a9'),
(389, 254, 'grade', '4stars'),
(390, 254, '_grade', 'field_605c9875fc9aa'),
(391, 254, 'card_address', '18 rue de Paris, 75001 Paris'),
(392, 254, '_card_address', 'field_605e53abaafe2'),
(393, 254, 'card_phone', '0601890909'),
(394, 254, '_card_phone', 'field_605e56bf02887'),
(395, 254, 'card_advantages_0_card_advantage', 'Végétarien'),
(396, 254, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(397, 254, 'card_advantages_1_card_advantage', 'Pizza au feu de bois'),
(398, 254, '_card_advantages_1_card_advantage', 'field_605e53ecaafe4'),
(399, 254, 'card_advantages_2_card_advantage', 'Livraison'),
(400, 254, '_card_advantages_2_card_advantage', 'field_605e53ecaafe4'),
(401, 254, 'card_advantages_3_card_advantage', 'Terrasse'),
(402, 254, '_card_advantages_3_card_advantage', 'field_605e53ecaafe4'),
(403, 254, 'card_advantages', '4'),
(404, 254, '_card_advantages', 'field_605e53cfaafe3'),
(405, 254, 'card_bon_appetit', 'Buon appetito !'),
(406, 254, '_card_bon_appetit', 'field_605e5572aafe5'),
(407, 218, '_edit_lock', '1616796437:1'),
(408, 218, 'card_address', '18 rue de Paris, 75001 Paris'),
(409, 218, '_card_address', 'field_605e53abaafe2'),
(410, 218, 'card_phone', '0601890909'),
(411, 218, '_card_phone', 'field_605e56bf02887'),
(412, 218, 'card_advantages_0_card_advantage', 'Végétarien'),
(413, 218, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(414, 218, 'card_advantages', '3'),
(415, 218, '_card_advantages', 'field_605e53cfaafe3'),
(416, 218, 'card_bon_appetit', 'Bon appétit !'),
(417, 218, '_card_bon_appetit', 'field_605e5572aafe5'),
(418, 255, 'top_restaurant', '0'),
(419, 255, '_top_restaurant', 'field_605c9846fc9a9'),
(420, 255, 'grade', '1star'),
(421, 255, '_grade', 'field_605c9875fc9aa'),
(422, 255, 'card_address', '18 rue de Paris, 75001 Paris'),
(423, 255, '_card_address', 'field_605e53abaafe2'),
(424, 255, 'card_phone', '0601890909'),
(425, 255, '_card_phone', 'field_605e56bf02887'),
(426, 255, 'card_advantages_0_card_advantage', 'Végétarien'),
(427, 255, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(428, 255, 'card_advantages', '1'),
(429, 255, '_card_advantages', 'field_605e53cfaafe3'),
(430, 255, 'card_bon_appetit', 'Bon appétit !'),
(431, 255, '_card_bon_appetit', 'field_605e5572aafe5'),
(432, 218, 'card_advantages_1_card_advantage', 'Terrasse'),
(433, 218, '_card_advantages_1_card_advantage', 'field_605e53ecaafe4'),
(434, 218, 'card_advantages_2_card_advantage', 'Uber Eats'),
(435, 218, '_card_advantages_2_card_advantage', 'field_605e53ecaafe4'),
(436, 256, 'top_restaurant', '0'),
(437, 256, '_top_restaurant', 'field_605c9846fc9a9'),
(438, 256, 'grade', '1star'),
(439, 256, '_grade', 'field_605c9875fc9aa'),
(440, 256, 'card_address', '18 rue de Paris, 75001 Paris'),
(441, 256, '_card_address', 'field_605e53abaafe2'),
(442, 256, 'card_phone', '0601890909'),
(443, 256, '_card_phone', 'field_605e56bf02887'),
(444, 256, 'card_advantages_0_card_advantage', 'Végétarien'),
(445, 256, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(446, 256, 'card_advantages', '3'),
(447, 256, '_card_advantages', 'field_605e53cfaafe3'),
(448, 256, 'card_bon_appetit', 'Bon appétit !'),
(449, 256, '_card_bon_appetit', 'field_605e5572aafe5'),
(450, 256, 'card_advantages_1_card_advantage', 'Terrasse'),
(451, 256, '_card_advantages_1_card_advantage', 'field_605e53ecaafe4'),
(452, 256, 'card_advantages_2_card_advantage', 'Uber Eats'),
(453, 256, '_card_advantages_2_card_advantage', 'field_605e53ecaafe4'),
(454, 247, '_edit_lock', '1616798680:1'),
(455, 247, 'card_address', '18 rue de Paris, 75001 Paris'),
(456, 247, '_card_address', 'field_605e53abaafe2'),
(457, 247, 'card_phone', '0601890909'),
(458, 247, '_card_phone', 'field_605e56bf02887'),
(459, 247, 'card_advantages_0_card_advantage', 'Végétarien'),
(460, 247, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(461, 247, 'card_advantages', '1'),
(462, 247, '_card_advantages', 'field_605e53cfaafe3'),
(463, 247, 'card_bon_appetit', 'Bon appétit !'),
(464, 247, '_card_bon_appetit', 'field_605e5572aafe5'),
(465, 257, 'top_restaurant', '0'),
(466, 257, '_top_restaurant', 'field_605c9846fc9a9'),
(467, 257, 'grade', '1star'),
(468, 257, '_grade', 'field_605c9875fc9aa'),
(469, 257, 'card_address', '18 rue de Paris, 75001 Paris'),
(470, 257, '_card_address', 'field_605e53abaafe2'),
(471, 257, 'card_phone', '0601890909'),
(472, 257, '_card_phone', 'field_605e56bf02887'),
(473, 257, 'card_advantages_0_card_advantage', 'Végétarien'),
(474, 257, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(475, 257, 'card_advantages', '1'),
(476, 257, '_card_advantages', 'field_605e53cfaafe3'),
(477, 257, 'card_bon_appetit', 'Bon appétit !'),
(478, 257, '_card_bon_appetit', 'field_605e5572aafe5'),
(479, 97, '_wp_trash_meta_status', 'publish'),
(480, 97, '_wp_trash_meta_time', '1616797002'),
(481, 97, '_wp_desired_post_slug', 'guppo-mimmo-2'),
(482, 243, '_edit_lock', '1616800335:1'),
(483, 243, 'card_address', '18 rue de Paris, 75001 Paris'),
(484, 243, '_card_address', 'field_605e53abaafe2'),
(485, 243, 'card_phone', '0601890909'),
(486, 243, '_card_phone', 'field_605e56bf02887'),
(487, 243, 'card_advantages_0_card_advantage', 'Végétarien'),
(488, 243, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(489, 243, 'card_advantages', '1'),
(490, 243, '_card_advantages', 'field_605e53cfaafe3'),
(491, 243, 'card_bon_appetit', 'Bon appétit !'),
(492, 243, '_card_bon_appetit', 'field_605e5572aafe5'),
(493, 259, 'top_restaurant', '0'),
(494, 259, '_top_restaurant', 'field_605c9846fc9a9'),
(495, 259, 'grade', '1star'),
(496, 259, '_grade', 'field_605c9875fc9aa'),
(497, 259, 'card_address', '18 rue de Paris, 75001 Paris'),
(498, 259, '_card_address', 'field_605e53abaafe2'),
(499, 259, 'card_phone', '0601890909'),
(500, 259, '_card_phone', 'field_605e56bf02887'),
(501, 259, 'card_advantages_0_card_advantage', 'Végétarien'),
(502, 259, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(503, 259, 'card_advantages', '1'),
(504, 259, '_card_advantages', 'field_605e53cfaafe3'),
(505, 259, 'card_bon_appetit', 'Bon appétit !'),
(506, 259, '_card_bon_appetit', 'field_605e5572aafe5'),
(507, 260, '_wp_attached_file', '2021/03/logoo.png'),
(508, 260, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:338;s:6:\"height\";i:106;s:4:\"file\";s:17:\"2021/03/logoo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logoo-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logoo-150x106.png\";s:5:\"width\";i:150;s:6:\"height\";i:106;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(509, 239, '_edit_lock', '1616798289:1'),
(510, 239, 'card_address', '18 rue de Paris, 75001 Paris'),
(511, 239, '_card_address', 'field_605e53abaafe2'),
(512, 239, 'card_phone', '0601890909'),
(513, 239, '_card_phone', 'field_605e56bf02887'),
(514, 239, 'card_advantages_0_card_advantage', 'Végétarien'),
(515, 239, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(516, 239, 'card_advantages', '1'),
(517, 239, '_card_advantages', 'field_605e53cfaafe3'),
(518, 239, 'card_bon_appetit', 'Bon appétit !'),
(519, 239, '_card_bon_appetit', 'field_605e5572aafe5'),
(520, 261, 'top_restaurant', '0'),
(521, 261, '_top_restaurant', 'field_605c9846fc9a9'),
(522, 261, 'grade', '1star'),
(523, 261, '_grade', 'field_605c9875fc9aa'),
(524, 261, 'card_address', '18 rue de Paris, 75001 Paris'),
(525, 261, '_card_address', 'field_605e53abaafe2'),
(526, 261, 'card_phone', '0601890909'),
(527, 261, '_card_phone', 'field_605e56bf02887'),
(528, 261, 'card_advantages_0_card_advantage', 'Végétarien'),
(529, 261, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(530, 261, 'card_advantages', '1'),
(531, 261, '_card_advantages', 'field_605e53cfaafe3'),
(532, 261, 'card_bon_appetit', 'Bon appétit !'),
(533, 261, '_card_bon_appetit', 'field_605e5572aafe5'),
(534, 99, '_edit_lock', '1616798877:1'),
(535, 99, 'card_address', '18 rue de Paris, 75001 Paris'),
(536, 99, '_card_address', 'field_605e53abaafe2'),
(537, 99, 'card_phone', '0601890909'),
(538, 99, '_card_phone', 'field_605e56bf02887'),
(539, 99, 'card_advantages_0_card_advantage', 'Végétarien'),
(540, 99, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(541, 99, 'card_advantages', '1'),
(542, 99, '_card_advantages', 'field_605e53cfaafe3'),
(543, 99, 'card_bon_appetit', 'Bon appétit !'),
(544, 99, '_card_bon_appetit', 'field_605e5572aafe5'),
(545, 262, 'top_restaurant', '0'),
(546, 262, '_top_restaurant', 'field_605c9846fc9a9'),
(547, 262, 'grade', '3stars'),
(548, 262, '_grade', 'field_605c9875fc9aa'),
(549, 262, 'card_address', '18 rue de Paris, 75001 Paris'),
(550, 262, '_card_address', 'field_605e53abaafe2'),
(551, 262, 'card_phone', '0601890909'),
(552, 262, '_card_phone', 'field_605e56bf02887'),
(553, 262, 'card_advantages_0_card_advantage', 'Végétarien'),
(554, 262, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(555, 262, 'card_advantages', '1'),
(556, 262, '_card_advantages', 'field_605e53cfaafe3'),
(557, 262, 'card_bon_appetit', 'Bon appétit !'),
(558, 262, '_card_bon_appetit', 'field_605e5572aafe5'),
(559, 225, '_edit_lock', '1616800015:1'),
(560, 225, 'card_address', '18 rue de Paris, 75001 Paris'),
(561, 225, '_card_address', 'field_605e53abaafe2'),
(562, 225, 'card_phone', '0601890909'),
(563, 225, '_card_phone', 'field_605e56bf02887'),
(564, 225, 'card_advantages_0_card_advantage', 'Végétarien'),
(565, 225, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(566, 225, 'card_advantages', '1'),
(567, 225, '_card_advantages', 'field_605e53cfaafe3'),
(568, 225, 'card_bon_appetit', 'Bon appétit !'),
(569, 225, '_card_bon_appetit', 'field_605e5572aafe5'),
(570, 263, 'top_restaurant', '0'),
(571, 263, '_top_restaurant', 'field_605c9846fc9a9'),
(572, 263, 'grade', '1star'),
(573, 263, '_grade', 'field_605c9875fc9aa'),
(574, 263, 'card_address', '18 rue de Paris, 75001 Paris'),
(575, 263, '_card_address', 'field_605e53abaafe2'),
(576, 263, 'card_phone', '0601890909'),
(577, 263, '_card_phone', 'field_605e56bf02887'),
(578, 263, 'card_advantages_0_card_advantage', 'Végétarien'),
(579, 263, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(580, 263, 'card_advantages', '1'),
(581, 263, '_card_advantages', 'field_605e53cfaafe3'),
(582, 263, 'card_bon_appetit', 'Bon appétit !'),
(583, 263, '_card_bon_appetit', 'field_605e5572aafe5'),
(584, 264, '_wp_attached_file', '2021/03/auberge-1.png'),
(585, 264, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:21:\"2021/03/auberge-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"auberge-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"auberge-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:21:\"auberge-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:21:\"auberge-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:21:\"auberge-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(586, 265, '_wp_attached_file', '2021/03/Bandar-1.png'),
(587, 265, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:20:\"2021/03/Bandar-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Bandar-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Bandar-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:20:\"Bandar-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:20:\"Bandar-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:20:\"Bandar-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(588, 266, '_wp_attached_file', '2021/03/Beautika-1.png'),
(589, 266, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:22:\"2021/03/Beautika-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Beautika-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Beautika-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:22:\"Beautika-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:22:\"Beautika-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:22:\"Beautika-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(590, 267, '_wp_attached_file', '2021/03/bigshave-1.png'),
(591, 267, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:756;s:4:\"file\";s:22:\"2021/03/bigshave-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"bigshave-1-300x277.png\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"bigshave-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"bigshave-1-768x708.png\";s:5:\"width\";i:768;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:22:\"bigshave-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:22:\"bigshave-1-197x182.png\";s:5:\"width\";i:197;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:22:\"bigshave-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(592, 268, '_wp_attached_file', '2021/03/bunbohue-1.png'),
(593, 268, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:22:\"2021/03/bunbohue-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"bunbohue-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"bunbohue-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:22:\"bunbohue-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:22:\"bunbohue-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:22:\"bunbohue-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(594, 269, '_wp_attached_file', '2021/03/chantecler-1.png'),
(595, 269, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:24:\"2021/03/chantecler-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"chantecler-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"chantecler-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:24:\"chantecler-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:24:\"chantecler-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:24:\"chantecler-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(596, 270, '_wp_attached_file', '2021/03/cipassoitalia-1.png'),
(597, 270, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:27:\"2021/03/cipassoitalia-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cipassoitalia-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cipassoitalia-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:27:\"cipassoitalia-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:27:\"cipassoitalia-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:27:\"cipassoitalia-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(598, 271, '_wp_attached_file', '2021/03/DCP-1.png'),
(599, 271, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:17:\"2021/03/DCP-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"DCP-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"DCP-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:17:\"DCP-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:17:\"DCP-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:17:\"DCP-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(600, 272, '_wp_attached_file', '2021/03/enotecaartisti-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(601, 272, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:28:\"2021/03/enotecaartisti-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"enotecaartisti-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"enotecaartisti-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:28:\"enotecaartisti-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:28:\"enotecaartisti-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:28:\"enotecaartisti-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(602, 273, '_wp_attached_file', '2021/03/franceetfushia-1.png'),
(603, 273, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:28:\"2021/03/franceetfushia-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"franceetfushia-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"franceetfushia-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:28:\"franceetfushia-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:28:\"franceetfushia-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:28:\"franceetfushia-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(604, 274, '_wp_attached_file', '2021/03/ga-1.png'),
(605, 274, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:756;s:4:\"file\";s:16:\"2021/03/ga-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ga-1-300x277.png\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ga-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"ga-1-768x708.png\";s:5:\"width\";i:768;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:16:\"ga-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:16:\"ga-1-197x182.png\";s:5:\"width\";i:197;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:16:\"ga-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(606, 275, '_wp_attached_file', '2021/03/grill-1.png'),
(607, 275, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:756;s:4:\"file\";s:19:\"2021/03/grill-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"grill-1-300x277.png\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"grill-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"grill-1-768x708.png\";s:5:\"width\";i:768;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:19:\"grill-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:19:\"grill-1-197x182.png\";s:5:\"width\";i:197;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:19:\"grill-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(608, 276, '_wp_attached_file', '2021/03/henshin-1.png'),
(609, 276, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:21:\"2021/03/henshin-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"henshin-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"henshin-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:21:\"henshin-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:21:\"henshin-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:21:\"henshin-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(610, 277, '_wp_attached_file', '2021/03/hero_dktp-1.png'),
(611, 277, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1018;s:6:\"height\";i:786;s:4:\"file\";s:23:\"2021/03/hero_dktp-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"hero_dktp-1-300x232.png\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"hero_dktp-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"hero_dktp-1-768x593.png\";s:5:\"width\";i:768;s:6:\"height\";i:593;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:23:\"hero_dktp-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:23:\"hero_dktp-1-236x182.png\";s:5:\"width\";i:236;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:23:\"hero_dktp-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(612, 278, '_wp_attached_file', '2021/03/hero_mbl-1.png'),
(613, 278, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:368;s:6:\"height\";i:478;s:4:\"file\";s:22:\"2021/03/hero_mbl-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"hero_mbl-1-231x300.png\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"hero_mbl-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:22:\"hero_mbl-1-368x182.png\";s:5:\"width\";i:368;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:22:\"hero_mbl-1-140x182.png\";s:5:\"width\";i:140;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(614, 279, '_wp_attached_file', '2021/03/hight-1.png'),
(615, 279, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:756;s:4:\"file\";s:19:\"2021/03/hight-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"hight-1-300x277.png\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"hight-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"hight-1-768x708.png\";s:5:\"width\";i:768;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:19:\"hight-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:19:\"hight-1-197x182.png\";s:5:\"width\";i:197;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:19:\"hight-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(616, 280, '_wp_attached_file', '2021/03/hue-1.png'),
(617, 280, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:756;s:4:\"file\";s:17:\"2021/03/hue-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hue-1-300x277.png\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hue-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"hue-1-768x708.png\";s:5:\"width\";i:768;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:17:\"hue-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:17:\"hue-1-197x182.png\";s:5:\"width\";i:197;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:17:\"hue-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(618, 281, '_wp_attached_file', '2021/03/immagine-1.png'),
(619, 281, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:22:\"2021/03/immagine-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"immagine-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"immagine-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:22:\"immagine-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:22:\"immagine-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:22:\"immagine-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(620, 282, '_wp_attached_file', '2021/03/jacques-faussat-1.png'),
(621, 282, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:29:\"2021/03/jacques-faussat-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"jacques-faussat-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"jacques-faussat-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:29:\"jacques-faussat-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:29:\"jacques-faussat-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:29:\"jacques-faussat-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(622, 283, '_wp_attached_file', '2021/03/ko-1.png'),
(623, 283, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:756;s:4:\"file\";s:16:\"2021/03/ko-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ko-1-300x277.png\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ko-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"ko-1-768x708.png\";s:5:\"width\";i:768;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:16:\"ko-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:16:\"ko-1-197x182.png\";s:5:\"width\";i:197;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:16:\"ko-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(624, 284, '_wp_attached_file', '2021/03/langosteria-1.png'),
(625, 284, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:25:\"2021/03/langosteria-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"langosteria-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"langosteria-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:25:\"langosteria-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:25:\"langosteria-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:25:\"langosteria-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(626, 285, '_wp_attached_file', '2021/03/lemaoubye-1.png'),
(627, 285, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:23:\"2021/03/lemaoubye-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"lemaoubye-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"lemaoubye-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:23:\"lemaoubye-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:23:\"lemaoubye-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:23:\"lemaoubye-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(628, 286, '_wp_attached_file', '2021/03/lepointdevue-1.png'),
(629, 286, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:26:\"2021/03/lepointdevue-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"lepointdevue-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"lepointdevue-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:26:\"lepointdevue-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:26:\"lepointdevue-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:26:\"lepointdevue-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(630, 287, '_wp_attached_file', '2021/03/LesPetitsParisiens-1.png'),
(631, 287, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:32:\"2021/03/LesPetitsParisiens-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"LesPetitsParisiens-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"LesPetitsParisiens-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:32:\"LesPetitsParisiens-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:32:\"LesPetitsParisiens-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:32:\"LesPetitsParisiens-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(632, 288, '_wp_attached_file', '2021/03/mandoline-1.png'),
(633, 288, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:23:\"2021/03/mandoline-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"mandoline-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"mandoline-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:23:\"mandoline-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:23:\"mandoline-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:23:\"mandoline-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(634, 289, '_wp_attached_file', '2021/03/logo-3.png'),
(635, 289, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:338;s:6:\"height\";i:106;s:4:\"file\";s:18:\"2021/03/logo-3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo-3-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-3-150x106.png\";s:5:\"width\";i:150;s:6:\"height\";i:106;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(636, 290, '_wp_attached_file', '2021/03/logo-2-1.png'),
(637, 290, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:338;s:6:\"height\";i:106;s:4:\"file\";s:20:\"2021/03/logo-2-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"logo-2-1-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-2-1-150x106.png\";s:5:\"width\";i:150;s:6:\"height\";i:106;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(638, 291, '_wp_attached_file', '2021/03/logo-1-1.png'),
(639, 291, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:338;s:6:\"height\";i:106;s:4:\"file\";s:20:\"2021/03/logo-1-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"logo-1-1-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-1-1-150x106.png\";s:5:\"width\";i:150;s:6:\"height\";i:106;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(640, 292, '_wp_attached_file', '2021/03/marmite-1.png'),
(641, 292, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:21:\"2021/03/marmite-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"marmite-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"marmite-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:21:\"marmite-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:21:\"marmite-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:21:\"marmite-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(642, 293, '_wp_attached_file', '2021/03/marziali-1.png'),
(643, 293, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:22:\"2021/03/marziali-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"marziali-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"marziali-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:22:\"marziali-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:22:\"marziali-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:22:\"marziali-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(644, 294, '_wp_attached_file', '2021/03/pachi-1.png'),
(645, 294, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:19:\"2021/03/pachi-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"pachi-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"pachi-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:19:\"pachi-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:19:\"pachi-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:19:\"pachi-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(646, 295, '_wp_attached_file', '2021/03/papillion-1.png'),
(647, 295, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:23:\"2021/03/papillion-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"papillion-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"papillion-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:23:\"papillion-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:23:\"papillion-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:23:\"papillion-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(648, 296, '_wp_attached_file', '2021/03/pho-1.png'),
(649, 296, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:17:\"2021/03/pho-1.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pho-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"pho-1-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pho-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"pho-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"pho-1-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:17:\"pho-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:17:\"pho-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:17:\"pho-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(650, 297, '_wp_attached_file', '2021/03/quanan-1.png'),
(651, 297, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:20:\"2021/03/quanan-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"quanan-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"quanan-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:20:\"quanan-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:20:\"quanan-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:20:\"quanan-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(652, 298, '_wp_attached_file', '2021/03/Rectangle-31-1.png'),
(653, 298, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1018;s:6:\"height\";i:786;s:4:\"file\";s:26:\"2021/03/Rectangle-31-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Rectangle-31-1-300x232.png\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Rectangle-31-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Rectangle-31-1-768x593.png\";s:5:\"width\";i:768;s:6:\"height\";i:593;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:26:\"Rectangle-31-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:26:\"Rectangle-31-1-236x182.png\";s:5:\"width\";i:236;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:26:\"Rectangle-31-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(654, 299, '_wp_attached_file', '2021/03/refletdesiles-1.png'),
(655, 299, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:27:\"2021/03/refletdesiles-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"refletdesiles-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"refletdesiles-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:27:\"refletdesiles-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:27:\"refletdesiles-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:27:\"refletdesiles-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(656, 300, '_wp_attached_file', '2021/03/sate-1.png'),
(657, 300, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:18:\"2021/03/sate-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"sate-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"sate-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:18:\"sate-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:18:\"sate-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:18:\"sate-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(658, 301, '_wp_attached_file', '2021/03/skyl-1.png'),
(659, 301, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:18:\"2021/03/skyl-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"skyl-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"skyl-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:18:\"skyl-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:18:\"skyl-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:18:\"skyl-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(660, 302, '_wp_attached_file', '2021/03/sun-1.png'),
(661, 302, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:756;s:4:\"file\";s:17:\"2021/03/sun-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sun-1-300x277.png\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sun-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"sun-1-768x708.png\";s:5:\"width\";i:768;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:17:\"sun-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:17:\"sun-1-197x182.png\";s:5:\"width\";i:197;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:17:\"sun-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(662, 303, '_wp_attached_file', '2021/03/tema-1.png'),
(663, 303, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:18:\"2021/03/tema-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tema-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tema-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:18:\"tema-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:18:\"tema-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:18:\"tema-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(664, 304, '_wp_attached_file', '2021/03/trung-1.png'),
(665, 304, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:660;s:4:\"file\";s:19:\"2021/03/trung-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"trung-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"trung-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"listing-card\";a:4:{s:4:\"file\";s:19:\"trung-1-384x182.png\";s:5:\"width\";i:384;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"listing-card-without-crop\";a:4:{s:4:\"file\";s:19:\"trung-1-182x182.png\";s:5:\"width\";i:182;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"header-article\";a:4:{s:4:\"file\";s:19:\"trung-1-643x528.png\";s:5:\"width\";i:643;s:6:\"height\";i:528;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(666, 230, '_edit_lock', '1616800559:1'),
(667, 230, 'card_address', '18 rue de Paris, 75001 Paris'),
(668, 230, '_card_address', 'field_605e53abaafe2'),
(669, 230, 'card_phone', '0601890909'),
(670, 230, '_card_phone', 'field_605e56bf02887'),
(671, 230, 'card_advantages_0_card_advantage', 'Végétarien'),
(672, 230, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(673, 230, 'card_advantages', '1'),
(674, 230, '_card_advantages', 'field_605e53cfaafe3'),
(675, 230, 'card_bon_appetit', 'Bon appétit !'),
(676, 230, '_card_bon_appetit', 'field_605e5572aafe5'),
(677, 305, 'top_restaurant', '0'),
(678, 305, '_top_restaurant', 'field_605c9846fc9a9'),
(679, 305, 'grade', '1star'),
(680, 305, '_grade', 'field_605c9875fc9aa'),
(681, 305, 'card_address', '18 rue de Paris, 75001 Paris'),
(682, 305, '_card_address', 'field_605e53abaafe2'),
(683, 305, 'card_phone', '0601890909'),
(684, 305, '_card_phone', 'field_605e56bf02887'),
(685, 305, 'card_advantages_0_card_advantage', 'Végétarien'),
(686, 305, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(687, 305, 'card_advantages', '1'),
(688, 305, '_card_advantages', 'field_605e53cfaafe3'),
(689, 305, 'card_bon_appetit', 'Bon appétit !'),
(690, 305, '_card_bon_appetit', 'field_605e5572aafe5'),
(691, 236, 'card_address', '18 rue de Paris, 75001 Paris'),
(692, 236, '_card_address', 'field_605e53abaafe2'),
(693, 236, 'card_phone', '0601890909'),
(694, 236, '_card_phone', 'field_605e56bf02887'),
(695, 236, 'card_advantages_0_card_advantage', 'Végétarien'),
(696, 236, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(697, 236, 'card_advantages', '1'),
(698, 236, '_card_advantages', 'field_605e53cfaafe3'),
(699, 236, 'card_bon_appetit', 'Bon appétit !'),
(700, 236, '_card_bon_appetit', 'field_605e5572aafe5'),
(701, 306, 'top_restaurant', '0'),
(702, 306, '_top_restaurant', 'field_605c9846fc9a9'),
(703, 306, 'grade', '1star'),
(704, 306, '_grade', 'field_605c9875fc9aa'),
(705, 306, 'card_address', '18 rue de Paris, 75001 Paris'),
(706, 306, '_card_address', 'field_605e53abaafe2'),
(707, 306, 'card_phone', '0601890909'),
(708, 306, '_card_phone', 'field_605e56bf02887'),
(709, 306, 'card_advantages_0_card_advantage', 'Végétarien'),
(710, 306, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(711, 306, 'card_advantages', '1'),
(712, 306, '_card_advantages', 'field_605e53cfaafe3'),
(713, 306, 'card_bon_appetit', 'Bon appétit !'),
(714, 306, '_card_bon_appetit', 'field_605e5572aafe5'),
(715, 233, '_edit_lock', '1616800486:1'),
(716, 233, 'card_address', '18 rue de Paris, 75001 Paris'),
(717, 233, '_card_address', 'field_605e53abaafe2'),
(718, 233, 'card_phone', '0601890909'),
(719, 233, '_card_phone', 'field_605e56bf02887'),
(720, 233, 'card_advantages_0_card_advantage', 'Végétarien'),
(721, 233, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(722, 233, 'card_advantages', '1'),
(723, 233, '_card_advantages', 'field_605e53cfaafe3'),
(724, 233, 'card_bon_appetit', 'Bon appétit !'),
(725, 233, '_card_bon_appetit', 'field_605e5572aafe5'),
(726, 307, 'top_restaurant', '0'),
(727, 307, '_top_restaurant', 'field_605c9846fc9a9'),
(728, 307, 'grade', '1star'),
(729, 307, '_grade', 'field_605c9875fc9aa'),
(730, 307, 'card_address', '18 rue de Paris, 75001 Paris'),
(731, 307, '_card_address', 'field_605e53abaafe2'),
(732, 307, 'card_phone', '0601890909'),
(733, 307, '_card_phone', 'field_605e56bf02887'),
(734, 307, 'card_advantages_0_card_advantage', 'Végétarien'),
(735, 307, '_card_advantages_0_card_advantage', 'field_605e53ecaafe4'),
(736, 307, 'card_advantages', '1'),
(737, 307, '_card_advantages', 'field_605e53cfaafe3'),
(738, 307, 'card_bon_appetit', 'Bon appétit !'),
(739, 307, '_card_bon_appetit', 'field_605e5572aafe5');

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
(73, 1, '2021-03-25 15:07:45', '2021-03-25 14:07:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"food\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Card', 'card', 'publish', 'closed', 'closed', '', 'group_605c983c8e9a4', '', '', '2021-03-26 22:49:43', '2021-03-26 21:49:43', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2021-03-25 15:07:45', '2021-03-25 14:07:45', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Top Restaurant ?', 'top_restaurant', 'publish', 'closed', 'closed', '', 'field_605c9846fc9a9', '', '', '2021-03-25 15:07:45', '2021-03-25 14:07:45', '', 73, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2021-03-25 15:07:45', '2021-03-25 14:07:45', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:15:\"Mettez une note\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:5:{s:5:\"1star\";s:6:\"1 star\";s:6:\"2stars\";s:7:\"2 stars\";s:6:\"3stars\";s:7:\"3 stars\";s:6:\"4stars\";s:7:\"4 stars\";s:6:\"5stars\";s:7:\"5 stars\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Grade', 'grade', 'publish', 'closed', 'closed', '', 'field_605c9875fc9aa', '', '', '2021-03-25 15:08:16', '2021-03-25 14:08:16', '', 73, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=75', 1, 'acf-field', '', 0),
(76, 1, '2021-03-25 15:08:28', '2021-03-25 14:08:28', 'Mimo aime la vie, la cuisine, recevoir et partager ! L\'Italie pour lui c\'est toute sa vie. Des pasta flambées dans la meule de parmesan aux pizze napolitaines, il arrose le tout de ses cocktails fins et distingués.\r\n\r\nMimo est un oiseau de nuit, ses clients deviennent ses amis, il aime danser et faire danser. Des Rolling Stones à Wes Anderson, tomber amoureux de son univers à votre premier pas chez lui.', 'Chez Anthonio', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-03-25 15:08:28', '2021-03-25 14:08:28', '', 58, 'http://localhost:8888/forks_and_papillas/app/public/?p=76', 0, 'revision', '', 0),
(77, 1, '2021-03-25 15:20:04', '2021-03-25 14:20:04', '', 'Chez Priska', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-03-25 15:20:04', '2021-03-25 14:20:04', '', 52, 'http://localhost:8888/forks_and_papillas/app/public/?p=77', 0, 'revision', '', 0),
(78, 1, '2021-03-25 18:26:27', '2021-03-25 17:26:27', 'Mimo aime la vie, la cuisine, recevoir et partager ! L\'Italie pour lui c\'est toute sa vie. Des pasta flambées dans la meule de parmesan aux pizze napolitaines, il arrose le tout de ses cocktails fins et distingués.\r\n\r\nMimo est un oiseau de nuit, ses clients deviennent ses amis, il aime danser et faire danser. Des Rolling Stones à Wes Anderson, tomber amoureux de son univers à votre premier pas chez lui.', 'Gruppo Mimo', '', 'publish', 'closed', 'closed', '', 'guppo-mimmo', '', '', '2021-03-26 22:57:31', '2021-03-26 21:57:31', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=78', 0, 'food', '', 0),
(79, 1, '2021-03-25 18:26:27', '2021-03-25 17:26:27', 'blabkazhzhhsa', 'Guppo Mimmo', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2021-03-25 18:26:27', '2021-03-25 17:26:27', '', 78, 'http://localhost:8888/forks_and_papillas/app/public/?p=79', 0, 'revision', '', 0),
(80, 1, '2021-03-25 18:46:26', '2021-03-25 17:46:26', 'cdcecdcdcd', 'Chez Robert', '', 'publish', 'closed', 'closed', '', 'chez-robert', '', '', '2021-03-25 18:46:26', '2021-03-25 17:46:26', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=80', 0, 'food', '', 0),
(81, 1, '2021-03-25 18:46:26', '2021-03-25 17:46:26', 'cdcecdcdcd', 'Chez Robert', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2021-03-25 18:46:26', '2021-03-25 17:46:26', '', 80, 'http://localhost:8888/forks_and_papillas/app/public/?p=81', 0, 'revision', '', 0),
(82, 1, '2021-03-26 17:12:09', '2021-03-26 16:12:09', 'Mimo aime la vie, la cuisine, recevoir et partager ! L\'Italie pour lui c\'est toute sa vie. Des pasta flambées dans la meule de parmesan aux pizze napolitaines, il arrose le tout de ses cocktails fins et distingués.\r\n\r\nMimo est un oiseau de nuit, ses clients deviennent ses amis, il aime danser et faire danser. Des Rolling Stones à Wes Anderson, tomber amoureux de son univers à votre premier pas chez lui.', 'Guppo Mimmo', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2021-03-26 17:12:09', '2021-03-26 16:12:09', '', 78, 'http://localhost:8888/forks_and_papillas/app/public/?p=82', 0, 'revision', '', 0),
(83, 1, '2021-03-26 22:02:42', '2021-03-26 21:02:42', 'Mimo aime la vie, la cuisine, recevoir et partager ! L\'Italie pour lui c\'est toute sa vie. Des pasta flambées dans la meule de parmesan aux pizze napolitaines, il arrose le tout de ses cocktails fins et distingués.\n\nMimo est un oiseau de nuit, ses clients deviennent ses amis, il aime danser et faire danser. Des Rolling Stones à Wes Anderson, tomber amoureux de son univers à votre premier pas chez lui.', 'Gruppo Mimo', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2021-03-26 22:02:42', '2021-03-26 21:02:42', '', 78, 'http://localhost:8888/forks_and_papillas/app/public/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-03-26 22:02:44', '2021-03-26 21:02:44', 'Mimo aime la vie, la cuisine, recevoir et partager ! L\'Italie pour lui c\'est toute sa vie. Des pasta flambées dans la meule de parmesan aux pizze napolitaines, il arrose le tout de ses cocktails fins et distingués.\r\n\r\nMimo est un oiseau de nuit, ses clients deviennent ses amis, il aime danser et faire danser. Des Rolling Stones à Wes Anderson, tomber amoureux de son univers à votre premier pas chez lui.', 'Gruppo Mimo', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2021-03-26 22:02:44', '2021-03-26 21:02:44', '', 78, 'http://localhost:8888/forks_and_papillas/app/public/?p=84', 0, 'revision', '', 0),
(86, 1, '2021-03-25 22:40:34', '2021-03-25 21:40:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"(+33) 6 56 72 16 49\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phone Number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_605d030e261f6', '', '', '2021-03-25 22:40:34', '2021-03-25 21:40:34', '', 63, 'http://localhost:8888/app/public/?post_type=acf-field&#038;p=83', 4, 'acf-field', '', 0),
(87, 1, '2021-03-25 22:40:34', '2021-03-25 21:40:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:26:\"hello@forksandpapillas.com\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_605d032f261f7', '', '', '2021-03-25 22:40:34', '2021-03-25 21:40:34', '', 63, 'http://localhost:8888/app/public/?post_type=acf-field&#038;p=84', 5, 'acf-field', '', 0),
(88, 1, '2021-03-25 23:03:54', '2021-03-25 22:03:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:102:\"Manje kreyol - ăn thức ăn việt - Makan dalam bahasa indonesia - Mangez Français - akl lubnaniin\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Scrollingte Text', 'scrollingte_text', 'publish', 'closed', 'closed', '', 'field_605d079b23ce2', '', '', '2021-03-25 23:03:54', '2021-03-25 22:03:54', '', 91, 'http://localhost:8888/app/public/?post_type=acf-field&#038;p=86', 0, 'acf-field', '', 0),
(89, 1, '2021-03-25 23:03:54', '2021-03-25 22:03:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:83:\"Choisissez<span> le meilleur </span>. Plus de <span>100 milles</span> restaurants !\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'First Sentences', 'first_sentences', 'publish', 'closed', 'closed', '', 'field_605d07f423ce3', '', '', '2021-03-25 23:03:54', '2021-03-25 22:03:54', '', 91, 'http://localhost:8888/app/public/?post_type=acf-field&#038;p=87', 1, 'acf-field', '', 0),
(90, 1, '2021-03-25 23:03:54', '2021-03-25 22:03:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:202:\"à la recherche du bon restaurent, en cette pandémie aider vos restaurateurs en prenant les soutenants au mieux ! Nous sommes en collaborations avec plusieurs chefs et proposons le meilleurs pour vous.\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_605d087223ce4', '', '', '2021-03-25 23:03:54', '2021-03-25 22:03:54', '', 91, 'http://localhost:8888/app/public/?post_type=acf-field&#038;p=88', 2, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(91, 1, '2021-03-25 23:03:54', '2021-03-25 22:03:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"acf-options-hero\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'group_605d0797eb722', '', '', '2021-03-25 23:03:54', '2021-03-25 22:03:54', '', 0, 'http://localhost:8888/app/public/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(92, 1, '2021-03-25 23:03:54', '2021-03-25 22:03:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:54:\"Suivez notre Newsletter pour ne rater aucune nouvelles\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Follow Newsletter', 'follow_newsletter', 'publish', 'closed', 'closed', '', 'field_605d089d23ce5', '', '', '2021-03-25 23:03:54', '2021-03-25 22:03:54', '', 91, 'http://localhost:8888/app/public/?post_type=acf-field&#038;p=89', 3, 'acf-field', '', 0),
(93, 1, '2021-03-23 22:34:03', '2021-03-23 21:34:03', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"ht\">Matinik, pi bon destinasyon gastronomik nan Karayib la selon jounal Karayib la nan 2019, eritye bon gastronomi franse. Gou kreyòl li yo, konbine avèk \"franse\" konesans nan chèf li yo, ap pran plezi ou nan restoran yo anpil sou zile a. Asyèt yo varye ak tout gou. Gen yon bagay pou tout gou; si ou prefere pwason oswa vyann, gen yon bagay pou tout moun nan cuisine Martinican.</span></p>\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"ht\">\"Féroce la\" (yon melanj de griye ak kraze sèk, kasav ak farin zaboka) oswa \"Ti nain mor la\" (kwit bannann vèt ak sèk mor) yo pi byen jwi nan maten an. Kòm yon aperitif ou pral jwenn akras, sosis ak katam fri ak asyèt sublime pa enprenabl \"sòs la chen\" prepare ak zonyon peyi, pèsi, tim enfuze, piman ak lay.</span></p>\n&nbsp;\n+596 596 69 05 22\n47 U Anse Charpentier Tous Les Midis ET Vendredi Soir, Sainte Marie 97230 Martinique', 'Le Point de Vue', '', 'publish', 'closed', 'closed', '', 'chez-priska-2', '', '', '2021-03-23 22:34:03', '2021-03-23 21:34:03', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=52', 0, 'food', '', 0),
(94, 1, '2021-03-23 22:42:33', '2021-03-23 21:42:33', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"ht\">Sitiye nan Saint Denis sou Reunion Island, Reflet des Iles restoran an ofri cuisine tradisyonèl ak natif natal Reunionese pou yon chanjman nan peyizaj. Le Reflet des Iles se refleksyon nan konnen ki jan nan Reunion Island Varye, men tou manje konsèvatif! Enblematik nan St Denis, restoran sa a se youn nan pi ansyen an nan kapital la.</span></p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">02 62 21 73 82</p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">114 rue Pasteur\n97400 Saint Denis\nIle de la Réunion</p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\"></p>', 'Reflet des Iles', '', 'publish', 'closed', 'closed', '', 'chez-annie-2', '', '', '2021-03-23 22:42:33', '2021-03-23 21:42:33', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=54', 0, 'food', '', 0),
(95, 1, '2021-03-23 22:42:55', '2021-03-23 21:42:55', '&nbsp;\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"ht\">Enposib vizite Reunion san yo pa dekouvri kwizin nan \"lontan\" konkokte pa Chef nou an, nan abri a nan yon jaden ekzotik kote konvivialite kreyòl pran sou tout siyifikasyon li yo alantou 14 po kwit sou yon dife bwa nan pi tradisyon lokal la. TÈT-Sèvi BUFFET</span></p>\n+262 262 33 31 37\nPlage de l\'Ermitage 34, bd Leconte de Lisle, Saint-Gilles-Les-Bains 97434 Ile de La Réunion\n&nbsp;', 'La Marmite', '', 'publish', 'closed', 'closed', '', 'chez-dorian-2', '', '', '2021-03-23 22:42:55', '2021-03-23 21:42:55', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=56', 0, 'food', '', 0),
(96, 1, '2021-03-23 22:45:05', '2021-03-23 21:45:05', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"ht\">Yon cuisine melanje Soti nan starter desè ale pou yon vwayaj gastronomik Tout pwodwi nou yo fre, lokal yo ak anpil atansyon chwazi! Cuisine yo ofri a se yon fizyon kreyòl ak franse. Legim peyi ak Mediterane, epis kreyòl ak pwodwi lokal fre melanje. Foie gras endijèn nou an, krevèt yo kroustiyan ak Sitwonèl, ton Rossini oswa tete kanna marin yo espektakilè ak eksploze nan bouch la! Li se yon plezi pou je yo ak pou ti boujon yo gou ... Pwason an fimen pa chef la, pen an kwit ak engredyan diferan chak jou. Tout asyèt nou yo kwit nan lòd, tout bagay se endijèn e ke se pwen onè nou an! Plis pou kliyan nou yo, meni an chanje chak mwa ...</span></p>\n<pre class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"ht\">0596.69.48.38\n</span></pre>\n<p class=\"font_8\">VILLAGE DE LA POTERIE</p>\n<p class=\"font_8\">97 229 TROIS ÎLETS - MARTINIQUE</p>\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"></pre>', 'La Mandoline', '', 'publish', 'closed', 'closed', '', 'chez-anthonio-2', '', '', '2021-03-23 22:45:05', '2021-03-23 21:45:05', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=58', 0, 'food', '', 0),
(97, 1, '2021-03-25 18:26:27', '2021-03-25 17:26:27', 'blabkazhzhhsa', 'Guppo Mimmo', '', 'trash', 'closed', 'closed', '', 'guppo-mimmo-2__trashed', '', '', '2021-03-26 23:16:42', '2021-03-26 22:16:42', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=78', 0, 'food', '', 0),
(98, 1, '2021-03-25 18:46:26', '2021-03-25 17:46:26', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"ht\">Restoran goumè ak cuisine rafine, cho akeyi, senp, men pwòp dekorasyon ki bay yon atmosfè cho, sèvis vit. Apéritif la ka akonpaye pa tapa bon gou pou yon moman bèl nan detant. Ale la a, li nan fason ki pi bon yo apresye sa a cuisine Ewopeyen an te fè ak pwodwi lokal yo. gou garanti.</span></p>\n05 90 21 31 14\n17, Salines Est\n97118 SAINT FRANCOIS', 'Le Mabouya', '', 'publish', 'closed', 'closed', '', 'chez-robert-2', '', '', '2021-03-25 18:46:26', '2021-03-25 17:46:26', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=80', 0, 'food', '', 0),
(99, 1, '2021-03-23 22:34:03', '2021-03-23 21:34:03', '<h5 class=\"card-title\">Nasi Berkat</h5>\r\n<p class=\"card-text\">Mini riz indonésien Rijsttafel avec combinaison de bœuf \"Empal\", \"kering tempe\", \"urap\", oseng tahu tempe, teri medan, cornichons et omelette en tranches</p>', 'The Remboulan', '', 'publish', 'closed', 'closed', '', 'chez-priska-2-2', '', '', '2021-03-26 23:49:34', '2021-03-26 22:49:34', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=52', 0, 'food', '', 0),
(100, 1, '2021-03-23 22:42:33', '2021-03-23 21:42:33', '<div class=\"about-snippet-left\">\n<div class=\"about-snippet-top-image\"></div>\n</div>\n<div class=\"about-snippet-right carouselitems\">\n<div class=\"about-snippet-title\">\n<h2></h2>\n<div class=\"about-snippet-title\">\n<h2>                                                                        Rooftop Bar Tertinggi Di Jakarta</h2>\n</div>\n</div>\n<div class=\"about-snippet-description quote\">\n<p align=\"center\"><span>Masuklah ke terowongan &amp; lift pribadi di lantai dasar The Westin Jakarta untuk akses langsung ke bar atap tertinggi di Jakarta di lantai 67.</span></p>\n<p align=\"center\"></p>\n<p align=\"center\"><span>Resapi suasana santai yang meriah saat Anda duduk di dalam atau di luar ruangan, sementara ahli campuran kami mengerjakan koktail buatan artisanal yang terinspirasi dari Nikkei.</span>\n</p>\n<p align=\"center\">\n<strong><span>JAM BUKA</span></strong>\n<span>Senin sampai Minggu</span>\n<span>15:00 sampai 21:00</span></p>\n<p align=\"center\">\n<span>Kode berpakaian -</span>\n<span>Masuk smart casual - 21 tahun ke atas</span>\n<span>Fotografi profesional tidak diperbolehkan</span></p>\n&nbsp;\n</div>\n</div>', 'Henshin', '', 'publish', 'closed', 'closed', '', 'chez-annie-2-2', '', '', '2021-03-23 22:42:33', '2021-03-23 21:42:33', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=54', 0, 'food', '', 0),
(101, 1, '2021-03-23 22:42:55', '2021-03-23 21:42:55', '<p align=\"center\"><span>Terletak di jantung kota Jakarta, tepat di lantai 56 Menara BCA, Grand Indonesia, SKYE telah memantapkan dirinya sebagai \"resor gaya hidup di langit\", dihiasi dengan arsitektur Amerika Selatan yang unik dan pemandangan kota yang tak tertandingi.</span></p>\n<p align=\"center\"><span>Di SKYE, bersantaplah di restoran tertinggi di Jakarta dengan hidangan dari hidangan Asia Tenggara, Jepang, Italia, dan Meksiko lengkap dengan koleksi anggur terbaik dan koktail yang menyegarkan. SKYE memenuhi namanya sebagai \"Restaurant of the Year\" yang dianugerahi oleh Indonesia Tatler karena ini adalah tempat di mana semua orang dapat menikmati steak yang lezat tetapi juga menyeruput minuman sambil menikmati musik live.</span></p>\n<p align=\"center\"><span>Kapan pun Anda mencari pintu gerbang cepat dari pekerjaan Anda yang sibuk, ingin keluar malam bersama orang penting Anda, atau ingin minum-minum dengan teman-teman terdekat Anda, kunjungi SKYE dan cicipi Good Life</span></p>', 'Skye', '', 'publish', 'closed', 'closed', '', 'chez-dorian-2-2', '', '', '2021-03-23 22:42:55', '2021-03-23 21:42:55', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=56', 0, 'food', '', 0),
(102, 1, '2021-03-23 22:45:05', '2021-03-23 21:45:05', '<h1 class=\"heading1 marginbot10\">AUTHENTIC FLAVOURS OF SATE KHAS SENAYAN</h1>\n<div class=\"width80 pull-left boxysameheight\">\n<div class=\"bulldogfont fs16 ls05 color000\">Sate Khas Senayan comes with the idea to preserve and innovate Javanese and Balinese dishes.\nPreserve means that we highlights traditional food and its authentic flavors. In the restaurant, the dishes are not simply served to please one’s taste buds, but its authentic flavors are aimed to bring food lovers to walk down the memory lane to the good times their shared with family and friends.\nSate Khas Senayan serves comfort foods, such as the much love <em>Sate Ayam</em> (chicken satay served with peanut sauce), <em>Ayam Goreng Kremes </em>(fried chicken with crunchy savory bits) as well as a culturally-rich dish <em>Nasi Kuning</em> (yellow turmeric rice served with various side dishes) also <em>Tahu Telur</em> and <em>Soto Ayam Ambengan</em>. These dishes are cooked using traditional recipes and, of course, the best ingredients, guaranteeing the finest yet authentic tastes of Indonesian cuisine.\nAlthough Sate Khas Senayan has been around for more than four decades, we don\'t stop evolving and challenging itself in serving the finest Indonesian cuisine. Sate Khas Senayan showcases the finest dishes from Java and Bali islands through Festival menu, such as Festival Bali, Festival Jawa Timur, Festival Sunda and many more. Through this Festival menu, guests can learn more about the origins of the dishes and discover the area’s traditional food.\n<div>Furthermore, Sate Khas Senayan also loves to celebrate Indonesian traditions and to encourage it through offering or seasonal celebration menu and hantaran. During festive seasons, the restaurant serves special dishes, such as the iconic <em>Lontong Cap Gomeh </em>(Chinese-style rice cake with various richly flavored side dishes) for Chinese New Year, <em>Ketupat Campur </em>(rice cake served in coconut milk gravy with various side dishes) for Ramadan and <em>Ayam Kodok (stuffed boneless chicken) for Christmas.</em>\nIn addition to the aforementioned dishes, Sate Khas Senayan also offers tumpeng (a cone-shaped serving of yellow rice accompanied by assorted side dishes). The traditional dish, which is synonymous with joyful celebrations, is usually served during special occasions.</div>\n</div>\n</div>', 'Sate Khas Senayan', '', 'publish', 'closed', 'closed', '', 'chez-anthonio-2-2', '', '', '2021-03-23 22:45:05', '2021-03-23 21:45:05', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=58', 0, 'food', '', 0),
(103, 1, '2021-03-25 22:26:05', '2021-03-25 21:26:05', '<h2>\nRestoran Beautika didirikan</h2>\nPada akhir tahun 1997. Pada awalnya Beautika adalah sebuah Salon Kecantikan yang juga menyajikan makanan ringan khas Manado, antara lain: Bubur Manado, Nasi Kuning, Mie Cakalang, Pisang Goreng, Gohu dan Es Kacang.\nBeautika adalah restoran yang menyajikan makanan khas Manado siap saji dan dikenal dengan makanan yang pedas dan kaya bumbu.\nResep-resep makanan Beautika adalah asli dan khas dari Manado yang sudah turun temurun dikenal sangat lezat.\nPada saat ini restoran Beautika menyediakan beragam menu makanan khas Manado yang lengkap antara lain: Nasi Campur Manado, Ayam Woku, Ayam Isi di Bulu, Ikan Cakalang Saos, Ikan Kakap Woku, Sayur Garo, Sayur Rica Rodo dll dan beragam kue-kue khas Manado.\n<strong>Address</strong>\nJl. Hang Lekir No. 1, Kebayoran Baru\nJakarta Selatan\n<strong>Phone</strong>\n<a href=\"tel:+62217226683\">(021) 722 6683</a>\n<b>Fax</b>\n(021) 739 6137\n<strong>Opening Hours</strong>\n08.00 – 21.00 WIB\n&nbsp;', 'Beautika-Manado', '', 'publish', 'closed', 'closed', '', 'beautika', '', '', '2021-03-25 22:26:05', '2021-03-25 21:26:05', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=93', 0, 'food', '', 0),
(104, 1, '2021-03-25 22:28:17', '2021-03-25 21:28:17', '<div class=\"nectar-split-heading animated-in\">\n<div class=\"heading-line\">\n<h2 id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"id\">Destinasi Kuliner “Eatainment” </span></h2>\n<p class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"id\">Restoran Bandar Djakarta adalah restoran seafood dengan konsep pasar ikan, menyediakan berbagai jenis seafood dengan kualitas terjamin karena alamnya yang hidup dan segar. Restoran Bandar Djakarta saat ini mengoperasikan 4 cabang di empat kota, </span></p>\n<p class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\">North Jakarta : Bandar Djakarta Ancol &amp; Seafood City Bandar Djakarta\nTangerang       : Bandar Djakarta Alam Sutera\nBekasi              : Bandar Djakarta Bekasi</p>\n</div>\n</div>', 'Bandar Djakarta', '', 'publish', 'closed', 'closed', '', 'bandar-djakarta', '', '', '2021-03-25 22:28:17', '2021-03-25 21:28:17', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=96', 0, 'food', '', 0),
(105, 1, '2021-03-25 22:45:56', '2021-03-25 21:45:56', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"fr\">Dans les anciens locaux de La Régalade, temple de la bistronomie, Les Petits Parisiens (ex-Origins 14) ont été rénovés et sont désormais dirigés par le propriétaire des Petits Princes (Suresnes). Le chef Rémy Danthez travaille sur les fondamentaux, concoctant une cuisine de bistrot généreuse qui n\'est pas en contradiction avec la philosophie de ses prédécesseurs.</span></p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">49 avenue Jean Moulin, Paris, 75014, France</p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">+33 1 45 43 72 97</p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\"></p>', 'Les Petits Parisiens', '', 'publish', 'closed', 'closed', '', 'les-petits-parisiens', '', '', '2021-03-25 22:45:56', '2021-03-25 21:45:56', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=99', 0, 'food', '', 0),
(106, 1, '2021-03-25 22:47:21', '2021-03-25 21:47:21', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"fr\">Dans un quartier calme, ce restaurant accueillant et confortable a été récemment rénové dans un style contemporain. Il propose une carte qui évolue avec l\'offre du marché et l\'inspiration du chef. Homme sympathique originaire du Gers, il allie savoir-faire traditionnel et style dans l\'air du temps. Les clients de passage ainsi que les habitués repartent heureux. Bon rapport qualité prix.</span></p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\"></p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">54 rue Cardinet, Paris, 75017, France</p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">+33 1 47 63 40 37</p>', 'Jacques Faussat', '', 'publish', 'closed', 'closed', '', 'jacques-faussat', '', '', '2021-03-25 22:47:21', '2021-03-25 21:47:21', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=102', 0, 'food', '', 0),
(107, 1, '2021-03-25 22:49:29', '2021-03-25 21:49:29', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"fr\">Christophe Saintagne a accompli sa métamorphose, ouvrant sa propre place après avoir dirigé les cuisines du Plaza Athénée puis du Meurice. S\'épanouissant dans son élégant néo - bistrot, il crée une cuisine classique et noble avec une emphase résolument sur le goût et l \'équilibre. Un conseil, assurez-vous de réserver!</span></p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">8 rue Meissonier, Paris, 75017, France</p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">+33 1 56 79 81 88</p>', 'Papillon', '', 'publish', 'closed', 'closed', '', 'papillon', '', '', '2021-03-25 22:49:29', '2021-03-25 21:49:29', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=105', 0, 'food', '', 0),
(109, 1, '2021-03-25 22:51:17', '2021-03-25 21:51:17', 'Normandy\'s finest produce – oysters first and foremost – is showcased in contemporary and tasty dishes. Three possible spots in which to tuck in are the rustic - style dining area, the glass - roofed conservatory overlooking a remarkable garden planted with palm, mimosa and eucalyptus trees, and, come summer, the pretty terrace.', 'France et Fuchsias', '', 'publish', 'closed', 'closed', '', 'france-et-fuchsias', '', '', '2021-03-25 22:51:17', '2021-03-25 21:51:17', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=109', 0, 'food', '', 0),
(112, 1, '2021-03-25 22:52:22', '2021-03-25 21:52:22', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"fr\">Ce bâtiment rustique au toit de chaume est proche de la route, mais paisible et très accueillant. Les propriétaires - de vrais passionnés de cuisine - utilisent pleinement les produits locaux pour créer une cuisine traditionnelle appétissante.</span></p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">36 route départementale 677, Canapville, 14800, France</p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">+33 2 31 65 21 80</p>', 'Auberge du Vieux Tour', '', 'publish', 'closed', 'closed', '', 'auberge-de-labbaye', '', '', '2021-03-25 22:52:22', '2021-03-25 21:52:22', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=112', 0, 'food', '', 0),
(115, 1, '2021-03-25 22:53:56', '2021-03-25 21:53:56', 'Le Chantecler, notre restaurant étoilé, revisite habilement les codes de la grande gastronomie en leur accordant légèreté et sincérité. Il propose un talentueux hommage aux produits de la région. Le service à table est également réputé. Discret, il sait aussi se donner en spectacle lors du flambage ou du découpage en salle dans la grande tradition des bonnes tables. Avec ses somptueuses boiseries réalisées en 1751, Le Chantecler offre un décor XVIIIe à la fois délicat et fastueux pour vos diners d’exception.\n37 promenade des Anglais, Nice, 06000, France\n+33 4 93 16 64 00', 'Le Chantecler', '', 'publish', 'closed', 'closed', '', 'le-chantecler', '', '', '2021-03-25 22:53:56', '2021-03-25 21:53:56', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=115', 0, 'food', '', 0),
(118, 1, '2021-03-25 22:56:55', '2021-03-25 21:56:55', 'Il locale, condotto da Mirko ha un arredamento vintage, con una atmosfera intima dove vivrete serate indimenticabili,\ngrazie alla sua cucina e alla simpatia del proprietario. Curiamo ogni pietanza, selezionando i migliori ingredienti base.\n<em>The club, led by Mirko has a vintage furniture, with an intimate atmosphere where you will live a memorable evening,\nthanks to its cuisine and the friendliness of the owner. We handle every dish, selecting the best ingredients.</em>\nNum : +39 02 39 264 564  o +39 338 3625467\n<div class=\"_2vbD36Hr _36TL14Jn\"><span class=\"_2saB_OSe\">Via Varesina 61, 20156 Milano Italia</span></div>\n<div class=\"_2vbD36Hr _36TL14Jn\"></div>\n&nbsp;', 'L \'Immagine Bistrot', '', 'publish', 'closed', 'closed', '', 'l-immagine-bistrot', '', '', '2021-03-25 22:56:55', '2021-03-25 21:56:55', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=118', 0, 'food', '', 0),
(121, 1, '2021-03-25 23:01:11', '2021-03-25 22:01:11', 'Langosteria è uno stile. Ma è anche una visione. Langosteria è un metodo. E dei valori autentici. Langosteria è gusto, ricercatezza e ritmo. Un’idea di ristorazione tutta italiana, con l’indispensabile tocco d’internazionalità. L’atmosfera ideale, in ogni occasione. Per un’esperienza unica, all’insegna dell’eccellenza. Langosteria oggi va oltre il ristorante (since 2007), il Bistrot (since 2012) e il Café (since 2016). È fine dining pieds-dans-l’eau nella splendida cornice di Paraggi (since 2017), perla della Riviera Ligure. Langosteria è… Tutto questo e molto di più.\nT<a href=\"tel:+390258106792\">e</a>l. +39 02 58106792\nVia Privata Lecce, 4\n20136 Milano', 'Langosteria', '', 'publish', 'closed', 'closed', '', 'langosteria', '', '', '2021-03-25 23:01:11', '2021-03-25 22:01:11', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=121', 0, 'food', '', 0),
(124, 1, '2021-03-25 23:03:38', '2021-03-25 22:03:38', '<p class=\"\">Vincenzo ha coltivato la sua passione per la ristorazione crescendo nel ristorante e nel bar di famiglia, sapendo cogliere le sfumature necessarie all’accoglienza di ogni avventore come suo ospite d’onore. Ha selezionato anche una carta vini dinamica e che la preziosa collaborazione di Francesco, sommelier d’esperienza, ha orientato poi alla ricerca nel mondo del “naturale” e non solo .</p>\n<p class=\"\">Dall’altra parte, l\'amore di Francesca a prima vista era ed è per la cucina; carriera iniziata dall\'esperienza e seguita da uno studio attento che l\'ha portata a sperimentare continuamente, avendo come centro assoluto la ricerca nell’eccellenza della materia prima e della tradizione.\nCoppia dunque al timone di una realtà professionale accompagnati da Damiano ,Irina ed Andrea accurati e appassionati assistenti in cucina e da un altro Francesco, barbuto “portapiatti” (Maître), in sala.\nQuesti sono gli ingredienti essenziali che animano dal 2003 l\'Osteria Enoteca ai Artisti. Un luogo che racconta una storia, costruita passo dopo passo da Vincenzo , Francesca e i loro collaboratori</p>\n<em>(+39) 041 52 38 944</em>\n1169/A\n30123, VENEZIA', 'Enotecaartisti', '', 'publish', 'closed', 'closed', '', 'enotecaartisti', '', '', '2021-03-25 23:03:38', '2021-03-25 22:03:38', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=124', 0, 'food', '', 0),
(127, 1, '2021-03-25 23:08:28', '2021-03-25 22:08:28', 'Amiamo riscoprire le ricette della nostra tradizione, esaltandone i sapori con una sapiente ed amorevole preparazione e la costante ricerca di ingredienti di qualità assoluta. A piazza Caprera abbiamo una piccola cucina che propone alcuni dei piatti già di successo del menu di via Po, la pizza, i dolci, il pane provengono dallo stesso laboratorio. Preparatevi all’assaggio, mangiare bene è divertente!\nColazione o pranzo, merenda o aperitivo, cena e dopocena, dall’alba alla notte\nsotto i portici a Piazza Caprera\nTel: 06 855 1040\nPiazza Caprera 8, Roma', 'Marziali 1922', '', 'publish', 'closed', 'closed', '', 'ristorante-pizzeria-rio-nuovo', '', '', '2021-03-25 23:08:28', '2021-03-25 22:08:28', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=127', 0, 'food', '', 0),
(130, 1, '2021-03-25 23:10:07', '2021-03-25 22:10:07', 'La storia di CiPASSO nasce da un desiderio ambizioso che fondeva l’amore per la gastronomia e la passione per l’enologia con l’obiettivo di presentare il proprio concept innovativo nel panorama della ristorazione romana, dando vita alla Vineria &amp; Bistrot CiPASSO.\nTutti i giorni i sommelier sono a tua diposizione per consigliarti l’abbinamento perfetto in base ai tuoi gusti e al tuo piatto, lasciando sempre l’ultima parola a te. Tuo il gusto, tua la scelta!\nLo chef propone ogni giorno piatti semplici e gustosi, tradizionali e in chiave moderna, studiati per soddisfare occhi esigenti, cuori delicati e palati raffinati.\n&nbsp;\n<p class=\"iconbox_content_title \">num : 06 688 92 620</p>\n<p class=\"iconbox_content_title \">Siamo in Via Metastasio 21, a Roma.</p>\n&nbsp;', 'Cipassoitalia', '', 'publish', 'closed', 'closed', '', 'cipassoitalia', '', '', '2021-03-25 23:10:07', '2021-03-25 22:10:07', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=130', 0, 'food', '', 0),
(134, 1, '2021-03-25 23:13:10', '2021-03-25 22:13:10', '<strong>Il Ristorante Tema</strong>\n<div id=\"content\">\n<div class=\"box-nm\">\n<div class=\"page-content\">\n<div class=\"single_entry\">\n<strong>Il Ristorante Tema</strong> offre un ambiente caldo e rilassante in cui poter gustare piatti prelibati in un’atmosfera piacevole e cordiale.\nDa sempre il Ristorante Tema riserva ai suoi clienti un trattamento speciale sia per quanto riguarda la qualità degli ingredienti impiegati, sia per quanto riguarda il servizio, curato nei minimi particolari. Le specialità del ristorante spaziano dalle ricette a base di <strong>pesce</strong> ai piatti a base di <strong>carne</strong>: grigliate, arrosti e primi sempre gustosi nei quali troverete solo<strong> ingredienti di prima scelta e freschissimi.</strong>\n<em>Questi sono solo alcuni dei motivi per i quali vale</em>\n<em>la pena di venirci a trovare..</em>\n</div>\n<div class=\"post-pagination\"></div>\n</div>\n</div>\n</div>\n<div id=\"copyright\">Tel. +39 06 48.64.84</div>\n<div>Via Panisperna 96/98</div>\n&nbsp;', 'Ristorante TEMA', '', 'publish', 'closed', 'closed', '', 'restaurant-tema', '', '', '2021-03-25 23:13:10', '2021-03-25 22:13:10', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=food&#038;p=134', 0, 'food', '', 0),
(161, 1, '2021-03-26 00:44:25', '2021-03-25 23:44:25', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"fr\">Les meilleurs produits de Normandie - les huîtres avant tout - sont mis en valeur dans des plats contemporains et savoureux. La salle à manger de style rustique, la véranda au toit de verre donnant sur un jardin remarquable planté de palmiers, de mimosas et d\'eucalyptus et, l\'été venu, la jolie terrasse.</span></p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">20 rue du Maréchal-Foch, Saint-Vaast-la-Hougue, 50550, France</p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">+33 2 33 54 40 41</p>', 'France et Fuchsias', '', 'publish', 'closed', 'closed', '', 'france-et-fuchsias-2', '', '', '2021-03-26 00:44:25', '2021-03-25 23:44:25', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=161', 0, 'food', '', 0),
(205, 1, '2021-03-26 01:51:28', '2021-03-26 00:51:28', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"ht\">D.C.P. (Aparèy Konsantrasyon Pwason) se yon restoran ki ofri sèlman fre pwason Reunionese ak yon konsèp senp: soti nan bato ak plak. Meni an gen ladan asyèt tankou kwit, vapè oswa griye pwason espadon ak dorad kòm byen ke marlin ak ton kri (tartar, carpaccio, susi). Restoran an louvri soti nan 12 pm a 2:30 pm ak soti nan 7:30 pm a 10:30 p.m. Restoran an ofri tou sèvis Restoration li yo. Machann pwason devan, akote restoran an. Anviwonnman</span></p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\"><span role=\"link\" aria-label=\"Appeler le +262 262 33 02 96\">+262 262 33 02 96</span></p>\n<p dir=\"ltr\" data-placeholder=\"Traduction\">saint gilles les bains 97434, La Réunion</p>', 'D.C.P', '', 'publish', 'closed', 'closed', '', 'd-c-p', '', '', '2021-03-26 01:51:28', '2021-03-26 00:51:28', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=205', 0, 'food', '', 0),
(209, 1, '2021-03-26 02:05:28', '2021-03-26 01:05:28', '<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"vi\">Luôn là thương hiệu quen thuộc với những tín đồ mê bún bò Huế tại Sài Gòn,  không thể không điểm qua thương hiệu bún bò Huế đình đám trong bài viết này. Dường như bạn có thể tìm thấy các chi nhánh của thương hiệu này ở mọi khu vực của Sài Gòn, vô cùng tiện lợi. Cửa hàng có không gian rộng rãi, thoáng mát thích hợp cho gia đình hoặc nhóm bạn. Một tô bún bò nóng hổi tại Bún Bò Huế Xưa sẽ giải tỏa cơn đói hay làm ấm bụng mùa đông. Quán Bún Bò Huế Xưa có rất nhiều món khác nhau, bạn có thể gọi bún bò, bún chả, bún bò nạm gân Một tô bún bò Huế thơm ngon sẽ khiến bạn muốn nếm thử ngay lập tức, làn khói nóng hổi tỏa hương thơm kích thích. vị giác. Mùi hương này đến từ nước dùng của bún. Nước dùng của quán được nhiều người đánh giá cao bởi độ ngọt thanh và thơm mùi nước dùng. Đây là địa điểm hoàn hảo để mang đến những tô bún bò thơm ngon khiến bạn không thể dừng đũa.</span></p>\nThời gian mở cửa: 07:00 - 23:00\n&nbsp;\n<p dir=\"ltr\" data-placeholder=\"Traduction\"> 0901.6789.96</p>\n722 Điện Biên Phủ, Q.Bình Thạnh, TP.HCM\n&nbsp;', 'Bún Bò Huế Xưa', '', 'publish', 'closed', 'closed', '', 'bun-bo-hue-xua', '', '', '2021-03-26 02:05:28', '2021-03-26 01:05:28', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=209', 0, 'food', '', 0),
(212, 1, '2021-03-26 02:18:32', '2021-03-26 01:18:32', '<div id=\"tw-container\" class=\"YQaNob\" data-cp=\"1\" data-is-ver=\"false\" data-nnttsvi=\"1\" data-sugg-time=\"500\" data-sugg-url=\"https://clients1.google.com/complete/search\" data-uilc=\"fr\">\n<div id=\"tw-ob\" class=\"tw-src-ltr\">\n<div class=\"oSioSc\">\n<div id=\"tw-target\">\n<div id=\"kAz1tf\" class=\"g9WsWb\">\n<div id=\"tw-target-text-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\" tabindex=\"0\">\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"vi\">Đến ngay giữa lòng đất nước xinh đẹp của chúng ta, cùng khám phá những món ăn đình đám và đặc trưng. Nhà hàng của chúng tôi cung cấp nhiều lựa chọn biến thể của các món ăn đặc trưng của Việt Nam. Chúng tôi bổ sung thực phẩm hoàn toàn chay. Trong một khung cảnh đơn giản, ấm áp và gia đình.</span></p>\n</div>\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\"></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Traduction\"><span lang=\"vi\">07:30 sáng - 22:30 chiều</span></p>\n+84 28 3827 7131\n160 Pasteur Ben Nghe Ward, District 1, Ho Chi Minh City 700000 Vietnam\n&nbsp;', 'Quan An Ngon', '', 'publish', 'closed', 'closed', '', 'quan-an-ngon', '', '', '2021-03-26 02:18:32', '2021-03-26 01:18:32', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=212', 0, 'food', '', 0),
(215, 1, '2021-03-26 02:27:02', '2021-03-26 01:27:02', 'Mảnh đất miền Trung nắng gió, đất khô cằn quanh năm bởi gió lào, mặn mòi vị muối biển, nhưng tình người, tình đất vẫn thấm đượm vào từng hương vị ẩm thực, ngọt ngào như điệu hò, câu ví nơi đây. Rồi cả những sản vật dân dã, chân chất trong những món gà đồi, cá lóc nướng, mít trộn, bánh ướt, thịt quay, xôi vò mà vẫn thấm đượm cái chất phóng khoáng, chân tình, mộc mạc và đầy cuốn hút.\nÂn Nam Quán (An Nam Quán) như góc nhỏ bình dị của quán nhỏ bên dòng sông Hoài phố Hội An mang về giữa Sài Thành. Không phải những nem công, chả phượng, những món Huế cầu kỳ hay cao lầu, mì Quảng, nơi đây sẽ đem tới cho thực khách một hương sắc khác mới lạ, độc đáo của miền Trung.\n7:00 - 2:00\n<span role=\"link\" aria-label=\"Appeler le +84 28 3932 6865\">+84 28 3932 6865</span>\n51B Tú Xương, Phường 7, Quận 3, Thành phố Hồ Chí Minh 700000, Viêt Nam', 'Ân Nam Quán', '', 'publish', 'closed', 'closed', '', 'an-nam-quan', '', '', '2021-03-26 02:27:02', '2021-03-26 01:27:02', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=215', 0, 'food', '', 0),
(218, 1, '2021-03-26 02:32:18', '2021-03-26 01:32:18', 'Tọa lạc tại số 52 Mạc Đĩnh Chi, Phường Đa Kao, Quận 1, nhà hàng Pachi Pachi với những món ăn đặc trưng xứ sở Hoa Anh Đào là điểm đến quá đỗi quen thuộc với người Sài Gòn. Hoạt động theo mô hình nhà hàng nướng lẩu (kết hợp phục vụ buffet &amp; gọi món), nhà hàng Pachi Pachi mang đến cho thực khách những trải nghiệm hoàn toàn mới lạ từ cách tẩm ướp, hương vị cho đến cách thưởng thức món ăn.\r\nNhìn vào menu, nhà hàng Pachi Pachi đã mang đến nhiều sự lựa chọn với nguồn nguyên liệu đa dạng với các loại thịt bò nướng, các loại cá, hải sản, thịt gà, cá sấu, đà điểu và các loại lòng gà, lòng bò nướng,... được lựa chọn một cách tỉ mỉ để luôn đảm bảo độ tươi ngon cho thực khách. Bên cạnh sự tươi ngon, các món ăn của nhà hàng lẩu nướng Pachi Pachi được tẩm ướp một cách cầu kỳ với nhiều loại nước sốt mang thương hiệu Nhật Bản như Teriyaki, nước sốt BBQ, nước sốt cay nồng, nước sốt ngọt nhẹ... vừa phong phú vừa đa dạng giúp thực khách có những trải nghiệm vị giác đầy thú vị.', 'Pachi Pachi - Mạc Đĩnh Chi', '', 'publish', 'closed', 'closed', '', 'pachi-pachi-mac-dinh-chi', '', '', '2021-03-26 23:08:45', '2021-03-26 22:08:45', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=218', 0, 'food', '', 0),
(221, 1, '2021-03-26 02:40:33', '2021-03-26 01:40:33', 'Nép mình gần toà nhà cao bậc nhất thành phố trên đường Hải Triều, quận 1, quán phở Hải Triều cùng tên đường được mở bởi một gia đình gốc Bắc.Chủ quán cho hay, toàn bộ công thức đều được nấu theo cách truyền thống ở Hà Nội.các công đoạn nấu nướng được liên tục thực hiện để duy trì lượng thực phẩm bán cho khách do quán mở cửa 24/24h. Bánh phở tại địa chỉ này không nhỏ như sợi phở của miền Nam, nhưng cũng không to và dày. Thịt bò được cắt lát to và dày, chín tới, khi ăn sẽ cảm nhận được vị ngọt, mềm. Nước phở trong và thanh do chỉ nấu bằng xương ống của con bò. Trong tô phở có rất nhiều hành lá và hành tây cắt mỏng. Quán bán từ sáng sớm đến tối mịt, một tô phở có giá thấp nhất 55.000 đồng, tô thập cẩm đặc biệt có giá 75.000 đồng. Thường khách đến quán sẽ gọi thứ mình thích như tái, nạm, bắp bò, gà, đùi gà... Giờ trưa quán có đông người làm văn phòng ở quanh khu vực ghé ăn.\n<span role=\"link\" aria-label=\"Appeler le +84 91 394 49 43\">+84 91 394 49 43</span>\n19 Hải Triều, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Viêt Nam', 'PHỞ Hải Triều', '', 'publish', 'closed', 'closed', '', 'pho-ha', '', '', '2021-03-26 02:40:33', '2021-03-26 01:40:33', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=221', 0, 'food', '', 0),
(225, 1, '2021-03-26 02:47:28', '2021-03-26 01:47:28', '<strong>Bún bò huế chú Há </strong>là cái tên không thể thiếu trong danh sách này. Vì hướng vào khách hàng có thu nhập cao nên giá ở đây cũng có phần nhỉnh hơn những quán khác. Bù lại, giá cả đi kèm với chất lượng, món bún tại quán được nhận xét là ngon tuyệt hảo. Ngoài ra, quán  cũng cho kèm nước chấm rất đặc biệt và ngon miệng.\r\nGiờ mở cửa: 06h00 – 03h00', 'Quán Bún Bò Sài Gòn Ngon', '', 'publish', 'closed', 'closed', '', 'quan-bun-bo-sai-gon-ngon', '', '', '2021-03-27 00:08:12', '2021-03-26 23:08:12', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=225', 0, 'food', '', 0),
(230, 1, '2021-03-26 22:00:59', '2021-03-26 21:00:59', '<strong>Ma Big Wave Shrimp,</strong> ke lawelawe nei mākou iā Aloha i kēlā me kēia lā. He punahele kā mākou kalaka meaʻai no nā kamaʻāina a me nā mea kipa pū kekahi, me kahi papa kuhikuhi i piha i nā meaʻai ʻono, kaila Hawaiʻi. Me nā pākaukau he nui, ka nui o ka malu, a me nā mele hoʻoluʻolu, e aloha ʻoe i ke ʻano hoʻomaha. ʻO Chef Kawita ka puʻuwai o kā mākou kalaka Nui Wave Shrimp, me ka hoʻohui ʻana i ke aloha a me nā mea ono ono i kēlā me kēia pā āna e lawelawe ai. ʻIke ʻia mākou no kā mākou papa pāpaʻa, e like me Garlic Shrimp, Peeled Shrimp, Spicy Shrimp, a me Shrimp Fried Rice, akā he nui nā koho ʻē aʻe pū kekahi. ʻO nā iwi ʻaoʻao pōkole, ʻo Rolls Spring, a me kā mākou Mac Salad kaulana e kū pono i kēlā wahi. ʻ saylelo ka poʻe Hawaiʻi ʻo “Ono!”, ʻŌlelo ka poʻe Kepanī “Oishi!”, Akā no ka mea he aha ka ʻōlelo - ʻo ia wale nō ka ʻoi loa. Inā ʻoe e noho ma ka mokupuni a i ʻole ʻoe ma aneʻi e hoʻomaha ai, e hele mai i ka North Shore a ʻike i ka meaʻai ono ma kekahi o nā kahakai Hawaii nani loa. ʻO mākou ʻo Ohana a ʻoluʻolu kūlohelohe!', 'Big Wave Shrimp', '', 'publish', 'closed', 'closed', '', 'big-wave-shrimp', '', '', '2021-03-27 00:17:51', '2021-03-26 23:17:51', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=230', 0, 'food', '', 0),
(233, 1, '2021-03-26 22:07:19', '2021-03-26 21:07:19', 'Ua kapa ʻia, \"\'Ekahi,\" aia ka mural ma kekahi o ka paia waho o Leoku o kā mākou hale ʻaina. ʻO ia ka mua o nā mural unahi nui i hoʻolālā ʻia ma Waipahu, kahi kūlanakauhale kanu kō. ʻO Murals kahi \"ao ākea a hoʻohanohano ʻia i ka manawa kahi e hiki ai i ka ʻōpio a me ke kiʻi ke hui pū i kahi kaiāulu a lilo i\" \'Ekahi. Ua alakaʻi ʻia ka mea pena Mural e Dulce Ramos, ka Hui Hui Pūʻali, 808 Urban Junior Board, Waipahu Division.\r\nPaipai ʻo 808 Urban i ka hoʻomau ʻana i nā kaiāulu loaʻa kālā haʻahaʻa ma o ka hoʻoholo ponoʻī ʻana, ka ʻike politika a me ka moʻomeheu, a me ka ulu alakaʻi ʻana. Ke noi nei ka Polokalamu Murals Kaiāulu o 808 Urban e hoʻonani i nā kaiāulu a paipai i ka haʻaheo o ke kaiāulu.\r\nHōʻike kēia Mural i ka mōʻaukala o ka ulu like ʻana o ke kaiāulu o Waipahu i ko lākou ʻapo ʻana i nā kuʻuna a me ka moʻomeheu like ʻole o nā poʻe.\r\nHōʻike ka Mural i ka huaʻōlelo Hawaiʻi ʻo \"Aloha\" ma o nā hōʻailona o ka wā kahiko a me nā wā o Waipahu. ʻO ka mea mua ka unuhi ʻana o ka logo o ka hale kūʻai ʻo Arakawa, ʻo “A”, a laila ʻo “L” mai ka ahu uahi o Oahu Sugar Mill, ka “O” mai ka puka o kahi \'Ukulele, ka \"H\" mai ke kō i hoʻokahi manawa ua ulu ma ke kula ʻo Ewa a ʻo ka lua “A” i hōʻike ʻia mai ka piko o ke kuahiwi kahi e kahe ai kahi “kahe kahe” i loko o kahi loʻi, kahi o kahi Poi Pounder a me kahi umeke e hoʻomākaukau ai. e hana i ka staple kuʻuna Hawaiʻi, Poi.\r\nʻO Waipahu ka inoa ʻo “Gushing Water” ma ka ʻōlelo Hawaiʻi.\r\nʻO \"Ekahi\" no ka nui, hoʻokahi', 'Highway Inn', '', 'publish', 'closed', 'closed', '', 'highway-inn', '', '', '2021-03-27 00:16:55', '2021-03-26 23:16:55', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=233', 0, 'food', '', 0),
(236, 1, '2021-03-26 22:11:30', '2021-03-26 21:11:30', 'ʻO kā Fairmont Kea Lani hale ʻaina pūlima ʻo Kō e hōʻike ana i nā meaʻai i loaʻa nā makana i hoʻoulu ʻia e ka hōʻiliʻili lehulehu o nā lāhui i hui pū ʻia i ka wā mahi kō o Maui. ʻO nā hanauna ʻono o nā meaʻai kūloko i hoʻokumu paʻa ʻia i ka moʻomeheu a me ka mōʻaukala o ka mokupuni.   Me ka 90% o ka iʻa, pipi a hana kūmole i kūloko, ʻono nō nā ʻono ke kūpaʻa mau lākou.', 'Kō Restaurant', '', 'publish', 'closed', 'closed', '', 'ko-restaurant', '', '', '2021-03-27 00:15:34', '2021-03-26 23:15:34', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=236', 0, 'food', '', 0),
(239, 1, '2021-03-26 22:13:48', '2021-03-26 21:13:48', '<div class=\"av-special-heading av-special-heading-h3 blockquote modern-quote avia-builder-el-2 el_before_av_textblock avia-builder-el-first av-inherit-size \">\r\n<h3 class=\"av-special-heading-tag \">O ka meaʻai maikaʻi loa <span class=\"special_amp\">&amp;</span> ʻO ka ʻike maikaʻi loa ma Maui!</h3>\r\n</div>\r\n<section class=\"av_textblock_section \">\r\n<div class=\"avia_textblock \">Koho ʻia ʻo 100 o nā hale ʻaina maikaʻi loa ma waho ʻo ʻAmelika, ʻo Gannon\'s Restaurant ma Wailea kahi hoʻolauleʻa ʻana i nā ipu kīʻaha a Chef Beverly Gannon e ʻike nui ʻia ai mai kāna mau hale ʻaina ʻo Maui i loaʻa i ka makana (Haliʻimaile General Store a me ka Joe\'s Bar o mua. &amp; Grill) a me nā ipu o kēia wā i hoʻoulu ʻia e nā mea kūloko hou o Hawaii.\r\nHōʻike ka lanai waho i nā hiʻohiʻona panoramic moana a me nā napoʻo kupaianaha a ʻo The Red Bar kahi wahi e hōʻuluʻulu nui nei e hōʻike ana i kahi Happy Hour lōʻihi a me nā mele ola i nā hopena pule\r\nWehe ʻia i kēlā me kēia lā, ʻo Gannon\'s Restaurant kahi wahi kūpono loa ma Wailea no ka poʻe e ʻimi nei i kahi mea kū hoʻokahi a me ke alanui mākaʻikaʻi ʻole.</div>\r\n</section>', 'Gannon\'s', '', 'publish', 'closed', 'closed', '', 'gannons', '', '', '2021-03-26 23:40:30', '2021-03-26 22:40:30', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=239', 0, 'food', '', 0),
(243, 1, '2021-03-26 22:17:39', '2021-03-26 21:17:39', 'Haʻaheo ʻo Suisan i ke ʻano o ke kuʻuna lawaiʻa a me ke kaiāulu o ka lawaiʻa Hawaiʻi, a hoʻohanohano mākou i ko mākou lawaiʻa a me ko lākou ʻohana. Hāʻawi ʻo Suisan Fish Market i nā mea kūʻai kūʻai nui a kūʻai aku me ka iʻa iʻa iʻa i loaʻa. Ma waho aʻe o nā ʻano pelagic, hāʻawi ʻo Suisan i ka nui o nā iʻa ākea nui, kahi waiwai i waiwai nui ʻia. Hoʻoholo piha ʻo Suisan Fish Market me nā lula pekelala a kūloko hoʻi e pili ana i ka lawaiʻa ʻana a me ka mālama ʻana i nā huahana iʻa iʻa.', 'Suisan Fish Market', '', 'publish', 'closed', 'closed', '', 'suisan-fish-market', '', '', '2021-03-27 00:13:19', '2021-03-26 23:13:19', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=243', 0, 'food', '', 0),
(247, 1, '2021-03-26 22:20:53', '2021-03-26 21:20:53', 'I ke kakahiaka nui o ka makahiki 1900\'s Genji Araki, a me nā lāhui Kepani ʻē aʻe, i neʻe mai i Hawaii e hana i nā māla kō. Ma hope o ka pau ʻana o kāna ʻaelike, noho ʻo Genji ma ke awāwa ʻo Waipiʻo a hoʻomaka ʻo ia e mahi kalo. I kona hoʻomaha loa ʻana, ua lawe ke keiki kāne mua a Genji ʻo Tetsuo i ka mahiʻai a hoʻomaka ʻo ia e kūʻai aku i nā lau kalo me ka ʻaʻa a ke kalo. Ua hoʻomaha ʻo Tetsuo mai ka mahiʻai ma 1982 a me kāna mau keikikāne ʻelua, ʻo Sam lāua ʻo Derrick, hoʻomau i ka mahiʻai ʻohana e kūʻai aku nei i nā lau kalo i nā ʻoihana kūloko.', 'Kuhio Grille', '', 'publish', 'closed', 'closed', '', 'kuhio-grille', '', '', '2021-03-26 23:41:05', '2021-03-26 22:41:05', '', 0, 'http://localhost:8888/app/public/?post_type=food&#038;p=247', 0, 'food', '', 0),
(248, 1, '2021-03-26 22:45:22', '2021-03-26 21:45:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:28:\"18 rue de Paris, 75001 Paris\";s:11:\"placeholder\";s:28:\"18 rue de Paris, 75001 Paris\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Address', 'card_address', 'publish', 'closed', 'closed', '', 'field_605e53abaafe2', '', '', '2021-03-26 22:45:22', '2021-03-26 21:45:22', '', 73, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=248', 2, 'acf-field', '', 0),
(249, 1, '2021-03-26 22:45:22', '2021-03-26 21:45:22', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:4;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Advantages', 'card_advantages', 'publish', 'closed', 'closed', '', 'field_605e53cfaafe3', '', '', '2021-03-26 22:49:43', '2021-03-26 21:49:43', '', 73, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=249', 4, 'acf-field', '', 0),
(250, 1, '2021-03-26 22:45:22', '2021-03-26 21:45:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:87:\"Les avantages, ou les infos à savoir le restaurant : Végétarien, Livraison, Halal...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:12:\"Végétarien\";s:11:\"placeholder\";s:5:\"Vegan\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Advantage', 'card_advantage', 'publish', 'closed', 'closed', '', 'field_605e53ecaafe4', '', '', '2021-03-26 22:45:22', '2021-03-26 21:45:22', '', 249, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=250', 0, 'acf-field', '', 0),
(251, 1, '2021-03-26 22:45:22', '2021-03-26 21:45:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:95:\"Ceci est le texte qui defile dans l\'image.\r\nMarquons \"Bon appétit !\" dans la langue concernée\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:14:\"Bon appétit !\";s:11:\"placeholder\";s:14:\"Buon appetito!\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Bon appétit', 'card_bon_appetit', 'publish', 'closed', 'closed', '', 'field_605e5572aafe5', '', '', '2021-03-26 22:49:43', '2021-03-26 21:49:43', '', 73, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&#038;p=251', 5, 'acf-field', '', 0),
(252, 1, '2021-03-26 22:49:43', '2021-03-26 21:49:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:22:\"Numéro de téléphone\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:10:\"0601890909\";s:11:\"placeholder\";s:10:\"0601890909\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phone', 'card_phone', 'publish', 'closed', 'closed', '', 'field_605e56bf02887', '', '', '2021-03-26 22:49:43', '2021-03-26 21:49:43', '', 73, 'http://localhost:8888/forks_and_papillas/app/public/?post_type=acf-field&p=252', 3, 'acf-field', '', 0),
(253, 1, '2021-03-26 22:57:20', '2021-03-26 21:57:20', '', 'Comment-faire-une-pizza-reine', '', 'inherit', 'open', 'closed', '', 'comment-faire-une-pizza-reine', '', '', '2021-03-26 22:57:20', '2021-03-26 21:57:20', '', 78, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/Comment-faire-une-pizza-reine.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2021-03-26 22:57:31', '2021-03-26 21:57:31', 'Mimo aime la vie, la cuisine, recevoir et partager ! L\'Italie pour lui c\'est toute sa vie. Des pasta flambées dans la meule de parmesan aux pizze napolitaines, il arrose le tout de ses cocktails fins et distingués.\r\n\r\nMimo est un oiseau de nuit, ses clients deviennent ses amis, il aime danser et faire danser. Des Rolling Stones à Wes Anderson, tomber amoureux de son univers à votre premier pas chez lui.', 'Gruppo Mimo', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2021-03-26 22:57:31', '2021-03-26 21:57:31', '', 78, 'http://localhost:8888/forks_and_papillas/app/public/?p=254', 0, 'revision', '', 0),
(255, 1, '2021-03-26 23:07:27', '2021-03-26 22:07:27', 'Tọa lạc tại số 52 Mạc Đĩnh Chi, Phường Đa Kao, Quận 1, nhà hàng Pachi Pachi với những món ăn đặc trưng xứ sở Hoa Anh Đào là điểm đến quá đỗi quen thuộc với người Sài Gòn. Hoạt động theo mô hình nhà hàng nướng lẩu (kết hợp phục vụ buffet &amp; gọi món), nhà hàng Pachi Pachi mang đến cho thực khách những trải nghiệm hoàn toàn mới lạ từ cách tẩm ướp, hương vị cho đến cách thưởng thức món ăn.\r\nNhìn vào menu, nhà hàng Pachi Pachi đã mang đến nhiều sự lựa chọn với nguồn nguyên liệu đa dạng với các loại thịt bò nướng, các loại cá, hải sản, thịt gà, cá sấu, đà điểu và các loại lòng gà, lòng bò nướng,... được lựa chọn một cách tỉ mỉ để luôn đảm bảo độ tươi ngon cho thực khách. Bên cạnh sự tươi ngon, các món ăn của nhà hàng lẩu nướng Pachi Pachi được tẩm ướp một cách cầu kỳ với nhiều loại nước sốt mang thương hiệu Nhật Bản như Teriyaki, nước sốt BBQ, nước sốt cay nồng, nước sốt ngọt nhẹ... vừa phong phú vừa đa dạng giúp thực khách có những trải nghiệm vị giác đầy thú vị.', 'Pachi Pachi - Mạc Đĩnh Chi', '', 'inherit', 'closed', 'closed', '', '218-revision-v1', '', '', '2021-03-26 23:07:27', '2021-03-26 22:07:27', '', 218, 'http://localhost:8888/forks_and_papillas/app/public/?p=255', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(256, 1, '2021-03-26 23:08:45', '2021-03-26 22:08:45', 'Tọa lạc tại số 52 Mạc Đĩnh Chi, Phường Đa Kao, Quận 1, nhà hàng Pachi Pachi với những món ăn đặc trưng xứ sở Hoa Anh Đào là điểm đến quá đỗi quen thuộc với người Sài Gòn. Hoạt động theo mô hình nhà hàng nướng lẩu (kết hợp phục vụ buffet &amp; gọi món), nhà hàng Pachi Pachi mang đến cho thực khách những trải nghiệm hoàn toàn mới lạ từ cách tẩm ướp, hương vị cho đến cách thưởng thức món ăn.\r\nNhìn vào menu, nhà hàng Pachi Pachi đã mang đến nhiều sự lựa chọn với nguồn nguyên liệu đa dạng với các loại thịt bò nướng, các loại cá, hải sản, thịt gà, cá sấu, đà điểu và các loại lòng gà, lòng bò nướng,... được lựa chọn một cách tỉ mỉ để luôn đảm bảo độ tươi ngon cho thực khách. Bên cạnh sự tươi ngon, các món ăn của nhà hàng lẩu nướng Pachi Pachi được tẩm ướp một cách cầu kỳ với nhiều loại nước sốt mang thương hiệu Nhật Bản như Teriyaki, nước sốt BBQ, nước sốt cay nồng, nước sốt ngọt nhẹ... vừa phong phú vừa đa dạng giúp thực khách có những trải nghiệm vị giác đầy thú vị.', 'Pachi Pachi - Mạc Đĩnh Chi', '', 'inherit', 'closed', 'closed', '', '218-revision-v1', '', '', '2021-03-26 23:08:45', '2021-03-26 22:08:45', '', 218, 'http://localhost:8888/forks_and_papillas/app/public/?p=256', 0, 'revision', '', 0),
(257, 1, '2021-03-26 23:09:59', '2021-03-26 22:09:59', 'I ke kakahiaka nui o ka makahiki 1900\'s Genji Araki, a me nā lāhui Kepani ʻē aʻe, i neʻe mai i Hawaii e hana i nā māla kō. Ma hope o ka pau ʻana o kāna ʻaelike, noho ʻo Genji ma ke awāwa ʻo Waipiʻo a hoʻomaka ʻo ia e mahi kalo. I kona hoʻomaha loa ʻana, ua lawe ke keiki kāne mua a Genji ʻo Tetsuo i ka mahiʻai a hoʻomaka ʻo ia e kūʻai aku i nā lau kalo me ka ʻaʻa a ke kalo. Ua hoʻomaha ʻo Tetsuo mai ka mahiʻai ma 1982 a me kāna mau keikikāne ʻelua, ʻo Sam lāua ʻo Derrick, hoʻomau i ka mahiʻai ʻohana e kūʻai aku nei i nā lau kalo i nā ʻoihana kūloko.', 'Kuhio Grille', '', 'inherit', 'closed', 'closed', '', '247-revision-v1', '', '', '2021-03-26 23:09:59', '2021-03-26 22:09:59', '', 247, 'http://localhost:8888/forks_and_papillas/app/public/?p=257', 0, 'revision', '', 0),
(258, 1, '2021-03-26 23:16:42', '2021-03-26 22:16:42', 'blabkazhzhhsa', 'Guppo Mimmo', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2021-03-26 23:16:42', '2021-03-26 22:16:42', '', 97, 'http://localhost:8888/forks_and_papillas/app/public/?p=258', 0, 'revision', '', 0),
(259, 1, '2021-03-26 23:17:43', '2021-03-26 22:17:43', 'Haʻaheo ʻo Suisan i ke ʻano o ke kuʻuna lawaiʻa a me ke kaiāulu o ka lawaiʻa Hawaiʻi, a hoʻohanohano mākou i ko mākou lawaiʻa a me ko lākou ʻohana. Hāʻawi ʻo Suisan Fish Market i nā mea kūʻai kūʻai nui a kūʻai aku me ka iʻa iʻa iʻa i loaʻa. Ma waho aʻe o nā ʻano pelagic, hāʻawi ʻo Suisan i ka nui o nā iʻa ākea nui, kahi waiwai i waiwai nui ʻia. Hoʻoholo piha ʻo Suisan Fish Market me nā lula pekelala a kūloko hoʻi e pili ana i ka lawaiʻa ʻana a me ka mālama ʻana i nā huahana iʻa iʻa.', 'Suisan Fish Market', '', 'inherit', 'closed', 'closed', '', '243-revision-v1', '', '', '2021-03-26 23:17:43', '2021-03-26 22:17:43', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/?p=259', 0, 'revision', '', 0),
(260, 1, '2021-03-26 23:29:41', '2021-03-26 22:29:41', '', 'logoo', '', 'inherit', 'open', 'closed', '', 'logoo', '', '', '2021-03-26 23:29:41', '2021-03-26 22:29:41', '', 0, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/logoo.png', 0, 'attachment', 'image/png', 0),
(261, 1, '2021-03-26 23:32:20', '2021-03-26 22:32:20', '<div class=\"av-special-heading av-special-heading-h3 blockquote modern-quote avia-builder-el-2 el_before_av_textblock avia-builder-el-first av-inherit-size \">\r\n<h3 class=\"av-special-heading-tag \">O ka meaʻai maikaʻi loa <span class=\"special_amp\">&amp;</span> ʻO ka ʻike maikaʻi loa ma Maui!</h3>\r\n</div>\r\n<section class=\"av_textblock_section \">\r\n<div class=\"avia_textblock \">Koho ʻia ʻo 100 o nā hale ʻaina maikaʻi loa ma waho ʻo ʻAmelika, ʻo Gannon\'s Restaurant ma Wailea kahi hoʻolauleʻa ʻana i nā ipu kīʻaha a Chef Beverly Gannon e ʻike nui ʻia ai mai kāna mau hale ʻaina ʻo Maui i loaʻa i ka makana (Haliʻimaile General Store a me ka Joe\'s Bar o mua. &amp; Grill) a me nā ipu o kēia wā i hoʻoulu ʻia e nā mea kūloko hou o Hawaii.\r\nHōʻike ka lanai waho i nā hiʻohiʻona panoramic moana a me nā napoʻo kupaianaha a ʻo The Red Bar kahi wahi e hōʻuluʻulu nui nei e hōʻike ana i kahi Happy Hour lōʻihi a me nā mele ola i nā hopena pule\r\nWehe ʻia i kēlā me kēia lā, ʻo Gannon\'s Restaurant kahi wahi kūpono loa ma Wailea no ka poʻe e ʻimi nei i kahi mea kū hoʻokahi a me ke alanui mākaʻikaʻi ʻole.</div>\r\n</section>', 'Gannon\'s', '', 'inherit', 'closed', 'closed', '', '239-revision-v1', '', '', '2021-03-26 23:32:20', '2021-03-26 22:32:20', '', 239, 'http://localhost:8888/forks_and_papillas/app/public/?p=261', 0, 'revision', '', 0),
(262, 1, '2021-03-26 23:49:29', '2021-03-26 22:49:29', '<h5 class=\"card-title\">Nasi Berkat</h5>\r\n<p class=\"card-text\">Mini riz indonésien Rijsttafel avec combinaison de bœuf \"Empal\", \"kering tempe\", \"urap\", oseng tahu tempe, teri medan, cornichons et omelette en tranches</p>', 'The Remboulan', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2021-03-26 23:49:29', '2021-03-26 22:49:29', '', 99, 'http://localhost:8888/forks_and_papillas/app/public/?p=262', 0, 'revision', '', 0),
(263, 1, '2021-03-27 00:07:40', '2021-03-26 23:07:40', '<strong>Bún bò huế chú Há </strong>là cái tên không thể thiếu trong danh sách này. Vì hướng vào khách hàng có thu nhập cao nên giá ở đây cũng có phần nhỉnh hơn những quán khác. Bù lại, giá cả đi kèm với chất lượng, món bún tại quán được nhận xét là ngon tuyệt hảo. Ngoài ra, quán  cũng cho kèm nước chấm rất đặc biệt và ngon miệng.\r\nGiờ mở cửa: 06h00 – 03h00', 'Quán Bún Bò Sài Gòn Ngon', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-03-27 00:07:40', '2021-03-26 23:07:40', '', 225, 'http://localhost:8888/forks_and_papillas/app/public/?p=263', 0, 'revision', '', 0),
(264, 1, '2021-03-27 00:11:44', '2021-03-26 23:11:44', '', 'auberge', '', 'inherit', 'open', 'closed', '', 'auberge', '', '', '2021-03-27 00:11:44', '2021-03-26 23:11:44', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/auberge-1.png', 0, 'attachment', 'image/png', 0),
(265, 1, '2021-03-27 00:11:45', '2021-03-26 23:11:45', '', 'Bandar', '', 'inherit', 'open', 'closed', '', 'bandar', '', '', '2021-03-27 00:11:45', '2021-03-26 23:11:45', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/Bandar-1.png', 0, 'attachment', 'image/png', 0),
(266, 1, '2021-03-27 00:11:46', '2021-03-26 23:11:46', '', 'Beautika', '', 'inherit', 'open', 'closed', '', 'beautika-2', '', '', '2021-03-27 00:11:46', '2021-03-26 23:11:46', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/Beautika-1.png', 0, 'attachment', 'image/png', 0),
(267, 1, '2021-03-27 00:11:47', '2021-03-26 23:11:47', '', 'bigshave', '', 'inherit', 'open', 'closed', '', 'bigshave', '', '', '2021-03-27 00:11:47', '2021-03-26 23:11:47', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/bigshave-1.png', 0, 'attachment', 'image/png', 0),
(268, 1, '2021-03-27 00:11:49', '2021-03-26 23:11:49', '', 'bunbohue', '', 'inherit', 'open', 'closed', '', 'bunbohue', '', '', '2021-03-27 00:11:49', '2021-03-26 23:11:49', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/bunbohue-1.png', 0, 'attachment', 'image/png', 0),
(269, 1, '2021-03-27 00:11:50', '2021-03-26 23:11:50', '', 'chantecler', '', 'inherit', 'open', 'closed', '', 'chantecler', '', '', '2021-03-27 00:11:50', '2021-03-26 23:11:50', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/chantecler-1.png', 0, 'attachment', 'image/png', 0),
(270, 1, '2021-03-27 00:11:51', '2021-03-26 23:11:51', '', 'cipassoitalia', '', 'inherit', 'open', 'closed', '', 'cipassoitalia-2', '', '', '2021-03-27 00:11:51', '2021-03-26 23:11:51', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/cipassoitalia-1.png', 0, 'attachment', 'image/png', 0),
(271, 1, '2021-03-27 00:11:52', '2021-03-26 23:11:52', '', 'DCP', '', 'inherit', 'open', 'closed', '', 'dcp', '', '', '2021-03-27 00:11:52', '2021-03-26 23:11:52', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/DCP-1.png', 0, 'attachment', 'image/png', 0),
(272, 1, '2021-03-27 00:11:53', '2021-03-26 23:11:53', '', 'enotecaartisti', '', 'inherit', 'open', 'closed', '', 'enotecaartisti-2', '', '', '2021-03-27 00:11:53', '2021-03-26 23:11:53', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/enotecaartisti-1.png', 0, 'attachment', 'image/png', 0),
(273, 1, '2021-03-27 00:11:54', '2021-03-26 23:11:54', '', 'franceetfushia', '', 'inherit', 'open', 'closed', '', 'franceetfushia', '', '', '2021-03-27 00:11:54', '2021-03-26 23:11:54', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/franceetfushia-1.png', 0, 'attachment', 'image/png', 0),
(274, 1, '2021-03-27 00:11:56', '2021-03-26 23:11:56', '', 'ga', '', 'inherit', 'open', 'closed', '', 'ga', '', '', '2021-03-27 00:11:56', '2021-03-26 23:11:56', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/ga-1.png', 0, 'attachment', 'image/png', 0),
(275, 1, '2021-03-27 00:11:57', '2021-03-26 23:11:57', '', 'grill', '', 'inherit', 'open', 'closed', '', 'grill', '', '', '2021-03-27 00:11:57', '2021-03-26 23:11:57', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/grill-1.png', 0, 'attachment', 'image/png', 0),
(276, 1, '2021-03-27 00:11:59', '2021-03-26 23:11:59', '', 'henshin', '', 'inherit', 'open', 'closed', '', 'henshin', '', '', '2021-03-27 00:11:59', '2021-03-26 23:11:59', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/henshin-1.png', 0, 'attachment', 'image/png', 0),
(277, 1, '2021-03-27 00:12:00', '2021-03-26 23:12:00', '', 'hero_dktp', '', 'inherit', 'open', 'closed', '', 'hero_dktp', '', '', '2021-03-27 00:12:00', '2021-03-26 23:12:00', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/hero_dktp-1.png', 0, 'attachment', 'image/png', 0),
(278, 1, '2021-03-27 00:12:01', '2021-03-26 23:12:01', '', 'hero_mbl', '', 'inherit', 'open', 'closed', '', 'hero_mbl', '', '', '2021-03-27 00:12:01', '2021-03-26 23:12:01', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/hero_mbl-1.png', 0, 'attachment', 'image/png', 0),
(279, 1, '2021-03-27 00:12:02', '2021-03-26 23:12:02', '', 'hight', '', 'inherit', 'open', 'closed', '', 'hight', '', '', '2021-03-27 00:12:02', '2021-03-26 23:12:02', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/hight-1.png', 0, 'attachment', 'image/png', 0),
(280, 1, '2021-03-27 00:12:03', '2021-03-26 23:12:03', '', 'hue', '', 'inherit', 'open', 'closed', '', 'hue', '', '', '2021-03-27 00:12:03', '2021-03-26 23:12:03', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/hue-1.png', 0, 'attachment', 'image/png', 0),
(281, 1, '2021-03-27 00:12:05', '2021-03-26 23:12:05', '', 'immagine', '', 'inherit', 'open', 'closed', '', 'immagine', '', '', '2021-03-27 00:12:05', '2021-03-26 23:12:05', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/immagine-1.png', 0, 'attachment', 'image/png', 0),
(282, 1, '2021-03-27 00:12:06', '2021-03-26 23:12:06', '', 'jacques-faussat', '', 'inherit', 'open', 'closed', '', 'jacques-faussat-2', '', '', '2021-03-27 00:12:06', '2021-03-26 23:12:06', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/jacques-faussat-1.png', 0, 'attachment', 'image/png', 0),
(283, 1, '2021-03-27 00:12:07', '2021-03-26 23:12:07', '', 'ko', '', 'inherit', 'open', 'closed', '', 'ko', '', '', '2021-03-27 00:12:07', '2021-03-26 23:12:07', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/ko-1.png', 0, 'attachment', 'image/png', 0),
(284, 1, '2021-03-27 00:12:09', '2021-03-26 23:12:09', '', 'langosteria', '', 'inherit', 'open', 'closed', '', 'langosteria-2', '', '', '2021-03-27 00:12:09', '2021-03-26 23:12:09', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/langosteria-1.png', 0, 'attachment', 'image/png', 0),
(285, 1, '2021-03-27 00:12:10', '2021-03-26 23:12:10', '', 'lemaoubye', '', 'inherit', 'open', 'closed', '', 'lemaoubye', '', '', '2021-03-27 00:12:10', '2021-03-26 23:12:10', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/lemaoubye-1.png', 0, 'attachment', 'image/png', 0),
(286, 1, '2021-03-27 00:12:11', '2021-03-26 23:12:11', '', 'lepointdevue', '', 'inherit', 'open', 'closed', '', 'lepointdevue', '', '', '2021-03-27 00:12:11', '2021-03-26 23:12:11', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/lepointdevue-1.png', 0, 'attachment', 'image/png', 0),
(287, 1, '2021-03-27 00:12:12', '2021-03-26 23:12:12', '', 'LesPetitsParisiens', '', 'inherit', 'open', 'closed', '', 'lespetitsparisiens', '', '', '2021-03-27 00:12:12', '2021-03-26 23:12:12', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/LesPetitsParisiens-1.png', 0, 'attachment', 'image/png', 0),
(288, 1, '2021-03-27 00:12:13', '2021-03-26 23:12:13', '', 'mandoline', '', 'inherit', 'open', 'closed', '', 'mandoline', '', '', '2021-03-27 00:12:13', '2021-03-26 23:12:13', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/mandoline-1.png', 0, 'attachment', 'image/png', 0),
(289, 1, '2021-03-27 00:12:14', '2021-03-26 23:12:14', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-03-27 00:12:14', '2021-03-26 23:12:14', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/logo-3.png', 0, 'attachment', 'image/png', 0),
(290, 1, '2021-03-27 00:12:14', '2021-03-26 23:12:14', '', 'logo-2', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2021-03-27 00:12:14', '2021-03-26 23:12:14', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/logo-2-1.png', 0, 'attachment', 'image/png', 0),
(291, 1, '2021-03-27 00:12:15', '2021-03-26 23:12:15', '', 'logo-1', '', 'inherit', 'open', 'closed', '', 'logo-1', '', '', '2021-03-27 00:12:15', '2021-03-26 23:12:15', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/logo-1-1.png', 0, 'attachment', 'image/png', 0),
(292, 1, '2021-03-27 00:12:15', '2021-03-26 23:12:15', '', 'marmite', '', 'inherit', 'open', 'closed', '', 'marmite', '', '', '2021-03-27 00:12:15', '2021-03-26 23:12:15', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/marmite-1.png', 0, 'attachment', 'image/png', 0),
(293, 1, '2021-03-27 00:12:16', '2021-03-26 23:12:16', '', 'marziali', '', 'inherit', 'open', 'closed', '', 'marziali', '', '', '2021-03-27 00:12:16', '2021-03-26 23:12:16', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/marziali-1.png', 0, 'attachment', 'image/png', 0),
(294, 1, '2021-03-27 00:12:17', '2021-03-26 23:12:17', '', 'pachi', '', 'inherit', 'open', 'closed', '', 'pachi', '', '', '2021-03-27 00:12:17', '2021-03-26 23:12:17', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/pachi-1.png', 0, 'attachment', 'image/png', 0),
(295, 1, '2021-03-27 00:12:18', '2021-03-26 23:12:18', '', 'papillion', '', 'inherit', 'open', 'closed', '', 'papillion', '', '', '2021-03-27 00:12:18', '2021-03-26 23:12:18', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/papillion-1.png', 0, 'attachment', 'image/png', 0),
(296, 1, '2021-03-27 00:12:19', '2021-03-26 23:12:19', '', 'pho', '', 'inherit', 'open', 'closed', '', 'pho', '', '', '2021-03-27 00:12:19', '2021-03-26 23:12:19', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/pho-1.png', 0, 'attachment', 'image/png', 0),
(297, 1, '2021-03-27 00:12:24', '2021-03-26 23:12:24', '', 'quanan', '', 'inherit', 'open', 'closed', '', 'quanan', '', '', '2021-03-27 00:12:24', '2021-03-26 23:12:24', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/quanan-1.png', 0, 'attachment', 'image/png', 0),
(298, 1, '2021-03-27 00:12:26', '2021-03-26 23:12:26', '', 'Rectangle-31', '', 'inherit', 'open', 'closed', '', 'rectangle-31', '', '', '2021-03-27 00:12:26', '2021-03-26 23:12:26', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/Rectangle-31-1.png', 0, 'attachment', 'image/png', 0),
(299, 1, '2021-03-27 00:12:27', '2021-03-26 23:12:27', '', 'refletdesiles', '', 'inherit', 'open', 'closed', '', 'refletdesiles', '', '', '2021-03-27 00:12:27', '2021-03-26 23:12:27', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/refletdesiles-1.png', 0, 'attachment', 'image/png', 0),
(300, 1, '2021-03-27 00:12:28', '2021-03-26 23:12:28', '', 'sate', '', 'inherit', 'open', 'closed', '', 'sate', '', '', '2021-03-27 00:12:28', '2021-03-26 23:12:28', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/sate-1.png', 0, 'attachment', 'image/png', 0),
(301, 1, '2021-03-27 00:12:29', '2021-03-26 23:12:29', '', 'skyl', '', 'inherit', 'open', 'closed', '', 'skyl', '', '', '2021-03-27 00:12:29', '2021-03-26 23:12:29', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/skyl-1.png', 0, 'attachment', 'image/png', 0),
(302, 1, '2021-03-27 00:12:30', '2021-03-26 23:12:30', '', 'sun', '', 'inherit', 'open', 'closed', '', 'sun', '', '', '2021-03-27 00:12:30', '2021-03-26 23:12:30', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/sun-1.png', 0, 'attachment', 'image/png', 0),
(303, 1, '2021-03-27 00:12:31', '2021-03-26 23:12:31', '', 'tema', '', 'inherit', 'open', 'closed', '', 'tema', '', '', '2021-03-27 00:12:31', '2021-03-26 23:12:31', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/tema-1.png', 0, 'attachment', 'image/png', 0),
(304, 1, '2021-03-27 00:12:32', '2021-03-26 23:12:32', '', 'trung', '', 'inherit', 'open', 'closed', '', 'trung', '', '', '2021-03-27 00:12:32', '2021-03-26 23:12:32', '', 243, 'http://localhost:8888/forks_and_papillas/app/public/wp-content/uploads/2021/03/trung-1.png', 0, 'attachment', 'image/png', 0),
(305, 1, '2021-03-27 00:14:56', '2021-03-26 23:14:56', '<strong>Ma Big Wave Shrimp,</strong> ke lawelawe nei mākou iā Aloha i kēlā me kēia lā. He punahele kā mākou kalaka meaʻai no nā kamaʻāina a me nā mea kipa pū kekahi, me kahi papa kuhikuhi i piha i nā meaʻai ʻono, kaila Hawaiʻi. Me nā pākaukau he nui, ka nui o ka malu, a me nā mele hoʻoluʻolu, e aloha ʻoe i ke ʻano hoʻomaha. ʻO Chef Kawita ka puʻuwai o kā mākou kalaka Nui Wave Shrimp, me ka hoʻohui ʻana i ke aloha a me nā mea ono ono i kēlā me kēia pā āna e lawelawe ai. ʻIke ʻia mākou no kā mākou papa pāpaʻa, e like me Garlic Shrimp, Peeled Shrimp, Spicy Shrimp, a me Shrimp Fried Rice, akā he nui nā koho ʻē aʻe pū kekahi. ʻO nā iwi ʻaoʻao pōkole, ʻo Rolls Spring, a me kā mākou Mac Salad kaulana e kū pono i kēlā wahi. ʻ saylelo ka poʻe Hawaiʻi ʻo “Ono!”, ʻŌlelo ka poʻe Kepanī “Oishi!”, Akā no ka mea he aha ka ʻōlelo - ʻo ia wale nō ka ʻoi loa. Inā ʻoe e noho ma ka mokupuni a i ʻole ʻoe ma aneʻi e hoʻomaha ai, e hele mai i ka North Shore a ʻike i ka meaʻai ono ma kekahi o nā kahakai Hawaii nani loa. ʻO mākou ʻo Ohana a ʻoluʻolu kūlohelohe!', 'Big Wave Shrimp', '', 'inherit', 'closed', 'closed', '', '230-revision-v1', '', '', '2021-03-27 00:14:56', '2021-03-26 23:14:56', '', 230, 'http://localhost:8888/forks_and_papillas/app/public/?p=305', 0, 'revision', '', 0),
(306, 1, '2021-03-27 00:15:34', '2021-03-26 23:15:34', 'ʻO kā Fairmont Kea Lani hale ʻaina pūlima ʻo Kō e hōʻike ana i nā meaʻai i loaʻa nā makana i hoʻoulu ʻia e ka hōʻiliʻili lehulehu o nā lāhui i hui pū ʻia i ka wā mahi kō o Maui. ʻO nā hanauna ʻono o nā meaʻai kūloko i hoʻokumu paʻa ʻia i ka moʻomeheu a me ka mōʻaukala o ka mokupuni.   Me ka 90% o ka iʻa, pipi a hana kūmole i kūloko, ʻono nō nā ʻono ke kūpaʻa mau lākou.', 'Kō Restaurant', '', 'inherit', 'closed', 'closed', '', '236-revision-v1', '', '', '2021-03-27 00:15:34', '2021-03-26 23:15:34', '', 236, 'http://localhost:8888/forks_and_papillas/app/public/?p=306', 0, 'revision', '', 0),
(307, 1, '2021-03-27 00:16:46', '2021-03-26 23:16:46', 'Ua kapa ʻia, \"\'Ekahi,\" aia ka mural ma kekahi o ka paia waho o Leoku o kā mākou hale ʻaina. ʻO ia ka mua o nā mural unahi nui i hoʻolālā ʻia ma Waipahu, kahi kūlanakauhale kanu kō. ʻO Murals kahi \"ao ākea a hoʻohanohano ʻia i ka manawa kahi e hiki ai i ka ʻōpio a me ke kiʻi ke hui pū i kahi kaiāulu a lilo i\" \'Ekahi. Ua alakaʻi ʻia ka mea pena Mural e Dulce Ramos, ka Hui Hui Pūʻali, 808 Urban Junior Board, Waipahu Division.\r\nPaipai ʻo 808 Urban i ka hoʻomau ʻana i nā kaiāulu loaʻa kālā haʻahaʻa ma o ka hoʻoholo ponoʻī ʻana, ka ʻike politika a me ka moʻomeheu, a me ka ulu alakaʻi ʻana. Ke noi nei ka Polokalamu Murals Kaiāulu o 808 Urban e hoʻonani i nā kaiāulu a paipai i ka haʻaheo o ke kaiāulu.\r\nHōʻike kēia Mural i ka mōʻaukala o ka ulu like ʻana o ke kaiāulu o Waipahu i ko lākou ʻapo ʻana i nā kuʻuna a me ka moʻomeheu like ʻole o nā poʻe.\r\nHōʻike ka Mural i ka huaʻōlelo Hawaiʻi ʻo \"Aloha\" ma o nā hōʻailona o ka wā kahiko a me nā wā o Waipahu. ʻO ka mea mua ka unuhi ʻana o ka logo o ka hale kūʻai ʻo Arakawa, ʻo “A”, a laila ʻo “L” mai ka ahu uahi o Oahu Sugar Mill, ka “O” mai ka puka o kahi \'Ukulele, ka \"H\" mai ke kō i hoʻokahi manawa ua ulu ma ke kula ʻo Ewa a ʻo ka lua “A” i hōʻike ʻia mai ka piko o ke kuahiwi kahi e kahe ai kahi “kahe kahe” i loko o kahi loʻi, kahi o kahi Poi Pounder a me kahi umeke e hoʻomākaukau ai. e hana i ka staple kuʻuna Hawaiʻi, Poi.\r\nʻO Waipahu ka inoa ʻo “Gushing Water” ma ka ʻōlelo Hawaiʻi.\r\nʻO \"Ekahi\" no ka nui, hoʻokahi', 'Highway Inn', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2021-03-27 00:16:46', '2021-03-26 23:16:46', '', 233, 'http://localhost:8888/forks_and_papillas/app/public/?p=307', 0, 'revision', '', 0);

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
(14, 'Cuisine Française', 'frenchfood', 0),
(15, 'Cuisine Italienne', 'italianfood', 0),
(16, 'Cuisine Orientale', 'orientalfood', 0),
(17, 'Cuisine Créole', 'creolefood', 0),
(18, 'Cuisine Indonésienne', 'indonesianfood', 0),
(19, 'Cuisine Vietnamienne', 'vietnamianfood', 0),
(21, 'Cuisine Hawaïenne', 'haleiwafood', 0);

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
(58, 15, 0),
(78, 15, 0),
(80, 14, 0),
(93, 17, 0),
(94, 17, 0),
(95, 17, 0),
(96, 15, 0),
(97, 15, 0),
(98, 17, 0),
(99, 18, 0),
(115, 14, 0),
(161, 14, 0),
(205, 17, 0),
(209, 19, 0),
(215, 19, 0),
(218, 19, 0),
(221, 19, 0),
(225, 19, 0),
(230, 21, 0),
(233, 21, 0),
(236, 21, 0),
(239, 21, 0),
(243, 21, 0),
(247, 21, 0);

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
(14, 14, 'type_cuisine', '', 0, 3),
(15, 15, 'type_cuisine', '', 0, 3),
(16, 16, 'type_cuisine', '', 0, 1),
(17, 17, 'type_cuisine', '', 0, 5),
(18, 18, 'type_cuisine', '', 0, 2),
(19, 19, 'type_cuisine', '', 0, 6),
(21, 21, 'type_cuisine', '', 0, 6);

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
(16, 1, 'session_tokens', 'a:1:{s:64:\"5e95c58ef86f1e0ec18dd901f842667f5272d407048b52934a1a9e78a950e075\";a:4:{s:10:\"expiration\";i:1616965347;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36\";s:5:\"login\";i:1616792547;}}'),
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
(48, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=tinymce&posts_list_mode=list'),
(49, 1, 'wp_user-settings-time', '1616798474'),
(50, 1, 'closedpostboxes_frenchfood', 'a:0:{}'),
(51, 1, 'metaboxhidden_frenchfood', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(52, 1, 'edit_food_per_page', '50'),
(53, 1, 'closedpostboxes_food', 'a:0:{}'),
(54, 1, 'metaboxhidden_food', 'a:0:{}');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=740;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
