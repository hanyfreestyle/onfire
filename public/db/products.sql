-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 10:13 PM
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
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `des`, `price`, `discount_price`, `qty`, `photo`, `photo_thum_1`, `is_active`, `is_archived`, `postion`, `created_at`, `updated_at`) VALUES
(1, 'كلاسيك برجر', 'كلاسيك-برجر', 'قطعه البرجر المميزه مع الخس والطماطم والبصل والخيار المخلل وصوص المايونيز كلاسيكي', 95.00, NULL, NULL, 'images/product/1/1695672639_3hoO2ciCrgeomXb_.webp', 'images/product/1/1695672639_Fbi5lE5ObA3Cc47_.webp', 1, 0, 0, '2023-09-25 17:04:38', '2023-09-25 17:10:40'),
(2, 'هلابينو برجر', 'هلابينو-برجر', 'قطعه البرجر المميزه مع الهلابينو الحار والبصل والخيار المخلل والصوص الحار المميز', 100.00, NULL, NULL, 'images/product/2/1695672654_yalyQ1kTP0fjeF0_.webp', 'images/product/2/1695672654_DeNfpwBOZPmWtM1_.webp', 1, 0, 0, '2023-09-25 17:05:11', '2023-09-25 17:10:54'),
(3, 'باربيكيو برجر', 'باربيكيو-برجر', 'قطعه البرجر المميزه مع الهلابينو الحار والبصل والخيار المخلل والصوص الحار المميز', 100.00, NULL, NULL, 'images/product/3/1695672668_s4tXblnBjgDmvMp_.webp', 'images/product/3/1695672668_4KbJlpV8R1wsHFt_.webp', 1, 0, 0, '2023-09-25 17:05:44', '2023-09-25 17:11:08'),
(4, 'مشروم برجر', 'مشروم-برجر', 'قطعه البرجر المميزه مع المشروم السوتيه والبصل المشوي وصوص الباربيكيو المميز', 105.00, NULL, NULL, 'images/product/4/1695672678_KyWYTjDvMHRAbFh_.webp', 'images/product/4/1695672679_L2RACtO9VlzRyx8_.webp', 1, 0, 0, '2023-09-25 17:06:32', '2023-09-25 17:11:19'),
(5, 'ستيك برجر', 'ستيك-برجر', 'قطعه البرجر المشوي مع ستيك اللحم المميز والبصل والطماطم والخس والصوص بالخاص المميز', 105.00, NULL, NULL, 'images/product/5/1695672707_hJg1zzJhwjdo463_.webp', 'images/product/5/1695672707_l1aVNv32prBxVOC_.webp', 1, 0, 0, '2023-09-25 17:07:08', '2023-09-25 17:11:47'),
(6, 'بيكون برجر', 'بيكون-برجر', 'قطعه البرجر المميزه والبيكون المشوي الرائع والخس والبصل والصوص الخاص المميز', 105.00, NULL, NULL, 'images/product/6/1695672736_qSKvJv2mm5KWhRG_.webp', 'images/product/6/1695672736_lj7x4ftzqsU5oUs_.webp', 1, 0, 0, '2023-09-25 17:07:52', '2023-09-25 17:12:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
