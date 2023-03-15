-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 09:42 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekat`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `opis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `opis`) VALUES
(1, 'Ovo je nas sajt!en');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-03-07 09:41:06', '2023-03-07 09:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `osoba` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `broj_telefona` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `osoba`, `broj_telefona`, `grad`) VALUES
(1, 'Mihajlo-en', '3662012', 'Novi Sad');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'pocetna_stranica', 'text', 'Pocetna Stranica', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(61, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 13, 'opis', 'text', 'Opis', 0, 0, 1, 1, 1, 1, '{}', 2),
(69, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 19, 'opis', 'text', 'Opis', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 20, 'osoba', 'text', 'Osoba', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 20, 'broj_telefona', 'text', 'Broj Telefona', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 20, 'grad', 'text', 'Grad', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(82, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 24, 'naziv_stranice', 'select_multiple', 'Naziv Stranice', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"Home\":\"Home\",\"About Us\":\"About Us\",\"Contacts\":\"Contacts\"}}', 2),
(89, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 25, 'meta_tagovi', 'text', 'Meta Tagovi', 0, 1, 1, 1, 1, 1, '{}', 2),
(91, 25, 'stranice', 'text', 'Stranice', 0, 1, 1, 1, 1, 1, '{}', 3),
(94, 25, 'meta_polja_belongsto_stranice_relationship', 'relationship', 'stranice', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Stranice\",\"table\":\"stranice\",\"type\":\"belongsTo\",\"column\":\"stranice\",\"key\":\"naziv_stranice\",\"label\":\"naziv_stranice\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-03-07 09:41:05', '2023-03-07 09:41:05'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-03-07 09:41:05', '2023-03-07 09:41:05'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-03-07 09:41:05', '2023-03-07 09:41:05'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(7, 'home', 'home', 'Home', 'Homes', 'voyager-activity', 'App\\Models\\Home', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-07 11:21:14', '2023-03-08 08:34:57'),
(13, 'aboutus', 'aboutus', 'Aboutu', 'Aboutus', NULL, 'App\\Models\\Aboutu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-07 12:23:06', '2023-03-07 12:23:06'),
(19, 'about_us', 'about-us', 'About U', 'About Us', 'voyager-company', 'App\\Models\\About_us', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-07 13:33:57', '2023-03-07 13:33:57'),
(20, 'contact', 'contact', 'Contact', 'Contacts', 'voyager-phone', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-07 13:37:34', '2023-03-07 13:37:34'),
(24, 'stranice', 'stranice', 'Stranice', 'Stranice', 'voyager-file-text', 'App\\Models\\Stranice', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-08 13:21:05', '2023-03-14 13:25:39'),
(25, 'meta_polja', 'meta-polja', 'Meta Polja', 'Meta Polja', 'voyager-plus', 'App\\Models\\MetaPolja', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-09 08:21:05', '2023-03-14 13:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(10) UNSIGNED NOT NULL,
  `pocetna_stranica` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `pocetna_stranica`, `title`, `image`) VALUES
(2, 'Ovo je pocetna stranica - engleski', 'Naziv 1', NULL),
(3, 'Ovo je stranica na engleskom', 'Stranica ', 'home\\March2023\\JpsztEXEuFMzEgYuIMyF.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-03-07 09:41:05', '2023-03-07 09:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-03-07 09:41:05', '2023-03-07 09:41:05', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2023-03-07 09:41:05', '2023-03-09 08:50:38', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2023-03-07 09:41:05', '2023-03-09 08:50:38', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2023-03-07 09:41:05', '2023-03-09 08:50:38', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2023-03-07 09:41:05', '2023-03-08 13:23:29', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-03-07 09:41:05', '2023-03-07 11:25:41', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-03-07 09:41:05', '2023-03-07 11:25:41', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-03-07 09:41:05', '2023-03-07 11:25:41', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-03-07 09:41:05', '2023-03-07 11:25:41', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2023-03-07 09:41:05', '2023-03-08 13:23:29', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2023-03-07 09:41:06', '2023-03-08 13:23:29', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 10, '2023-03-07 09:41:06', '2023-03-08 13:23:29', 'voyager.posts.index', NULL),
(14, 1, 'Home', '', '_self', 'voyager-activity', '#000000', NULL, 2, '2023-03-07 11:21:14', '2023-03-09 08:50:48', 'voyager.home.index', 'null'),
(19, 1, 'About Us', '', '_self', 'voyager-company', NULL, NULL, 3, '2023-03-07 13:33:57', '2023-03-09 08:50:48', 'voyager.about-us.index', NULL),
(20, 1, 'Contacts', '', '_self', 'voyager-phone', NULL, NULL, 4, '2023-03-07 13:37:34', '2023-03-09 08:50:48', 'voyager.contact.index', NULL),
(23, 1, 'Stranice', '', '_self', 'voyager-file-text', '#000000', NULL, 6, '2023-03-08 13:21:05', '2023-03-09 08:50:48', 'voyager.stranice.index', 'null'),
(24, 1, 'Meta Polja', '', '_self', 'voyager-plus', NULL, NULL, 5, '2023-03-09 08:21:05', '2023-03-09 08:50:48', 'voyager.meta-polja.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_polja`
--

CREATE TABLE `meta_polja` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_tagovi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stranice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_polja`
--

INSERT INTO `meta_polja` (`id`, `meta_tagovi`, `stranice`) VALUES
(21, 'description', '[\"About Us\"]'),
(25, 'copyright', '[\"Home\",\"About Us\",\"Contacts\"]'),
(26, 'robots', '[\"Home\",\"Contacts\"]');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(2, 'browse_bread', NULL, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(3, 'browse_database', NULL, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(4, 'browse_media', NULL, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(5, 'browse_compass', NULL, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(6, 'browse_menus', 'menus', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(7, 'read_menus', 'menus', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(8, 'edit_menus', 'menus', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(9, 'add_menus', 'menus', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(10, 'delete_menus', 'menus', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(11, 'browse_roles', 'roles', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(12, 'read_roles', 'roles', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(13, 'edit_roles', 'roles', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(14, 'add_roles', 'roles', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(15, 'delete_roles', 'roles', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(16, 'browse_users', 'users', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(17, 'read_users', 'users', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(18, 'edit_users', 'users', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(19, 'add_users', 'users', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(20, 'delete_users', 'users', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(21, 'browse_settings', 'settings', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(22, 'read_settings', 'settings', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(23, 'edit_settings', 'settings', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(24, 'add_settings', 'settings', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(25, 'delete_settings', 'settings', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(26, 'browse_categories', 'categories', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(27, 'read_categories', 'categories', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(28, 'edit_categories', 'categories', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(29, 'add_categories', 'categories', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(30, 'delete_categories', 'categories', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(31, 'browse_posts', 'posts', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(32, 'read_posts', 'posts', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(33, 'edit_posts', 'posts', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(34, 'add_posts', 'posts', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(35, 'delete_posts', 'posts', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(41, 'browse_home', 'home', '2023-03-07 11:21:14', '2023-03-07 11:21:14'),
(42, 'read_home', 'home', '2023-03-07 11:21:14', '2023-03-07 11:21:14'),
(43, 'edit_home', 'home', '2023-03-07 11:21:14', '2023-03-07 11:21:14'),
(44, 'add_home', 'home', '2023-03-07 11:21:14', '2023-03-07 11:21:14'),
(45, 'delete_home', 'home', '2023-03-07 11:21:14', '2023-03-07 11:21:14'),
(51, 'browse_aboutus', 'aboutus', '2023-03-07 12:23:06', '2023-03-07 12:23:06'),
(52, 'read_aboutus', 'aboutus', '2023-03-07 12:23:06', '2023-03-07 12:23:06'),
(53, 'edit_aboutus', 'aboutus', '2023-03-07 12:23:06', '2023-03-07 12:23:06'),
(54, 'add_aboutus', 'aboutus', '2023-03-07 12:23:06', '2023-03-07 12:23:06'),
(55, 'delete_aboutus', 'aboutus', '2023-03-07 12:23:06', '2023-03-07 12:23:06'),
(66, 'browse_about_us', 'about_us', '2023-03-07 13:33:57', '2023-03-07 13:33:57'),
(67, 'read_about_us', 'about_us', '2023-03-07 13:33:57', '2023-03-07 13:33:57'),
(68, 'edit_about_us', 'about_us', '2023-03-07 13:33:57', '2023-03-07 13:33:57'),
(69, 'add_about_us', 'about_us', '2023-03-07 13:33:57', '2023-03-07 13:33:57'),
(70, 'delete_about_us', 'about_us', '2023-03-07 13:33:57', '2023-03-07 13:33:57'),
(71, 'browse_contact', 'contact', '2023-03-07 13:37:34', '2023-03-07 13:37:34'),
(72, 'read_contact', 'contact', '2023-03-07 13:37:34', '2023-03-07 13:37:34'),
(73, 'edit_contact', 'contact', '2023-03-07 13:37:34', '2023-03-07 13:37:34'),
(74, 'add_contact', 'contact', '2023-03-07 13:37:34', '2023-03-07 13:37:34'),
(75, 'delete_contact', 'contact', '2023-03-07 13:37:34', '2023-03-07 13:37:34'),
(86, 'browse_stranice', 'stranice', '2023-03-08 13:21:05', '2023-03-08 13:21:05'),
(87, 'read_stranice', 'stranice', '2023-03-08 13:21:05', '2023-03-08 13:21:05'),
(88, 'edit_stranice', 'stranice', '2023-03-08 13:21:05', '2023-03-08 13:21:05'),
(89, 'add_stranice', 'stranice', '2023-03-08 13:21:05', '2023-03-08 13:21:05'),
(90, 'delete_stranice', 'stranice', '2023-03-08 13:21:05', '2023-03-08 13:21:05'),
(91, 'browse_meta_polja', 'meta_polja', '2023-03-09 08:21:05', '2023-03-09 08:21:05'),
(92, 'read_meta_polja', 'meta_polja', '2023-03-09 08:21:05', '2023-03-09 08:21:05'),
(93, 'edit_meta_polja', 'meta_polja', '2023-03-09 08:21:05', '2023-03-09 08:21:05'),
(94, 'add_meta_polja', 'meta_polja', '2023-03-09 08:21:05', '2023-03-09 08:21:05'),
(95, 'delete_meta_polja', 'meta_polja', '2023-03-09 08:21:05', '2023-03-09 08:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-07 09:41:06', '2023-03-07 09:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(2, 'user', 'Normal User', '2023-03-07 09:41:06', '2023-03-07 09:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `stranice`
--

CREATE TABLE `stranice` (
  `id` int(10) UNSIGNED NOT NULL,
  `naziv_stranice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stranice`
--

INSERT INTO `stranice` (`id`, `naziv_stranice`) VALUES
(35, '[\"Home\",\"About Us\"]'),
(36, '[\"About Us\"]'),
(41, '[\"Home\",\"About Us\",\"Contacts\"]'),
(42, '[\"Home\",\"Contacts\"]');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-03-07 09:41:06', '2023-03-07 09:41:06'),
(31, 'about_us', 'opis', 1, 'de', 'Ovo je nas sajt!de', '2023-03-08 07:16:00', '2023-03-08 07:16:18'),
(32, 'home', 'pocetna_stranica', 2, 'de', 'Ovo je pocetna stranica - nemacki', '2023-03-08 07:23:14', '2023-03-08 07:24:01'),
(33, 'home', 'title', 2, 'de', 'Naziv 1', '2023-03-08 07:23:14', '2023-03-08 07:23:14'),
(34, 'contact', 'osoba', 1, 'de', 'Mihajlo-de', '2023-03-08 07:35:08', '2023-03-08 07:35:41'),
(35, 'contact', 'broj_telefona', 1, 'de', '3662012', '2023-03-08 07:35:08', '2023-03-08 07:35:08'),
(36, 'contact', 'grad', 1, 'de', 'Novi Sad', '2023-03-08 07:35:08', '2023-03-08 07:35:08'),
(37, 'data_rows', 'display_name', 56, 'de', 'Id', '2023-03-08 08:34:58', '2023-03-08 08:34:58'),
(38, 'data_rows', 'display_name', 57, 'de', 'Pocetna Stranica', '2023-03-08 08:34:58', '2023-03-08 08:34:58'),
(39, 'data_rows', 'display_name', 58, 'de', 'Title', '2023-03-08 08:34:58', '2023-03-08 08:34:58'),
(40, 'data_types', 'display_name_singular', 7, 'de', 'Home', '2023-03-08 08:34:58', '2023-03-08 08:34:58'),
(41, 'data_types', 'display_name_plural', 7, 'de', 'Homes', '2023-03-08 08:34:58', '2023-03-08 08:34:58'),
(42, 'menu_items', 'title', 21, 'de', 'Meta Poljas', '2023-03-08 10:24:59', '2023-03-08 10:24:59'),
(43, 'data_rows', 'display_name', 76, 'de', 'Id', '2023-03-08 10:27:15', '2023-03-08 10:27:15'),
(44, 'data_rows', 'display_name', 77, 'de', 'Meta Tagovi', '2023-03-08 10:27:15', '2023-03-08 10:27:15'),
(45, 'data_rows', 'display_name', 78, 'de', 'Stranice', '2023-03-08 10:27:15', '2023-03-08 10:27:15'),
(49, 'data_rows', 'display_name', 79, 'de', 'Id', '2023-03-08 10:45:12', '2023-03-08 10:45:12'),
(50, 'data_rows', 'display_name', 80, 'de', 'Meta Tagovi', '2023-03-08 10:45:12', '2023-03-08 10:45:12'),
(51, 'data_rows', 'display_name', 81, 'de', 'Stranice', '2023-03-08 10:45:12', '2023-03-08 10:45:12'),
(54, 'menu_items', 'title', 23, 'de', 'Stranices', '2023-03-08 13:22:30', '2023-03-08 13:22:30'),
(55, 'data_rows', 'display_name', 84, 'de', 'Naziv Stranice', '2023-03-09 06:34:51', '2023-03-09 06:34:51'),
(56, 'data_rows', 'display_name', 87, 'de', 'stranice', '2023-03-09 06:46:08', '2023-03-09 06:46:08'),
(57, 'data_rows', 'display_name', 82, 'de', 'Id', '2023-03-09 07:14:16', '2023-03-09 07:14:16'),
(58, 'data_rows', 'display_name', 83, 'de', 'Naziv Stranice', '2023-03-09 07:14:16', '2023-03-09 07:14:16'),
(59, 'data_types', 'display_name_singular', 24, 'de', 'Stranice', '2023-03-09 07:14:16', '2023-03-09 07:14:16'),
(60, 'data_types', 'display_name_plural', 24, 'de', 'Stranices', '2023-03-09 07:14:16', '2023-03-09 07:14:16'),
(61, 'data_rows', 'display_name', 88, 'de', 'stranice', '2023-03-09 07:31:26', '2023-03-09 07:31:26'),
(62, 'data_rows', 'display_name', 89, 'de', 'Id', '2023-03-09 09:12:16', '2023-03-09 09:12:16'),
(63, 'data_rows', 'display_name', 90, 'de', 'Meta Tagovi', '2023-03-09 09:12:16', '2023-03-09 09:12:16'),
(64, 'data_rows', 'display_name', 91, 'de', 'Stranice', '2023-03-09 09:12:16', '2023-03-09 09:12:16'),
(65, 'data_rows', 'display_name', 93, 'de', 'stranice', '2023-03-09 09:12:16', '2023-03-09 09:12:16'),
(66, 'data_types', 'display_name_singular', 25, 'de', 'Meta Polja', '2023-03-09 09:12:16', '2023-03-09 09:12:16'),
(67, 'data_types', 'display_name_plural', 25, 'de', 'Meta Polja', '2023-03-09 09:12:16', '2023-03-09 09:12:16'),
(68, 'data_rows', 'display_name', 94, 'de', 'stranice', '2023-03-14 09:44:10', '2023-03-14 09:44:10'),
(69, 'data_rows', 'display_name', 95, 'de', 'stranice', '2023-03-14 09:44:10', '2023-03-14 09:44:10'),
(70, 'data_rows', 'display_name', 96, 'de', 'stranice', '2023-03-14 11:18:18', '2023-03-14 11:18:18'),
(71, 'data_rows', 'display_name', 98, 'de', 'stranice', '2023-03-14 12:25:37', '2023-03-14 12:25:37'),
(72, 'data_rows', 'display_name', 99, 'de', 'stranice', '2023-03-14 13:09:54', '2023-03-14 13:09:54'),
(73, 'home', 'pocetna_stranica', 3, 'de', 'Ovo je stranica na nemackom', '2023-03-14 13:52:10', '2023-03-14 13:52:10'),
(74, 'home', 'title', 3, 'de', 'Stranica ', '2023-03-14 13:52:10', '2023-03-14 13:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$ndNegZRzBJThh.aXd69wUO6eEtXT1JfiVDa3dbbXvU5H9J5dJ0bc.', 'ANSDHeGCZr7As0nfdif75sobAdcctMNH9Ua3BXh5HgnBhNWrh4yi0l41ctRo', NULL, '2023-03-07 09:41:06', '2023-03-07 09:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `meta_polja`
--
ALTER TABLE `meta_polja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `stranice`
--
ALTER TABLE `stranice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `meta_polja`
--
ALTER TABLE `meta_polja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stranice`
--
ALTER TABLE `stranice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
