-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2020 at 06:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digiplug`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_packages`
--

CREATE TABLE `apply_packages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply_packages`
--

INSERT INTO `apply_packages` (`id`, `user_id`, `package_id`, `status`, `created_at`, `updated_at`) VALUES
(11, 90, 2, 'Active', '2020-06-26 13:53:33', '2020-06-26 13:53:33'),
(12, 99, 1, 'Active', '2020-06-26 13:53:33', '2020-06-26 13:53:33'),
(13, 100, 2, 'Inactive', '2020-07-18 05:50:02', '2020-07-18 05:56:47'),
(14, 100, 1, 'Active', '2020-07-18 05:56:47', '2020-07-18 05:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `banner_ads`
--

CREATE TABLE `banner_ads` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `fullpath` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_ads`
--

INSERT INTO `banner_ads` (`id`, `title`, `image`, `link`, `fullpath`, `path`, `status`, `created_at`, `updated_at`) VALUES
(31, 'V Hype App', '1594828769.jpeg', 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/banners/04JGoukOntBbwgGvSflQ0hXqeyjOOw9gjGfZ1O7X.jpeg', 'images/banners/04JGoukOntBbwgGvSflQ0hXqeyjOOw9gjGfZ1O7X.jpeg', 'Active', '2020-07-15 15:59:29', '2020-08-11 14:09:38'),
(37, 'V Hype Offer', '1597155058.jpeg', 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/banners/zOuQg05RHLuNiCxatAyFyt1LASjtVx6F2hqPM4vC.jpeg', 'images/banners/zOuQg05RHLuNiCxatAyFyt1LASjtVx6F2hqPM4vC.jpeg', 'Active', '2020-08-11 14:10:58', '2020-08-11 14:10:58'),
(38, 'V Hype Banner Image', '1597155151.jpeg', 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/banners/oDqrgkVxPbhXI15gpscmUXybqknnRNqg0iPhvvVL.jpeg', 'images/banners/oDqrgkVxPbhXI15gpscmUXybqknnRNqg0iPhvvVL.jpeg', 'Active', '2020-08-11 14:12:31', '2020-08-11 14:12:31'),
(39, 'Visual Hype', '1597155375.jpeg', 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/banners/M0jXBxYzpLrmFkU9RNOXWHWxODi6On0u7CyPNQhJ.jpeg', 'images/banners/M0jXBxYzpLrmFkU9RNOXWHWxODi6On0u7CyPNQhJ.jpeg', 'Active', '2020-08-11 14:16:15', '2020-08-11 14:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `digital_cards`
--

CREATE TABLE `digital_cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `established_year` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ladmark` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `cupoun_code` varchar(255) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `time` text DEFAULT NULL,
  `services` text DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `log` double DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `paytm` varchar(255) DEFAULT NULL,
  `upi_no` varchar(255) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `insta` varchar(255) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `linkdin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `path1` varchar(255) DEFAULT NULL,
  `path2` varchar(255) DEFAULT NULL,
  `path3` varchar(255) DEFAULT NULL,
  `path4` varchar(255) DEFAULT NULL,
  `path5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `digital_cards`
--

INSERT INTO `digital_cards` (`id`, `user_id`, `logo`, `banner`, `company_name`, `mobile`, `email`, `about`, `established_year`, `address`, `ladmark`, `city`, `state`, `pincode`, `cupoun_code`, `gender`, `owner_name`, `time`, `services`, `lat`, `log`, `status`, `created_at`, `updated_at`, `website_link`, `paytm`, `upi_no`, `fb`, `youtube_url`, `twitter`, `insta`, `view_count`, `linkdin`, `youtube`, `image1`, `image2`, `image3`, `package_id`, `image4`, `image5`, `path1`, `path2`, `path3`, `path4`, `path5`) VALUES
(7, 99, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1594889325.jpeg', NULL, 'devparadegims', '9887989986', 'amitnagarphpdeveloper@gmail.com', 'web development company', '16/6/2020', 'Kaladera Rd, Kaladera, Rajasthan 303801, India,Rajasthan', 'gorvermet hospital', 'Kaladera', 'Rajasthan', NULL, NULL, NULL, 'Amit nadev', '[{\"day\":\"Mon\",\"endTime\":\"7:11\",\"startTime\":\"9:10\"},{\"day\":\"Tue\",\"endTime\":\"7:11\",\"startTime\":\"9:10\"},{\"day\":\"Wed\",\"endTime\":\"7:11\",\"startTime\":\"9:10\"},{\"day\":\"Thu\",\"endTime\":\"7:11\",\"startTime\":\"9:10\"},{\"day\":\"Fri\",\"endTime\":\"7:11\",\"startTime\":\"9:10\"},{\"day\":\"Sat\",\"endTime\":\"7:11\",\"startTime\":\"9:10\"},{\"day\":\"Sun\",\"endTime\":\"7:11\",\"startTime\":\"9:10\"}]', '[{\"id\":\"1\",\"isSelected\":{\"mValue\":false},\"title\":\"Web developnment\"},{\"id\":\"4\",\"isSelected\":{\"mValue\":false},\"title\":\"Telecommunications\"},{\"id\":\"7\",\"isSelected\":{\"mValue\":false},\"title\":\"Marketing\"},{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Sales\"},{\"id\":\"3\",\"isSelected\":{\"mValue\":false},\"title\":\"Banking\"},{\"id\":\"2\",\"isSelected\":{\"mValue\":false},\"title\":\"Consultancy\"},{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Engineering\"}]', 27.1873399, 75.627523, 'Active', '2020-07-16 08:48:49', '2020-08-17 16:58:07', 'www.devparadigms.com', '9887989986', '9887989986@ybi', 'www.facebook.com', 'https://www.youtube.com/watch?v=7W6y2c4PkAs', 'www.twitter.com', 'www.instagram', 142, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/L2iPKztK5FnjL24ULOiHzKwzVChnvzNxpjIHiZ68.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/fr9BZvyevQ05nN9tJz6XfOPouYbICMj4HThGU9HD.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/csA1SRdRDZvMtcypqP90j6QztCBnNLDoVOj61Jo2.jpeg', 3, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/d87yOitNIFIVuh194r1oOAL3j8VTzq67qesz0oZK.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/ebXgE5DeJY2TcbVq9k89M99PWVtKh6ta4LuBXELg.jpeg', 'images/digitalcard/L2iPKztK5FnjL24ULOiHzKwzVChnvzNxpjIHiZ68.jpeg', 'images/digitalcard/fr9BZvyevQ05nN9tJz6XfOPouYbICMj4HThGU9HD.jpeg', 'images/digitalcard/csA1SRdRDZvMtcypqP90j6QztCBnNLDoVOj61Jo2.jpeg', 'images/digitalcard/d87yOitNIFIVuh194r1oOAL3j8VTzq67qesz0oZK.jpeg', 'images/digitalcard/ebXgE5DeJY2TcbVq9k89M99PWVtKh6ta4LuBXELg.jpeg'),
(8, 4, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1594897599.jpeg', NULL, 'jdjd', '9024383238', 'anujkmwt3@gmail.com', 'ansns', '16/6/1996', '17, Maharaja Colony, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,India,IN,Rajasthan,302039,Jaipur,Jaipur,null', 'hzhzhz', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'hzhs', '[{\"day\":\"Mon\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"}]', '[{\"id\":\"1\",\"isSelected\":{\"mValue\":false},\"title\":\"Web developnment\"},{\"id\":\"3\",\"isSelected\":{\"mValue\":false},\"title\":\"Banking\"},{\"id\":\"2\",\"isSelected\":{\"mValue\":false},\"title\":\"Consultancy\"}]', 26.95745686, 75.77057179, 'Active', '2020-07-16 11:06:42', '2020-07-21 04:38:39', 'bdhd', '98646465', 'bdhdhs', 'bxjdjd', NULL, 'jxhdhx', 'hxhxjd', 3, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/NENTCmb8oSDEz8si8vYf3cxfcsUL9btIPoGqatnD.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/piqicA0Tfll1v85IWyF6bcoNxsXBIC8sYcHG4mvP.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/5rcPz0k5htCkmMm4VdlxL6PL1aPnLGRu5wpMjTtX.jpeg', 1, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/gUDKYYotUkSJdsQSfUK62sAInQpwvyLkKXjzyRld.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/dS2CeNGBZ7uXutIEnnCCcf9G58AhR4EvrLfYIfqi.jpeg', 'images/digitalcard/NENTCmb8oSDEz8si8vYf3cxfcsUL9btIPoGqatnD.jpeg', 'images/digitalcard/piqicA0Tfll1v85IWyF6bcoNxsXBIC8sYcHG4mvP.jpeg', 'images/digitalcard/5rcPz0k5htCkmMm4VdlxL6PL1aPnLGRu5wpMjTtX.jpeg', 'images/digitalcard/gUDKYYotUkSJdsQSfUK62sAInQpwvyLkKXjzyRld.jpeg', 'images/digitalcard/dS2CeNGBZ7uXutIEnnCCcf9G58AhR4EvrLfYIfqi.jpeg'),
(19, 101, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1594945089.jpeg', NULL, 'amit namdev', '9887989986', 'amitnagarphpdeveloper@gmail.com', 'web development company', '10/11/2019', 'Unnamed Road, Kaladera, Rajasthan 303801, India,Rajasthan', 'test', 'Kaladera', 'Rajasthan', NULL, NULL, NULL, 'amit namdev', '[{\"day\":\"Mon\",\"endTime\":\"6:10\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"6:10\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"6:10\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"6:10\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"6:10\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"6:10\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"6:10\",\"startTime\":\"7:10\"}]', '[{\"id\":\"7\",\"isSelected\":{\"mValue\":false},\"title\":\"Marketing\"},{\"id\":\"4\",\"isSelected\":{\"mValue\":false},\"title\":\"Telecommunications\"},{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Sales\"},{\"id\":\"3\",\"isSelected\":{\"mValue\":false},\"title\":\"Banking\"},{\"id\":\"1\",\"isSelected\":{\"mValue\":false},\"title\":\"Web developnment\"},{\"id\":\"2\",\"isSelected\":{\"mValue\":false},\"title\":\"Consultancy\"},{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Engineering\"}]', 27.1867788, 75.6274317, 'Active', '2020-07-17 00:18:12', '2020-07-17 00:18:12', 'www.digiplug.com', '9887989986', '9887989986@ybi', 'www.facebook.com', NULL, 'www.twitter.com', 'www.instagram', NULL, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/TtJ0YQpkO76MKPBbaefhLGr9aeyOSBK7Kfyy78E5.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/ZdHnNlTMpqY0cWuPZfEqaNsYm3nqaA7yOR3639Vn.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/m2soeN4hTrlHprQ073YzFBeoxbIzqcacqehmtPlA.jpeg', NULL, NULL, NULL, 'images/digitalcard/TtJ0YQpkO76MKPBbaefhLGr9aeyOSBK7Kfyy78E5.jpeg', 'images/digitalcard/ZdHnNlTMpqY0cWuPZfEqaNsYm3nqaA7yOR3639Vn.jpeg', 'images/digitalcard/m2soeN4hTrlHprQ073YzFBeoxbIzqcacqehmtPlA.jpeg', NULL, NULL),
(24, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-07-18 16:35:49', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, NULL, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(25, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-07-18 16:46:36', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, NULL, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(26, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-07-18 16:50:09', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 7, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(27, 104, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1595119916.jpeg', NULL, 'devparadigms', '8386068449', 'amb@mailinator.com', 'web company', '11/11/2018', 'Kaladera Rd, Kaladera, Rajasthan 303801, India,India,IN,Rajasthan,303801,Jaipur,Kaladera,null', 'test', 'Kaladera', 'Rajasthan', NULL, NULL, NULL, 'amit', '[{\"day\":\"Mon\",\"endTime\":\"7:30\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"7:30\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"7:30\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"7:30\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"7:30\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"7:30\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"7:30\",\"startTime\":\"7:10\"}]', '[{\"id\":\"7\",\"isSelected\":{\"mValue\":false},\"title\":\"Marketing\"},{\"id\":\"4\",\"isSelected\":{\"mValue\":false},\"title\":\"Telecommunications\"},{\"id\":\"1\",\"isSelected\":{\"mValue\":false},\"title\":\"Web developnment\"},{\"id\":\"3\",\"isSelected\":{\"mValue\":false},\"title\":\"Banking\"},{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Sales\"},{\"id\":\"2\",\"isSelected\":{\"mValue\":false},\"title\":\"Consultancy\"},{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Engineering\"}]', 27.1866407, 75.6280837, 'Active', '2020-07-19 00:51:59', '2020-07-19 00:51:59', 'www.digiplug.com', '9887989986', '9887989986', 'www.facebook.com', NULL, 'www.twiter.com', 'www.instagram.com', NULL, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/navKHIIENPcztFnFlbbI1piV8lGbvnu2vZc3vYss.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/MNSRxsnAGqVK47XAyxvOvzOXtei39G7V2OQfh29w.jpeg', NULL, 2, NULL, NULL, 'images/digitalcard/navKHIIENPcztFnFlbbI1piV8lGbvnu2vZc3vYss.jpeg', 'images/digitalcard/MNSRxsnAGqVK47XAyxvOvzOXtei39G7V2OQfh29w.jpeg', NULL, NULL, NULL),
(28, 105, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1595126609.jpeg', NULL, 'bab', '3494494884', 'vsvsbs@gmail.com', 'jsbsbbb', '19/6/2020', '174, Vijay Nagar, Murlipura, Jaipur, Rajasthan 302039, India,India,IN,Rajasthan,302039,Jaipur,Jaipur,null', 'bsb', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'sbbs', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Sales\"},{\"id\":\"3\",\"isSelected\":{\"mValue\":false},\"title\":\"Banking\"}]', 26.967405, 75.76348333333334, 'Active', '2020-07-19 02:43:29', '2020-07-19 02:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 106, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1595211961.jpeg', NULL, 'jajaja', '9024383238', 'anujkmwt3@gmail.com', 'ajahshs', '20/6/1996', '17, Maharaja Colony, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,India,IN,Rajasthan,302039,Jaipur,Jaipur,null', 'hshshshssy', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'hshshs', '[{\"day\":\"Mon\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"}]', '[{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Sales\"},{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Engineering\"}]', 26.95758648, 75.7704997, 'Active', '2020-07-20 02:26:04', '2020-07-23 11:44:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/jbr7HHS5LJn5jZvQBdSc35iShQitDpL6DVUJqxlU.jpeg', NULL, NULL, 3, NULL, NULL, 'images/digitalcard/jbr7HHS5LJn5jZvQBdSc35iShQitDpL6DVUJqxlU.jpeg', NULL, NULL, NULL, NULL),
(30, 106, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1595504891.jpeg', NULL, 'ggg', '9024383238', 'anujkmwt3@gmail.com', 'sddd', '23/6/1981', 'Shop No 20 Road No 5, Opp Police Station, Vishavkarma Sikar Road, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,India,IN,Rajasthan,302039,Jaipur,Jaipur,null', 'xtyghhggg', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'sdff', '[{\"day\":\"Mon\",\"endTime\":\"21:10\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"21:10\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"21:10\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"21:10\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"21:10\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"21:10\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"21:10\",\"startTime\":\"7:10\"}]', '[{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Sales\"},{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Engineering\"},{\"id\":\"3\",\"isSelected\":{\"mValue\":false},\"title\":\"Banking\"}]', 26.95767284, 75.7703713, 'Active', '2020-07-23 11:48:20', '2020-07-28 08:36:17', 'wdbnn', '9024383238', 'cgnn@ggg.com', 'bjj', NULL, 'ghhh', 'ghbb', 13, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/vTAER0VlhnQe6et6DUUwcfstXImZROSlfzmmoatZ.jpeg', NULL, NULL, 2, NULL, NULL, 'images/digitalcard/vTAER0VlhnQe6et6DUUwcfstXImZROSlfzmmoatZ.jpeg', NULL, NULL, NULL, NULL),
(31, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-07-24 17:19:54', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 12, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(32, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-07-25 02:29:57', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 11, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(33, 106, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1595925680.jpeg', NULL, 'ajaja', '9024383238', 'anujkmwt3@gmail.com', 'dhdjd', '28/6/1989', '310, Sikar Rd, Jamuna Colony, Ratan Nagar, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'jsjshss', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'uahsjs', '[{\"day\":\"Mon\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"}]', '[{\"id\":\"3\",\"isSelected\":{\"mValue\":false},\"title\":\"Banking\"},{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Engineering\"},{\"id\":\"1\",\"isSelected\":{\"mValue\":false},\"title\":\"Web developnment\"},{\"id\":\"2\",\"isSelected\":{\"mValue\":false},\"title\":\"Consultancy\"}]', 26.9579048, 75.7714878, 'Active', '2020-07-28 08:41:23', '2020-07-28 08:46:51', 'bsjd', '6565655', 'dndjdjdj', 'jdjdjd', NULL, 'jdjdjd', 'hdhdjdjd', 3, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/6qhbxrR7dnABDZkckKcxZjCDi5EG6xhUPA2BOI43.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/KpiYzsSesHNJb5YKoxzzwKqP47uZGvran9YqfmcT.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/wlYydkWm3I8nRj9ASesyYbD43d8itRFIX6z6lxxn.jpeg', 1, NULL, NULL, 'images/digitalcard/6qhbxrR7dnABDZkckKcxZjCDi5EG6xhUPA2BOI43.jpeg', 'images/digitalcard/KpiYzsSesHNJb5YKoxzzwKqP47uZGvran9YqfmcT.jpeg', 'images/digitalcard/wlYydkWm3I8nRj9ASesyYbD43d8itRFIX6z6lxxn.jpeg', NULL, NULL),
(34, 106, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1595926201.jpeg', NULL, 'hxhd', '9024383238', 'anujkmwt3@gmail.com', 'hsjxjcj jcufu', '28/6/1999', '310, Sikar Rd, Jamuna Colony, Ratan Nagar, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'jcjcc', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'gxhdhd', '[{\"day\":\"Mon\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"}]', '[{\"id\":\"3\",\"isSelected\":{\"mValue\":false},\"title\":\"Banking\"},{\"id\":\"4\",\"isSelected\":{\"mValue\":false},\"title\":\"Telecommunications\"},{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Sales\"}]', 26.9579048, 75.7714878, 'Active', '2020-07-28 08:50:01', '2020-07-28 09:42:59', 'hshdhdhdd', '9024383238', 'bxhdhxd', 'd.dndbd', NULL, 'jdjdhdjd', 'nxnxnx', 6, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/p07p89WY25om9bT3YE0AONd9VmMkS1c7n4UzftBU.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/OLPRdh5HEF67U3PFpIp2y9yp0SKRxZrppuad2iRn.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/99QdG6jhytrDoA0k6gWIkfkoDRYASMqvGn93S7Lv.jpeg', 2, NULL, NULL, 'images/digitalcard/p07p89WY25om9bT3YE0AONd9VmMkS1c7n4UzftBU.jpeg', 'images/digitalcard/OLPRdh5HEF67U3PFpIp2y9yp0SKRxZrppuad2iRn.jpeg', 'images/digitalcard/99QdG6jhytrDoA0k6gWIkfkoDRYASMqvGn93S7Lv.jpeg', NULL, NULL),
(35, 107, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1596020775.jpeg', NULL, 'uaua', '9024383238', 'anujkmwt3@gmail.com', 'ananana', '29/6/2008', '310, Sikar Rd, Jamuna Colony, Ratan Nagar, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'jzjzjziz', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'ansjsh', '[{\"day\":\"Mon\",\"endTime\":\"20:0\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"20:0\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"20:0\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"20:0\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"20:0\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"20:0\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"20:0\",\"startTime\":\"7:10\"}]', '[{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Sales\"},{\"id\":\"7\",\"isSelected\":{\"mValue\":false},\"title\":\"Marketing\"},{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Engineering\"}]', 26.9578676, 75.7711245, 'Active', '2020-07-29 11:06:15', '2020-07-31 08:08:54', 'bzbzbz', '9024303238', 'hxhxjcjx', 'nxnxnxnx', NULL, 'nxnxnxnx', 'hxhxnd', 4, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/H1DSprX76ImjQxfUsYZRlHw6vnH1GIFH94thYhXI.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/Mex336uPTliT7ic9shxSE1geFnFc3Tpnn9b8aMcy.jpeg', NULL, 1, NULL, NULL, 'images/digitalcard/H1DSprX76ImjQxfUsYZRlHw6vnH1GIFH94thYhXI.jpeg', 'images/digitalcard/Mex336uPTliT7ic9shxSE1geFnFc3Tpnn9b8aMcy.jpeg', NULL, NULL, NULL),
(36, 109, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1596024984.jpeg', NULL, 'ndhdhd', '9024383238', 'anujkmwt3@gmail.com', 'anshshvmgm', '29/6/2017', '310, Sikar Rd, Jamuna Colony, Ratan Nagar, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'zzzzz', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'hsgsgs', '[{\"day\":\"Mon\",\"endTime\":\"23:0\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"23:0\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"23:0\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"23:0\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"23:0\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"23:0\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"23:0\",\"startTime\":\"7:10\"}]', '[{\"id\":\"3\",\"isSelected\":{\"mValue\":false},\"title\":\"Banking\"},{\"id\":\"2\",\"isSelected\":{\"mValue\":false},\"title\":\"Consultancy\"}]', 26.9578676, 75.7711245, 'Active', '2020-07-29 12:16:27', '2020-08-13 02:10:22', 'bbbbb', '9924383238', 'bbbbbbb', 'bbbbb', NULL, 'bbbb', 'bbbb', 42, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/MWCfE9nq3zmrUn3wnCvC7dc7EKjVetT1AvzOjCL6.jpeg', NULL, NULL, 1, NULL, NULL, 'images/digitalcard/MWCfE9nq3zmrUn3wnCvC7dc7EKjVetT1AvzOjCL6.jpeg', NULL, NULL, NULL, NULL),
(37, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-07-29 15:29:02', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 11, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(38, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-01 13:01:45', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 28, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/5cfzcDgm0WWayjE2HHkOWkFWZnpy2KPzyI4pUYRS.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/vE4mwAhXeEJWCcjum6yL0WoEA4LsTLcWUA7Pq8zU.jpeg', 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 'images/digitalcard/5cfzcDgm0WWayjE2HHkOWkFWZnpy2KPzyI4pUYRS.jpeg', 'images/digitalcard/vE4mwAhXeEJWCcjum6yL0WoEA4LsTLcWUA7Pq8zU.jpeg'),
(41, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-05 05:59:34', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 2, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(42, 110, NULL, NULL, 'Sharda Fashion', '8385868880', 'akshay@gmail.com', 'Kurti, legi', '5/7/2014', '1, Jhotware Rd, Shiv Vihar Colony, Hazi Colony Kapda Market, Subhash Nagar, Jaipur, Rajasthan 302016, India,Rajasthan', 'shjs', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'Akshay', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"12:59\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"12:59\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"12:59\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"12:59\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"12:59\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"12:59\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"12:59\"}]', '[{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Sales\"}]', 26.9299341, 75.8042264, 'Active', '2020-08-05 11:24:43', '2020-08-05 11:24:44', NULL, '7742833229', '7742833229@ybl', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/jmsvd91CVTEL9B4zkzofbvd8nycKHeofNptJsmI4.jpeg', NULL, NULL, 3, NULL, NULL, 'images/digitalcard/jmsvd91CVTEL9B4zkzofbvd8nycKHeofNptJsmI4.jpeg', NULL, NULL, NULL, NULL),
(43, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-05 17:21:51', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 7, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(51, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-06 17:27:02', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 1, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(52, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-06 17:27:12', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 18, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(53, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-09 05:18:46', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 25, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(54, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-09 05:18:46', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, NULL, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(55, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-13 18:51:16', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 8, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(56, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-13 18:51:16', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, NULL, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(57, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-13 18:55:22', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 3, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(58, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597838916.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-14 02:34:31', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 12, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL);
INSERT INTO `digital_cards` (`id`, `user_id`, `logo`, `banner`, `company_name`, `mobile`, `email`, `about`, `established_year`, `address`, `ladmark`, `city`, `state`, `pincode`, `cupoun_code`, `gender`, `owner_name`, `time`, `services`, `lat`, `log`, `status`, `created_at`, `updated_at`, `website_link`, `paytm`, `upi_no`, `fb`, `youtube_url`, `twitter`, `insta`, `view_count`, `linkdin`, `youtube`, `image1`, `image2`, `image3`, `package_id`, `image4`, `image5`, `path1`, `path2`, `path3`, `path4`, `path5`) VALUES
(64, 100, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597487995.jpeg', NULL, 'fff', '9024383238', 'anujkmwt3@gmail.com', 'fgg', '11/7/2020', '310, Sikar Rd, Jamuna Colony, Ratan Nagar, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'rfcds', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'bbb', '[{\"day\":\"Mon\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"}]', '[{\"id\":\"19\",\"isSelected\":{\"mValue\":false},\"title\":\"Media\"},{\"id\":\"18\",\"isSelected\":{\"mValue\":false},\"title\":\"Shop Owner\"},{\"id\":\"16\",\"isSelected\":{\"mValue\":false},\"title\":\"Transportation\"}]', 26.9579941, 75.7715451, 'Active', '2020-08-15 09:41:54', '2020-08-19 08:47:44', 'https://www.google.co.in', '9024383238', '9024383238@ybl', 'https://www.google.co.in', 'https://youtu.be/mIBY9GqoRsU', 'https://www.google.co.in', 'https://www.google.co.in', 31, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/yWr9Ljo9VAINpXY65v8bUsIS1N3HsYFHlMzlBLVJ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/WQsuHeUnWkZQbpdboouUjprVrOredZqf0BD1lEtd.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/Yq61u6DGfQumEHzgDpmfZEHBWPBe3jzC03XZOaaD.jpeg', 2, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/3aN9ys9alTg5antXtgewkRhW88tpcfKqgrcMr6jt.jpeg', NULL, 'images/digitalcard/yWr9Ljo9VAINpXY65v8bUsIS1N3HsYFHlMzlBLVJ.jpeg', 'images/digitalcard/WQsuHeUnWkZQbpdboouUjprVrOredZqf0BD1lEtd.jpeg', 'images/digitalcard/Yq61u6DGfQumEHzgDpmfZEHBWPBe3jzC03XZOaaD.jpeg', 'images/digitalcard/3aN9ys9alTg5antXtgewkRhW88tpcfKqgrcMr6jt.jpeg', NULL),
(65, 111, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597559663.jpeg', NULL, 'hh', '7742833229', 'hhhjj@gmail.com', 'jsu', '14/7/2020', 'A-43, Subhash Nagar, Jaipur, Rajasthan 302016, India,Rajasthan', 'shhs', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'hhh', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"14\",\"isSelected\":{\"mValue\":false},\"title\":\"Tourism\"}]', 26.9301316, 75.8027308, 'Active', '2020-08-15 12:22:07', '2020-08-16 06:34:23', NULL, '7742833229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/wxPBee1eCmT9RFaNQLPcWQEgUOw8ZfVSKJxJJ8Da.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/9UM2EAvK0J13ikd9ROab2SBUwBTdaUI27gRyEPnj.jpeg', NULL, 1, NULL, NULL, 'images/digitalcard/wxPBee1eCmT9RFaNQLPcWQEgUOw8ZfVSKJxJJ8Da.jpeg', 'images/digitalcard/9UM2EAvK0J13ikd9ROab2SBUwBTdaUI27gRyEPnj.jpeg', NULL, NULL, NULL),
(66, 111, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597559663.jpeg', NULL, 'hh', '7742833229', 'hhhjj@gmail.com', 'jsu', '14/7/2020', 'A-43, Subhash Nagar, Jaipur, Rajasthan 302016, India,Rajasthan', 'shhs', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'hhh', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"14\",\"isSelected\":{\"mValue\":false},\"title\":\"Tourism\"}]', 26.9301316, 75.8027308, 'Active', '2020-08-15 12:22:37', '2020-08-16 06:34:23', NULL, '7742833229', NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/hY7u8mTppaNVft6HVypUZLl90aL2m2XH8L6CtAy3.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/jcv91SyImwpxXStGcJJPlkZrNcjW1uDDRUf1eqR1.jpeg', NULL, 1, NULL, NULL, 'images/digitalcard/hY7u8mTppaNVft6HVypUZLl90aL2m2XH8L6CtAy3.jpeg', 'images/digitalcard/jcv91SyImwpxXStGcJJPlkZrNcjW1uDDRUf1eqR1.jpeg', NULL, NULL, NULL),
(67, 111, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597559663.jpeg', NULL, 'hh', '7742833229', 'hhhjj@gmail.com', 'jsu', '14/7/2020', 'A-43, Subhash Nagar, Jaipur, Rajasthan 302016, India,Rajasthan', 'shhs', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'hhh', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"14\",\"isSelected\":{\"mValue\":false},\"title\":\"Tourism\"}]', 26.9301316, 75.8027308, 'Active', '2020-08-16 06:32:29', '2020-08-19 12:10:00', NULL, '7742833229', NULL, NULL, 'https://youtu.be/7ukqk9VBq4A', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 115, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597643681.jpeg', NULL, 'Dhoni', '9979797979', 'dhoni@gmail.com', 'Indian Pride', '8/7/2020', '52, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 're', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'Msd', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"13\",\"isSelected\":{\"mValue\":false},\"title\":\"Finance\"}]', 26.953944, 75.7714878, 'Active', '2020-08-17 05:54:41', '2020-08-17 05:54:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 115, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597643679.jpeg', NULL, 'Dhoni', '9979797979', 'dhoni@gmail.com', 'Indian Pride', '8/7/2020', '52, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 're', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'Msd', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"13\",\"isSelected\":{\"mValue\":false},\"title\":\"Finance\"}]', 26.953944, 75.7714878, 'Active', '2020-08-17 05:54:43', '2020-08-17 05:54:43', 'www.dhoni.com', '7742833229', '7742833229@ybl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/lWfbsRdjqfJxJTBWsQvfn0vIdSRyPjpwBaAbYaza.jpeg', NULL, NULL, 3, NULL, NULL, 'images/digitalcard/lWfbsRdjqfJxJTBWsQvfn0vIdSRyPjpwBaAbYaza.jpeg', NULL, NULL, NULL, NULL),
(70, 115, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597645168.jpeg', NULL, 'snjsjaayya', '7742833229', 'bsjaj@gmail.com', 'wywu', '17/7/2020', '14, Sector 2, Radha Govind Colony, Vidyadhar Nagar, Jaipur, Rajasthan 302039, India,Rajasthan', 'sysu', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'shsuua', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"1\",\"isSelected\":{\"mValue\":false},\"title\":\"Web developnment\"}]', 26.953261, 75.7718511, 'Active', '2020-08-17 06:19:28', '2020-08-17 16:52:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 143, NULL, NULL, 'shopsuper.in', '9494695517', 'shopsuper0520@gmail.com', 'e-commerce website', '28/4/2020', 'MIG-B-2, Lakshmipuram Colony, Rukminipuri Colony, Kapra, Secunderabad, Telangana 500062, India,Telangana', 'near Sharada Theatre', 'Secunderabad', 'Telangana', NULL, NULL, NULL, 'MANDADI DURGESH', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"17\",\"isSelected\":{\"mValue\":false},\"title\":\"Founder \\u0026 CEO\"}]', 17.4823627, 78.5543095, 'Active', '2020-08-18 19:50:42', '2020-08-18 19:50:46', 'https://shopsuper.in/', '9299955517', '9299955517@kotak', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/FvzFKn1n7zLaPcCZ8zA94jNJBCz4KFy6guBfQBdN.jpeg', NULL, NULL, 1, NULL, NULL, 'images/digitalcard/FvzFKn1n7zLaPcCZ8zA94jNJBCz4KFy6guBfQBdN.jpeg', NULL, NULL, NULL, NULL),
(72, 100, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597825748.jpeg', NULL, 'fff', '9024383238', 'anujkmwt3@gmail.com', 'fgg', '11/7/2020', '310, Sikar Rd, Jamuna Colony, Ratan Nagar, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'rfcds', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'bbb', '[{\"day\":\"Mon\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"}]', '[{\"id\":\"19\",\"isSelected\":{\"mValue\":false},\"title\":\"Media\"},{\"id\":\"18\",\"isSelected\":{\"mValue\":false},\"title\":\"Shop Owner\"},{\"id\":\"16\",\"isSelected\":{\"mValue\":false},\"title\":\"Transportation\"}]', 26.9579941, 75.7715451, 'Active', '2020-08-19 08:29:10', '2020-08-19 08:47:44', 'https://www.google.co.in', '9024383238', '9024383238@ybl', 'https://www.google.co.in', 'https://youtu.be/mIBY9GqoRsU', 'https://www.google.co.in', 'https://www.google.co.in', NULL, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/t8FQwFKd58qhPs0RCnUGmxxvf4HyRIMJvwxkH0Pm.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/CYO1Hn5FidSIarvaED7i9gPTeuPrIXTyuNmLn2tQ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/Yq61u6DGfQumEHzgDpmfZEHBWPBe3jzC03XZOaaD.jpeg', 2, NULL, NULL, 'images/digitalcard/t8FQwFKd58qhPs0RCnUGmxxvf4HyRIMJvwxkH0Pm.jpeg', 'images/digitalcard/CYO1Hn5FidSIarvaED7i9gPTeuPrIXTyuNmLn2tQ.jpeg', 'images/digitalcard/Yq61u6DGfQumEHzgDpmfZEHBWPBe3jzC03XZOaaD.jpeg', NULL, NULL),
(73, 100, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597825753.jpeg', NULL, 'fff', '9024383238', 'anujkmwt3@gmail.com', 'fgg', '11/7/2020', '310, Sikar Rd, Jamuna Colony, Ratan Nagar, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'rfcds', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'bbb', '[{\"day\":\"Mon\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Tue\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Wed\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Thu\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Fri\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sat\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"},{\"day\":\"Sun\",\"endTime\":\"20:10\",\"startTime\":\"7:10\"}]', '[{\"id\":\"19\",\"isSelected\":{\"mValue\":false},\"title\":\"Media\"},{\"id\":\"18\",\"isSelected\":{\"mValue\":false},\"title\":\"Shop Owner\"},{\"id\":\"16\",\"isSelected\":{\"mValue\":false},\"title\":\"Transportation\"}]', 26.9579941, 75.7715451, 'Active', '2020-08-19 08:29:13', '2020-08-20 14:47:45', 'https://www.google.co.in', '9024383238', '9024383238@ybl', 'https://www.google.co.in', 'https://youtu.be/mIBY9GqoRsU', 'https://www.google.co.in', 'https://www.google.co.in', 4, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/GKUOw58Fe6nhQBLMBdvbDDKpM19xGYHeDiPvffYd.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/3yczR3zZxfUMAjJwqnxB0vpwKMy3pUhRs0jzfGSg.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/Yq61u6DGfQumEHzgDpmfZEHBWPBe3jzC03XZOaaD.jpeg', 2, NULL, NULL, 'images/digitalcard/GKUOw58Fe6nhQBLMBdvbDDKpM19xGYHeDiPvffYd.jpeg', 'images/digitalcard/3yczR3zZxfUMAjJwqnxB0vpwKMy3pUhRs0jzfGSg.jpeg', 'images/digitalcard/Yq61u6DGfQumEHzgDpmfZEHBWPBe3jzC03XZOaaD.jpeg', NULL, NULL),
(74, 145, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597851664.jpeg', NULL, 'Jai Shri Shyam', '7791078536', 'Skumarameer@gmail.com', '.', '19/7/2020', 'gulab vatika colony sisri Road , Bhakrota, Jaipur, Rajasthan 302026, India,Rajasthan', 'Babu bhaisab', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 'S.k', '[{\"day\":\"Sun\",\"endTime\":\"1:0\",\"startTime\":\"12:0\"}]', '[{\"id\":\"6\",\"isSelected\":{\"mValue\":false},\"title\":\"Business Services\"},{\"id\":\"13\",\"isSelected\":{\"mValue\":false},\"title\":\"Finance\"},{\"id\":\"18\",\"isSelected\":{\"mValue\":false},\"title\":\"Shop Owner\"},{\"id\":\"8\",\"isSelected\":{\"mValue\":false},\"title\":\"Distribution\"},{\"id\":\"4\",\"isSelected\":{\"mValue\":false},\"title\":\"Construction and Engineering\"},{\"id\":\"16\",\"isSelected\":{\"mValue\":false},\"title\":\"Transportation\"}]', 26.8722105, 75.694683, 'Active', '2020-08-19 15:41:07', '2020-08-19 15:42:16', NULL, '7791078536', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/s4r8wxszdNV4dqwJD7pKLLQvvNajJPxJq1BjUG4f.jpeg', NULL, NULL, 1, NULL, NULL, 'images/digitalcard/s4r8wxszdNV4dqwJD7pKLLQvvNajJPxJq1BjUG4f.jpeg', NULL, NULL, NULL, NULL),
(75, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597889840.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-20 02:17:22', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 1, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(76, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597889957.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-20 02:19:18', '2020-08-20 02:22:28', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 1, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL),
(77, 103, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com/bannerAds/1597890020.jpeg', NULL, '8gifuf', '7742833229', 'bjrth@gmail.com', 'sbhssj', '20/7/2020', '506, Sikar Rd, Parasram Nagar, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India,Rajasthan', 'sys', 'Jaipur', 'Rajasthan', NULL, NULL, NULL, 't7cucc', '[{\"day\":\"Mon\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Tue\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Wed\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Thu\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Fri\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sat\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"},{\"day\":\"Sun\",\"endTime\":\"00:00\",\"startTime\":\"00:00\"}]', '[{\"id\":\"5\",\"isSelected\":{\"mValue\":false},\"title\":\"Communication\"}]', 26.9550822, 75.7712014, 'Active', '2020-08-20 02:20:20', '2020-08-20 02:22:29', 'www.vhypeindia.com', '7742833229', NULL, NULL, 'https://youtu.be/AETFvQonfV8', NULL, NULL, 2, NULL, NULL, 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', 1, NULL, NULL, 'images/digitalcard/eb0xluCWbDRrmMZnuHKajtLAmLiRTUHGLNRHAtzZ.jpeg', 'images/digitalcard/On4mwNU8OdZ0Xma70NffCv9epKrcPklkCmiYLwME.jpeg', 'images/digitalcard/odtGEWDAkgM4flzDDBiO3JsUG6s3of9eeHu8cUzF.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active' COMMENT '1-enabled, 0-disabled',
  `valid_from_date` date DEFAULT NULL,
  `valid_to_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `type`, `code`, `amount`, `status`, `valid_from_date`, `valid_to_date`, `created_at`, `updated_at`) VALUES
