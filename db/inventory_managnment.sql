-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 01:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_managnment`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 'Main Category', 'Active', 1, '2020-10-06 03:50:38', '2020-10-06 06:32:55'),
(15, 'Techno Soft Category', 'Active', 13, '2020-10-07 00:49:36', '2020-10-07 00:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `empolyees`
--

CREATE TABLE `empolyees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emp_code` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empolyees`
--

INSERT INTO `empolyees` (`id`, `name`, `department`, `email`, `emp_code`, `contact`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 'amit', 'engineering_technology', 'amit@gmail.com', '464', '9887989986', 1, 'Active', '2020-10-06 04:00:57', '2020-10-06 04:00:57'),
(6, 'Sumit', 'digital_media_and_marketing', 'sumit@gmail.com', '456', '98879899863', 1, 'Active', '2020-10-06 04:26:00', '2020-10-06 06:21:15'),
(7, 'Test user', 'accounts', NULL, '258', NULL, 13, 'Active', '2020-10-07 00:55:50', '2020-10-07 00:55:50');

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
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `category_id`, `subcategory_id`, `warehouse_id`, `title`, `price`, `qr_code`, `status`, `user_id`, `created_at`, `updated_at`, `brand`, `image`) VALUES
(27, 13, 7, 3, 'Stock', 50.00, 'warehouse_jaipur_2020_st_27', 'Active', 1, '2020-10-06 03:54:05', '2020-10-06 03:54:05', NULL, NULL),
(28, 15, 9, 4, 'Mobile vivo', 2500.00, 'tenosoft_ware_house_2020_mo_28', 'Active', 13, '2020-10-07 00:55:12', '2020-10-07 00:55:12', NULL, NULL),
(29, 13, 8, 3, 'test', 500.00, 'warehouse_jaipur_2020_te_29', 'Active', 1, '2020-10-07 05:45:21', '2020-10-07 05:45:21', 'test', NULL);

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0a21f09d8bc5b13e03607d9b94351c46e5e5fa653b0374c70de16b3357712ba09d80df7bea9e5993', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:18:40', '2020-10-06 03:18:40', '2021-10-06 08:48:40'),
('1948685ec9ca2a564ed0be77b925ac3ce1aec679b21fa470ddae9c9fc7845cae1c7a6e6231ec43a1', 9, 3, 'MyApp', '[]', 0, '2020-10-06 04:18:01', '2020-10-06 04:18:01', '2021-10-06 09:48:01'),
('1f3c80524a43fb2dc67fbfa6ce490342dab4f3334a3243d2a18a04dc10591a91927546e7178ce03e', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:38:38', '2020-10-06 03:38:38', '2021-10-06 09:08:38'),
('23f1a3ed3c326a4dd06dbb5d46603555022dc4ce119c0817a623efb422db4a1e288427b28038bdb4', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:12:22', '2020-10-06 03:12:22', '2021-10-06 08:42:22'),
('27913db79b241445e71e17cd2e271161e4e84d75f2eacde4b9bd9a3a086041369aec03c81d89f499', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:42:31', '2020-10-06 03:42:31', '2021-10-06 09:12:31'),
('2943ae77bda89fbf9eac8e3d00589e8743b7bce3e4e3a9cd1049559004554f7a2a399c285faf6944', 11, 3, 'MyApp', '[]', 0, '2020-10-05 01:36:15', '2020-10-05 01:36:15', '2021-10-05 07:06:15'),
('2d062a3a9ec4d04b548618eeda7139a3f71d0d7d31bc0fffb5f3e96830d1604b63aace3c05c03b44', 9, 3, 'MyApp', '[]', 0, '2020-10-06 00:35:35', '2020-10-06 00:35:35', '2021-10-06 06:05:35'),
('33e0b9668b5c90f2930178373d0f7e6004b42cc10317750e352788bc42a1aa929401d1fa500eb0fb', 9, 3, 'MyApp', '[]', 0, '2020-10-06 23:07:02', '2020-10-06 23:07:02', '2021-10-07 04:37:02'),
('3b8853cdd23f25e95455ee65a3ed6669c80e0aa7ab1f6371856b5280f5adff5aff314f0b79928947', 9, 3, 'MyApp', '[]', 0, '2020-10-07 01:14:17', '2020-10-07 01:14:17', '2021-10-07 06:44:17'),
('3e4f170d29f0274669addda6e21c89db449c8a890392ca2472b756da8e89fec4bacbeb8e88d38a5e', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:43:01', '2020-10-06 03:43:01', '2021-10-06 09:13:01'),
('4c72b1105e91359cb5b117aee573d0727b7f626aac82d929357469c1ed7514e035fdae46fd5f01b5', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:38:07', '2020-10-06 03:38:07', '2021-10-06 09:08:07'),
('675fab4c07778d9120ce88091021a5e60aba249d1df1cc606a2bc7a022ab29709b083a561f96d7df', 9, 3, 'MyApp', '[]', 0, '2020-10-06 00:34:04', '2020-10-06 00:34:04', '2021-10-06 06:04:04'),
('6cb67c715be4afcb953d23f9e2bc1664809c964ca2072fa02eadc32dbb651e5759d92f34b314d74d', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:18:49', '2020-10-06 03:18:49', '2021-10-06 08:48:49'),
('7452a5f5242f1446aca6c87cf5c0168fe48077b2a6063552717f3c3a7881e14b85264b6919db8b97', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:39:13', '2020-10-06 03:39:13', '2021-10-06 09:09:13'),
('76ef7d9ad7a9f8791c3c238532e24da9b89b26da9a1a6179adb5e8305067beb64082007c68127c25', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:39:40', '2020-10-06 03:39:40', '2021-10-06 09:09:40'),
('7c7c4b693b5ee99161f296aa4357ef7e16107a738f507177e23d50dccd2927a3381a363659897c46', 9, 3, 'MyApp', '[]', 0, '2020-10-07 01:14:21', '2020-10-07 01:14:21', '2021-10-07 06:44:21'),
('842ab64f093372b3a3da7483bc0404c1ec2784f887d56de8deeeb0cd0f7eb93e98050daa897d3d09', 5, 3, 'MyApp', '[]', 0, '2020-10-01 04:20:24', '2020-10-01 04:20:24', '2021-10-01 09:50:24'),
('86597acdd3c114e034361107640a453095492491b4f4734a84b1a0778a942607d8613012b4a6c2d8', 1, 3, 'MyApp', '[]', 0, '2020-10-07 03:36:01', '2020-10-07 03:36:01', '2021-10-07 09:06:01'),
('9436fd930222bbdf4ba3629511a7227f2bfb9466f7cd51476a600c39ce2390afde0ae0e8b10cfc08', 9, 3, 'MyApp', '[]', 0, '2020-10-06 04:19:41', '2020-10-06 04:19:41', '2021-10-06 09:49:41'),
('962c79dff4a04ad32448369770f2cc985c60fa4c3c9171f7f770466d4abc3cd79775c457772c0cc0', 9, 3, 'MyApp', '[]', 0, '2020-10-06 04:13:23', '2020-10-06 04:13:23', '2021-10-06 09:43:23'),
('a4b5addc88544099f1cb305488a3955f2f0aad04886906e3e41642634f12167eb0180cdb99bff0e2', 11, 3, 'MyApp', '[]', 0, '2020-10-03 07:18:18', '2020-10-03 07:18:18', '2021-10-03 12:48:18'),
('b935c53337c8b3fd5e697f2e224ab7a03f59e35a8e2eacacb9fe72396fc41e6afb36d9b888160d70', 9, 3, 'MyApp', '[]', 0, '2020-10-06 01:52:00', '2020-10-06 01:52:00', '2021-10-06 07:22:00'),
('c5ebddd089feb7c9712d776d1c111e2aaf9865d7d359d5aeab724babcc6d5107b8d6bc8d144cb8a2', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:42:23', '2020-10-06 03:42:23', '2021-10-06 09:12:23'),
('cff5866678184da861840c57497a1509888998da8392baef47b7c46dc03d5f5953596fe8ac430846', 9, 3, 'MyApp', '[]', 0, '2020-10-06 04:19:51', '2020-10-06 04:19:51', '2021-10-06 09:49:51'),
('d1d18c8d85b9115f86ebc09d5ce46e1c2b60bb00bdae6ff67b135a83bef2acab63dcece3229c1360', 1, 3, 'MyApp', '[]', 0, '2020-10-07 02:21:00', '2020-10-07 02:21:00', '2021-10-07 07:51:00'),
('da3ec472403677ff999ac001bf1068242231338b0128d91e991b33d10c038dd5d81e4ab7f3719b9e', 5, 3, 'MyApp', '[]', 0, '2020-10-01 04:25:52', '2020-10-01 04:25:52', '2021-10-01 09:55:52'),
('ea4e6a995e16f91ce3051be4bac090c3c64b5a964d9a793435bf2957acac5e64564ecfb2865c54db', 9, 3, 'MyApp', '[]', 0, '2020-10-06 04:06:34', '2020-10-06 04:06:34', '2021-10-06 09:36:34'),
('f18c03ea4434e94bf5c4f5289a864901eb98259348afa6fcfb858588b18fc6ce4f1820b796fd1eec', 9, 3, 'MyApp', '[]', 0, '2020-10-06 02:35:40', '2020-10-06 02:35:40', '2021-10-06 08:05:40'),
('f5206121ff338d5e09ea81e0af2d4cc4b1f9f6eddd9a92d12fa1089b3237fc9bd8c37f5eca76cd13', 9, 3, 'MyApp', '[]', 0, '2020-10-06 03:12:49', '2020-10-06 03:12:49', '2021-10-06 08:42:49'),
('f78e64a4c58437742d64e52c950ea41969e85e9e12d73ff4bea97374f12e650e212bf80b0e008096', 9, 3, 'MyApp', '[]', 0, '2020-10-06 00:34:00', '2020-10-06 00:34:00', '2021-10-06 06:04:00'),
('fe8e8db7656f2259a5deed87f2740a81f738f1298a964a7370812f091cb31b3fa179d4f9f42be423', 11, 3, 'MyApp', '[]', 0, '2020-10-05 00:59:24', '2020-10-05 00:59:24', '2021-10-05 06:29:24'),
('fee189bc39ddcc4669fcd42bb2e05470cf59cc876757a96ababebe6485575472999b59a8e46beef1', 9, 3, 'MyApp', '[]', 0, '2020-10-06 00:18:44', '2020-10-06 00:18:44', '2021-10-06 05:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'UvFKqq28diyBcXIIvSFxFblaCOlwcuWffg0mR48U', NULL, 'http://localhost', 1, 0, 0, '2020-10-01 03:26:52', '2020-10-01 03:26:52'),
(2, NULL, 'Laravel Password Grant Client', '67rrfHMw07aFFSoVFqOXfPzLBBP2gxq1eyL9wBdh', 'users', 'http://localhost', 0, 1, 0, '2020-10-01 03:26:52', '2020-10-01 03:26:52'),
(3, NULL, 'Laravel Personal Access Client', 'BNorrDpXkCvKtqxjLppBtKSKYLgCCIc1YhmGVU1a', NULL, 'http://localhost', 1, 0, 0, '2020-10-01 04:20:00', '2020-10-01 04:20:00'),
(4, NULL, 'Laravel Password Grant Client', 'Vzd19j7K8I0HiAJcYuMZMnGXvLYEG4YPVOTGZu7Z', 'users', 'http://localhost', 0, 1, 0, '2020-10-01 04:20:00', '2020-10-01 04:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-01 03:26:52', '2020-10-01 03:26:52'),
(2, 3, '2020-10-01 04:20:00', '2020-10-01 04:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `privileges_roles`
--

CREATE TABLE `privileges_roles` (
  `id` bigint(20) NOT NULL,
  `privilege_id` bigint(20) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `view` tinyint(4) DEFAULT NULL,
  `adding` tinyint(4) DEFAULT NULL,
  `delete` tinyint(4) DEFAULT NULL,
  `update` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock_assign_to_employees`
--

CREATE TABLE `stock_assign_to_employees` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `location_status` enum('in','out') DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL COMMENT '"1" is allotted to employee nd 0 mean return ',
  `user_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_assign_to_employees`
--

INSERT INTO `stock_assign_to_employees` (`id`, `inventory_id`, `employee_id`, `location_status`, `status`, `user_id`, `updated_at`, `created_at`) VALUES
(6, 27, 5, 'in', '0', 1, '2020-10-06 01:12:01', '2020-10-06 01:07:49'),
(7, 27, 6, 'out', '1', 1, '2020-10-06 01:12:31', '2020-10-06 01:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `title`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 13, 'Sub Category', 'Active', 1, '2020-10-06 03:51:26', '2020-10-06 05:51:09'),
(8, 13, 'test', 'Active', 1, '2020-10-06 04:08:46', '2020-10-06 07:17:49'),
(9, 15, 'Tenosoft Sub category', 'Active', 13, '2020-10-07 00:51:24', '2020-10-07 00:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `role` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `user_type` enum('Admin','role_user') COLLATE utf8mb4_unicode_ci DEFAULT 'role_user',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile_image`, `name`, `email`, `email_verified_at`, `password`, `mobile_number`, `status`, `role`, `remember_token`, `is_admin`, `created_at`, `user_type`, `updated_at`) VALUES
(1, '1601715739.png', 'amit', 'admin@webcontxt.com', NULL, '$2y$10$oXp7k3QWQPE4qGvjZ77BROzEve2V0YZ0EpATjjms37sSM2/3h9bIa', '9887989986', 'Active', 1, NULL, 'Yes', '2020-10-03 03:32:19', 'Admin', '2020-10-03 06:34:56'),
(13, '1602050968.png', 'TechnoSoft', 'technosoft@mailinator.com', NULL, '$2y$10$nwVzeMsJqtWLFI.GOG/v9Owf7TPiCj2EEnE3eBUW6gIjA1G7B/kwq', '9887988798', 'Active', NULL, NULL, 'No', '2020-10-07 00:39:28', 'role_user', '2020-10-07 00:40:48'),
(14, '1602052039.png', 'Shyam Enterprices', 'shyam@gmail.com', NULL, '$2y$10$T3iSjrM6PqROIto.rmTUdO9DX4dz3uA.tUYTRNSLahu3mSCFP9sgK', '9887474885', 'Active', NULL, NULL, 'No', '2020-10-07 00:57:20', 'role_user', '2020-10-07 00:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `ware_houses`
--

CREATE TABLE `ware_houses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ware_houses`
--

INSERT INTO `ware_houses` (`id`, `title`, `address`, `status`, `user_id`, `updated_at`, `created_at`) VALUES
(3, 'Warehouse Jaipur', 'jaipur', 'Active', 1, '2020-10-06 03:53:28', '2020-10-06 03:53:28'),
(4, 'Tenosoft Ware house', 'jaipur', 'Active', 13, '2020-10-07 00:51:41', '2020-10-07 00:51:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empolyees`
--
ALTER TABLE `empolyees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `warehoure` (`warehouse_id`),
  ADD KEY `sub_category` (`subcategory_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges_roles`
--
ALTER TABLE `privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_assign_to_employees`
--
ALTER TABLE `stock_assign_to_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `ware_houses`
--
ALTER TABLE `ware_houses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `empolyees`
--
ALTER TABLE `empolyees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privileges_roles`
--
ALTER TABLE `privileges_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_assign_to_employees`
--
ALTER TABLE `stock_assign_to_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ware_houses`
--
ALTER TABLE `ware_houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `category_restrict` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sub_category` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `warehoure` FOREIGN KEY (`warehouse_id`) REFERENCES `ware_houses` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
