-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2023 at 12:18 AM
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
(13, 'مينى ميكس بوكس', 'مينى-ميكس-بوكس', '2 قطعه دجاج+2 استربس+بطاطس 2خبز + كلوسلو + توميه', 99.00, NULL, NULL, 'images/product/13/1695678910_YcyZiZeqeDyG4x4_.webp', 'images/product/13/1695678911_OnD885g3WgsApt8_.webp', 1, 0, 0, '2023-09-25 17:21:31', '2023-09-25 18:55:11'),
(14, 'ميكس بوكس', 'ميكس-بوكس', '5 قطع استربس+4 قطع دجاج+بطاطس 2 كلوسلو + 2توميه + 5 خبز', 215.00, NULL, NULL, 'images/product/14/1695679084_MiT1pCbFrSHFm7R_.webp', 'images/product/14/1695679085_hINhbOy5pwsO1R2_.webp', 1, 0, 0, '2023-09-25 17:22:12', '2023-09-25 18:58:05'),
(15, 'فاميلي استريس', 'فاميلي-استريس', '12 قطع استربس +2بطاطس+2 كلوسلو 2توميه+5 خبز', 190.00, NULL, NULL, 'images/product/15/1695679132_xDN0rvrZ9sf8N4Z_.webp', 'images/product/15/1695679133_q5DEqkY8e2ns6Lt_.webp', 1, 0, 0, '2023-09-25 17:22:55', '2023-09-25 18:58:53'),
(16, 'الكومندوز', 'عرض-الكومندوز', '4 قطع دجاج - 4 قطع استربس - 6 قطع خبز - 2 ارز - 2 بطاطس - 2 كلوسلو - 2 توميه - 1 سندوتش فاهيتا - 1 لتر بيبسي', 350.00, NULL, NULL, 'images/product/16/1695678053_sguaC2d7Wwn3q0Y_.webp', 'images/product/16/1695678053_OozfMWywcXIQ43U_.webp', 1, 0, 0, '2023-09-25 18:40:52', '2023-09-25 18:48:23'),
(17, 'سوبر ميجا', 'سوبر-ميجا', '8 قطع دجاج - 8 قطع استربس - 8 قطع خبز - 2 ارز - 2 بطاطس- 2 كلوسلو - 2 توميه - 2 سندوتش جريلو راوند - 1 لتر بيسبي', 555.00, NULL, NULL, 'images/product/17/1695678468_6P5t5GOcksCwJo3_.webp', 'images/product/17/1695678468_FQrYoJRT96Z3fX9_.webp', 1, 0, 0, '2023-09-25 18:47:48', '2023-09-25 18:47:49'),
(18, 'أكسترا فاير', 'أكسترا-فاير', '1 مطافي - قطعه دجاج اكسترا سبايسي - أو قطعتين استربس اكسترا سبايسي- بطاطس هلابينو - بيبسي - صوص خاص مميز', 129.00, NULL, NULL, 'images/product/18/1695678606_pEQYe4OBta0E5Tv_.webp', 'images/product/18/1695678607_SwNq4TpsomWOXEj_.webp', 1, 0, 0, '2023-09-25 18:50:06', '2023-09-25 18:50:07'),
(19, 'عرض التوينز', 'عرض-التوينز', NULL, 129.00, NULL, NULL, 'images/product/19/1695678702_qZXLuLb5GuhdYu8_.webp', 'images/product/19/1695678703_Cvky0ZRDnw73Vlb_.webp', 1, 0, 0, '2023-09-25 18:51:42', '2023-09-25 18:51:43'),
(20, 'فامليى ميل', 'فامليى-ميل', '5 قطع استربس+4 قطع دجاج+بطاطس 2 كلوسلو + 2توميه + 5 خبز', 300.00, NULL, NULL, 'images/product/20/1695679218_aiQZSg6NB0h76CA_.webp', 'images/product/20/1695679220_d75563zsMsSwY3a_.webp', 1, 0, 0, '2023-09-25 19:00:18', '2023-09-25 19:00:53'),
(21, 'ريــزو', 'ريــزو', NULL, 45.00, NULL, NULL, 'images/product/21/1695679581_dfWqtsWcGObZ28d_.webp', 'images/product/21/1695679581_XEk4c4fO8iZLzHh_.webp', 1, 0, 0, '2023-09-25 19:05:48', '2023-09-25 19:06:21'),
(22, 'كلوسلو', 'كلوسلو', NULL, 15.00, NULL, NULL, 'images/product/22/1695679676_8GRjgZpoJOKIZX3_.webp', 'images/product/22/1695679677_euZqO0wehbqK6z4_.webp', 1, 0, 0, '2023-09-25 19:07:56', '2023-09-25 19:07:57'),
(23, 'توميه', 'توميه', NULL, 15.00, NULL, NULL, 'images/product/23/1695679700_YRQVIXA2GlMzqs4_.webp', 'images/product/23/1695679701_aM2AkU1uxgU6FOI_.webp', 1, 0, 0, '2023-09-25 19:08:20', '2023-09-25 19:08:21'),
(24, 'بطاطس', 'بطاطس', NULL, 55.00, NULL, NULL, 'images/product/24/1695679728_UCH4bwsJE3eC7vs_.webp', 'images/product/24/1695679728_kKjyJNqfb5LmYRV_.webp', 1, 0, 0, '2023-09-25 19:08:48', '2023-09-25 19:08:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
