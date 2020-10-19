-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: inventory_managnment
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assign_reasons`
--

DROP TABLE IF EXISTS `assign_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assign_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign_reasons`
--

LOCK TABLES `assign_reasons` WRITE;
/*!40000 ALTER TABLE `assign_reasons` DISABLE KEYS */;
INSERT INTO `assign_reasons` VALUES (1,'WFH','Active',1,'2020-10-09 03:36:29','2020-10-09 03:36:29'),(2,'Event','Active',1,'2020-10-09 03:36:40','2020-10-09 03:37:28'),(3,'Dump','Active',1,'2020-10-09 03:36:49','2020-10-09 03:37:36');
/*!40000 ALTER TABLE `assign_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (15,'Techno Soft Category','Active',13,'2020-10-07 00:49:36','2020-10-07 00:49:36'),(17,'Computer','Active',1,'2020-10-09 04:13:17','2020-10-09 04:13:17');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empolyees`
--

DROP TABLE IF EXISTS `empolyees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empolyees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emp_code` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empolyees`
--

LOCK TABLES `empolyees` WRITE;
/*!40000 ALTER TABLE `empolyees` DISABLE KEYS */;
INSERT INTO `empolyees` VALUES (12,'name','department','email','emp_code','contact',1,'Active','2020-10-09 07:07:56','2020-10-09 07:07:56'),(13,'Amit','TEst','amit@gmail.com','465','9887989986',1,'Active','2020-10-09 07:07:56','2020-10-09 07:07:56');
/*!40000 ALTER TABLE `empolyees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `warehoure` (`warehouse_id`),
  KEY `sub_category` (`subcategory_id`),
  KEY `store` (`store_id`),
  CONSTRAINT `category_restrict` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE NO ACTION,
  CONSTRAINT `store` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `sub_category` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON UPDATE NO ACTION,
  CONSTRAINT `warehoure` FOREIGN KEY (`warehouse_id`) REFERENCES `ware_houses` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (2,'Delhi',1,'Active','2020-10-09 03:24:03','2020-10-09 03:24:03');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('0330aa647290ea50ce23db2d03b76851bb827fe31c265ba8163a1ed4e87a763b77cacbd70d1f36f1',1,3,'MyApp','[]',0,'2020-10-08 06:44:46','2020-10-08 06:44:46','2021-10-08 12:14:46'),('0a21f09d8bc5b13e03607d9b94351c46e5e5fa653b0374c70de16b3357712ba09d80df7bea9e5993',9,3,'MyApp','[]',0,'2020-10-06 03:18:40','2020-10-06 03:18:40','2021-10-06 08:48:40'),('0eb0418984c88b71bafb83b67713422e87897392589f24dbcbf872a21e5f8463c98acd9289e6a7a0',13,3,'MyApp','[]',0,'2020-10-08 04:15:13','2020-10-08 04:15:13','2021-10-08 09:45:13'),('0f602db0ef734e128209bd989f4b648373f006ea3dae4961bb1aa04a648d63b93ca7f1a8efa6f693',1,3,'MyApp','[]',0,'2020-10-08 01:12:29','2020-10-08 01:12:29','2021-10-08 06:42:29'),('0f66c23bce5bcc3d39893a473fc49d4770ae3a85ac6dbd996d65c1ebd816cf860334194cb5a09160',1,3,'MyApp','[]',0,'2020-10-08 01:13:08','2020-10-08 01:13:08','2021-10-08 06:43:08'),('1948685ec9ca2a564ed0be77b925ac3ce1aec679b21fa470ddae9c9fc7845cae1c7a6e6231ec43a1',9,3,'MyApp','[]',0,'2020-10-06 04:18:01','2020-10-06 04:18:01','2021-10-06 09:48:01'),('1f3c80524a43fb2dc67fbfa6ce490342dab4f3334a3243d2a18a04dc10591a91927546e7178ce03e',9,3,'MyApp','[]',0,'2020-10-06 03:38:38','2020-10-06 03:38:38','2021-10-06 09:08:38'),('202cbd2bb0fd5fd1c718d5940e901bafaae587b77f4ec1f15ea53d2ec12fb08f61727730eae1f815',13,3,'MyApp','[]',0,'2020-10-09 00:36:05','2020-10-09 00:36:05','2021-10-09 06:06:05'),('22f3cc9c0ec58fc865d350069cd6ecf59c3bee7b50cadb3dd0982eb67ab9feb21e08a5b30fce281c',1,3,'MyApp','[]',0,'2020-10-08 23:11:03','2020-10-08 23:11:03','2021-10-09 04:41:03'),('23f1a3ed3c326a4dd06dbb5d46603555022dc4ce119c0817a623efb422db4a1e288427b28038bdb4',9,3,'MyApp','[]',0,'2020-10-06 03:12:22','2020-10-06 03:12:22','2021-10-06 08:42:22'),('27913db79b241445e71e17cd2e271161e4e84d75f2eacde4b9bd9a3a086041369aec03c81d89f499',9,3,'MyApp','[]',0,'2020-10-06 03:42:31','2020-10-06 03:42:31','2021-10-06 09:12:31'),('27cd32c64fc255d22c406a044479bbe0e6b716431a156178c1479dae8a1036b8e367f999bd6a2f58',1,3,'MyApp','[]',0,'2020-10-08 01:45:03','2020-10-08 01:45:03','2021-10-08 07:15:03'),('285ace1d07a747c1f52ae9f561a0791d4ffc6ca67186119f678f01d5df1e96fd6071411a2af61f46',1,3,'MyApp','[]',0,'2020-10-08 02:02:35','2020-10-08 02:02:35','2021-10-08 07:32:35'),('2943ae77bda89fbf9eac8e3d00589e8743b7bce3e4e3a9cd1049559004554f7a2a399c285faf6944',11,3,'MyApp','[]',0,'2020-10-05 01:36:15','2020-10-05 01:36:15','2021-10-05 07:06:15'),('2d062a3a9ec4d04b548618eeda7139a3f71d0d7d31bc0fffb5f3e96830d1604b63aace3c05c03b44',9,3,'MyApp','[]',0,'2020-10-06 00:35:35','2020-10-06 00:35:35','2021-10-06 06:05:35'),('33e0b9668b5c90f2930178373d0f7e6004b42cc10317750e352788bc42a1aa929401d1fa500eb0fb',9,3,'MyApp','[]',0,'2020-10-06 23:07:02','2020-10-06 23:07:02','2021-10-07 04:37:02'),('37decf587ee6ceefde13e58fb80b10c0cfba7e544c0ee453afd8141cc25a13391c6afdb377f653d9',1,3,'MyApp','[]',0,'2020-10-08 23:00:45','2020-10-08 23:00:45','2021-10-09 04:30:45'),('3ac8b4fff706217eab7dae169d185e153dd7caedf252b8477c51183dfe2d19736cd5ca8c4f0552aa',13,3,'MyApp','[]',0,'2020-10-08 02:11:24','2020-10-08 02:11:24','2021-10-08 07:41:24'),('3b8853cdd23f25e95455ee65a3ed6669c80e0aa7ab1f6371856b5280f5adff5aff314f0b79928947',9,3,'MyApp','[]',0,'2020-10-07 01:14:17','2020-10-07 01:14:17','2021-10-07 06:44:17'),('3e4f170d29f0274669addda6e21c89db449c8a890392ca2472b756da8e89fec4bacbeb8e88d38a5e',9,3,'MyApp','[]',0,'2020-10-06 03:43:01','2020-10-06 03:43:01','2021-10-06 09:13:01'),('3febd008b8b8b5fb13421a77ac942c6cc4f2380cb50e8cf1fab8a47bb96e3756c518cd84a34ed0df',13,3,'MyApp','[]',0,'2020-10-08 03:23:25','2020-10-08 03:23:25','2021-10-08 08:53:25'),('4c72b1105e91359cb5b117aee573d0727b7f626aac82d929357469c1ed7514e035fdae46fd5f01b5',9,3,'MyApp','[]',0,'2020-10-06 03:38:07','2020-10-06 03:38:07','2021-10-06 09:08:07'),('4e438516dbfea620c0aebc9ee1bbad745aab51a09c2bb2d74acad46be3c2d0c166338a49cb982522',1,3,'MyApp','[]',0,'2020-10-08 05:04:09','2020-10-08 05:04:09','2021-10-08 10:34:09'),('57ffc34eca1a30293b2012f04933db194cecec7564ea7a5425b6dd8c51b2ad115190bb1b291d03a7',1,3,'MyApp','[]',0,'2020-10-08 01:25:30','2020-10-08 01:25:30','2021-10-08 06:55:30'),('675fab4c07778d9120ce88091021a5e60aba249d1df1cc606a2bc7a022ab29709b083a561f96d7df',9,3,'MyApp','[]',0,'2020-10-06 00:34:04','2020-10-06 00:34:04','2021-10-06 06:04:04'),('6cb67c715be4afcb953d23f9e2bc1664809c964ca2072fa02eadc32dbb651e5759d92f34b314d74d',9,3,'MyApp','[]',0,'2020-10-06 03:18:49','2020-10-06 03:18:49','2021-10-06 08:48:49'),('744ca759169abbb4a10a5d5216351a8c952852d0c1a93c8bc8edcf7357eaac7d9761026205d4e200',1,3,'MyApp','[]',0,'2020-10-08 01:33:39','2020-10-08 01:33:39','2021-10-08 07:03:39'),('7452a5f5242f1446aca6c87cf5c0168fe48077b2a6063552717f3c3a7881e14b85264b6919db8b97',9,3,'MyApp','[]',0,'2020-10-06 03:39:13','2020-10-06 03:39:13','2021-10-06 09:09:13'),('757716ea4ce91ff8a5b61ff7f69fde463a0148cd555cfb69c9758d9e5bff0195c5f725d0d106f254',1,3,'MyApp','[]',0,'2020-10-08 01:12:55','2020-10-08 01:12:55','2021-10-08 06:42:55'),('76604d70198496cbc70a35a252ff4525b8190b5f062f13263f533f64a1d2d4f76a34af64f4330068',1,3,'MyApp','[]',0,'2020-10-08 01:24:47','2020-10-08 01:24:47','2021-10-08 06:54:47'),('76ef7d9ad7a9f8791c3c238532e24da9b89b26da9a1a6179adb5e8305067beb64082007c68127c25',9,3,'MyApp','[]',0,'2020-10-06 03:39:40','2020-10-06 03:39:40','2021-10-06 09:09:40'),('7c7c4b693b5ee99161f296aa4357ef7e16107a738f507177e23d50dccd2927a3381a363659897c46',9,3,'MyApp','[]',0,'2020-10-07 01:14:21','2020-10-07 01:14:21','2021-10-07 06:44:21'),('7fbbe954bbd09c1496dd768add033cd5c3494273f6958ae7d61c552704a1282aa68f3389b591a49a',1,3,'MyApp','[]',0,'2020-10-08 07:28:45','2020-10-08 07:28:45','2021-10-08 12:58:45'),('842ab64f093372b3a3da7483bc0404c1ec2784f887d56de8deeeb0cd0f7eb93e98050daa897d3d09',5,3,'MyApp','[]',0,'2020-10-01 04:20:24','2020-10-01 04:20:24','2021-10-01 09:50:24'),('86597acdd3c114e034361107640a453095492491b4f4734a84b1a0778a942607d8613012b4a6c2d8',1,3,'MyApp','[]',0,'2020-10-07 03:36:01','2020-10-07 03:36:01','2021-10-07 09:06:01'),('899727d2fa794e36b4896cf88d17f6353c2aecc369e2b2dfa13b016d14e11bc486091ce60148dc88',1,3,'MyApp','[]',0,'2020-10-07 23:00:09','2020-10-07 23:00:09','2021-10-08 04:30:09'),('91f51362f3999f03f4757f770ab8426d80b48d9f7fd945887ab446776324f722ffd27407f8207839',1,3,'MyApp','[]',0,'2020-10-08 00:52:42','2020-10-08 00:52:42','2021-10-08 06:22:42'),('9210728aadbf9373a36ee2dfb6d1a6ea1f5c858dac2528dc4e577e628c7e6f7c4da4d7b6def4394a',1,3,'MyApp','[]',0,'2020-10-07 23:54:39','2020-10-07 23:54:39','2021-10-08 05:24:39'),('92a2e207b7783ba701eb1c98e0fd00e54b0530cdf3f04beb9a9bb900411d0eff251780dbec8f20b4',1,3,'MyApp','[]',0,'2020-10-07 23:31:44','2020-10-07 23:31:44','2021-10-08 05:01:44'),('9436fd930222bbdf4ba3629511a7227f2bfb9466f7cd51476a600c39ce2390afde0ae0e8b10cfc08',9,3,'MyApp','[]',0,'2020-10-06 04:19:41','2020-10-06 04:19:41','2021-10-06 09:49:41'),('962c79dff4a04ad32448369770f2cc985c60fa4c3c9171f7f770466d4abc3cd79775c457772c0cc0',9,3,'MyApp','[]',0,'2020-10-06 04:13:23','2020-10-06 04:13:23','2021-10-06 09:43:23'),('9e4a04f536f88a8c35c1e027b430760e183f54347613a73f18e51a223777c93fae8293cfb0b90fdf',1,3,'MyApp','[]',0,'2020-10-08 01:51:04','2020-10-08 01:51:04','2021-10-08 07:21:04'),('9e6b359d9bf5f7e35f85d3b4b217207c3f8cafd2d9ebd59e099a44ea1306a1454f1591b3c2baef08',1,3,'MyApp','[]',0,'2020-10-07 23:57:02','2020-10-07 23:57:02','2021-10-08 05:27:02'),('a4b5addc88544099f1cb305488a3955f2f0aad04886906e3e41642634f12167eb0180cdb99bff0e2',11,3,'MyApp','[]',0,'2020-10-03 07:18:18','2020-10-03 07:18:18','2021-10-03 12:48:18'),('ad3bfa1973a812906514882c0b7f977fbe6b5303880d62b3f8e8aab8c4bb37d8747c292b94f51d3b',13,3,'MyApp','[]',0,'2020-10-08 04:14:32','2020-10-08 04:14:32','2021-10-08 09:44:32'),('b935c53337c8b3fd5e697f2e224ab7a03f59e35a8e2eacacb9fe72396fc41e6afb36d9b888160d70',9,3,'MyApp','[]',0,'2020-10-06 01:52:00','2020-10-06 01:52:00','2021-10-06 07:22:00'),('b9d2d926034676d697f600ba7b476a6fc94380d6052d80441c72a26ff8742372fe0c87bf3a5ce5be',1,3,'MyApp','[]',0,'2020-10-08 00:53:49','2020-10-08 00:53:49','2021-10-08 06:23:49'),('c5ebddd089feb7c9712d776d1c111e2aaf9865d7d359d5aeab724babcc6d5107b8d6bc8d144cb8a2',9,3,'MyApp','[]',0,'2020-10-06 03:42:23','2020-10-06 03:42:23','2021-10-06 09:12:23'),('cff5866678184da861840c57497a1509888998da8392baef47b7c46dc03d5f5953596fe8ac430846',9,3,'MyApp','[]',0,'2020-10-06 04:19:51','2020-10-06 04:19:51','2021-10-06 09:49:51'),('d06f171cb3a6cd839bbeab29915e983dec699bf5204cdacc7911429cbf06679ebc50882af3550508',13,3,'MyApp','[]',0,'2020-10-08 04:13:54','2020-10-08 04:13:54','2021-10-08 09:43:54'),('d1d18c8d85b9115f86ebc09d5ce46e1c2b60bb00bdae6ff67b135a83bef2acab63dcece3229c1360',1,3,'MyApp','[]',0,'2020-10-07 02:21:00','2020-10-07 02:21:00','2021-10-07 07:51:00'),('da3ec472403677ff999ac001bf1068242231338b0128d91e991b33d10c038dd5d81e4ab7f3719b9e',5,3,'MyApp','[]',0,'2020-10-01 04:25:52','2020-10-01 04:25:52','2021-10-01 09:55:52'),('e7a2f20dd2513e856e0a04e4970573d7696758639007919f909f1381101228f28407994e6b894e0f',1,3,'MyApp','[]',0,'2020-10-07 23:54:43','2020-10-07 23:54:43','2021-10-08 05:24:43'),('e9de8611a7c8a4bb0e4b4ce4c3882ec6bd451049336ef1622b3472d6d0a7263399b1e2b6f5f4b219',1,3,'MyApp','[]',0,'2020-10-08 07:07:54','2020-10-08 07:07:54','2021-10-08 12:37:54'),('ea4e6a995e16f91ce3051be4bac090c3c64b5a964d9a793435bf2957acac5e64564ecfb2865c54db',9,3,'MyApp','[]',0,'2020-10-06 04:06:34','2020-10-06 04:06:34','2021-10-06 09:36:34'),('eebb4f7aa4a41df12ba84ec7beef4cc095a56f5faa87936647393172ea3c3e706a792b17620555f3',13,3,'MyApp','[]',0,'2020-10-08 03:20:34','2020-10-08 03:20:34','2021-10-08 08:50:34'),('f18c03ea4434e94bf5c4f5289a864901eb98259348afa6fcfb858588b18fc6ce4f1820b796fd1eec',9,3,'MyApp','[]',0,'2020-10-06 02:35:40','2020-10-06 02:35:40','2021-10-06 08:05:40'),('f4f4e66b9c95d4033449c7c6a35fbe377bc9d8564b044d4e5c2d18a1c1ba3f4e7beed50512652b88',1,3,'MyApp','[]',0,'2020-10-08 01:47:58','2020-10-08 01:47:58','2021-10-08 07:17:58'),('f5206121ff338d5e09ea81e0af2d4cc4b1f9f6eddd9a92d12fa1089b3237fc9bd8c37f5eca76cd13',9,3,'MyApp','[]',0,'2020-10-06 03:12:49','2020-10-06 03:12:49','2021-10-06 08:42:49'),('f78e64a4c58437742d64e52c950ea41969e85e9e12d73ff4bea97374f12e650e212bf80b0e008096',9,3,'MyApp','[]',0,'2020-10-06 00:34:00','2020-10-06 00:34:00','2021-10-06 06:04:00'),('f89e0a51dfad3549a3a73a3323a30861cc59540756a3b4fcffbdb504a70b183b8e6698d8d91c25fa',1,3,'MyApp','[]',0,'2020-10-07 23:56:18','2020-10-07 23:56:18','2021-10-08 05:26:18'),('f8f03a4b4cae6827ff444202a9c6b2ea0f67032339626ac4ecdf8ce3859c869e5ab4d1453ab4ce71',13,3,'MyApp','[]',0,'2020-10-08 04:15:43','2020-10-08 04:15:43','2021-10-08 09:45:43'),('fe8e8db7656f2259a5deed87f2740a81f738f1298a964a7370812f091cb31b3fa179d4f9f42be423',11,3,'MyApp','[]',0,'2020-10-05 00:59:24','2020-10-05 00:59:24','2021-10-05 06:29:24'),('fee189bc39ddcc4669fcd42bb2e05470cf59cc876757a96ababebe6485575472999b59a8e46beef1',9,3,'MyApp','[]',0,'2020-10-06 00:18:44','2020-10-06 00:18:44','2021-10-06 05:48:44');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','UvFKqq28diyBcXIIvSFxFblaCOlwcuWffg0mR48U',NULL,'http://localhost',1,0,0,'2020-10-01 03:26:52','2020-10-01 03:26:52'),(2,NULL,'Laravel Password Grant Client','67rrfHMw07aFFSoVFqOXfPzLBBP2gxq1eyL9wBdh','users','http://localhost',0,1,0,'2020-10-01 03:26:52','2020-10-01 03:26:52'),(3,NULL,'Laravel Personal Access Client','BNorrDpXkCvKtqxjLppBtKSKYLgCCIc1YhmGVU1a',NULL,'http://localhost',1,0,0,'2020-10-01 04:20:00','2020-10-01 04:20:00'),(4,NULL,'Laravel Password Grant Client','Vzd19j7K8I0HiAJcYuMZMnGXvLYEG4YPVOTGZu7Z','users','http://localhost',0,1,0,'2020-10-01 04:20:00','2020-10-01 04:20:00');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-10-01 03:26:52','2020-10-01 03:26:52'),(2,3,'2020-10-01 04:20:00','2020-10-01 04:20:00');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges_roles`
--

DROP TABLE IF EXISTS `privileges_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `privilege_id` bigint(20) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `view` tinyint(4) DEFAULT NULL,
  `adding` tinyint(4) DEFAULT NULL,
  `delete` tinyint(4) DEFAULT NULL,
  `update` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges_roles`
--

LOCK TABLES `privileges_roles` WRITE;
/*!40000 ALTER TABLE `privileges_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_assign_to_employees`
--

DROP TABLE IF EXISTS `stock_assign_to_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_assign_to_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `location_status` enum('in','out') DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL COMMENT '"1" is allotted to employee nd 0 mean return ',
  `user_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_assign_to_employees`
--

LOCK TABLES `stock_assign_to_employees` WRITE;
/*!40000 ALTER TABLE `stock_assign_to_employees` DISABLE KEYS */;
INSERT INTO `stock_assign_to_employees` VALUES (13,31,5,'in','1',1,'2020-10-08 03:31:49','2020-10-08 03:31:49'),(14,32,5,'in','0',13,'2020-10-08 03:59:28','2020-10-08 03:43:06'),(15,33,5,'in','0',1,'2020-10-08 04:07:03','2020-10-08 04:04:46');
/*!40000 ALTER TABLE `stock_assign_to_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_assign_to_stores`
--

DROP TABLE IF EXISTS `stock_assign_to_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_assign_to_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('in','out') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_assign_to_stores`
--

LOCK TABLES `stock_assign_to_stores` WRITE;
/*!40000 ALTER TABLE `stock_assign_to_stores` DISABLE KEYS */;
INSERT INTO `stock_assign_to_stores` VALUES (1,31,2,1,'out','2020-10-08 00:09:12','2020-10-08 03:31:49'),(2,32,1,1,'in','2020-10-08 03:42:16','2020-10-08 04:00:51'),(3,33,1,1,'in','2020-10-08 04:04:26','2020-10-08 04:07:03');
/*!40000 ALTER TABLE `stock_assign_to_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Basment','Active',1,'2020-10-07 22:56:28','2020-10-09 02:14:52'),(2,'Top Flore','Active',1,'2020-10-07 22:56:28','2020-10-08 06:27:04');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (10,17,'Hp','Active',1,'2020-10-09 04:15:28','2020-10-09 04:15:28'),(11,17,'Apple','Active',1,'2020-10-09 04:15:47','2020-10-09 04:15:47'),(12,17,'Lanovo','Active',1,'2020-10-09 04:16:00','2020-10-09 04:16:00');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsubcategories`
--

DROP TABLE IF EXISTS `subsubcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsubcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsubcategories`
--

LOCK TABLES `subsubcategories` WRITE;
/*!40000 ALTER TABLE `subsubcategories` DISABLE KEYS */;
INSERT INTO `subsubcategories` VALUES (2,17,1,11,'Mouses','Active','2020-10-09 04:17:43','2020-10-09 04:53:46'),(3,17,1,11,'Kyeboard','Active','2020-10-09 04:37:06','2020-10-09 04:56:05'),(4,17,1,11,'Screen','Active','2020-10-09 04:37:21','2020-10-09 04:56:00');
/*!40000 ALTER TABLE `subsubcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1601715739.png','amit','admin@webcontxt.com',NULL,'$2y$10$oXp7k3QWQPE4qGvjZ77BROzEve2V0YZ0EpATjjms37sSM2/3h9bIa','9887989986','Active',1,NULL,'Yes','2020-10-03 03:32:19','Admin','2020-10-03 06:34:56'),(13,'1602050968.png','TechnoSoft','technosoft@mailinator.com',NULL,'$2y$10$nwVzeMsJqtWLFI.GOG/v9Owf7TPiCj2EEnE3eBUW6gIjA1G7B/kwq','9887988798','Active',NULL,NULL,'No','2020-10-07 00:39:28','role_user','2020-10-07 00:40:48'),(14,'1602052039.png','Shyam Enterprices','shyam@gmail.com',NULL,'$2y$10$T3iSjrM6PqROIto.rmTUdO9DX4dz3uA.tUYTRNSLahu3mSCFP9sgK','9887474885','Active',NULL,NULL,'No','2020-10-07 00:57:20','role_user','2020-10-07 00:57:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ware_houses`
--

DROP TABLE IF EXISTS `ware_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ware_houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ware_houses`
--

LOCK TABLES `ware_houses` WRITE;
/*!40000 ALTER TABLE `ware_houses` DISABLE KEYS */;
INSERT INTO `ware_houses` VALUES (3,'Warehouse Jaipur','jaipur','Active',1,'2020-10-06 03:53:28','2020-10-06 03:53:28'),(4,'Tenosoft Ware house','jaipur','Active',13,'2020-10-07 00:51:41','2020-10-07 00:51:41');
/*!40000 ALTER TABLE `ware_houses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-09 18:20:51
