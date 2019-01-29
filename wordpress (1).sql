-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30-Jan-2019 às 00:14
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1547764299');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-17 18:42:03', '2019-01-17 20:42:03', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/wordpress', 'yes'),
(2, 'home', 'http://127.0.0.1/wordpress', 'yes'),
(3, 'blogname', 'Restaurante Jr', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'wagnerjr@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:65:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/Restaurante/style.css\";i:1;s:67:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/book-rev-lite/style.css\";i:2;s:68:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/book-rev-lite/footer.php\";i:3;s:68:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/book-rev-lite/header.php\";i:4;s:72:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/book-rev-lite/front-page.php\";}', 'no'),
(40, 'template', 'Restaurante', 'yes'),
(41, 'stylesheet', 'Restaurante', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pt_BR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:6:\"meta-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:13:\"media_image-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:13:\"custom_html-4\";}s:9:\"sidebar-3\";a:1:{i:0;s:13:\"custom_html-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:2:{i:2;a:15:{s:13:\"attachment_id\";i:63;s:3:\"url\";s:76:\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/screenshot-300x214.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'nonce_key', '#vS7L=9^ `wf@-5bao&OU;1!ZZf)ncZ{L3k3kH.EnRd@*YWXbJ<#J;c,(@3`sNh1', 'no'),
(110, 'nonce_salt', '|#rGhf2EN5`The^jgl6Kv0!coM>fCbZ_Xc@4ncgMWw50}G>!RHihkB~4O([>;hg_', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:3:{i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:51:\"<a>Lieu 19 Avenue Kléber, 75116 Paris, França</a>\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:29:\"<a>©RestauranteJr 2019. </a>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'cron', 'a:5:{i:1548801724;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1548837724;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1548880946;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548883177;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547759018;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(123, 'auth_key', 'TSxw^K%Ad{MtO!O=7D=SaaPE9^+C>EU+>p8bHp,F^)Wn=nwmCj2A mFxO5n.DKh$', 'no'),
(124, 'auth_salt', '~2n6Hd>VyzRdS7m$Y*@Jnv*i-d&1^JAW3`?EfcAUidhJsI;}P,qqy3VajU]w[$.B', 'no'),
(125, 'logged_in_key', 'aF#E)[Ob`0HnV#,!r3VTzj8PoiRswLB) c=/th:+P?`v<h=2^ZPMflrc%ows-Y#}', 'no'),
(126, 'logged_in_salt', 'i5kPRFa9d@qm=CyKXE{:9i:/5neBk_kf8QysL#{A%?wO?]V#48*n97HF#n=<:LN}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(150, 'current_theme', '', 'yes'),
(151, 'theme_mods_book-rev-lite', 'a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"secondary\";i:4;s:7:\"primary\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:13:\"mp_slider_cat\";s:1:\"1\";s:10:\"mp_ffc_cat\";s:1:\"1\";s:11:\"mp_hotd_cat\";s:1:\"1\";s:14:\"mp_layout_type\";s:12:\"sidebarright\";s:18:\"footer-logo-upload\";s:86:\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/icones_Livros-e1547764810691.png\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548189944;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:29:\"book_rev_lite_primary_sidebar\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";}s:28:\"book_rev_lite_footer_sidebar\";a:0:{}}}}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(158, 'new_admin_email', 'wagnerjr@gmail.com', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:4;}}', 'yes'),
(177, 'recently_activated', 'a:0:{}', 'yes'),
(214, 'theme_mods_Meu-tema', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548369795;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:6:\"meta-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:17:\"recent-comments-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:12:\"categories-3\";}s:9:\"sidebar-3\";a:1:{i:0;s:10:\"nav_menu-2\";}}}}', 'yes'),
(241, 'theme_mods_Restaurante', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548369792;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:6:\"meta-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:17:\"recent-comments-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:12:\"categories-3\";}s:9:\"sidebar-3\";a:1:{i:0;s:10:\"nav_menu-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(263, 'category_children', 'a:0:{}', 'yes'),
(268, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.0.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1548794542;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(269, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1548797421;s:7:\"checked\";a:6:{s:8:\"Meu-tema\";s:0:\"\";s:11:\"Restaurante\";s:0:\"\";s:13:\"book-rev-lite\";s:6:\"1.7.10\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(270, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1548794544;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(277, '_site_transient_timeout_theme_roots', '1548797618', 'no'),
(278, '_site_transient_theme_roots', 'a:6:{s:8:\"Meu-tema\";s:7:\"/themes\";s:11:\"Restaurante\";s:7:\"/themes\";s:13:\"book-rev-lite\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(22, 8, '_edit_lock', '1548801266:1'),
(32, 2, '_wp_trash_meta_status', 'publish'),
(33, 2, '_wp_trash_meta_time', '1547760052'),
(34, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(35, 12, '_edit_lock', '1548793008:1'),
(73, 19, '_menu_item_type', 'custom'),
(74, 19, '_menu_item_menu_item_parent', '0'),
(75, 19, '_menu_item_object_id', '19'),
(76, 19, '_menu_item_object', 'custom'),
(77, 19, '_menu_item_target', ''),
(78, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 19, '_menu_item_xfn', ''),
(80, 19, '_menu_item_url', 'http://127.0.0.1/wordpress'),
(81, 20, '_menu_item_type', 'post_type'),
(82, 20, '_menu_item_menu_item_parent', '0'),
(83, 20, '_menu_item_object_id', '12'),
(84, 20, '_menu_item_object', 'page'),
(85, 20, '_menu_item_target', ''),
(86, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 20, '_menu_item_xfn', ''),
(88, 20, '_menu_item_url', ''),
(89, 21, '_menu_item_type', 'post_type'),
(90, 21, '_menu_item_menu_item_parent', '0'),
(91, 21, '_menu_item_object_id', '8'),
(92, 21, '_menu_item_object', 'page'),
(93, 21, '_menu_item_target', ''),
(94, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 21, '_menu_item_xfn', ''),
(96, 21, '_menu_item_url', ''),
(97, 18, '_wp_trash_meta_status', 'publish'),
(98, 18, '_wp_trash_meta_time', '1547760509'),
(99, 22, '_edit_lock', '1547763841:1'),
(102, 24, '_edit_lock', '1548370301:1'),
(105, 26, '_edit_lock', '1548798793:1'),
(108, 28, '_edit_lock', '1548798574:1'),
(111, 30, '_wp_attached_file', '2019/01/download.png'),
(112, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:661;s:4:\"file\";s:20:\"2019/01/download.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"download-195x300.png\";s:5:\"width\";i:195;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 35, '_wp_attached_file', '2019/01/download-1.png'),
(119, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:519;s:4:\"file\";s:22:\"2019/01/download-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"download-1-249x300.png\";s:5:\"width\";i:249;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 37, '_edit_lock', '1547761750:1'),
(130, 37, '_wp_trash_meta_status', 'publish'),
(131, 37, '_wp_trash_meta_time', '1547761768'),
(132, 39, '_wp_attached_file', '2019/01/download.jpg'),
(133, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:716;s:4:\"file\";s:20:\"2019/01/download.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"download-180x300.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 24, '_thumbnail_id', '39'),
(137, 42, '_wp_attached_file', '2019/01/download-1.jpg'),
(138, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:614;s:4:\"file\";s:22:\"2019/01/download-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"download-1-210x300.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 22, '_thumbnail_id', '42'),
(142, 1, '_edit_lock', '1547764034:1'),
(143, 45, '_wp_attached_file', '2019/01/download-2.jpg'),
(144, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:644;s:4:\"file\";s:22:\"2019/01/download-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"download-2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 1, '_thumbnail_id', '45'),
(151, 48, '_wp_attached_file', '2019/01/icones_Livros-e1547764810691.png'),
(152, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:40:\"2019/01/icones_Livros-e1547764810691.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"icones_Livros-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"icones_Livros-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 48, '_edit_lock', '1547765271:1'),
(154, 48, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"icones_Livros.png\";}s:18:\"full-1547764810691\";a:3:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:32:\"icones_Livros-e1547764803664.png\";}}'),
(155, 48, '_edit_last', '1'),
(161, 51, '_edit_lock', '1547765304:1'),
(162, 51, '_wp_trash_meta_status', 'publish'),
(163, 51, '_wp_trash_meta_time', '1547765329'),
(164, 54, '_edit_lock', '1547766038:1'),
(165, 54, '_wp_trash_meta_status', 'publish'),
(166, 54, '_wp_trash_meta_time', '1547766042'),
(167, 22, '_wp_trash_meta_status', 'publish'),
(168, 22, '_wp_trash_meta_time', '1548370289'),
(169, 22, '_wp_desired_post_slug', 'q'),
(170, 1, '_wp_trash_meta_status', 'publish'),
(171, 1, '_wp_trash_meta_time', '1548370289'),
(172, 1, '_wp_desired_post_slug', 'ola-mundo'),
(173, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:5:\"trash\";}'),
(176, 59, '_edit_lock', '1548370322:1'),
(179, 61, '_edit_lock', '1548370200:1'),
(182, 63, '_wp_attached_file', '2019/01/screenshot-e1548370621615.jpg'),
(183, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:71;s:4:\"file\";s:37:\"2019/01/screenshot-e1548370621615.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"screenshot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"screenshot-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 63, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:650;s:6:\"height\";i:463;s:4:\"file\";s:14:\"screenshot.jpg\";}}'),
(185, 64, '_wp_trash_meta_status', 'publish'),
(186, 64, '_wp_trash_meta_time', '1548372271'),
(187, 67, '_wp_attached_file', '2019/01/instagram.png'),
(188, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:24;s:6:\"height\";i:24;s:4:\"file\";s:21:\"2019/01/instagram.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 73, '_edit_lock', '1548793386:1'),
(190, 75, '_edit_lock', '1548797272:1'),
(191, 76, '_menu_item_type', 'post_type'),
(192, 76, '_menu_item_menu_item_parent', '0'),
(193, 76, '_menu_item_object_id', '75'),
(194, 76, '_menu_item_object', 'page'),
(195, 76, '_menu_item_target', ''),
(196, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 76, '_menu_item_xfn', ''),
(198, 76, '_menu_item_url', ''),
(199, 83, '_wp_attached_file', '2019/01/l-o-restaurante-marquise-3b9f9.jpg'),
(200, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:612;s:6:\"height\";i:344;s:4:\"file\";s:42:\"2019/01/l-o-restaurante-marquise-3b9f9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"l-o-restaurante-marquise-3b9f9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"l-o-restaurante-marquise-3b9f9-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 84, '_wp_attached_file', '2019/01/1541699493929-cozinheiro-2.jpg'),
(202, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:38:\"2019/01/1541699493929-cozinheiro-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"1541699493929-cozinheiro-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"1541699493929-cozinheiro-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 87, '_edit_lock', '1548796257:1'),
(204, 89, '_wp_attached_file', '2019/01/cc25saladas_129.jpg'),
(205, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:468;s:4:\"file\";s:27:\"2019/01/cc25saladas_129.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cc25saladas_129-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cc25saladas_129-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 90, '_wp_attached_file', '2019/01/comida3.jpg'),
(207, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:440;s:4:\"file\";s:19:\"2019/01/comida3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"comida3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"comida3-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"comida3-768x338.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 91, '_wp_attached_file', '2019/01/macarrao.jpg'),
(209, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2019/01/macarrao.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"macarrao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"macarrao-300x266.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 92, '_wp_attached_file', '2019/01/penne-com-provolone-alho-po.jpg'),
(211, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:680;s:4:\"file\";s:39:\"2019/01/penne-com-provolone-alho-po.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"penne-com-provolone-alho-po-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"penne-com-provolone-alho-po-274x300.jpg\";s:5:\"width\";i:274;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 93, '_wp_attached_file', '2019/01/salada-de-quinua-real-5203.jpg'),
(213, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:685;s:4:\"file\";s:38:\"2019/01/salada-de-quinua-real-5203.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"salada-de-quinua-real-5203-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"salada-de-quinua-real-5203-272x300.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 100, '_wp_attached_file', '2019/01/restaurante.jpg'),
(215, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:440;s:4:\"file\";s:23:\"2019/01/restaurante.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"restaurante-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"restaurante-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"restaurante-768x338.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 24, '_wp_trash_meta_status', 'publish'),
(225, 24, '_wp_trash_meta_time', '1548797921'),
(226, 24, '_wp_desired_post_slug', 'a'),
(227, 108, '_wp_attached_file', '2019/01/macarrao-1.jpg'),
(228, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:550;s:4:\"file\";s:22:\"2019/01/macarrao-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"macarrao-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"macarrao-1-300x266.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 111, '_edit_lock', '1548798243:1'),
(238, 113, '_edit_lock', '1548798548:1'),
(247, 116, '_edit_lock', '1548798426:1'),
(252, 118, '_edit_lock', '1548798482:1'),
(253, 119, '_edit_lock', '1548798507:1'),
(258, 113, '_thumbnail_id', '108'),
(259, 122, '_edit_lock', '1548798546:1'),
(270, 26, '_thumbnail_id', '93'),
(271, 93, '_edit_lock', '1548798766:1'),
(272, 108, '_edit_lock', '1548798768:1'),
(273, 93, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-17 18:42:03', '2019-01-17 20:42:03', '<!-- wp:paragraph -->\n<p>\n\nChega de tentar buscar um sucesso que só existe na sua cabeça. Chega de se torturar para pensar positivo enquanto sua vida vai ladeira abaixo. Chega de se sentir inferior por não ver o lado bom de estar no fundo do poço. Coaching, autoajuda, desenvolvimento pessoal, mentalização positiva — sem querer desprezar o valor de nada disso, a grande verdade é que às vezes nos sentimos quase sufocados diante da pressão infinita por parecermos otimistas o tempo todo. É um pecado social se deixar abater quando as coisas não vão bem. Ninguém pode fracassar simplesmente, sem aprender nada com isso. Não dá mais. É insuportável. E é aí que entra a revolucionária e sutil arte de ligar o foda-se. Mark Manson usa toda a sua sagacidade de escritor e seu olhar crítico para propor um novo caminho rumo a uma vida melhor, mais coerente com a realidade e consciente dos nossos limites. E ele faz isso da melhor maneira. Como um verdadeiro amigo, Mark se senta ao seu lado e diz, olhando nos seus olhos: você não é tão especial. Ele conta umas piadas aqui, dá uns exemplos inusitados ali, joga umas verdades na sua cara e pronto, você já se sente muito mais alerta e capaz de enfrentar esse mundo cão. Para os céticos e os descrentes, mas também para os amantes do gênero, enfim uma abordagem franca e inteligente que vai ajudar você a descobrir o que é realmente importante na sua vida, e f*da-se o resto. Livre-se agora da felicidade maquiada e superficial e abrace esta arte verdadeiramente transformadora.\n\n</p>\n<!-- /wp:paragraph -->', 'A Sutil Arte De Ligar O Foda-Se', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2019-01-24 20:51:29', '2019-01-24 22:51:29', '', 0, 'http://127.0.0.1/wordpress/?p=1', 0, 'post', '', 0),
(2, 1, '2019-01-17 18:42:03', '2019-01-17 20:42:03', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://127.0.0.1/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2019-01-17 19:20:52', '2019-01-17 21:20:52', '', 0, 'http://127.0.0.1/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-17 18:42:03', '2019-01-17 20:42:03', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://127.0.0.1/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2019-01-17 18:42:03', '2019-01-17 20:42:03', '', 0, 'http://127.0.0.1/wordpress/?page_id=3', 0, 'page', '', 0),
(8, 1, '2019-01-17 19:19:56', '2019-01-17 21:19:56', '<!-- wp:image {\"id\":100,\"width\":580,\"height\":360} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/restaurante.jpg\" alt=\"\" class=\"wp-image-100\" width=\"580\" height=\"360\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":84,\"width\":580,\"height\":360} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/1541699493929-cozinheiro-2.jpg\" alt=\"\" class=\"wp-image-84\" width=\"580\" height=\"360\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Quem Somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2019-01-29 19:31:37', '2019-01-29 21:31:37', '', 0, 'http://127.0.0.1/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-01-17 19:19:56', '2019-01-17 21:19:56', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-17 19:19:56', '2019-01-17 21:19:56', '', 8, 'http://127.0.0.1/wordpress/2019/01/17/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-01-17 19:20:52', '2019-01-17 21:20:52', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://127.0.0.1/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-17 19:20:52', '2019-01-17 21:20:52', '', 2, 'http://127.0.0.1/wordpress/2019/01/17/2-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-01-17 19:21:19', '2019-01-17 21:21:19', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Celular: (21) 97503-0125</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telefone: (21) 0304-2540</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email: RestauranteJr@gmail.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram: @RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Facebook: RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2019-01-29 18:18:22', '2019-01-29 20:18:22', '', 0, 'http://127.0.0.1/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-01-17 19:21:19', '2019-01-17 21:21:19', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-17 19:21:19', '2019-01-17 21:21:19', '', 12, 'http://127.0.0.1/wordpress/2019/01/17/12-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-01-17 19:28:26', '2019-01-17 21:28:26', '{\n    \"book-rev-lite::nav_menu_locations[secondary]\": {\n        \"value\": -762536885,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:28:26\"\n    },\n    \"nav_menu[3]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:28:26\"\n    },\n    \"nav_menu[-762536885]\": {\n        \"value\": {\n            \"name\": \"Quem Somos\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:28:26\"\n    },\n    \"nav_menu_item[-685481406]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"In\\u00edcio\",\n            \"url\": \"http://127.0.0.1/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"In\\u00edcio\",\n            \"nav_menu_term_id\": -762536885,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:28:26\"\n    },\n    \"nav_menu_item[-701020594]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Contato\",\n            \"url\": \"http://127.0.0.1/wordpress/contato/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contato\",\n            \"nav_menu_term_id\": -762536885,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:28:26\"\n    },\n    \"nav_menu_item[-1961989355]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Quem Somos\",\n            \"url\": \"http://127.0.0.1/wordpress/quem-somos/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Quem Somos\",\n            \"nav_menu_term_id\": -762536885,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:28:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3afd9e54-c641-4f82-89b0-dd2cebf6fde5', '', '', '2019-01-17 19:28:26', '2019-01-17 21:28:26', '', 0, 'http://127.0.0.1/wordpress/2019/01/17/3afd9e54-c641-4f82-89b0-dd2cebf6fde5/', 0, 'customize_changeset', '', 0),
(19, 1, '2019-01-17 19:28:28', '2019-01-17 21:28:28', '', 'Início', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2019-01-29 19:04:57', '2019-01-29 21:04:57', '', 0, 'http://127.0.0.1/wordpress/2019/01/17/inicio/', 1, 'nav_menu_item', '', 0),
(20, 1, '2019-01-17 19:28:28', '2019-01-17 21:28:28', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-01-29 19:04:57', '2019-01-29 21:04:57', '', 0, 'http://127.0.0.1/wordpress/2019/01/17/20/', 2, 'nav_menu_item', '', 0),
(21, 1, '2019-01-17 19:28:29', '2019-01-17 21:28:29', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-01-29 19:04:57', '2019-01-29 21:04:57', '', 0, 'http://127.0.0.1/wordpress/2019/01/17/21/', 3, 'nav_menu_item', '', 0),
(22, 1, '2019-01-17 19:30:10', '2019-01-17 21:30:10', '<!-- wp:paragraph -->\n<p>\n\nGuia completo para a produção de jogos digitais, este livro traz todas as informações que um produtor, um líder de equipe ou um gerente de estúdio precisa para desenvolver um jogo, do conceito à pós-produção. São apresentados tópicos gerais – como pré-produção, testes e liberação do código –, bem como tópicos específicos – como gravações de voiceover e motioncapture, tradução e localização e fornecedores externos. Depoimentos de especialistas da indústria discutem experiências de profissionais da área e dão exemplos de situações reais. Ao final do livro, um projeto de jogo fictício ilustra em detalhes o ciclo de produção, a documentação e muitos outros conceitos do desenvolvimento de jogos digitais.\n\n</p>\n<!-- /wp:paragraph -->', 'Manual de Produção de Jogos Digitais - 2ª Ed. 2012', '', 'trash', 'open', 'open', '', 'q__trashed', '', '', '2019-01-24 20:51:29', '2019-01-24 22:51:29', '', 0, 'http://127.0.0.1/wordpress/?p=22', 0, 'post', '', 0),
(23, 1, '2019-01-17 19:30:10', '2019-01-17 21:30:10', '', 'q', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-01-17 19:30:10', '2019-01-17 21:30:10', '', 22, 'http://127.0.0.1/wordpress/2019/01/17/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-01-17 19:30:40', '2019-01-17 21:30:40', '', 'l', '', 'trash', 'open', 'open', '', 'a__trashed', '', '', '2019-01-29 19:38:41', '2019-01-29 21:38:41', '', 0, 'http://127.0.0.1/wordpress/?p=24', 0, 'post', '', 0),
(25, 1, '2019-01-17 19:30:40', '2019-01-17 21:30:40', '', 'a', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-01-17 19:30:40', '2019-01-17 21:30:40', '', 24, 'http://127.0.0.1/wordpress/2019/01/17/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-01-17 19:30:58', '2019-01-17 21:30:58', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'publish', 'open', 'open', '', 'l', '', '', '2019-01-29 19:52:49', '2019-01-29 21:52:49', '', 0, 'http://127.0.0.1/wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2019-01-17 19:30:58', '2019-01-17 21:30:58', '', 'l', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-17 19:30:58', '2019-01-17 21:30:58', '', 26, 'http://127.0.0.1/wordpress/2019/01/17/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-01-17 19:31:11', '2019-01-17 21:31:11', '<!-- wp:paragraph -->\n<p>SALADA DE QUINUA REAL</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'publish', 'open', 'open', '', 'l-2', '', '', '2019-01-29 19:51:56', '2019-01-29 21:51:56', '', 0, 'http://127.0.0.1/wordpress/?p=28', 0, 'post', '', 0),
(29, 1, '2019-01-17 19:31:11', '2019-01-17 21:31:11', '', 'l', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-17 19:31:11', '2019-01-17 21:31:11', '', 28, 'http://127.0.0.1/wordpress/2019/01/17/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-01-17 19:35:12', '2019-01-17 21:35:12', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2019-01-17 19:35:12', '2019-01-17 21:35:12', '', 28, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/download.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2019-01-17 19:38:06', '2019-01-17 21:38:06', '<!-- wp:paragraph -->\n<p>\n\nBem-vindo ao ensino de JavaScript &amp; jQuery. Você é iniciante em JavaScript, ou adicionou scripts a sua página web mas quer entender melhor como tudo funciona? Então este livro é para você. Não mostraremos apenas como ler e escrever em JavaScript, mas também ensinaremos o básico sobre programação de computadores de forma simples e visual. Tudo o que você precisa é entender um pouco sobre HTML e CSS. Este livro ensinará como tornar seus websites mais interativos, atraentes, e funcionais. Isso acontece ao combinar teoria de programação com exemplos que demonstram como o JavaScript e o jQuery são usados em sites populares. De forma rápida, você será capaz de pensar e programar como um profissional.\n\n</p>\n<!-- /wp:paragraph -->', 'Javascript e Jquery - Desenvolvimento de Interfaces Web Interativas', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-17 19:38:06', '2019-01-17 21:38:06', '', 28, 'http://127.0.0.1/wordpress/2019/01/17/28-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-01-17 19:42:57', '2019-01-17 21:42:57', '<!-- wp:paragraph -->\n<p>\n\n“O livro da ciência” conta com gráficos e boxes que ilustram conceitos como a gravidade, as propriedades da luz, correntes elétricas e compostos químicos, além de destacar as máximas que permearam a evolução do conhecimento científico, introduzindo seus autores: Arquimedes, Copérnico, Francis Bacon, Isaac Newton, Alan Turing, Stephen Hawking, entre tantos outros.\n\n</p>\n<!-- /wp:paragraph -->', 'O Livro da Ciência - Col. As Grandes Ideias de Todos Os Tempos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-17 19:42:57', '2019-01-17 21:42:57', '', 26, 'http://127.0.0.1/wordpress/2019/01/17/26-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-01-17 19:43:07', '2019-01-17 21:43:07', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2019-01-17 19:43:07', '2019-01-17 21:43:07', '', 26, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/download-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2019-01-17 19:49:28', '2019-01-17 21:49:28', '{\n    \"book-rev-lite::mp_slider_cat\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:49:10\"\n    },\n    \"book-rev-lite::mp_ffc_cat\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:49:10\"\n    },\n    \"book-rev-lite::mp_hotd_cat\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:49:10\"\n    },\n    \"book-rev-lite::mp_layout_type\": {\n        \"value\": \"fullwidth\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 21:49:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f10d3525-7916-4f6b-9fd8-0baddbc98526', '', '', '2019-01-17 19:49:28', '2019-01-17 21:49:28', '', 0, 'http://127.0.0.1/wordpress/?p=37', 0, 'customize_changeset', '', 0),
(39, 1, '2019-01-17 20:21:11', '2019-01-17 22:21:11', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2019-01-17 20:21:11', '2019-01-17 22:21:11', '', 24, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-01-17 20:21:19', '2019-01-17 22:21:19', '<!-- wp:paragraph -->\n<p>\n\n· Desenvolva habilidades em desktop e servidor Linux; · Avance para o nível da computação corporativa; · Torne-se um administrador de sistema ou um usuário avançado; · Tutorial passo a passo para Dominar o Linux; · Guia Completo para se tornar um profissional Linux. Quer adquirir uma base para se tornar um profissional certificado em Linux, iniciar em uma carreira que vai durar décadas, dominar habilidades que você pode usar em todas as distribuições Linux. Inicie com qualquer sistema Linux e avance para a computação corporativa utilizando Linux – utilize sua distribuição Linux favorita para aprender a testar suas habilidades com as ferramentas de linha de comando do Linux. Aprenda tarefas de administração de sistema profissional usando Fedora, o Red Hat Enterprise Linux ou outros sistemas corporativos.\n\n</p>\n<!-- /wp:paragraph -->', 'Linux - A Bíblia - o Mais Abrangente e Definitivo Guia Sobre Linux', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-01-17 20:21:19', '2019-01-17 22:21:19', '', 24, 'http://127.0.0.1/wordpress/2019/01/17/24-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-01-17 20:24:36', '2019-01-17 22:24:36', '<!-- wp:paragraph -->\n<p>\n\nGuia completo para a produção de jogos digitais, este livro traz todas as informações que um produtor, um líder de equipe ou um gerente de estúdio precisa para desenvolver um jogo, do conceito à pós-produção. São apresentados tópicos gerais – como pré-produção, testes e liberação do código –, bem como tópicos específicos – como gravações de voiceover e motioncapture, tradução e localização e fornecedores externos. Depoimentos de especialistas da indústria discutem experiências de profissionais da área e dão exemplos de situações reais. Ao final do livro, um projeto de jogo fictício ilustra em detalhes o ciclo de produção, a documentação e muitos outros conceitos do desenvolvimento de jogos digitais.\n\n</p>\n<!-- /wp:paragraph -->', 'Manual de Produção de Jogos Digitais - 2ª Ed. 2012', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2019-01-17 20:24:36', '2019-01-17 22:24:36', '', 22, 'http://127.0.0.1/wordpress/2019/01/17/22-autosave-v1/', 0, 'revision', '', 0),
(42, 1, '2019-01-17 20:24:33', '2019-01-17 22:24:33', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1-2', '', '', '2019-01-17 20:24:33', '2019-01-17 22:24:33', '', 22, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-01-17 20:24:49', '2019-01-17 22:24:49', '<!-- wp:paragraph -->\n<p>\n\nGuia completo para a produção de jogos digitais, este livro traz todas as informações que um produtor, um líder de equipe ou um gerente de estúdio precisa para desenvolver um jogo, do conceito à pós-produção. São apresentados tópicos gerais – como pré-produção, testes e liberação do código –, bem como tópicos específicos – como gravações de voiceover e motioncapture, tradução e localização e fornecedores externos. Depoimentos de especialistas da indústria discutem experiências de profissionais da área e dão exemplos de situações reais. Ao final do livro, um projeto de jogo fictício ilustra em detalhes o ciclo de produção, a documentação e muitos outros conceitos do desenvolvimento de jogos digitais.\n\n</p>\n<!-- /wp:paragraph -->', 'Manual de Produção de Jogos Digitais - 2ª Ed. 2012', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-01-17 20:24:49', '2019-01-17 22:24:49', '', 22, 'http://127.0.0.1/wordpress/2019/01/17/22-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-01-17 20:28:37', '2019-01-17 22:28:37', '<!-- wp:paragraph -->\n<p>\n\nChega de tentar buscar um sucesso que só existe na sua cabeça. Chega de se torturar para pensar positivo enquanto sua vida vai ladeira abaixo. Chega de se sentir inferior por não ver o lado bom de estar no fundo do poço. Coaching, autoajuda, desenvolvimento pessoal, mentalização positiva — sem querer desprezar o valor de nada disso, a grande verdade é que às vezes nos sentimos quase sufocados diante da pressão infinita por parecermos otimistas o tempo todo. É um pecado social se deixar abater quando as coisas não vão bem. Ninguém pode fracassar simplesmente, sem aprender nada com isso. Não dá mais. É insuportável. E é aí que entra a revolucionária e sutil arte de ligar o foda-se. Mark Manson usa toda a sua sagacidade de escritor e seu olhar crítico para propor um novo caminho rumo a uma vida melhor, mais coerente com a realidade e consciente dos nossos limites. E ele faz isso da melhor maneira. Como um verdadeiro amigo, Mark se senta ao seu lado e diz, olhando nos seus olhos: você não é tão especial. Ele conta umas piadas aqui, dá uns exemplos inusitados ali, joga umas verdades na sua cara e pronto, você já se sente muito mais alerta e capaz de enfrentar esse mundo cão. Para os céticos e os descrentes, mas também para os amantes do gênero, enfim uma abordagem franca e inteligente que vai ajudar você a descobrir o que é realmente importante na sua vida, e f*da-se o resto. Livre-se agora da felicidade maquiada e superficial e abrace esta arte verdadeiramente transformadora.\n\n</p>\n<!-- /wp:paragraph -->', 'A Sutil Arte De Ligar O Foda-Se', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2019-01-17 20:28:37', '2019-01-17 22:28:37', '', 1, 'http://127.0.0.1/wordpress/2019/01/17/1-autosave-v1/', 0, 'revision', '', 0),
(45, 1, '2019-01-17 20:27:44', '2019-01-17 22:27:44', '', 'download (2)', '', 'inherit', 'open', 'closed', '', 'download-2-2', '', '', '2019-01-17 20:27:44', '2019-01-17 22:27:44', '', 1, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/download-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-01-17 20:28:39', '2019-01-17 22:28:39', '<!-- wp:paragraph -->\n<p>\n\nChega de tentar buscar um sucesso que só existe na sua cabeça. Chega de se torturar para pensar positivo enquanto sua vida vai ladeira abaixo. Chega de se sentir inferior por não ver o lado bom de estar no fundo do poço. Coaching, autoajuda, desenvolvimento pessoal, mentalização positiva — sem querer desprezar o valor de nada disso, a grande verdade é que às vezes nos sentimos quase sufocados diante da pressão infinita por parecermos otimistas o tempo todo. É um pecado social se deixar abater quando as coisas não vão bem. Ninguém pode fracassar simplesmente, sem aprender nada com isso. Não dá mais. É insuportável. E é aí que entra a revolucionária e sutil arte de ligar o foda-se. Mark Manson usa toda a sua sagacidade de escritor e seu olhar crítico para propor um novo caminho rumo a uma vida melhor, mais coerente com a realidade e consciente dos nossos limites. E ele faz isso da melhor maneira. Como um verdadeiro amigo, Mark se senta ao seu lado e diz, olhando nos seus olhos: você não é tão especial. Ele conta umas piadas aqui, dá uns exemplos inusitados ali, joga umas verdades na sua cara e pronto, você já se sente muito mais alerta e capaz de enfrentar esse mundo cão. Para os céticos e os descrentes, mas também para os amantes do gênero, enfim uma abordagem franca e inteligente que vai ajudar você a descobrir o que é realmente importante na sua vida, e f*da-se o resto. Livre-se agora da felicidade maquiada e superficial e abrace esta arte verdadeiramente transformadora.\n\n</p>\n<!-- /wp:paragraph -->', 'A Sutil Arte De Ligar O Foda-Se', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-17 20:28:39', '2019-01-17 22:28:39', '', 1, 'http://127.0.0.1/wordpress/2019/01/17/1-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-01-17 20:39:31', '2019-01-17 22:39:31', '', 'icones_Livros', '', 'inherit', 'open', 'closed', '', 'icones_livros', '', '', '2019-01-17 20:48:01', '2019-01-17 22:48:01', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/icones_Livros.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2019-01-17 20:48:49', '2019-01-17 22:48:49', '{\n    \"book-rev-lite::footer-logo-upload\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/icones_Livros-e1547764810691.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 22:48:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '99c9ca9b-c6ed-4d3b-9d22-effbc9d8d76b', '', '', '2019-01-17 20:48:49', '2019-01-17 22:48:49', '', 0, 'http://127.0.0.1/wordpress/?p=51', 0, 'customize_changeset', '', 0),
(53, 1, '2019-01-17 20:57:37', '2019-01-17 22:57:37', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Celular: (21) 97503-0125</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telefone: (21) 0304-2540</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email: livro@gmail.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram: @livrosJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Facebook: livrosJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-17 20:57:37', '2019-01-17 22:57:37', '', 12, 'http://127.0.0.1/wordpress/2019/01/17/12-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-01-17 21:00:42', '2019-01-17 23:00:42', '{\n    \"sidebars_widgets[book_rev_lite_primary_sidebar]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 23:00:26\"\n    },\n    \"book-rev-lite::mp_layout_type\": {\n        \"value\": \"sidebarright\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 23:00:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3afde625-e2ec-454a-9e7d-2f166139c82e', '', '', '2019-01-17 21:00:42', '2019-01-17 23:00:42', '', 0, 'http://127.0.0.1/wordpress/?p=54', 0, 'customize_changeset', '', 0),
(57, 1, '2019-01-17 21:03:57', '2019-01-17 23:03:57', '<!-- wp:paragraph -->\n<p>Criado no dia 17/01/2019, o LivrosJr é um espaço onde dedico todo meu amor pelos livros. Nele, procuro divulgar a literatura em geral, especialmente a literatura brasileira, tanto a clássica quanto a contemporânea. É um canal direto com os leitores e está sempre aberto a novas sugestões. São resenhas de livros, lançamentos, tags e tudo que envolve o universo literário. É um local de encontro para todos aqueles que são atraídos pela leitura.</p>\n<!-- /wp:paragraph -->', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-17 21:03:57', '2019-01-17 23:03:57', '', 8, 'http://127.0.0.1/wordpress/2019/01/17/8-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-01-24 20:51:56', '2019-01-24 22:51:56', '<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-24 20:51:56', '2019-01-24 22:51:56', '', 28, 'http://127.0.0.1/wordpress/2019/01/24/28-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-01-24 20:52:02', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-24 20:52:02', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=59', 0, 'post', '', 0),
(60, 1, '2019-01-24 20:52:17', '2019-01-24 22:52:17', '', '.', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-24 20:52:17', '2019-01-24 22:52:17', '', 26, 'http://127.0.0.1/wordpress/2019/01/24/26-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-01-24 20:52:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-24 20:52:22', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=61', 0, 'post', '', 0),
(62, 1, '2019-01-24 20:52:34', '2019-01-24 22:52:34', '', 'l', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-01-24 20:52:34', '2019-01-24 22:52:34', '', 24, 'http://127.0.0.1/wordpress/2019/01/24/24-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-01-24 20:56:49', '2019-01-24 22:56:49', '', 'screenshot', '', 'inherit', 'open', 'closed', '', 'screenshot', '', '', '2019-01-24 20:56:49', '2019-01-24 22:56:49', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/screenshot.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-01-24 21:24:30', '2019-01-24 23:24:30', '{\n    \"blogname\": {\n        \"value\": \"Restaurante Jr\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-24 23:24:30\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-24 23:24:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f15dabd-cb60-4872-89b8-3f8445fa66ff', '', '', '2019-01-24 21:24:30', '2019-01-24 23:24:30', '', 0, 'http://127.0.0.1/wordpress/2019/01/24/7f15dabd-cb60-4872-89b8-3f8445fa66ff/', 0, 'customize_changeset', '', 0),
(66, 1, '2019-01-24 21:26:21', '2019-01-24 23:26:21', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Celular: (21) 97503-0125</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telefone: (21) 0304-2540</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email: RestauranteJr@gmail.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram: @RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Facebook: RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-24 21:26:21', '2019-01-24 23:26:21', '', 12, 'http://127.0.0.1/wordpress/2019/01/24/12-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-01-24 21:28:01', '2019-01-24 23:28:01', '', 'instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2019-01-24 21:28:01', '2019-01-24 23:28:01', '', 12, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/instagram.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2019-01-24 21:30:05', '2019-01-24 23:30:05', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Celular: (21) 97503-0125</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telefone: (21) 0304-2540</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email: RestauranteJr@gmail.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":67,\"width\":24,\"height\":24} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/instagram.png\" alt=\"\" class=\"wp-image-67\" width=\"24\" height=\"24\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>: @RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Facebook: RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-24 21:30:05', '2019-01-24 23:30:05', '', 12, 'http://127.0.0.1/wordpress/2019/01/24/12-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-01-29 18:16:01', '2019-01-29 20:16:01', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Celular: (21) 97503-0125</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telefone: (21) 0304-2540</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email: RestauranteJr@gmail.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":67,\"width\":33,\"height\":33} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/instagram.png\" alt=\"\" class=\"wp-image-67\" width=\"33\" height=\"33\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>: @RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Facebook: RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2019-01-29 18:16:01', '2019-01-29 20:16:01', '', 12, 'http://127.0.0.1/wordpress/2019/01/29/12-autosave-v1/', 0, 'revision', '', 0),
(70, 1, '2019-01-29 18:16:13', '2019-01-29 20:16:13', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Celular: (21) 97503-0125</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telefone: (21) 0304-2540</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email: RestauranteJr@gmail.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":67,\"width\":33,\"height\":33} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/instagram.png\" alt=\"\" class=\"wp-image-67\" width=\"33\" height=\"33\"/><figcaption> <br>@RestauranteJr </figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Facebook: RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-29 18:16:13', '2019-01-29 20:16:13', '', 12, 'http://127.0.0.1/wordpress/2019/01/29/12-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-01-29 18:16:36', '2019-01-29 20:16:36', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Celular: (21) 97503-0125</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telefone: (21) 0304-2540</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email: RestauranteJr@gmail.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":67,\"width\":20,\"height\":20} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/instagram.png\" alt=\"\" class=\"wp-image-67\" width=\"20\" height=\"20\"/><figcaption>@RestauranteJr </figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Facebook: RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-29 18:16:36', '2019-01-29 20:16:36', '', 12, 'http://127.0.0.1/wordpress/2019/01/29/12-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-01-29 18:18:22', '2019-01-29 20:18:22', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Celular: (21) 97503-0125</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telefone: (21) 0304-2540</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email: RestauranteJr@gmail.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Instagram: @RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Facebook: RestauranteJr</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-29 18:18:22', '2019-01-29 20:18:22', '', 12, 'http://127.0.0.1/wordpress/2019/01/29/12-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-01-29 18:25:28', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-29 18:25:28', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=73', 0, 'post', '', 0),
(75, 1, '2019-01-29 19:05:14', '2019-01-29 21:05:14', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">SALADA DE FOLHAS, FRUTAS E MACADÂMIA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":89,\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/cc25saladas_129.jpg\" alt=\"\" class=\"wp-image-89\"/><figcaption> <br></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">PENNE COM PROVOLONE, ALHO-PORÓ E TOMATE-CEREJA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":92} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/penne-com-provolone-alho-po.jpg\" alt=\"\" class=\"wp-image-92\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">SALADA DE QUINUA REAL</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":93} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/salada-de-quinua-real-5203.jpg\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":91} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cardápio', '', 'publish', 'closed', 'closed', '', 'cardapio', '', '', '2019-01-29 19:23:27', '2019-01-29 21:23:27', '', 0, 'http://127.0.0.1/wordpress/?page_id=75', 0, 'page', '', 0),
(76, 1, '2019-01-29 19:05:15', '2019-01-29 21:05:15', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2019-01-29 19:05:15', '2019-01-29 21:05:15', '', 0, 'http://127.0.0.1/wordpress/2019/01/29/76/', 4, 'nav_menu_item', '', 0),
(77, 1, '2019-01-29 19:05:14', '2019-01-29 21:05:14', '', 'Cardapio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-01-29 19:05:14', '2019-01-29 21:05:14', '', 75, 'http://127.0.0.1/wordpress/2019/01/29/75-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-01-29 19:22:45', '2019-01-29 21:22:45', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">SALADA DE FOLHAS, FRUTAS E MACADÂMIA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":89} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/cc25saladas_129.jpg\" alt=\"\" class=\"wp-image-89\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">PENNE COM PROVOLONE, ALHO-PORÓ E TOMATE-CEREJA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":92} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/penne-com-provolone-alho-po.jpg\" alt=\"\" class=\"wp-image-92\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">SALADA DE QUINUA REAL</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":93} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/salada-de-quinua-real-5203.jpg\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":91} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cardápio', '', 'inherit', 'closed', 'closed', '', '75-autosave-v1', '', '', '2019-01-29 19:22:45', '2019-01-29 21:22:45', '', 75, 'http://127.0.0.1/wordpress/2019/01/29/75-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2019-01-29 19:10:01', '2019-01-29 21:10:01', '', 'l-o-restaurante-marquise-3b9f9', '', 'inherit', 'open', 'closed', '', 'l-o-restaurante-marquise-3b9f9', '', '', '2019-01-29 19:10:01', '2019-01-29 21:10:01', '', 8, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/l-o-restaurante-marquise-3b9f9.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2019-01-29 19:10:26', '2019-01-29 21:10:26', '', '1541699493929-cozinheiro-2', '', 'inherit', 'open', 'closed', '', '1541699493929-cozinheiro-2', '', '', '2019-01-29 19:10:26', '2019-01-29 21:10:26', '', 8, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/1541699493929-cozinheiro-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2019-01-29 19:10:31', '2019-01-29 21:10:31', '<!-- wp:image {\"id\":83,\"width\":580,\"height\":326} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/l-o-restaurante-marquise-3b9f9.jpg\" alt=\"\" class=\"wp-image-83\" width=\"580\" height=\"326\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":84} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/1541699493929-cozinheiro-2.jpg\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-29 19:10:31', '2019-01-29 21:10:31', '', 8, 'http://127.0.0.1/wordpress/2019/01/29/8-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2019-01-29 19:12:18', '2019-01-29 21:12:18', '<!-- wp:image {\"id\":83,\"width\":580,\"height\":326} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/l-o-restaurante-marquise-3b9f9.jpg\" alt=\"\" class=\"wp-image-83\" width=\"580\" height=\"326\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":84,\"width\":580,\"height\":360} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/1541699493929-cozinheiro-2.jpg\" alt=\"\" class=\"wp-image-84\" width=\"580\" height=\"360\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-29 19:12:18', '2019-01-29 21:12:18', '', 8, 'http://127.0.0.1/wordpress/2019/01/29/8-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-01-29 19:13:18', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-29 19:13:18', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=87', 0, 'post', '', 0),
(88, 1, '2019-01-29 19:13:31', '2019-01-29 21:13:31', '', 'Cardápio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-01-29 19:13:31', '2019-01-29 21:13:31', '', 75, 'http://127.0.0.1/wordpress/2019/01/29/75-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-01-29 19:16:06', '2019-01-29 21:16:06', '', 'cc25saladas_129', '', 'inherit', 'open', 'closed', '', 'cc25saladas_129', '', '', '2019-01-29 19:16:06', '2019-01-29 21:16:06', '', 75, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/cc25saladas_129.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-01-29 19:16:06', '2019-01-29 21:16:06', '', 'comida3', '', 'inherit', 'open', 'closed', '', 'comida3', '', '', '2019-01-29 19:16:06', '2019-01-29 21:16:06', '', 75, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/comida3.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2019-01-29 19:16:07', '2019-01-29 21:16:07', '', 'macarrao', '', 'inherit', 'open', 'closed', '', 'macarrao', '', '', '2019-01-29 19:16:07', '2019-01-29 21:16:07', '', 75, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2019-01-29 19:16:07', '2019-01-29 21:16:07', '', 'penne-com-provolone-alho-po', '', 'inherit', 'open', 'closed', '', 'penne-com-provolone-alho-po', '', '', '2019-01-29 19:16:07', '2019-01-29 21:16:07', '', 75, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/penne-com-provolone-alho-po.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2019-01-29 19:16:08', '2019-01-29 21:16:08', '', 'salada-de-quinua-real-5203', '', 'inherit', 'open', 'closed', '', 'salada-de-quinua-real-5203', '', '', '2019-01-29 19:54:45', '2019-01-29 21:54:45', '', 75, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/salada-de-quinua-real-5203.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-01-29 19:17:36', '2019-01-29 21:17:36', '<!-- wp:image {\"id\":89} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/cc25saladas_129.jpg\" alt=\"\" class=\"wp-image-89\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":92} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/penne-com-provolone-alho-po.jpg\" alt=\"\" class=\"wp-image-92\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":93} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/salada-de-quinua-real-5203.jpg\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":91} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\"/></figure>\n<!-- /wp:image -->', 'Cardápio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-01-29 19:17:36', '2019-01-29 21:17:36', '', 75, 'http://127.0.0.1/wordpress/2019/01/29/75-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-01-29 19:19:13', '2019-01-29 21:19:13', '<!-- wp:image {\"id\":89} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/cc25saladas_129.jpg\" alt=\"\" class=\"wp-image-89\"/><figcaption> <br><strong><a rel=\"noreferrer noopener\" href=\"https://revistacasaejardim.globo.com/Casa-e-Comida/Receitas/Entradas/Salada/noticia/2013/11/salada-de-folhas-frutas-e-macadamia.html\" target=\"_blank\">SALADA DE FOLHAS, FRUTAS E MACADÂMIA</a></strong> </figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":92} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/penne-com-provolone-alho-po.jpg\" alt=\"\" class=\"wp-image-92\"/><figcaption> <br><strong> <a rel=\"noreferrer noopener\" href=\"https://revistacasaejardim.globo.com/Casa-e-Comida/Receitas/Pratos-principais/Massa-e-risoto/noticia/2013/06/penne-com-provolone-alho-poro-e-tomate-cereja.html\" target=\"_blank\">PENNE COM PROVOLONE, ALHO-PORÓ E TOMATE-CEREJA</a></strong> </figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":93} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/salada-de-quinua-real-5203.jpg\" alt=\"\" class=\"wp-image-93\"/><figcaption> <br><strong><a rel=\"noreferrer noopener\" href=\"https://revistacasaejardim.globo.com/Casa-e-Comida/Receitas/Entradas/Salada/noticia/2017/02/salada-de-quinua-real-2016.html\" target=\"_blank\">SALADA DE QUINUA REAL</a></strong> </figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":91} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\"/><figcaption> <br><strong><a rel=\"noreferrer noopener\" href=\"https://revistacasaejardim.globo.com/Casa-e-Comida/Receitas/Pratos-principais/Massa-e-risoto/noticia/2013/06/macarrao-com-requeijao-tomate-e-bacon.html\" target=\"_blank\">MACARRÃO COM REQUEIJÃO, TOMATE E BACON</a></strong> </figcaption></figure>\n<!-- /wp:image -->', 'Cardápio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-01-29 19:19:13', '2019-01-29 21:19:13', '', 75, 'http://127.0.0.1/wordpress/2019/01/29/75-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-01-29 19:22:53', '2019-01-29 21:22:53', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">SALADA DE FOLHAS, FRUTAS E MACADÂMIA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":89} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/cc25saladas_129.jpg\" alt=\"\" class=\"wp-image-89\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">PENNE COM PROVOLONE, ALHO-PORÓ E TOMATE-CEREJA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":92} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/penne-com-provolone-alho-po.jpg\" alt=\"\" class=\"wp-image-92\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">SALADA DE QUINUA REAL</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":93} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/salada-de-quinua-real-5203.jpg\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":91} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cardápio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-01-29 19:22:53', '2019-01-29 21:22:53', '', 75, 'http://127.0.0.1/wordpress/2019/01/29/75-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-01-29 19:23:20', '2019-01-29 21:23:20', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">SALADA DE FOLHAS, FRUTAS E MACADÂMIA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":89,\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/cc25saladas_129.jpg\" alt=\"\" class=\"wp-image-89\"/><figcaption> <br></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">PENNE COM PROVOLONE, ALHO-PORÓ E TOMATE-CEREJA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":92} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/penne-com-provolone-alho-po.jpg\" alt=\"\" class=\"wp-image-92\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">SALADA DE QUINUA REAL</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":93} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/salada-de-quinua-real-5203.jpg\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":91} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cardápio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-01-29 19:23:20', '2019-01-29 21:23:20', '', 75, 'http://127.0.0.1/wordpress/2019/01/29/75-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-01-29 19:23:27', '2019-01-29 21:23:27', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">SALADA DE FOLHAS, FRUTAS E MACADÂMIA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":89,\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/cc25saladas_129.jpg\" alt=\"\" class=\"wp-image-89\"/><figcaption> <br></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">PENNE COM PROVOLONE, ALHO-PORÓ E TOMATE-CEREJA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":92} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/penne-com-provolone-alho-po.jpg\" alt=\"\" class=\"wp-image-92\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">SALADA DE QUINUA REAL</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":93} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/salada-de-quinua-real-5203.jpg\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":91} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\"/><figcaption> <br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cardápio', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-01-29 19:23:27', '2019-01-29 21:23:27', '', 75, 'http://127.0.0.1/wordpress/2019/01/29/75-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-01-29 19:30:53', '2019-01-29 21:30:53', '', 'restaurante', '', 'inherit', 'open', 'closed', '', 'restaurante', '', '', '2019-01-29 19:30:53', '2019-01-29 21:30:53', '', 8, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/restaurante.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2019-01-29 19:31:37', '2019-01-29 21:31:37', '<!-- wp:image {\"id\":100,\"width\":580,\"height\":360} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/restaurante.jpg\" alt=\"\" class=\"wp-image-100\" width=\"580\" height=\"360\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":84,\"width\":580,\"height\":360} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/1541699493929-cozinheiro-2.jpg\" alt=\"\" class=\"wp-image-84\" width=\"580\" height=\"360\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-29 19:31:37', '2019-01-29 21:31:37', '', 8, 'http://127.0.0.1/wordpress/2019/01/29/8-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-01-29 19:34:46', '2019-01-29 21:34:46', '<!-- wp:image {\"id\":91} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', 'MACARRÃO COM REQUEIJÃO, TOMATE E BACON', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-29 19:34:46', '2019-01-29 21:34:46', '', 28, 'http://127.0.0.1/wordpress/2019/01/29/28-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-01-29 19:35:23', '2019-01-29 21:35:23', '<!-- wp:paragraph -->\n<p> MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":91} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\"/></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-29 19:35:23', '2019-01-29 21:35:23', '', 28, 'http://127.0.0.1/wordpress/2019/01/29/28-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-01-29 19:36:09', '2019-01-29 21:36:09', '<!-- wp:paragraph -->\n<p> MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":91,\"width\":412,\"height\":365} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao.jpg\" alt=\"\" class=\"wp-image-91\" width=\"412\" height=\"365\"/></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-29 19:36:09', '2019-01-29 21:36:09', '', 28, 'http://127.0.0.1/wordpress/2019/01/29/28-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-01-29 19:38:07', '2019-01-29 21:38:07', '<!-- wp:paragraph -->\n<p>SALADA DE QUINUA REAL</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":93} -->\n<figure class=\"wp-block-image\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/salada-de-quinua-real-5203.jpg\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-29 19:38:07', '2019-01-29 21:38:07', '', 26, 'http://127.0.0.1/wordpress/2019/01/29/26-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-01-29 19:40:47', '2019-01-29 21:40:47', '', 'macarrao', '', 'inherit', 'open', 'closed', '', 'macarrao-2', '', '', '2019-01-29 19:40:47', '2019-01-29 21:40:47', '', 28, 'http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-01-29 19:41:13', '2019-01-29 21:41:13', '<!-- wp:paragraph -->\n<p> MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":108,\"width\":539,\"height\":478} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://127.0.0.1/wordpress/wp-content/uploads/2019/01/macarrao-1.jpg\" alt=\"\" class=\"wp-image-108\" width=\"539\" height=\"478\"/></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-29 19:41:13', '2019-01-29 21:41:13', '', 28, 'http://127.0.0.1/wordpress/2019/01/29/28-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-01-29 19:45:12', '2019-01-29 21:45:12', '<!-- wp:paragraph -->\n<p> MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-29 19:45:12', '2019-01-29 21:45:12', '', 28, 'http://127.0.0.1/wordpress/2019/01/29/28-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-01-29 19:46:25', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-29 19:46:25', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=111', 0, 'post', '', 0),
(112, 1, '2019-01-29 19:46:48', '2019-01-29 21:46:48', '<!-- wp:paragraph -->\n<p>SALADA DE QUINUA REAL</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-29 19:46:48', '2019-01-29 21:46:48', '', 26, 'http://127.0.0.1/wordpress/2019/01/29/26-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-01-29 19:48:08', '2019-01-29 21:48:08', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'publish', 'open', 'open', '', '113', '', '', '2019-01-29 19:51:18', '2019-01-29 21:51:18', '', 0, 'http://127.0.0.1/wordpress/?p=113', 0, 'post', '', 0),
(114, 1, '2019-01-29 19:48:08', '2019-01-29 21:48:08', '<!-- wp:paragraph -->\n<p>.</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2019-01-29 19:48:08', '2019-01-29 21:48:08', '', 113, 'http://127.0.0.1/wordpress/2019/01/29/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-01-29 19:49:18', '2019-01-29 21:49:18', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-29 19:49:18', '2019-01-29 21:49:18', '', 28, 'http://127.0.0.1/wordpress/2019/01/29/28-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-01-29 19:49:29', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-29 19:49:29', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=116', 0, 'post', '', 0),
(117, 1, '2019-01-29 19:49:38', '2019-01-29 21:49:38', '<!-- wp:paragraph -->\n<p>\n\n MACARRÃO COM REQUEIJÃO, TOMATE E BACON\n\n</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2019-01-29 19:49:38', '2019-01-29 21:49:38', '', 113, 'http://127.0.0.1/wordpress/2019/01/29/113-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-01-29 19:50:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-29 19:50:21', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=118', 0, 'post', '', 0),
(119, 1, '2019-01-29 19:50:44', '2019-01-29 21:50:44', '<!-- wp:paragraph -->\n<p>MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->', '', '', 'publish', 'open', 'open', '', '119', '', '', '2019-01-29 19:50:44', '2019-01-29 21:50:44', '', 0, 'http://127.0.0.1/wordpress/?p=119', 0, 'post', '', 0),
(120, 1, '2019-01-29 19:50:44', '2019-01-29 21:50:44', '<!-- wp:paragraph -->\n<p>MACARRÃO COM REQUEIJÃO, TOMATE E BACON</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2019-01-29 19:50:44', '2019-01-29 21:50:44', '', 119, 'http://127.0.0.1/wordpress/2019/01/29/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2019-01-29 19:51:18', '2019-01-29 21:51:18', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2019-01-29 19:51:18', '2019-01-29 21:51:18', '', 113, 'http://127.0.0.1/wordpress/2019/01/29/113-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-01-29 19:51:30', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-29 19:51:30', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=122', 0, 'post', '', 0),
(123, 1, '2019-01-29 19:51:51', '2019-01-29 21:51:51', '<!-- wp:paragraph -->\n<p>SALADA DE QUINUA REAL</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-29 19:51:51', '2019-01-29 21:51:51', '', 28, 'http://127.0.0.1/wordpress/2019/01/29/28-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-01-29 19:52:19', '2019-01-29 21:52:19', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-29 19:52:19', '2019-01-29 21:52:19', '', 26, 'http://127.0.0.1/wordpress/2019/01/29/26-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '.', '1', 0),
(4, 'Quem Somos', 'quem-somos', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 4, 0),
(20, 4, 0),
(21, 4, 0),
(22, 1, 0),
(24, 1, 0),
(26, 1, 0),
(28, 1, 0),
(76, 4, 0),
(113, 1, 0),
(119, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Junior'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"aa842969c3ffc64fc7e22d4b292b3e75135d51a2dc47cdca08a8732d91c0d10a\";a:4:{s:10:\"expiration\";i:1548965643;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1548792843;}s:64:\"b85ebd1885ce328e652a04d685e1990763738b8c7c70d8f853638619a90b9af4\";a:4:{s:10:\"expiration\";i:1548965643;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1548792843;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '4'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1547761271');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Junior', '$P$BH836PzhMMWI00VuyviWqR66IcML98.', 'junior', 'wagnerjr@gmail.com', '', '2019-01-17 20:42:01', '', 0, 'Junior');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
