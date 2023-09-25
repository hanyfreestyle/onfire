-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2023 at 12:17 AM
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
-- Database: `onfire`
--

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `des`, `photo`, `photo_thum_1`, `is_active`, `postion`, `created_at`, `updated_at`) VALUES
(1, NULL, 'سندوتشات الفراخ', 'السندوتشات', 'السندوتشات', 'images/category/1/1695671643_Eg6Kzkc9LRBH4XS_.webp', 'images/category/1/1695671643_5POQFRWMzwB93HA_.webp', 1, 2, '2023-09-25 15:59:13', '2023-09-25 17:01:56'),
(2, NULL, 'فرايد تشيكن', 'فرايد-تشيكن', 'فرايد تشيكن', 'images/category/2/1695671585_579hD3ZXXRmNEwC_.webp', 'images/category/2/1695671586_6Q6tKOsI3K1ZxXe_.webp', 1, 3, '2023-09-25 15:59:34', '2023-09-25 17:02:12'),
(3, NULL, 'مقبلات', 'مقبلات', 'مقبلات', 'images/category/3/1695671681_cYyOk1bBLslYwza_.webp', 'images/category/3/1695671682_K1Mk7uEIBADlSAj_.webp', 1, 4, '2023-09-25 15:59:48', '2023-09-25 17:02:12'),
(4, NULL, 'العروض', 'العروض', NULL, 'images/category/4/1695671833_PkmOQ2YgMltCya3_.webp', 'images/category/4/1695671833_QckF9wLpnG8du8D_.webp', 1, 5, '2023-09-25 15:59:54', '2023-09-25 17:02:12'),
(5, NULL, 'برجر', 'برجر', 'برجر', 'images/category/5/1695672206_ixJyB4H5y3WuVlT_.webp', 'images/category/5/1695672206_5ByYxQKknAuIXDs_.webp', 1, 1, '2023-09-25 17:01:41', '2023-09-25 17:03:26');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