(18, 'persent', 'VHYPE50', '50', 'Active', '2020-08-20', '2020-10-31', '2020-08-20 02:33:28', '2020-08-20 02:33:28'),
(19, 'persent', 'V90HYPE', '90', 'Active', '2020-08-20', '2020-08-31', '2020-08-20 02:36:04', '2020-08-20 02:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('00a853103bd72758363b0b625478685b5a16cea9486d3094ee58d74616048aa7db11c67448a3d5ce', 95, 1, '95', '[]', 0, '2020-06-28 17:33:03', '2020-06-28 17:33:03', '2021-06-28 17:33:03'),
('02a09dc02b262773764456907fb44681f18ab3cff968d64ecde1a2084f1a344694a33fed51d05a66', 111, 1, '111', '[]', 0, '2020-08-11 12:58:11', '2020-08-11 12:58:11', '2021-08-11 12:58:11'),
('048fc1022b9a5407e067d0aaa58cf153c41155df5c96a0b879c3dfc0d65bf8f6a93903ccca75bdd8', 141, 1, '141', '[]', 0, '2020-08-18 10:54:19', '2020-08-18 10:54:19', '2021-08-18 10:54:19'),
('053cbc5ccbdf00fe000ecb6d241de03ea8a40c70d9f892f48afd9bd065478137c7736b79f84d0003', 146, 1, '146', '[]', 0, '2020-08-19 20:18:31', '2020-08-19 20:18:31', '2021-08-19 20:18:31'),
('064cfab01e1cec949fac8c01b44c4115ec28ec71484e9b737a208f9cc89cb5021a384221e0edf38b', 100, 1, '100', '[]', 0, '2020-07-29 15:12:59', '2020-07-29 15:12:59', '2021-07-29 15:12:59'),
('07824e5ef3690e487131340501e55e4a7829d2971bb88c2277f029190ba143c12909b912c890badc', 103, 1, '103', '[]', 0, '2020-08-13 04:31:31', '2020-08-13 04:31:31', '2021-08-13 04:31:31'),
('0864cc804ae967ec6e4cbb6296d314c1e2266e76f7856bb5c4e6d2c9625460d347163424bef777be', 130, 1, '130', '[]', 0, '2020-08-17 04:16:43', '2020-08-17 04:16:43', '2021-08-17 04:16:43'),
('089d08808d5e616776993aa3884c85d581e255caf8a658783b0b66b7a98ec04d5c04fd61c5da1970', 120, 1, '120', '[]', 0, '2020-08-10 04:16:48', '2020-08-10 04:16:48', '2021-08-10 04:16:48'),
('0c368ffd6c63b00a886d5455bc75c5e882b4d66873880256f1218687eb6fdce0f3a02a067b899ae4', 99, 1, '99', '[]', 0, '2020-07-16 08:43:11', '2020-07-16 08:43:11', '2021-07-16 08:43:11'),
('0c70d1378ac06ff6e9049704358c23fae49e4029756ab327261a871a570aa3cf3d5992a150bf0e70', 103, 1, '103', '[]', 0, '2020-07-18 16:33:51', '2020-07-18 16:33:51', '2021-07-18 16:33:51'),
('0dce61874e9731617ff70d83be91d345230d8cb8e9753f85378ba1a9b9df9ea59a46a51611b3d498', 103, 1, '103', '[]', 0, '2020-08-15 01:29:38', '2020-08-15 01:29:38', '2021-08-15 01:29:38'),
('0e88f11719a4d9d42445805363ba7ba787c225fcae3166607746592ae51c2a086b2cdf3803f8992a', 100, 1, '100', '[]', 0, '2020-07-18 02:26:39', '2020-07-18 02:26:39', '2021-07-18 02:26:39'),
('0ec4d4a46d2a42841b6f7011ee7af4b562ee02436ceabc5847954f701c0d5d98f1b2c18ad90456c1', 102, 1, '102', '[]', 0, '2020-07-18 04:29:34', '2020-07-18 04:29:34', '2021-07-18 04:29:34'),
('0f20d74c45383153b0759145fcffc33ef52c3d8724e731abe0706ed41bda2962dc9adb3384338fdd', 119, 1, '119', '[]', 0, '2020-08-10 08:20:50', '2020-08-10 08:20:50', '2021-08-10 08:20:50'),
('117d855eb37e392552f7f2d225414523b3d878b6324d02de2e3d82c75eedf663debad39fbcf7ea03', 110, 1, '110', '[]', 0, '2020-08-20 03:43:30', '2020-08-20 03:43:30', '2021-08-20 03:43:30'),
('12b76518965d7c19ee95d0b9aa9364a21376d20346334704700d7a8af83ceee194e809b8b4f9e66f', 130, 1, '130', '[]', 0, '2020-08-13 04:14:54', '2020-08-13 04:14:54', '2021-08-13 04:14:54'),
('14e5455b6390706c7940fd48cd2b320f2f41412141387a3bc6d0f9a8a3dc02164ed50b84d5438d8b', 103, 1, '103', '[]', 0, '2020-07-18 17:46:03', '2020-07-18 17:46:03', '2021-07-18 17:46:03'),
('1719cc646447e505773b52f61bf41f60ab9679205f8bab421caa9875ebc426c3cde35877f9accb81', 103, 1, '103', '[]', 0, '2020-07-29 15:18:03', '2020-07-29 15:18:03', '2021-07-29 15:18:03'),
('173421ab4bfd77859c4b56b4046f29d6b9774a87354eb40839f5fe673a433ec233e82c1fea630fb6', 100, 1, '100', '[]', 0, '2020-08-05 12:16:42', '2020-08-05 12:16:42', '2021-08-05 12:16:42'),
('176b271a62dc7bef05876d93c3afde10d4ce25a930c43213c83b99adfa8950ad5f4f05d7276dfd3a', 103, 1, '103', '[]', 0, '2020-08-11 12:11:18', '2020-08-11 12:11:18', '2021-08-11 12:11:18'),
('17d77d7218f43ac07fc89415745b18164da3d054114690d73a722e1817c676906b0622d32093bfd1', 103, 1, '103', '[]', 0, '2020-08-16 07:34:17', '2020-08-16 07:34:17', '2021-08-16 07:34:17'),
('1836089fc567570d01768e4a316027f17b11e89dd457c77a719a21de0b9e7fde3c74e45ebc23a651', 98, 1, '98', '[]', 0, '2020-07-07 15:29:14', '2020-07-07 15:29:14', '2021-07-07 15:29:14'),
('184c1fea60957a9ede33efcffe31c57514375c26da41085a088a9e1cb823db21a9e05a669e1c6355', 114, 1, '114', '[]', 0, '2020-08-11 04:38:46', '2020-08-11 04:38:46', '2021-08-11 04:38:46'),
('1d99eae9c6cfef10921fb7e01cc331cd33d9aeed1b3d7b957092f0909e5a0e00875673dcc59bebc1', 132, 1, '132', '[]', 0, '2020-08-17 03:41:48', '2020-08-17 03:41:48', '2021-08-17 03:41:48'),
('1db5d56617daba0bbf5bcdc47073014616e9958e46039142f7ddf7061497dd1ab498d66c1923736f', 119, 1, '119', '[]', 0, '2020-08-10 04:13:47', '2020-08-10 04:13:47', '2021-08-10 04:13:47'),
('1f06a02ec152dac72314ec31a4bef24c97bc759a30dd51707227149f73d3b60957238d3187bb3bc3', 115, 1, '115', '[]', 0, '2020-08-05 11:18:41', '2020-08-05 11:18:41', '2021-08-05 11:18:41'),
('1f5d93b1ea3ef80820176bbcd5639c4898fb674ad7d3048f269014f23dd2b03bb9ec19eef1f76b6c', 106, 1, '106', '[]', 0, '2020-07-20 02:14:41', '2020-07-20 02:14:41', '2021-07-20 02:14:41'),
('206f9ad2512b417dbd119a35d4ab4e0ccdb17157e66968725ff3442365604c271b438fef38a233ba', 100, 1, '100', '[]', 0, '2020-07-22 05:54:42', '2020-07-22 05:54:42', '2021-07-22 05:54:42'),
('229da853a88036b4f345697783e1d2e0159fa01c7a06fd58e59293ecb6122abe6a0aa874271ef311', 107, 1, '107', '[]', 0, '2020-07-29 07:03:43', '2020-07-29 07:03:43', '2021-07-29 07:03:43'),
('24b4639784b7f464bf7a92e23507b1d314fb5b75523e0bf50ae8b8c96456fb009f0f28232e007be5', 103, 1, '103', '[]', 0, '2020-08-09 02:03:09', '2020-08-09 02:03:09', '2021-08-09 02:03:09'),
('254b9553bf34c5d09de51063df08f2c7da94185426cf7de29a7e98967ed5213d3ebed8993b99d141', 110, 1, '110', '[]', 0, '2020-08-11 01:52:06', '2020-08-11 01:52:06', '2021-08-11 01:52:06'),
('26bda72c8fe093d69980179d5416f310ea3bd4ed540b4801611abf53c44e955eab197520cc83a5d8', 103, 1, '103', '[]', 0, '2020-08-18 08:32:09', '2020-08-18 08:32:09', '2021-08-18 08:32:09'),
('28301ac2de47eb800b712b9a10c88acc046dffc0201d00c45ae1815de31113356b6c14ec958908e2', 131, 1, '131', '[]', 0, '2020-08-15 01:45:10', '2020-08-15 01:45:10', '2021-08-15 01:45:10'),
('297b931268e49ed5d1b6306e2b06f227eea56d09b281a2b90d8edb5e6cd9eefefffcf6a4b5b55af2', 93, 1, '93', '[]', 0, '2020-07-06 12:54:34', '2020-07-06 12:54:34', '2021-07-06 12:54:34'),
('299b8989a279f4d65934089fa4eef3ad3ca69450f331bcc59f7d047435dea09b5cdee891cc73ca0f', 107, 1, '107', '[]', 0, '2020-07-29 10:39:28', '2020-07-29 10:39:28', '2021-07-29 10:39:28'),
('2c582c53a8a247300405b900e4b9797ecd1aacb1bc2b66fadfcc450a630ea6f5f6d4ba1c9644a9ed', 111, 1, '111', '[]', 0, '2020-08-11 12:57:29', '2020-08-11 12:57:29', '2021-08-11 12:57:29'),
('2ead8a76546a2974ecec14924327cc076c5c353475c17753f70e497ebbd2fa93d19c0af54c04508e', 114, 1, '114', '[]', 0, '2020-08-11 05:38:55', '2020-08-11 05:38:55', '2021-08-11 05:38:55'),
('2f5f9a10b7873ac04ba49e57a56dc75842e8db835dab92dc10f13a9e32e2cfe6517f5087664f24ed', 125, 1, '125', '[]', 0, '2020-08-11 06:04:19', '2020-08-11 06:04:19', '2021-08-11 06:04:19'),
('2fe22bac8fa3c04a8de732a6ee11cab8dbda4e11cf5e264cad9419524604933b56aff25f1fc9c465', 101, 1, '101', '[]', 0, '2020-08-05 15:45:02', '2020-08-05 15:45:02', '2021-08-05 15:45:02'),
('31db27b652aa0f4229f7a728820b6e96b6242e770a35eb70221afe2c692f18388bcca6d92c973db2', 108, 1, '108', '[]', 0, '2020-07-29 11:30:32', '2020-07-29 11:30:32', '2021-07-29 11:30:32'),
('31fec273ea897a310fee02960a3a45048f7688723f0b70e572ae8ecba8ef365123d03ec0c17ab08c', 94, 1, '94', '[]', 0, '2020-06-17 04:18:28', '2020-06-17 04:18:28', '2021-06-17 04:18:28'),
('32e39ea5783ad03eabac5853a8d0d7e032e2e472fbe23fa18b9f950c72bc034c3fb8e9df909142fa', 126, 1, '126', '[]', 0, '2020-08-11 06:07:44', '2020-08-11 06:07:44', '2021-08-11 06:07:44'),
('36fc9f643f106ad2d98f5710bb66749c743f00243939a025dc40fdb3356b957e3122d6decd444509', 115, 1, '115', '[]', 0, '2020-08-17 05:51:27', '2020-08-17 05:51:27', '2021-08-17 05:51:27'),
('377cb2f933c89a7d95bc21d2eba271e810457c551153e029c1b49d6aff2d980da06e3a6b08212b1e', 93, 1, '93', '[]', 0, '2020-06-16 09:57:27', '2020-06-16 09:57:27', '2021-06-16 09:57:27'),
('388e0d77fc042be87f7f1d6bb3a128e8738f57793f532faafbfa44cf2e3909834849b33acbf64099', 103, 1, '103', '[]', 0, '2020-08-16 07:22:38', '2020-08-16 07:22:38', '2021-08-16 07:22:38'),
('3b40c76e63b09f2be6647db250e87e50db542bd82bffbd8a0d1c5a05f1d9abb429016274f6e33c02', 123, 1, '123', '[]', 0, '2020-08-10 06:29:39', '2020-08-10 06:29:39', '2021-08-10 06:29:39'),
('3fa2d71b7f5f18ce1dd7f8b64f0b27310a394a6a4eabbf8d8a5d01f4fa248e85d457e1c7945c9333', 114, 1, '114', '[]', 0, '2020-08-05 15:26:36', '2020-08-05 15:26:36', '2021-08-05 15:26:36'),
('421b0761c5f90125133654011d27d8cc6c08b5bea972622354ed5d3940a27042955b38a31d041b32', 111, 1, '111', '[]', 0, '2020-08-11 12:58:00', '2020-08-11 12:58:00', '2021-08-11 12:58:00'),
('424725fc2f640ade5475c8fadc5fe178b499e862e137f260b53e9c2604aee2f1d0b26d0f7cdca285', 124, 1, '124', '[]', 0, '2020-08-10 08:27:12', '2020-08-10 08:27:12', '2021-08-10 08:27:12'),
('4271c7e06c721c41178302731c423eec4bc09ccf54fffa94fa061199070fcbfe1a68a7185c66c376', 4, 1, '4', '[]', 0, '2020-06-15 12:08:54', '2020-06-15 12:08:54', '2021-06-15 12:08:54'),
('440ab115a241bdd69758e5d00f5a063c26e24d7f4a7df59113a4d76fa1c8e3016bcf32f2a2f63adf', 100, 1, '100', '[]', 0, '2020-08-05 15:20:33', '2020-08-05 15:20:33', '2021-08-05 15:20:33'),
('4740319cdd8e107e9609a83614d13b7fef6895cfc3c58c0a59e6624fbf11108967750a8349cde857', 110, 1, '110', '[]', 0, '2020-07-29 17:27:44', '2020-07-29 17:27:44', '2021-07-29 17:27:44'),
('49c40cd17cd0660f1a5ca0e0de2e2597207bc5fb213d60fdcf5b200d44b6a4ac0dc831bf1b59808a', 101, 1, '101', '[]', 0, '2020-07-17 00:12:45', '2020-07-17 00:12:45', '2021-07-17 00:12:45'),
('4a4106e0f157ff7c2b3025757e5781533035c7f44c34c19215ec413c4b73dc5be07f4c1b63bd0b60', 103, 1, '103', '[]', 0, '2020-08-22 04:14:30', '2020-08-22 04:14:30', '2021-08-22 04:14:30'),
('4b35b5f0db54b5d6c9c9e414fd3d21d17c704827b102e4633bb11f1f8c1a91e15b112361d9070e1d', 138, 1, '138', '[]', 0, '2020-08-17 09:28:10', '2020-08-17 09:28:10', '2021-08-17 09:28:10'),
('4c2570ce56cdaeee59eb94d5e9a5f86ecdd0f649ffc18616df53830c666e9b43240c3552e44d3304', 115, 1, '115', '[]', 0, '2020-08-11 05:01:16', '2020-08-11 05:01:16', '2021-08-11 05:01:16'),
('4e647a0a9529239680d139041f2e2e6738643b4b9710133af354893d5b18a192de74c05e21fcbf3c', 100, 1, '100', '[]', 0, '2020-07-18 03:51:00', '2020-07-18 03:51:00', '2021-07-18 03:51:00'),
('4e8b36447401f2c8834e7f4ab36cefe66dd37a63ac178db1dc5d988647d6f9a4ddc72981fde9fa7c', 114, 1, '114', '[]', 0, '2020-08-05 15:29:49', '2020-08-05 15:29:49', '2021-08-05 15:29:49'),
('4f0d5d26a1f9871360ac13dd8a6a72b48cf9b49c955b6409bd201794a0dafab0ee2a4dbbdddc917e', 117, 1, '117', '[]', 0, '2020-08-05 17:32:38', '2020-08-05 17:32:38', '2021-08-05 17:32:38'),
('5124e66493fa4fb410060cae6416cb1c8c99db301a6dd50a5ee286d7a8969581120e97041df69ddf', 103, 1, '103', '[]', 0, '2020-08-20 02:14:32', '2020-08-20 02:14:32', '2021-08-20 02:14:32'),
('55788711ed9b1b735f0171e1c8ec26e7cb4aeab599c6c9cab2411cd49800e6447aea95c618c5ea6d', 142, 1, '142', '[]', 0, '2020-08-18 13:41:16', '2020-08-18 13:41:16', '2021-08-18 13:41:16'),
('5597f2a573ba315ea0f1a8f7664ec8e1abfdfb7792b9ab0c610276abe3de97520031b4c55264bb35', 143, 1, '143', '[]', 0, '2020-08-18 19:41:45', '2020-08-18 19:41:45', '2021-08-18 19:41:45'),
('5810905ac8720877fc2f64622d0ace8a1c03f950bd104060c04d81f6a10b66beb43e3d6c466012a9', 112, 1, '112', '[]', 0, '2020-08-04 17:33:20', '2020-08-04 17:33:20', '2021-08-04 17:33:20'),
('597f7487772a8ce2c453d8394b6e8b3125f477d0526a8fb191d7c49f3a5ef5cf62871bf8287d648e', 122, 1, '122', '[]', 0, '2020-08-10 05:50:12', '2020-08-10 05:50:12', '2021-08-10 05:50:12'),
('5b7b4c3b26d10f6d0eda9fe44c0e94367ac39ae600b3e485bbdc2e538bbf1f0b51f25ab848339dc1', 103, 1, '103', '[]', 0, '2020-08-05 06:39:49', '2020-08-05 06:39:49', '2021-08-05 06:39:49'),
('5bcc7e895193410a30d174e0478f99ae2cff8c8f369798d2269137d31f7dd8db95c78bd54decf3ce', 125, 1, '125', '[]', 0, '2020-08-11 06:04:52', '2020-08-11 06:04:52', '2021-08-11 06:04:52'),
('5ce8fa27fbb3bf4ed495b79a219f2540814005d0558b925567117fd93fab33ecdd6ca3a0039c73ff', 4, 1, '4', '[]', 0, '2020-06-16 07:27:11', '2020-06-16 07:27:11', '2021-06-16 07:27:11'),
('5d3802ab8b90f2b58ccb57a2f86e6de046d33cb15ef3adeb36cc03605bfb9a33838ac1678c86e2b3', 103, 1, '103', '[]', 0, '2020-08-16 07:16:13', '2020-08-16 07:16:13', '2021-08-16 07:16:13'),
('5dc0e769dfa392046933dbcd9f0753c80a1f11da32322ecd996abdeebdb0981f73a2a891af86b221', 111, 1, '111', '[]', 0, '2020-08-15 12:16:42', '2020-08-15 12:16:42', '2021-08-15 12:16:42'),
('5e926fdbeafedd7ee290fb03b0c08a3212db0ce66f48014e064919f9617ba401ee26317070279721', 4, 1, '4', '[]', 0, '2020-07-16 11:47:28', '2020-07-16 11:47:28', '2021-07-16 11:47:28'),
('633962955d641c373138aa5e93dacf587b084e170399e1761c8fea889fe1676624835e1c96a3308f', 105, 1, '105', '[]', 0, '2020-08-10 13:19:29', '2020-08-10 13:19:29', '2021-08-10 13:19:29'),
('6853e154ff04c6c37a04e8a1d12c06a52bce07ebc4dc1507ff2499ccb0ef5bc0a10f5cfd2c92e2d5', 129, 1, '129', '[]', 0, '2020-08-12 08:42:51', '2020-08-12 08:42:51', '2021-08-12 08:42:51'),
('6b477c78c4ceeefee4ba3b28542a9d959b85bd0d7f13bf53ce6e2b5f587c458f596a00cfdb0aa05d', 100, 1, '100', '[]', 0, '2020-07-29 05:15:05', '2020-07-29 05:15:05', '2021-07-29 05:15:05'),
('6b52486da1e90098f98034d0a1b43a9efff49be4fe7d3d8c3029f410ab553dac880ad2e9b1395b43', 103, 1, '103', '[]', 0, '2020-07-29 17:11:58', '2020-07-29 17:11:58', '2021-07-29 17:11:58'),
('6b5e3dc52cb51753d09be384015a2feeef90e45dc2b39bd7a2b8ac34c70529ebcaafdc1e2eefd99d', 96, 1, '96', '[]', 0, '2020-07-02 08:32:53', '2020-07-02 08:32:53', '2021-07-02 08:32:53'),
('6b929ee6844c8b45975cbf48566f004d1d08b2b71a6b081e1f37b39f29fde3f13eb2a7c98387fb4c', 101, 1, '101', '[]', 0, '2020-07-20 10:43:32', '2020-07-20 10:43:32', '2021-07-20 10:43:32'),
('6cf7d7c395ba55908d6b1d1b0c29cf2c04e686dc91cd3182fefbc73310f8615f7e5458b206c9d689', 100, 1, '100', '[]', 0, '2020-08-04 17:12:13', '2020-08-04 17:12:13', '2021-08-04 17:12:13'),
('6dce4737dab1b4a1da854aa25da993053cc90b767e8011656b207cced9065097f0e376bc7bf734f6', 103, 1, '103', '[]', 0, '2020-08-10 06:29:27', '2020-08-10 06:29:27', '2021-08-10 06:29:27'),
('6e6abfc59835530780a6e7908fc0fe92654941ee7e97cebded5c3ea7d50bd3f07888db1060fd9ee4', 103, 1, '103', '[]', 0, '2020-08-06 17:03:57', '2020-08-06 17:03:57', '2021-08-06 17:03:57'),
('6e89371964fa023427b9dc0c04217bc4d166637d5505af538df4d48f84791f9f6c24a0e32b855a98', 100, 1, '100', '[]', 0, '2020-08-03 11:27:15', '2020-08-03 11:27:15', '2021-08-03 11:27:15'),
('708b638452fccf0372190547368d1eadaa43463464b376892df9f26c7773bb5a28d1eee92c181eee', 118, 1, '118', '[]', 0, '2020-08-10 04:08:42', '2020-08-10 04:08:42', '2021-08-10 04:08:42'),
('7090c9ec16d6de57ed2d341d444ff77b3d8a1ea9d881b53222e4016fa5a69020f14e5c0794133e00', 103, 1, '103', '[]', 0, '2020-08-15 01:48:33', '2020-08-15 01:48:33', '2021-08-15 01:48:33'),
('74913ac68eaf59dbea49f084807eb6b7ff4503a4e7ea549150f73ae1fc0520f0474554354c72d9f8', 113, 1, '113', '[]', 0, '2020-08-04 16:35:26', '2020-08-04 16:35:26', '2021-08-04 16:35:26'),
('74c590acff64b281d2430202a3283fe4f1e887cc88cca000146fb78d3586ded0e8889208e8a01e72', 103, 1, '103', '[]', 0, '2020-08-20 14:39:07', '2020-08-20 14:39:07', '2021-08-20 14:39:07'),
('78b52df019ea1fa05481cd94de65827c406b368175260947e35b6fabfa981011c5833e0b493ee9f6', 103, 1, '103', '[]', 0, '2020-08-05 11:19:29', '2020-08-05 11:19:29', '2021-08-05 11:19:29'),
('78d0c3497cd7d5383b9fc7aacb13b207645d7cd358ae997842ef7183c7ddfaad3346e861bf3b072c', 126, 1, '126', '[]', 0, '2020-08-11 06:07:51', '2020-08-11 06:07:51', '2021-08-11 06:07:51'),
('7a47297f2fb107ef8f9ff44313d6fdc82ab9a2d0f5ca0c8d7127a92442a6a934fc48649ef1d10fa3', 135, 1, '135', '[]', 0, '2020-08-16 20:14:30', '2020-08-16 20:14:30', '2021-08-16 20:14:30'),
('7b868c8612dae50613b1568e44f475e15271c1c4370d3c452b501fbebca9006f2b0d8cf022f307e6', 90, 1, '90', '[]', 0, '2020-06-15 13:05:01', '2020-06-15 13:05:01', '2021-06-15 13:05:01'),
('7c11abd5bacde286474c54075eac42e54fb170384a25c0cada761aed5f061fa332131e56993c2e1e', 115, 1, '115', '[]', 0, '2020-08-11 04:48:50', '2020-08-11 04:48:50', '2021-08-11 04:48:50'),
('7c9da52558debe5ca67ebbd03ce521d8aab0f4856f318fc00e41ed56c2f509a39b31c173329d8d69', 97, 1, '97', '[]', 0, '2020-07-05 07:32:56', '2020-07-05 07:32:56', '2021-07-05 07:32:56'),
('7ff7cb6a32bde0358a651c9fa39569509326534ce44b2bcece62e63636e90af38626acbf42b290c2', 91, 1, '91', '[]', 0, '2020-06-16 07:03:56', '2020-06-16 07:03:56', '2021-06-16 07:03:56'),
('82b6684503aee418ffdd9f2560d619423d37411ea229edb3a1ae358c76d0fcbd3084c5a5f67a5fc1', 111, 1, '111', '[]', 0, '2020-07-31 04:20:03', '2020-07-31 04:20:03', '2021-07-31 04:20:03'),
('8344d1864a38e699294a16ce7e06d42858f777202688d88e0d682528e4a0d1f19eb5cb371f0a9ff5', 90, 1, '90', '[]', 0, '2020-06-16 03:53:42', '2020-06-16 03:53:42', '2021-06-16 03:53:42'),
('84a9e312d71140ee4288eab4112ed42e508725f5164ad4a188f91c1e0567bc1d6c15f5611501080c', 110, 1, '110', '[]', 0, '2020-08-05 16:09:18', '2020-08-05 16:09:18', '2021-08-05 16:09:18'),
('8521fb051957b2c0bae87939aa5419f484e75e50b3e96ffe41975a17b261a937a414bb2ce73540af', 100, 1, '100', '[]', 0, '2020-07-18 02:24:56', '2020-07-18 02:24:56', '2021-07-18 02:24:56'),
('924066a8ef2ecfd259d63549ca7c7e926c92f6d08a9d41faae47924c5e71b87d3791ed5e8e23169d', 103, 1, '103', '[]', 0, '2020-08-21 04:03:07', '2020-08-21 04:03:07', '2021-08-21 04:03:07'),
('9302c87528e5cf57efe63c58a59c21fa4793d719dc11818aa7915b2044c9b51ec2560dbf7fddf0ca', 101, 1, '101', '[]', 0, '2020-08-05 15:41:51', '2020-08-05 15:41:51', '2021-08-05 15:41:51'),
('9338394f865b4438206b4bcf031155ca1cfcf74e25e801042d56bf4951541fd6348dc86b5d67e178', 103, 1, '103', '[]', 0, '2020-08-11 04:49:04', '2020-08-11 04:49:04', '2021-08-11 04:49:04'),
('93e8adc42fbbc5229dc3c118aab9d51b811c537be105c1eb26148f8b6a45a65c2a36118cd7b6cb89', 125, 1, '125', '[]', 0, '2020-08-11 06:04:35', '2020-08-11 06:04:35', '2021-08-11 06:04:35'),
('953cc3fae84a3fd9c6bed66f501db1a102a0f92ead84b95585a03c4af5f28b92d22b28209d4072ba', 110, 1, '110', '[]', 0, '2020-08-16 07:16:48', '2020-08-16 07:16:48', '2021-08-16 07:16:48'),
('959f0dfb8d07aa8a497c57689df8cbcaa6fe8256e8a97f98926c1f83571c3c05402665023491fd92', 92, 1, '92', '[]', 0, '2020-06-16 07:23:34', '2020-06-16 07:23:34', '2021-06-16 07:23:34'),
('95f0b8320119407e954aa8ea365af892eded53179adbf154de58b9e834d7c1bab3bb639221961a4b', 101, 1, '101', '[]', 0, '2020-07-18 18:03:10', '2020-07-18 18:03:10', '2021-07-18 18:03:10'),
('961d2ab61406b791213bfb27d0fca1808072596ca46ae32551b9a81ee18e67175711f882b8ed9bc5', 100, 1, '100', '[]', 0, '2020-08-15 09:26:39', '2020-08-15 09:26:39', '2021-08-15 09:26:39'),
('962229a5bb7010f1887f9a6adad360ba7d117a556f96a4d9de0ba90c3b4b52130794e4b8c59407cb', 94, 1, '94', '[]', 0, '2020-07-07 13:47:29', '2020-07-07 13:47:29', '2021-07-07 13:47:29'),
('98c265a978d9f1022e6d6956c9e31df73d5821f32b08ddaa098213a136416b5326721697c303f547', 116, 1, '116', '[]', 0, '2020-08-05 17:22:04', '2020-08-05 17:22:04', '2021-08-05 17:22:04'),
('9b51d58bc54033faa0433627288513d897a203cea30708cbd35f26fa423ead5d11115a707ae35391', 91, 1, '91', '[]', 0, '2020-06-16 07:52:06', '2020-06-16 07:52:06', '2021-06-16 07:52:06'),
('9c6116e527593ec9272e44ac5a7b429f5b135091787a0340e00e679dfa6da646367b151613d599d8', 132, 1, '132', '[]', 0, '2020-08-15 01:59:07', '2020-08-15 01:59:07', '2021-08-15 01:59:07'),
('9d354797184bc36a340f2f5093a8d623bb55e60779f0919551515a05aa6931a2fbc070866cd85040', 110, 1, '110', '[]', 0, '2020-08-05 06:34:14', '2020-08-05 06:34:14', '2021-08-05 06:34:14'),
('9d5afb5abc49c93ee2aa89a654877f40271c4a7fd1a107d7ce25b6d10f06cdf66c7fffc2bbc7ed31', 128, 1, '128', '[]', 0, '2020-08-12 08:22:23', '2020-08-12 08:22:23', '2021-08-12 08:22:23'),
('9d7b548f56850bcc074095835b06c60b154b3d7d802eb99f70535b7da3c3df19831f62643d641f4d', 90, 1, '90', '[]', 0, '2020-07-06 09:09:16', '2020-07-06 09:09:16', '2021-07-06 09:09:16'),
('a11f23e4ea8151713c9a36c7987fa3ab052b22214266492f2e265bcb0e3d472bbc30e9dcf73dbbe9', 139, 1, '139', '[]', 0, '2020-08-17 09:36:02', '2020-08-17 09:36:02', '2021-08-17 09:36:02'),
('a3eacb712e7c3ae79441ae378b9a60811d6b0e6226021ec70cc3b57ffa1d04b9bfe0786c881f6f72', 110, 1, '110', '[]', 0, '2020-08-14 09:16:51', '2020-08-14 09:16:51', '2021-08-14 09:16:51'),
('a4d604cc67ec90a55b66888dcc847614d91db8722869001c5081c3415aafea1acccf36d5ef48dec0', 140, 1, '140', '[]', 0, '2020-08-18 04:16:27', '2020-08-18 04:16:27', '2021-08-18 04:16:27'),
('a5ba34092bbc082309d33144f7f0b1259d0ff51922555318c089214ff68113dbb89a7881f3384112', 110, 1, '110', '[]', 0, '2020-08-22 04:09:14', '2020-08-22 04:09:14', '2021-08-22 04:09:14'),
('a7ca85c06f387f43d35acbbe3d7049626e9d6c2d2c3e29dda90bfe1c570849155d03165c6ea74673', 92, 1, '92', '[]', 0, '2020-06-26 02:36:57', '2020-06-26 02:36:57', '2021-06-26 02:36:57'),
('a8ca72a59ab8125b00ac83e7a7b5258e7a28183e5a91c3f8cef99f9c1797fc6212ed9e85fc29b03f', 117, 1, '117', '[]', 0, '2020-08-05 17:32:38', '2020-08-05 17:32:38', '2021-08-05 17:32:38'),
('ac839575b0bb3e67d943b5af379d69e32ed552fcd642332dd34a920e07a86f80fce57fc76dff2193', 103, 1, '103', '[]', 0, '2020-08-10 03:59:39', '2020-08-10 03:59:39', '2021-08-10 03:59:39'),
('b043c1869e2724bf909007c19e6beaa580ec5e8ec4334b1294a05ea6813defbf182e514d242474b8', 103, 1, '103', '[]', 0, '2020-07-30 03:15:50', '2020-07-30 03:15:50', '2021-07-30 03:15:50'),
('b078e98c7044ddc0b4588c1bc712d4fa303fc5e7a48bd55b1f681a866735c9ae8b7e0273b1f16441', 115, 1, '115', '[]', 0, '2020-08-16 07:17:21', '2020-08-16 07:17:21', '2021-08-16 07:17:21'),
('b110cd9ca2dafd71ccd3719e32539772bd27dc3cd1a5ee519330a8d3d1cbedcec3926ed77089da13', 145, 1, '145', '[]', 0, '2020-08-19 15:26:23', '2020-08-19 15:26:23', '2021-08-19 15:26:23'),
('b605e8af49ce5ede6168a0fa9d832f8b5548f54ad0e4635541699f1a1c856cf1b6b103d0d5eb1586', 95, 1, '95', '[]', 0, '2020-07-16 07:24:35', '2020-07-16 07:24:35', '2021-07-16 07:24:35'),
('b9af5cba0f38798cdbe7f1a5fa3a81e0cf8da24b7cc484bc1c5830f781766cfcb907c84667bdde23', 125, 1, '125', '[]', 0, '2020-08-11 06:04:30', '2020-08-11 06:04:30', '2021-08-11 06:04:30'),
('b9de256976313cea63836e843d023bb61dfe752dafb8fe5f12b97500308ca8fd0b60117c10571468', 90, 1, '90', '[]', 0, '2020-06-16 07:42:24', '2020-06-16 07:42:24', '2021-06-16 07:42:24'),
('ba655130750f3b8981013f032de6fef4f8671b8025666be1e6ff52122f810c8075456658a2add66b', 105, 1, '105', '[]', 0, '2020-07-19 02:38:18', '2020-07-19 02:38:18', '2021-07-19 02:38:18'),
('ba8ec5b352c5315c70e99c1a557778c0abc37fb0228704a123b785b5112cd94743557b437fd77932', 126, 1, '126', '[]', 0, '2020-08-11 06:07:25', '2020-08-11 06:07:25', '2021-08-11 06:07:25'),
('bb8a26a5b883d8abd680ebe6b2cf0b0aaa2c85ff497258174021000224609828483b74c8ffd77045', 104, 1, '104', '[]', 0, '2020-07-19 00:45:59', '2020-07-19 00:45:59', '2021-07-19 00:45:59'),
('bc9d36ee605a0d5914fe99ba55b7e4527f0d751e4c07124bb052b77c8193a9e60b0211edda2eb919', 109, 1, '109', '[]', 0, '2020-07-29 11:39:41', '2020-07-29 11:39:41', '2021-07-29 11:39:41'),
('bd5ff82770f5cbe1e9b6a19801153488fb9eac98ad77733b5522122e68072d1b2cdbe6cbaf9a3f6d', 110, 1, '110', '[]', 0, '2020-07-29 17:34:15', '2020-07-29 17:34:15', '2021-07-29 17:34:15'),
('bdee559e6def890c096e121d5fb9a36fe1161fa8d004c737c43863db6832ca2fc12b398eee7340af', 132, 1, '132', '[]', 0, '2020-08-17 03:41:54', '2020-08-17 03:41:54', '2021-08-17 03:41:54'),
('be4546e2a43de9fb5a4a51a5c58d57bb8b98e3366da01b678d68b25d9b8ca7f40017b7262dacf064', 103, 1, '103', '[]', 0, '2020-08-05 15:26:28', '2020-08-05 15:26:28', '2021-08-05 15:26:28'),
('beb3267e6ef3e967a429e9f6e308390c72372fe401a1faef2bcb4bea1125e55fa02cb9c042416490', 112, 1, '112', '[]', 0, '2020-08-03 11:27:01', '2020-08-03 11:27:01', '2021-08-03 11:27:01'),
('bfb872d5195541bd37d72caf6e1a61a3a1b8ba05d41e665d25e133bc1d84436617832828c65aff7c', 103, 1, '103', '[]', 0, '2020-08-11 06:52:27', '2020-08-11 06:52:27', '2021-08-11 06:52:27'),
('c3d9884fd40777b6fe13abf01906453264248b2e5018ecbc7c61019920c381040c2fe85e631f799e', 110, 1, '110', '[]', 0, '2020-08-11 04:50:23', '2020-08-11 04:50:23', '2021-08-11 04:50:23'),
('c74f70d80bc6af81a82108d69ae97910351f6ea348726968b6b4a256911fb655512fb93986052296', 103, 1, '103', '[]', 0, '2020-07-31 04:21:56', '2020-07-31 04:21:56', '2021-07-31 04:21:56'),
('c75e4f30d4d6fe34d501a561b0232ca4ffad1101cd42f57e590af970ab86a93b260e7f26bc4b126b', 103, 1, '103', '[]', 0, '2020-08-12 07:01:29', '2020-08-12 07:01:29', '2021-08-12 07:01:29'),
('c7a3da77c49d5713e07930821ab34d35602e3744f11d4916d3c4b457fccbda8362fee895827080e0', 100, 1, '100', '[]', 0, '2020-08-03 11:25:57', '2020-08-03 11:25:57', '2021-08-03 11:25:57'),
('c8b1056ee40125808b2dbca370d14ceb0922c975c9b704f56c3f750a78180eabb1290814dad86163', 133, 1, '133', '[]', 0, '2020-08-15 09:43:27', '2020-08-15 09:43:27', '2021-08-15 09:43:27'),
('ca98e17938aba843e31f53340d6dfaff000e66aa17acb10469d0a19f59ac74ba9c62754f6dc111fe', 103, 1, '103', '[]', 0, '2020-08-05 05:52:45', '2020-08-05 05:52:45', '2021-08-05 05:52:45'),
('cc1906a96436e5b8adf54e28b62ea27e366d6e41c6ec949e3ab214f0fcd81b65d36186c43acc4302', 136, 1, '136', '[]', 0, '2020-08-17 04:17:50', '2020-08-17 04:17:50', '2021-08-17 04:17:50'),
('cc1bb6165682b6fd188900a6198ffa5e9fb6361c334f4a6235de7429ccefd46c2110470f14226510', 101, 1, '101', '[]', 0, '2020-07-18 15:26:12', '2020-07-18 15:26:12', '2021-07-18 15:26:12'),
('d2030a76c7787e9efbee0dd3273c2fc97bd0bbe8b5b9888ab7d99c62f4f5c86a39b0560017d5f102', 106, 1, '106', '[]', 0, '2020-07-28 08:26:09', '2020-07-28 08:26:09', '2021-07-28 08:26:09'),
('d3c38ac2233f5f9e364f8385074f652bfebb51b95030e4036aec9460c3e5851e6e63c665500e2940', 119, 1, '119', '[]', 0, '2020-08-10 08:19:42', '2020-08-10 08:19:42', '2021-08-10 08:19:42'),
('d6f76c3cc5c437e207b370097e3b0abd5c322152e71e0843dd5ac8941278b1f515b00c60081b27db', 112, 1, '112', '[]', 0, '2020-08-03 11:23:23', '2020-08-03 11:23:23', '2021-08-03 11:23:23'),
('d7fa9f1539cc383d17eae29a6c108378a381ebc267506913ab2b04c56a95845709dead6f0b5857c1', 131, 1, '131', '[]', 0, '2020-08-15 01:34:06', '2020-08-15 01:34:06', '2021-08-15 01:34:06'),
('d85e2642830f57106ffd38385a07c7f24a5dc004a9bf79cccf356592fec0f4055beef63e82c94ab8', 114, 1, '114', '[]', 0, '2020-08-04 18:52:53', '2020-08-04 18:52:53', '2021-08-04 18:52:53'),
('dc59fd6b9920aa3e4bdace0f49f8546e64a0c83887b7aef3b69faadab518d4e3ee822f1eac59126d', 102, 1, '102', '[]', 0, '2020-08-04 17:09:30', '2020-08-04 17:09:30', '2021-08-04 17:09:30'),
('dd797764093690e2b7744db5d40b48c25ff9347f5c6fba40ed821ba3ff88d304b9d9fc5317abbd1a', 103, 1, '103', '[]', 0, '2020-08-05 17:06:13', '2020-08-05 17:06:13', '2021-08-05 17:06:13'),
('deea4506c91e00af89fe8a51b1115c9d90c271edf0b31a75c2618173f7e7c0038ac10079b7c236e1', 95, 1, '95', '[]', 0, '2020-07-06 10:48:33', '2020-07-06 10:48:33', '2021-07-06 10:48:33'),
('df989e9c50b10c52150bc3de5fcb01f981640acbf5bb4bfd7e18e7f82bcb9db7bad86cae80fe8e94', 100, 1, '100', '[]', 0, '2020-07-16 11:55:31', '2020-07-16 11:55:31', '2021-07-16 11:55:31'),
('e2b95442637e157af7a5aeeb8b33863efae417ac62b0df906eed7f2e43020bc91bea76ba713a9e37', 144, 1, '144', '[]', 0, '2020-08-19 07:53:55', '2020-08-19 07:53:55', '2021-08-19 07:53:55'),
('e2c5506da5b2b897cabea18998fae42596385573f48522094833591b9eef30a7706c0a5bdeb58113', 103, 1, '103', '[]', 0, '2020-07-24 17:50:25', '2020-07-24 17:50:25', '2021-07-24 17:50:25'),
('e59007299b61b3fcabf1bd7966065f35238328ff7229cb23cc045b3492c119346565e8909d78736e', 4, 1, '4', '[]', 0, '2020-06-16 07:42:50', '2020-06-16 07:42:50', '2021-06-16 07:42:50'),
('e78656d0082a74d5693afc2c3c0cbafa33e32e58112966edece86f4355ead788bcb16b0cc59c225d', 137, 1, '137', '[]', 0, '2020-08-17 08:25:40', '2020-08-17 08:25:40', '2021-08-17 08:25:40'),
('e7fc0764737b8840d636ea15c8bc4b3190b72af5d042eab0e0b6ff725f10c625457316766af4725c', 121, 1, '121', '[]', 0, '2020-08-10 05:11:07', '2020-08-10 05:11:07', '2021-08-10 05:11:07'),
('eaabaceb64bf4220914ebb3986ed616fe6625ce534e0131597f99e6f7b5a7eb683bffcc93bcbf63b', 105, 1, '105', '[]', 0, '2020-08-17 03:36:32', '2020-08-17 03:36:32', '2021-08-17 03:36:32'),
('ecc9ae6f5aedf5d76532b81dc352be9b767f7ef6e6ed348d7e1d8087ed0e25c040b3bc9256cf82ae', 111, 1, '111', '[]', 0, '2020-08-15 01:46:23', '2020-08-15 01:46:23', '2021-08-15 01:46:23'),
('ee16cfc1f3f45a84bef9c0197aed63fe4bb68a0316313070d914d0953df76edc301eed387e1d300e', 102, 1, '102', '[]', 0, '2020-08-15 07:01:59', '2020-08-15 07:01:59', '2021-08-15 07:01:59'),
('f0538381efa0cc549f8115a57a28050b76a9134952d9622a63720a7599b20dbae884101415973862', 110, 1, '110', '[]', 0, '2020-08-05 11:21:21', '2020-08-05 11:21:21', '2021-08-05 11:21:21'),
('f20160b2933966b251786fd37b317d774097b21adc8584afa8dfb5aff46d1c97dfc861207ceebd5b', 106, 1, '106', '[]', 0, '2020-07-29 11:37:50', '2020-07-29 11:37:50', '2021-07-29 11:37:50'),
('f395f35cdda6d43af16e315af712dd6fd4bd9c348d108652d3d658792a1f743d9275ed5ada92c0a8', 127, 1, '127', '[]', 0, '2020-08-11 10:15:11', '2020-08-11 10:15:11', '2021-08-11 10:15:11'),
('f5d40292f4e1be0065bab0930ba5281f4bcbfa5df34ce06a4298fe88716cd2c3591c2e10a84e2e72', 105, 1, '105', '[]', 0, '2020-08-10 13:19:37', '2020-08-10 13:19:37', '2021-08-10 13:19:37'),
('f873ba17aafbef5dc1d4ced1c9f52cfd57d0259f1003f96e1b229e71440788bd1286ee88dfd3fd65', 90, 1, '90', '[]', 0, '2020-07-06 09:40:43', '2020-07-06 09:40:43', '2021-07-06 09:40:43'),
('f9614945479a5c78f4c34da878d3f8116d819fe397a29124f7e6b1cf8a9f3389667373ad158640bb', 110, 1, '110', '[]', 0, '2020-08-16 07:28:56', '2020-08-16 07:28:56', '2021-08-16 07:28:56'),
('faf93ea44d6986616bc83a85427277ceb463ccb2afec0a0fb87d50962a6a2c71ee45a8ff44f077d3', 134, 1, '134', '[]', 0, '2020-08-15 09:49:28', '2020-08-15 09:49:28', '2021-08-15 09:49:28'),
('fafdd35c7aebbbd7a7fca57daf061234fb6fbef774946262a2fe2a213538f335176988c762c32133', 107, 1, '107', '[]', 0, '2020-07-29 11:38:18', '2020-07-29 11:38:18', '2021-07-29 11:38:18'),
('fcbc8e0b889b4f91ae1726edeb5edaf540de0a7c9851e83ea52c8ce5edde8692c608e6fb06ff7fb6', 111, 1, '111', '[]', 0, '2020-08-11 13:01:59', '2020-08-11 13:01:59', '2021-08-11 13:01:59'),
('fdf20b72968a3620371b1c3241ab3427f1f5cac8227d9d1fbe541651ca74e3d1d89c7ba11530b67e', 103, 1, '103', '[]', 0, '2020-08-05 15:43:17', '2020-08-05 15:43:17', '2021-08-05 15:43:17');

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
(1, NULL, 'Laravel Personal Access Client', 'suJp146ZfEShCPqvtjgL5Qvtyr99S584zLJmxIjv', NULL, 'http://localhost', 1, 0, 0, '2020-05-14 23:33:56', '2020-05-14 23:33:56'),
(2, NULL, 'Laravel Password Grant Client', 'eom8clSg6UKPiHKS99nJTrTaatXxPjjzEcXTvrwI', 'users', 'http://localhost', 0, 1, 0, '2020-05-14 23:33:56', '2020-05-14 23:33:56');

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
(1, 1, '2020-05-14 23:33:56', '2020-05-14 23:33:56');

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
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `shop_banner` enum('1','0') NOT NULL DEFAULT '0',
  `youtube_url` enum('1','0') NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `amount` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `font` enum('1','0') NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `shop_banner`, `youtube_url`, `status`, `amount`, `created_at`, `updated_at`, `font`, `description`) VALUES
