-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 09:03 PM
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
(1, NULL, 'السندوتشات', 'السندوتشات', 'السندوتشات', NULL, NULL, 1, 2, '2023-09-25 15:59:13', '2023-09-25 16:00:02'),
(2, NULL, 'فرايد تشيكن', 'فرايد-تشيكن', 'فرايد تشيكن', NULL, NULL, 1, 1, '2023-09-25 15:59:34', '2023-09-25 16:00:02'),
(3, NULL, 'مقبلات', 'مقبلات', 'مقبلات', NULL, NULL, 1, 3, '2023-09-25 15:59:48', '2023-09-25 16:00:02'),
(4, NULL, 'العروض', 'العروض', NULL, NULL, NULL, 1, 4, '2023-09-25 15:59:54', '2023-09-25 16:00:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
