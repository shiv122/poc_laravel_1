-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2022 at 04:20 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poc_dashboard`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_06_130955_create_spots_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL,
  `is_occupied` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `modal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chassis_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parked_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parked_at` datetime DEFAULT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_x` int(11) NOT NULL,
  `pos_y` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spots`
--

INSERT INTO `spots` (`id`, `position`, `is_occupied`, `modal`, `chassis_no`, `parked_by`, `parked_at`, `for`, `pos_x`, `pos_y`, `created_at`, `updated_at`) VALUES
(1, 1, '0', '', '', '', NULL, 'road', 0, 0, NULL, NULL),
(2, 2, '0', '', '', '', NULL, 'road', 1, 0, NULL, NULL),
(3, 3, '0', '', '', '', NULL, 'road', 2, 0, NULL, NULL),
(4, 4, '0', '', '', '', NULL, 'road', 3, 0, NULL, NULL),
(5, 5, '0', '', '', '', NULL, 'road', 4, 0, NULL, NULL),
(6, 6, '0', '', '', '', NULL, 'road', 5, 0, NULL, NULL),
(7, 7, '0', '', '', '', NULL, 'road', 6, 0, NULL, NULL),
(8, 8, '0', '', '', '', NULL, 'road', 7, 0, NULL, NULL),
(9, 9, '0', '', '', '', NULL, 'road', 8, 0, NULL, NULL),
(10, 10, '0', '', '', '', NULL, 'road', 9, 0, NULL, NULL),
(11, 11, '0', '', '', '', NULL, 'road', 10, 0, NULL, NULL),
(12, 12, '0', '', '', '', NULL, 'road', 11, 0, NULL, NULL),
(13, 13, '0', '', '', '', NULL, 'road', 12, 0, NULL, NULL),
(14, 14, '0', '', '', '', NULL, 'road', 13, 0, NULL, NULL),
(15, 15, '0', '', '', '', NULL, 'road', 14, 0, NULL, NULL),
(16, 16, '0', '', '', '', NULL, 'road', 15, 0, NULL, NULL),
(17, 17, '0', '', '', '', NULL, 'road', 16, 0, NULL, NULL),
(18, 18, '0', '', '', '', NULL, 'road', 17, 0, NULL, NULL),
(19, 19, '0', '', '', '', NULL, 'road', 18, 0, NULL, NULL),
(20, 20, '0', '', '', '', NULL, 'road', 19, 0, NULL, NULL),
(21, 21, '0', '', '', '', NULL, 'road', 20, 0, NULL, NULL),
(22, 22, '0', '', '', '', NULL, 'road', 21, 0, NULL, NULL),
(23, 23, '0', '', '', '', NULL, 'road', 22, 0, NULL, NULL),
(24, 24, '0', '', '', '', NULL, 'road', 0, 1, NULL, NULL),
(25, 25, '1', 'Mahindra XUV700', '1C4XXXXXXXX521742', 'Darshan', '2022-03-29 18:15:59', 'parking', 1, 1, NULL, NULL),
(26, 26, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Ninad', '2022-03-16 11:26:29', 'parking', 2, 1, NULL, '2022-04-06 10:29:18'),
(27, 27, '0', 'Mahindra XUV300', '1N6XXXXXXXX303918', 'Ninad', '2022-03-19 19:36:22', 'parking', 3, 1, NULL, NULL),
(28, 28, '1', 'Mahindra XUV700', '1C4XXXXXXXX521742', 'Shivesh', '2022-03-10 17:45:48', 'parking', 4, 1, NULL, NULL),
(29, 29, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Yash', '2022-03-12 11:32:18', 'parking', 5, 1, NULL, NULL),
(30, 30, '1', 'Mahindra Bolero', '1N6XXXXXXXX303918', 'Shivesh', '2022-03-24 16:23:18', 'parking', 6, 1, NULL, NULL),
(31, 31, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Ninad', '2022-04-07 00:29:17', 'parking', 7, 1, NULL, NULL),
(32, 32, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Yash', '2022-04-14 07:35:09', 'parking', 8, 1, NULL, NULL),
(33, 33, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Ninad', '2022-04-14 01:35:09', 'parking', 9, 1, NULL, NULL),
(34, 34, '1', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Ketan', '2022-04-24 19:51:44', 'parking', 10, 1, NULL, NULL),
(35, 35, '0', '', '', '', NULL, 'road', 11, 1, NULL, NULL),
(36, 36, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Yash', '2022-03-09 04:17:17', 'parking', 12, 1, NULL, NULL),
(37, 37, '0', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Darshan', '2022-04-09 23:26:08', 'parking', 13, 1, NULL, NULL),
(38, 38, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Rahul', '2022-03-27 17:59:01', 'parking', 14, 1, NULL, NULL),
(39, 39, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Yash', '2022-04-11 21:02:53', 'parking', 15, 1, NULL, NULL),
(40, 40, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Ninad', '2022-05-05 21:02:42', 'parking', 16, 1, NULL, NULL),
(41, 41, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Rahul', '2022-04-23 23:47:45', 'parking', 17, 1, NULL, NULL),
(42, 42, '1', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Shivesh', '2022-03-07 22:57:23', 'parking', 18, 1, NULL, NULL),
(43, 43, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Yash', '2022-03-25 22:47:56', 'parking', 19, 1, NULL, NULL),
(44, 44, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Ninad', '2022-03-21 19:03:24', 'parking', 20, 1, NULL, NULL),
(45, 45, '1', 'Mahindra XUV300', '1N6XXXXXXXX303918', 'Ketan', '2022-04-08 20:22:17', 'parking', 21, 1, NULL, NULL),
(46, 46, '0', '', '', '', NULL, 'road', 22, 1, NULL, NULL),
(47, 47, '0', '', '', '', NULL, 'road', 0, 2, NULL, NULL),
(48, 48, '1', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Yash', '2022-03-23 04:16:51', 'parking', 1, 2, NULL, NULL),
(49, 49, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Ketan', '2022-03-24 22:22:22', 'parking', 2, 2, NULL, NULL),
(50, 50, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Darshan', '2022-04-02 20:26:54', 'parking', 3, 2, NULL, NULL),
(51, 51, '1', 'Mahindra XUV300 Electric', '1N6XXXXXXXX303918', 'Ketan', '2022-04-27 13:04:58', 'parking', 4, 2, NULL, NULL),
(52, 52, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Yash', '2022-03-30 10:05:47', 'parking', 5, 2, NULL, NULL),
(53, 53, '1', 'Mahindra XUV300 Electric', '1N6XXXXXXXX303918', 'Rahul', '2022-04-30 12:52:28', 'parking', 6, 2, NULL, NULL),
(54, 54, '1', 'Mahindra Bolero', '1N6XXXXXXXX303918', 'Darshan', '2022-05-02 18:28:07', 'parking', 7, 2, NULL, NULL),
(55, 55, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Shivesh', '2022-03-21 00:22:08', 'parking', 8, 2, NULL, NULL),
(56, 56, '1', 'Mahindra XUV300', '1N6XXXXXXXX303918', 'Ninad', '2022-03-20 02:52:20', 'parking', 9, 2, NULL, NULL),
(57, 57, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Rahul', '2022-04-11 23:06:23', 'parking', 10, 2, NULL, NULL),
(58, 58, '0', '', '', '', NULL, 'road', 11, 2, NULL, NULL),
(59, 59, '1', 'Mahindra XUV700', '1C4XXXXXXXX521742', 'Darshan', '2022-05-01 02:38:33', 'parking', 12, 2, NULL, NULL),
(60, 60, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Darshan', '2022-04-07 17:12:58', 'parking', 13, 2, NULL, NULL),
(61, 61, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Rahul', '2022-03-12 09:45:09', 'parking', 14, 2, NULL, NULL),
(62, 62, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Ketan', '2022-04-28 04:22:55', 'parking', 15, 2, NULL, NULL),
(63, 63, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Rahul', '2022-03-08 18:24:50', 'parking', 16, 2, NULL, NULL),
(64, 64, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Ninad', '2022-04-12 03:33:25', 'parking', 17, 2, NULL, NULL),
(65, 65, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Rahul', '2022-03-26 23:55:59', 'parking', 18, 2, NULL, NULL),
(66, 66, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Shivesh', '2022-04-26 14:44:18', 'parking', 19, 2, NULL, NULL),
(67, 67, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Rahul', '2022-04-27 12:28:00', 'parking', 20, 2, NULL, NULL),
(68, 68, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Rahul', '2022-04-29 20:39:10', 'parking', 21, 2, NULL, NULL),
(69, 69, '0', '', '', '', NULL, 'road', 22, 2, NULL, NULL),
(70, 70, '0', '', '', '', NULL, 'road', 0, 3, NULL, NULL),
(71, 71, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Rahul', '2022-05-05 03:18:07', 'parking', 1, 3, NULL, NULL),
(72, 72, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Ninad', '2022-03-28 07:55:47', 'parking', 2, 3, NULL, NULL),
(73, 73, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Ninad', '2022-04-14 11:22:31', 'parking', 3, 3, NULL, NULL),
(74, 74, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Rahul', '2022-05-02 17:54:48', 'parking', 4, 3, NULL, NULL),
(75, 75, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Yash', '2022-05-04 15:34:18', 'parking', 5, 3, NULL, NULL),
(76, 76, '1', 'Mahindra XUV300 Electric', '1N6XXXXXXXX303918', 'Ninad', '2022-03-28 03:45:00', 'parking', 6, 3, NULL, NULL),
(77, 77, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Ketan', '2022-03-14 23:37:43', 'parking', 7, 3, NULL, NULL),
(78, 78, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Darshan', '2022-03-29 14:23:42', 'parking', 8, 3, NULL, NULL),
(79, 79, '1', 'Mahindra XUV300', '1N6XXXXXXXX303918', 'Yash', '2022-04-01 01:15:45', 'parking', 9, 3, NULL, NULL),
(80, 80, '1', 'Mahindra XUV700', '1C4XXXXXXXX521742', 'Ketan', '2022-04-25 07:28:59', 'parking', 10, 3, NULL, NULL),
(81, 81, '0', '', '', '', NULL, 'road', 11, 3, NULL, NULL),
(82, 82, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Darshan', '2022-04-04 02:35:55', 'parking', 12, 3, NULL, NULL),
(83, 83, '1', 'Mahindra XUV300 Electric', '1N6XXXXXXXX303918', 'Rahul', '2022-04-28 13:34:41', 'parking', 13, 3, NULL, NULL),
(84, 84, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Darshan', '2022-04-01 22:14:53', 'parking', 14, 3, NULL, NULL),
(85, 85, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Ketan', '2022-03-19 16:27:33', 'parking', 15, 3, NULL, NULL),
(86, 86, '1', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Rahul', '2022-03-25 10:48:40', 'parking', 16, 3, NULL, NULL),
(87, 87, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Rahul', '2022-03-31 04:24:57', 'parking', 17, 3, NULL, NULL),
(88, 88, '1', 'Mahindra Bolero', '1N6XXXXXXXX303918', 'Shivesh', '2022-04-13 17:26:08', 'parking', 18, 3, NULL, NULL),
(89, 89, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Ketan', '2022-04-29 06:45:17', 'parking', 19, 3, NULL, NULL),
(90, 90, '1', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Ninad', '2022-04-27 06:53:42', 'parking', 20, 3, NULL, NULL),
(91, 91, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Rahul', '2022-03-14 04:57:06', 'parking', 21, 3, NULL, NULL),
(92, 92, '0', '', '', '', NULL, 'road', 22, 3, NULL, NULL),
(93, 93, '0', '', '', '', NULL, 'road', 0, 4, NULL, NULL),
(94, 94, '0', '', '', '', NULL, 'road', 1, 4, NULL, NULL),
(95, 95, '0', '', '', '', NULL, 'road', 2, 4, NULL, NULL),
(96, 96, '0', '', '', '', NULL, 'road', 3, 4, NULL, NULL),
(97, 97, '0', '', '', '', NULL, 'road', 4, 4, NULL, NULL),
(98, 98, '0', '', '', '', NULL, 'road', 5, 4, NULL, NULL),
(99, 99, '0', '', '', '', NULL, 'road', 6, 4, NULL, NULL),
(100, 100, '0', '', '', '', NULL, 'road', 7, 4, NULL, NULL),
(101, 101, '0', '', '', '', NULL, 'road', 8, 4, NULL, NULL),
(102, 102, '0', '', '', '', NULL, 'road', 9, 4, NULL, NULL),
(103, 103, '0', '', '', '', NULL, 'road', 10, 4, NULL, NULL),
(104, 104, '0', '', '', '', NULL, 'road', 11, 4, NULL, NULL),
(105, 105, '0', '', '', '', NULL, 'road', 12, 4, NULL, NULL),
(106, 106, '0', '', '', '', NULL, 'road', 13, 4, NULL, NULL),
(107, 107, '0', '', '', '', NULL, 'road', 14, 4, NULL, NULL),
(108, 108, '0', '', '', '', NULL, 'road', 15, 4, NULL, NULL),
(109, 109, '0', '', '', '', NULL, 'road', 16, 4, NULL, NULL),
(110, 110, '0', '', '', '', NULL, 'road', 17, 4, NULL, NULL),
(111, 111, '0', '', '', '', NULL, 'road', 18, 4, NULL, NULL),
(112, 112, '0', '', '', '', NULL, 'road', 19, 4, NULL, NULL),
(113, 113, '0', '', '', '', NULL, 'road', 20, 4, NULL, NULL),
(114, 114, '0', '', '', '', NULL, 'road', 21, 4, NULL, NULL),
(115, 115, '0', '', '', '', NULL, 'road', 22, 4, NULL, NULL),
(116, 116, '0', '', '', '', NULL, 'road', 0, 5, NULL, NULL),
(117, 117, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Darshan', '2022-03-11 01:04:15', 'parking', 1, 5, NULL, NULL),
(118, 118, '0', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Shivesh', '2022-03-16 01:45:59', 'parking', 2, 5, NULL, NULL),
(119, 119, '1', 'Mahindra XUV300 Electric', '1N6XXXXXXXX303918', 'Yash', '2022-04-08 10:04:20', 'parking', 3, 5, NULL, NULL),
(120, 120, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Rahul', '2022-04-01 06:04:49', 'parking', 4, 5, NULL, NULL),
(121, 121, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Shivesh', '2022-04-14 07:24:17', 'parking', 5, 5, NULL, NULL),
(122, 122, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Yash', '2022-03-19 12:12:48', 'parking', 6, 5, NULL, NULL),
(123, 123, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Yash', '2022-04-23 19:04:35', 'parking', 7, 5, NULL, NULL),
(124, 124, '1', 'Mahindra XUV300 Electric', '1N6XXXXXXXX303918', 'Ninad', '2022-03-27 17:16:33', 'parking', 8, 5, NULL, '2022-04-06 10:34:14'),
(125, 125, '0', 'Mahindra Bolero', '1N6XXXXXXXX303918', 'Rahul', '2022-04-05 06:30:27', 'parking', 9, 5, NULL, NULL),
(126, 126, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Shivesh', '2022-04-18 16:58:00', 'parking', 10, 5, NULL, NULL),
(127, 127, '0', '', '', '', NULL, 'road', 11, 5, NULL, NULL),
(128, 128, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Ninad', '2022-04-08 23:57:40', 'parking', 12, 5, NULL, NULL),
(129, 129, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Yash', '2022-04-29 19:38:55', 'parking', 13, 5, NULL, NULL),
(130, 130, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Darshan', '2022-04-13 19:57:57', 'parking', 14, 5, NULL, NULL),
(131, 131, '1', 'Mahindra XUV700', '1C4XXXXXXXX521742', 'Shivesh', '2022-04-24 02:54:02', 'parking', 15, 5, NULL, NULL),
(132, 132, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Rahul', '2022-03-18 03:34:26', 'parking', 16, 5, NULL, NULL),
(133, 133, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Ninad', '2022-04-28 17:26:35', 'parking', 17, 5, NULL, NULL),
(134, 134, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Rahul', '2022-03-13 23:33:07', 'parking', 18, 5, NULL, NULL),
(135, 135, '1', 'Mahindra XUV300 Electric', '1N6XXXXXXXX303918', 'Ninad', '2022-05-04 19:13:13', 'parking', 19, 5, NULL, NULL),
(136, 136, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Yash', '2022-05-01 09:08:07', 'parking', 20, 5, NULL, NULL),
(137, 137, '0', '', '', '', '2022-04-26 19:58:18', 'parking', 21, 5, NULL, '2022-04-06 10:44:04'),
(138, 138, '0', '', '', '', NULL, 'road', 22, 5, NULL, NULL),
(139, 139, '0', '', '', '', NULL, 'road', 0, 6, NULL, NULL),
(140, 140, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Rahul', '2022-03-26 17:17:15', 'parking', 1, 6, NULL, NULL),
(141, 141, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Yash', '2022-03-09 15:43:56', 'parking', 2, 6, NULL, NULL),
(142, 142, '1', 'Mahindra XUV300', '1N6XXXXXXXX303918', 'Rahul', '2022-04-04 11:42:22', 'parking', 3, 6, NULL, NULL),
(143, 143, '1', 'Mahindra XUV700', '1C4XXXXXXXX521742', 'Yash', '2022-03-11 08:57:21', 'parking', 4, 6, NULL, NULL),
(144, 144, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Yash', '2022-04-14 14:13:31', 'parking', 5, 6, NULL, NULL),
(145, 145, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Yash', '2022-04-04 11:25:44', 'parking', 6, 6, NULL, NULL),
(146, 146, '1', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Ninad', '2022-03-27 06:48:23', 'parking', 7, 6, NULL, NULL),
(147, 147, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Ninad', '2022-03-11 21:54:43', 'parking', 8, 6, NULL, NULL),
(148, 148, '1', 'Mahindra Bolero', '1N6XXXXXXXX303918', 'Rahul', '2022-04-17 22:47:58', 'parking', 9, 6, NULL, NULL),
(149, 149, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Ninad', '2022-03-25 10:37:17', 'parking', 10, 6, NULL, NULL),
(150, 150, '0', '', '', '', NULL, 'road', 11, 6, NULL, NULL),
(151, 151, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Darshan', '2022-05-03 02:27:24', 'parking', 12, 6, NULL, NULL),
(152, 152, '1', 'Mahindra Scorpio', '1N6XXXXXXXX303918', 'Ninad', '2022-04-29 11:11:31', 'parking', 13, 6, NULL, NULL),
(153, 153, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Ninad', '2022-04-20 18:54:17', 'parking', 14, 6, NULL, NULL),
(154, 154, '1', 'Mahindra XUV700', '1C4XXXXXXXX521742', 'Darshan', '2022-04-06 18:45:37', 'parking', 15, 6, NULL, NULL),
(155, 155, '1', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Yash', '2022-04-13 05:56:06', 'parking', 16, 6, NULL, NULL),
(156, 156, '1', 'Mahindra XUV700', '1C4XXXXXXXX521742', 'Ketan', '2022-04-24 08:14:46', 'parking', 17, 6, NULL, NULL),
(157, 157, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Shivesh', '2022-03-24 10:03:07', 'parking', 18, 6, NULL, NULL),
(158, 158, '1', 'Mahindra XUV700', '1C4XXXXXXXX521742', 'Darshan', '2022-03-24 09:24:14', 'parking', 19, 6, NULL, NULL),
(159, 159, '1', 'Mahindra XUV300', '1N6XXXXXXXX303918', 'Rahul', '2022-04-03 23:34:07', 'parking', 20, 6, NULL, NULL),
(160, 160, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Darshan', '2022-04-02 05:19:47', 'parking', 21, 6, NULL, NULL),
(161, 161, '0', '', '', '', NULL, 'road', 22, 6, NULL, NULL),
(162, 162, '0', '', '', '', NULL, 'road', 0, 7, NULL, NULL),
(163, 163, '1', 'Mahindra XUV300 Electric', '1N6XXXXXXXX303918', 'Yash', '2022-04-07 20:32:45', 'parking', 1, 7, NULL, NULL),
(164, 164, '1', 'Mahindra Thar', '1N6XXXXXXXX303918', 'Shivesh', '2022-05-06 08:54:13', 'parking', 2, 7, NULL, NULL),
(165, 165, '1', 'Mahindra Bolero', '1N6XXXXXXXX303918', 'Darshan', '2022-04-04 18:18:20', 'parking', 3, 7, NULL, NULL),
(166, 166, '1', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Ninad', '2022-03-10 03:51:30', 'parking', 4, 7, NULL, NULL),
(167, 167, '1', 'Mahindra Bolero', '1N6XXXXXXXX303918', 'Darshan', '2022-05-01 07:26:53', 'parking', 5, 7, NULL, NULL),
(168, 168, '0', 'Mahindra Thar', '1N6XXXXXXXX303918', 'Shivesh', '2022-04-11 05:06:47', 'parking', 6, 7, NULL, NULL),
(169, 169, '1', 'Mahindra XUV300', '1N6XXXXXXXX303918', 'Darshan', '2022-03-25 20:41:21', 'parking', 7, 7, NULL, NULL),
(170, 170, '1', 'Mahindra XUV700', '1N6XXXXXXXX303918', 'Shivesh', '2022-04-12 02:28:16', 'parking', 8, 7, NULL, NULL),
(171, 171, '1', 'Mahindra XUV300', '1N6XXXXXXXX303918', 'Yash', '2022-04-06 08:08:00', 'parking', 9, 7, NULL, NULL),
(172, 172, '1', 'Mahindra Thar', '1N6XXXXXXXX303918', 'Ninad', '2022-04-27 21:36:36', 'parking', 10, 7, NULL, NULL),
(173, 173, '0', '', '', '', NULL, 'road', 11, 7, NULL, NULL),
(174, 174, '1', 'Mahindra Scorpio', '1C4XXXXXXXX521742', 'Rahul', '2022-04-04 01:56:09', 'parking', 12, 7, NULL, NULL),
(175, 175, '1', 'Mahindra XUV300', '1N6XXXXXXXX303918', 'Yash', '2022-03-27 16:01:31', 'parking', 13, 7, NULL, NULL),
(176, 176, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Ketan', '2022-04-13 20:38:28', 'parking', 14, 7, NULL, NULL),
(177, 177, '1', 'Mahindra XUV300 Electric', '1C4XXXXXXXX521742', 'Darshan', '2022-05-04 00:02:36', 'parking', 15, 7, NULL, NULL),
(178, 178, '1', 'Mahindra XUV300 Electric', '1N6XXXXXXXX303918', 'Ninad', '2022-03-25 09:28:49', 'parking', 16, 7, NULL, NULL),
(179, 179, '1', 'Mahindra XUV300', '1C4XXXXXXXX521742', 'Rahul', '2022-05-01 10:06:00', 'parking', 17, 7, NULL, NULL),
(180, 180, '1', 'Mahindra Bolero', '1N6XXXXXXXX303918', 'Ninad', '2022-03-09 00:39:30', 'parking', 18, 7, NULL, NULL),
(181, 181, '1', 'Mahindra Thar', '1N6XXXXXXXX303918', 'Darshan', '2022-05-03 16:01:07', 'parking', 19, 7, NULL, NULL),
(182, 182, '1', 'Mahindra Bolero', '1C4XXXXXXXX521742', 'Shivesh', '2022-03-30 17:32:09', 'parking', 20, 7, NULL, NULL),
(183, 183, '1', 'Mahindra Thar', '1C4XXXXXXXX521742', 'Yash', '2022-04-15 22:51:00', 'parking', 21, 7, NULL, '2022-04-06 10:29:29'),
(184, 184, '0', '', '', '', NULL, 'road', 22, 7, NULL, NULL),
(185, 185, '0', '', '', '', NULL, 'road', 0, 8, NULL, NULL),
(186, 186, '0', '', '', '', NULL, 'road', 1, 8, NULL, NULL),
(187, 187, '0', '', '', '', NULL, 'road', 2, 8, NULL, NULL),
(188, 188, '0', '', '', '', NULL, 'road', 3, 8, NULL, NULL),
(189, 189, '0', '', '', '', NULL, 'road', 4, 8, NULL, NULL),
(190, 190, '0', '', '', '', NULL, 'road', 5, 8, NULL, NULL),
(191, 191, '0', '', '', '', NULL, 'road', 6, 8, NULL, NULL),
(192, 192, '0', '', '', '', NULL, 'road', 7, 8, NULL, NULL),
(193, 193, '0', '', '', '', NULL, 'road', 8, 8, NULL, NULL),
(194, 194, '0', '', '', '', NULL, 'road', 9, 8, NULL, NULL),
(195, 195, '0', '', '', '', NULL, 'road', 10, 8, NULL, NULL),
(196, 196, '0', '', '', '', NULL, 'road', 11, 8, NULL, NULL),
(197, 197, '0', '', '', '', NULL, 'road', 12, 8, NULL, NULL),
(198, 198, '0', '', '', '', NULL, 'road', 13, 8, NULL, NULL),
(199, 199, '0', '', '', '', NULL, 'road', 14, 8, NULL, NULL),
(200, 200, '0', '', '', '', NULL, 'road', 15, 8, NULL, NULL),
(201, 201, '0', '', '', '', NULL, 'road', 16, 8, NULL, NULL),
(202, 202, '0', '', '', '', NULL, 'road', 17, 8, NULL, NULL),
(203, 203, '0', '', '', '', NULL, 'road', 18, 8, NULL, NULL),
(204, 204, '0', '', '', '', NULL, 'road', 19, 8, NULL, NULL),
(205, 205, '0', '', '', '', NULL, 'road', 20, 8, NULL, NULL),
(206, 206, '0', '', '', '', NULL, 'road', 21, 8, NULL, NULL),
(207, 207, '0', '', '', '', NULL, 'road', 22, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spots`
--
ALTER TABLE `spots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