(1, 'Diamond Black', '1', '1', 'Active', 200, '2020-05-31 00:00:00', '2020-08-15 07:09:04', '1', '<p><span style=\"font-size:48px\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br />\n<br />\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br />\n&nbsp;</p>'),
(2, 'Gossy White', '1', '1', 'Active', 300, '2020-05-31 00:00:00', '2020-08-08 10:50:15', '1', '<p><span style=\"font-size:48px\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br />\n<br />\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br />\n&nbsp;</p>'),
(3, 'Shiny Gold', '1', '1', 'Active', 500, '2020-05-31 00:00:00', '2020-08-08 10:50:37', '1', '<p><span style=\"font-size:48px\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br />\n<br />\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br />\n&nbsp;</p>');

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
-- Table structure for table `qr_marketings`
--

CREATE TABLE `qr_marketings` (
  `qr_image` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `type` enum('free','paid') DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `scancount` int(11) DEFAULT NULL,
  `youtub_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id` int(11) NOT NULL,
  `fullurl` varchar(255) DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qr_marketings`
--

INSERT INTO `qr_marketings` (`qr_image`, `path`, `status`, `type`, `user_id`, `scancount`, `youtub_url`, `created_at`, `updated_at`, `id`, `fullurl`, `view_count`) VALUES
(NULL, NULL, 'Active', NULL, 101, 200, '0MocZ0xBOS8', '2020-07-18 18:09:44', '2020-07-18 18:09:44', 22, 'http://www.vhypeindia.com/QR/1595095663064', 0),
(NULL, NULL, 'Active', NULL, 100, 200, 'sucking sucking sucking', '2020-07-18 19:01:48', '2020-07-18 19:01:48', 23, 'http://www.vhypeindia.com/QR/1595098865090', 0),
(NULL, NULL, 'Active', NULL, 101, 200, 'v=-iccIUZ1Pqg', '2020-07-19 03:28:06', '2020-07-19 03:28:06', 24, 'http://www.vhypeindia.com/QR/1595129244127', 0),
(NULL, NULL, 'Active', NULL, 100, 200, 'zjzjz', '2020-07-19 13:41:53', '2020-07-19 13:41:53', 25, 'http://www.vhypeindia.com/QR/1595166081769', 0),
(NULL, NULL, 'Active', NULL, 100, 200, 'zjzjz', '2020-07-19 13:41:59', '2020-07-19 13:41:59', 26, 'http://www.vhypeindia.com/QR/1595166081769', 0),
(NULL, NULL, 'Active', NULL, 100, 200, 'zjzjz', '2020-07-19 13:41:59', '2020-07-19 13:41:59', 27, 'http://www.vhypeindia.com/QR/1595166081769', 0),
(NULL, NULL, 'Active', NULL, 100, 200, 'zjzjz', '2020-07-19 13:41:59', '2020-07-19 13:41:59', 28, 'http://www.vhypeindia.com/QR/1595166081769', 0),
(NULL, NULL, 'Active', NULL, 106, 200, 'PzmNssVLcLQ', '2020-07-20 02:48:23', '2020-07-23 10:40:31', 29, 'http://www.vhypeindia.com/QR/1595213217743', 3),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/lxW5lHewdqnSvzolm52bAwOOaYVqi0hM3UyVlYpF.png', 'images/qrImage/lxW5lHewdqnSvzolm52bAwOOaYVqi0hM3UyVlYpF.png', 'Active', NULL, 106, 200, 'fhdhrh', '2020-07-23 10:36:07', '2020-07-23 11:19:36', 30, 'http://www.vhypeindia.com/QR/1595500543729', 18),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/rfoqldxcgT6zxPeFEEMp8TbyXDpQ3RTZhDR98quU.png', 'images/qrImage/rfoqldxcgT6zxPeFEEMp8TbyXDpQ3RTZhDR98quU.png', 'Active', NULL, 106, 9999999, 'https://www.youtube.com/watch?v=qn_0ogM72Zg&list=RDqn_0ogM72Zg&start_radio=1https://www.youtube.com/watch?v=cySkh7MAjb4&list=RDqn_0ogM72Zg&index=5', '2020-07-23 11:15:54', '2020-07-23 13:36:35', 31, 'http://www.vhypeindia.com/QR/1595502866089', 19),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/2e5Z6a9vSQSv7e7HCKhXhMtG0y8it4F96Aj0vgSR.png', 'images/qrImage/2e5Z6a9vSQSv7e7HCKhXhMtG0y8it4F96Aj0vgSR.png', 'Active', NULL, 106, 9999999, 'https://www.youtube.com/playlist?list=RDh18s7zlYOyg&feature=share&playnext=1', '2020-07-23 11:21:42', '2020-07-23 11:32:45', 32, 'http://www.vhypeindia.com/QR/1595503287499', 5),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/AxyNy5lTTbGbGxB4GAe1c8VTWUmXR7BJ3gtUzkxD.png', 'images/qrImage/AxyNy5lTTbGbGxB4GAe1c8VTWUmXR7BJ3gtUzkxD.png', 'Active', NULL, 106, 200, 'sdkvd', '2020-07-23 11:42:18', '2020-07-23 11:42:18', 33, 'http://www.vhypeindia.com/QR/1595504469909', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/G17PJlFW14Y7I9OjTKhvxVVd9p0K8nreytNZoubS.png', 'images/qrImage/G17PJlFW14Y7I9OjTKhvxVVd9p0K8nreytNZoubS.png', 'Active', NULL, 106, 200, 'sdkvd', '2020-07-23 11:42:26', '2020-07-23 11:42:26', 34, 'http://www.vhypeindia.com/QR/1595504469909', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/w49c6xt51nZhtUyXpwIxP7JttvFWlyIwKNk6BoW3.png', 'images/qrImage/w49c6xt51nZhtUyXpwIxP7JttvFWlyIwKNk6BoW3.png', 'Active', NULL, 106, 200, 'sdkvd', '2020-07-23 11:42:27', '2020-07-23 11:42:27', 35, 'http://www.vhypeindia.com/QR/1595504469909', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/YMCo8H3SPuF8zovAzSPAtYF4GtmOI7I71UYBPCz1.png', 'images/qrImage/YMCo8H3SPuF8zovAzSPAtYF4GtmOI7I71UYBPCz1.png', 'Active', NULL, 106, 200, 'sdkvd', '2020-07-23 11:42:33', '2020-07-23 11:42:33', 36, 'http://www.vhypeindia.com/QR/1595504469909', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/j4lQtLG8OscXKJDnmxl6KaR3ZsQGKjJKauV2y694.png', 'images/qrImage/j4lQtLG8OscXKJDnmxl6KaR3ZsQGKjJKauV2y694.png', 'Active', NULL, 106, 200, 'sdkvd', '2020-07-23 11:42:36', '2020-07-23 11:42:36', 37, 'http://www.vhypeindia.com/QR/1595504469909', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/1uN0x6RF1mcb4kGdab0gvVDrQ1GTZWzlzQZqAl1k.jpeg', 'images/qrImage/1uN0x6RF1mcb4kGdab0gvVDrQ1GTZWzlzQZqAl1k.jpeg', 'Active', NULL, 106, 200, 'https://www.youtube.com/embed/aE79diaYIww?controls=0&amp;showinfo=0', '2020-07-24 03:24:47', '2020-07-24 03:24:47', 38, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com?skye=asdrererdfdxxdfecdiiexer&user_id=87&youtube_url=https://www.youtube.com/embed/aE79diaYIww?controls=0&amp;showinfo=0', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/irO61XEh9A7T7CWrXszCkaWH6ZCku89XmuX8Ksnf.png', 'images/qrImage/irO61XEh9A7T7CWrXszCkaWH6ZCku89XmuX8Ksnf.png', 'Active', NULL, 106, 9999999, 'shshshs', '2020-07-24 03:30:44', '2020-07-24 03:30:44', 39, 'http://www.vhypeindia.com/QR/1595561431764', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/fIiTHHEAB9glD2JskOzpOYgdNC78wD6hrDP8Ephm.png', 'images/qrImage/fIiTHHEAB9glD2JskOzpOYgdNC78wD6hrDP8Ephm.png', 'Active', NULL, 106, 9999999, 'jsjs', '2020-07-24 03:32:20', '2020-07-24 03:32:20', 40, 'http://www.vhypeindia.com/QR/1595561535497', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/wTVH13Sas59ryx9uKf7rDvTQQV8N7dhZ1lxOE5wY.png', 'images/qrImage/wTVH13Sas59ryx9uKf7rDvTQQV8N7dhZ1lxOE5wY.png', 'Active', NULL, 106, 200, 'vvv', '2020-07-24 03:38:14', '2020-07-24 03:38:14', 41, 'http://www.vhypeindia.com/QR/1595561868608', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/eTRGvExT3cKAeA3kiAYYVfx6BvVc94xkJQikianl.png', 'images/qrImage/eTRGvExT3cKAeA3kiAYYVfx6BvVc94xkJQikianl.png', 'Active', NULL, 106, 9999999, 'bzbzx', '2020-07-24 03:43:03', '2020-07-24 03:43:03', 42, 'http://www.vhypeindia.com/QR/1595562176118', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/uqK8pETvdnzH04eXg5tTjzYB7x6lVJWUV8GrzSVA.png', 'images/qrImage/uqK8pETvdnzH04eXg5tTjzYB7x6lVJWUV8GrzSVA.png', 'Active', NULL, 106, 9999999, 'bzbzx', '2020-07-24 03:43:04', '2020-07-24 03:43:04', 43, 'http://www.vhypeindia.com/QR/1595562176118', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/jlLXVmUtOsOEMUU5SQmzq8vAGRHEpM3gKLdcHWDZ.png', 'images/qrImage/jlLXVmUtOsOEMUU5SQmzq8vAGRHEpM3gKLdcHWDZ.png', 'Active', NULL, 106, 9999999, 'bzbzx', '2020-07-24 03:43:04', '2020-07-24 03:43:04', 44, 'http://www.vhypeindia.com/QR/1595562176118', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/XEvFdhE7rh8LXYJ9AYHradB3WzCvsUbni5Z2r6tb.png', 'images/qrImage/XEvFdhE7rh8LXYJ9AYHradB3WzCvsUbni5Z2r6tb.png', 'Active', NULL, 106, 9999999, 'bzbzx', '2020-07-24 03:43:05', '2020-07-24 03:43:05', 45, 'http://www.vhypeindia.com/QR/1595562176118', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/fuXCigOtz3ziefJ0mfPAzFXm8AUcLmT0UlXx2nDt.png', 'images/qrImage/fuXCigOtz3ziefJ0mfPAzFXm8AUcLmT0UlXx2nDt.png', 'Active', NULL, 106, 9999999, 'xfc', '2020-07-24 03:52:02', '2020-07-24 03:52:02', 46, 'http://www.vhypeindia.com/QR/1595562310749', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/fFXuJyIg5K4a0bDb1zZklWwmUUg3olSXsP75JeBG.png', 'images/qrImage/fFXuJyIg5K4a0bDb1zZklWwmUUg3olSXsP75JeBG.png', 'Active', NULL, 106, 9999999, 'cxdr', '2020-07-24 03:53:12', '2020-07-24 03:53:12', 47, 'http://www.vhypeindia.com/QR/1595562787756', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/qAa1tnqWFASIqR9C703oHOkkg9S0OOWnBQubpSbC.png', 'images/qrImage/qAa1tnqWFASIqR9C703oHOkkg9S0OOWnBQubpSbC.png', 'Active', NULL, 106, 200, 'hzhsshs', '2020-07-24 03:55:18', '2020-07-24 03:55:18', 48, 'http://www.vhypeindia.com/QR/1595562876970', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/wg8cCZhOJvRro2J5JajVX6xolWCsFUl703Q1cbh2.png', 'images/qrImage/wg8cCZhOJvRro2J5JajVX6xolWCsFUl703Q1cbh2.png', 'Active', NULL, 103, 9999999, 'https://youtu.be/xXS1mf2fkZs', '2020-07-24 17:21:31', '2020-08-17 16:15:12', 49, 'http://www.vhypeindia.com/QR/1595611270440', 9),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/Qi2QclNC8rOimhEb9dc6R3K8mcl0efdAqiNhUQ5A.png', 'images/qrImage/Qi2QclNC8rOimhEb9dc6R3K8mcl0efdAqiNhUQ5A.png', 'Active', NULL, 103, 200, 'http://www.vhypeindia.com/QR/1595611270440', '2020-07-24 17:23:29', '2020-08-05 05:15:07', 50, 'http://www.vhypeindia.com/QR/1595611377178', 4),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/yOeqgM2BUXnRCPq6j7N1WAWDnrOn6LwkodYNcdfN.png', 'images/qrImage/yOeqgM2BUXnRCPq6j7N1WAWDnrOn6LwkodYNcdfN.png', 'Active', NULL, 103, 200, 'https://youtu.be/xXS1mf2fkZs', '2020-07-24 17:35:30', '2020-07-24 17:35:30', 51, 'http://www.vhypeindia.com/QR/1595612062724', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/TDGyLc2QeenHBhaks9i2BiaXv0FIdW0hyH6ymCMR.png', 'images/qrImage/TDGyLc2QeenHBhaks9i2BiaXv0FIdW0hyH6ymCMR.png', 'Active', NULL, 103, 200, 'ghjj', '2020-07-25 12:19:11', '2020-07-25 12:19:11', 52, 'http://www.vhypeindia.com/QR/1595679520462', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/uCIhInG2QAcFDbfc8fRArfUQZvLbVA2xZpl9i9wb.png', 'images/qrImage/uCIhInG2QAcFDbfc8fRArfUQZvLbVA2xZpl9i9wb.png', 'Active', NULL, 106, 200, 'https://youtu.be/h18s7zlYOyg', '2020-07-28 10:03:41', '2020-07-29 11:34:50', 53, 'http://www.vhypeindia.com/QR/1595930523841', 10),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/5hrYSrYdZDdzAHIm604so1w0gkPZdPw5Iq84yRCy.png', 'images/qrImage/5hrYSrYdZDdzAHIm604so1w0gkPZdPw5Iq84yRCy.png', 'Active', NULL, 106, 200, 'ass', '2020-07-28 11:58:08', '2020-07-28 11:58:08', 54, 'http://www.vhypeindia.com/QR/1595937449716', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/4HKXKZIfj5ZsR3LER6CITun0zX2FHJPGqCWDqXmY.png', 'images/qrImage/4HKXKZIfj5ZsR3LER6CITun0zX2FHJPGqCWDqXmY.png', 'Active', NULL, 106, 200, 'ass', '2020-07-28 11:58:08', '2020-07-28 11:58:08', 55, 'http://www.vhypeindia.com/QR/1595937449716', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/CkZpiZicJUa7l6B1LayfZczSByfGPfObtut275gt.png', 'images/qrImage/CkZpiZicJUa7l6B1LayfZczSByfGPfObtut275gt.png', 'Active', NULL, 106, 200, 'http://www.vhypeindia.com/QR/1595930523841', '2020-07-28 11:59:22', '2020-07-28 11:59:22', 56, 'http://www.vhypeindia.com/QR/1595937523500', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/TZC9PNKpxkw1CR5nQXmJugEg2PtBsSmmyACqY2pG.png', 'images/qrImage/TZC9PNKpxkw1CR5nQXmJugEg2PtBsSmmyACqY2pG.png', 'Active', NULL, 106, 200, 'ffff', '2020-07-28 18:35:30', '2020-07-28 18:35:30', 57, 'http://www.vhypeindia.com/QR/1595959075514', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/jBLlaJ0PlO85ds1FBdcFmeb2GYRGmV235Bm8Q5J6.png', 'images/qrImage/jBLlaJ0PlO85ds1FBdcFmeb2GYRGmV235Bm8Q5J6.png', 'Active', NULL, 106, 200, 'sjsjd', '2020-07-28 18:36:34', '2020-07-28 18:36:34', 58, 'http://www.vhypeindia.com/QR/1595961349217', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/zUa7Ll71nY5pfLsBI5ZxjufDC2YmbAekCVc1mh2c.png', 'images/qrImage/zUa7Ll71nY5pfLsBI5ZxjufDC2YmbAekCVc1mh2c.png', 'Active', NULL, 106, 200, 'jdkdkd', '2020-07-28 18:37:22', '2020-07-28 18:37:22', 59, 'http://www.vhypeindia.com/QR/1595961407973', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/uDmKwl8Rzd7ed6JSv3KpL9G4L7urPOhjjJgM5gyz.png', 'images/qrImage/uDmKwl8Rzd7ed6JSv3KpL9G4L7urPOhjjJgM5gyz.png', 'Active', NULL, 106, 200, 'jdkdkd', '2020-07-28 18:37:32', '2020-07-28 18:37:32', 60, 'http://www.vhypeindia.com/QR/1595961445534', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/fSEz10KKowdfZn8VsFqwVEXrIrBO3RDjiNjmHNNX.png', 'images/qrImage/fSEz10KKowdfZn8VsFqwVEXrIrBO3RDjiNjmHNNX.png', 'Active', NULL, 106, 200, 'hshdd', '2020-07-28 18:39:14', '2020-07-28 18:39:14', 61, 'http://www.vhypeindia.com/QR/1595961529857', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/aca8Fu2VX5xKDPSpOfXZuAvpWXoI8pulpGHdiBsK.png', 'images/qrImage/aca8Fu2VX5xKDPSpOfXZuAvpWXoI8pulpGHdiBsK.png', 'Active', NULL, 106, 200, 'hdhdjdd', '2020-07-28 18:41:53', '2020-07-28 18:41:53', 62, 'http://www.vhypeindia.com/QR/1595961685742', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/lpty4O22zxe1unlyU1WUtykzeTzSd42cWLcSUV6D.png', 'images/qrImage/lpty4O22zxe1unlyU1WUtykzeTzSd42cWLcSUV6D.png', 'Active', NULL, 106, 200, 'jzjzjxx', '2020-07-28 18:42:24', '2020-07-28 18:42:24', 63, 'http://www.vhypeindia.com/QR/1595961718936', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/lyUyZ6bOeT32D0h6b3Rpu07R4QSwIP8ELWasVlYI.png', 'images/qrImage/lyUyZ6bOeT32D0h6b3Rpu07R4QSwIP8ELWasVlYI.png', 'Active', NULL, 106, 200, 'xjxjxjxix', '2020-07-28 18:42:50', '2020-07-28 18:42:50', 64, 'http://www.vhypeindia.com/QR/1595961751119', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/9hUbBs1v1ZwbFG8hiHXv6WMGilBud3NycF4pZmcX.png', 'images/qrImage/9hUbBs1v1ZwbFG8hiHXv6WMGilBud3NycF4pZmcX.png', 'Active', NULL, 106, 200, 'jzjsjsjsjdd', '2020-07-28 18:43:59', '2020-07-28 18:47:52', 65, 'http://www.vhypeindia.com/QR/1595961779161', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/Gi3wRJWoUsHMqj2k1bDGwlOYlKEiQMPzVEifttQb.png', 'images/qrImage/Gi3wRJWoUsHMqj2k1bDGwlOYlKEiQMPzVEifttQb.png', 'Active', NULL, 107, 99999, 'rhfjfj', '2020-07-29 10:59:51', '2020-07-29 10:59:51', 66, 'http://www.vhypeindia.com/QR/1596020088316', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/OTSZ5oSv6ZpQ1bVGxb4wJc6Z9SICKVcZ9TblTSaE.jpeg', 'images/qrImage/OTSZ5oSv6ZpQ1bVGxb4wJc6Z9SICKVcZ9TblTSaE.jpeg', 'Active', NULL, 109, 200, 'https://www.youtube.com/embed/aE79diaYIww?controls=0&amp;showinfo=0', '2020-07-29 11:51:14', '2020-07-29 11:51:14', 67, 'http://ec2-13-232-80-58.ap-south-1.compute.amazonaws.com?skye=asdrererdfdxxdfecdiiexer&user_id=87&youtube_url=https://www.youtube.com/embed/aE79diaYIww?controls=0&amp;showinfo=0', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/kuuR6PUpGymUPtTji7Gnlei2AtFDIWdHJ9ktlEv6.png', 'images/qrImage/kuuR6PUpGymUPtTji7Gnlei2AtFDIWdHJ9ktlEv6.png', 'Active', NULL, 103, 9999999, 'sbsjjaj', '2020-07-29 14:43:35', '2020-07-29 14:43:35', 68, 'http://www.vhypeindia.com/QR/1596033805401', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/QmzO1IrlOGsrZOmn66HTS2jyW9OO3bPG3mOeD2Jr.png', 'images/qrImage/QmzO1IrlOGsrZOmn66HTS2jyW9OO3bPG3mOeD2Jr.png', 'Active', NULL, 103, 99999, 'www.search4sure.com', '2020-07-29 15:19:00', '2020-07-29 15:24:30', 69, 'http://www.vhypeindia.com/QR/1596035916284', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/52Q49EL6pvE34aNRTUUjkStlgLqEaO22hoWY2QhP.png', 'images/qrImage/52Q49EL6pvE34aNRTUUjkStlgLqEaO22hoWY2QhP.png', 'Active', NULL, 103, 500, 'https://youtu.be/hjGD08xfg9c', '2020-07-29 15:23:09', '2020-07-29 16:54:43', 70, 'http://www.vhypeindia.com/QR/1596036163399', 9),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/602sNeHfjMP0mgn0nWgyi5rHhz0p4tMszCfKYguJ.png', 'images/qrImage/602sNeHfjMP0mgn0nWgyi5rHhz0p4tMszCfKYguJ.png', 'Active', NULL, 103, 5, 'https://youtu.be/IZVZxLiOUMk', '2020-07-29 17:13:12', '2020-07-29 17:19:06', 71, 'http://www.vhypeindia.com/QR/1596042746182', 8),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/9tImy7wPjthvbcTrItnKFWQXquejrv20xfndr2Zb.png', 'images/qrImage/9tImy7wPjthvbcTrItnKFWQXquejrv20xfndr2Zb.png', 'Active', NULL, 103, 5, 'www.search4sure.com', '2020-07-29 17:20:53', '2020-07-29 17:21:34', 72, 'http://www.vhypeindia.com/QR/1596043213514', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/KHDHUG9FT2J4T7FPBoforueXgPrsj48HwO8dWeLh.png', 'images/qrImage/KHDHUG9FT2J4T7FPBoforueXgPrsj48HwO8dWeLh.png', 'Active', NULL, 103, 5, 'https://youtu.be/IZVZxLiOUMk', '2020-07-29 17:23:38', '2020-07-29 17:23:38', 73, 'http://www.vhypeindia.com/QR/1596043400558', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/ppWw6i6QDHtXL9jxEidqmz3VIcD7SENVA78tJzfL.png', 'images/qrImage/ppWw6i6QDHtXL9jxEidqmz3VIcD7SENVA78tJzfL.png', 'Active', NULL, 110, 99999, 'https://m.visualead.com', '2020-07-30 03:13:24', '2020-07-30 03:13:24', 74, 'http://www.vhypeindia.com/QR/1596078765640', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/VqNYXsnISS9f8uJUx1Gof1lsdREir8FW9D8OyIAn.png', 'images/qrImage/VqNYXsnISS9f8uJUx1Gof1lsdREir8FW9D8OyIAn.png', 'Active', NULL, 103, 5, 'https://youtu.be/E2p5v6hK9z4', '2020-07-30 03:16:50', '2020-08-04 16:31:30', 75, 'http://www.vhypeindia.com/QR/1596078991319', 10),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/bE8Oo9Ou7jhiE31mqrsvJwTuDFio09OQ7JqD8YbD.png', 'images/qrImage/bE8Oo9Ou7jhiE31mqrsvJwTuDFio09OQ7JqD8YbD.png', 'Active', NULL, 103, 5, 'https://youtu.be/E2p5v6hK9z4', '2020-07-30 03:17:28', '2020-07-30 03:17:28', 76, 'http://www.vhypeindia.com/QR/1596079029354', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/kKn7glVj3mmynPF2AqMPJAQjVLtIlur1h2lPFiAq.png', 'images/qrImage/kKn7glVj3mmynPF2AqMPJAQjVLtIlur1h2lPFiAq.png', 'Active', NULL, 103, 5, 'https://youtu.be/E2p5v6hK9z4', '2020-07-30 03:51:40', '2020-07-30 03:51:40', 77, 'http://www.vhypeindia.com/QR/1596081075193', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/DVAP7ngFXjljgnoY2pogRarn2aQ6Oqr6ILWJV695.png', 'images/qrImage/DVAP7ngFXjljgnoY2pogRarn2aQ6Oqr6ILWJV695.png', 'Active', NULL, 100, 5, 'http://www.vhypeindia.com/profile/109', '2020-07-30 03:57:03', '2020-08-02 14:18:41', 78, 'http://www.vhypeindia.com/QR/1596081185963', 21),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/8F7vlC0n1aVXqOAMHmpYmNJL3zRZst4nwElsLQLH.png', 'images/qrImage/8F7vlC0n1aVXqOAMHmpYmNJL3zRZst4nwElsLQLH.png', 'Active', NULL, 100, 5, 'http://www.vhypeindia.com/profile/109', '2020-07-30 04:01:22', '2020-07-30 13:11:18', 79, 'http://www.vhypeindia.com/QR/1596081453458', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/RIapre3cbzsSCFzl2htvXFMQ9BTmzTOm0fU2u5jo.png', 'images/qrImage/RIapre3cbzsSCFzl2htvXFMQ9BTmzTOm0fU2u5jo.png', 'Active', NULL, 100, 5, 'http://www.vhypeindia.com/profile/109', '2020-07-30 04:01:48', '2020-07-30 04:01:48', 80, 'http://www.vhypeindia.com/QR/1596081688823', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/uVYAWLbC1o8XaiHjNrYEGDef91BMrksaW56xIJqj.png', 'images/qrImage/uVYAWLbC1o8XaiHjNrYEGDef91BMrksaW56xIJqj.png', 'Active', NULL, 103, 99999, 'https://youtu.be/E2p5v6hK9z4', '2020-07-30 12:59:06', '2020-08-04 16:00:50', 81, 'http://www.vhypeindia.com/QR/1596113823199', 5),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/lXijerPytWbNGuSuDjSkq9u8TNRMUolwoUtIy8O0.png', 'images/qrImage/lXijerPytWbNGuSuDjSkq9u8TNRMUolwoUtIy8O0.png', 'Active', NULL, 100, 99999, 'hdhdhd', '2020-07-30 13:06:35', '2020-08-04 16:03:13', 82, 'http://www.vhypeindia.com/QR/1596114387149', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/rXVrtLppQNo45X2R3hfnpjKlDQKAh70KM9XReBSh.png', 'images/qrImage/rXVrtLppQNo45X2R3hfnpjKlDQKAh70KM9XReBSh.png', 'Active', NULL, 100, 5, 'https://youtu.be/yXncHLQA2_k', '2020-08-03 12:07:56', '2020-08-03 12:07:56', 83, 'http://www.vhypeindia.com/QR/1596456352410', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/wiqFMGnHwroKcyBrUx0yqd4H2jFT2kb2EOmsp9nm.png', 'images/qrImage/wiqFMGnHwroKcyBrUx0yqd4H2jFT2kb2EOmsp9nm.png', 'Active', NULL, 100, 5, 'hsuz', '2020-08-03 12:18:38', '2020-08-03 12:18:38', 84, 'http://www.vhypeindia.com/QR/1596457090788', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/PqpwWz5gkAIKpKa7zVgoYsKM0PEhkxrqApdgYPGx.png', 'images/qrImage/PqpwWz5gkAIKpKa7zVgoYsKM0PEhkxrqApdgYPGx.png', 'Active', NULL, 100, 5, 'hsuz', '2020-08-03 12:18:53', '2020-08-03 12:18:53', 85, 'http://www.vhypeindia.com/QR/1596457119101', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/VjI3ui255RFkyo54OUII8A7Av1EowmN10NWETHJR.png', 'images/qrImage/VjI3ui255RFkyo54OUII8A7Av1EowmN10NWETHJR.png', 'Active', NULL, 100, 5, 'https://youtu.be/yXncHLQA2_k', '2020-08-03 12:19:49', '2020-08-03 12:19:49', 86, 'http://www.vhypeindia.com/QR/1596457143249', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/pFhwVUTcA9zPNRliM9jj1MnQMpF1tVuqSojBRwa7.png', 'images/qrImage/pFhwVUTcA9zPNRliM9jj1MnQMpF1tVuqSojBRwa7.png', 'Active', NULL, 113, 5, 'https://youtu.be/Kgle4vt3OuI', '2020-08-04 16:42:41', '2020-08-04 17:40:07', 87, 'http://www.vhypeindia.com/QR/1596559223151', 6),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/v5pvcD3HmqRLekJfkSwWoKSxbKM6iV0CVrVY8gDw.png', 'images/qrImage/v5pvcD3HmqRLekJfkSwWoKSxbKM6iV0CVrVY8gDw.png', 'Active', NULL, 100, 5, 'https://youtu.be/Kgle4vt3OuI', '2020-08-04 17:13:17', '2020-08-04 17:13:17', 88, 'http://www.vhypeindia.com/QR/1596561173937', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/hFQ26wpqRuh6dqWTX0rYx3r7WqgLpqwz0SNszegl.png', 'images/qrImage/hFQ26wpqRuh6dqWTX0rYx3r7WqgLpqwz0SNszegl.png', 'Active', NULL, 100, 5, 'https://youtu.be/Kgle4vt3OuI', '2020-08-04 17:13:36', '2020-08-04 17:13:36', 89, 'http://www.vhypeindia.com/QR/1596561206269', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/DL954L1NV8nC2J6GfrRN2S7TmIebJooL39yggkUn.png', 'images/qrImage/DL954L1NV8nC2J6GfrRN2S7TmIebJooL39yggkUn.png', 'Active', NULL, 112, 5, 'https://youtu.be/GycfwjJB4BU', '2020-08-04 18:41:01', '2020-08-04 18:41:01', 90, 'http://www.vhypeindia.com/QR/1596566420958', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/emPa5Xhq932KCkBunMnpu95PAn6W0s3QJkteOvDH.png', 'images/qrImage/emPa5Xhq932KCkBunMnpu95PAn6W0s3QJkteOvDH.png', 'Active', NULL, 112, 5, 'https://youtu.be/GycfwjJB4BU', '2020-08-04 18:43:08', '2020-08-13 08:49:30', 91, 'http://www.vhypeindia.com/QR/1596566554347', 3),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/AmHaxTocF7rpAre4lYJtg0wrlTe74TZI0JCYn1qi.png', 'images/qrImage/AmHaxTocF7rpAre4lYJtg0wrlTe74TZI0JCYn1qi.png', 'Active', NULL, 114, 5, 'https://youtu.be/GycfwjJB4BU', '2020-08-04 19:09:34', '2020-08-04 19:09:34', 92, 'http://www.vhypeindia.com/QR/1596568122606', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/OfbVfVcLbKbg1ybz460mXkgaYKHKjUrqRCvya4RW.png', 'images/qrImage/OfbVfVcLbKbg1ybz460mXkgaYKHKjUrqRCvya4RW.png', 'Active', NULL, 114, 5, 'https://youtu.be/GycfwjJB4BU', '2020-08-04 19:11:13', '2020-08-04 19:11:13', 93, 'http://www.vhypeindia.com/QR/1596568251411', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/ddDNRQ1eGFm5WG45VVU5agIfLdo3th7o9f8LblAE.png', 'images/qrImage/ddDNRQ1eGFm5WG45VVU5agIfLdo3th7o9f8LblAE.png', 'Active', NULL, 114, 5, 'https://youtu.be/GycfwjJB4BU', '2020-08-04 19:11:24', '2020-08-04 19:11:24', 94, 'http://www.vhypeindia.com/QR/1596568275151', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/QQLFF8l43Yc87SPeycBjiez5ffwauzixrEK0lPqW.png', 'images/qrImage/QQLFF8l43Yc87SPeycBjiez5ffwauzixrEK0lPqW.png', 'Active', NULL, 114, 5, 'https://youtu.be/GycfwjJB4BU', '2020-08-04 19:12:16', '2020-08-11 14:28:50', 95, 'http://www.vhypeindia.com/QR/1596568293800', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/PWGfLKiKPYJ9mv7STwTqSz2rONj82pbodU4ZQVFR.png', 'images/qrImage/PWGfLKiKPYJ9mv7STwTqSz2rONj82pbodU4ZQVFR.png', 'Active', NULL, 114, 5, 'https://youtu.be/GycfwjJB4BU', '2020-08-05 04:20:06', '2020-08-05 04:20:06', 96, 'http://www.vhypeindia.com/QR/1596601118085', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/pEZPasSpLUB4Pb1Y8SnKc4iJH0OlDMXTLj7nOCmO.png', 'images/qrImage/pEZPasSpLUB4Pb1Y8SnKc4iJH0OlDMXTLj7nOCmO.png', 'Active', NULL, 114, 5, 'https://youtu.be/GycfwjJB4BU', '2020-08-05 04:57:39', '2020-08-05 04:57:39', 97, 'http://www.vhypeindia.com/QR/1596603427268', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/louyJCifuN1HtfEs0BZ0VAG5JazssjPXHRT9nGfz.png', 'images/qrImage/louyJCifuN1HtfEs0BZ0VAG5JazssjPXHRT9nGfz.png', 'Active', NULL, 103, 5, 'www.search4sure.com', '2020-08-05 05:11:25', '2020-08-05 05:11:25', 98, 'http://www.vhypeindia.com/QR/1596604184490', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/fGPawtqeH7H3XEziLHz0tQToq0W1ao3GkHFYZG8s.png', 'images/qrImage/fGPawtqeH7H3XEziLHz0tQToq0W1ao3GkHFYZG8s.png', 'Active', NULL, 103, 99999, 'search4sure.com', '2020-08-05 05:13:23', '2020-08-15 01:38:40', 99, 'http://www.vhypeindia.com/QR/1596604388895', 11),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/VVMCiRmQxXv5uErlFL8OtIJMbErgOVt4WyDnKOzk.png', 'images/qrImage/VVMCiRmQxXv5uErlFL8OtIJMbErgOVt4WyDnKOzk.png', 'Active', NULL, 114, 5, 'https://youtu.be/GycfwjJB4BU', '2020-08-05 05:46:36', '2020-08-05 05:46:36', 100, 'http://www.vhypeindia.com/QR/1596606360503', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/zpVeSY9Cd2ddduWzkOEASny2J35efQj9F7NM24lP.png', 'images/qrImage/zpVeSY9Cd2ddduWzkOEASny2J35efQj9F7NM24lP.png', 'Active', NULL, 103, 5, 'www.search4sure.com', '2020-08-05 05:55:42', '2020-08-05 11:19:53', 101, 'http://www.vhypeindia.com/QR/1596606812519', 7),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/c89OyIkOvlNuZObFNV7lMLHPNypGxrR1nF1TAORc.png', 'images/qrImage/c89OyIkOvlNuZObFNV7lMLHPNypGxrR1nF1TAORc.png', 'Active', NULL, 110, 1000, 'https://youtu.be/ywYAgLce0SU', '2020-08-05 06:35:20', '2020-08-05 10:21:42', 102, 'http://www.vhypeindia.com/QR/1596609258936', 3),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/EUbueJ3Da2RdisLYZqP3Wn0QfOltoDsxVQJb7rvK.png', 'images/qrImage/EUbueJ3Da2RdisLYZqP3Wn0QfOltoDsxVQJb7rvK.png', 'Active', NULL, 110, 1000, 'www.search4sure.com', '2020-08-05 06:37:55', '2020-08-05 17:20:19', 103, 'http://www.vhypeindia.com/QR/1596609407973', 25),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/1GDYjygx7TD6LtwX1xOiP5N8j0en1nNhNNCVQ9Mp.png', 'images/qrImage/1GDYjygx7TD6LtwX1xOiP5N8j0en1nNhNNCVQ9Mp.png', 'Active', NULL, 103, 100, 'https://www.olx.in', '2020-08-05 15:32:12', '2020-08-05 15:36:04', 104, 'http://www.vhypeindia.com/QR/1596641488959', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/m2DpWOfySB10BDXxtgct4jrskFlxtix2UUjMeMGw.png', 'images/qrImage/m2DpWOfySB10BDXxtgct4jrskFlxtix2UUjMeMGw.png', 'Active', NULL, 103, 99999, 'https://www.olx.in', '2020-08-05 15:33:27', '2020-08-06 03:36:37', 105, 'http://www.vhypeindia.com/QR/1596641598550', 9),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/4tQcUpuVXUcX6h2TVq7RRRb5e8AJVSJ5Y84p9ehW.png', 'images/qrImage/4tQcUpuVXUcX6h2TVq7RRRb5e8AJVSJ5Y84p9ehW.png', 'Active', NULL, 103, 100, 'https://youtu.be/ywYAgLce0SU', '2020-08-05 15:34:12', '2020-08-05 15:34:12', 106, 'http://www.vhypeindia.com/QR/1596641629680', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/FmGY1J7APAtrIjmnv8ZyqyOXH82h8PQNcUO4IbaA.png', 'images/qrImage/FmGY1J7APAtrIjmnv8ZyqyOXH82h8PQNcUO4IbaA.png', 'Active', NULL, 103, 100, 'https://youtu.be/ywYAgLce0SU', '2020-08-05 15:34:41', '2020-08-05 15:36:40', 107, 'http://www.vhypeindia.com/QR/1596641660109', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/rvonMyayIzYk1Z6YAyn4elfArwqP95sliKlMAbhe.png', 'images/qrImage/rvonMyayIzYk1Z6YAyn4elfArwqP95sliKlMAbhe.png', 'Active', NULL, 103, 100, 'https://youtu.be/ywYAgLce0SU', '2020-08-05 15:35:07', '2020-08-05 15:35:07', 108, 'http://www.vhypeindia.com/QR/1596641684106', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/RBaQL4rcmCFIZczFZ8DyHnRaLixTEKxu8HtlrGsH.png', 'images/qrImage/RBaQL4rcmCFIZczFZ8DyHnRaLixTEKxu8HtlrGsH.png', 'Active', NULL, 103, 10, 'https://youtu.be/urlXLTYVnMA', '2020-08-05 15:48:09', '2020-08-05 15:58:12', 109, 'http://www.vhypeindia.com/QR/1596642431744', 14),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/L5cGnXyInl8B4z1L7WNDQgdddPcpxhqCp94HorDq.png', 'images/qrImage/L5cGnXyInl8B4z1L7WNDQgdddPcpxhqCp94HorDq.png', 'Active', NULL, 103, 10, 'https://youtu.be/urlXLTYVnMA', '2020-08-05 15:48:38', '2020-08-05 15:48:38', 110, 'http://www.vhypeindia.com/QR/1596642493489', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/t2vmA16QwKaSMfoeA4VU7WdPWUl4hVi0TyjJMSHI.png', 'images/qrImage/t2vmA16QwKaSMfoeA4VU7WdPWUl4hVi0TyjJMSHI.png', 'Active', NULL, 103, 10, 'https://youtu.be/urlXLTYVnMA', '2020-08-05 15:49:19', '2020-08-05 15:49:19', 111, 'http://www.vhypeindia.com/QR/1596642522112', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/7RxAC24stX7nbYlB1NzfoghlE8SKH4Bres9zNstj.png', 'images/qrImage/7RxAC24stX7nbYlB1NzfoghlE8SKH4Bres9zNstj.png', 'Active', NULL, 103, 10, 'https://youtu.be/urlXLTYVnMA', '2020-08-05 15:49:57', '2020-08-05 15:49:57', 112, 'http://www.vhypeindia.com/QR/1596642578052', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/4SHzmodMShuijttzieS8Q963B1YeSAkGTASes7Iq.png', 'images/qrImage/4SHzmodMShuijttzieS8Q963B1YeSAkGTASes7Iq.png', 'Active', NULL, 103, 10, 'https://youtu.be/urlXLTYVnMA', '2020-08-05 15:50:34', '2020-08-05 15:50:34', 113, 'http://www.vhypeindia.com/QR/1596642601349', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/wmyDLTrzfcDNoKih6PVhbnu7EoZxD3ak2y6KWw2D.png', 'images/qrImage/wmyDLTrzfcDNoKih6PVhbnu7EoZxD3ak2y6KWw2D.png', 'Active', NULL, 114, 99999, 'https://youtu.be/GycfwjJB4BU', '2020-08-05 15:57:37', '2020-08-05 16:01:27', 114, 'http://www.vhypeindia.com/QR/1596643007118', 14),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/eSLX5h2iE7myHHwjmbSY73WLMxqdLerDUq7Q4xE3.png', 'images/qrImage/eSLX5h2iE7myHHwjmbSY73WLMxqdLerDUq7Q4xE3.png', 'Active', 'free', 101, 99999, 'https://youtu.be/o2KCapDj2_0', '2020-08-05 16:00:14', '2020-08-05 17:01:07', 115, 'http://www.vhypeindia.com/QR/1596643201100', 7),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/CbfpRuRkl25x3lNRCMOYhaG7tqD6upcDuUT5zqZJ.png', 'images/qrImage/CbfpRuRkl25x3lNRCMOYhaG7tqD6upcDuUT5zqZJ.png', 'Active', NULL, 103, 5, 'https://youtu.be/urlXLTYVnMA', '2020-08-05 16:00:28', '2020-08-05 16:03:42', 116, 'http://www.vhypeindia.com/QR/1596643135950', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/wwIaLxhn4VcXNEEcft6gjzTi5x7RKPSYOYYlwfof.png', 'images/qrImage/wwIaLxhn4VcXNEEcft6gjzTi5x7RKPSYOYYlwfof.png', 'Active', NULL, 110, 10, 'search4sure.com', '2020-08-05 16:11:13', '2020-08-05 16:11:13', 117, 'http://www.vhypeindia.com/QR/1596643815010', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/pK86IqYLS21hixeYBFzLSWL6c5TkoD9Z73SEWZLS.png', 'images/qrImage/pK86IqYLS21hixeYBFzLSWL6c5TkoD9Z73SEWZLS.png', 'Active', NULL, 110, 10, 'vhype.com', '2020-08-05 16:18:07', '2020-08-05 16:18:07', 118, 'http://www.vhypeindia.com/QR/1596643938615', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/XO3MRc1QpF7a6GfUZFtl6wssUuCZvFpTA9qNq1XP.png', 'images/qrImage/XO3MRc1QpF7a6GfUZFtl6wssUuCZvFpTA9qNq1XP.png', 'Active', NULL, 110, 5, 'search4sure.com', '2020-08-05 16:21:17', '2020-08-05 16:21:17', 119, 'http://www.vhypeindia.com/QR/1596644289842', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/T235nzBOH9MzqLIGwKQokjrTCJwzVuWMGl227V8h.png', 'images/qrImage/T235nzBOH9MzqLIGwKQokjrTCJwzVuWMGl227V8h.png', 'Active', NULL, 110, 10, 'bhanu@gmail.com', '2020-08-05 16:22:35', '2020-08-05 16:22:35', 120, 'http://www.vhypeindia.com/QR/1596644529167', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/bVZ3EclB7WFSlBRX6SxtXbPdP3xLyOnAFFjUpI83.png', 'images/qrImage/bVZ3EclB7WFSlBRX6SxtXbPdP3xLyOnAFFjUpI83.png', 'Active', 'paid', 114, 10, 'https://youtu.be/GycfwjJB4BU', '2020-08-05 17:01:19', '2020-08-05 17:01:19', 121, 'http://www.vhypeindia.com/QR/1596646845403', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/nPm6WiOYZr31grrboR5EQnDzfFWoAd2rrAFbxWGC.png', 'images/qrImage/nPm6WiOYZr31grrboR5EQnDzfFWoAd2rrAFbxWGC.png', 'Active', 'free', 114, 99999, 'https://youtu.be/GycfwjJB4BU', '2020-08-05 17:01:34', '2020-08-05 17:01:34', 122, 'http://www.vhypeindia.com/QR/1596646889671', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/HFTc8d3QeJsep6bqrisN2TwZW1eeyafXVYUBkOKV.png', 'images/qrImage/HFTc8d3QeJsep6bqrisN2TwZW1eeyafXVYUBkOKV.png', 'Active', 'paid', 103, 5, 'https://youtu.be/SXCaUITCGIQ', '2020-08-05 17:07:51', '2020-08-05 17:07:51', 123, 'http://www.vhypeindia.com/QR/1596647242993', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/GbZXTqWLOJtniQOkax8aDM0SR2N6n9TK3dnWvJ4g.png', 'images/qrImage/GbZXTqWLOJtniQOkax8aDM0SR2N6n9TK3dnWvJ4g.png', 'Active', 'free', 103, 99999, 'https://youtu.be/SXCaUITCGIQ', '2020-08-05 17:12:29', '2020-08-05 17:12:29', 124, 'http://www.vhypeindia.com/QR/1596647541093', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/KT30ONCDjCph0XnxoeUXJp6szgjXOcuof27oqOfo.png', 'images/qrImage/KT30ONCDjCph0XnxoeUXJp6szgjXOcuof27oqOfo.png', 'Active', 'free', 103, 99999, 'https://youtu.be/SXCaUITCGIQ', '2020-08-05 17:12:36', '2020-08-05 17:12:36', 125, 'http://www.vhypeindia.com/QR/1596647548780', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/2CwXGaOXYdnLnLPnDLF48vBDVznGcWOw6TIIRJ3P.png', 'images/qrImage/2CwXGaOXYdnLnLPnDLF48vBDVznGcWOw6TIIRJ3P.png', 'Active', 'free', 103, 99999, 'https://youtu.be/SXCaUITCGIQ', '2020-08-05 17:12:47', '2020-08-05 17:12:47', 126, 'http://www.vhypeindia.com/QR/1596647559737', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/ruW13MmNME0J6s8MsHawmRIAvN4JtALmmfli76Yk.png', 'images/qrImage/ruW13MmNME0J6s8MsHawmRIAvN4JtALmmfli76Yk.png', 'Active', 'free', 103, 99999, 'https://youtu.be/SXCaUITCGIQ', '2020-08-05 17:15:06', '2020-08-05 17:15:06', 127, 'http://www.vhypeindia.com/QR/1596647699365', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/pHtl1297UVFoLonTZPeaapbi5jf7dWqVM9L3KQbv.png', 'images/qrImage/pHtl1297UVFoLonTZPeaapbi5jf7dWqVM9L3KQbv.png', 'Active', 'free', 103, 99999, 'https://youtu.be/SXCaUITCGIQ', '2020-08-05 17:15:15', '2020-08-05 17:15:15', 128, 'http://www.vhypeindia.com/QR/1596647708346', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/DsxMOlLDXZcUPfaBKuqWgC0E9yGU9ZF4cdxofeTu.png', 'images/qrImage/DsxMOlLDXZcUPfaBKuqWgC0E9yGU9ZF4cdxofeTu.png', 'Active', 'free', 117, 99999, 'test', '2020-08-05 17:33:34', '2020-08-05 17:33:34', 129, 'http://www.vhypeindia.com/QR/1596648801315', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/I5VlJH4twtfJV2OfjDP0vHMQhOOcQ7lib29Mwe2s.png', 'images/qrImage/I5VlJH4twtfJV2OfjDP0vHMQhOOcQ7lib29Mwe2s.png', 'Active', 'paid', 117, 5, 'test', '2020-08-05 17:36:35', '2020-08-12 04:27:03', 130, 'http://www.vhypeindia.com/QR/1596648842061', 5),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/rqR2xufwJSHlhTqEPemgqJf9j06lVj8Bc02WFYlo.png', 'images/qrImage/rqR2xufwJSHlhTqEPemgqJf9j06lVj8Bc02WFYlo.png', 'Active', 'paid', 117, 5, 'testisbest', '2020-08-05 17:49:41', '2020-08-05 17:49:41', 131, 'http://www.vhypeindia.com/QR/1596649682118', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/1JXIHC4k7xaRMnxFSZo0xBmXSAZrDDo9pZT2oEXm.png', 'images/qrImage/1JXIHC4k7xaRMnxFSZo0xBmXSAZrDDo9pZT2oEXm.png', 'Active', 'free', 117, 99999, 'tesr', '2020-08-05 17:50:02', '2020-08-05 17:50:02', 132, 'http://www.vhypeindia.com/QR/1596649794131', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/sQCxikuc7EKcHCguEYznztiNwiGyeX6ZXRPuvb6z.png', 'images/qrImage/sQCxikuc7EKcHCguEYznztiNwiGyeX6ZXRPuvb6z.png', 'Active', 'free', 117, 99999, 'test', '2020-08-05 17:50:18', '2020-08-05 17:50:18', 133, 'http://www.vhypeindia.com/QR/1596649810760', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/oPrUClDyf1d4fEpamYTIFN6YdmZKqptiewvFIOIb.png', 'images/qrImage/oPrUClDyf1d4fEpamYTIFN6YdmZKqptiewvFIOIb.png', 'Active', 'free', 117, 99999, 'yusus', '2020-08-05 17:51:03', '2020-08-05 17:51:03', 134, 'http://www.vhypeindia.com/QR/1596649856072', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/0svNOWadGDY9swGtt5MKQgLoSfO0Ym6962wKwizM.png', 'images/qrImage/0svNOWadGDY9swGtt5MKQgLoSfO0Ym6962wKwizM.png', 'Active', 'paid', 117, 5, 'eyeyeueh', '2020-08-05 17:51:38', '2020-08-05 17:51:38', 135, 'http://www.vhypeindia.com/QR/1596649873651', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/3UkAeiPXBPujQmp1Nmhx6GGh0wwALC8Ypr03YCR1.png', 'images/qrImage/3UkAeiPXBPujQmp1Nmhx6GGh0wwALC8Ypr03YCR1.png', 'Active', 'free', 103, 99999, 'https://m.youtube.com/channel/UCU6MgWNL4cp7SkmhHQkP2Pg', '2020-08-06 03:35:35', '2020-08-06 03:35:35', 136, 'http://www.vhypeindia.com/QR/1596684887088', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/3q7UqZ20WVoR4dFyydNtHVj8KzJ2tvYkVYFOgaJy.png', 'images/qrImage/3q7UqZ20WVoR4dFyydNtHVj8KzJ2tvYkVYFOgaJy.png', 'Active', 'free', 103, 99999, 'www.search4sure.com', '2020-08-06 03:40:02', '2020-08-06 03:40:27', 137, 'http://www.vhypeindia.com/QR/1596685176880', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/cAqWW0wPMc85w5dcpMnVdLNdile7G8JypPKFmGpH.png', 'images/qrImage/cAqWW0wPMc85w5dcpMnVdLNdile7G8JypPKFmGpH.png', 'Active', 'free', 103, 99999, 'https://www.imagesbazaar.com/', '2020-08-06 03:41:02', '2020-08-06 03:45:20', 138, 'http://www.vhypeindia.com/QR/1596685255091', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/KoORll3RzuBgYKdbEPZb9xhS7sXnA5cvQ1JsWI5B.png', 'images/qrImage/KoORll3RzuBgYKdbEPZb9xhS7sXnA5cvQ1JsWI5B.png', 'Active', 'free', 103, 99999, 'http://search4sure.com/welcome/', '2020-08-06 03:41:56', '2020-08-06 03:42:15', 139, 'http://www.vhypeindia.com/QR/1596685308104', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/iLsAAZDXwO3EckEdLuvvQVqI8aL2itZzPeSSk5Kl.png', 'images/qrImage/iLsAAZDXwO3EckEdLuvvQVqI8aL2itZzPeSSk5Kl.png', 'Active', 'paid', 103, 5, 'http://search4sure.com/welcome/', '2020-08-06 03:44:19', '2020-08-15 01:50:05', 140, 'http://www.vhypeindia.com/QR/1596685405246', 11),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/kDB3iO7vYSNvt3y8PfqihhE7OvmNZWMsJz8O7GAQ.png', 'images/qrImage/kDB3iO7vYSNvt3y8PfqihhE7OvmNZWMsJz8O7GAQ.png', 'Active', 'free', 114, 99999, 'gfcf', '2020-08-06 12:08:42', '2020-08-06 12:08:42', 141, 'http://www.vhypeindia.com/QR/1596715638951', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/cjnwCu0NvS2MPybyBuPkc1POsMmg5ACnT1uO7rWm.png', 'images/qrImage/cjnwCu0NvS2MPybyBuPkc1POsMmg5ACnT1uO7rWm.png', 'Active', 'free', 114, 99999, 'xxxx', '2020-08-06 12:11:32', '2020-08-06 12:11:32', 142, 'http://www.vhypeindia.com/QR/1596715881785', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/ttqh92gl26JCd8ef2W5qSuLogknHYGQaRmvEUPgB.png', 'images/qrImage/ttqh92gl26JCd8ef2W5qSuLogknHYGQaRmvEUPgB.png', 'Active', 'free', 114, 99999, 'zzz', '2020-08-06 12:13:22', '2020-08-06 12:13:22', 143, 'http://www.vhypeindia.com/QR/1596715993785', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/r8ooKVEZO0PXy25JJx7xrvnxphAOnhouK7xKdzSs.png', 'images/qrImage/r8ooKVEZO0PXy25JJx7xrvnxphAOnhouK7xKdzSs.png', 'Active', 'free', 114, 99999, 'dff', '2020-08-06 12:46:35', '2020-08-06 12:46:35', 144, 'http://www.vhypeindia.com/QR/1596717929648', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/np7zXLE0lcfwstzd1de9g9GCodSbQwH0lmMYsdXl.png', 'images/qrImage/np7zXLE0lcfwstzd1de9g9GCodSbQwH0lmMYsdXl.png', 'Active', 'paid', 103, 5, 'http://search4sure.com/welcome/', '2020-08-06 13:04:51', '2020-08-10 10:18:31', 145, 'http://www.vhypeindia.com/QR/1596719039707', 8),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/5JmlRwnJZIrbkndc9DblPysP13YWNp5C8x25FyWf.png', 'images/qrImage/5JmlRwnJZIrbkndc9DblPysP13YWNp5C8x25FyWf.png', 'Active', 'free', 114, 99999, 'svsgsga', '2020-08-06 13:05:24', '2020-08-06 13:05:24', 146, 'http://www.vhypeindia.com/QR/1596719061172', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/ZEaDAktr3nhsmkScmJgLyS3LbiKFbjw0PM3AvOSF.png', 'images/qrImage/ZEaDAktr3nhsmkScmJgLyS3LbiKFbjw0PM3AvOSF.png', 'Active', 'free', 114, 99999, 'ddfc', '2020-08-06 13:07:44', '2020-08-06 13:07:44', 147, 'http://www.vhypeindia.com/QR/1596719239223', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/1hTWRyGQPAhN0s37U7RKNlQuLqGyIejsbYbkOFxC.png', 'images/qrImage/1hTWRyGQPAhN0s37U7RKNlQuLqGyIejsbYbkOFxC.png', 'Active', 'free', 114, 99999, 'vggg', '2020-08-06 13:18:45', '2020-08-06 13:18:45', 148, 'http://www.vhypeindia.com/QR/1596719892453', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/4xSZIJD661WxcffnnEh1SFdy7u2TVyLyaDeOI0Pn.png', 'images/qrImage/4xSZIJD661WxcffnnEh1SFdy7u2TVyLyaDeOI0Pn.png', 'Active', 'free', 114, 99999, 'gvhh', '2020-08-06 13:28:04', '2020-08-06 13:28:04', 149, 'http://www.vhypeindia.com/QR/1596720418543', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/fgFMPTHoG0z50gpdjdZnXjZpiH5K81ccDqMJBk74.png', 'images/qrImage/fgFMPTHoG0z50gpdjdZnXjZpiH5K81ccDqMJBk74.png', 'Active', 'free', 103, 99999, 'http://search4sure.com/welcome/', '2020-08-06 13:29:28', '2020-08-06 13:29:28', 150, 'http://www.vhypeindia.com/QR/1596720559176', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/lB5a0e6w7sFjP8cYyTonFCUFcBFrG2anxjSFnsal.png', 'images/qrImage/lB5a0e6w7sFjP8cYyTonFCUFcBFrG2anxjSFnsal.png', 'Active', 'free', 114, 99999, 'dccc', '2020-08-06 13:34:54', '2020-08-06 13:34:54', 151, 'http://www.vhypeindia.com/QR/1596720882959', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/k27JtAqG5dDS2PZK8gTRdaptLCw80nNAi0aLA5vu.png', 'images/qrImage/k27JtAqG5dDS2PZK8gTRdaptLCw80nNAi0aLA5vu.png', 'Active', 'free', 114, 99999, 'hhh', '2020-08-06 13:38:37', '2020-08-06 13:38:37', 152, 'http://www.vhypeindia.com/QR/1596721106838', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/Gg4O585clCz7yzS9hshxMisn7o3Y9dhRpUdBoY0t.png', 'images/qrImage/Gg4O585clCz7yzS9hshxMisn7o3Y9dhRpUdBoY0t.png', 'Active', 'free', 114, 99999, 'jfjfjd', '2020-08-06 13:41:07', '2020-08-06 13:41:07', 153, 'http://www.vhypeindia.com/QR/1596721242946', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/iqQa7dI3owlgbiyi2ZG8KM0s8epqzyjG94SyxSrv.png', 'images/qrImage/iqQa7dI3owlgbiyi2ZG8KM0s8epqzyjG94SyxSrv.png', 'Active', 'free', 103, 99999, 'http://search4sure.com/welcome/', '2020-08-06 17:04:56', '2020-08-06 17:04:56', 154, 'http://www.vhypeindia.com/QR/1596733470798', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/7hF8o4pd6pBhN6YrU0VPPaayslOqBju5MhOyqhjr.png', 'images/qrImage/7hF8o4pd6pBhN6YrU0VPPaayslOqBju5MhOyqhjr.png', 'Active', 'free', 103, 99999, 'http://search4sure.com/welcome/', '2020-08-06 17:22:58', '2020-08-06 17:22:58', 155, 'http://www.vhypeindia.com/QR/1596734538954', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/GlYtA3kQoDUDvpwZ2qoMceIvKrPsF8fkYH9EBQ42.png', 'images/qrImage/GlYtA3kQoDUDvpwZ2qoMceIvKrPsF8fkYH9EBQ42.png', 'Active', 'paid', 103, 10, 'http://search4sure.com/welcome/', '2020-08-06 17:23:26', '2020-08-10 10:18:30', 156, 'http://www.vhypeindia.com/QR/1596734583814', 10),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/sKqjS4WZMM8ximh24kS3zrZNa4Kaaz4ZbbPWyBja.png', 'images/qrImage/sKqjS4WZMM8ximh24kS3zrZNa4Kaaz4ZbbPWyBja.png', 'Active', 'free', 103, 99999, 'http://search4sure.com/welcome/', '2020-08-06 17:24:11', '2020-08-06 17:24:11', 157, 'http://www.vhypeindia.com/QR/1596734616498', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/5wpFRRrBhBgdLy8a9ejr4zxaHwFLGki0Sr6I6Gus.png', 'images/qrImage/5wpFRRrBhBgdLy8a9ejr4zxaHwFLGki0Sr6I6Gus.png', 'Active', 'paid', 103, 10, 'http://search4sure.com/welcome/', '2020-08-06 17:24:38', '2020-08-06 17:24:38', 158, 'http://www.vhypeindia.com/QR/1596734655322', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/jB24ye2vE1FVLkMuhAWzAJJHsc8diP4tRLnGifIM.png', 'images/qrImage/jB24ye2vE1FVLkMuhAWzAJJHsc8diP4tRLnGifIM.png', 'Active', 'free', 103, 99999, 'https://mobile.mi.com/in/', '2020-08-07 09:41:19', '2020-08-09 02:05:10', 159, 'http://www.vhypeindia.com/QR/1596793218947', 3),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/VpX8v4gyv85RwOQ6lLd1WoEjNGnabEMKtJHgwERp.png', 'images/qrImage/VpX8v4gyv85RwOQ6lLd1WoEjNGnabEMKtJHgwERp.png', 'Active', 'free', 103, 99999, 'https://mobile.mi.com/in/', '2020-08-07 13:30:44', '2020-08-07 13:30:44', 160, 'http://www.vhypeindia.com/QR/1596807009594', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/bGtQYiXaB8ZTYrCz4yvDD4ApIQibZzZXfqaXaqbG.png', 'images/qrImage/bGtQYiXaB8ZTYrCz4yvDD4ApIQibZzZXfqaXaqbG.png', 'Active', 'free', 103, 99999, 'https://maps.app.goo.gl/Dv3JzfZxoj4haEzE9', '2020-08-08 12:22:19', '2020-08-08 12:22:50', 161, 'http://www.vhypeindia.com/QR/1596889310384', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/jwnj9dVvgy1Us7EK9ngXGiKhtqU65JK44OgldUZJ.png', 'images/qrImage/jwnj9dVvgy1Us7EK9ngXGiKhtqU65JK44OgldUZJ.png', 'Active', 'paid', 103, 10, 'http://www.vhypeindia.com/profile/103', '2020-08-08 12:46:59', '2020-08-08 12:46:59', 162, 'http://www.vhypeindia.com/QR/1596890772043', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/dpbyXlL8ydjOtnhkINKKVusJDO20BhBd0hlcXkUd.png', 'images/qrImage/dpbyXlL8ydjOtnhkINKKVusJDO20BhBd0hlcXkUd.png', 'Active', 'paid', 103, 10, 'http://www.vhypeindia.com/profile/103', '2020-08-08 12:47:20', '2020-08-08 12:47:20', 163, 'http://www.vhypeindia.com/QR/1596890824649', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/Zfa6glTP1ClrAbtCG1PiqNfvHiFn9WVmI5gAO9VV.png', 'images/qrImage/Zfa6glTP1ClrAbtCG1PiqNfvHiFn9WVmI5gAO9VV.png', 'Active', 'paid', 103, 10, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-10 09:50:19', '2020-08-10 09:50:19', 164, 'http://www.vhypeindia.com/QR/1597052978358', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/E7B7XJoqVQbEaU7Bjtp1noSuebhOfNh2L46uNXdT.png', 'images/qrImage/E7B7XJoqVQbEaU7Bjtp1noSuebhOfNh2L46uNXdT.png', 'Active', 'paid', 103, 10, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-10 09:59:21', '2020-08-11 12:12:19', 165, 'http://www.vhypeindia.com/QR/1597053167681', 4),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/CQs9YVNKRnQuridLH1dAwgwLAFclIr3CvQqiJoH0.png', 'images/qrImage/CQs9YVNKRnQuridLH1dAwgwLAFclIr3CvQqiJoH0.png', 'Active', 'free', 105, 99999, 'gshsh', '2020-08-10 13:21:25', '2020-08-10 13:21:25', 166, 'http://www.vhypeindia.com/QR/1597065655617', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/Gu49buLHD1sXoKvDXDTWYM5vBqJPIxjBEAkkPFMB.png', 'images/qrImage/Gu49buLHD1sXoKvDXDTWYM5vBqJPIxjBEAkkPFMB.png', 'Active', 'paid', 110, 2500, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-11 01:59:15', '2020-08-11 01:59:48', 167, 'http://www.vhypeindia.com/QR/1597110834834', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/AQvQKTMkJz8aqXpfsARHWMQaqpTPtflD4YH0OgiJ.png', 'images/qrImage/AQvQKTMkJz8aqXpfsARHWMQaqpTPtflD4YH0OgiJ.png', 'Active', 'paid', 110, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-11 02:02:45', '2020-08-18 13:42:28', 168, 'http://www.vhypeindia.com/QR/1597111263047', 3),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/DCyZhRFOJJaYbhFFIAI1flO4VkpLlxGPOXdaNZFs.png', 'images/qrImage/DCyZhRFOJJaYbhFFIAI1flO4VkpLlxGPOXdaNZFs.png', 'Active', 'paid', 110, 2500, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-11 04:53:50', '2020-08-11 04:53:50', 169, 'http://www.vhypeindia.com/QR/1597121451389', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/ZxVXukZbBY7smJO8NwiLHTExACctUNSzrLglevpG.png', 'images/qrImage/ZxVXukZbBY7smJO8NwiLHTExACctUNSzrLglevpG.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-11 06:53:19', '2020-08-11 06:53:19', 170, 'http://www.vhypeindia.com/QR/1597128758762', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/9TJCG2dTllRZ43pAFjcTuUZYI2v2nbz6pdplfuCl.png', 'images/qrImage/9TJCG2dTllRZ43pAFjcTuUZYI2v2nbz6pdplfuCl.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-11 07:26:56', '2020-08-11 07:26:56', 171, 'http://www.vhypeindia.com/QR/1597130692990', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/M1dP3OxtYt0KoHd8H2qgYjYjyvdyjs5zEofD0Iq2.png', 'images/qrImage/M1dP3OxtYt0KoHd8H2qgYjYjyvdyjs5zEofD0Iq2.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-11 07:45:46', '2020-08-11 12:11:50', 172, 'http://www.vhypeindia.com/QR/1597131920069', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/opTMZD5a1jpZ0cvBTFCUgRdtPe1jzNLk0OMt0qKs.png', 'images/qrImage/opTMZD5a1jpZ0cvBTFCUgRdtPe1jzNLk0OMt0qKs.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-11 08:27:18', '2020-08-11 08:27:18', 173, 'http://www.vhypeindia.com/QR/1597134387473', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/9nGY5HajEa12td65CFD8x2oNiOD3ecoEmhy3mTL3.png', 'images/qrImage/9nGY5HajEa12td65CFD8x2oNiOD3ecoEmhy3mTL3.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-12 07:04:16', '2020-08-12 07:04:16', 174, 'http://www.vhypeindia.com/QR/1597215696616', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/KBX6T8VFHFKrvcfpxBO5EgLWRkPHvSVZoksVukT0.png', 'images/qrImage/KBX6T8VFHFKrvcfpxBO5EgLWRkPHvSVZoksVukT0.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-12 07:07:06', '2020-08-13 04:36:58', 175, 'http://www.vhypeindia.com/QR/1597215978466', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/zCBs8QzhU8Ox0y5kW6TnlrHy3Xk5hXjnh2mDpyku.png', 'images/qrImage/zCBs8QzhU8Ox0y5kW6TnlrHy3Xk5hXjnh2mDpyku.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-13 03:45:12', '2020-08-13 03:45:40', 176, 'http://www.vhypeindia.com/QR/1597290259677', 1);
INSERT INTO `qr_marketings` (`qr_image`, `path`, `status`, `type`, `user_id`, `scancount`, `youtub_url`, `created_at`, `updated_at`, `id`, `fullurl`, `view_count`) VALUES
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/ut755SzzcJ9hdhbNHGTXr10oVuD4AB0zEP8QDmiI.png', 'images/qrImage/ut755SzzcJ9hdhbNHGTXr10oVuD4AB0zEP8QDmiI.png', 'Active', 'free', 130, 99999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-13 04:16:38', '2020-08-13 04:19:15', 177, 'http://www.vhypeindia.com/QR/1597292148448', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/QgTbFjJKdseFUB14vyjUmBDL5R0UGTdjy0h4eErL.png', 'images/qrImage/QgTbFjJKdseFUB14vyjUmBDL5R0UGTdjy0h4eErL.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-13 04:32:22', '2020-08-13 04:36:28', 178, 'http://www.vhypeindia.com/QR/1597293102916', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/8BB6kliytuW52XPasuAqN2DXdFPMl6W0FVhqDQjj.png', 'images/qrImage/8BB6kliytuW52XPasuAqN2DXdFPMl6W0FVhqDQjj.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-13 04:33:34', '2020-08-15 01:49:53', 179, 'http://www.vhypeindia.com/QR/1597293174773', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/Rjkya9p4L7h3VRRr2vAggtv4XxmVQtxHKl8KCj3b.png', 'images/qrImage/Rjkya9p4L7h3VRRr2vAggtv4XxmVQtxHKl8KCj3b.png', 'Active', 'paid', 103, 999999, 'https://youtu.be/ByYWL1SEe-k', '2020-08-13 07:39:23', '2020-08-13 07:39:23', 180, 'http://www.vhypeindia.com/QR/1597304309182', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/AEywmkLnW8FU7Per8cy2MTSAjmgm2ooB9kIoxtk0.png', 'images/qrImage/AEywmkLnW8FU7Per8cy2MTSAjmgm2ooB9kIoxtk0.png', 'Active', 'paid', 103, 999999, 'https://youtu.be/ByYWL1SEe-k', '2020-08-13 07:40:46', '2020-08-13 07:41:21', 181, 'http://www.vhypeindia.com/QR/1597304413993', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/WnhbSOEaZFgAkuTMoRgeIYhRdiZzmtyvWQSLbN73.png', 'images/qrImage/WnhbSOEaZFgAkuTMoRgeIYhRdiZzmtyvWQSLbN73.png', 'Active', 'paid', 103, 999999, 'https://youtu.be/ByYWL1SEe-k', '2020-08-13 07:42:23', '2020-08-13 07:42:23', 182, 'http://www.vhypeindia.com/QR/1597304522400', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/zw2X9djV2G8iYZKzgPcs3eN3dMmSNBWDMusigIoo.png', 'images/qrImage/zw2X9djV2G8iYZKzgPcs3eN3dMmSNBWDMusigIoo.png', 'Active', 'paid', 103, 999999, 'https://pin.it/6vo5iZp', '2020-08-13 08:33:03', '2020-08-13 08:33:03', 183, 'http://www.vhypeindia.com/QR/1597307390267', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/zUH4SjqOxVt7a67ZEmjuMk91YIu73Utbte8ux95p.png', 'images/qrImage/zUH4SjqOxVt7a67ZEmjuMk91YIu73Utbte8ux95p.png', 'Active', 'paid', 103, 999999, 'https://pin.it/4VHR5LW', '2020-08-13 08:45:00', '2020-08-13 08:45:00', 184, 'http://www.vhypeindia.com/QR/1597308226781', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/vE9ymqtYdJGvh7uJawq468k8i5uC5HxpeHqFbIU1.png', 'images/qrImage/vE9ymqtYdJGvh7uJawq468k8i5uC5HxpeHqFbIU1.png', 'Active', 'paid', 103, 10, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-14 05:06:35', '2020-08-14 05:06:35', 185, 'http://www.vhypeindia.com/QR/1597381555989', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/yaReU1dy05Ez50cZ86pxipPIAtPt01uZAQhSMJ7R.png', 'images/qrImage/yaReU1dy05Ez50cZ86pxipPIAtPt01uZAQhSMJ7R.png', 'Active', 'free', 131, 99999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-15 01:36:06', '2020-08-15 01:40:09', 186, 'http://www.vhypeindia.com/QR/1597455292289', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/0cHr080fmqOGPuYIl6dcWSDhrf1eDgR92CsrdewC.png', 'images/qrImage/0cHr080fmqOGPuYIl6dcWSDhrf1eDgR92CsrdewC.png', 'Active', 'paid', 103, 10, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-15 01:49:17', '2020-08-15 01:49:17', 187, 'http://www.vhypeindia.com/QR/1597456121545', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/pGnq4FREjJEbj37duuZ2XYitJhaYbqsLzBUCIKWj.png', 'images/qrImage/pGnq4FREjJEbj37duuZ2XYitJhaYbqsLzBUCIKWj.png', 'Active', 'paid', 100, 2500, 'https://youtu.be/wIgfbr8-DIU', '2020-08-15 10:50:25', '2020-08-15 10:50:25', 188, 'http://www.vhypeindia.com/QR/1597488479537', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/U5bBfG7QSvDbZGCCJ07PKFuXfqIqCmOG8QFttRSN.png', 'images/qrImage/U5bBfG7QSvDbZGCCJ07PKFuXfqIqCmOG8QFttRSN.png', 'Active', 'paid', 100, 2500, 'https://youtu.be/wIgfbr8-DIU', '2020-08-15 10:52:18', '2020-08-15 10:53:04', 189, 'http://www.vhypeindia.com/QR/1597488693317', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/Hzj709VDydRA3Ggvtc9WtvN47AKT4nxo0rFZFj1r.png', 'images/qrImage/Hzj709VDydRA3Ggvtc9WtvN47AKT4nxo0rFZFj1r.png', 'Active', 'paid', 103, 999999, 'https://youtu.be/dh1ttXhoWG4', '2020-08-16 07:42:02', '2020-08-20 17:43:53', 190, 'http://www.vhypeindia.com/QR/1597563515292', 39),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/GVk3vWAKG8l3Ptv7K7SivtImLCfzrzuZDN1rQAuF.png', 'images/qrImage/GVk3vWAKG8l3Ptv7K7SivtImLCfzrzuZDN1rQAuF.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-16 08:09:21', '2020-08-16 08:09:21', 191, 'http://www.vhypeindia.com/QR/1597565304772', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/57IsYIVdW33BvdXMZrYJ3t7GbxPRciqUyPCbVjws.png', 'images/qrImage/57IsYIVdW33BvdXMZrYJ3t7GbxPRciqUyPCbVjws.png', 'Active', 'paid', 135, 10, 'http://telegram.me/bathroomsingers_bot', '2020-08-16 20:24:07', '2020-08-16 20:24:07', 192, 'http://www.vhypeindia.com/QR/1597611257764', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/MY0Drat6vfqpp6tEG27r1Fl4R6r3mGLSfcAksD2m.png', 'images/qrImage/MY0Drat6vfqpp6tEG27r1Fl4R6r3mGLSfcAksD2m.png', 'Active', 'free', 135, 99999, 'http://telegram.me/bathroomsingers_bot', '2020-08-16 20:26:10', '2020-08-16 20:26:10', 193, 'http://www.vhypeindia.com/QR/1597611552663', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/At12tRSBYtSZc03DoXghkdEknqEnu7xisK3mOUS4.png', 'images/qrImage/At12tRSBYtSZc03DoXghkdEknqEnu7xisK3mOUS4.png', 'Active', 'free', 135, 99999, 'http://telegram.me/bathroomsingers_bot', '2020-08-16 20:26:12', '2020-08-16 20:26:12', 194, 'http://www.vhypeindia.com/QR/1597611552663', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/7FRzYbozE7dsQb3hL1hstdy9KiiAtp8E6vnUcJtk.png', 'images/qrImage/7FRzYbozE7dsQb3hL1hstdy9KiiAtp8E6vnUcJtk.png', 'Active', 'paid', 132, 2500, 'https://youtu.be/8QErNW0A9AU', '2020-08-17 03:44:21', '2020-08-17 03:44:21', 195, 'http://www.vhypeindia.com/QR/1597635788213', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/XlnBjSexfOyZ3gKDFTafLUHbvPNAq9ux6M7Cqed7.png', 'images/qrImage/XlnBjSexfOyZ3gKDFTafLUHbvPNAq9ux6M7Cqed7.png', 'Active', 'paid', 105, 10, 'bsbsb', '2020-08-17 03:49:03', '2020-08-17 03:49:03', 196, 'http://www.vhypeindia.com/QR/1597636108863', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/HPFezchn77soHJeP0zVu26cOZFSV2XwBvTr3h6OO.png', 'images/qrImage/HPFezchn77soHJeP0zVu26cOZFSV2XwBvTr3h6OO.png', 'Active', 'paid', 136, 2500, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-17 04:19:01', '2020-08-17 04:19:01', 197, 'http://www.vhypeindia.com/QR/1597637875253', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/krdX3IQHJzjjs7GkO2yiHtn9EKR3wZQSu2Togk5q.png', 'images/qrImage/krdX3IQHJzjjs7GkO2yiHtn9EKR3wZQSu2Togk5q.png', 'Active', 'paid', 136, 2500, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-17 04:24:02', '2020-08-17 04:24:02', 198, 'http://www.vhypeindia.com/QR/1597638171896', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/YcA7u0saUC1dX9i25Eq4FvwFpptABMsmaCQh9Kf8.png', 'images/qrImage/YcA7u0saUC1dX9i25Eq4FvwFpptABMsmaCQh9Kf8.png', 'Active', 'free', 137, 99999, 'https://youtu.be/JOAGJMBPtkc', '2020-08-17 08:30:06', '2020-08-17 08:30:51', 199, 'http://www.vhypeindia.com/QR/1597652984595', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/XpBY8lQJnIbWol5ZNXHGfYDgVQLVkJ5UcxMaNuNE.png', 'images/qrImage/XpBY8lQJnIbWol5ZNXHGfYDgVQLVkJ5UcxMaNuNE.png', 'Active', 'free', 138, 99999, 'www.vhypeindia.com', '2020-08-17 09:31:08', '2020-08-17 09:31:08', 200, 'http://www.vhypeindia.com/QR/1597656592280', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/2J4g9XgmkxUSKLvni24KUpiA5XRiLwylpSiY3edJ.png', 'images/qrImage/2J4g9XgmkxUSKLvni24KUpiA5XRiLwylpSiY3edJ.png', 'Active', 'paid', 138, 10, 'www.vhypeindia.com', '2020-08-17 09:39:07', '2020-08-17 09:39:07', 201, 'http://www.vhypeindia.com/QR/1597657125762', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/t1B7e9rn6Q5QbUjHnHVkZkv3bkANQwECDSDVMZBw.png', 'images/qrImage/t1B7e9rn6Q5QbUjHnHVkZkv3bkANQwECDSDVMZBw.png', 'Active', 'free', 139, 99999, 'https://myshopprime.com/vipin.haldkar1/shop', '2020-08-17 09:40:47', '2020-08-22 04:35:34', 202, 'http://www.vhypeindia.com/QR/1597657160604', 2),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/AnlLmL4AKtuz70osf1cJebMWrpY2U5MRJllxNLnb.png', 'images/qrImage/AnlLmL4AKtuz70osf1cJebMWrpY2U5MRJllxNLnb.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-18 08:33:01', '2020-08-18 08:33:01', 203, 'http://www.vhypeindia.com/QR/1597739534139', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/H6G7hqnltiPeObq4v0giB6lfpbdFOYLAi5GKmeSC.png', 'images/qrImage/H6G7hqnltiPeObq4v0giB6lfpbdFOYLAi5GKmeSC.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-19 02:43:17', '2020-08-19 02:43:17', 204, 'http://www.vhypeindia.com/QR/1597804915683', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/sZKnVovBC6qV0bE0tDoN9wpLlc6upGStg3jtmPi1.png', 'images/qrImage/sZKnVovBC6qV0bE0tDoN9wpLlc6upGStg3jtmPi1.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-19 03:26:37', '2020-08-19 03:26:37', 205, 'http://www.vhypeindia.com/QR/1597807514021', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/TVZUZEMioThfEOgeJIa0zQSLWlN6qfjNwVTbGnho.png', 'images/qrImage/TVZUZEMioThfEOgeJIa0zQSLWlN6qfjNwVTbGnho.png', 'Active', 'paid', 103, 10, 'hey @VidyutJammwal  we send our full pitch on your given link..but didn\'t get any response from your team.  #Goodwillfor', '2020-08-19 07:44:44', '2020-08-19 07:44:44', 206, 'http://www.vhypeindia.com/QR/1597823060386', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/CJqULFk7OUoWex7FJ0SXQJF9EaQ2FnpqgJdftCI6.png', 'images/qrImage/CJqULFk7OUoWex7FJ0SXQJF9EaQ2FnpqgJdftCI6.png', 'Active', 'free', 144, 99999, 'avinash', '2020-08-19 08:01:57', '2020-08-19 08:01:57', 207, 'http://www.vhypeindia.com/QR/1597824087095', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/kNdRsyxkt8NAnF17zJdQRInZ6mhK5nhzikSenobH.png', 'images/qrImage/kNdRsyxkt8NAnF17zJdQRInZ6mhK5nhzikSenobH.png', 'Active', 'paid', 100, 2500, 'www.google.com', '2020-08-19 08:16:19', '2020-08-19 08:17:18', 208, 'http://www.vhypeindia.com/QR/1597824895914', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/l789RLqF7qPv1mEReCnhVGUk1lX4O2LtKQHuy7jm.png', 'images/qrImage/l789RLqF7qPv1mEReCnhVGUk1lX4O2LtKQHuy7jm.png', 'Active', 'paid', 103, 10, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-20 03:20:38', '2020-08-20 03:20:38', 209, 'http://www.vhypeindia.com/QR/1597893576657', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/BaWDuw8iayInHgkuFAhJTyO1fcqzOd0WN5WF7EHk.png', 'images/qrImage/BaWDuw8iayInHgkuFAhJTyO1fcqzOd0WN5WF7EHk.png', 'Active', 'paid', 110, 10, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-20 03:44:24', '2020-08-20 03:44:24', 210, 'http://www.vhypeindia.com/QR/1597895013443', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/5PcLR3kHvreQsSziqBobHK3pvcOJS6f9JKhEZJ1U.png', 'images/qrImage/5PcLR3kHvreQsSziqBobHK3pvcOJS6f9JKhEZJ1U.png', 'Active', 'paid', 110, 10, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-20 04:25:23', '2020-08-20 04:27:41', 211, 'http://www.vhypeindia.com/QR/1597897484679', 1),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/UtFlT1NbnbZyrqhzr7VBLvCyr3Hsu9OKoKdaOOP2.png', 'images/qrImage/UtFlT1NbnbZyrqhzr7VBLvCyr3Hsu9OKoKdaOOP2.png', 'Active', 'free', 110, 99999, '9024383238', '2020-08-20 12:40:45', '2020-08-20 12:40:45', 212, 'http://www.vhypeindia.com/QR/1597927233557', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/zOM4XypCUtyUCMpFRWkBq6zD9ZPr7velG3y0SiFh.png', 'images/qrImage/zOM4XypCUtyUCMpFRWkBq6zD9ZPr7velG3y0SiFh.png', 'Active', 'paid', 103, 999999, 'https://play.google.com/store/apps/details?id=com.devparadigms.vhipeindia', '2020-08-21 05:21:38', '2020-08-21 05:21:38', 213, 'http://www.vhypeindia.com/QR/1597987174414', 0),
('https://digiplug.s3.ap-south-1.amazonaws.com/images/qrImage/vTxZRH3vCKyMmQbBy6aJcXjJIOu0GNHYJsV8bVwI.png', 'images/qrImage/vTxZRH3vCKyMmQbBy6aJcXjJIOu0GNHYJsV8bVwI.png', 'Active', 'paid', 110, 999999, 'https://youtu.be/ZYxdhMAF4F0', '2020-08-22 04:13:02', '2020-08-22 17:20:03', 214, 'http://www.vhypeindia.com/QR/1598069358275', 5);

-- --------------------------------------------------------

--
-- Table structure for table `qr_packages`
--

CREATE TABLE `qr_packages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `qrcount` int(11) DEFAULT NULL,
  `scan_count` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `type` enum('customer','retailer') DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qr_packages`
--

INSERT INTO `qr_packages` (`id`, `title`, `qrcount`, `scan_count`, `amount`, `type`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Unlimited Scans', 1, 999999, 399, 'customer', 'Active', '2020-08-08 10:40:54', '2020-08-08 10:46:22'),
(12, '2500 Scans', 1, 2500, 149, 'customer', 'Active', '2020-08-08 10:42:08', '2020-08-14 03:19:05'),
(18, '200 QR Unlimited Scans', 200, 999999, 15999, 'retailer', 'Active', '2020-08-14 03:23:33', '2020-08-14 03:23:33'),
(19, '100 QR Unlimited Scans', 100, 999999, 9999, 'retailer', 'Active', '2020-08-14 03:23:58', '2020-08-14 03:23:58'),
(20, '50 QR Unlimited Scans', 50, 999999, 5999, 'retailer', 'Active', '2020-08-14 03:24:20', '2020-08-14 03:24:20'),
(21, 'Trial 2 QR', 2, 10, 20, 'retailer', 'Active', '2020-08-14 03:24:56', '2020-08-14 03:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `q_r_apply_packages`
--

CREATE TABLE `q_r_apply_packages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_count` int(11) DEFAULT NULL,
  `package_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `scan_count` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `cupon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `q_r_apply_packages`
--

INSERT INTO `q_r_apply_packages` (`id`, `user_id`, `create_count`, `package_id`, `status`, `scan_count`, `created_at`, `updated_at`, `trans_id`, `response`, `cupon`) VALUES
(1, 103, 3, 10, 'Inactive', 481, '2020-07-29 15:22:33', '2020-08-21 05:21:24', NULL, NULL, NULL),
(2, 103, -1, 10, 'Inactive', -12, '2020-07-29 17:19:57', '2020-08-21 05:21:24', NULL, NULL, NULL),
(3, 100, -1, 5, 'Inactive', -18, '2020-07-30 03:56:53', '2020-08-19 08:16:15', NULL, NULL, NULL),
(4, 100, 0, 5, 'Inactive', 5, '2020-08-03 12:07:52', '2020-08-19 08:16:15', NULL, NULL, NULL),
(5, 100, 0, 5, 'Inactive', 4, '2020-08-03 12:19:47', '2020-08-19 08:16:15', NULL, NULL, NULL),
(6, 113, 2, 5, 'Inactive', -1, '2020-08-04 16:42:36', '2020-08-04 18:38:49', NULL, NULL, NULL),
(7, 113, 0, 4, 'Active', 2000, '2020-08-04 18:38:49', '2020-08-04 18:38:49', NULL, NULL, NULL),
(8, 112, 0, 4, 'Inactive', 2000, '2020-08-04 18:39:10', '2020-08-04 18:40:16', NULL, NULL, NULL),
(9, 112, 3, 10, 'Active', 2, '2020-08-04 18:40:16', '2020-08-13 08:49:30', NULL, NULL, NULL),
(10, 114, 0, 5, 'Inactive', 5, '2020-08-04 19:09:27', '2020-08-05 11:43:55', 'pay_FMnOu5c0v027yD', '{\"razorpay_payment_id\":\"pay_FMnOu5c0v027yD\"}', NULL),
(11, 114, 0, 9, 'Inactive', 5, '2020-08-04 19:12:14', '2020-08-05 11:43:55', 'pay_FMnS1jRergWEyW', '{\"razorpay_payment_id\":\"pay_FMnS1jRergWEyW\"}', NULL),
(12, 114, 0, 5, 'Inactive', 5, '2020-08-05 04:19:53', '2020-08-05 11:43:55', 'pay_FMwmWrAHXilaTg', '{\"razorpay_payment_id\":\"pay_FMwmWrAHXilaTg\"}', 'p2aq9kgkb'),
(13, 103, -1, 9, 'Inactive', -1, '2020-08-05 05:11:24', '2020-08-21 05:21:24', 'pay_FMxetvTmi6xGKa', '{\"razorpay_payment_id\":\"pay_FMxetvTmi6xGKa\"}', NULL),
(14, 103, 0, 9, 'Inactive', -5, '2020-08-05 05:55:24', '2020-08-21 05:21:24', 'pay_FMyP8Kyu0dzQCV', '{\"razorpay_payment_id\":\"pay_FMyP8Kyu0dzQCV\"}', NULL),
(15, 110, 98, 7, 'Inactive', 981, '2020-08-05 06:33:50', '2020-08-22 04:12:54', NULL, NULL, NULL),
(16, 114, 1, 10, 'Active', 85, '2020-08-05 11:43:55', '2020-08-11 14:28:50', 'pay_FN4LZoyjTmC1oW', '{\"razorpay_payment_id\":\"pay_FN4LZoyjTmC1oW\"}', NULL),
(17, 103, 0, 10, 'Inactive', 97, '2020-08-05 15:30:12', '2020-08-21 05:21:24', 'pay_FN8CXAqcM7u9dd', '{\"razorpay_payment_id\":\"pay_FN8CXAqcM7u9dd\"}', 'First50'),
(18, 103, 0, 10, 'Inactive', 78, '2020-08-05 15:38:05', '2020-08-21 05:21:24', 'pay_FN8KnY6ro1Adiy', '{\"razorpay_payment_id\":\"pay_FN8KnY6ro1Adiy\"}', NULL),
(19, 110, 5, 10, 'Inactive', 100, '2020-08-05 15:45:37', '2020-08-22 04:12:54', NULL, NULL, NULL),
(20, 103, 0, 9, 'Inactive', 5, '2020-08-05 16:00:24', '2020-08-21 05:21:24', 'pay_FN8iMFGCgv2Tf2', '{\"razorpay_payment_id\":\"pay_FN8iMFGCgv2Tf2\"}', 'First50'),
(21, 103, 0, 9, 'Inactive', 3, '2020-08-05 16:01:11', '2020-08-21 05:21:24', 'pay_FN8jGI0NDErjTh', '{\"razorpay_payment_id\":\"pay_FN8jGI0NDErjTh\"}', NULL),
(22, 110, 0, 10, 'Inactive', 10, '2020-08-05 16:10:10', '2020-08-22 04:12:54', NULL, NULL, NULL),
(23, 110, 0, 9, 'Inactive', 5, '2020-08-05 16:21:10', '2020-08-22 04:12:54', 'pay_FN94Gg0IctPH9E', '{\"razorpay_payment_id\":\"pay_FN94Gg0IctPH9E\"}', NULL),
(24, 110, 0, 10, 'Inactive', 1, '2020-08-05 16:22:02', '2020-08-22 04:12:54', 'pay_FN95LnvPWA3UBn', '{\"razorpay_payment_id\":\"pay_FN95LnvPWA3UBn\"}', NULL),
(25, 103, -1, 10, 'Inactive', 10, '2020-08-05 17:11:06', '2020-08-21 05:21:24', 'pay_FN9v8nYLwjU7HT', '{\"razorpay_payment_id\":\"pay_FN9v8nYLwjU7HT\"}', NULL),
(26, 103, 0, 10, 'Inactive', 9, '2020-08-05 17:14:35', '2020-08-21 05:21:24', 'pay_FN9yqixYNGuUMW', '{\"razorpay_payment_id\":\"pay_FN9yqixYNGuUMW\"}', NULL),
(27, 116, 1, 9, 'Active', 5, '2020-08-05 17:25:55', '2020-08-05 17:25:55', 'pay_FNAAoGap1rBrdJ', '{\"razorpay_payment_id\":\"pay_FNAAoGap1rBrdJ\"}', 'first50'),
(28, 117, 0, 9, 'Inactive', 3, '2020-08-05 17:36:32', '2020-08-05 17:49:37', 'pay_FNAM2djXz2Meei', '{\"razorpay_payment_id\":\"pay_FNAM2djXz2Meei\"}', 'first50'),
(29, 117, 1, 5, 'Active', 2, '2020-08-05 17:49:37', '2020-08-12 04:27:03', 'pay_FNAZsjEKvs0Xui', '{\"razorpay_payment_id\":\"pay_FNAZsjEKvs0Xui\"}', 'first50'),
(30, 103, 0, 9, 'Inactive', -1, '2020-08-06 03:44:15', '2020-08-21 05:21:24', 'pay_FNKhzKPdy7tKuO', '{\"razorpay_payment_id\":\"pay_FNKhzKPdy7tKuO\"}', NULL),
(31, 103, 0, 9, 'Inactive', -1, '2020-08-06 13:04:49', '2020-08-21 05:21:24', 'pay_FNUG5Qk3lIZHST', '{\"razorpay_payment_id\":\"pay_FNUG5Qk3lIZHST\"}', 'First50'),
(32, 103, 0, 10, 'Inactive', 0, '2020-08-06 17:21:55', '2020-08-21 05:21:24', 'pay_FNYdjhUa25DKBM', '{\"razorpay_payment_id\":\"pay_FNYdjhUa25DKBM\"}', NULL),
(33, 103, 0, 14, 'Inactive', 10, '2020-08-08 12:46:05', '2020-08-21 05:21:24', 'pay_FOH0bGVsTQ3xbE', '{\"razorpay_payment_id\":\"pay_FOH0bGVsTQ3xbE\"}', NULL),
(34, 103, 0, 14, 'Inactive', 2, '2020-08-09 06:42:48', '2020-08-21 05:21:24', 'pay_FOZLvMSlEMs3LQ', '{\"razorpay_payment_id\":\"pay_FOZLvMSlEMs3LQ\"}', NULL),
(35, 103, 86, 15, 'Inactive', 999989, '2020-08-10 10:21:38', '2020-08-21 05:21:24', 'pay_FP1cC26DWdeRGG', '{\"razorpay_payment_id\":\"pay_FP1cC26DWdeRGG\"}', NULL),
(36, 110, 0, 12, 'Inactive', 2499, '2020-08-11 01:59:14', '2020-08-22 04:12:54', 'pay_FPHaePfVMxMUfx', '{\"razorpay_payment_id\":\"pay_FPHaePfVMxMUfx\"}', NULL),
(37, 110, 0, 11, 'Inactive', 999998, '2020-08-11 02:02:41', '2020-08-22 04:12:54', 'pay_FPHeKZSI5kcGWi', '{\"razorpay_payment_id\":\"pay_FPHeKZSI5kcGWi\"}', NULL),
(38, 110, 0, 12, 'Inactive', 2500, '2020-08-11 04:53:40', '2020-08-22 04:12:54', 'pay_FPKYbxoEIG4kZp', '{\"razorpay_payment_id\":\"pay_FPKYbxoEIG4kZp\"}', 'FIRST60'),
(39, 103, 0, 21, 'Inactive', 5, '2020-08-14 05:05:47', '2020-08-21 05:21:24', 'pay_FQWMoFGTTEaK3q', '{\"razorpay_payment_id\":\"pay_FQWMoFGTTEaK3q\"}', 'Vhype70'),
(40, 100, 0, 12, 'Inactive', 2500, '2020-08-15 10:50:21', '2020-08-19 08:16:15', 'pay_FR0m3V6WIIrnev', '{\"razorpay_payment_id\":\"pay_FR0m3V6WIIrnev\"}', NULL),
(41, 100, 0, 12, 'Inactive', 2499, '2020-08-15 10:52:16', '2020-08-19 08:16:15', 'pay_FR0oCK9TLUYzFt', '{\"razorpay_payment_id\":\"pay_FR0oCK9TLUYzFt\"}', NULL),
(42, 103, 95, 19, 'Inactive', 999961, '2020-08-16 07:24:30', '2020-08-21 05:21:24', 'pay_FRLnC40d37O40z', '{\"razorpay_payment_id\":\"pay_FRLnC40d37O40z\"}', '7xkj6a4mu'),
(43, 110, 0, 21, 'Inactive', 7, '2020-08-16 07:30:43', '2020-08-22 04:12:54', 'pay_FRLtbsYaLHfs1c', '{\"razorpay_payment_id\":\"pay_FRLtbsYaLHfs1c\"}', NULL),
(44, 135, 1, 21, 'Active', 10, '2020-08-16 20:17:20', '2020-08-16 20:24:07', 'pay_FRYx4pVx3QG85m', '{\"razorpay_payment_id\":\"pay_FRYx4pVx3QG85m\"}', NULL),
(45, 105, 1, 21, 'Active', 10, '2020-08-17 03:44:16', '2020-08-17 03:49:03', 'pay_FRgZxpmfbtyd5m', '{\"razorpay_payment_id\":\"pay_FRgZxpmfbtyd5m\"}', NULL),
(46, 132, 0, 12, 'Active', 2500, '2020-08-17 03:44:17', '2020-08-17 03:44:21', 'pay_FRgZx1CtaLfzrc', '{\"razorpay_payment_id\":\"pay_FRgZx1CtaLfzrc\"}', NULL),
(47, 136, 0, 12, 'Inactive', 2500, '2020-08-17 04:18:58', '2020-08-17 04:23:53', 'pay_FRhAcLFHdqGHwb', '{\"razorpay_payment_id\":\"pay_FRhAcLFHdqGHwb\"}', 'Vhype70'),
(48, 136, 0, 12, 'Active', 2500, '2020-08-17 04:23:53', '2020-08-17 04:24:02', 'pay_FRhFr6hikE0FA0', '{\"razorpay_payment_id\":\"pay_FRhFr6hikE0FA0\"}', 'Vhype70'),
(49, 138, 1, 21, 'Active', 10, '2020-08-17 09:38:01', '2020-08-17 09:39:07', 'pay_FRmblJkUdFerLQ', '{\"razorpay_payment_id\":\"pay_FRmblJkUdFerLQ\"}', 'vhype70'),
(50, 103, 0, 21, 'Inactive', 8, '2020-08-19 04:11:08', '2020-08-21 05:21:24', 'pay_FSU6cO317vVWyk', '{\"razorpay_payment_id\":\"pay_FSU6cO317vVWyk\"}', NULL),
(51, 100, 0, 12, 'Active', 2499, '2020-08-19 08:16:15', '2020-08-19 08:17:18', 'pay_FSYHu9GGkHKzpf', '{\"razorpay_payment_id\":\"pay_FSYHu9GGkHKzpf\"}', 'VHYPE50'),
(52, 103, 0, 11, 'Active', 999999, '2020-08-21 05:21:24', '2020-08-21 05:21:38', 'pay_FTIN7xnIiAthho', '{\"razorpay_payment_id\":\"pay_FTIN7xnIiAthho\"}', 'VHYPE50'),
(53, 110, 0, 11, 'Active', 999994, '2020-08-22 04:12:54', '2020-08-22 17:20:03', 'pay_FTfjv81AkBHU9V', '{\"razorpay_payment_id\":\"pay_FTfjv81AkBHU9V\"}', 'V90HYPE');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Web developnment', 'Active', '2020-05-25 11:22:53', '2020-05-25 11:22:53'),
(2, 'Consultancy', 'Active', '2020-05-26 16:48:29', '2020-05-26 16:48:29'),
(3, 'Banking', 'Active', '2020-05-26 16:48:42', '2020-05-26 16:48:42'),
(4, 'Construction and Engineering', 'Active', '2020-05-26 16:48:59', '2020-08-08 10:32:18'),
(5, 'Communication', 'Active', '2020-05-26 16:49:17', '2020-08-08 10:31:56'),
(6, 'Business Services', 'Active', '2020-05-26 16:49:30', '2020-08-08 10:31:41'),
(8, 'Distribution', 'Active', '2020-08-08 10:32:38', '2020-08-08 10:32:38'),
(9, 'Youtuber', 'Active', '2020-08-08 10:32:48', '2020-08-08 10:32:48'),
(10, 'Entrepreneur', 'Active', '2020-08-08 10:33:01', '2020-08-08 10:33:01'),
(11, 'Education', 'Active', '2020-08-08 10:33:13', '2020-08-08 10:33:13'),
(12, 'Environment', 'Active', '2020-08-08 10:33:26', '2020-08-08 10:33:26'),
(13, 'Finance', 'Active', '2020-08-08 10:33:38', '2020-08-08 10:33:38'),
(14, 'Tourism', 'Active', '2020-08-08 10:33:53', '2020-08-08 10:33:53'),
(15, 'Health', 'Active', '2020-08-08 10:34:06', '2020-08-08 10:34:06'),
(16, 'Transportation', 'Active', '2020-08-08 10:34:22', '2020-08-08 10:34:22'),
(17, 'Founder & CEO', 'Active', '2020-08-08 10:34:41', '2020-08-08 10:34:41'),
(18, 'Shop Owner', 'Active', '2020-08-08 10:34:57', '2020-08-08 10:34:57'),
(19, 'Media', 'Active', '2020-08-08 10:36:17', '2020-08-08 10:36:17'),
(20, 'Advertising', 'Active', '2020-08-08 10:36:38', '2020-08-08 10:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `splshscreens`
--

CREATE TABLE `splshscreens` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `splshscreens`
--

INSERT INTO `splshscreens` (`id`, `image`, `status`, `created_at`, `updated_at`, `fullpath`, `path`) VALUES
(1, '1596883042.jpeg', 'Inactive', '2020-07-17 00:00:00', '2020-08-08 10:37:55', 'https://digiplug.s3.ap-south-1.amazonaws.com/images/splash/MGzfBL5rM52CTzBb0lj3RF1sIYlX0jVaj8Ei8cJ4.jpeg', 'images/splash/MGzfBL5rM52CTzBb0lj3RF1sIYlX0jVaj8Ei8cJ4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE `static_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`id`, `title`, `content`, `type`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:45.0pt\">VHypeIndia&rsquo;s</span></strong><span style=\"font-size:45.0pt\"> mission is to help brands and their physical assets to amplify their digital ones and create successful and secure omni channel experiences.</span></span></span></p>\n\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:45.0pt\">VHypeIndia is a software company focused on the research, development and enablement of IOT technologies that transform a presence into an engaging and secure touch point between consumers, manufacturers, retailers, e-tailers and brands.</span></span></span></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p>&nbsp;</p>', 'about_us', '2020-07-15 00:00:00', '2020-08-08 10:23:19'),
(2, 'PRIVACY POLICY', '<h1>PRIVACY POLICY</h1>\n\n<p>At vhypeindia.com we know that you care about how your personal information is used and shared, and we take our responsibility for the security of your personal information seriously. Unless otherwise stated and for the purposes of all personal data processed by vhypeindia.com, we are a Controller</p>\n\n<p>&nbsp;</p>\n\n<p>We are principally governed by the Data Protection Act 2018 of the Isle of Man (UK) and we provide this notice to better help you understand our online information practices and policies.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h1>The Information We Collect&nbsp;</h1>\n\n<p>We do not require you to provide us your Personal Data in order to access general information available on</p>\n\n<p>the Sites, although such activities may still be logged. However, we do receive and collect Personal Data from you in the ways listed below. We receive and collect this data as it is necessary for the adequate facilitation and performance of the contract between you and us, to provide you the Service, to secure our legitimate interests in analyzing the performance of our campaigns and Service, and to allow us to comply with our legal obligations.</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li><strong>QR Code Content:&nbsp;&nbsp;</strong>If you choose to create a QR code using Visualead.com we will collect and store on our server the information you enter into the QR code in order to facilitate the effective operation, delivery and management of the QR code created. Some QR Code data types, such as the vCard, Business page, Contact, Phone Number, SMS and Email QR code data types, require you to supply personally identifiably information to be encoded into the QR code, and this information will also be stored on our server.</li>\n	<li><strong>Registered Users:&nbsp;&nbsp;</strong>If you choose to sign up as a paid subscriber of vhypeindia.com you will be asked by our payment service provider to you to provide personally identifiable information and contact details sufficient to reasonably identify you as the authorized account holder, satisfy the identity requirements of Paypal and PaySafe &nbsp;(our payment service providers), and to facilitate the effective operation of the services offered to you as a subscriber.&nbsp;</li>\n	<li><strong>Email Information:&nbsp;</strong>If you choose to correspond with us via email, we may retain the content of your email messages together with your email address and our responses to you. We may send you information we think you might find useful (eg; subscription renewal reminders and technical service updates), but if the email does not relate to your specific account (eg; new features or promotion discounts) we will always give you the option to opt‐out.</li>\n	<li><strong>Automatically Collected Information:&nbsp;</strong>We use Google Analytics to measure and evaluate access to, and traffic on, the Visualead.com website. Google is an independent third‐party and we have no control over the manner in which they may subsequently use the user and visitor activity information collected through our use of the Google Analytics service. We strongly suggest that you review</li>\n</ul>\n\n<p>Google&rsquo;s&nbsp;<u>Google Analytics Privacy and Data Sharing</u>. To opt out of being monitored by Google Analytics, download and install the&nbsp;<a href=\"https://tools.google.com/dlpage/gaoptout\"><u>Google opt‐out add‐on</u></a>&nbsp;for your current web browser.</p>\n\n<ul>\n	<li><strong>Cookies:&nbsp;&nbsp;</strong>As you visit and browse the vhypeindia.com website, cookies are used to differentiate your actions from those of other users for the purpose of storing user preferences, tracking user trends, maintaining session log‐ins, and monitoring the status of website processes. Cookies do not gather personal information about you and we do not intentionally request or store any personal information that your browser may offer to us.&nbsp;</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>We do not store credit card information. All transactions are processed by PayPal/PaySafe and your credit card details are stored by them. Please refer to the Paypal/PaySafe privacy policy for more information.</p>\n\n<h1>How We Use The Information We Collect</h1>\n\n<p>At Visualead.com we use the information we collect for the purpose of conducting the day‐to‐day operation of our business activities, delivering products and services to you, processing payments received from you, monitoring the use of our website, and improving our website content, service offerings and user interface to better meet the needs of our users.</p>\n\n<p>The website aggregate usage data that we collect through our use of the Google Analytics service is used to resolve technical issues, administer the website, provide insights into website usability, and identify visitor preferences. This data is collected and stored in an anonymised and non‐identifiable form and we do not use any of this data to specifically identify website visitors or users.</p>\n\n<p>Occasionally we may use the user information that you provide to us to notify you about important changes to our website, new services, and special offers. You may unsubscribe directly from such email or notify us at any time by email if you do not wish to receive these notifications.</p>\n\n<h1>Disclosure Of Information</h1>\n\n<p>Your personal information will not be rented, sold or transferred to unrelated third parties, however we may release information when we believe, in good faith, that such release is reasonably necessary to:&nbsp;</p>\n\n<ul>\n	<li>Comply with a lawful request or requirement including the reporting of suspected illegal activity where there is a mandatory requirement or an obligation for us to do so.</li>\n	<li>Enforce or apply the terms of binding agreements with our users, vendors, or commercial partners.</li>\n	<li>Protect the rights, property or safety of our website, our business operations, or our users with particular reference to identity theft, fraud, or credit risk.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Your personal information may also be shared, as we deem appropriate, with trusted third parties who assist us in the operation of our website, the facilitation of payment processing, the conduct of our daytoday business activities, and the delivery of our products and services to you. Once shared, that information becomes subject exclusively to the privacy policies of the parties concerned.</p>\n\n<p>Aggregated non‐identifiable trend data sourced from user QR code creation, QR usage, and your interaction with the Visualead.com website may be released, at our sole discretion, to reputable third parties, or published by us, for planning, management, marketing or information purposes.</p>\n\n<h1>Self‐Disclosure By Users&nbsp;</h1>\n\n<p>Visualead.com cannot, and will not, be held responsible, liable or accountable for the release of your personal information that is the direct result of you making publicly available any QR code that you have created on our website, and that link to, or contain, that personal information. Your use of the website, and the creation of QR codes on it, acknowledges your acceptance and understanding of this.</p>\n\n<h1>The Right to Access, Correction and Deletion</h1>\n\n<p>We respect your privacy rights and provide you with reasonable access to the personal data that you may have provided to us through your use of our services. If you wish to access or amend any personal data we hold about you, or to request that we delete or transfer any information about you, you may contact us as set forth in the &ldquo;Support&rdquo; section. At your request, we will have all references to you that do not affect the operation of your subscriber account deleted from our database.</p>\n\n<p>You may update or correct your account information and preferences at any time by accessing the &ldquo;Settings&rdquo; section of your subscriber account dashboard. Please note that while any changes you make will be reflected in our active user database instantly, or within a reasonable period of time, we may retain all information that you submit for the purposes of backups, archiving, fraud and abuse prevention, analytics, the satisfaction of our legal and data protection obligations, or where we otherwise reasonably believe that we have a legitimate reason to do so.</p>\n\n<p>&nbsp;</p>\n\n<p>Please note that declining to share certain personal details with us may result in us not being able to provide some service features and website functionality.</p>\n\n<p>At any time you may reasonably object to the processing or storage of your personal data, unless otherwise required by applicable law. If you believe that your right to privacy granted by applicable data protection laws has been infringed upon, please contact us at&nbsp;<a href=\"mailto:support@Visualead.com\"><u>support@Visualead.com</u></a>.</p>\n\n<p>This provision does not apply to personal data that has been intentionally encoded into a QR Code. The management of the privacy of QR Code contents is the responsibility of the creator of the QR code. Any request for access, correction or deletion of personal data encoded into a QR code should be made to the user that created the QR code.</p>\n\n<h1>Security Of Data&nbsp;</h1>\n\n<p>To safeguard the information we collect about you we have put in place appropriate physical, electronic, technical and management procedures and protocols to secure our servers against unauthorized access and to maintain the accuracy and integrity of the information and data so stored.</p>\n\n<p>Please note that information we collect about you is stored and processed on our servers in the United States, and the laws pertaining to the storage, protection and transfer of personal information in the United States, may be more or less stringent than equivalent laws in your country.&nbsp; If you are not located in the United States, by using the website you hereby consent to the transfer across international boundaries of the information we collect about you.</p>\n\n<h1>Links To Other Websites&nbsp;</h1>\n\n<p>We have included links on the website for your use and reference and you should be aware that the privacy policies of these websites may differ from our own. We cannot, and will not, be held responsible, liable or accountable for the way in which your personal information is managed, stored or secured by these websites.</p>\n\n<h1>Children&nbsp;</h1>\n\n<p>We comply with the requirements of COPPA (Children&rsquo;s Online Privacy Protection Act) and we do not intentionally or knowingly collect personally identifiable information from children under the age of 14.&nbsp;</p>\n\n<p>As a general policy we ask that minors do not submit personally identifiable information to us and only use our website with the permission of, and/or under the supervision of, a parent or guardian.</p>\n\n<h1>Acquisition or Changes in Ownership</h1>\n\n<p>In the event that the Visualead.com website, the underlying business, or a substantial portion of its assets, is acquired by, sold to, or merged with another entity, the information that we have collected about you as a user of the Visualead.com website will be considered an asset of the business and will be transferred into the ownership of said entity.</p>\n\n<h1>Your Consent&nbsp;</h1>\n\n<p>By using our website, you consent to the collection and use of this information by Visualead.com. If we change our privacy policy, we will update this document so that you are always aware of what information we collect, how we use it, and under what circumstances we disclose it.&nbsp;</p>\n\n<h1>Questions and Feedback</h1>\n\n<p>Please contact us by email at&nbsp;<a href=\"mailto:privacy@visualead.com\"><u>privacy@visualead.com</u></a>&nbsp;if you have any questions about this Privacy Policy, your personal data, our use and disclosure practices, your consent choices, or if you have any concerns about this policy or the protection of your personal data.</p>', 'privacy_policy', '2020-07-29 00:00:00', '2020-08-08 10:10:36'),
(3, 'Terms And Conditions', '<p><span style=\"font-size:20px\">xacadcac</span></p>', 'tnc', '2020-07-29 00:00:00', '2020-08-08 18:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `top_retailers`
--

CREATE TABLE `top_retailers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilepic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `clinic_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('Admin','User') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `retailar_package` enum('Customer','Retailer','All') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'All',
  `fcm_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_package_type` enum('Customer','Retailer') COLLATE utf8mb4_unicode_ci DEFAULT 'Customer',
  `doctor_specialty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `add_date` date DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile_number`, `address`, `profilepic`, `social_id`, `lastlogin_type`, `email_verified_at`, `is_admin`, `clinic_id`, `gender`, `description`, `rate`, `social_ids`, `user_type`, `retailar_package`, `fcm_id`, `user_package_type`, `doctor_specialty`, `password`, `dob`, `status`, `add_date`, `start_time`, `end_time`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@gmail.com', '9660434382', 'V.d Nagar jaipure', '1589526122.png', '', '', NULL, 'Yes', NULL, NULL, NULL, '', '[{\"MOBILE\":\"9024383238\"}]', 'Admin', 'All', 'eK0rvp1ZXQo:APA91bFjFJ_mhchR3JWKLC-9BzcVWtH9WJ9eBIGnynpi6l5uIooj82e7Wj9zr-3QiwT0ycBTPA4Xc-axqAowESrpnZuVsCfMvCG_gnT_6Narrsvz37Ts7DaHR6ksw1tStE5XeUWmc32c', 'Customer', NULL, '$2y$10$tlJRef/GecCQ0QHE1cr14eEkZG8wBSKDDg9AG616nG9cgXn10C1La', NULL, 'Active', NULL, NULL, NULL, NULL, '2020-02-24 22:21:31', '2020-07-18 14:47:23'),
(100, 'new', NULL, '9024383238', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"MOBILE\":\"9024383238\"}]', 'User', 'All', 'eJeV-SzoS5y4LxSjxmnc2z:APA91bHeDrUkv_-Uhcobmj4tpjnlszZAjmKGtT9YD0YD4NXfbsAA0GjkTnmC_qzweZ2s9k_Z8ZhqST2CpgF12e38_72V_nUCsTgXB6Me8Gz3tIYVAT1qVravnJS-EJ4LO2b4_YY17jzK', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-07-16 11:55:31', '2020-08-19 08:16:15'),
(102, 'new', NULL, '12333333333', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"FACEBOOK\":\"test\"}]', 'User', 'All', 'tetw', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-07-18 04:29:33', '2020-08-04 17:09:29'),
(103, 'bharat', NULL, '7742833229', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"MOBILE\":\"7742833229\"}]', 'User', 'All', 'dYo5QDMoSIiIXWS5464wV1:APA91bGAs-BzQr5ybyHMj6p2vkDRpR3VskxjDQRN7y6PbvOAdX-oW6dTe2rdWyYaaARsAoS3YcMw1XjI8MG4EamD4AVdkf2Ejhv1-0kiRcqWbyeJGPBchRaVuHWgrPUjGOawz-DTIo8q', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-07-18 16:33:50', '2020-08-21 05:21:24'),
(104, 'manssi', NULL, '8386068449', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'esVpcMbVNc8:APA91bFh_XBAQudcTbpawCNHuHq40lFzrIsAB_NGqX6cOHVMl6D7-u20hwJt-GnJRJXfTMejQ-RZ86sgMyJL0ntOqn7YrIcek4fwJqKRosVfIp94CM34IoWzDyGHewQgMeZWJKV0Japa', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-07-19 00:45:58', '2020-07-19 00:45:58'),
(105, 'JITENDRA', NULL, '9694390093', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"MOBILE\":\"9694390093\"}]', 'User', 'All', 'csbcpCRcQ1SHGG2mIc-TYA:APA91bEhpY2fxh1pLZHWFij5WYc9YUA971w1VFHYePa3I4nJih1QQwkmOxiLdWsFycBX9tTA6tio90hc3YKs63smGGz0_Tx9SWdJiTjWog7iDc9gmnewwChtZH-guVmA0w-nQMBMAqmH', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-07-19 02:38:18', '2020-08-17 03:44:16'),
(106, 'new', NULL, '9314267002', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"MOBILE\":\"9314267002\"}]', 'User', 'All', 'cYWUZyOF1ww:APA91bHiRwzVX1QhyM-ZWjKqhhQHb8euiI1WGMP24RkEeQStVkGYD_W891dl97oDqAP1k5h0vogrM4D8eM71o_pTOr0uzi24QvS0tOB_8EVmpAppVZVpXc8wQNqcvxJIqVJRhYDYQtnZ', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-07-20 02:14:40', '2020-07-29 11:37:49'),
(107, 'Madhav Arya', 'madhavarya90@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"GOOGLE\":\"101041438171219185702\"}]', 'User', 'All', 'cYWUZyOF1ww:APA91bHiRwzVX1QhyM-ZWjKqhhQHb8euiI1WGMP24RkEeQStVkGYD_W891dl97oDqAP1k5h0vogrM4D8eM71o_pTOr0uzi24QvS0tOB_8EVmpAppVZVpXc8wQNqcvxJIqVJRhYDYQtnZ', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-07-29 07:03:43', '2020-07-29 10:54:31'),
(110, 'bhanu', NULL, '8824165611', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"MOBILE\":\"8824165611\"}]', 'User', 'All', 'dYo5QDMoSIiIXWS5464wV1:APA91bGAs-BzQr5ybyHMj6p2vkDRpR3VskxjDQRN7y6PbvOAdX-oW6dTe2rdWyYaaARsAoS3YcMw1XjI8MG4EamD4AVdkf2Ejhv1-0kiRcqWbyeJGPBchRaVuHWgrPUjGOawz-DTIo8q', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-07-29 17:27:44', '2020-08-22 04:12:54'),
(111, 'Bharat Jetthwani', 'bjethwani65@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"GOOGLE\":\"100340981973446562145\"}]', 'User', 'All', 'eVPy4jJqR-qZe8C4lvYSHm:APA91bG9UK635j05DqkawPAlRvQrJpEqHLw--_vo5MXHjfrYp8ZlFJd39XYrUZ68F65cvpM5ZdsaTwmFZJcUqalUDGtlYmJhuHNkImyBGEYIhl5kGSvakG_Sw87RpxEklxJF0Es5-Zhg', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-07-31 04:20:02', '2020-08-15 12:16:41'),
(112, 'Ta.ish Kumawat', 'tanishkmwt3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"GOOGLE\":\"116876390948390222685\"}]', 'User', 'All', 'c9ZGaDjaRJCGnwJ-OfBKG1:APA91bGNvc6XZHym1mkExWWZuKS0VhCeo_vxX_zkHA8bM1499gqwuIvdx73YaqGmh7bcIqGFQy-cS5lgthZViXHBjLfBZ4KibjkRADtDEdln4lXeEZfnKFJfV0OuaUonIpzhpdibMWbr', 'Retailer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-03 11:23:22', '2020-08-04 18:40:16'),
(113, 'Anuj', NULL, '6378864101', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'c9ZGaDjaRJCGnwJ-OfBKG1:APA91bGNvc6XZHym1mkExWWZuKS0VhCeo_vxX_zkHA8bM1499gqwuIvdx73YaqGmh7bcIqGFQy-cS5lgthZViXHBjLfBZ4KibjkRADtDEdln4lXeEZfnKFJfV0OuaUonIpzhpdibMWbr', 'Retailer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-04 16:35:26', '2020-08-04 18:38:49'),
(114, 'anuj Kumawat', 'anujkmwt3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"FACEBOOK\":\"1663397020491362\"}]', 'User', 'All', 'eJeV-SzoS5y4LxSjxmnc2z:APA91bHeDrUkv_-Uhcobmj4tpjnlszZAjmKGtT9YD0YD4NXfbsAA0GjkTnmC_qzweZ2s9k_Z8ZhqST2CpgF12e38_72V_nUCsTgXB6Me8Gz3tIYVAT1qVravnJS-EJ4LO2b4_YY17jzK', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-04 18:52:52', '2020-08-11 05:38:54'),
(115, 'Bharat Jetthwani', 'bjethwani@ymail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"FACEBOOK\":\"3167685920005121\"}]', 'User', 'All', 'e20qrtJaQpaJpdguRZ9j-N:APA91bGura2O92DXqKtHm4by1ew3WRazGAhDoxXnZf2CD3E1tc_FgrX6N9QqFQNLwuCy4jZgtl-5C7CuRDU08BmzCdsdioz5RtWGCbY0wJOvyJmOCJU70-bDKrMsoVRV2xlEGh96kVRz', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-05 11:18:41', '2020-08-17 05:51:26'),
(117, 'amit namdev', NULL, '9887989986', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"MOBILE\":\"9887989986\"}]', 'User', 'All', 'ebLOaNpjQnqRZKET99nvt5:APA91bHBmVeUdg3J-miISVRCjpNHhESztuK5KVZsfsDEanbRveLwby18Eu9VFDSMsiLaNKX2uA90IzhnRLPGpKWAxlWN3Y4ZdWle_OkJmBCP8tvPjNPd2Ebz-oeLVVXjhU_UZO_9rEJc', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-05 17:32:37', '2020-08-05 17:49:37'),
(118, 'Naveen Sharma', NULL, '8769086030', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'fozlb9kjQa6FrCVgvIhtPo:APA91bFF1U_7M_yJMNKi7S3DNE5hUF2iZNIGJYFv0WihE0PjSS6CSzPEjj54SLaHaxM5Eh3JL9aF44lNGQHkzrsu8VaHiqN-5HhTTc9-zVE5Q-VxrcjHELshf_cGAvOfcTWBZ8anKKGV', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-10 04:08:42', '2020-08-10 04:08:42'),
(119, 'Danish Qureshi', NULL, '8290322272', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"MOBILE\":\"8290322272\"}]', 'User', 'All', 'dshcwewnReWsXxNmOb96Tj:APA91bH1_brpvFtSSqEKFc1flhIV9n95sPfgHrjEVp6GaH7Yfcsv_rbPgVplCDhS4aLH_s6WgVW-TYQ3oW0x6zy_zyAOhlVLMm8-H1oBbQVNWunsj-cdTS3SKMkKQv4zUStXXSN9pvUX', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-10 04:13:47', '2020-08-10 08:19:42'),
(120, 'Ravindra', NULL, '7877941491', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'fnBX0j91SFe4j4Jkj0tTWL:APA91bHQvxt3-WS5Gew_5qaSPCoc69g5EyIpwLWCQXP1bNmEexwKlr3F80tF5dY8yMu05fNnR1bguY36taRTvs6JodsuUuG_UiOZMafoz9dhwqXdbLntHJRruxV_TYmtMAOdOl1SxPYA', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-10 04:16:48', '2020-08-10 04:16:48'),
(121, 'Rajat', NULL, '8233550723', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'dtBFYzlRTzSn9N1kqtxDh4:APA91bEOZo1dRqkhjV27gHPiCySj5fafhQWAiBanyXFnxJ1rbRX9JlLG5hoFZx_F9oxTFmUs6a54SFpCvXBywplhke36Ts_Zd_BUVlEbKxputQrqHNAJtLHWtlyTNTm81Ns_L4UJGFBI', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-10 05:11:07', '2020-08-10 05:11:07'),
(122, 'kaya', NULL, '8209511032', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'eK_J54-BRCCumbfBiC6gQR:APA91bHyUliAFWtvpB-HU0eZpjnmWPeoFnz0lHXdt6_Ev69hhGvaHlBMmYKmpqe_QyhucxNZpK-ZHxPMyUHHTcZdadUulRheMoiAt0lj69_G6hiABWnIjcoHYavdBrdeq7W-Et5OGNMq', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-10 05:50:12', '2020-08-10 05:50:12'),
(123, 'gaurav', NULL, '7877775278', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'cx7c18kbSRm0t_CEd2X10Q:APA91bE-RznqxYZfNYHMi7CjNZW5-_3v3n_6FpyHhpX2p-LP3-a_-lTOGezLAsjLZcUKVclj_4oHPNVxTvZJP2orDZKiYj9kWeDrEOTfMCPps7JnCI-kazecvqobAzTHPi0p3zeNUWXD', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-10 06:29:39', '2020-08-10 06:29:39'),
(124, 'Aadil Khan', NULL, '8278601720', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'eY0YrUdGReC7A8nsu18Nv_:APA91bGENZyo8r97RPr1cj1esQRd0vQgoHIaOcrHKfjOADNVaXo04rPbVdfM9Qz_oBvJh9e1rDb7aja8XzUesqPyP8Dxe2qn-IpFOoKM8dQPbISByxrj7xOfeN6CoMIwj1Fiqp32xqpR', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-10 08:27:12', '2020-08-10 08:27:12'),
(125, 'Fraud Sala', 'fraudsala@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"GOOGLE\":\"110891474697596114049\"}]', 'User', 'All', 'eyub5MX6SP2LD288iDJRb0:APA91bG7k_dTM1-wqIjTiiVIvnu9fVVVY7H_ekvb2uWCF1A-4ulWAlzOfrF5_zkJTDkFjbRPD8V7spPi70ZiwQMsHjkSRrggB93DX5MuY3hkcFjrl7gcJPBht7fXBumLV69nCcu1Ati9', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-11 06:04:19', '2020-08-11 06:04:30'),
(126, 'Danish Qureshi', 'danishqureshi8290@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"GOOGLE\":\"105345713799091612028\"}]', 'User', 'All', 'fDpSvgkaSyu4-AP6poXTem:APA91bGFHIfO0kDUcoQo5Bd3Hk8Sk50_7Ed153p9gD22CiWr5rhwwl7MxYPrECPHg0ilWvwy49Em8YKGRcG3HMNp9uNTaokqz1fXFyBOEgPgDMZf2HDYbUVzuw81bjF-rqhKUSL040JU', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-11 06:07:25', '2020-08-11 06:07:44'),
(127, 'Naresh Motwani', 'n.nareshmotwani@rediff.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'e4DrwqntQ0OOJHNOA0hcUf:APA91bFKBY73UoEAfo1e4VhcOnNbl0SjWGCet7l4fJTDEnpHyWkMhrcDckFBLwdqnNC4dqm-8Lx8fvjvO7s0nRWotRF0wEAAYqxynsx3KZN53IuweLD4CCe6Z1x24P11tEHn4rjV7mnk', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-11 10:15:11', '2020-08-11 10:15:11'),
(128, 'imran', NULL, '9549763598', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'e8o5zp_kQY-pPRXv_sGx33:APA91bHBmKRG3Joz6cQGg6kSKjY6QP7NQ7UVMDaGRHWWUzFkfcqmjlvTiBkyiRxqFjeylRXQOje9lKrd1Y6qbdEeoomNndDrSis46TM2bKIpkXvoqGSyXnjy45qkoiJOPq06tjvaPsBT', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-12 08:22:22', '2020-08-12 08:22:22'),
(129, 'Rahul Nayak', NULL, '9783502640', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'fgKgSFquQ-mnq3I3HXNKGB:APA91bFVYQvyfJ0IT4y9XzLclzZY1fawhpQiQ0Y1njy7LX82H19li6DR_Fo77WFeNjbb9ea2UsEif9RktxNNHPp8YOpesrYpj9mhte--nqeZrj7jeRF0H6Cd0e1mbqpFSc5P8pNjFhVS', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-12 08:42:51', '2020-08-12 08:42:51'),
(130, 'bhanu', NULL, '9309218860', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"MOBILE\":\"9309218860\"}]', 'User', 'All', 'ezy1iWCfTGW92cD0ET-ubx:APA91bGoQOBHtQYC94vAW1Q9nHbRTO74tb-xN8iDILkLzTs5Cty_1CKS1vnWgd5Iz-F5Lg_ppkEIV23b-gDxvGHKaLU_uqDutZhcqW9Y_C6h86s-U3DEVHhS9FC8h61wa9Shxk2FhDHb', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-13 04:14:53', '2020-08-17 04:16:43'),
(131, 'bj', NULL, '9414255876', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"MOBILE\":\"9414255876\"}]', 'User', 'All', 'd-QeHHFpTpeIJkErbZFe-e:APA91bHRXeIkC0Gxe6xSMm22UJTmK_zk9n5JNMzsRJY30594uVMsOpLAzpTiE8lDeLJlSH2Ep0Mq1hV42EcVGc7Ev-TVurR-gE5N6Xwh4F0o2Mza0Q3cbUz2i5nNE5FL-2bIHEI-wqF6', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-15 01:34:05', '2020-08-15 01:45:09'),
(132, 'CA Sunny Jethwani', 'danyjethwani@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, '[{\"GOOGLE\":\"100639285947518978854\"}]', 'User', 'All', 'cEwlhkvpRZGAXg0b-Y1FKG:APA91bFTO8_PL32OHylNuGBt6zY6ZFJUuGWbD8nAf_CQK_yZjsaXJmC6rSFOp_KoFwmzuR_Ll1yUuMzu6wmWSMxPSasSxv3kvPw-NMnJKX9Oohli303dPt4A8QfB7eJVBk8wxh8sKBPF', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-15 01:59:07', '2020-08-17 03:44:17'),
(133, 'home 2home', 'home2home159@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'cVIJADY3SdmTk7xu8M49Le:APA91bE_mdVG51nrAZDElsOGFYcQGTELBSuthzSJ_Fe7gCCimG_lBbKkmjj9C5QRxEhk1yewdGa9-9cP6W_RwVpulBqbAMgZdZmKFZHyjhykE4bLfOwzLGyWPiWHBTl5vqaDsWpeQnrH', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-15 09:43:26', '2020-08-15 09:43:26'),
(134, 'Deepanshu Yadav', NULL, '8882193340', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'cPQFgUzMQ9CRPV4s25-AHW:APA91bG0JLj7stAs4LFWvA1Bm-_Q2cRx8yi-O6angIsDkxaB703i8Xoo2aXTbmEftuDwbi2I6k2dhOtwlhQhVE6ywQeFcBVivNJpRpFjgMa6wjzxWuMPe707OZfmbJYtI_hQB1Ad6GTA', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-15 09:49:27', '2020-08-15 09:49:27'),
(135, 'Multiple Income Sources', '101incomesource@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'f6yyikcnQZO32PKVM8C4zd:APA91bHxNwQTgB5hp6BK39ybBFWNHx2DQX-KkiaigbCpvi96n59PQglnrDDR_sDNotk8U1wVv_TeyOM9dI_mydUhPuGrrko77ybZGVt_HWzWV8u2HS1vEGJXC2xYIawVRKMiWO74gzLp', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-16 20:14:30', '2020-08-16 20:17:19'),
(136, 'V Hype', 'vhypeindia@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'ezy1iWCfTGW92cD0ET-ubx:APA91bGoQOBHtQYC94vAW1Q9nHbRTO74tb-xN8iDILkLzTs5Cty_1CKS1vnWgd5Iz-F5Lg_ppkEIV23b-gDxvGHKaLU_uqDutZhcqW9Y_C6h86s-U3DEVHhS9FC8h61wa9Shxk2FhDHb', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-17 04:17:50', '2020-08-17 04:23:53'),
(137, 'vishal', NULL, '9780290007', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'cSdRm5SOS8-lqmhpryrC1_:APA91bEDKaCOk99absd6U8Mxpd7BPpTTuCUSCJH75wthSgX2H0rh5nfZGVqZbHmaV4hgzuQqMd5WFG6qGyHP2awVIS3Ph_FNqRG_AuL-01g9VNzHRw6Y4CgxjfHevi1hd1qI3IxZr_C_', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-17 08:25:40', '2020-08-17 08:25:40'),
(138, 'Partner Sir', 'the.innovaters.jaipur@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'fkB5RE2aQw6vh6M0mhCtzw:APA91bFrxeCBh6rlxjoQ2gfTtlcrP6zPqNa2-iWYkGhuHAWYw5dg4gu07zernRJZRV1Q3qNqCex0yAECsZQWY3fEDk4Lkkeih-8NzcEj_Guq1NLdf7Jevsxre-vQL2obrFTw_7qDLbvQ', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-17 09:28:10', '2020-08-17 09:38:01'),
(139, 'vipin kachhi', NULL, '9340360492', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'fhCxpvrbQDWYVUslwGWbvJ:APA91bEJEIfxieLS-3EvXR-PZwAzoCnuK9Xu4nZs_AkptpiysZItnIo_jeUkMkUDH_iGI490R8pWK8rW1A1O8tayT8N0rG-gxsol7miw-BpHWGgMJe1hjbjl_cCdmH4ivQS5MqRHJwIJ', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-17 09:36:02', '2020-08-17 09:36:02'),
(140, 'RAJ KUMAR PRABHAKAR', 'raj812799rajkumar22@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'dqCHRza-QW2ibwh6ojBXQR:APA91bFFMNyY0x_zzuv_jS90W2uujov3Pu_EKIVOSjc4posTs2eNcHJ7Xg2JclaAIoRucY2w3NUsKRy2HKVbu7cwaHukbecFohbW7HYJKgkCnpxXfsc3VjpjcCCM_6dA9Ee3p8TarI98', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-18 04:16:25', '2020-08-18 04:16:25'),
(141, 'Raj Bali', 'rajbali8909890@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'c7vCyTLbQfCww3jMjRvh8d:APA91bGbAhUQ-Bsxa4zu6nD7qbeNl37uepR_0apriPHb8rPsugqbcnN0ue_BCS8aO6R-BdKNAKGPK2LylLhIFxQT4cXf1LaTiCjLnmY8omffSFrjYBol4-K7PEuuOa_Nj7FVeBfns_CR', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-18 10:54:19', '2020-08-18 10:54:19'),
(142, 'khanadnan', NULL, '8268854117', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'e712e8sXTbyvqUHKTK8eV1:APA91bFr6nHYtxc8AhxQKvAzAggGk-zPmjnjl7cksuTk6bZXGMQRTKLpxUplB5grqESSNQ_vGknxHiSmdqShfJYEIYAB22e6LlVBZsfgs30AW-q6CKXUzYbR79yiS86z9pW2bQBZrEKi', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-18 13:41:15', '2020-08-18 13:41:15'),
(143, 'M DURGESH', NULL, '9299955517', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'cQ8A5uZ1QUyRGSebuO8oDV:APA91bEdVa1g6nScglC2g2leCwo_S8vuA6nag6wimjTeWUCtqux1NAUkMSI-DzygcWQt2pX5k1fTwJnd-TFoa-PtFY_zHDNqYEEVNIYNuV2ckngF72mhvLMAcDovYwsQPLR7ti1-wg3D', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-18 19:41:45', '2020-08-18 19:41:45'),
(144, 'Avinash Rathariya', 'avinashrathariya@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'dp1O1EYNRoKp09aVuRhjtZ:APA91bHNZqkOab5uLKSNlogFpz4Ix4NYsoRBV9XSnM25H2mRB0zRf9-gUUHDFMS1D1RDr4xhfb93x6haIvE-n-vFkikSgB3nX4i7T0wpEmP0Jv7HeLzps4WfrMNlKqHQYy-JVZ-ecqsm', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-19 07:53:54', '2020-08-19 07:53:54'),
(145, 'RDX PUBG', 'skumarameer@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'cXsXv83cRt2nwuKrcKKqYL:APA91bEIeIUI1fhzZ7DAwRl71jt76evLv-Ujn06tJ9OEjzAxl3Nfhcvc-GpY4vj50mB2Ffd7d7csDvL7n9tJiEkLfDoIjl3gbC_g_YoNq30gtT61nQOUNTiRWOR_h-76s5EHNey_voI-', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-19 15:26:22', '2020-08-19 15:26:22'),
(146, 'Jagadish Deshmukh', NULL, '9022400956', NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, 'User', 'All', 'd8oOZQAsTnyBLLxz4rgJpV:APA91bHATlTApSU3DhHxujFIlmW7e5FY8_ScQpN5j_ouyRfalDGDCYNEY4ecdI-4HhvQiCJw0qPrQs80yNa5k15gfZSbzM2QW4E9jhJkdIkiZ53_ya8BHH3ELXbCBcBLwxY8XxP5B0ki', 'Customer', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, '2020-08-19 20:18:30', '2020-08-19 20:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `video_banner_ads`
--

CREATE TABLE `video_banner_ads` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `type` enum('video','url') DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `channel_id` varchar(255) DEFAULT NULL,
  `playlist` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `title`, `thumbnail`, `channel_id`, `playlist`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Salary', '1590744707.jpeg', 'tewtdsfdsfdsfds', NULL, 'Active', '2020-05-29 09:29:26', '2020-05-29 09:31:47'),
(5, 'Salary', '1591511713.jpeg', 'tewtdsfdsfdsfds', NULL, 'Active', '2020-06-07 06:35:13', '2020-06-07 06:35:13'),
(6, 'Salary', '1591585970.jpeg', 'tewtdsfdsfdsfds', NULL, 'Active', '2020-06-08 03:12:50', '2020-06-08 03:12:50'),
(7, 'Salary', '1591587119.jpeg', 'tewt', NULL, 'Active', '2020-06-08 03:31:59', '2020-06-08 03:31:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_packages`
--
ALTER TABLE `apply_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_ads`
--
ALTER TABLE `banner_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_cards`
--
ALTER TABLE `digital_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `qr_marketings`
--
ALTER TABLE `qr_marketings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qr_packages`
--
ALTER TABLE `qr_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `q_r_apply_packages`
--
ALTER TABLE `q_r_apply_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `splshscreens`
--
ALTER TABLE `splshscreens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_retailers`
--
ALTER TABLE `top_retailers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `mobile_number` (`mobile_number`);

--
-- Indexes for table `video_banner_ads`
--
ALTER TABLE `video_banner_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_packages`
--
ALTER TABLE `apply_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `banner_ads`
--
ALTER TABLE `banner_ads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `digital_cards`
--
ALTER TABLE `digital_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `qr_marketings`
--
ALTER TABLE `qr_marketings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `qr_packages`
--
ALTER TABLE `qr_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `q_r_apply_packages`
--
ALTER TABLE `q_r_apply_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `splshscreens`
--
ALTER TABLE `splshscreens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `top_retailers`
--
ALTER TABLE `top_retailers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `video_banner_ads`
--
ALTER TABLE `video_banner_ads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
