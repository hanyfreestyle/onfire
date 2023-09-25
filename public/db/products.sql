-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 10:24 PM
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
(6, 'بيكون برجر', 'بيكون-برجر', 'قطعه البرجر المميزه والبيكون المشوي الرائع والخس والبصل والصوص الخاص المميز', 105.00, NULL, NULL, 'images/product/6/1695672736_qSKvJv2mm5KWhRG_.webp', 'images/product/6/1695672736_lj7x4ftzqsU5oUs_.webp', 1, 0, 0, '2023-09-25 17:07:52', '2023-09-25 17:12:16'),
(7, 'زنجر بسطرمه', 'زنجر-بسطرمه', 'دجاج الزنجر المميز مع شرائح البسطرمه المتبلة وحلقات البصل المقرمشة والخس والصوص بالمذاق الشرقى', 100.00, NULL, NULL, 'images/product/7/1695672903_QrP19NUoLlAA7We_.webp', 'images/product/7/1695672903_E9rr73FrmgKcgfz_.webp', 1, 0, 0, '2023-09-25 17:15:03', '2023-09-25 17:15:03'),
(8, 'زنجر تركى', 'زنجر-تركى', 'دجاج الزنجر المقرمش مع شرائح الرومي المدخن والخس الطازج و الصوص المميز', 100.00, NULL, NULL, 'images/product/8/1695672938_mMkedk2Qn1DqAq1_.webp', 'images/product/8/1695672938_ExkguKoFv9gO7lh_.webp', 1, 0, 0, '2023-09-25 17:15:16', '2023-09-25 17:15:38'),
(9, 'زنجــر', 'زنجــر', 'دجاج الزنجر المقرمش مع الخس الطازج والصوص الكريمى الرائع', 100.00, NULL, NULL, 'images/product/9/1695672980_Zb2zWOUmbCw4KWP_.webp', 'images/product/9/1695672981_HBZyTNmdiaGtLA0_.webp', 1, 0, 0, '2023-09-25 17:16:20', '2023-09-25 17:16:21'),
(10, 'تشيكن مشروم', 'تشيكن-مشروم', 'دجاج مقلي مقرمش مع المشروم السوتيه المطعم بالبصل وصوص الباربيكيو', 100.00, NULL, NULL, 'images/product/10/1695673018_Xr96lDJk05GgdzX_.webp', 'images/product/10/1695673019_mBLmWcwZtiECWJy_.webp', 1, 0, 0, '2023-09-25 17:16:58', '2023-09-25 17:16:59'),
(11, 'تشيزي موزرايلا', 'تشيزي-موزرايلا', 'دجاج مقلي مقرمش مع اصابع الموزرايلا المقرمشه مع الخس والطماطم والصوص الكريمي الرائع', 100.00, NULL, NULL, 'images/product/11/1695673049_3tY7aHHKDKeeDGM_.webp', 'images/product/11/1695673050_AAautBzZxtr0aEn_.webp', 1, 0, 0, '2023-09-25 17:17:29', '2023-09-25 17:17:50'),
(12, 'بيج بيكون', 'بيج-بيكون', 'دجاج مقلي مقرمش مع البيكون البقري المميز والخس والطماطم والصوص المميز', 100.00, NULL, NULL, 'images/product/12/1695673114_Rj3DkjIO4pKAsuG_.webp', 'images/product/12/1695673114_b4HV3ITPDUWBZ6l_.webp', 1, 0, 0, '2023-09-25 17:18:34', '2023-09-25 17:18:34'),
(13, 'مينى ميكس بوكس', 'مينى-ميكس-بوكس', '2 قطعه دجاج+2 استربس+بطاطس 2خبز + كلوسلو + توميه', 99.00, NULL, NULL, 'images/product/13/1695673291_a9DzRh6skEhAwyR_.webp', 'images/product/13/1695673291_8K0GcFibSBXElUe_.webp', 1, 0, 0, '2023-09-25 17:21:31', '2023-09-25 17:21:31'),
(14, 'ميكس بوكس', 'ميكس-بوكس', '5 قطع استربس+4 قطع دجاج+بطاطس 2 كلوسلو + 2توميه + 5 خبز', 215.00, NULL, NULL, 'images/product/14/1695673332_8HJvjn0pu4AL5nT_.webp', 'images/product/14/1695673333_2uy89GRw6E6JfVO_.webp', 1, 0, 0, '2023-09-25 17:22:12', '2023-09-25 17:22:13'),
(15, 'فاميلي استريس', 'فاميلي-استريس', '12 قطع استربس +2بطاطس+2 كلوسلو 2توميه+5 خبز', 190.00, NULL, NULL, 'images/product/15/1695673375_0P7U3XgQHrJEqUx_.webp', 'images/product/15/1695673375_6N0CCEBqYGhtdcP_.webp', 1, 0, 0, '2023-09-25 17:22:55', '2023-09-25 17:22:55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
