-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2022 at 02:05 PM
-- Server version: 10.3.37-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `divinatorysoluti_movementmap`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `entity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `options`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'view-user', 'Se brukere', NULL, NULL, 0, NULL, NULL, '2022-03-10 07:00:30', '2022-03-10 07:00:30'),
(2, 'show-user', 'Vis brukere', NULL, NULL, 0, NULL, NULL, '2022-03-10 07:00:30', '2022-03-10 07:00:30'),
(3, 'add-user', 'Legg til brukere', NULL, NULL, 0, NULL, NULL, '2022-03-10 07:00:30', '2022-03-10 07:00:30'),
(4, 'edit-user', 'Endre brukere', NULL, NULL, 0, NULL, NULL, '2022-03-10 07:00:30', '2022-03-10 07:00:30'),
(5, 'delete-user', 'Slett brukere', NULL, NULL, 0, NULL, NULL, '2022-03-10 07:00:30', '2022-03-10 07:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `anthropometrics`
--

CREATE TABLE `anthropometrics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `bmi` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `week_ant` varchar(50) DEFAULT NULL,
  `ant_train` varchar(50) DEFAULT NULL,
  `damage_c` varchar(50) DEFAULT NULL,
  `damage_nc` varchar(50) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `vurdBorg` varchar(50) DEFAULT NULL,
  `VurdFys` varchar(50) DEFAULT NULL,
  `jobs` varchar(50) DEFAULT NULL,
  `r_reported` varchar(50) DEFAULT NULL,
  `internship` varchar(50) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `fat` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `foot_size` varchar(50) DEFAULT NULL,
  `shoe_size` varchar(50) DEFAULT NULL,
  `leg_length` varchar(50) DEFAULT NULL,
  `akt_scale` varchar(50) DEFAULT NULL,
  `motivation` varchar(50) DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `s_dribble_right` varchar(50) DEFAULT NULL,
  `s_dribble_left` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anthropometrics`
--

INSERT INTO `anthropometrics` (`id`, `user_id`, `status`, `date`, `height`, `weight`, `bmi`, `age`, `week_ant`, `ant_train`, `damage_c`, `damage_nc`, `note`, `vurdBorg`, `VurdFys`, `jobs`, `r_reported`, `internship`, `comments`, `fat`, `position`, `foot_size`, `shoe_size`, `leg_length`, `akt_scale`, `motivation`, `resourceId`, `s_dribble_right`, `s_dribble_left`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'pre', NULL, '189', '92', '0', '21', '2', '3', '46', '6', '8', '8', '9', '4', '94', '4', 'some text', '2', '3', '4', '5', '6', '7', '8', '9', NULL, NULL, NULL, '2022-03-26 10:37:57', '2022-07-19 19:19:46'),
(2, 2, 'mail', '2022-03-24', '650', '72', '0', '23', '44', '55', '6', '7', '8', '9', '10', '11', '12', '13', 'comments 14', '2', '3', '4', '5', '6', '7', '8', '9', NULL, NULL, '2022-07-23 20:19:56', '2022-03-26 07:08:00', '2022-07-23 20:19:56'),
(3, 2, 'pre', NULL, '1.8', '3', '0.93', '22', NULL, NULL, '2', '44', '22', NULL, NULL, NULL, NULL, NULL, NULL, '22', '22', '22', '11', '22', '23', '2', NULL, NULL, NULL, '2022-08-19 03:34:43', '2022-07-11 18:52:56', '2022-08-19 03:34:43'),
(4, 7, 'pre', NULL, '23', '43', '0.08', '45', NULL, NULL, '23', '45', '436', NULL, NULL, NULL, NULL, NULL, NULL, '1', '56', '32', '23', '23', '23', '23', NULL, NULL, NULL, '2022-10-19 17:36:25', '2022-07-11 18:58:55', '2022-10-19 17:36:25'),
(5, 2, 'pre', '2022-06-29', '23', '2', '0', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23', '2', NULL, NULL, NULL, '2022-07-11 20:34:56', '2022-07-11 20:28:27', '2022-07-11 20:34:56'),
(6, 2, 'mid', '1983-02-16', '70', '59', '0.01', '12', NULL, NULL, '67', '39', '39', NULL, NULL, NULL, NULL, NULL, NULL, '73', '75', '15', '1', '73', '33', '46', NULL, NULL, NULL, NULL, '2022-07-18 05:28:45', '2022-07-18 05:28:45'),
(7, 2, 'pre', '2022-07-07', '23', '23', '0.04', '22', NULL, NULL, '23', '23', '11', NULL, NULL, NULL, NULL, NULL, NULL, '11', '11', '23', '22', '22', '33', '23', NULL, NULL, NULL, '2022-07-19 19:16:22', '2022-07-19 19:15:41', '2022-07-19 19:16:22'),
(8, 15, 'pre', NULL, '323', '343', '0', '31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '42', NULL, NULL, NULL, NULL, '2022-07-29 22:25:31', '2022-07-29 22:25:31'),
(9, 2, 'mail', '2022-08-04', '650', '72', '0', '313', NULL, NULL, '23', '45', '54', NULL, NULL, NULL, NULL, NULL, NULL, '54', '54', '54', '54', '54', '2321', '31', NULL, NULL, NULL, '2022-08-05 21:35:25', '2022-08-03 12:27:07', '2022-08-05 21:35:25'),
(10, 2, 'post', '2022-08-05', '700', '100', '0', '45', NULL, NULL, '54', '54', '54', NULL, NULL, NULL, NULL, NULL, NULL, '54', '5', '454', '5', '545', '454', '156', NULL, NULL, NULL, NULL, '2022-08-03 12:34:49', '2022-08-03 12:34:49'),
(11, 29, 'post', '2022-08-27', '1.89', '97', '27.15', '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', 'Målvakt', '43', NULL, NULL, '9', '8', NULL, NULL, NULL, NULL, '2022-08-27 09:09:24', '2022-10-11 10:46:44'),
(12, 29, 'pre', '2022-09-07', '23', '23', '0.04', '23', NULL, NULL, '2', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '12', 'Forsvarspiller', '2', '2', '23', '3', '23', NULL, NULL, NULL, '2022-10-06 09:57:50', '2022-09-17 21:49:12', '2022-10-06 09:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `restricted_to_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restricted_to_type` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `role_id`, `entity_id`, `entity_type`, `restricted_to_id`, `restricted_to_type`, `scope`) VALUES
(1, 2, 4, 'App\\Models\\User', NULL, NULL, NULL),
(2, 2, 2, 'App\\Models\\User', NULL, NULL, NULL),
(3, 1, 1, 'App\\Models\\User', NULL, NULL, NULL),
(9, 2, 7, 'App\\Models\\User', NULL, NULL, NULL),
(17, 4, 6, 'App\\Models\\User', NULL, NULL, NULL),
(18, 3, 8, 'App\\Models\\User', NULL, NULL, NULL),
(20, 3, 9, 'App\\Models\\User', NULL, NULL, NULL),
(22, 3, 10, 'App\\Models\\User', NULL, NULL, NULL),
(25, 2, 15, 'App\\Models\\User', NULL, NULL, NULL),
(26, 2, 16, 'App\\Models\\User', NULL, NULL, NULL),
(28, 2, 18, 'App\\Models\\User', NULL, NULL, NULL),
(29, 2, 19, 'App\\Models\\User', NULL, NULL, NULL),
(30, 2, 20, 'App\\Models\\User', NULL, NULL, NULL),
(32, 3, 22, 'App\\Models\\User', NULL, NULL, NULL),
(33, 2, 23, 'App\\Models\\User', NULL, NULL, NULL),
(36, 3, 26, 'App\\Models\\User', NULL, NULL, NULL),
(42, 2, 29, 'App\\Models\\User', NULL, NULL, NULL),
(46, 2, 30, 'App\\Models\\User', NULL, NULL, NULL),
(48, 3, 5, 'App\\Models\\User', NULL, NULL, NULL),
(50, 2, 32, 'App\\Models\\User', NULL, NULL, NULL),
(51, 5, 28, 'App\\Models\\User', NULL, NULL, NULL),
(52, 2, 33, 'App\\Models\\User', NULL, NULL, NULL),
(53, 2, 34, 'App\\Models\\User', NULL, NULL, NULL),
(54, 2, 35, 'App\\Models\\User', NULL, NULL, NULL),
(58, 2, 36, 'App\\Models\\User', NULL, NULL, NULL),
(59, 2, 37, 'App\\Models\\User', NULL, NULL, NULL),
(60, 2, 38, 'App\\Models\\User', NULL, NULL, NULL),
(61, 2, 39, 'App\\Models\\User', NULL, NULL, NULL),
(62, 2, 40, 'App\\Models\\User', NULL, NULL, NULL),
(63, 2, 41, 'App\\Models\\User', NULL, NULL, NULL),
(64, 2, 42, 'App\\Models\\User', NULL, NULL, NULL),
(65, 2, 43, 'App\\Models\\User', NULL, NULL, NULL),
(66, 2, 44, 'App\\Models\\User', NULL, NULL, NULL),
(67, 2, 45, 'App\\Models\\User', NULL, NULL, NULL),
(68, 2, 46, 'App\\Models\\User', NULL, NULL, NULL),
(69, 2, 47, 'App\\Models\\User', NULL, NULL, NULL),
(70, 2, 48, 'App\\Models\\User', NULL, NULL, NULL),
(71, 2, 49, 'App\\Models\\User', NULL, NULL, NULL),
(72, 2, 50, 'App\\Models\\User', NULL, NULL, NULL),
(73, 2, 51, 'App\\Models\\User', NULL, NULL, NULL),
(74, 2, 52, 'App\\Models\\User', NULL, NULL, NULL),
(75, 2, 53, 'App\\Models\\User', NULL, NULL, NULL),
(77, 1, 27, 'App\\Models\\User', NULL, NULL, NULL),
(81, 5, 17, 'App\\Models\\User', NULL, NULL, NULL),
(82, 5, 11, 'App\\Models\\User', NULL, NULL, NULL),
(83, 5, 57, 'App\\Models\\User', NULL, NULL, NULL),
(87, 2, 60, 'App\\Models\\User', NULL, NULL, NULL),
(88, 2, 61, 'App\\Models\\User', NULL, NULL, NULL),
(89, 2, 62, 'App\\Models\\User', NULL, NULL, NULL),
(95, 2, 66, 'App\\Models\\User', NULL, NULL, NULL),
(96, 1, 67, 'App\\Models\\User', NULL, NULL, NULL),
(97, 2, 68, 'App\\Models\\User', NULL, NULL, NULL),
(98, 2, 69, 'App\\Models\\User', NULL, NULL, NULL),
(101, 2, 71, 'App\\Models\\User', NULL, NULL, NULL),
(102, 2, 72, 'App\\Models\\User', NULL, NULL, NULL),
(103, 2, 73, 'App\\Models\\User', NULL, NULL, NULL),
(104, 2, 74, 'App\\Models\\User', NULL, NULL, NULL),
(105, 2, 75, 'App\\Models\\User', NULL, NULL, NULL),
(106, 2, 76, 'App\\Models\\User', NULL, NULL, NULL),
(107, 2, 77, 'App\\Models\\User', NULL, NULL, NULL),
(108, 2, 78, 'App\\Models\\User', NULL, NULL, NULL),
(109, 2, 79, 'App\\Models\\User', NULL, NULL, NULL),
(114, 2, 63, 'App\\Models\\User', NULL, NULL, NULL),
(119, 9, 65, 'App\\Models\\User', NULL, NULL, NULL),
(120, 2, 80, 'App\\Models\\User', NULL, NULL, NULL),
(121, 2, 81, 'App\\Models\\User', NULL, NULL, NULL),
(122, 2, 82, 'App\\Models\\User', NULL, NULL, NULL),
(123, 2, 83, 'App\\Models\\User', NULL, NULL, NULL),
(124, 2, 84, 'App\\Models\\User', NULL, NULL, NULL),
(125, 2, 85, 'App\\Models\\User', NULL, NULL, NULL),
(126, 2, 86, 'App\\Models\\User', NULL, NULL, NULL),
(127, 2, 87, 'App\\Models\\User', NULL, NULL, NULL),
(128, 2, 88, 'App\\Models\\User', NULL, NULL, NULL),
(129, 2, 89, 'App\\Models\\User', NULL, NULL, NULL),
(130, 2, 90, 'App\\Models\\User', NULL, NULL, NULL),
(131, 1, 59, 'App\\Models\\User', NULL, NULL, NULL),
(132, 2, 91, 'App\\Models\\User', NULL, NULL, NULL),
(133, 2, 92, 'App\\Models\\User', NULL, NULL, NULL),
(134, 2, 93, 'App\\Models\\User', NULL, NULL, NULL),
(135, 3, 70, 'App\\Models\\User', NULL, NULL, NULL),
(136, 2, 94, 'App\\Models\\User', NULL, NULL, NULL),
(137, 1, 54, 'App\\Models\\User', NULL, NULL, NULL),
(138, 2, 95, 'App\\Models\\User', NULL, NULL, NULL),
(139, 2, 96, 'App\\Models\\User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` varchar(50) NOT NULL,
  `is_active` tinyint(4) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `sort`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Movement Map Sport', '1', 1, NULL, '2022-03-23 12:46:12', '2022-03-23 12:46:12'),
(2, 'Movement Map Rehabilitationn', '2', 1, NULL, '2022-03-23 12:46:12', '2022-03-23 08:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `case_workers`
--

CREATE TABLE `case_workers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `sort` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_workers`
--

INSERT INTO `case_workers` (`id`, `name`, `telephone`, `email`, `organization`, `sort`, `user_id`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'demo caseworker 1', '0987654123', 'caseworker1@demo.com', 'organization1', '1', NULL, 1, NULL, '2022-03-10 05:57:39', '2022-03-10 05:57:47'),
(2, 'demo case worker2 updated', '9876543218', 'caseworker2@demo.com', 'organization2', '2', NULL, 0, NULL, '2022-03-10 01:47:56', '2022-03-10 01:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `workplace` varchar(150) DEFAULT NULL,
  `coach_function_id` bigint(20) DEFAULT NULL,
  `level` bigint(20) DEFAULT NULL,
  `calendar` tinyint(4) DEFAULT 0,
  `blog` tinyint(4) DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `personalIdNumber` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`id`, `user_id`, `workplace`, `coach_function_id`, `level`, `calendar`, `blog`, `address`, `note`, `personalIdNumber`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 'Steinkjer', 3, 5, 1, 1, NULL, NULL, '0', NULL, '2022-03-21 11:25:58', '2022-08-29 06:47:12'),
(2, 6, 'the work space', 4, 3, 1, 1, NULL, NULL, '12312312312', '2022-04-26 00:07:16', '2022-03-22 00:51:01', '2022-04-26 00:07:16'),
(3, 9, 'asad', 3, 2, 1, 0, 'asdasd', 'adasd', '12123123123', '2022-05-03 05:25:32', '2022-04-26 03:18:00', '2022-05-03 05:25:32'),
(4, 10, 'Steinkjer', 3, NULL, 1, 0, NULL, NULL, '12076700000', '2022-07-03 07:41:46', '2022-05-16 05:11:30', '2022-07-03 07:41:46'),
(5, 11, 'test', 5, 5, 1, 0, 'Raud 6 232 sandtest', 'dette er bare en test', '0', '2022-11-14 15:06:37', '2022-07-03 17:51:18', '2022-11-14 15:06:37'),
(6, 17, 'Steinkjer', 5, NULL, 1, 0, NULL, NULL, '0', NULL, '2022-07-05 13:11:04', '2022-10-13 09:46:27'),
(7, 22, 'test', 3, 5, 1, 0, 'test', 'testsadasd', '0', '2022-07-19 16:51:41', '2022-07-19 16:45:07', '2022-07-19 16:51:41'),
(8, 26, NULL, 3, NULL, 1, 0, NULL, NULL, '0', '2022-07-22 21:39:58', '2022-07-22 21:39:38', '2022-07-22 21:39:58'),
(9, 27, 'Steinkjer', 1, NULL, 1, 0, NULL, NULL, '0', NULL, '2022-08-18 13:17:33', '2022-10-12 05:48:18'),
(10, 28, 'Steinkjer', 5, NULL, 1, 0, NULL, NULL, '0', NULL, '2022-08-27 08:30:30', '2022-08-27 08:30:30'),
(11, 54, 'Steinkjer', 1, NULL, 1, 0, NULL, NULL, '0', NULL, '2022-10-12 05:47:08', '2022-10-12 05:47:08'),
(12, 57, 'Steinkjer', 5, NULL, 1, 0, NULL, NULL, '0', '2022-11-14 15:06:48', '2022-10-12 05:55:58', '2022-11-14 15:06:48'),
(13, 59, 'Steinkjer', 1, NULL, 1, 0, NULL, NULL, '0', NULL, '2022-10-12 05:58:52', '2022-10-19 17:24:04'),
(14, 63, 'test30-r', 2, NULL, 0, 0, 'test30-r', 'test30-r', '0', NULL, '2022-11-02 15:28:54', '2022-11-05 07:04:39'),
(15, 65, 'Dummy-testcoach', 9, NULL, 0, 0, 'Dummy-testcoach', 'Dummy-testcoach', '0', '2022-11-14 15:06:58', '2022-11-03 07:39:52', '2022-11-14 15:06:58'),
(16, 66, 'testtestetst', 2, NULL, 0, 0, 'testtestetst', 'testtestetst', '0', NULL, '2022-11-03 07:43:07', '2022-11-03 07:43:15'),
(17, 67, 'Testruben123', 1, NULL, 1, 0, 'Testruben123', NULL, '0', NULL, '2022-11-03 07:51:19', '2022-11-03 07:51:19'),
(18, 70, 'Steinkjer', 3, NULL, 1, 0, 'Helgesvegen 25, 7716 Steinkjer', NULL, '0', NULL, '2022-11-04 10:20:53', '2022-11-04 10:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `combine_subscription_plan_programs`
--

CREATE TABLE `combine_subscription_plan_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `plan_id` varchar(255) DEFAULT NULL,
  `subscription_id` varchar(255) DEFAULT NULL,
  `program_id` varchar(255) DEFAULT NULL,
  `is_a_month` varchar(255) DEFAULT NULL,
  `is_6_month` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combine_subscription_plan_programs`
--

INSERT INTO `combine_subscription_plan_programs` (`id`, `user_id`, `plan_id`, `subscription_id`, `program_id`, `is_a_month`, `is_6_month`, `created_at`, `updated_at`) VALUES
(1, '60', '13', '3', '73', '1', NULL, '2022-11-23 13:28:50', '2022-11-23 13:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `textColor` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `note` text DEFAULT NULL,
  `reminder` varchar(255) DEFAULT NULL,
  `showTimeAs` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coachName` varchar(255) DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `dataText` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `allDay`, `color`, `textColor`, `data`, `note`, `reminder`, `showTimeAs`, `label`, `coachName`, `resourceId`, `dataText`, `created_at`, `updated_at`) VALUES
(3, 'its weekly', '2022-11-08 07:00:00', '2022-11-08 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(5, 'its weekly', '2022-11-10 07:00:00', '2022-11-10 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(6, 'its weekly', '2022-11-11 07:00:00', '2022-11-11 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(20, 'its weekly', '2022-11-25 07:00:00', '2022-11-25 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(24, 'its weekly', '2022-11-29 07:00:00', '2022-11-29 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(27, 'its weekly', '2022-12-02 07:00:00', '2022-12-02 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(31, 'its weekly', '2022-12-06 07:00:00', '2022-12-06 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(33, 'its weekly', '2022-12-08 07:00:00', '2022-12-08 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(34, 'its weekly', '2022-12-09 07:00:00', '2022-12-09 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(38, 'its weekly', '2022-12-13 07:00:00', '2022-12-13 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(40, 'its weekly', '2022-12-15 07:00:00', '2022-12-15 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(41, 'its weekly', '2022-12-16 07:00:00', '2022-12-16 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(45, 'its weekly', '2022-12-20 07:00:00', '2022-12-20 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(47, 'its weekly', '2022-12-22 07:00:00', '2022-12-22 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(48, 'its weekly', '2022-12-23 07:00:00', '2022-12-23 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(52, 'its weekly', '2022-12-27 07:00:00', '2022-12-27 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(54, 'its weekly', '2022-12-29 07:00:00', '2022-12-29 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(55, 'its weekly', '2022-12-30 07:00:00', '2022-12-30 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(59, 'its weekly', '2023-01-03 07:00:00', '2023-01-03 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(61, 'its weekly', '2023-01-05 07:00:00', '2023-01-05 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(62, 'its weekly', '2023-01-06 07:00:00', '2023-01-06 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(66, 'its weekly', '2023-01-10 07:00:00', '2023-01-10 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(68, 'its weekly', '2023-01-12 07:00:00', '2023-01-12 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(69, 'its weekly', '2023-01-13 07:00:00', '2023-01-13 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(73, 'its weekly', '2023-01-17 07:00:00', '2023-01-17 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(75, 'its weekly', '2023-01-19 07:00:00', '2023-01-19 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(76, 'its weekly', '2023-01-20 07:00:00', '2023-01-20 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(80, 'its weekly', '2023-01-24 07:00:00', '2023-01-24 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(82, 'its weekly', '2023-01-26 07:00:00', '2023-01-26 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(83, 'its weekly', '2023-01-27 07:00:00', '2023-01-27 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(87, 'its weekly', '2023-01-31 07:00:00', '2023-01-31 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(89, 'its weekly', '2023-02-02 07:00:00', '2023-02-02 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(90, 'its weekly', '2023-02-03 07:00:00', '2023-02-03 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(94, 'its weekly', '2023-02-07 07:00:00', '2023-02-07 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(96, 'its weekly', '2023-02-09 07:00:00', '2023-02-09 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(97, 'its weekly', '2023-02-10 07:00:00', '2023-02-10 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(101, 'its weekly', '2023-02-14 07:00:00', '2023-02-14 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(103, 'its weekly', '2023-02-16 07:00:00', '2023-02-16 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(104, 'its weekly', '2023-02-17 07:00:00', '2023-02-17 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(108, 'its weekly', '2023-02-21 07:00:00', '2023-02-21 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(110, 'its weekly', '2023-02-23 07:00:00', '2023-02-23 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(111, 'its weekly', '2023-02-24 07:00:00', '2023-02-24 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:42', '2022-11-05 13:26:42'),
(115, 'its weekly', '2023-02-28 07:00:00', '2023-02-28 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(117, 'its weekly', '2023-03-02 07:00:00', '2023-03-02 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(118, 'its weekly', '2023-03-03 07:00:00', '2023-03-03 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(122, 'its weekly', '2023-03-07 07:00:00', '2023-03-07 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(124, 'its weekly', '2023-03-09 07:00:00', '2023-03-09 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(125, 'its weekly', '2023-03-10 07:00:00', '2023-03-10 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(129, 'its weekly', '2023-03-14 07:00:00', '2023-03-14 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(131, 'its weekly', '2023-03-16 07:00:00', '2023-03-16 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(132, 'its weekly', '2023-03-17 07:00:00', '2023-03-17 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(136, 'its weekly', '2023-03-21 07:00:00', '2023-03-21 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(138, 'its weekly', '2023-03-23 07:00:00', '2023-03-23 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(139, 'its weekly', '2023-03-24 07:00:00', '2023-03-24 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(143, 'its weekly', '2023-03-28 07:00:00', '2023-03-28 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(145, 'its weekly', '2023-03-30 07:00:00', '2023-03-30 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(146, 'its weekly', '2023-03-31 07:00:00', '2023-03-31 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(150, 'its weekly', '2023-04-04 07:00:00', '2023-04-04 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(152, 'its weekly', '2023-04-06 07:00:00', '2023-04-06 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(153, 'its weekly', '2023-04-07 07:00:00', '2023-04-07 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(157, 'its weekly', '2023-04-11 07:00:00', '2023-04-11 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(159, 'its weekly', '2023-04-13 07:00:00', '2023-04-13 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(160, 'its weekly', '2023-04-14 07:00:00', '2023-04-14 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(164, 'its weekly', '2023-04-18 07:00:00', '2023-04-18 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(166, 'its weekly', '2023-04-20 07:00:00', '2023-04-20 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(167, 'its weekly', '2023-04-21 07:00:00', '2023-04-21 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(171, 'its weekly', '2023-04-25 07:00:00', '2023-04-25 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(173, 'its weekly', '2023-04-27 07:00:00', '2023-04-27 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(174, 'its weekly', '2023-04-28 07:00:00', '2023-04-28 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(178, 'its weekly', '2023-05-02 07:00:00', '2023-05-02 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(180, 'its weekly', '2023-05-04 07:00:00', '2023-05-04 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(181, 'its weekly', '2023-05-05 07:00:00', '2023-05-05 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(185, 'its weekly', '2023-05-09 07:00:00', '2023-05-09 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(187, 'its weekly', '2023-05-11 07:00:00', '2023-05-11 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(188, 'its weekly', '2023-05-12 07:00:00', '2023-05-12 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(192, 'its weekly', '2023-05-16 07:00:00', '2023-05-16 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(194, 'its weekly', '2023-05-18 07:00:00', '2023-05-18 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(195, 'its weekly', '2023-05-19 07:00:00', '2023-05-19 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(199, 'its weekly', '2023-05-23 07:00:00', '2023-05-23 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(201, 'its weekly', '2023-05-25 07:00:00', '2023-05-25 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(202, 'its weekly', '2023-05-26 07:00:00', '2023-05-26 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(206, 'its weekly', '2023-05-30 07:00:00', '2023-05-30 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(208, 'its weekly', '2023-06-01 07:00:00', '2023-06-01 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(209, 'its weekly', '2023-06-02 07:00:00', '2023-06-02 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(213, 'its weekly', '2023-06-06 07:00:00', '2023-06-06 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(215, 'its weekly', '2023-06-08 07:00:00', '2023-06-08 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(216, 'its weekly', '2023-06-09 07:00:00', '2023-06-09 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(220, 'its weekly', '2023-06-13 07:00:00', '2023-06-13 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(222, 'its weekly', '2023-06-15 07:00:00', '2023-06-15 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(223, 'its weekly', '2023-06-16 07:00:00', '2023-06-16 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(227, 'its weekly', '2023-06-20 07:00:00', '2023-06-20 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(229, 'its weekly', '2023-06-22 07:00:00', '2023-06-22 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(230, 'its weekly', '2023-06-23 07:00:00', '2023-06-23 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(234, 'its weekly', '2023-06-27 07:00:00', '2023-06-27 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(236, 'its weekly', '2023-06-29 07:00:00', '2023-06-29 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(237, 'its weekly', '2023-06-30 07:00:00', '2023-06-30 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(241, 'its weekly', '2023-07-04 07:00:00', '2023-07-04 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(243, 'its weekly', '2023-07-06 07:00:00', '2023-07-06 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(244, 'its weekly', '2023-07-07 07:00:00', '2023-07-07 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(248, 'its weekly', '2023-07-11 07:00:00', '2023-07-11 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(250, 'its weekly', '2023-07-13 07:00:00', '2023-07-13 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(251, 'its weekly', '2023-07-14 07:00:00', '2023-07-14 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(255, 'its weekly', '2023-07-18 07:00:00', '2023-07-18 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(257, 'its weekly', '2023-07-20 07:00:00', '2023-07-20 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(258, 'its weekly', '2023-07-21 07:00:00', '2023-07-21 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(262, 'its weekly', '2023-07-25 07:00:00', '2023-07-25 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(264, 'its weekly', '2023-07-27 07:00:00', '2023-07-27 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(265, 'its weekly', '2023-07-28 07:00:00', '2023-07-28 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(269, 'its weekly', '2023-08-01 07:00:00', '2023-08-01 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(271, 'its weekly', '2023-08-03 07:00:00', '2023-08-03 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(272, 'its weekly', '2023-08-04 07:00:00', '2023-08-04 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(276, 'its weekly', '2023-08-08 07:00:00', '2023-08-08 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(278, 'its weekly', '2023-08-10 07:00:00', '2023-08-10 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(279, 'its weekly', '2023-08-11 07:00:00', '2023-08-11 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(283, 'its weekly', '2023-08-15 07:00:00', '2023-08-15 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(285, 'its weekly', '2023-08-17 07:00:00', '2023-08-17 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(286, 'its weekly', '2023-08-18 07:00:00', '2023-08-18 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(290, 'its weekly', '2023-08-22 07:00:00', '2023-08-22 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(292, 'its weekly', '2023-08-24 07:00:00', '2023-08-24 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(293, 'its weekly', '2023-08-25 07:00:00', '2023-08-25 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(297, 'its weekly', '2023-08-29 07:00:00', '2023-08-29 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(299, 'its weekly', '2023-08-31 07:00:00', '2023-08-31 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(300, 'its weekly', '2023-09-01 07:00:00', '2023-09-01 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(304, 'its weekly', '2023-09-05 07:00:00', '2023-09-05 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(306, 'its weekly', '2023-09-07 07:00:00', '2023-09-07 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(307, 'its weekly', '2023-09-08 07:00:00', '2023-09-08 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(311, 'its weekly', '2023-09-12 07:00:00', '2023-09-12 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(313, 'its weekly', '2023-09-14 07:00:00', '2023-09-14 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(314, 'its weekly', '2023-09-15 07:00:00', '2023-09-15 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(318, 'its weekly', '2023-09-19 07:00:00', '2023-09-19 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(320, 'its weekly', '2023-09-21 07:00:00', '2023-09-21 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(321, 'its weekly', '2023-09-22 07:00:00', '2023-09-22 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(325, 'its weekly', '2023-09-26 07:00:00', '2023-09-26 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(327, 'its weekly', '2023-09-28 07:00:00', '2023-09-28 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(328, 'its weekly', '2023-09-29 07:00:00', '2023-09-29 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(332, 'its weekly', '2023-10-03 07:00:00', '2023-10-03 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(334, 'its weekly', '2023-10-05 07:00:00', '2023-10-05 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(335, 'its weekly', '2023-10-06 07:00:00', '2023-10-06 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(339, 'its weekly', '2023-10-10 07:00:00', '2023-10-10 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(341, 'its weekly', '2023-10-12 07:00:00', '2023-10-12 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(342, 'its weekly', '2023-10-13 07:00:00', '2023-10-13 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(346, 'its weekly', '2023-10-17 07:00:00', '2023-10-17 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(348, 'its weekly', '2023-10-19 07:00:00', '2023-10-19 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(349, 'its weekly', '2023-10-20 07:00:00', '2023-10-20 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(353, 'its weekly', '2023-10-24 07:00:00', '2023-10-24 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(355, 'its weekly', '2023-10-26 07:00:00', '2023-10-26 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(356, 'its weekly', '2023-10-27 07:00:00', '2023-10-27 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:43', '2022-11-05 13:26:43'),
(360, 'its weekly', '2023-10-31 07:00:00', '2023-10-31 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:44', '2022-11-05 13:26:44'),
(362, 'its weekly', '2023-11-02 07:00:00', '2023-11-02 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:44', '2022-11-05 13:26:44'),
(363, 'its weekly', '2023-11-03 07:00:00', '2023-11-03 07:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-05 13:26:44', '2022-11-05 13:26:44'),
(371, 'its weekly 2', '2022-11-13 10:30:00', '2022-11-13 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(385, 'its weekly 2', '2022-11-27 10:30:00', '2022-11-27 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(386, 'its weekly 2', '2022-11-28 10:30:00', '2022-11-28 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(392, 'its weekly 2', '2022-12-04 10:30:00', '2022-12-04 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(393, 'its weekly 2', '2022-12-05 10:30:00', '2022-12-05 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(399, 'its weekly 2', '2022-12-11 10:30:00', '2022-12-11 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(400, 'its weekly 2', '2022-12-12 10:30:00', '2022-12-12 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(406, 'its weekly 2', '2022-12-18 10:30:00', '2022-12-18 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(407, 'its weekly 2', '2022-12-19 10:30:00', '2022-12-19 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(413, 'its weekly 2', '2022-12-25 10:30:00', '2022-12-25 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(414, 'its weekly 2', '2022-12-26 10:30:00', '2022-12-26 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(420, 'its weekly 2', '2023-01-01 10:30:00', '2023-01-01 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(421, 'its weekly 2', '2023-01-02 10:30:00', '2023-01-02 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(427, 'its weekly 2', '2023-01-08 10:30:00', '2023-01-08 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(428, 'its weekly 2', '2023-01-09 10:30:00', '2023-01-09 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(434, 'its weekly 2', '2023-01-15 10:30:00', '2023-01-15 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(435, 'its weekly 2', '2023-01-16 10:30:00', '2023-01-16 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(441, 'its weekly 2', '2023-01-22 10:30:00', '2023-01-22 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(442, 'its weekly 2', '2023-01-23 10:30:00', '2023-01-23 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(448, 'its weekly 2', '2023-01-29 10:30:00', '2023-01-29 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(449, 'its weekly 2', '2023-01-30 10:30:00', '2023-01-30 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(455, 'its weekly 2', '2023-02-05 10:30:00', '2023-02-05 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(456, 'its weekly 2', '2023-02-06 10:30:00', '2023-02-06 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(462, 'its weekly 2', '2023-02-12 10:30:00', '2023-02-12 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(463, 'its weekly 2', '2023-02-13 10:30:00', '2023-02-13 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(469, 'its weekly 2', '2023-02-19 10:30:00', '2023-02-19 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(470, 'its weekly 2', '2023-02-20 10:30:00', '2023-02-20 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:40', '2022-11-07 05:29:40'),
(476, 'its weekly 2', '2023-02-26 10:30:00', '2023-02-26 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(477, 'its weekly 2', '2023-02-27 10:30:00', '2023-02-27 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(483, 'its weekly 2', '2023-03-05 10:30:00', '2023-03-05 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(484, 'its weekly 2', '2023-03-06 10:30:00', '2023-03-06 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(490, 'its weekly 2', '2023-03-12 10:30:00', '2023-03-12 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(491, 'its weekly 2', '2023-03-13 10:30:00', '2023-03-13 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(497, 'its weekly 2', '2023-03-19 10:30:00', '2023-03-19 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(498, 'its weekly 2', '2023-03-20 10:30:00', '2023-03-20 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(504, 'its weekly 2', '2023-03-26 10:30:00', '2023-03-26 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(505, 'its weekly 2', '2023-03-27 10:30:00', '2023-03-27 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(511, 'its weekly 2', '2023-04-02 10:30:00', '2023-04-02 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(512, 'its weekly 2', '2023-04-03 10:30:00', '2023-04-03 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(518, 'its weekly 2', '2023-04-09 10:30:00', '2023-04-09 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(519, 'its weekly 2', '2023-04-10 10:30:00', '2023-04-10 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(525, 'its weekly 2', '2023-04-16 10:30:00', '2023-04-16 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(526, 'its weekly 2', '2023-04-17 10:30:00', '2023-04-17 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(532, 'its weekly 2', '2023-04-23 10:30:00', '2023-04-23 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(533, 'its weekly 2', '2023-04-24 10:30:00', '2023-04-24 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(539, 'its weekly 2', '2023-04-30 10:30:00', '2023-04-30 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(540, 'its weekly 2', '2023-05-01 10:30:00', '2023-05-01 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(546, 'its weekly 2', '2023-05-07 10:30:00', '2023-05-07 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(547, 'its weekly 2', '2023-05-08 10:30:00', '2023-05-08 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(553, 'its weekly 2', '2023-05-14 10:30:00', '2023-05-14 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(554, 'its weekly 2', '2023-05-15 10:30:00', '2023-05-15 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(560, 'its weekly 2', '2023-05-21 10:30:00', '2023-05-21 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(561, 'its weekly 2', '2023-05-22 10:30:00', '2023-05-22 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(567, 'its weekly 2', '2023-05-28 10:30:00', '2023-05-28 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(568, 'its weekly 2', '2023-05-29 10:30:00', '2023-05-29 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(574, 'its weekly 2', '2023-06-04 10:30:00', '2023-06-04 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(575, 'its weekly 2', '2023-06-05 10:30:00', '2023-06-05 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(581, 'its weekly 2', '2023-06-11 10:30:00', '2023-06-11 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(582, 'its weekly 2', '2023-06-12 10:30:00', '2023-06-12 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(588, 'its weekly 2', '2023-06-18 10:30:00', '2023-06-18 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(589, 'its weekly 2', '2023-06-19 10:30:00', '2023-06-19 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:41', '2022-11-07 05:29:41'),
(595, 'its weekly 2', '2023-06-25 10:30:00', '2023-06-25 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(596, 'its weekly 2', '2023-06-26 10:30:00', '2023-06-26 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(602, 'its weekly 2', '2023-07-02 10:30:00', '2023-07-02 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(603, 'its weekly 2', '2023-07-03 10:30:00', '2023-07-03 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(609, 'its weekly 2', '2023-07-09 10:30:00', '2023-07-09 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(610, 'its weekly 2', '2023-07-10 10:30:00', '2023-07-10 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(616, 'its weekly 2', '2023-07-16 10:30:00', '2023-07-16 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(617, 'its weekly 2', '2023-07-17 10:30:00', '2023-07-17 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(623, 'its weekly 2', '2023-07-23 10:30:00', '2023-07-23 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(624, 'its weekly 2', '2023-07-24 10:30:00', '2023-07-24 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(630, 'its weekly 2', '2023-07-30 10:30:00', '2023-07-30 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(631, 'its weekly 2', '2023-07-31 10:30:00', '2023-07-31 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(637, 'its weekly 2', '2023-08-06 10:30:00', '2023-08-06 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(638, 'its weekly 2', '2023-08-07 10:30:00', '2023-08-07 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(644, 'its weekly 2', '2023-08-13 10:30:00', '2023-08-13 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(645, 'its weekly 2', '2023-08-14 10:30:00', '2023-08-14 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(651, 'its weekly 2', '2023-08-20 10:30:00', '2023-08-20 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(652, 'its weekly 2', '2023-08-21 10:30:00', '2023-08-21 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(658, 'its weekly 2', '2023-08-27 10:30:00', '2023-08-27 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(659, 'its weekly 2', '2023-08-28 10:30:00', '2023-08-28 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(665, 'its weekly 2', '2023-09-03 10:30:00', '2023-09-03 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(666, 'its weekly 2', '2023-09-04 10:30:00', '2023-09-04 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(672, 'its weekly 2', '2023-09-10 10:30:00', '2023-09-10 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(673, 'its weekly 2', '2023-09-11 10:30:00', '2023-09-11 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(679, 'its weekly 2', '2023-09-17 10:30:00', '2023-09-17 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(680, 'its weekly 2', '2023-09-18 10:30:00', '2023-09-18 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(686, 'its weekly 2', '2023-09-24 10:30:00', '2023-09-24 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(687, 'its weekly 2', '2023-09-25 10:30:00', '2023-09-25 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(693, 'its weekly 2', '2023-10-01 10:30:00', '2023-10-01 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(694, 'its weekly 2', '2023-10-02 10:30:00', '2023-10-02 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(700, 'its weekly 2', '2023-10-08 10:30:00', '2023-10-08 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(701, 'its weekly 2', '2023-10-09 10:30:00', '2023-10-09 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(707, 'its weekly 2', '2023-10-15 10:30:00', '2023-10-15 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(708, 'its weekly 2', '2023-10-16 10:30:00', '2023-10-16 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(714, 'its weekly 2', '2023-10-22 10:30:00', '2023-10-22 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(715, 'its weekly 2', '2023-10-23 10:30:00', '2023-10-23 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(721, 'its weekly 2', '2023-10-29 10:30:00', '2023-10-29 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(722, 'its weekly 2', '2023-10-30 10:30:00', '2023-10-30 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(728, 'its weekly 2', '2023-11-05 10:30:00', '2023-11-05 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(729, 'its weekly 2', '2023-11-06 10:30:00', '2023-11-06 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-07 05:29:42', '2022-11-07 05:29:42'),
(731, 'Brian Hustad', '2022-11-22 18:00:00', '2022-11-22 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'pt_time', 'Lasse', '5', NULL, '2022-11-12 11:59:51', '2022-11-19 06:32:41'),
(738, 'Møde Videregående Steinkjer', '2022-11-22 12:30:00', '2022-11-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(739, 'Møde Videregående Steinkjer', '2022-11-23 12:30:00', '2022-11-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(740, 'Møde Videregående Steinkjer', '2022-11-24 12:30:00', '2022-11-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(741, 'Møde Videregående Steinkjer', '2022-11-25 12:30:00', '2022-11-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(742, 'Møde Videregående Steinkjer', '2022-11-26 12:30:00', '2022-11-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(743, 'Møde Videregående Steinkjer', '2022-11-27 12:30:00', '2022-11-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(745, 'Møde Videregående Steinkjer', '2022-11-29 12:30:00', '2022-11-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(746, 'Møde Videregående Steinkjer', '2022-11-30 12:30:00', '2022-11-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(748, 'Møde Videregående Steinkjer', '2022-12-02 12:30:00', '2022-12-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(749, 'Møde Videregående Steinkjer', '2022-12-03 12:30:00', '2022-12-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(750, 'Møde Videregående Steinkjer', '2022-12-04 12:30:00', '2022-12-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(751, 'Møde Videregående Steinkjer', '2022-12-05 12:30:00', '2022-12-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(752, 'Møde Videregående Steinkjer', '2022-12-06 12:30:00', '2022-12-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(753, 'Møde Videregående Steinkjer', '2022-12-07 12:30:00', '2022-12-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(754, 'Møde Videregående Steinkjer', '2022-12-08 12:30:00', '2022-12-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24');
INSERT INTO `events` (`id`, `title`, `start`, `end`, `allDay`, `color`, `textColor`, `data`, `note`, `reminder`, `showTimeAs`, `label`, `coachName`, `resourceId`, `dataText`, `created_at`, `updated_at`) VALUES
(755, 'Møde Videregående Steinkjer', '2022-12-09 12:30:00', '2022-12-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(756, 'Møde Videregående Steinkjer', '2022-12-10 12:30:00', '2022-12-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(757, 'Møde Videregående Steinkjer', '2022-12-11 12:30:00', '2022-12-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(758, 'Møde Videregående Steinkjer', '2022-12-12 12:30:00', '2022-12-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(759, 'Møde Videregående Steinkjer', '2022-12-13 12:30:00', '2022-12-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(760, 'Møde Videregående Steinkjer', '2022-12-14 12:30:00', '2022-12-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(761, 'Møde Videregående Steinkjer', '2022-12-15 12:30:00', '2022-12-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(762, 'Møde Videregående Steinkjer', '2022-12-16 12:30:00', '2022-12-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(763, 'Møde Videregående Steinkjer', '2022-12-17 12:30:00', '2022-12-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(764, 'Møde Videregående Steinkjer', '2022-12-18 12:30:00', '2022-12-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(765, 'Møde Videregående Steinkjer', '2022-12-19 12:30:00', '2022-12-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(766, 'Møde Videregående Steinkjer', '2022-12-20 12:30:00', '2022-12-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(767, 'Møde Videregående Steinkjer', '2022-12-21 12:30:00', '2022-12-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(768, 'Møde Videregående Steinkjer', '2022-12-22 12:30:00', '2022-12-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(769, 'Møde Videregående Steinkjer', '2022-12-23 12:30:00', '2022-12-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(770, 'Møde Videregående Steinkjer', '2022-12-24 12:30:00', '2022-12-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(771, 'Møde Videregående Steinkjer', '2022-12-25 12:30:00', '2022-12-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(772, 'Møde Videregående Steinkjer', '2022-12-26 12:30:00', '2022-12-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(773, 'Møde Videregående Steinkjer', '2022-12-27 12:30:00', '2022-12-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(774, 'Møde Videregående Steinkjer', '2022-12-28 12:30:00', '2022-12-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(775, 'Møde Videregående Steinkjer', '2022-12-29 12:30:00', '2022-12-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(776, 'Møde Videregående Steinkjer', '2022-12-30 12:30:00', '2022-12-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(777, 'Møde Videregående Steinkjer', '2022-12-31 12:30:00', '2022-12-31 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(778, 'Møde Videregående Steinkjer', '2023-01-01 12:30:00', '2023-01-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:24', '2022-11-14 11:44:24'),
(779, 'Møde Videregående Steinkjer', '2023-01-02 12:30:00', '2023-01-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(780, 'Møde Videregående Steinkjer', '2023-01-03 12:30:00', '2023-01-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(781, 'Møde Videregående Steinkjer', '2023-01-04 12:30:00', '2023-01-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(782, 'Møde Videregående Steinkjer', '2023-01-05 12:30:00', '2023-01-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(783, 'Møde Videregående Steinkjer', '2023-01-06 12:30:00', '2023-01-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(784, 'Møde Videregående Steinkjer', '2023-01-07 12:30:00', '2023-01-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(785, 'Møde Videregående Steinkjer', '2023-01-08 12:30:00', '2023-01-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(786, 'Møde Videregående Steinkjer', '2023-01-09 12:30:00', '2023-01-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(787, 'Møde Videregående Steinkjer', '2023-01-10 12:30:00', '2023-01-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(788, 'Møde Videregående Steinkjer', '2023-01-11 12:30:00', '2023-01-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(789, 'Møde Videregående Steinkjer', '2023-01-12 12:30:00', '2023-01-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(790, 'Møde Videregående Steinkjer', '2023-01-13 12:30:00', '2023-01-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(791, 'Møde Videregående Steinkjer', '2023-01-14 12:30:00', '2023-01-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(792, 'Møde Videregående Steinkjer', '2023-01-15 12:30:00', '2023-01-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(793, 'Møde Videregående Steinkjer', '2023-01-16 12:30:00', '2023-01-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(794, 'Møde Videregående Steinkjer', '2023-01-17 12:30:00', '2023-01-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(795, 'Møde Videregående Steinkjer', '2023-01-18 12:30:00', '2023-01-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(796, 'Møde Videregående Steinkjer', '2023-01-19 12:30:00', '2023-01-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(797, 'Møde Videregående Steinkjer', '2023-01-20 12:30:00', '2023-01-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(798, 'Møde Videregående Steinkjer', '2023-01-21 12:30:00', '2023-01-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(799, 'Møde Videregående Steinkjer', '2023-01-22 12:30:00', '2023-01-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(800, 'Møde Videregående Steinkjer', '2023-01-23 12:30:00', '2023-01-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(801, 'Møde Videregående Steinkjer', '2023-01-24 12:30:00', '2023-01-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(802, 'Møde Videregående Steinkjer', '2023-01-25 12:30:00', '2023-01-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(803, 'Møde Videregående Steinkjer', '2023-01-26 12:30:00', '2023-01-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(804, 'Møde Videregående Steinkjer', '2023-01-27 12:30:00', '2023-01-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(805, 'Møde Videregående Steinkjer', '2023-01-28 12:30:00', '2023-01-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(806, 'Møde Videregående Steinkjer', '2023-01-29 12:30:00', '2023-01-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(807, 'Møde Videregående Steinkjer', '2023-01-30 12:30:00', '2023-01-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(808, 'Møde Videregående Steinkjer', '2023-01-31 12:30:00', '2023-01-31 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(809, 'Møde Videregående Steinkjer', '2023-02-01 12:30:00', '2023-02-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(810, 'Møde Videregående Steinkjer', '2023-02-02 12:30:00', '2023-02-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(811, 'Møde Videregående Steinkjer', '2023-02-03 12:30:00', '2023-02-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(812, 'Møde Videregående Steinkjer', '2023-02-04 12:30:00', '2023-02-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(813, 'Møde Videregående Steinkjer', '2023-02-05 12:30:00', '2023-02-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(814, 'Møde Videregående Steinkjer', '2023-02-06 12:30:00', '2023-02-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(815, 'Møde Videregående Steinkjer', '2023-02-07 12:30:00', '2023-02-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(816, 'Møde Videregående Steinkjer', '2023-02-08 12:30:00', '2023-02-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(817, 'Møde Videregående Steinkjer', '2023-02-09 12:30:00', '2023-02-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(818, 'Møde Videregående Steinkjer', '2023-02-10 12:30:00', '2023-02-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(819, 'Møde Videregående Steinkjer', '2023-02-11 12:30:00', '2023-02-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(820, 'Møde Videregående Steinkjer', '2023-02-12 12:30:00', '2023-02-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(821, 'Møde Videregående Steinkjer', '2023-02-13 12:30:00', '2023-02-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(822, 'Møde Videregående Steinkjer', '2023-02-14 12:30:00', '2023-02-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(823, 'Møde Videregående Steinkjer', '2023-02-15 12:30:00', '2023-02-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(824, 'Møde Videregående Steinkjer', '2023-02-16 12:30:00', '2023-02-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(825, 'Møde Videregående Steinkjer', '2023-02-17 12:30:00', '2023-02-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(826, 'Møde Videregående Steinkjer', '2023-02-18 12:30:00', '2023-02-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(827, 'Møde Videregående Steinkjer', '2023-02-19 12:30:00', '2023-02-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(828, 'Møde Videregående Steinkjer', '2023-02-20 12:30:00', '2023-02-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(829, 'Møde Videregående Steinkjer', '2023-02-21 12:30:00', '2023-02-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(830, 'Møde Videregående Steinkjer', '2023-02-22 12:30:00', '2023-02-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(831, 'Møde Videregående Steinkjer', '2023-02-23 12:30:00', '2023-02-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(832, 'Møde Videregående Steinkjer', '2023-02-24 12:30:00', '2023-02-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(833, 'Møde Videregående Steinkjer', '2023-02-25 12:30:00', '2023-02-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(834, 'Møde Videregående Steinkjer', '2023-02-26 12:30:00', '2023-02-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(835, 'Møde Videregående Steinkjer', '2023-02-27 12:30:00', '2023-02-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(836, 'Møde Videregående Steinkjer', '2023-02-28 12:30:00', '2023-02-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(837, 'Møde Videregående Steinkjer', '2023-03-01 12:30:00', '2023-03-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(838, 'Møde Videregående Steinkjer', '2023-03-02 12:30:00', '2023-03-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(839, 'Møde Videregående Steinkjer', '2023-03-03 12:30:00', '2023-03-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(840, 'Møde Videregående Steinkjer', '2023-03-04 12:30:00', '2023-03-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(841, 'Møde Videregående Steinkjer', '2023-03-05 12:30:00', '2023-03-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(842, 'Møde Videregående Steinkjer', '2023-03-06 12:30:00', '2023-03-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(843, 'Møde Videregående Steinkjer', '2023-03-07 12:30:00', '2023-03-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(844, 'Møde Videregående Steinkjer', '2023-03-08 12:30:00', '2023-03-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(845, 'Møde Videregående Steinkjer', '2023-03-09 12:30:00', '2023-03-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(846, 'Møde Videregående Steinkjer', '2023-03-10 12:30:00', '2023-03-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(847, 'Møde Videregående Steinkjer', '2023-03-11 12:30:00', '2023-03-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(848, 'Møde Videregående Steinkjer', '2023-03-12 12:30:00', '2023-03-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(849, 'Møde Videregående Steinkjer', '2023-03-13 12:30:00', '2023-03-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(850, 'Møde Videregående Steinkjer', '2023-03-14 12:30:00', '2023-03-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(851, 'Møde Videregående Steinkjer', '2023-03-15 12:30:00', '2023-03-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(852, 'Møde Videregående Steinkjer', '2023-03-16 12:30:00', '2023-03-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(853, 'Møde Videregående Steinkjer', '2023-03-17 12:30:00', '2023-03-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(854, 'Møde Videregående Steinkjer', '2023-03-18 12:30:00', '2023-03-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(855, 'Møde Videregående Steinkjer', '2023-03-19 12:30:00', '2023-03-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(856, 'Møde Videregående Steinkjer', '2023-03-20 12:30:00', '2023-03-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(857, 'Møde Videregående Steinkjer', '2023-03-21 12:30:00', '2023-03-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(858, 'Møde Videregående Steinkjer', '2023-03-22 12:30:00', '2023-03-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(859, 'Møde Videregående Steinkjer', '2023-03-23 12:30:00', '2023-03-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(860, 'Møde Videregående Steinkjer', '2023-03-24 12:30:00', '2023-03-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(861, 'Møde Videregående Steinkjer', '2023-03-25 12:30:00', '2023-03-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(862, 'Møde Videregående Steinkjer', '2023-03-26 12:30:00', '2023-03-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(863, 'Møde Videregående Steinkjer', '2023-03-27 12:30:00', '2023-03-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(864, 'Møde Videregående Steinkjer', '2023-03-28 12:30:00', '2023-03-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(865, 'Møde Videregående Steinkjer', '2023-03-29 12:30:00', '2023-03-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(866, 'Møde Videregående Steinkjer', '2023-03-30 12:30:00', '2023-03-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(867, 'Møde Videregående Steinkjer', '2023-03-31 12:30:00', '2023-03-31 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(868, 'Møde Videregående Steinkjer', '2023-04-01 12:30:00', '2023-04-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(869, 'Møde Videregående Steinkjer', '2023-04-02 12:30:00', '2023-04-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(870, 'Møde Videregående Steinkjer', '2023-04-03 12:30:00', '2023-04-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(871, 'Møde Videregående Steinkjer', '2023-04-04 12:30:00', '2023-04-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(872, 'Møde Videregående Steinkjer', '2023-04-05 12:30:00', '2023-04-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(873, 'Møde Videregående Steinkjer', '2023-04-06 12:30:00', '2023-04-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(874, 'Møde Videregående Steinkjer', '2023-04-07 12:30:00', '2023-04-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(875, 'Møde Videregående Steinkjer', '2023-04-08 12:30:00', '2023-04-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(876, 'Møde Videregående Steinkjer', '2023-04-09 12:30:00', '2023-04-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(877, 'Møde Videregående Steinkjer', '2023-04-10 12:30:00', '2023-04-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(878, 'Møde Videregående Steinkjer', '2023-04-11 12:30:00', '2023-04-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(879, 'Møde Videregående Steinkjer', '2023-04-12 12:30:00', '2023-04-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(880, 'Møde Videregående Steinkjer', '2023-04-13 12:30:00', '2023-04-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(881, 'Møde Videregående Steinkjer', '2023-04-14 12:30:00', '2023-04-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(882, 'Møde Videregående Steinkjer', '2023-04-15 12:30:00', '2023-04-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(883, 'Møde Videregående Steinkjer', '2023-04-16 12:30:00', '2023-04-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(884, 'Møde Videregående Steinkjer', '2023-04-17 12:30:00', '2023-04-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(885, 'Møde Videregående Steinkjer', '2023-04-18 12:30:00', '2023-04-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(886, 'Møde Videregående Steinkjer', '2023-04-19 12:30:00', '2023-04-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(887, 'Møde Videregående Steinkjer', '2023-04-20 12:30:00', '2023-04-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(888, 'Møde Videregående Steinkjer', '2023-04-21 12:30:00', '2023-04-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(889, 'Møde Videregående Steinkjer', '2023-04-22 12:30:00', '2023-04-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(890, 'Møde Videregående Steinkjer', '2023-04-23 12:30:00', '2023-04-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(891, 'Møde Videregående Steinkjer', '2023-04-24 12:30:00', '2023-04-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(892, 'Møde Videregående Steinkjer', '2023-04-25 12:30:00', '2023-04-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(893, 'Møde Videregående Steinkjer', '2023-04-26 12:30:00', '2023-04-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(894, 'Møde Videregående Steinkjer', '2023-04-27 12:30:00', '2023-04-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(895, 'Møde Videregående Steinkjer', '2023-04-28 12:30:00', '2023-04-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(896, 'Møde Videregående Steinkjer', '2023-04-29 12:30:00', '2023-04-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(897, 'Møde Videregående Steinkjer', '2023-04-30 12:30:00', '2023-04-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(898, 'Møde Videregående Steinkjer', '2023-05-01 12:30:00', '2023-05-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(899, 'Møde Videregående Steinkjer', '2023-05-02 12:30:00', '2023-05-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(900, 'Møde Videregående Steinkjer', '2023-05-03 12:30:00', '2023-05-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(901, 'Møde Videregående Steinkjer', '2023-05-04 12:30:00', '2023-05-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(902, 'Møde Videregående Steinkjer', '2023-05-05 12:30:00', '2023-05-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(903, 'Møde Videregående Steinkjer', '2023-05-06 12:30:00', '2023-05-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(904, 'Møde Videregående Steinkjer', '2023-05-07 12:30:00', '2023-05-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(905, 'Møde Videregående Steinkjer', '2023-05-08 12:30:00', '2023-05-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(906, 'Møde Videregående Steinkjer', '2023-05-09 12:30:00', '2023-05-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(907, 'Møde Videregående Steinkjer', '2023-05-10 12:30:00', '2023-05-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(908, 'Møde Videregående Steinkjer', '2023-05-11 12:30:00', '2023-05-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(909, 'Møde Videregående Steinkjer', '2023-05-12 12:30:00', '2023-05-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(910, 'Møde Videregående Steinkjer', '2023-05-13 12:30:00', '2023-05-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(911, 'Møde Videregående Steinkjer', '2023-05-14 12:30:00', '2023-05-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(912, 'Møde Videregående Steinkjer', '2023-05-15 12:30:00', '2023-05-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(913, 'Møde Videregående Steinkjer', '2023-05-16 12:30:00', '2023-05-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(914, 'Møde Videregående Steinkjer', '2023-05-17 12:30:00', '2023-05-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(915, 'Møde Videregående Steinkjer', '2023-05-18 12:30:00', '2023-05-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(916, 'Møde Videregående Steinkjer', '2023-05-19 12:30:00', '2023-05-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(917, 'Møde Videregående Steinkjer', '2023-05-20 12:30:00', '2023-05-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(918, 'Møde Videregående Steinkjer', '2023-05-21 12:30:00', '2023-05-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(919, 'Møde Videregående Steinkjer', '2023-05-22 12:30:00', '2023-05-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(920, 'Møde Videregående Steinkjer', '2023-05-23 12:30:00', '2023-05-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(921, 'Møde Videregående Steinkjer', '2023-05-24 12:30:00', '2023-05-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(922, 'Møde Videregående Steinkjer', '2023-05-25 12:30:00', '2023-05-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(923, 'Møde Videregående Steinkjer', '2023-05-26 12:30:00', '2023-05-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(924, 'Møde Videregående Steinkjer', '2023-05-27 12:30:00', '2023-05-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(925, 'Møde Videregående Steinkjer', '2023-05-28 12:30:00', '2023-05-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(926, 'Møde Videregående Steinkjer', '2023-05-29 12:30:00', '2023-05-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(927, 'Møde Videregående Steinkjer', '2023-05-30 12:30:00', '2023-05-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(928, 'Møde Videregående Steinkjer', '2023-05-31 12:30:00', '2023-05-31 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(929, 'Møde Videregående Steinkjer', '2023-06-01 12:30:00', '2023-06-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(930, 'Møde Videregående Steinkjer', '2023-06-02 12:30:00', '2023-06-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(931, 'Møde Videregående Steinkjer', '2023-06-03 12:30:00', '2023-06-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(932, 'Møde Videregående Steinkjer', '2023-06-04 12:30:00', '2023-06-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(933, 'Møde Videregående Steinkjer', '2023-06-05 12:30:00', '2023-06-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(934, 'Møde Videregående Steinkjer', '2023-06-06 12:30:00', '2023-06-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(935, 'Møde Videregående Steinkjer', '2023-06-07 12:30:00', '2023-06-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(936, 'Møde Videregående Steinkjer', '2023-06-08 12:30:00', '2023-06-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(937, 'Møde Videregående Steinkjer', '2023-06-09 12:30:00', '2023-06-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(938, 'Møde Videregående Steinkjer', '2023-06-10 12:30:00', '2023-06-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(939, 'Møde Videregående Steinkjer', '2023-06-11 12:30:00', '2023-06-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(940, 'Møde Videregående Steinkjer', '2023-06-12 12:30:00', '2023-06-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(941, 'Møde Videregående Steinkjer', '2023-06-13 12:30:00', '2023-06-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(942, 'Møde Videregående Steinkjer', '2023-06-14 12:30:00', '2023-06-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(943, 'Møde Videregående Steinkjer', '2023-06-15 12:30:00', '2023-06-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(944, 'Møde Videregående Steinkjer', '2023-06-16 12:30:00', '2023-06-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(945, 'Møde Videregående Steinkjer', '2023-06-17 12:30:00', '2023-06-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(946, 'Møde Videregående Steinkjer', '2023-06-18 12:30:00', '2023-06-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(947, 'Møde Videregående Steinkjer', '2023-06-19 12:30:00', '2023-06-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(948, 'Møde Videregående Steinkjer', '2023-06-20 12:30:00', '2023-06-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(949, 'Møde Videregående Steinkjer', '2023-06-21 12:30:00', '2023-06-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(950, 'Møde Videregående Steinkjer', '2023-06-22 12:30:00', '2023-06-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(951, 'Møde Videregående Steinkjer', '2023-06-23 12:30:00', '2023-06-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(952, 'Møde Videregående Steinkjer', '2023-06-24 12:30:00', '2023-06-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(953, 'Møde Videregående Steinkjer', '2023-06-25 12:30:00', '2023-06-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(954, 'Møde Videregående Steinkjer', '2023-06-26 12:30:00', '2023-06-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(955, 'Møde Videregående Steinkjer', '2023-06-27 12:30:00', '2023-06-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(956, 'Møde Videregående Steinkjer', '2023-06-28 12:30:00', '2023-06-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(957, 'Møde Videregående Steinkjer', '2023-06-29 12:30:00', '2023-06-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(958, 'Møde Videregående Steinkjer', '2023-06-30 12:30:00', '2023-06-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(959, 'Møde Videregående Steinkjer', '2023-07-01 12:30:00', '2023-07-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(960, 'Møde Videregående Steinkjer', '2023-07-02 12:30:00', '2023-07-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(961, 'Møde Videregående Steinkjer', '2023-07-03 12:30:00', '2023-07-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(962, 'Møde Videregående Steinkjer', '2023-07-04 12:30:00', '2023-07-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(963, 'Møde Videregående Steinkjer', '2023-07-05 12:30:00', '2023-07-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(964, 'Møde Videregående Steinkjer', '2023-07-06 12:30:00', '2023-07-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(965, 'Møde Videregående Steinkjer', '2023-07-07 12:30:00', '2023-07-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(966, 'Møde Videregående Steinkjer', '2023-07-08 12:30:00', '2023-07-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(967, 'Møde Videregående Steinkjer', '2023-07-09 12:30:00', '2023-07-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(968, 'Møde Videregående Steinkjer', '2023-07-10 12:30:00', '2023-07-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(969, 'Møde Videregående Steinkjer', '2023-07-11 12:30:00', '2023-07-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(970, 'Møde Videregående Steinkjer', '2023-07-12 12:30:00', '2023-07-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(971, 'Møde Videregående Steinkjer', '2023-07-13 12:30:00', '2023-07-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(972, 'Møde Videregående Steinkjer', '2023-07-14 12:30:00', '2023-07-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(973, 'Møde Videregående Steinkjer', '2023-07-15 12:30:00', '2023-07-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(974, 'Møde Videregående Steinkjer', '2023-07-16 12:30:00', '2023-07-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(975, 'Møde Videregående Steinkjer', '2023-07-17 12:30:00', '2023-07-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(976, 'Møde Videregående Steinkjer', '2023-07-18 12:30:00', '2023-07-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(977, 'Møde Videregående Steinkjer', '2023-07-19 12:30:00', '2023-07-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(978, 'Møde Videregående Steinkjer', '2023-07-20 12:30:00', '2023-07-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(979, 'Møde Videregående Steinkjer', '2023-07-21 12:30:00', '2023-07-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(980, 'Møde Videregående Steinkjer', '2023-07-22 12:30:00', '2023-07-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(981, 'Møde Videregående Steinkjer', '2023-07-23 12:30:00', '2023-07-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(982, 'Møde Videregående Steinkjer', '2023-07-24 12:30:00', '2023-07-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:25', '2022-11-14 11:44:25'),
(983, 'Møde Videregående Steinkjer', '2023-07-25 12:30:00', '2023-07-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(984, 'Møde Videregående Steinkjer', '2023-07-26 12:30:00', '2023-07-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(985, 'Møde Videregående Steinkjer', '2023-07-27 12:30:00', '2023-07-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(986, 'Møde Videregående Steinkjer', '2023-07-28 12:30:00', '2023-07-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(987, 'Møde Videregående Steinkjer', '2023-07-29 12:30:00', '2023-07-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(988, 'Møde Videregående Steinkjer', '2023-07-30 12:30:00', '2023-07-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(989, 'Møde Videregående Steinkjer', '2023-07-31 12:30:00', '2023-07-31 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(990, 'Møde Videregående Steinkjer', '2023-08-01 12:30:00', '2023-08-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(991, 'Møde Videregående Steinkjer', '2023-08-02 12:30:00', '2023-08-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(992, 'Møde Videregående Steinkjer', '2023-08-03 12:30:00', '2023-08-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(993, 'Møde Videregående Steinkjer', '2023-08-04 12:30:00', '2023-08-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(994, 'Møde Videregående Steinkjer', '2023-08-05 12:30:00', '2023-08-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26');
INSERT INTO `events` (`id`, `title`, `start`, `end`, `allDay`, `color`, `textColor`, `data`, `note`, `reminder`, `showTimeAs`, `label`, `coachName`, `resourceId`, `dataText`, `created_at`, `updated_at`) VALUES
(995, 'Møde Videregående Steinkjer', '2023-08-06 12:30:00', '2023-08-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(996, 'Møde Videregående Steinkjer', '2023-08-07 12:30:00', '2023-08-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(997, 'Møde Videregående Steinkjer', '2023-08-08 12:30:00', '2023-08-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(998, 'Møde Videregående Steinkjer', '2023-08-09 12:30:00', '2023-08-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(999, 'Møde Videregående Steinkjer', '2023-08-10 12:30:00', '2023-08-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1000, 'Møde Videregående Steinkjer', '2023-08-11 12:30:00', '2023-08-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1001, 'Møde Videregående Steinkjer', '2023-08-12 12:30:00', '2023-08-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1002, 'Møde Videregående Steinkjer', '2023-08-13 12:30:00', '2023-08-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1003, 'Møde Videregående Steinkjer', '2023-08-14 12:30:00', '2023-08-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1004, 'Møde Videregående Steinkjer', '2023-08-15 12:30:00', '2023-08-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1005, 'Møde Videregående Steinkjer', '2023-08-16 12:30:00', '2023-08-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1006, 'Møde Videregående Steinkjer', '2023-08-17 12:30:00', '2023-08-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1007, 'Møde Videregående Steinkjer', '2023-08-18 12:30:00', '2023-08-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1008, 'Møde Videregående Steinkjer', '2023-08-19 12:30:00', '2023-08-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1009, 'Møde Videregående Steinkjer', '2023-08-20 12:30:00', '2023-08-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1010, 'Møde Videregående Steinkjer', '2023-08-21 12:30:00', '2023-08-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1011, 'Møde Videregående Steinkjer', '2023-08-22 12:30:00', '2023-08-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1012, 'Møde Videregående Steinkjer', '2023-08-23 12:30:00', '2023-08-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1013, 'Møde Videregående Steinkjer', '2023-08-24 12:30:00', '2023-08-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1014, 'Møde Videregående Steinkjer', '2023-08-25 12:30:00', '2023-08-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1015, 'Møde Videregående Steinkjer', '2023-08-26 12:30:00', '2023-08-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1016, 'Møde Videregående Steinkjer', '2023-08-27 12:30:00', '2023-08-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1017, 'Møde Videregående Steinkjer', '2023-08-28 12:30:00', '2023-08-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1018, 'Møde Videregående Steinkjer', '2023-08-29 12:30:00', '2023-08-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1019, 'Møde Videregående Steinkjer', '2023-08-30 12:30:00', '2023-08-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1020, 'Møde Videregående Steinkjer', '2023-08-31 12:30:00', '2023-08-31 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1021, 'Møde Videregående Steinkjer', '2023-09-01 12:30:00', '2023-09-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1022, 'Møde Videregående Steinkjer', '2023-09-02 12:30:00', '2023-09-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1023, 'Møde Videregående Steinkjer', '2023-09-03 12:30:00', '2023-09-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1024, 'Møde Videregående Steinkjer', '2023-09-04 12:30:00', '2023-09-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1025, 'Møde Videregående Steinkjer', '2023-09-05 12:30:00', '2023-09-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1026, 'Møde Videregående Steinkjer', '2023-09-06 12:30:00', '2023-09-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1027, 'Møde Videregående Steinkjer', '2023-09-07 12:30:00', '2023-09-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1028, 'Møde Videregående Steinkjer', '2023-09-08 12:30:00', '2023-09-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1029, 'Møde Videregående Steinkjer', '2023-09-09 12:30:00', '2023-09-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1030, 'Møde Videregående Steinkjer', '2023-09-10 12:30:00', '2023-09-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1031, 'Møde Videregående Steinkjer', '2023-09-11 12:30:00', '2023-09-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1032, 'Møde Videregående Steinkjer', '2023-09-12 12:30:00', '2023-09-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1033, 'Møde Videregående Steinkjer', '2023-09-13 12:30:00', '2023-09-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1034, 'Møde Videregående Steinkjer', '2023-09-14 12:30:00', '2023-09-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1035, 'Møde Videregående Steinkjer', '2023-09-15 12:30:00', '2023-09-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1036, 'Møde Videregående Steinkjer', '2023-09-16 12:30:00', '2023-09-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1037, 'Møde Videregående Steinkjer', '2023-09-17 12:30:00', '2023-09-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1038, 'Møde Videregående Steinkjer', '2023-09-18 12:30:00', '2023-09-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1039, 'Møde Videregående Steinkjer', '2023-09-19 12:30:00', '2023-09-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1040, 'Møde Videregående Steinkjer', '2023-09-20 12:30:00', '2023-09-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1041, 'Møde Videregående Steinkjer', '2023-09-21 12:30:00', '2023-09-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1042, 'Møde Videregående Steinkjer', '2023-09-22 12:30:00', '2023-09-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1043, 'Møde Videregående Steinkjer', '2023-09-23 12:30:00', '2023-09-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1044, 'Møde Videregående Steinkjer', '2023-09-24 12:30:00', '2023-09-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1045, 'Møde Videregående Steinkjer', '2023-09-25 12:30:00', '2023-09-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1046, 'Møde Videregående Steinkjer', '2023-09-26 12:30:00', '2023-09-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1047, 'Møde Videregående Steinkjer', '2023-09-27 12:30:00', '2023-09-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1048, 'Møde Videregående Steinkjer', '2023-09-28 12:30:00', '2023-09-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1049, 'Møde Videregående Steinkjer', '2023-09-29 12:30:00', '2023-09-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1050, 'Møde Videregående Steinkjer', '2023-09-30 12:30:00', '2023-09-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1051, 'Møde Videregående Steinkjer', '2023-10-01 12:30:00', '2023-10-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1052, 'Møde Videregående Steinkjer', '2023-10-02 12:30:00', '2023-10-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1053, 'Møde Videregående Steinkjer', '2023-10-03 12:30:00', '2023-10-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1054, 'Møde Videregående Steinkjer', '2023-10-04 12:30:00', '2023-10-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1055, 'Møde Videregående Steinkjer', '2023-10-05 12:30:00', '2023-10-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1056, 'Møde Videregående Steinkjer', '2023-10-06 12:30:00', '2023-10-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1057, 'Møde Videregående Steinkjer', '2023-10-07 12:30:00', '2023-10-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1058, 'Møde Videregående Steinkjer', '2023-10-08 12:30:00', '2023-10-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1059, 'Møde Videregående Steinkjer', '2023-10-09 12:30:00', '2023-10-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1060, 'Møde Videregående Steinkjer', '2023-10-10 12:30:00', '2023-10-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1061, 'Møde Videregående Steinkjer', '2023-10-11 12:30:00', '2023-10-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1062, 'Møde Videregående Steinkjer', '2023-10-12 12:30:00', '2023-10-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1063, 'Møde Videregående Steinkjer', '2023-10-13 12:30:00', '2023-10-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1064, 'Møde Videregående Steinkjer', '2023-10-14 12:30:00', '2023-10-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1065, 'Møde Videregående Steinkjer', '2023-10-15 12:30:00', '2023-10-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1066, 'Møde Videregående Steinkjer', '2023-10-16 12:30:00', '2023-10-16 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1067, 'Møde Videregående Steinkjer', '2023-10-17 12:30:00', '2023-10-17 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1068, 'Møde Videregående Steinkjer', '2023-10-18 12:30:00', '2023-10-18 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1069, 'Møde Videregående Steinkjer', '2023-10-19 12:30:00', '2023-10-19 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1070, 'Møde Videregående Steinkjer', '2023-10-20 12:30:00', '2023-10-20 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1071, 'Møde Videregående Steinkjer', '2023-10-21 12:30:00', '2023-10-21 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1072, 'Møde Videregående Steinkjer', '2023-10-22 12:30:00', '2023-10-22 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1073, 'Møde Videregående Steinkjer', '2023-10-23 12:30:00', '2023-10-23 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1074, 'Møde Videregående Steinkjer', '2023-10-24 12:30:00', '2023-10-24 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1075, 'Møde Videregående Steinkjer', '2023-10-25 12:30:00', '2023-10-25 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1076, 'Møde Videregående Steinkjer', '2023-10-26 12:30:00', '2023-10-26 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1077, 'Møde Videregående Steinkjer', '2023-10-27 12:30:00', '2023-10-27 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1078, 'Møde Videregående Steinkjer', '2023-10-28 12:30:00', '2023-10-28 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1079, 'Møde Videregående Steinkjer', '2023-10-29 12:30:00', '2023-10-29 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1080, 'Møde Videregående Steinkjer', '2023-10-30 12:30:00', '2023-10-30 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1081, 'Møde Videregående Steinkjer', '2023-10-31 12:30:00', '2023-10-31 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1082, 'Møde Videregående Steinkjer', '2023-11-01 12:30:00', '2023-11-01 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1083, 'Møde Videregående Steinkjer', '2023-11-02 12:30:00', '2023-11-02 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1084, 'Møde Videregående Steinkjer', '2023-11-03 12:30:00', '2023-11-03 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1085, 'Møde Videregående Steinkjer', '2023-11-04 12:30:00', '2023-11-04 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1086, 'Møde Videregående Steinkjer', '2023-11-05 12:30:00', '2023-11-05 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1087, 'Møde Videregående Steinkjer', '2023-11-06 12:30:00', '2023-11-06 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1088, 'Møde Videregående Steinkjer', '2023-11-07 12:30:00', '2023-11-07 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1089, 'Møde Videregående Steinkjer', '2023-11-08 12:30:00', '2023-11-08 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1090, 'Møde Videregående Steinkjer', '2023-11-09 12:30:00', '2023-11-09 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1091, 'Møde Videregående Steinkjer', '2023-11-10 12:30:00', '2023-11-10 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1092, 'Møde Videregående Steinkjer', '2023-11-11 12:30:00', '2023-11-11 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1093, 'Møde Videregående Steinkjer', '2023-11-12 12:30:00', '2023-11-12 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1094, 'Møde Videregående Steinkjer', '2023-11-13 12:30:00', '2023-11-13 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1095, 'Møde Videregående Steinkjer', '2023-11-14 12:30:00', '2023-11-14 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1096, 'Møde Videregående Steinkjer', '2023-11-15 12:30:00', '2023-11-15 13:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:44:26', '2022-11-14 11:44:26'),
(1097, 'Møde Videregående Steinkjer', '2022-11-15 12:30:00', '2022-11-15 14:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'preparations', 'Lasse', 'any', NULL, '2022-11-14 11:46:19', '2022-11-14 11:46:19'),
(1099, 'Ældretime', '2022-11-17 10:00:00', '2022-11-17 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:31', '2022-11-14 11:49:31'),
(1104, 'Ældretime', '2022-11-22 10:00:00', '2022-11-22 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:31', '2022-11-14 11:49:31'),
(1106, 'Ældretime', '2022-11-24 10:00:00', '2022-11-24 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:31', '2022-11-14 11:49:31'),
(1111, 'Ældretime', '2022-11-29 10:00:00', '2022-11-29 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:31', '2022-11-14 11:49:31'),
(1118, 'Ældretime', '2022-12-06 10:00:00', '2022-12-06 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1125, 'Ældretime', '2022-12-13 10:00:00', '2022-12-13 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1132, 'Ældretime', '2022-12-20 10:00:00', '2022-12-20 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1134, 'Ældretime', '2022-12-22 10:00:00', '2022-12-22 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1139, 'Ældretime', '2022-12-27 10:00:00', '2022-12-27 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1141, 'Ældretime', '2022-12-29 10:00:00', '2022-12-29 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1146, 'Ældretime', '2023-01-03 10:00:00', '2023-01-03 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1148, 'Ældretime', '2023-01-05 10:00:00', '2023-01-05 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1153, 'Ældretime', '2023-01-10 10:00:00', '2023-01-10 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1155, 'Ældretime', '2023-01-12 10:00:00', '2023-01-12 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1160, 'Ældretime', '2023-01-17 10:00:00', '2023-01-17 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1162, 'Ældretime', '2023-01-19 10:00:00', '2023-01-19 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1167, 'Ældretime', '2023-01-24 10:00:00', '2023-01-24 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1169, 'Ældretime', '2023-01-26 10:00:00', '2023-01-26 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1174, 'Ældretime', '2023-01-31 10:00:00', '2023-01-31 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1176, 'Ældretime', '2023-02-02 10:00:00', '2023-02-02 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1181, 'Ældretime', '2023-02-07 10:00:00', '2023-02-07 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1183, 'Ældretime', '2023-02-09 10:00:00', '2023-02-09 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1188, 'Ældretime', '2023-02-14 10:00:00', '2023-02-14 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1190, 'Ældretime', '2023-02-16 10:00:00', '2023-02-16 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:32', '2022-11-14 11:49:32'),
(1195, 'Ældretime', '2023-02-21 10:00:00', '2023-02-21 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1197, 'Ældretime', '2023-02-23 10:00:00', '2023-02-23 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1202, 'Ældretime', '2023-02-28 10:00:00', '2023-02-28 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1204, 'Ældretime', '2023-03-02 10:00:00', '2023-03-02 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1209, 'Ældretime', '2023-03-07 10:00:00', '2023-03-07 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1211, 'Ældretime', '2023-03-09 10:00:00', '2023-03-09 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1216, 'Ældretime', '2023-03-14 10:00:00', '2023-03-14 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1218, 'Ældretime', '2023-03-16 10:00:00', '2023-03-16 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1223, 'Ældretime', '2023-03-21 10:00:00', '2023-03-21 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1225, 'Ældretime', '2023-03-23 10:00:00', '2023-03-23 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1230, 'Ældretime', '2023-03-28 10:00:00', '2023-03-28 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1232, 'Ældretime', '2023-03-30 10:00:00', '2023-03-30 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1237, 'Ældretime', '2023-04-04 10:00:00', '2023-04-04 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1239, 'Ældretime', '2023-04-06 10:00:00', '2023-04-06 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1244, 'Ældretime', '2023-04-11 10:00:00', '2023-04-11 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1246, 'Ældretime', '2023-04-13 10:00:00', '2023-04-13 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1251, 'Ældretime', '2023-04-18 10:00:00', '2023-04-18 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1253, 'Ældretime', '2023-04-20 10:00:00', '2023-04-20 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1258, 'Ældretime', '2023-04-25 10:00:00', '2023-04-25 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1260, 'Ældretime', '2023-04-27 10:00:00', '2023-04-27 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1265, 'Ældretime', '2023-05-02 10:00:00', '2023-05-02 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1267, 'Ældretime', '2023-05-04 10:00:00', '2023-05-04 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1272, 'Ældretime', '2023-05-09 10:00:00', '2023-05-09 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1274, 'Ældretime', '2023-05-11 10:00:00', '2023-05-11 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1279, 'Ældretime', '2023-05-16 10:00:00', '2023-05-16 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:33', '2022-11-14 11:49:33'),
(1281, 'Ældretime', '2023-05-18 10:00:00', '2023-05-18 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1286, 'Ældretime', '2023-05-23 10:00:00', '2023-05-23 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1288, 'Ældretime', '2023-05-25 10:00:00', '2023-05-25 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1293, 'Ældretime', '2023-05-30 10:00:00', '2023-05-30 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1295, 'Ældretime', '2023-06-01 10:00:00', '2023-06-01 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1300, 'Ældretime', '2023-06-06 10:00:00', '2023-06-06 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1302, 'Ældretime', '2023-06-08 10:00:00', '2023-06-08 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1307, 'Ældretime', '2023-06-13 10:00:00', '2023-06-13 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1309, 'Ældretime', '2023-06-15 10:00:00', '2023-06-15 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1314, 'Ældretime', '2023-06-20 10:00:00', '2023-06-20 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1316, 'Ældretime', '2023-06-22 10:00:00', '2023-06-22 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1321, 'Ældretime', '2023-06-27 10:00:00', '2023-06-27 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1323, 'Ældretime', '2023-06-29 10:00:00', '2023-06-29 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1328, 'Ældretime', '2023-07-04 10:00:00', '2023-07-04 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1330, 'Ældretime', '2023-07-06 10:00:00', '2023-07-06 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1335, 'Ældretime', '2023-07-11 10:00:00', '2023-07-11 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1337, 'Ældretime', '2023-07-13 10:00:00', '2023-07-13 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1342, 'Ældretime', '2023-07-18 10:00:00', '2023-07-18 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1344, 'Ældretime', '2023-07-20 10:00:00', '2023-07-20 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1349, 'Ældretime', '2023-07-25 10:00:00', '2023-07-25 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1351, 'Ældretime', '2023-07-27 10:00:00', '2023-07-27 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1356, 'Ældretime', '2023-08-01 10:00:00', '2023-08-01 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1358, 'Ældretime', '2023-08-03 10:00:00', '2023-08-03 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1363, 'Ældretime', '2023-08-08 10:00:00', '2023-08-08 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1365, 'Ældretime', '2023-08-10 10:00:00', '2023-08-10 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1370, 'Ældretime', '2023-08-15 10:00:00', '2023-08-15 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1372, 'Ældretime', '2023-08-17 10:00:00', '2023-08-17 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1377, 'Ældretime', '2023-08-22 10:00:00', '2023-08-22 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1379, 'Ældretime', '2023-08-24 10:00:00', '2023-08-24 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:34', '2022-11-14 11:49:34'),
(1384, 'Ældretime', '2023-08-29 10:00:00', '2023-08-29 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1386, 'Ældretime', '2023-08-31 10:00:00', '2023-08-31 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1391, 'Ældretime', '2023-09-05 10:00:00', '2023-09-05 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1393, 'Ældretime', '2023-09-07 10:00:00', '2023-09-07 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1398, 'Ældretime', '2023-09-12 10:00:00', '2023-09-12 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1400, 'Ældretime', '2023-09-14 10:00:00', '2023-09-14 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1405, 'Ældretime', '2023-09-19 10:00:00', '2023-09-19 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1407, 'Ældretime', '2023-09-21 10:00:00', '2023-09-21 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1412, 'Ældretime', '2023-09-26 10:00:00', '2023-09-26 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1414, 'Ældretime', '2023-09-28 10:00:00', '2023-09-28 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1419, 'Ældretime', '2023-10-03 10:00:00', '2023-10-03 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1421, 'Ældretime', '2023-10-05 10:00:00', '2023-10-05 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1426, 'Ældretime', '2023-10-10 10:00:00', '2023-10-10 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1428, 'Ældretime', '2023-10-12 10:00:00', '2023-10-12 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1433, 'Ældretime', '2023-10-17 10:00:00', '2023-10-17 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1435, 'Ældretime', '2023-10-19 10:00:00', '2023-10-19 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1440, 'Ældretime', '2023-10-24 10:00:00', '2023-10-24 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1442, 'Ældretime', '2023-10-26 10:00:00', '2023-10-26 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1447, 'Ældretime', '2023-10-31 10:00:00', '2023-10-31 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1449, 'Ældretime', '2023-11-02 10:00:00', '2023-11-02 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1454, 'Ældretime', '2023-11-07 10:00:00', '2023-11-07 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1456, 'Ældretime', '2023-11-09 10:00:00', '2023-11-09 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:35', '2022-11-14 11:49:35'),
(1461, 'Ældretime', '2023-11-14 10:00:00', '2023-11-14 11:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'group_training', 'Lasse Lassen', '5', NULL, '2022-11-14 11:49:36', '2022-11-14 11:49:36'),
(1469, 'Treningsvejledning (AK)', '2022-12-05 17:00:00', '2022-12-05 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', '70', NULL, '2022-11-18 08:04:52', '2022-11-21 16:11:19'),
(1476, 'Treningsvejledning (AK)', '2022-12-12 17:00:00', '2022-12-12 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:52', '2022-11-18 08:16:35'),
(1483, 'Treningsvejledning (AK)', '2022-12-19 17:00:00', '2022-12-19 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:52', '2022-11-18 08:16:16'),
(1490, 'Treningsvejledning', '2022-12-26 17:00:00', '2022-12-26 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:52', '2022-11-18 08:04:52'),
(1497, 'Treningsvejledning', '2023-01-02 17:00:00', '2023-01-02 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:52', '2022-11-18 08:04:52'),
(1504, 'Treningsvejledning', '2023-01-09 17:00:00', '2023-01-09 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:52', '2022-11-18 08:04:52'),
(1511, 'Treningsvejledning', '2023-01-16 17:00:00', '2023-01-16 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:52', '2022-11-18 08:04:52'),
(1518, 'Treningsvejledning', '2023-01-23 17:00:00', '2023-01-23 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1525, 'Treningsvejledning', '2023-01-30 17:00:00', '2023-01-30 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1532, 'Treningsvejledning', '2023-02-06 17:00:00', '2023-02-06 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1539, 'Treningsvejledning', '2023-02-13 17:00:00', '2023-02-13 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1546, 'Treningsvejledning', '2023-02-20 17:00:00', '2023-02-20 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1553, 'Treningsvejledning', '2023-02-27 17:00:00', '2023-02-27 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1560, 'Treningsvejledning', '2023-03-06 17:00:00', '2023-03-06 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1567, 'Treningsvejledning', '2023-03-13 17:00:00', '2023-03-13 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1574, 'Treningsvejledning', '2023-03-20 17:00:00', '2023-03-20 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1581, 'Treningsvejledning', '2023-03-27 17:00:00', '2023-03-27 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1588, 'Treningsvejledning', '2023-04-03 17:00:00', '2023-04-03 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1595, 'Treningsvejledning', '2023-04-10 17:00:00', '2023-04-10 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1602, 'Treningsvejledning', '2023-04-17 17:00:00', '2023-04-17 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1609, 'Treningsvejledning', '2023-04-24 17:00:00', '2023-04-24 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1616, 'Treningsvejledning', '2023-05-01 17:00:00', '2023-05-01 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1623, 'Treningsvejledning', '2023-05-08 17:00:00', '2023-05-08 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1630, 'Treningsvejledning', '2023-05-15 17:00:00', '2023-05-15 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1637, 'Treningsvejledning', '2023-05-22 17:00:00', '2023-05-22 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1644, 'Treningsvejledning', '2023-05-29 17:00:00', '2023-05-29 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1651, 'Treningsvejledning', '2023-06-05 17:00:00', '2023-06-05 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1658, 'Treningsvejledning', '2023-06-12 17:00:00', '2023-06-12 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1665, 'Treningsvejledning', '2023-06-19 17:00:00', '2023-06-19 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1672, 'Treningsvejledning', '2023-06-26 17:00:00', '2023-06-26 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1679, 'Treningsvejledning', '2023-07-03 17:00:00', '2023-07-03 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1686, 'Treningsvejledning', '2023-07-10 17:00:00', '2023-07-10 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1693, 'Treningsvejledning', '2023-07-17 17:00:00', '2023-07-17 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1700, 'Treningsvejledning', '2023-07-24 17:00:00', '2023-07-24 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1707, 'Treningsvejledning', '2023-07-31 17:00:00', '2023-07-31 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1714, 'Treningsvejledning', '2023-08-07 17:00:00', '2023-08-07 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1721, 'Treningsvejledning', '2023-08-14 17:00:00', '2023-08-14 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1728, 'Treningsvejledning', '2023-08-21 17:00:00', '2023-08-21 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1735, 'Treningsvejledning', '2023-08-28 17:00:00', '2023-08-28 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1742, 'Treningsvejledning', '2023-09-04 17:00:00', '2023-09-04 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1749, 'Treningsvejledning', '2023-09-11 17:00:00', '2023-09-11 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1756, 'Treningsvejledning', '2023-09-18 17:00:00', '2023-09-18 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1763, 'Treningsvejledning', '2023-09-25 17:00:00', '2023-09-25 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53');
INSERT INTO `events` (`id`, `title`, `start`, `end`, `allDay`, `color`, `textColor`, `data`, `note`, `reminder`, `showTimeAs`, `label`, `coachName`, `resourceId`, `dataText`, `created_at`, `updated_at`) VALUES
(1770, 'Treningsvejledning', '2023-10-02 17:00:00', '2023-10-02 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1777, 'Treningsvejledning', '2023-10-09 17:00:00', '2023-10-09 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1784, 'Treningsvejledning', '2023-10-16 17:00:00', '2023-10-16 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1791, 'Treningsvejledning', '2023-10-23 17:00:00', '2023-10-23 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:53', '2022-11-18 08:04:53'),
(1798, 'Treningsvejledning', '2023-10-30 17:00:00', '2023-10-30 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:54', '2022-11-18 08:04:54'),
(1805, 'Treningsvejledning', '2023-11-06 17:00:00', '2023-11-06 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:54', '2022-11-18 08:04:54'),
(1812, 'Treningsvejledning', '2023-11-13 17:00:00', '2023-11-13 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:54', '2022-11-18 08:04:54'),
(1819, 'Treningsvejledning', '2023-11-20 17:00:00', '2023-11-20 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:54', '2022-11-18 08:04:54'),
(1826, 'Treningsvejledning', '2023-11-27 17:00:00', '2023-11-27 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:04:54', '2022-11-18 08:04:54'),
(1872, 'Treningsvejledning (AK)', '2022-11-28 17:00:00', '2022-11-28 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', '70', NULL, '2022-11-18 08:13:15', '2022-11-21 16:38:26'),
(1879, 'Treningsvejledning (AK)', '2022-12-08 17:00:00', '2022-12-08 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', '70', NULL, '2022-11-18 08:18:01', '2022-11-21 16:11:36'),
(1886, 'Treningsvejledning (AK)', '2022-12-15 17:00:00', '2022-12-15 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:18:01', '2022-11-18 08:18:01'),
(1893, 'Treningsvejledning (AK)', '2022-12-22 17:00:00', '2022-12-22 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:18:01', '2022-11-18 08:18:01'),
(1894, 'Treningsvejledning (AK)', '2022-12-01 17:00:00', '2022-12-01 19:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', '70', NULL, '2022-11-18 08:18:44', '2022-11-19 06:34:49'),
(1895, 'Treningsvejledning (AK)', '2022-12-01 09:00:00', '2022-12-01 12:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', '70', NULL, '2022-11-18 08:48:35', '2022-11-19 06:35:00'),
(1896, 'Treningsvejledning (AK)', '2022-12-02 09:00:00', '2022-12-02 12:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', 'Ann-Kristin', '70', NULL, '2022-11-18 08:49:03', '2022-11-19 06:35:20'),
(1897, 'Treningsvejledning (AK)', '2022-12-08 09:00:00', '2022-12-08 12:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', '70', NULL, '2022-11-18 08:50:25', '2022-11-21 16:11:48'),
(1898, 'Treningsvejledning (AK)', '2022-12-09 09:00:00', '2022-12-09 12:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', '70', NULL, '2022-11-18 08:50:46', '2022-11-21 16:11:58'),
(1899, 'Treningsvejledning (AK)', '2022-12-15 09:00:00', '2022-12-15 12:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:51:42', '2022-11-18 08:51:42'),
(1900, 'Treningsvejledning (AK)', '2022-12-16 09:00:00', '2022-12-16 12:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'tv', 'Ann-Kristin', 'any', NULL, '2022-11-18 08:52:12', '2022-11-18 08:52:12'),
(1907, 'Test', '2022-11-21 03:00:00', '2022-11-21 03:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', 'Lasse', '5', NULL, '2022-11-18 16:53:23', '2022-11-18 16:53:23'),
(1914, 'Test', '2022-11-28 03:00:00', '2022-11-28 03:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', 'Lasse', '5', NULL, '2022-11-18 16:53:23', '2022-11-18 16:53:23'),
(1921, 'Test', '2022-12-05 03:00:00', '2022-12-05 03:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', 'Lasse', '5', NULL, '2022-11-19 06:36:41', '2022-11-19 06:36:41'),
(1928, 'Test', '2022-12-12 03:00:00', '2022-12-12 03:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', 'Lasse', '5', NULL, '2022-11-19 06:36:41', '2022-11-19 06:36:41'),
(1929, 'Egge kontrolgruppeintro', '2022-11-24 18:30:00', '2022-11-24 19:30:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'screening', NULL, 'any', NULL, '2022-11-21 14:05:08', '2022-11-21 14:05:08'),
(1930, 'VUKU IL- RS test', '2022-11-29 18:00:00', '2022-11-29 20:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'travel', 'Lasse', 'any', NULL, '2022-11-21 14:05:46', '2022-11-21 14:06:04'),
(1931, 'Torild Moxness (Screening)', '2022-11-28 16:00:00', '2022-11-28 17:00:00', 0, NULL, NULL, NULL, NULL, 'no', 'free', 'pt_time', 'Lasse Lassen', '5', NULL, '2022-11-21 16:08:32', '2022-11-21 16:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_categories`
--

CREATE TABLE `exercise_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercise_categories`
--

INSERT INTO `exercise_categories` (`id`, `name`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Experienced strength (Screening)', '1', '2022-05-09 09:06:13', '2022-03-11 06:46:17', '2022-05-09 09:06:13'),
(2, 'Conditioners SSA', '2', '2022-05-09 09:06:03', '2022-03-11 06:46:17', '2022-05-09 09:06:03'),
(3, 'Physical training 8-9 years', '100', '2022-05-20 09:04:49', '2022-03-11 02:13:34', '2022-05-20 09:04:49'),
(4, 'Rune\'s benøvelser', '1', '2022-07-11 05:23:40', '2022-04-20 23:36:12', '2022-07-11 05:23:40'),
(5, 'Physical training 9-11 years', '99', '2022-05-03 05:22:08', '2022-04-20 23:42:13', '2022-05-03 05:22:08'),
(6, 'Rune´s brystøvelser', '2', '2022-07-11 05:23:43', '2022-05-16 05:53:14', '2022-07-11 05:23:43'),
(7, 'Rune `s Ryggøvelser', '3', '2022-07-11 05:23:46', '2022-05-16 05:55:43', '2022-07-11 05:23:46'),
(8, 'Rune`oppvarmingsøvelser', '4', '2022-07-11 05:23:49', '2022-05-16 06:20:30', '2022-07-11 05:23:49'),
(9, 'Rune`s Mave øvelser', '5', '2022-07-11 05:23:52', '2022-05-16 06:45:04', '2022-07-11 05:23:52'),
(10, 'Rune`s Ryggøvelser', '6', '2022-07-11 05:23:56', '2022-05-16 06:55:49', '2022-07-11 05:23:56'),
(11, 'Rune`triceps øvelser', '7', '2022-07-11 05:24:01', '2022-05-16 07:38:44', '2022-07-11 05:24:01'),
(12, 'Rune`s Biceps øvelser', '8', '2022-07-11 05:24:08', '2022-05-16 07:47:46', '2022-07-11 05:24:08'),
(13, 'SSA Treningsveiledning', '10', NULL, '2022-07-11 05:24:41', '2022-07-11 05:24:41'),
(14, 'SSA Kondisjonstrening', '10', NULL, '2022-07-11 07:02:10', '2022-07-11 07:02:10'),
(15, 'test', '99', '2022-08-08 05:32:29', '2022-07-19 16:56:50', '2022-08-08 05:32:29'),
(16, 'test22', '10', '2022-07-19 20:37:56', '2022-07-19 20:29:29', '2022-07-19 20:37:56'),
(17, 'test', '10', '2022-07-23 20:51:24', '2022-07-23 20:49:33', '2022-07-23 20:51:24'),
(18, 'SSA 3D Screening', '10', NULL, '2022-08-17 11:02:11', '2022-08-17 11:02:11'),
(19, 'SSA Treningsveiledning (Jesper)', '10', NULL, '2022-09-02 09:54:37', '2022-09-02 09:54:37'),
(20, 'Makspulstest (Løb)', '10', NULL, '2022-09-05 06:29:26', '2022-09-05 06:29:26'),
(21, 'Submaksimal test', '10', NULL, '2022-09-05 06:37:12', '2022-09-05 06:37:12'),
(22, 'Oppvarmning løpeintervaller', '10', NULL, '2022-09-06 05:02:45', '2022-09-06 05:02:54'),
(23, 'Løpeintervaller', '10', NULL, '2022-09-06 05:24:39', '2022-09-06 05:24:39'),
(24, '1 RM tester', '10', NULL, '2022-09-13 04:58:28', '2022-09-13 04:58:28'),
(25, 'Oppvarmning SSA Footballperformance', '10', NULL, '2022-09-14 03:50:30', '2022-09-14 03:50:30'),
(26, 'Måling fedtprocent', '10', NULL, '2022-09-15 10:05:56', '2022-09-15 10:05:56'),
(27, 'Styrkeøvelser SSA Footballperformance', '10', NULL, '2022-09-17 10:10:11', '2022-09-17 10:10:11'),
(28, 'Spenstighedsøvelser SSA Footballperformance', '10', NULL, '2022-09-18 03:47:22', '2022-09-18 03:47:22'),
(29, 'Hurtighetsøvelser SSA Footballperformance', '10', NULL, '2022-10-07 06:10:59', '2022-10-07 06:10:59'),
(30, '17', '99', '2022-10-26 03:35:07', '2022-10-07 06:18:10', '2022-10-26 03:35:07'),
(31, 'Ankel- og knætest', '10', NULL, '2022-10-26 03:33:23', '2022-10-26 07:20:00'),
(32, 'SSA Treningsveiledning (Ann-Kristin)', '10', NULL, '2022-11-18 08:22:46', '2022-11-18 08:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_progress`
--

CREATE TABLE `exercise_progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setup_program_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `set` varchar(50) DEFAULT NULL,
  `rep` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `break` varchar(255) DEFAULT NULL,
  `distance` varchar(50) DEFAULT NULL,
  `puls` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercise_progress`
--

INSERT INTO `exercise_progress` (`id`, `setup_program_id`, `user_id`, `set`, `rep`, `weight`, `duration`, `break`, `distance`, `puls`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2', '2', '3', '2', '2', '2', NULL, NULL, '2022-03-21 08:47:18', '2022-03-21 08:47:18'),
(2, 2, 2, '3', '3', '3', '3', '3', '3', NULL, NULL, '2022-03-21 07:40:02', '2022-03-21 07:40:02'),
(3, 3, 2, '1', '2', '1', '2', '2', '12', NULL, NULL, '2022-03-21 07:48:45', '2022-03-21 07:48:45'),
(4, 2, 2, '2', '12', '8', NULL, NULL, NULL, NULL, NULL, '2022-05-16 06:41:23', '2022-05-16 06:41:23'),
(5, 11, 2, '3', '10', '100', NULL, NULL, NULL, NULL, NULL, '2022-05-23 10:28:18', '2022-05-23 10:28:18'),
(6, 1, 2, '2', '8', '80', NULL, NULL, NULL, NULL, NULL, '2022-06-14 03:28:41', '2022-06-14 03:28:41'),
(7, 1, 2, '2', '8', '80', NULL, NULL, NULL, NULL, NULL, '2022-06-14 03:28:46', '2022-06-14 03:28:46'),
(8, 1, 2, '2', '12', '50', NULL, NULL, NULL, NULL, NULL, '2022-06-16 12:24:51', '2022-06-16 12:24:51'),
(9, 53, 2, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-18 08:40:17', '2022-08-18 08:40:17'),
(10, 107, 33, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:32:47', '2022-08-31 06:32:47'),
(11, 101, 33, '1', '10', '22.3', NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:37:23', '2022-08-31 06:37:23'),
(12, 103, 33, '1', '10', '22.3', NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:45:57', '2022-08-31 06:45:57'),
(13, 104, 33, '1', '20', '48', NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:49:36', '2022-08-31 06:49:36'),
(14, 106, 33, '1', '10', '64', NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:50:15', '2022-08-31 06:50:15'),
(15, 105, 33, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:52:51', '2022-08-31 06:52:51'),
(16, 108, 33, '1', '10', '12', NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:56:27', '2022-08-31 06:56:27'),
(17, 110, 33, '1', '15', '25', NULL, NULL, NULL, NULL, NULL, '2022-08-31 07:00:22', '2022-08-31 07:00:22'),
(18, 111, 33, '1', '6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 07:08:52', '2022-08-31 07:08:52'),
(19, 117, 34, '10', '3', '110', NULL, NULL, NULL, NULL, NULL, '2022-08-31 09:15:13', '2022-08-31 09:15:13'),
(20, 112, 34, '10', '3', '27', NULL, NULL, NULL, NULL, NULL, '2022-08-31 09:19:54', '2022-08-31 09:19:54'),
(21, 118, 34, '10', '3', '48', NULL, NULL, NULL, NULL, NULL, '2022-08-31 09:23:50', '2022-08-31 09:23:50'),
(22, 114, 34, '10', '3', '52', NULL, NULL, NULL, NULL, NULL, '2022-08-31 09:28:27', '2022-08-31 09:28:27'),
(23, 120, 34, '10', '3', '41', NULL, NULL, NULL, NULL, NULL, '2022-08-31 09:33:51', '2022-08-31 09:33:51'),
(24, 113, 34, '10', '3', '5', NULL, NULL, NULL, NULL, NULL, '2022-08-31 09:39:12', '2022-08-31 09:39:12'),
(25, 115, 34, '10', '3', '95', NULL, NULL, NULL, NULL, NULL, '2022-08-31 09:44:32', '2022-08-31 09:44:32'),
(26, 116, 34, '10', '3', '48', NULL, NULL, NULL, NULL, NULL, '2022-08-31 09:51:51', '2022-08-31 09:51:51'),
(27, 165, 35, NULL, NULL, NULL, '4.20', '20', NULL, NULL, NULL, '2022-09-01 13:01:10', '2022-09-01 13:01:10'),
(28, 122, 34, '15', '3', '35', NULL, NULL, NULL, NULL, NULL, '2022-09-02 08:19:40', '2022-09-02 08:19:40'),
(29, 123, 34, '10', '3', '40', NULL, NULL, NULL, NULL, NULL, '2022-09-02 08:26:39', '2022-09-02 08:26:39'),
(30, 124, 34, '10', '3', '7', NULL, NULL, NULL, NULL, NULL, '2022-09-02 08:32:06', '2022-09-02 08:32:06'),
(31, 125, 34, '10', '3', '55', NULL, NULL, NULL, NULL, NULL, '2022-09-02 08:42:31', '2022-09-02 08:42:31'),
(32, 126, 34, '10', '3', '12', NULL, NULL, NULL, NULL, NULL, '2022-09-02 08:50:04', '2022-09-02 08:50:04'),
(33, 129, 34, '10', '3', '70', NULL, NULL, NULL, NULL, NULL, '2022-09-02 09:03:06', '2022-09-02 09:03:06'),
(34, 130, 34, '10', '3', '7', NULL, NULL, NULL, NULL, NULL, '2022-09-02 09:13:28', '2022-09-02 09:13:28'),
(35, 131, 34, '10', '3', '7', NULL, NULL, NULL, NULL, NULL, '2022-09-02 09:18:32', '2022-09-02 09:18:32'),
(36, 112, 34, '10', '3', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-06 08:43:41', '2022-09-06 08:43:41'),
(37, 113, 34, '10', '3', '10', NULL, NULL, NULL, NULL, NULL, '2022-09-06 08:43:57', '2022-09-06 08:43:57'),
(38, 114, 34, '10', '3', '55', NULL, NULL, NULL, NULL, NULL, '2022-09-06 08:49:34', '2022-09-06 08:49:34'),
(39, 115, 34, '10', '3', '95', NULL, NULL, NULL, NULL, NULL, '2022-09-06 08:56:56', '2022-09-06 08:56:56'),
(40, 116, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-09-06 09:03:28', '2022-09-06 09:03:28'),
(41, 117, 34, '10', '3', '115', NULL, NULL, NULL, NULL, NULL, '2022-09-06 09:14:34', '2022-09-06 09:14:34'),
(42, 118, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-09-06 09:21:14', '2022-09-06 09:21:14'),
(43, 120, 34, '10', '2.5', '43', NULL, NULL, NULL, NULL, NULL, '2022-09-06 09:30:02', '2022-09-06 09:30:02'),
(44, 121, 34, '10', '3', '45', NULL, NULL, NULL, NULL, NULL, '2022-09-06 09:36:28', '2022-09-06 09:36:28'),
(45, 183, 36, NULL, NULL, NULL, NULL, NULL, '1071', NULL, NULL, '2022-09-07 07:53:07', '2022-09-07 07:53:07'),
(46, 184, 36, '1', '10', '64', NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:57:18', '2022-09-07 07:57:18'),
(47, 185, 36, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:00:57', '2022-09-07 08:00:57'),
(48, 186, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:03:30', '2022-09-07 08:03:30'),
(49, 196, 37, '2', '10', '30', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:05:06', '2022-09-07 08:05:06'),
(50, 187, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:07:35', '2022-09-07 08:07:35'),
(51, 188, 36, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:09:54', '2022-09-07 08:09:54'),
(52, 189, 36, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:12:25', '2022-09-07 08:12:25'),
(53, 190, 36, '1', '10', '12', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:14:29', '2022-09-07 08:14:29'),
(54, 197, 37, '1', '10', '50', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:17:05', '2022-09-07 08:17:05'),
(55, 191, 36, '1', '15', '15', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:17:11', '2022-09-07 08:17:11'),
(56, 196, 37, NULL, '12', '80', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:18:25', '2022-09-07 08:18:25'),
(57, 193, 36, '1', '15', '48', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:19:41', '2022-09-07 08:19:41'),
(58, 198, 37, '1', '12', '48', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:20:31', '2022-09-07 08:20:31'),
(59, 192, 36, '1', '10', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:21:32', '2022-09-07 08:21:32'),
(60, 198, 37, '1', '12', '55', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:23:01', '2022-09-07 08:23:01'),
(61, 199, 37, '1', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:27:34', '2022-09-07 08:27:34'),
(62, 199, 37, '1', '10', '50', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:28:15', '2022-09-07 08:28:15'),
(63, 194, 36, '1', '8', '8', NULL, NULL, NULL, NULL, NULL, '2022-09-07 08:29:57', '2022-09-07 08:29:57'),
(64, 202, 38, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:20:08', '2022-09-07 13:20:08'),
(65, 215, 38, '1', '10', '25', NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:26:00', '2022-09-07 13:26:00'),
(66, 216, 38, '1', '10', '30', NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:28:59', '2022-09-07 13:28:59'),
(67, 217, 38, '1', '10', '7', NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:32:29', '2022-09-07 13:32:29'),
(68, 218, 38, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:35:39', '2022-09-07 13:35:39'),
(69, 222, 38, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:36:29', '2022-09-07 13:36:29'),
(70, 219, 38, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:38:52', '2022-09-07 13:38:52'),
(71, 221, 38, '1', '4', '89', NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:40:49', '2022-09-07 13:40:49'),
(72, 222, 38, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:45:45', '2022-09-07 13:45:45'),
(73, 223, 38, '1', '20', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:48:40', '2022-09-07 13:48:40'),
(74, 220, 38, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-07 13:52:27', '2022-09-07 13:52:27'),
(75, 166, 29, '1', NULL, NULL, NULL, '1.5', NULL, NULL, NULL, '2022-09-08 03:30:56', '2022-09-08 03:30:56'),
(76, 171, 29, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 03:32:58', '2022-09-08 03:32:58'),
(77, 227, 32, '1', '1', '2', '2', '1', '2', '2', NULL, '2022-09-08 19:14:50', '2022-09-08 19:14:50'),
(78, 144, 35, '2', '10', '82', NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:23:03', '2022-09-12 05:23:03'),
(79, 144, 35, '2', '10', '82', NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:23:19', '2022-09-12 05:23:19'),
(80, 145, 35, '2', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:29:52', '2022-09-12 05:29:52'),
(81, 147, 35, '2', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:46:47', '2022-09-12 05:46:47'),
(82, 112, 34, '10', '3', '29', NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:47:15', '2022-09-12 05:47:15'),
(83, 113, 34, '10', '3', '15', NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:47:34', '2022-09-12 05:47:34'),
(84, 149, 35, '3', '10', '41', NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:47:44', '2022-09-12 05:47:44'),
(85, 114, 34, '10', '3', '57', NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:55:32', '2022-09-12 05:55:32'),
(86, 115, 34, '10', '3', '102', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:02:13', '2022-09-12 06:02:13'),
(87, 116, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:06:42', '2022-09-12 06:06:42'),
(88, 183, 36, NULL, NULL, NULL, NULL, NULL, '1202', NULL, NULL, '2022-09-12 06:17:49', '2022-09-12 06:17:49'),
(89, 117, 34, '10', '3', '120', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:17:53', '2022-09-12 06:17:53'),
(90, 188, 36, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:21:29', '2022-09-12 06:21:29'),
(91, 118, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:21:44', '2022-09-12 06:21:44'),
(92, 193, 36, '1', '15', '48', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:25:29', '2022-09-12 06:25:29'),
(93, 184, 36, '1', '10', '73', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:27:07', '2022-09-12 06:27:07'),
(94, 185, 36, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:29:05', '2022-09-12 06:29:05'),
(95, 119, 34, '10', '3', '17', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:29:33', '2022-09-12 06:29:33'),
(96, 187, 36, '1', '12', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:30:55', '2022-09-12 06:30:55'),
(97, 120, 34, '10', '2', '43', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:32:57', '2022-09-12 06:32:57'),
(98, 121, 34, '10', '3', '55', NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:36:56', '2022-09-12 06:36:56'),
(99, 229, 39, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, '2022-09-13 08:31:35', '2022-09-13 08:31:35'),
(100, 239, 39, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:35:48', '2022-09-13 08:35:48'),
(101, 240, 39, '1', '10', '10', NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:38:43', '2022-09-13 08:38:43'),
(102, 241, 39, '1', '15', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:42:50', '2022-09-13 08:42:50'),
(103, 243, 39, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:45:56', '2022-09-13 08:45:56'),
(104, 242, 39, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:47:55', '2022-09-13 08:47:55'),
(105, 245, 39, '1', '10', '22.3', NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:51:00', '2022-09-13 08:51:00'),
(106, 245, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:51:00', '2022-09-13 08:51:00'),
(107, 246, 39, '1', '20', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:54:43', '2022-09-13 08:54:43'),
(108, 246, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:54:43', '2022-09-13 08:54:43'),
(109, 247, 39, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:56:36', '2022-09-13 08:56:36'),
(110, 186, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:19:19', '2022-09-14 05:19:19'),
(111, 184, 36, '1', '10', '73', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:21:42', '2022-09-14 05:21:42'),
(112, 145, 35, '2', '10', '41', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:21:46', '2022-09-14 05:21:46'),
(113, 198, 37, '1', '12', '48', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:23:34', '2022-09-14 05:23:34'),
(114, 198, 37, '1', '12', '55', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:23:47', '2022-09-14 05:23:47'),
(115, 188, 36, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:23:47', '2022-09-14 05:23:47'),
(116, 198, 37, '1', '7', '61', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:25:24', '2022-09-14 05:25:24'),
(117, 185, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:25:59', '2022-09-14 05:25:59'),
(118, 192, 36, '1', '10', '5', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:31:08', '2022-09-14 05:31:08'),
(119, 187, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:35:44', '2022-09-14 05:35:44'),
(120, 189, 36, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:37:45', '2022-09-14 05:37:45'),
(121, 193, 36, '1', '15', '55', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:40:06', '2022-09-14 05:40:06'),
(122, 190, 36, '1', '10', '12', NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:41:38', '2022-09-14 05:41:38'),
(123, 252, 40, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:16:15', '2022-09-14 09:16:15'),
(124, 260, 41, NULL, NULL, '14', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:17:48', '2022-09-14 09:17:48'),
(125, 261, 41, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:24:00', '2022-09-14 09:24:00'),
(126, 251, 40, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:24:09', '2022-09-14 09:24:09'),
(127, 253, 40, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:30:19', '2022-09-14 09:30:19'),
(128, 263, 41, NULL, NULL, '14', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:31:04', '2022-09-14 09:31:04'),
(129, 252, 40, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:33:55', '2022-09-14 09:33:55'),
(130, 255, 40, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:34:20', '2022-09-14 09:34:20'),
(131, 262, 41, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:36:28', '2022-09-14 09:36:28'),
(132, 254, 40, NULL, NULL, '14', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:37:50', '2022-09-14 09:37:50'),
(133, 264, 41, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:40:31', '2022-09-14 09:40:31'),
(134, 257, 40, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:42:16', '2022-09-14 09:42:16'),
(135, 265, 41, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:45:05', '2022-09-14 09:45:05'),
(136, 266, 41, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, '2022-09-14 09:49:57', '2022-09-14 09:49:57'),
(137, 289, 43, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-16 07:46:02', '2022-09-16 07:46:02'),
(138, 290, 43, '1', '10', '10', NULL, NULL, NULL, NULL, NULL, '2022-09-16 07:47:12', '2022-09-16 07:47:12'),
(139, 318, 43, '1', '10', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-16 07:50:22', '2022-09-16 07:50:22'),
(140, 291, 43, '1', '15', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-16 07:53:58', '2022-09-16 07:53:58'),
(141, 293, 43, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-16 08:00:12', '2022-09-16 08:00:12'),
(142, 293, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-16 08:00:13', '2022-09-16 08:00:13'),
(143, 295, 43, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-16 08:07:03', '2022-09-16 08:07:03'),
(144, 316, 43, '3', '10', '12', NULL, NULL, NULL, NULL, NULL, '2022-09-16 08:36:28', '2022-09-16 08:36:28'),
(145, 322, 43, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-16 08:45:20', '2022-09-16 08:45:20'),
(146, 229, 39, NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, '2022-09-16 14:12:30', '2022-09-16 14:12:30'),
(147, 229, 39, NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, '2022-09-16 14:12:31', '2022-09-16 14:12:31'),
(148, 241, 39, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-16 14:24:47', '2022-09-16 14:24:47'),
(149, 239, 39, '3', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-16 14:29:35', '2022-09-16 14:29:35'),
(150, 243, 39, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-16 14:31:49', '2022-09-16 14:31:49'),
(151, 329, 32, '2', '3', '123', '23', '23', '23', '23', NULL, '2022-09-17 21:31:21', '2022-09-17 21:31:21'),
(152, 329, 32, '23', '23', '132', '12', '23', '12', '21', NULL, '2022-09-17 21:31:34', '2022-09-17 21:31:34'),
(153, 240, 39, '2', '10', '10', NULL, NULL, NULL, NULL, NULL, '2022-09-19 15:17:49', '2022-09-19 15:17:49'),
(154, 245, 39, '3', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-19 15:27:56', '2022-09-19 15:27:56'),
(155, 125, 34, '5', '6', '60', NULL, NULL, NULL, NULL, NULL, '2022-09-20 08:33:35', '2022-09-20 08:33:35'),
(156, 127, 34, '8', '2', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-20 08:42:05', '2022-09-20 08:42:05'),
(157, 123, 34, '10', '3', '45', NULL, NULL, NULL, NULL, NULL, '2022-09-20 08:53:15', '2022-09-20 08:53:15'),
(158, 129, 34, '5', '4', '80', NULL, NULL, NULL, NULL, NULL, '2022-09-20 09:03:50', '2022-09-20 09:03:50'),
(159, 126, 34, '10', '3', '12', NULL, NULL, NULL, NULL, NULL, '2022-09-20 09:13:44', '2022-09-20 09:13:44'),
(160, 128, 34, '10', '3', '8', NULL, NULL, NULL, NULL, NULL, '2022-09-20 09:15:40', '2022-09-20 09:15:40'),
(161, 124, 34, '10', '3', '8', NULL, NULL, NULL, NULL, NULL, '2022-09-20 09:22:57', '2022-09-20 09:22:57'),
(162, 122, 34, '15', '3', '35', NULL, NULL, NULL, NULL, NULL, '2022-09-20 09:30:30', '2022-09-20 09:30:30'),
(163, 130, 34, '10', '3', '8', NULL, NULL, NULL, NULL, NULL, '2022-09-20 09:39:16', '2022-09-20 09:39:16'),
(164, 131, 34, '10', '3', '8', NULL, NULL, NULL, NULL, NULL, '2022-09-20 09:47:37', '2022-09-20 09:47:37'),
(165, 321, 43, '2', '10', '35', NULL, NULL, NULL, NULL, NULL, '2022-09-21 06:37:00', '2022-09-21 06:37:00'),
(166, 309, 43, '2', '8', '40', NULL, NULL, NULL, NULL, NULL, '2022-09-21 07:00:41', '2022-09-21 07:00:41'),
(167, 310, 43, '2', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-09-21 07:01:14', '2022-09-21 07:01:14'),
(168, 347, 46, NULL, NULL, '27', NULL, NULL, NULL, NULL, NULL, '2022-09-21 13:31:17', '2022-09-21 13:31:17'),
(169, 349, 46, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, '2022-09-21 13:39:57', '2022-09-21 13:39:57'),
(170, 350, 46, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, '2022-09-21 13:43:15', '2022-09-21 13:43:15'),
(171, 351, 46, NULL, NULL, '14', NULL, NULL, NULL, NULL, NULL, '2022-09-21 13:47:27', '2022-09-21 13:47:27'),
(172, 352, 46, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '2022-09-21 13:50:29', '2022-09-21 13:50:29'),
(173, 353, 46, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, '2022-09-21 13:52:50', '2022-09-21 13:52:50'),
(174, 117, 34, '5', '6', '125', NULL, NULL, NULL, NULL, NULL, '2022-09-23 08:23:17', '2022-09-23 08:23:17'),
(175, 118, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-09-23 08:28:08', '2022-09-23 08:28:08'),
(176, 114, 34, '10', '3', '57', NULL, NULL, NULL, NULL, NULL, '2022-09-23 08:38:40', '2022-09-23 08:38:40'),
(177, 120, 34, '10', '3', '41', NULL, NULL, NULL, NULL, NULL, '2022-09-23 08:46:15', '2022-09-23 08:46:15'),
(178, 116, 34, '8', '3', '48', NULL, NULL, NULL, NULL, NULL, '2022-09-23 08:55:51', '2022-09-23 08:55:51'),
(179, 112, 34, '10', '3', '29', NULL, NULL, NULL, NULL, NULL, '2022-09-23 09:04:20', '2022-09-23 09:04:20'),
(180, 396, 49, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-26 07:20:10', '2022-09-26 07:20:10'),
(181, 405, 49, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 07:22:04', '2022-09-26 07:22:04'),
(182, 399, 49, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-26 07:32:44', '2022-09-26 07:32:44'),
(183, 400, 49, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-26 07:35:37', '2022-09-26 07:35:37'),
(184, 401, 49, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 07:37:52', '2022-09-26 07:37:52'),
(185, 402, 49, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-26 07:40:30', '2022-09-26 07:40:30'),
(186, 404, 49, '1', '20', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-26 07:44:52', '2022-09-26 07:44:52'),
(187, 404, 49, '1', '10', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-26 07:49:10', '2022-09-26 07:49:10'),
(188, 407, 50, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:22:47', '2022-09-26 09:22:47'),
(189, 416, 50, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:27:13', '2022-09-26 09:27:13'),
(190, 408, 50, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:30:13', '2022-09-26 09:30:13'),
(191, 408, 50, '1', '10', '25', NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:31:08', '2022-09-26 09:31:08'),
(192, 409, 50, '1', '15', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:34:47', '2022-09-26 09:34:47'),
(193, 410, 50, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:37:56', '2022-09-26 09:37:56'),
(194, 412, 50, '1', '10', '4', NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:40:22', '2022-09-26 09:40:22'),
(195, 411, 50, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:43:49', '2022-09-26 09:43:49'),
(196, 413, 50, '1', '10', '32', NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:52:11', '2022-09-26 09:52:11'),
(197, 414, 50, '1', '20', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:55:10', '2022-09-26 09:55:10'),
(198, 415, 50, '1', '10', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-26 09:58:17', '2022-09-26 09:58:17'),
(199, 417, 50, '1', '10', '30', NULL, NULL, NULL, NULL, NULL, '2022-09-26 10:04:25', '2022-09-26 10:04:25'),
(200, 417, 50, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-26 10:07:58', '2022-09-26 10:07:58'),
(201, 418, 50, '1', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-09-26 10:12:01', '2022-09-26 10:12:01'),
(202, 421, 50, '1', '10', '8', NULL, NULL, NULL, NULL, NULL, '2022-09-26 10:14:50', '2022-09-26 10:14:50'),
(203, 423, 50, '1', '10', '82', NULL, NULL, NULL, NULL, NULL, '2022-09-26 10:18:28', '2022-09-26 10:18:28'),
(204, 425, 50, '1', '20', '46', NULL, NULL, NULL, NULL, NULL, '2022-09-26 10:22:03', '2022-09-26 10:22:03'),
(205, 424, 50, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-09-26 10:24:10', '2022-09-26 10:24:10'),
(206, 422, 50, '1', '10', '25', NULL, NULL, NULL, NULL, NULL, '2022-09-26 10:29:23', '2022-09-26 10:29:23'),
(207, 333, 44, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-27 11:24:18', '2022-09-27 11:24:18'),
(208, 125, 34, '5', '6', '60', NULL, NULL, NULL, NULL, NULL, '2022-09-30 09:07:36', '2022-09-30 09:07:36'),
(209, 123, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-09-30 09:19:02', '2022-09-30 09:19:02'),
(210, 129, 34, '5', '6', '80', NULL, NULL, NULL, NULL, NULL, '2022-09-30 09:36:10', '2022-09-30 09:36:10'),
(211, 126, 34, '12', '3', '12', NULL, NULL, NULL, NULL, NULL, '2022-09-30 09:45:46', '2022-09-30 09:45:46'),
(212, 130, 34, '10', '2', '8', NULL, NULL, NULL, NULL, NULL, '2022-09-30 10:05:45', '2022-09-30 10:05:45'),
(213, 457, 48, '1', '10', '25', NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:23:23', '2022-10-03 06:23:23'),
(214, 458, 48, '1', NULL, '40', NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:28:22', '2022-10-03 06:28:22'),
(215, 459, 48, '1', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:31:49', '2022-10-03 06:31:49'),
(216, 461, 48, '1', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:35:26', '2022-10-03 06:35:26'),
(217, 465, 48, '1', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:39:59', '2022-10-03 06:39:59'),
(218, 472, 48, '2', '10', '25', NULL, NULL, NULL, NULL, NULL, '2022-10-04 06:07:55', '2022-10-04 06:07:55'),
(219, 473, 48, '2', '10', '50', NULL, NULL, NULL, NULL, NULL, '2022-10-04 06:14:40', '2022-10-04 06:14:40'),
(220, 474, 48, '3', '10', '25', NULL, NULL, NULL, NULL, NULL, '2022-10-04 06:20:50', '2022-10-04 06:20:50'),
(221, 476, 48, '3', '10', '30.3', NULL, NULL, NULL, NULL, NULL, '2022-10-04 06:37:30', '2022-10-04 06:37:30'),
(222, 125, 34, '10', '3', '60', NULL, NULL, NULL, NULL, NULL, '2022-10-04 09:22:33', '2022-10-04 09:22:33'),
(223, 123, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-10-04 09:42:40', '2022-10-04 09:42:40'),
(224, 129, 34, '10', '3', '80', NULL, NULL, NULL, NULL, NULL, '2022-10-04 09:55:44', '2022-10-04 09:55:44'),
(225, 126, 34, '10', '2', '14', NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:06:13', '2022-10-04 10:06:13'),
(226, 126, 34, '10', '1', '12', NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:06:25', '2022-10-04 10:06:25'),
(227, 128, 34, '10', '3', '8', NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:10:08', '2022-10-04 10:10:08'),
(228, 125, 34, '10', '3', '60', NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:03:52', '2022-10-07 08:03:52'),
(229, 123, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:28:49', '2022-10-07 08:28:49'),
(230, 129, 34, '5', '5', '85', NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:44:13', '2022-10-07 08:44:13'),
(231, 129, 34, '5', '5', '85', NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:44:13', '2022-10-07 08:44:13'),
(232, 129, 34, '5', '5', '85', NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:44:13', '2022-10-07 08:44:13'),
(233, 129, 34, '5', '5', '85', NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:44:13', '2022-10-07 08:44:13'),
(234, 129, 34, '5', '5', '85', NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:44:16', '2022-10-07 08:44:16'),
(235, 129, 34, '5', '5', '85', NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:44:16', '2022-10-07 08:44:16'),
(236, 129, 34, '5', '5', '85', NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:44:16', '2022-10-07 08:44:16'),
(237, 533, 53, '7', '1', '80', NULL, NULL, NULL, NULL, NULL, '2022-10-13 09:30:44', '2022-10-13 09:30:44'),
(238, 202, 38, '1', NULL, NULL, '6', NULL, NULL, NULL, NULL, '2022-10-14 12:22:51', '2022-10-14 12:22:51'),
(239, 215, 38, '1', '2', '120', NULL, NULL, NULL, NULL, NULL, '2022-10-14 12:30:26', '2022-10-14 12:30:26'),
(240, 221, 38, '1', '7', '120', NULL, NULL, NULL, NULL, NULL, '2022-10-14 12:32:19', '2022-10-14 12:32:19'),
(241, 219, 38, '1', '30', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-14 12:39:35', '2022-10-14 12:39:35'),
(242, 218, 38, '1', '30', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-14 12:49:30', '2022-10-14 12:49:30'),
(243, 220, 38, '1', '20', '27', NULL, NULL, NULL, NULL, NULL, '2022-10-14 12:55:33', '2022-10-14 12:55:33'),
(244, 217, 38, '1', '30', '5', NULL, NULL, NULL, NULL, NULL, '2022-10-14 13:05:54', '2022-10-14 13:05:54'),
(245, 214, 38, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 15:06:45', '2022-10-14 15:06:45'),
(246, 198, 37, '1', '8', '61', NULL, NULL, NULL, NULL, NULL, '2022-10-17 06:23:31', '2022-10-17 06:23:31'),
(247, 184, 36, '1', '10', '73', NULL, NULL, NULL, NULL, NULL, '2022-10-17 06:27:40', '2022-10-17 06:27:40'),
(248, 197, 37, '1', '10', '75', NULL, NULL, NULL, NULL, NULL, '2022-10-17 06:33:08', '2022-10-17 06:33:08'),
(249, 197, 37, '1', '10', '100', NULL, NULL, NULL, NULL, NULL, '2022-10-17 06:33:18', '2022-10-17 06:33:18'),
(250, 186, 36, '1', '10', '41', NULL, NULL, NULL, NULL, NULL, '2022-10-17 06:33:34', '2022-10-17 06:33:34'),
(251, 188, 36, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-10-17 06:35:33', '2022-10-17 06:35:33'),
(252, 189, 36, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-10-17 06:37:22', '2022-10-17 06:37:22'),
(253, 457, 48, '3', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 05:57:48', '2022-10-19 05:57:48'),
(254, 458, 48, '2', '10', '10', NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:04:58', '2022-10-19 06:04:58'),
(255, 460, 48, '3', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:16:42', '2022-10-19 06:16:42'),
(256, 461, 48, '2', '10', '8', NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:19:54', '2022-10-19 06:19:54'),
(257, 462, 48, '2', '10', '23.5', NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:23:46', '2022-10-19 06:23:46'),
(258, 464, 48, '2', '10', '10', NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:36:13', '2022-10-19 06:36:13'),
(259, 465, 48, '2', '16', '72.6', NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:39:47', '2022-10-19 06:39:47'),
(260, 472, 48, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-20 05:04:35', '2022-10-20 05:04:35'),
(261, 473, 48, '2', '10', '70', NULL, NULL, NULL, NULL, NULL, '2022-10-20 05:15:48', '2022-10-20 05:15:48'),
(262, 474, 48, '2', '10', '29.3', NULL, NULL, NULL, NULL, NULL, '2022-10-20 05:19:52', '2022-10-20 05:19:52'),
(263, 476, 48, '2', '10', '29.3', NULL, NULL, NULL, NULL, NULL, '2022-10-20 05:30:31', '2022-10-20 05:30:31'),
(264, 457, 48, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-23 06:12:43', '2022-10-23 06:12:43'),
(265, 457, 48, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-23 06:12:43', '2022-10-23 06:12:43'),
(266, 458, 48, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-23 06:22:07', '2022-10-23 06:22:07'),
(267, 460, 48, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-23 06:35:37', '2022-10-23 06:35:37'),
(268, 461, 48, '2', '10', '12', NULL, NULL, NULL, NULL, NULL, '2022-10-23 06:38:54', '2022-10-23 06:38:54'),
(269, 462, 48, '2', '19', '23.5', NULL, NULL, NULL, NULL, NULL, '2022-10-23 06:43:47', '2022-10-23 06:43:47'),
(270, 472, 48, '2', '10', '50', NULL, NULL, NULL, NULL, NULL, '2022-10-25 13:33:28', '2022-10-25 13:33:28'),
(271, 473, 48, '2', '10', '75', NULL, NULL, NULL, NULL, NULL, '2022-10-25 13:37:21', '2022-10-25 13:37:21'),
(272, 474, 48, '2', '19', '29.3', NULL, NULL, NULL, NULL, NULL, '2022-10-25 13:40:49', '2022-10-25 13:40:49'),
(273, 591, 61, '2', '10', '30', NULL, NULL, NULL, NULL, NULL, '2022-10-25 13:42:41', '2022-10-25 13:42:41'),
(274, 592, 61, '2', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-10-25 13:43:22', '2022-10-25 13:43:22'),
(275, 476, 48, '2', '10', '31.6', NULL, NULL, NULL, NULL, NULL, '2022-10-25 13:46:41', '2022-10-25 13:46:41'),
(276, 593, 61, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-25 13:47:50', '2022-10-25 13:47:50'),
(277, 594, 61, '2', '10', '12', NULL, NULL, NULL, NULL, NULL, '2022-10-25 14:02:01', '2022-10-25 14:02:01'),
(278, 595, 61, '2', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-10-25 14:02:17', '2022-10-25 14:02:17'),
(279, 596, 61, '2', '10', '16', NULL, NULL, NULL, NULL, NULL, '2022-10-25 14:13:06', '2022-10-25 14:13:06'),
(280, 597, 61, '2', '10', '82', NULL, NULL, NULL, NULL, NULL, '2022-10-25 14:13:19', '2022-10-25 14:13:19'),
(281, 598, 61, '2', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-10-25 14:41:21', '2022-10-25 14:41:21'),
(282, 599, 61, '2', '10', '42', NULL, NULL, NULL, NULL, NULL, '2022-10-25 14:41:37', '2022-10-25 14:41:37'),
(283, 590, 61, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-29 04:49:28', '2022-10-29 04:49:28'),
(284, 591, 61, '2', '10', '30', NULL, NULL, NULL, NULL, NULL, '2022-10-29 05:02:20', '2022-10-29 05:02:20'),
(285, 593, 61, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-10-29 05:08:42', '2022-10-29 05:08:42'),
(286, 592, 61, '2', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-10-29 05:13:50', '2022-10-29 05:13:50'),
(287, 594, 61, '2', '10', '12', NULL, NULL, NULL, NULL, NULL, '2022-10-29 05:22:36', '2022-10-29 05:22:36'),
(288, 595, 61, '2', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-10-29 05:28:15', '2022-10-29 05:28:15'),
(289, 596, 61, '2', '10', '16', NULL, NULL, NULL, NULL, NULL, '2022-10-29 05:34:46', '2022-10-29 05:34:46'),
(290, 597, 61, '2', '10', '82', NULL, NULL, NULL, NULL, NULL, '2022-10-29 05:40:50', '2022-10-29 05:40:50'),
(291, 598, 61, '2', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-10-29 05:47:45', '2022-10-29 05:47:45'),
(292, 599, 61, '2', '12', '46', NULL, NULL, NULL, NULL, NULL, '2022-10-29 06:07:07', '2022-10-29 06:07:07'),
(293, 609, 62, '6', '2', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-01 17:41:42', '2022-11-01 17:41:42'),
(294, 472, 48, '3', '10', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-02 07:56:48', '2022-11-02 07:56:48'),
(295, 473, 48, '2', '10', '75', NULL, NULL, NULL, NULL, NULL, '2022-11-02 08:20:39', '2022-11-02 08:20:39'),
(296, 473, 48, '2', '10', '75', NULL, NULL, NULL, NULL, NULL, '2022-11-02 08:20:39', '2022-11-02 08:20:39'),
(297, 473, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 08:20:40', '2022-11-02 08:20:40'),
(298, 474, 48, '2', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-02 08:22:21', '2022-11-02 08:22:21'),
(299, 476, 48, '2', '10', '31.3', NULL, NULL, NULL, NULL, NULL, '2022-11-02 08:31:54', '2022-11-02 08:31:54'),
(300, 125, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-02 12:06:08', '2022-11-02 12:06:08'),
(301, 123, 34, '10', '3', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-02 12:15:57', '2022-11-02 12:15:57'),
(302, 591, 61, '2', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-05 11:57:21', '2022-11-05 11:57:21'),
(303, 592, 61, '2', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-05 11:59:59', '2022-11-05 11:59:59'),
(304, 593, 61, '2', '10', '30', NULL, NULL, NULL, NULL, NULL, '2022-11-05 12:07:03', '2022-11-05 12:07:03'),
(305, 594, 61, '2', '10', '16', NULL, NULL, NULL, NULL, NULL, '2022-11-05 12:12:04', '2022-11-05 12:12:04'),
(306, 595, 61, '2', '12', '8', NULL, NULL, NULL, NULL, NULL, '2022-11-05 12:16:30', '2022-11-05 12:16:30'),
(307, 596, 61, '2', '10', '16', NULL, NULL, NULL, NULL, NULL, '2022-11-05 12:24:07', '2022-11-05 12:24:07'),
(308, 597, 61, '2', '10', '82', NULL, NULL, NULL, NULL, NULL, '2022-11-05 12:30:10', '2022-11-05 12:30:10'),
(309, 598, 61, '2', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-11-05 12:34:52', '2022-11-05 12:34:52'),
(310, 599, 61, '2', '12', '48', NULL, NULL, NULL, NULL, NULL, '2022-11-05 12:39:38', '2022-11-05 12:39:38'),
(311, 627, 60, '2', '10', '10', '10', '10', '20', '30', NULL, '2022-11-05 16:54:07', '2022-11-05 16:54:07'),
(312, 184, 36, '1', '10', '73', NULL, NULL, NULL, NULL, NULL, '2022-11-10 07:32:44', '2022-11-10 07:32:44'),
(313, 185, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-10 07:35:09', '2022-11-10 07:35:09'),
(314, 188, 36, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-10 07:42:14', '2022-11-10 07:42:14'),
(315, 186, 36, '1', '10', '41', NULL, NULL, NULL, NULL, NULL, '2022-11-10 07:44:17', '2022-11-10 07:44:17'),
(316, 193, 36, '1', '10', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-10 07:47:10', '2022-11-10 07:47:10'),
(317, 202, 38, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 12:37:05', '2022-11-11 12:37:05'),
(318, 216, 38, '3', '7', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-11 12:50:48', '2022-11-11 12:50:48'),
(319, 216, 38, '3', '10', '30', NULL, NULL, NULL, NULL, NULL, '2022-11-11 12:59:16', '2022-11-11 12:59:16'),
(320, 217, 38, '1', '10', '5', NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:09:42', '2022-11-11 13:09:42'),
(321, 217, 38, '1', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:09:59', '2022-11-11 13:09:59'),
(322, 217, 38, '2', '20', '7', NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:10:10', '2022-11-11 13:10:10'),
(323, 219, 38, '3', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:19:05', '2022-11-11 13:19:05'),
(324, 218, 38, '3', '8', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:31:04', '2022-11-11 13:31:04'),
(325, 220, 38, '3', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:42:07', '2022-11-11 13:42:07'),
(326, 214, 38, '5', '8', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 17:26:27', '2022-11-11 17:26:27'),
(327, 934, 80, '4', '3', '90', NULL, NULL, NULL, NULL, NULL, '2022-11-12 11:51:33', '2022-11-12 11:51:33'),
(328, 938, 80, '4', '6', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-12 11:52:21', '2022-11-12 11:52:21'),
(329, 939, 80, '4', '6', '24', NULL, NULL, NULL, NULL, NULL, '2022-11-12 11:52:37', '2022-11-12 11:52:37'),
(330, 976, 81, '2', '3', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:05:01', '2022-11-12 13:05:01'),
(331, 976, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:05:02', '2022-11-12 13:05:02'),
(332, 978, 81, '2', '8', '30', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:13:41', '2022-11-12 13:13:41'),
(333, 978, 81, '2', '8', '30', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:13:41', '2022-11-12 13:13:41'),
(334, 978, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:13:42', '2022-11-12 13:13:42'),
(335, 980, 81, '2', '12', '12', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:18:56', '2022-11-12 13:18:56'),
(336, 980, 81, '2', '12', '12', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:18:56', '2022-11-12 13:18:56'),
(337, 981, 81, '2', '12', '14', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:19:09', '2022-11-12 13:19:09'),
(338, 981, 81, '2', '12', '14', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:19:10', '2022-11-12 13:19:10'),
(339, 958, 81, '7', '1', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:43:19', '2022-11-12 13:43:19'),
(340, 958, 81, '7', '1', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:43:20', '2022-11-12 13:43:20'),
(341, 960, 81, '2', '12', '8', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:50:11', '2022-11-12 13:50:11'),
(342, 960, 81, '2', '12', '8', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:50:11', '2022-11-12 13:50:11'),
(343, 963, 81, '2', '12', '8', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:56:15', '2022-11-12 13:56:15'),
(344, 963, 81, '2', '12', '8', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:56:16', '2022-11-12 13:56:16'),
(345, 591, 61, '10', '2', '30', NULL, NULL, NULL, NULL, NULL, '2022-11-13 13:07:43', '2022-11-13 13:07:43'),
(346, 592, 61, '2', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-13 13:13:29', '2022-11-13 13:13:29'),
(347, 594, 61, '2', '10', '14', NULL, NULL, NULL, NULL, NULL, '2022-11-13 13:23:24', '2022-11-13 13:23:24'),
(348, 595, 61, '2', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-11-13 13:27:32', '2022-11-13 13:27:32'),
(349, 596, 61, '2', '10', '18', NULL, NULL, NULL, NULL, NULL, '2022-11-13 13:31:30', '2022-11-13 13:31:30'),
(350, 597, 61, '2', '10', '77.5', NULL, NULL, NULL, NULL, NULL, '2022-11-13 13:34:32', '2022-11-13 13:34:32'),
(351, 598, 61, '2', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-11-13 13:42:18', '2022-11-13 13:42:18'),
(352, 599, 61, '2', '12', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-13 13:46:30', '2022-11-13 13:46:30'),
(353, 184, 36, '1', '15', '82', NULL, NULL, NULL, NULL, NULL, '2022-11-13 14:14:37', '2022-11-13 14:14:37'),
(354, 185, 36, '1', '10', '37', NULL, NULL, NULL, NULL, NULL, '2022-11-13 14:17:06', '2022-11-13 14:17:06'),
(355, 186, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-13 14:19:29', '2022-11-13 14:19:29'),
(356, 188, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-13 14:21:24', '2022-11-13 14:21:24'),
(357, 189, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-13 14:22:56', '2022-11-13 14:22:56'),
(358, 193, 36, '1', '10', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-13 14:26:59', '2022-11-13 14:26:59'),
(359, 1235, 84, '6', '2', '35', NULL, NULL, NULL, NULL, NULL, '2022-11-14 18:33:08', '2022-11-14 18:33:08'),
(360, 1181, 79, '6', '2', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-14 18:50:50', '2022-11-14 18:50:50'),
(361, 1163, 78, '6', '2', '45', NULL, NULL, NULL, NULL, NULL, '2022-11-14 19:10:03', '2022-11-14 19:10:03'),
(362, 1109, 75, '6', '2', '58', NULL, NULL, NULL, NULL, NULL, '2022-11-14 19:14:51', '2022-11-14 19:14:51'),
(363, 1091, 74, '6', '2', '40', '60', NULL, NULL, NULL, NULL, '2022-11-14 19:19:04', '2022-11-14 19:19:04'),
(364, 1271, 85, '6', '2', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-14 19:34:09', '2022-11-14 19:34:09'),
(365, 1055, 72, '6', '2', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-14 19:34:12', '2022-11-14 19:34:12'),
(366, 1217, 83, '6', '2', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-14 19:35:03', '2022-11-14 19:35:03'),
(367, 1217, 83, '6', '2', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-14 19:35:03', '2022-11-14 19:35:03'),
(368, 1127, 76, '2', '6', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-14 19:59:37', '2022-11-14 19:59:37'),
(369, 1145, 77, '6', '2', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-14 20:37:38', '2022-11-14 20:37:38'),
(370, 1073, 73, '6', '2', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-15 06:16:42', '2022-11-15 06:16:42'),
(371, 1019, 69, '6', '2', '56', '20', '12', NULL, NULL, NULL, '2022-11-15 14:05:09', '2022-11-15 14:05:09'),
(372, 1199, 82, '6', '2', '58', '60', '3', NULL, NULL, NULL, '2022-11-15 16:20:33', '2022-11-15 16:20:33'),
(373, 1199, 82, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, '2022-11-15 16:20:57', '2022-11-15 16:20:57'),
(374, 938, 80, NULL, NULL, '22', NULL, NULL, NULL, NULL, NULL, '2022-11-15 18:24:20', '2022-11-15 18:24:20'),
(375, 1164, 78, '6', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-16 16:50:25', '2022-11-16 16:50:25'),
(376, 1236, 84, '6', '3', '38', NULL, NULL, NULL, NULL, NULL, '2022-11-16 17:34:07', '2022-11-16 17:34:07'),
(377, 1074, 73, '6', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:20:14', '2022-11-16 18:20:14'),
(378, 1073, 73, '6', '2', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:20:24', '2022-11-16 18:20:24'),
(379, 1038, 71, '6', '3', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:20:29', '2022-11-16 18:20:29'),
(380, 1146, 77, '6', '3', '48', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:20:57', '2022-11-16 18:20:57'),
(381, 591, 61, '2', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:35:08', '2022-11-16 18:35:08'),
(382, 592, 61, '2', '10', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:35:29', '2022-11-16 18:35:29'),
(383, 594, 61, '2', '10', '16', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:36:19', '2022-11-16 18:36:19'),
(384, 595, 61, '2', '10', '7', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:37:02', '2022-11-16 18:37:02'),
(385, 1128, 76, '6', '3', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:45:23', '2022-11-16 18:45:23'),
(386, 1272, 85, '6', '3', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:46:05', '2022-11-16 18:46:05'),
(387, 1272, 85, '6', '3', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:46:38', '2022-11-16 18:46:38'),
(388, 599, 61, '2', '10', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:48:00', '2022-11-16 18:48:00'),
(389, 597, 61, '2', '9', '75', NULL, NULL, NULL, NULL, NULL, '2022-11-16 18:53:58', '2022-11-16 18:53:58'),
(390, 1218, 83, '6', '3', '45', NULL, NULL, NULL, NULL, NULL, '2022-11-16 19:26:40', '2022-11-16 19:26:40'),
(391, 1361, 90, '6', '3', '69', NULL, NULL, NULL, NULL, NULL, '2022-11-16 19:29:28', '2022-11-16 19:29:28'),
(392, 1307, 87, '6', '3', '48', NULL, NULL, NULL, NULL, NULL, '2022-11-16 19:39:36', '2022-11-16 19:39:36'),
(393, 1020, 69, '6', '3', '55', '15', '6', NULL, NULL, NULL, '2022-11-16 19:56:58', '2022-11-16 19:56:58'),
(394, 1182, 79, '6', '3', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-16 19:57:08', '2022-11-16 19:57:08'),
(395, 1110, 75, '6', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-16 21:08:19', '2022-11-16 21:08:19'),
(396, 1380, 91, '2', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:21:37', '2022-11-17 17:21:37'),
(397, 1380, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:21:38', '2022-11-17 17:21:38'),
(398, 1390, 92, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:24:47', '2022-11-17 17:24:47'),
(399, 1391, 92, '2', '10', '25', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:25:08', '2022-11-17 17:25:08'),
(400, 1381, 91, '1', '10', '45', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:26:22', '2022-11-17 17:26:22'),
(401, 1392, 92, '2', '15', '35', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:30:56', '2022-11-17 17:30:56'),
(402, 185, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:34:52', '2022-11-17 17:34:52'),
(403, 1382, 91, '2', '15', '35', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:34:58', '2022-11-17 17:34:58'),
(404, 188, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:38:19', '2022-11-17 17:38:19'),
(405, 1388, 91, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:41:10', '2022-11-17 17:41:10'),
(406, 1394, 92, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:41:13', '2022-11-17 17:41:13'),
(407, 1384, 91, '2', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:43:57', '2022-11-17 17:43:57'),
(408, 184, 36, '1', '10', '100', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:44:29', '2022-11-17 17:44:29'),
(409, 1385, 91, '2', '10', '4', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:48:47', '2022-11-17 17:48:47'),
(410, 1383, 91, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:52:24', '2022-11-17 17:52:24'),
(411, 1395, 92, '1', '10', '6', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:55:04', '2022-11-17 17:55:04'),
(412, 187, 36, '1', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:56:51', '2022-11-17 17:56:51'),
(413, 1386, 91, '2', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-17 17:56:55', '2022-11-17 17:56:55'),
(414, 1396, 92, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-17 18:00:02', '2022-11-17 18:00:02'),
(415, 1429, 94, '2', '10', '30', NULL, NULL, NULL, NULL, NULL, '2022-11-18 09:40:15', '2022-11-18 09:40:15'),
(416, 1183, 79, '6', '2', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-18 14:52:08', '2022-11-18 14:52:08'),
(417, 1111, 75, '6', '2', '52', NULL, NULL, NULL, NULL, NULL, '2022-11-18 15:05:33', '2022-11-18 15:05:33'),
(418, 1308, 87, '6', '2', '48', NULL, NULL, NULL, NULL, NULL, '2022-11-18 15:46:44', '2022-11-18 15:46:44'),
(419, 1200, 82, '6', '3', '60', '20', '3', NULL, NULL, NULL, '2022-11-18 19:18:21', '2022-11-18 19:18:21'),
(420, 1201, 82, '6', '2', '55', '15', '3', NULL, NULL, NULL, '2022-11-18 19:18:48', '2022-11-18 19:18:48'),
(421, 1057, 72, '6', '2', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-18 19:18:48', '2022-11-18 19:18:48'),
(422, 1129, 76, '6', '2', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-18 19:30:29', '2022-11-18 19:30:29'),
(423, 1075, 73, '6', '2', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-19 07:29:04', '2022-11-19 07:29:04'),
(424, 1289, 86, '6', '2', '60', '15', '2', '0', '0', NULL, '2022-11-19 17:11:00', '2022-11-19 17:11:00'),
(425, 1290, 86, '6', '3', '62.5', '15', '2', '0', '0', NULL, '2022-11-19 17:11:40', '2022-11-19 17:11:40'),
(426, 1165, 78, '6', '2', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-19 19:05:37', '2022-11-19 19:05:37'),
(427, 1361, 90, '0', '0', '0', NULL, NULL, NULL, NULL, NULL, '2022-11-20 13:02:35', '2022-11-20 13:02:35'),
(428, 183, 36, '1', '5', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:01:02', '2022-11-20 14:01:02'),
(429, 184, 36, '1', '10', '100', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:05:01', '2022-11-20 14:05:01'),
(430, 1391, 92, '1', '10', '25', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:06:16', '2022-11-20 14:06:16'),
(431, 191, 36, '1', '15', '45', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:10:37', '2022-11-20 14:10:37'),
(432, 1380, 91, '2', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:11:10', '2022-11-20 14:11:10'),
(433, 1392, 92, '2', '10', '35', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:12:10', '2022-11-20 14:12:10'),
(434, 186, 36, '1', '10', '41', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:13:01', '2022-11-20 14:13:01'),
(435, 1393, 92, '1', '1', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:14:54', '2022-11-20 14:14:54'),
(436, 189, 36, '1', '10', '41', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:15:04', '2022-11-20 14:15:04'),
(437, 1381, 91, '2', '10', '45', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:15:24', '2022-11-20 14:15:24'),
(438, 187, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:17:14', '2022-11-20 14:17:14'),
(439, 1396, 92, '1', '1', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:17:48', '2022-11-20 14:17:48'),
(440, 1382, 91, '2', '15', '45', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:19:17', '2022-11-20 14:19:17'),
(441, 1395, 92, '2', '2', '6', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:20:46', '2022-11-20 14:20:46'),
(442, 1395, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:20:57', '2022-11-20 14:20:57'),
(443, 185, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:23:08', '2022-11-20 14:23:08'),
(444, 1397, 92, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:24:18', '2022-11-20 14:24:18'),
(445, 193, 36, '1', '68', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:26:08', '2022-11-20 14:26:08'),
(446, 193, 36, '1', '10', '68', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:26:29', '2022-11-20 14:26:29'),
(447, 1384, 91, '2', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:26:58', '2022-11-20 14:26:58'),
(448, 188, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:28:05', '2022-11-20 14:28:05'),
(449, 188, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:28:18', '2022-11-20 14:28:18'),
(450, 1390, 92, '2', '1', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:28:39', '2022-11-20 14:28:39'),
(451, 1394, 92, '1', '2', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:31:23', '2022-11-20 14:31:23'),
(452, 1386, 91, '2', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:35:32', '2022-11-20 14:35:32'),
(453, 1387, 91, '1', '20', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-20 14:38:26', '2022-11-20 14:38:26'),
(454, 1147, 77, '6', '2', '48', NULL, NULL, NULL, NULL, NULL, '2022-11-20 15:39:04', '2022-11-20 15:39:04'),
(455, 1326, 88, '6', '3', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-20 18:29:18', '2022-11-20 18:29:18'),
(456, 1330, 88, '6', '3', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-20 18:29:49', '2022-11-20 18:29:49'),
(457, 1273, 85, '6', '2', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-20 19:23:14', '2022-11-20 19:23:14'),
(458, 125, 34, '10', '3', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-21 13:16:55', '2022-11-21 13:16:55'),
(459, 129, 34, '10', '3', '75', NULL, NULL, NULL, NULL, NULL, '2022-11-21 13:17:32', '2022-11-21 13:17:32'),
(460, 1021, 69, '6', '2', '55', '15', '6', NULL, NULL, NULL, '2022-11-21 14:14:02', '2022-11-21 14:14:02'),
(461, 1021, 69, '6', '2', '55', '15', '6', NULL, NULL, NULL, '2022-11-21 14:14:48', '2022-11-21 14:14:48'),
(462, 1363, 90, '0', '0', '0', NULL, NULL, NULL, NULL, NULL, '2022-11-21 16:18:23', '2022-11-21 16:18:23'),
(463, 1363, 90, '0', '0', '0', NULL, NULL, NULL, NULL, NULL, '2022-11-21 16:18:41', '2022-11-21 16:18:41'),
(464, 591, 61, '2', '10', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-21 17:11:43', '2022-11-21 17:11:43'),
(465, 592, 61, '2', '10', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-21 17:12:11', '2022-11-21 17:12:11'),
(466, 1076, 73, '6', '4', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-21 18:03:16', '2022-11-21 18:03:16');
INSERT INTO `exercise_progress` (`id`, `setup_program_id`, `user_id`, `set`, `rep`, `weight`, `duration`, `break`, `distance`, `puls`, `deleted_at`, `created_at`, `updated_at`) VALUES
(467, 1166, 78, '6', '4', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-21 18:04:15', '2022-11-21 18:04:15'),
(468, 1112, 75, '6', '4', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-21 18:06:52', '2022-11-21 18:06:52'),
(469, 1274, 85, '6', '4', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-21 18:31:51', '2022-11-21 18:31:51'),
(470, 1219, 83, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 18:48:31', '2022-11-21 18:48:31'),
(471, 1184, 79, '6', '4', '56', NULL, NULL, NULL, NULL, NULL, '2022-11-21 19:02:38', '2022-11-21 19:02:38'),
(472, 1237, 84, '6', '2', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-21 19:25:47', '2022-11-21 19:25:47'),
(473, 1238, 84, '6', '4', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-21 19:26:00', '2022-11-21 19:26:00'),
(474, 1058, 72, '6', '4', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-21 19:29:50', '2022-11-21 19:29:50'),
(475, 1130, 76, '6', '4', '60', NULL, NULL, NULL, NULL, NULL, '2022-11-21 19:30:46', '2022-11-21 19:30:46'),
(476, 1202, 82, '6', '4', '57.5', '30', '3', NULL, NULL, NULL, '2022-11-21 19:36:15', '2022-11-21 19:36:15'),
(477, 1364, 90, '2', '3', '70', NULL, NULL, NULL, NULL, NULL, '2022-11-22 05:37:41', '2022-11-22 05:37:41'),
(478, 1292, 86, '6', '4', '60', '30', '3', '0', '0', NULL, '2022-11-22 14:46:36', '2022-11-22 14:46:36'),
(479, 1328, 88, '6', '4', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-22 15:28:05', '2022-11-22 15:28:05'),
(480, 1327, 88, '6', '2', '55', NULL, NULL, NULL, NULL, NULL, '2022-11-22 15:28:56', '2022-11-22 15:28:56'),
(481, 1326, 88, '6', '3', '52.5', NULL, NULL, NULL, NULL, NULL, '2022-11-22 15:29:21', '2022-11-22 15:29:21'),
(482, 1325, 88, '0', '0', '0', NULL, NULL, NULL, NULL, NULL, '2022-11-22 15:29:48', '2022-11-22 15:29:48'),
(483, 1309, 87, '6', '2', '48', NULL, NULL, NULL, NULL, NULL, '2022-11-22 16:07:58', '2022-11-22 16:07:58'),
(484, 1310, 87, '3', '6', '45', NULL, NULL, NULL, NULL, NULL, '2022-11-22 19:07:46', '2022-11-22 19:07:46'),
(485, 186, 36, '1', '10', '41', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:15:20', '2022-11-23 08:15:20'),
(486, 1380, 91, '2', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:16:09', '2022-11-23 08:16:09'),
(487, 193, 36, '2', '10', '68', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:19:24', '2022-11-23 08:19:24'),
(488, 1384, 91, '2', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:19:51', '2022-11-23 08:19:51'),
(489, 1384, 91, '2', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:19:58', '2022-11-23 08:19:58'),
(490, 189, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:22:32', '2022-11-23 08:22:32'),
(491, 1383, 91, '2', '10', '20', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:24:34', '2022-11-23 08:24:34'),
(492, 187, 36, '1', '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:25:24', '2022-11-23 08:25:24'),
(493, 1382, 91, '2', '15', '35', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:27:52', '2022-11-23 08:27:52'),
(494, 191, 36, '2', '15', '35', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:32:43', '2022-11-23 08:32:43'),
(495, 1092, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:34:39', '2022-11-23 08:34:39'),
(496, 1387, 91, '1', '20', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:35:07', '2022-11-23 08:35:07'),
(497, 1092, 74, '6', '3', '45', '30', NULL, NULL, NULL, NULL, '2022-11-23 08:35:27', '2022-11-23 08:35:27'),
(498, 1094, 74, '6', '4', '45', '30', NULL, NULL, NULL, NULL, '2022-11-23 08:37:18', '2022-11-23 08:37:18'),
(499, 186, 36, NULL, '10', '34', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:40:28', '2022-11-23 08:40:28'),
(500, 1388, 91, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:40:31', '2022-11-23 08:40:31'),
(501, 1385, 91, '2', '10', '4', NULL, NULL, NULL, NULL, NULL, '2022-11-23 08:40:50', '2022-11-23 08:40:50'),
(502, 215, 38, '3', '5', '35', NULL, NULL, NULL, NULL, NULL, '2022-11-23 17:24:31', '2022-11-23 17:24:31'),
(503, 216, 38, '3', '10', '35', NULL, NULL, NULL, NULL, NULL, '2022-11-23 17:24:45', '2022-11-23 17:24:45'),
(504, 217, 38, '3', '10', '8', NULL, NULL, NULL, NULL, NULL, '2022-11-23 17:32:49', '2022-11-23 17:32:49'),
(505, 218, 38, '3', '10', '27', NULL, NULL, NULL, NULL, NULL, '2022-11-23 17:45:03', '2022-11-23 17:45:03'),
(506, 1238, 84, '6', '4', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-23 17:55:45', '2022-11-23 17:55:45'),
(507, 1235, 84, '6', '2', '38', NULL, NULL, NULL, NULL, NULL, '2022-11-23 17:56:08', '2022-11-23 17:56:08'),
(508, 1239, 84, '6', '2', '40', NULL, NULL, NULL, NULL, NULL, '2022-11-23 17:56:31', '2022-11-23 17:56:31'),
(509, 1077, 73, '6', '2', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-23 18:19:12', '2022-11-23 18:19:12'),
(510, 1113, 75, '6', '2', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-23 18:19:41', '2022-11-23 18:19:41'),
(511, 1275, 85, '6', '2', '57.5', NULL, NULL, NULL, NULL, NULL, '2022-11-23 18:28:32', '2022-11-23 18:28:32'),
(512, 1311, 87, '6', '2', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-23 18:55:40', '2022-11-23 18:55:40'),
(513, 1131, 76, '6', '2', '57', NULL, NULL, NULL, NULL, NULL, '2022-11-23 19:30:44', '2022-11-23 19:30:44'),
(514, 1167, 78, '6', '2', '50', NULL, NULL, NULL, NULL, NULL, '2022-11-24 05:22:37', '2022-11-24 05:22:37'),
(515, 1095, 74, '6', '2', '50', '20', NULL, NULL, NULL, NULL, '2022-11-24 09:15:55', '2022-11-24 09:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_types`
--

CREATE TABLE `exercise_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercise_types`
--

INSERT INTO `exercise_types` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Retired', '2022-08-08 05:32:17', '2022-02-24 09:32:54', '2022-08-08 05:32:17'),
(2, 'Golf', NULL, '2022-02-24 07:57:00', '2022-08-27 08:42:10'),
(5, 'test', '2022-07-19 20:21:57', '2022-07-19 20:14:01', '2022-07-19 20:21:57'),
(6, '222', '2022-07-19 20:27:02', '2022-07-19 20:26:54', '2022-07-19 20:27:02'),
(7, 'test', '2022-07-23 20:45:20', '2022-07-23 20:43:34', '2022-07-23 20:45:20'),
(8, 'Paddel', NULL, '2022-08-27 08:42:21', '2022-08-27 08:42:21'),
(9, 'Fotball', NULL, '2022-08-27 08:42:31', '2022-08-27 08:42:31'),
(10, 'Dans', NULL, '2022-08-29 09:58:01', '2022-08-29 09:58:01'),
(11, 'Styrketrening', NULL, '2022-08-31 06:03:56', '2022-08-31 06:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footballs`
--

CREATE TABLE `footballs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `yoyo_test` varchar(50) DEFAULT NULL,
  `rm_squat` varchar(50) DEFAULT NULL,
  `lb_pass` varchar(50) DEFAULT NULL,
  `lb_shoot` varchar(50) DEFAULT NULL,
  `lb_point` varchar(50) DEFAULT NULL,
  `s_dribble` varchar(50) DEFAULT NULL,
  `s_dribble_left` varchar(50) DEFAULT NULL,
  `s_dribble_right` varchar(50) DEFAULT NULL,
  `turn` varchar(50) DEFAULT NULL,
  `bench_press` varchar(50) DEFAULT NULL,
  `markl_1RM` varchar(50) DEFAULT NULL,
  `vertXXX` varchar(50) DEFAULT NULL,
  `vertRXX` varchar(50) DEFAULT NULL,
  `vertLLX` varchar(50) DEFAULT NULL,
  `hoXXX` varchar(50) DEFAULT NULL,
  `right` varchar(50) DEFAULT NULL,
  `left` varchar(50) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `RMDead1` varchar(50) DEFAULT NULL,
  `RMSquat1` varchar(50) DEFAULT NULL,
  `RMBenk1` varchar(50) DEFAULT NULL,
  `speed_40m` varchar(50) DEFAULT NULL,
  `speed_30m` varchar(50) DEFAULT NULL,
  `speed_20m` varchar(50) DEFAULT NULL,
  `speed_10m` varchar(50) DEFAULT NULL,
  `hlslj` varchar(50) DEFAULT NULL,
  `hrslj` varchar(50) DEFAULT NULL,
  `s180` varchar(50) DEFAULT NULL,
  `lb_velocity` varchar(50) DEFAULT NULL,
  `dlbt` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footballs`
--

INSERT INTO `footballs` (`id`, `user_id`, `status`, `date`, `yoyo_test`, `rm_squat`, `lb_pass`, `lb_shoot`, `lb_point`, `s_dribble`, `s_dribble_left`, `s_dribble_right`, `turn`, `bench_press`, `markl_1RM`, `vertXXX`, `vertRXX`, `vertLLX`, `hoXXX`, `right`, `left`, `comments`, `RMDead1`, `RMSquat1`, `RMBenk1`, `speed_40m`, `speed_30m`, `speed_20m`, `speed_10m`, `hlslj`, `hrslj`, `s180`, `lb_velocity`, `dlbt`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'mid', NULL, '1.1', '2', '3', '4', '5.79', '6', NULL, NULL, '7', '8', '9', '10', '11', '12', '13', '14', '15', 'some text 16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 11:00:36', '2022-07-11 19:56:43'),
(2, 2, 'post', '2022-03-29', '11', '22', '33.3', '44', '55', '66', NULL, NULL, '77', '88', '99', '10', '11', '12', '13', '14', '15', 'some text 16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 07:41:28', '2022-07-11 19:57:16'),
(3, 2, 'post', '2022-07-07', '2', NULL, '3223', '23', '3', NULL, '2', '2', NULL, NULL, NULL, '3', '3', '3', '2', NULL, NULL, '2', '2', '2', '2', '2', '1.98', '2', '2', '2', '2', '23', '3', '23', '2022-07-11 20:49:32', '2022-07-11 20:45:40', '2022-07-11 20:49:32'),
(4, 2, 'mid', '1974-09-04', '58', NULL, '40', '74', '45', NULL, '33', '56', NULL, NULL, NULL, '99', '75', '60', '67', NULL, NULL, 'Est totam aliquid ha', '21', '54', '93', '76', '10', '1', '29', '35', '96', '10', '10', '32', NULL, '2022-07-18 05:33:53', '2022-07-18 05:38:08'),
(5, 2, 'post', '2022-07-19', '21321', NULL, '32434', '321321321', '11111232133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321321', '3213', '321', NULL, '2022-07-18 10:58:47', '2022-07-18 10:58:47'),
(6, 2, 'post', NULL, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 19:22:52', '2022-07-19 19:22:33', '2022-07-19 19:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Medlemmer SSA Steinkjer', '2022-05-09 09:11:21', '2022-02-25 07:11:20', '2022-05-09 09:11:21'),
(4, 'group two', '2022-05-09 09:11:24', '2022-03-17 02:08:05', '2022-05-09 09:11:24'),
(5, 'Medlem SSA Steinkjer', NULL, '2022-05-09 09:11:37', '2022-05-09 09:11:55'),
(6, '1232', '2022-07-19 20:54:36', '2022-07-19 20:48:02', '2022-07-19 20:54:36'),
(7, 'test', '2022-07-23 21:00:39', '2022-07-23 20:58:47', '2022-07-23 21:00:39'),
(8, 'Medlem SSA Steinkjer +65', NULL, '2022-09-01 07:48:14', '2022-09-01 07:48:55'),
(9, 'National 2005', NULL, '2022-10-06 09:49:51', '2022-10-06 09:49:51'),
(10, 'VukuG16', NULL, '2022-11-04 09:01:05', '2022-11-04 09:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `intensities`
--

CREATE TABLE `intensities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intensities`
--

INSERT INTO `intensities` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '0 Rest', NULL, '2022-03-23 08:05:36', '2022-03-23 08:05:36'),
(2, '1 Very Easy', NULL, '2022-03-23 08:05:36', '2022-03-23 08:05:36'),
(3, '2 Easy', NULL, '2022-03-23 08:05:36', '2022-03-23 08:05:36'),
(4, '3 Moderatee', NULL, '2022-03-23 03:42:02', '2022-03-23 03:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2022_02_24_084950_create_exercise_types_table', 2),
(6, '2022_02_24_085542_create_groups_table', 2),
(7, '2022_02_24_085634_create_professions_table', 2),
(8, '2022_02_25_112406_alter_users_table', 3),
(9, '2022_02_25_125902_alter_add_r_t_users_table', 4),
(10, '2022_03_09_144759_create_case_workers_table', 5),
(11, '2022_03_09_144938_create_mm_centers_table', 5),
(12, '2022_03_10_081708_create_bouncer_tables', 6),
(13, '2022_03_11_063002_create_exercise_categories_table', 7),
(14, '2022_03_11_073431_create_videos_table', 8),
(15, '2022_03_14_101226_create_program_with_videos_table', 9),
(16, '2022_03_14_125423_alter_program_with_videos_table', 10),
(17, '2022_03_15_065248_create_program_setups_table', 11),
(20, '2022_03_15_123630_create_pt_clipboards_table', 12),
(22, '2022_03_17_093922_create_setup_programs_table', 13),
(23, '2022_03_21_082323_create_exercise_progress', 14),
(24, '2022_03_21_150124_create_coaches_table', 15),
(25, '2022_03_22_064156_create_register_activities_table', 16),
(26, '2022_03_22_105652_create_pt_clipboard_logs_table', 17),
(27, '2022_03_23_075020_create_intensities_table', 18),
(28, '2022_03_23_085651_create_pain_categories_table', 19),
(29, '2022_03_23_113723_create_blog_categories_table', 20),
(30, '2022_03_24_113627_create_statistics_table', 21),
(31, '2022_03_25_060505_create_stats_questions_table', 22),
(32, '2022_03_25_062435_create_stats_question_values', 23),
(33, '2022_03_26_074947_create_anthropometrics_table', 24),
(34, '2022_03_28_074457_create_stats_testers_table', 25),
(35, '2022_03_28_105320_create_footballs_table', 26),
(36, '2022_03_28_130303_create_stats3d_screenings_table', 27),
(37, '2022_03_29_093837_create_setup_fixed_programs_table', 28),
(38, '2022_03_29_104731_create_setup_fixed_program_values_table', 29),
(39, '2022_03_30_071439_alter_add_bmi_anthropometrics', 30),
(40, '2022_03_30_103157_create_events_table', 31),
(41, '2022_04_07_081429_create_events_table', 32),
(42, '2022_04_14_062226_alter_address_and_personal_id_num_coaches', 33),
(43, '2022_04_14_081420_alter_resource_coach_lable_show_time_as_reminder_note', 34),
(44, '2022_05_02_121437_alter_add_new_anthropometrics_fields', 35),
(45, '2022_05_02_162442_alter_add_new_footballs_fields', 36),
(46, '2022_05_02_170320_alter_add_new_footballs_fields_again', 37),
(47, '2022_05_10_141629_alter_exercise_progress_add_newfield', 38),
(48, '2022_05_11_151304_alter_user_add_new_fildes_to', 39),
(49, '2022_05_26_162735_alter_user_add_new_update_fields', 40),
(50, '2022_06_14_074324_alter_add_new_two_anthropometrics_fields', 41),
(51, '2022_06_22_054420_alter_add_new_two_football_fields', 42),
(52, '2022_07_15_111631_alter_program_with_videos_table_desc_field', 43),
(53, '2019_05_03_000001_create_customer_columns', 44),
(54, '2019_05_03_000002_create_subscriptions_table', 45),
(55, '2019_05_03_000003_create_subscription_items_table', 45),
(56, '2022_07_20_071457_alter_my_subscriptions_add_fildes', 46),
(57, '2022_07_20_122850_alter_my_subscriptions_add_new_fields', 47),
(58, '2022_08_01_101305_alter_subscriptions_add_colum', 48),
(59, '2022_08_01_115753_alter_my_subscriptions_add_colum', 49),
(60, '2022_08_11_135148_create_combine_subscription_plan_programs', 50),
(61, '2022_11_01_102508_alter_register_activities_add_new_column', 51),
(62, '2022_11_14_130202_alter_my_subscription_add_payment_links', 52);

-- --------------------------------------------------------

--
-- Table structure for table `mm_centers`
--

CREATE TABLE `mm_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `is_active` tinyint(4) DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mm_centers`
--

INSERT INTO `mm_centers` (`id`, `name`, `address`, `postal_code`, `city`, `telephone`, `is_active`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Melhus', 'no where', '2345', 'Melhus', '22345345', 1, 'some text !', '2022-08-27 08:41:09', '2022-03-24 06:00:35', '2022-08-27 08:41:09'),
(2, 'SSA Steinkjer', 'Sjøfartsgata 10', '7714', 'Steinkjer', '40 40 04 77', 1, 'some text', NULL, '2022-03-24 01:34:19', '2022-08-27 08:41:39'),
(3, 'test2test', 'test', '1323', 'sdfsdfsdf', '24124124', 1, 'dsfsdfsdfs', '2022-07-19 21:05:42', '2022-07-19 20:58:20', '2022-07-19 21:05:42'),
(4, 'test', 'test', '123', 'test', '2323', 1, NULL, '2022-07-23 21:02:58', '2022-07-23 21:01:57', '2022-07-23 21:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `my_subscriptions`
--

CREATE TABLE `my_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_id` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `price_a_month` varchar(255) DEFAULT NULL,
  `price_6_month` varchar(255) DEFAULT NULL,
  `stripe_plan` varchar(255) DEFAULT NULL,
  `stripe_plan_6` varchar(255) DEFAULT NULL,
  `stripe_price_a_month` varchar(255) DEFAULT NULL,
  `stripe_price_6_month` varchar(255) DEFAULT NULL,
  `stripe_price_a_month_link` varchar(255) DEFAULT NULL,
  `stripe_price_6_month_link` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_subscriptions`
--

INSERT INTO `my_subscriptions` (`id`, `program_id`, `group_id`, `price_a_month`, `price_6_month`, `stripe_plan`, `stripe_plan_6`, `stripe_price_a_month`, `stripe_price_6_month`, `stripe_price_a_month_link`, `stripe_price_6_month_link`, `slug`, `create_by`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '40', '5', '100', '500', 'prod_M5psOT1bPbM8nY', NULL, 'price_1LNeD9FC9zDwzih7SDvp0CIs', 'price_1LNeDAFC9zDwzih7rQWSKHWE', NULL, NULL, 'makspulstest-(løb)31', '1', 'SSA Fotballperformance Online system', '2022-10-26 03:25:00', '2022-07-20 12:49:16', '2022-10-26 03:25:00'),
(2, '24', '5', '43', '432', 'prod_MWCxMhrWVrsFhV', 'prod_MWCxcqLQAWC3ZP', 'plan_MWCxyRNpXV0TRA', 'plan_MWCxiDuHtroeml', NULL, NULL, 'styrkeprogram-135', '1', 'RSRS', '2022-10-26 03:24:46', '2022-09-28 22:24:10', '2022-10-26 03:24:46'),
(3, '24', '5', '1', '6', 'prod_MjGBdQ7RLWxNlt', 'prod_MjGBGPvsviWy9I', 'plan_MjGBilRf85zR5e', 'plan_MjGB3cMD9YHNSX', NULL, NULL, 'styrkeprogram-148', '1', 'Test', '2022-11-02 19:36:48', '2022-11-02 19:35:31', '2022-11-02 19:36:48'),
(4, '25', '5', '1', '1', 'prod_MjGBhPNe2iSdOQ', 'prod_MjGBhMOUsTF49D', 'plan_MjGBEFnABaZjm9', 'plan_MjGBKBhsytz9vv', NULL, NULL, 'styrkeprogram-228', '1', 'Test', '2022-11-02 19:36:54', '2022-11-02 19:35:57', '2022-11-02 19:36:54'),
(5, '24', '5', '100', '500', 'prod_MjqtLxck4w9QTj', 'prod_MjqtbwGQXu6yhi', 'plan_Mjqta5QWv1eG1U', 'plan_MjqtjEfKH1BcCr', NULL, NULL, 'styrkeprogram-120', '1', 'Power', '2022-11-04 10:13:31', '2022-11-04 09:31:24', '2022-11-04 10:13:31'),
(6, '149', '5', '100', '200', 'prod_MoMXxX5aEINw2B', 'prod_MoMXOHLhWVmFqj', 'plan_MoMXJOMwlpLkiK', 'plan_MoMXOuAW6tF4xW', 'https://buy.stripe.com/test_fZeeYbgNa0Zwf8kaEI', 'https://buy.stripe.com/test_cN2eYbdAY9w28JWdQV', '1-rm-squat41', '1', 'this demo one', NULL, '2022-11-16 10:30:14', '2022-11-16 10:30:14'),
(7, '24', '5', '200', '300', 'prod_MoOscAgKjf8ZdS', 'prod_MoOsZ6fYmr808Z', 'plan_MoOsvbWqqaHMQz', 'plan_MoOsJ8fKFOfFPi', 'https://buy.stripe.com/test_dR69DR8gE4bIaS44gm', 'https://buy.stripe.com/test_bIY03h54s4bIe4g5kr', 'styrkeprogram-125', '1', 'its a demo', NULL, '2022-11-16 12:54:51', '2022-11-16 12:54:51'),
(8, '22', '5', '100', '500', 'prod_MoOtnYzt3wyBF1', 'prod_MoOtGy6sxaaUCv', 'plan_MoOtwdAMBPZng9', 'plan_MoOtgDOX6UfoSj', 'https://buy.stripe.com/test_bIY6rFbsQaA60dq28g', 'https://buy.stripe.com/test_14k2bp7cA7nU6BObIR', 'opvarmning-før-styrketrening43', '1', 'its a demo', '2022-11-16 12:56:35', '2022-11-16 12:55:51', '2022-11-16 12:56:35'),
(9, '27', '5', '20', '30', 'prod_MoOt0VpCtWaCHW', 'prod_MoOtPbZuZUO8gM', 'plan_MoOt4K4b5ssPrV', 'plan_MoOt54a69agisy', 'https://buy.stripe.com/test_aEU9DR9kI23Agco00a', 'https://buy.stripe.com/test_4gweYb54sgYu5xKeV5', 'cardio-20/10*819', '1', 'its a demo', NULL, '2022-11-16 12:56:02', '2022-11-16 12:56:02'),
(10, '29', '5', '140', '555', 'prod_MoOtrGEQQyBVAm', 'prod_MoOtihqB8hn0Pi', 'plan_MoOt262iArl9Ux', 'plan_MoOtupjyZoUfRG', 'https://buy.stripe.com/test_9AQ17ldAY9w21hu8wI', 'https://buy.stripe.com/test_14k3ft1Sg5fM7FS8wJ', 'opvarmning-før-styrketrening19', '1', 'its a demo', '2022-11-16 12:56:40', '2022-11-16 12:56:17', '2022-11-16 12:56:40'),
(11, '33', '5', '400', '500', 'prod_MoOuIB2Js5ZtGO', 'prod_MoOuJ3KmBYoSNR', 'plan_MoOu9WpbDJxb7H', 'plan_MoOuNuQXfAr1lE', 'https://buy.stripe.com/test_3csdU7eF2aA6d0c7sG', 'https://buy.stripe.com/test_4gw03hfJ68rY1hueV9', 'styrkeprogram-128', '1', 'its a demo', NULL, '2022-11-16 12:57:12', '2022-11-16 12:57:12'),
(12, '46', '5', '10', '25', 'prod_MoOvTNGwxGa6LQ', 'prod_MoOvql21D4UvP5', 'plan_MoOvaXV5Ti1Ski', 'plan_MoOvGuKezICfla', 'https://buy.stripe.com/test_3cs2bp40o8rY9O0aEU', 'https://buy.stripe.com/test_eVaaHV1SgdMiaS48wN', 'styrkeprogram49', '1', 'its a demo', NULL, '2022-11-16 12:57:22', '2022-11-16 12:57:22'),
(13, '73', '5', '10', '50', 'prod_MoOvOPyhrQhvgN', 'prod_MoOvlS9F6wat7e', 'plan_MoOvUy0JaLWixx', 'plan_MoOvdpcjNzlYfQ', 'https://buy.stripe.com/test_8wM2bp40o6jQgco14m', 'https://buy.stripe.com/test_fZe03hgNa5fM7FSaEX', 'warm-up24', '1', 'its a demo', NULL, '2022-11-16 12:57:37', '2022-11-16 12:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `pain_categories`
--

CREATE TABLE `pain_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` varchar(50) NOT NULL,
  `is_active` tinyint(4) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pain_categories`
--

INSERT INTO `pain_categories` (`id`, `name`, `sort`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'No pain', '1', 1, NULL, '2022-03-23 10:11:08', '2022-03-23 05:51:28'),
(2, 'A little pain', '2', 1, NULL, '2022-03-23 10:11:08', '2022-03-23 10:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('lasse@ssa.no', '$2y$10$Qixx2hTlab6WDiXXEQqzBuTudqvCJZevo4MvaFYMtzxgVHeShkw6a', '2022-09-13 16:40:11'),
('mr.kristiansen@hotmail.com', '$2y$10$/cR3hAcmM./PffzsGslGAOJ4CEUPzVmmLt9LBWOl5JcDWyM8zIKO.', '2022-09-30 09:02:30'),
('dowag52485@ishyp.com', '$2y$10$A7KYEhz7cGtNgMO1L6YeOux6d4jIc6h3OzBIHWYI9txIZDKUfxPFC', '2022-09-30 09:06:40'),
('rajobo5220@lutota.com', '$2y$10$D5.xazcqoc3KbYAbp1SfFeWlf1HiRoPCU2WkwLVkhSArN6bTFAt0a', '2022-09-30 09:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ability_id` bigint(20) UNSIGNED NOT NULL,
  `entity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT 0,
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `ability_id`, `entity_id`, `entity_type`, `forbidden`, `scope`) VALUES
(1, 1, 1, 'roles', 0, NULL),
(2, 2, 1, 'roles', 0, NULL),
(3, 3, 1, 'roles', 0, NULL),
(4, 4, 1, 'roles', 0, NULL),
(5, 5, 1, 'roles', 0, NULL),
(6, 1, 2, 'roles', 0, NULL),
(7, 2, 2, 'roles', 0, NULL),
(8, 1, 3, 'roles', 0, NULL),
(9, 2, 3, 'roles', 0, NULL),
(10, 3, 3, 'roles', 0, NULL),
(11, 4, 3, 'roles', 0, NULL),
(12, 5, 3, 'roles', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

CREATE TABLE `professions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Transportation', '2022-08-27 08:43:00', '2022-02-25 00:57:25', '2022-08-27 08:43:00'),
(2, 'Building and construc', '2022-08-27 08:43:04', '2022-02-25 00:57:36', '2022-08-27 08:43:04'),
(5, 'tres2', '2022-07-19 20:44:54', '2022-07-19 20:40:10', '2022-07-19 20:44:54'),
(6, 'test', '2022-07-23 20:57:42', '2022-07-23 20:54:39', '2022-07-23 20:57:42'),
(7, 'Bygge og anlæg', NULL, '2022-08-27 08:43:18', '2022-08-27 08:43:18'),
(8, 'Transport', NULL, '2022-08-27 08:43:31', '2022-08-27 08:43:31'),
(9, 'Service', NULL, '2022-08-27 08:43:38', '2022-08-27 08:43:38'),
(10, 'Kontor', NULL, '2022-08-27 08:43:45', '2022-08-27 08:43:45'),
(11, 'Sundhedsvæsnet', NULL, '2022-08-27 08:44:06', '2022-08-27 08:44:06'),
(12, 'Landbrug', NULL, '2022-08-27 08:44:13', '2022-08-27 08:44:13'),
(13, 'Fiskeri', NULL, '2022-08-27 08:44:35', '2022-08-27 08:44:35'),
(14, 'Industri/fabrik', NULL, '2022-08-27 08:44:53', '2022-08-27 08:44:53'),
(15, 'Skolevæsnet', NULL, '2022-08-27 08:45:11', '2022-08-27 08:45:11'),
(16, 'Frisør', NULL, '2022-08-27 08:45:18', '2022-08-27 08:45:18'),
(17, 'Studerende', NULL, '2022-08-27 08:45:34', '2022-08-27 08:45:34'),
(18, 'Dag og døgninstitutioner', NULL, '2022-08-27 08:46:03', '2022-08-27 08:46:03'),
(19, 'Hotel og resturation', NULL, '2022-08-27 08:46:15', '2022-08-27 08:46:15'),
(20, 'Rengøring', NULL, '2022-08-27 08:46:36', '2022-08-27 08:46:36'),
(21, 'Lager', NULL, '2022-08-27 08:46:43', '2022-08-27 08:46:43'),
(22, 'Fitnessbranchen', NULL, '2022-08-27 08:47:51', '2022-08-27 08:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `program_setups`
--

CREATE TABLE `program_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exercise_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `sort` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_setups`
--

INSERT INTO `program_setups` (`id`, `name`, `user_id`, `exercise_category_id`, `group_id`, `comment`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Home training one', 2, 4, 5, 'some text...', '2', '2022-07-11 05:23:40', '2022-03-15 07:09:35', '2022-07-11 05:23:40'),
(2, 'Home training two', 2, 2, 2, 'some text !!', '2', '2022-07-24 09:58:47', '2022-03-15 05:18:56', '2022-07-24 09:58:47'),
(3, 'Home training part two', 2, 2, 2, 'some text !!  its Very Important..', '2', '2022-07-24 17:41:08', '2022-03-18 09:50:33', '2022-07-24 17:41:08'),
(4, 'Program 2', 4, 1, 4, 'some text !!', '3', '2022-07-24 17:41:11', '2022-03-21 07:44:05', '2022-07-24 17:41:11'),
(5, 'Daniele Tosi', 2, 10, 5, NULL, '1', '2022-07-11 05:23:56', '2022-05-20 17:44:12', '2022-07-11 05:23:56'),
(6, 'Tjek', 2, 4, 5, NULL, '1', '2022-07-11 05:23:40', '2022-05-21 10:10:28', '2022-07-11 05:23:40'),
(7, 'hkkjhk', 2, 4, 5, NULL, '10', '2022-07-11 05:23:40', '2022-06-09 17:13:41', '2022-07-11 05:23:40'),
(8, 'Supermand', 2, 4, 5, NULL, '10', '2022-07-11 05:23:40', '2022-06-10 17:35:55', '2022-07-11 05:23:40'),
(9, 'Test for Ruben', 16, NULL, 5, NULL, '10', '2022-07-24 17:41:00', '2022-07-04 21:26:04', '2022-07-24 17:41:00'),
(10, 'Styrke', 20, NULL, 5, NULL, '10', '2022-07-24 17:41:39', '2022-07-18 21:12:23', '2022-07-24 17:41:39'),
(11, 'SSA begynderprogram', 2, NULL, 5, NULL, '10', '2022-08-01 04:40:42', '2022-07-24 17:41:31', '2022-08-01 04:40:42'),
(12, 'test', 2, NULL, 5, NULL, '10', '2022-08-03 09:11:43', '2022-08-03 09:10:26', '2022-08-03 09:11:43'),
(13, 'test', 2, NULL, 5, NULL, '10', '2022-08-15 04:34:05', '2022-08-03 09:20:35', '2022-08-15 04:34:05'),
(14, 'demo test 1', 2, NULL, 5, NULL, '10', '2022-08-15 04:34:01', '2022-08-05 12:41:16', '2022-08-15 04:34:01'),
(15, 'test', 7, NULL, 5, NULL, '10', '2022-08-15 04:33:57', '2022-08-05 21:38:35', '2022-08-15 04:33:57'),
(16, 'Coolt', 7, NULL, 5, NULL, '10', '2022-08-15 04:33:52', '2022-08-06 04:13:22', '2022-08-15 04:33:52'),
(17, 'Tjek 1', 2, NULL, 5, NULL, '10', '2022-08-15 04:33:46', '2022-08-06 05:30:32', '2022-08-15 04:33:46'),
(18, 'Begynderprogram SSA', 2, NULL, 5, NULL, '10', '2022-08-15 04:34:20', '2022-08-08 17:48:30', '2022-08-15 04:34:20'),
(19, 'Styrkeprogram SSA', 2, NULL, 5, NULL, '10', '2022-08-31 05:07:39', '2022-08-16 04:24:52', '2022-08-31 05:07:39'),
(20, 'Amelia Kolstad', 2, NULL, 5, NULL, '10', '2022-08-19 18:23:59', '2022-08-19 10:00:03', '2022-08-19 18:23:59'),
(21, 'Styrkeprogram SSA', 29, NULL, 5, NULL, '10', '2022-08-31 05:07:48', '2022-08-27 09:50:16', '2022-08-31 05:07:48'),
(22, 'Opvarmning før styrketrening', 30, NULL, 5, NULL, '10', NULL, '2022-08-29 10:04:37', '2022-08-29 10:10:53'),
(23, 'Styrkeprogram 1', 30, NULL, 5, NULL, '10', '2022-08-29 10:12:05', '2022-08-29 10:11:53', '2022-08-29 10:12:05'),
(24, 'Styrkeprogram 1', 30, NULL, 5, NULL, '10', NULL, '2022-08-29 10:11:53', '2022-08-29 10:11:53'),
(25, 'Styrkeprogram 2', 30, NULL, 5, NULL, '10', NULL, '2022-08-29 10:16:47', '2022-08-29 10:16:47'),
(26, 'Cardio 20/10*8', 30, NULL, 5, NULL, '10', '2022-08-29 10:22:59', '2022-08-29 10:22:41', '2022-08-29 10:22:59'),
(27, 'Cardio 20/10*8', 30, NULL, 5, NULL, '10', NULL, '2022-08-29 10:23:15', '2022-08-29 10:23:15'),
(28, 'test22', 32, NULL, 5, NULL, '10', '2022-09-16 08:35:55', '2022-08-29 23:48:30', '2022-09-16 08:35:55'),
(29, 'Opvarmning før styrketrening', 33, NULL, 5, NULL, '10', NULL, '2022-08-31 06:15:13', '2022-08-31 06:15:13'),
(30, 'Styrkeprogram SSA', 33, NULL, 5, NULL, '10', '2022-08-31 06:18:45', '2022-08-31 06:18:28', '2022-08-31 06:18:45'),
(31, 'Styrkeprogram', 33, NULL, 5, NULL, '10', NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(32, 'Konditionsdel 10 sek *10 sek', 33, NULL, 5, NULL, '10', NULL, '2022-08-31 07:07:48', '2022-08-31 07:07:48'),
(33, 'Styrkeprogram 1', 34, NULL, 5, NULL, '10', NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(34, 'Styrkeprogram 2', 34, NULL, 5, NULL, '10', NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(35, 'Opvarmning før styrketrening', 35, NULL, 5, NULL, '10', NULL, '2022-09-01 08:46:38', '2022-09-01 08:46:38'),
(36, 'Styrkeprogram 1', 35, NULL, 5, NULL, '10', '2022-09-01 08:56:04', '2022-09-01 08:50:22', '2022-09-01 08:56:04'),
(37, 'Styrkeprogram 1', 35, NULL, 5, NULL, '10', NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(38, 'Styrkeprogram 2', 35, NULL, 5, NULL, '10', NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(39, 'Konditionsprogram 20/10', 35, NULL, 5, NULL, '10', NULL, '2022-09-01 09:01:41', '2022-09-01 09:01:41'),
(40, 'Makspulstest (Løb)', 29, NULL, 5, NULL, '10', '2022-09-08 07:33:10', '2022-09-05 07:28:06', '2022-09-08 07:33:10'),
(41, 'Test', 29, NULL, 5, NULL, '10', '2022-09-08 07:32:57', '2022-09-06 07:52:25', '2022-09-08 07:32:57'),
(42, 'Opvarmning før styrketrening', 36, NULL, 5, NULL, '10', NULL, '2022-09-07 07:23:36', '2022-09-07 07:23:36'),
(43, 'Styrkeprogram 1', 36, NULL, 5, NULL, '10', NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(44, 'Konditionsprogram 20/10', 36, NULL, 5, NULL, '10', NULL, '2022-09-07 07:26:45', '2022-09-07 07:26:45'),
(45, 'Oppvarmning', 37, NULL, 5, NULL, '10', NULL, '2022-09-07 07:43:38', '2022-09-07 07:43:38'),
(46, 'Styrkeprogram', 37, NULL, 5, NULL, '10', NULL, '2022-09-07 07:44:11', '2022-09-07 07:44:11'),
(47, 'Opvarmning før styrketrening', 38, NULL, 5, NULL, '10', NULL, '2022-09-07 13:03:14', '2022-09-07 13:03:14'),
(48, 'Styrkeprogram 1', 38, NULL, 5, NULL, '10', NULL, '2022-09-07 13:04:04', '2022-09-07 13:04:04'),
(49, 'Konditionsprogram 20/10', 38, NULL, 5, NULL, '10', NULL, '2022-09-07 13:04:57', '2022-09-07 13:04:57'),
(50, 'Test', 29, NULL, 5, NULL, '10', '2022-09-08 07:32:45', '2022-09-08 07:29:52', '2022-09-08 07:32:45'),
(51, 'Intervalprogram 4 set *6 minutter (Tærskeltræning)', 29, NULL, 5, NULL, '10', '2022-09-08 07:35:18', '2022-09-08 07:33:32', '2022-09-08 07:35:18'),
(52, 'Intervalprogram 4 set *6 minutter (Tærskeltræning)', 29, NULL, 5, NULL, '10', NULL, '2022-09-08 07:35:41', '2022-09-08 07:35:41'),
(53, 'test', 32, NULL, 5, NULL, '10', NULL, '2022-09-08 18:27:03', '2022-09-08 18:27:03'),
(54, 'Oppvarmning tredemølle', 39, NULL, 5, NULL, '10', NULL, '2022-09-13 08:14:02', '2022-09-13 08:14:02'),
(55, 'Styrkeprogram', 39, NULL, 5, NULL, '10', '2022-09-13 08:27:12', '2022-09-13 08:24:10', '2022-09-13 08:27:12'),
(56, 'Styrkeprogram', 39, NULL, 5, NULL, '10', NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(57, 'Tjek', 29, NULL, 5, NULL, '10', NULL, '2022-09-13 15:58:57', '2022-09-13 15:58:57'),
(58, 'Oppvarmning tredemølle', 40, NULL, 5, NULL, '10', NULL, '2022-09-14 08:51:47', '2022-09-14 08:51:47'),
(59, 'Oppvarmning tredemølle', 41, NULL, 5, NULL, '10', NULL, '2022-09-14 08:52:26', '2022-09-14 08:52:26'),
(60, 'Styrkeprogram', 40, NULL, 5, NULL, '10', NULL, '2022-09-14 08:55:43', '2022-09-14 08:55:43'),
(61, 'Styrkeprogram', 41, NULL, 5, NULL, '10', NULL, '2022-09-14 08:56:05', '2022-09-14 08:56:05'),
(62, 'Test', 42, NULL, 5, NULL, '10', '2022-09-15 05:30:41', '2022-09-15 05:28:03', '2022-09-15 05:30:41'),
(63, 'Oppvarmning tredemølle', 43, NULL, 5, NULL, '10', '2022-09-16 07:22:27', '2022-09-16 07:21:58', '2022-09-16 07:22:27'),
(64, 'Oppvarmning tredemølle', 43, NULL, 5, NULL, '10', NULL, '2022-09-16 07:22:44', '2022-09-16 07:22:44'),
(65, 'Styrkeprogram 1', 43, NULL, 5, NULL, '10', '2022-09-16 08:20:14', '2022-09-16 07:23:10', '2022-09-16 08:20:14'),
(66, 'Styrkeprogram 2', 43, NULL, 5, NULL, '10', '2022-09-16 07:24:44', '2022-09-16 07:23:30', '2022-09-16 07:24:44'),
(67, 'Styrkeprogram 1', 43, NULL, 5, NULL, '10', NULL, '2022-09-16 07:31:45', '2022-09-16 08:21:20'),
(68, 'Styrkeprogram 2', 43, NULL, 5, NULL, '10', NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(69, 'test', 32, NULL, 5, NULL, '10', NULL, '2022-09-17 21:28:26', '2022-09-17 21:28:26'),
(70, 'Mobilitetsprogram', 44, NULL, 5, NULL, '10', NULL, '2022-09-19 05:26:46', '2022-09-19 05:26:46'),
(71, 'Styrkeprogram', 45, NULL, 5, NULL, '10', NULL, '2022-09-19 12:20:29', '2022-09-19 12:20:29'),
(72, 'Warm-Up', 46, NULL, 5, NULL, '10', '2022-09-21 13:16:25', '2022-09-21 13:15:38', '2022-09-21 13:16:25'),
(73, 'Warm-Up', 46, NULL, 5, NULL, '10', NULL, '2022-09-21 13:16:40', '2022-09-21 13:16:40'),
(74, 'Strength program', 46, NULL, 5, NULL, '10', NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(75, 'Styrkeprogram 1', 47, NULL, 5, NULL, '10', NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(76, 'Styrkeprogram 2', 47, NULL, 5, NULL, '10', NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(77, 'Styrkeprogram 1', 48, NULL, 5, NULL, '10', '2022-10-03 06:05:56', '2022-09-26 06:11:16', '2022-10-03 06:05:56'),
(78, 'Styrkeprogram 2', 48, NULL, 5, NULL, '10', '2022-10-03 06:06:05', '2022-09-26 06:11:37', '2022-10-03 06:06:05'),
(79, 'Opvarmning før styrketrening', 49, NULL, 5, NULL, '10', NULL, '2022-09-26 07:04:02', '2022-09-26 07:04:02'),
(80, 'Styrkeprogram 1', 49, NULL, 5, NULL, '10', NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(81, 'Oppvarmning tredemølle', 50, NULL, 5, NULL, '10', NULL, '2022-09-26 09:13:02', '2022-09-26 09:13:02'),
(82, 'Styrkeprogram 1', 50, NULL, 5, NULL, '10', NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(83, 'Styrkeprogram 2', 50, NULL, 5, NULL, '10', NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(84, 'Opvarmning før styrketrening', 51, NULL, 5, NULL, '10', '2022-09-29 08:08:16', '2022-09-29 08:05:29', '2022-09-29 08:08:16'),
(85, 'Oppvarmning ellipsemaskine', 51, NULL, 5, NULL, '10', NULL, '2022-09-29 08:08:36', '2022-09-29 08:08:36'),
(86, 'Styrkeprogram', 51, NULL, 5, NULL, '10', '2022-09-29 08:12:38', '2022-09-29 08:10:35', '2022-09-29 08:12:38'),
(87, 'Oppvarmning romaskine', 52, NULL, 5, NULL, '10', NULL, '2022-09-29 08:13:42', '2022-09-29 08:13:42'),
(88, 'Styrkeprogram 1', 52, NULL, 5, NULL, '10', NULL, '2022-09-29 08:14:24', '2022-09-29 08:14:24'),
(89, 'Bevegelighedsprogram', 51, NULL, 5, NULL, '10', NULL, '2022-09-29 08:40:03', '2022-09-29 08:40:03'),
(90, 'Styrkeprogram 1', 51, NULL, 5, NULL, '10', NULL, '2022-09-29 08:56:38', '2022-09-29 08:56:38'),
(91, 'Styrkeprogram 1', 48, NULL, 5, NULL, '10', NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(92, 'Styrkeprogram 2', 48, NULL, 5, NULL, '10', '2022-10-03 06:09:54', '2022-10-03 06:07:07', '2022-10-03 06:09:54'),
(93, 'Styrkeprogram 2', 48, NULL, 5, NULL, '10', NULL, '2022-10-03 06:10:14', '2022-10-03 06:10:14'),
(94, 'Styrkeprogram 1 (Concentric block)', 29, NULL, 5, NULL, '10', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(95, 'Opvarmning program 1', 53, NULL, 5, NULL, '10', NULL, '2022-10-10 11:42:15', '2022-10-10 11:42:15'),
(96, 'Styrkeprogram 1', 53, NULL, 5, NULL, '10', NULL, '2022-10-10 11:42:43', '2022-10-10 11:42:43'),
(97, 'Opvarmning program 2', 53, NULL, 5, NULL, '10', '2022-10-13 09:43:44', '2022-10-13 04:18:56', '2022-10-13 09:43:44'),
(98, 'Styrkeprogram 2', 53, NULL, 5, NULL, '10', '2022-10-13 09:43:32', '2022-10-13 04:19:33', '2022-10-13 09:43:32'),
(99, 'Opvarmning program 2', 53, NULL, 5, NULL, '10', NULL, '2022-10-13 09:45:05', '2022-10-13 09:45:05'),
(100, 'Styrkeprogram 2', 53, NULL, 5, NULL, '10', NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(101, 'Opvarmning program 3', 53, NULL, 5, NULL, '10', NULL, '2022-10-13 09:53:46', '2022-10-13 09:53:46'),
(102, 'Styrkeprogram 3', 53, NULL, 5, NULL, '10', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(103, 'Oppvarmning romaskine', 61, NULL, 5, NULL, '10', NULL, '2022-10-25 13:12:44', '2022-10-25 13:12:44'),
(104, 'Styrkeprogram 1', 61, NULL, 5, NULL, '10', NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(105, 'Styrkeprogram 2', 61, NULL, 5, NULL, '10', NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(106, 'Knebøy 1RM', 62, NULL, 5, NULL, '10', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(107, 'test ruben', 60, NULL, 5, NULL, '10', NULL, '2022-11-03 06:23:17', '2022-11-03 06:23:17'),
(108, 'test2 ruben', 60, NULL, 5, NULL, '10', NULL, '2022-11-03 06:25:07', '2022-11-03 06:25:07'),
(109, 'test3 ruben', 60, NULL, 5, NULL, '10', '2022-11-03 06:32:35', '2022-11-03 06:27:43', '2022-11-03 06:32:35'),
(110, 'testruben3', 60, NULL, 5, NULL, '10', '2022-11-03 06:56:16', '2022-11-03 06:33:00', '2022-11-03 06:56:16'),
(111, 'test3 ruben', 60, NULL, 5, NULL, '10', NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(112, 'Opvarmning før styrketrening', 29, NULL, 5, NULL, '10', '2022-11-04 09:44:24', '2022-11-04 09:43:10', '2022-11-04 09:44:24'),
(113, 'Opvarmning', 69, NULL, 5, NULL, '10', '2022-11-04 10:13:26', '2022-11-04 10:09:23', '2022-11-04 10:13:26'),
(114, 'Styrkeprogram 1', 69, NULL, 5, NULL, '10', '2022-11-04 10:13:16', '2022-11-04 10:09:46', '2022-11-04 10:13:16'),
(115, 'Test', 53, NULL, 5, NULL, '10', '2022-11-05 10:48:54', '2022-11-05 10:47:48', '2022-11-05 10:48:54'),
(116, 'Program for øgning i 1 RM Squat', 68, NULL, 10, NULL, '10', '2022-11-13 17:43:01', '2022-11-05 10:49:33', '2022-11-13 17:43:01'),
(117, 'Program for øgning i 1 RM Squat', 69, NULL, 10, NULL, '10', '2022-11-13 17:43:12', '2022-11-05 10:49:56', '2022-11-13 17:43:12'),
(118, 'Program for øgning i 1 RM Squat', 71, NULL, 10, NULL, '10', '2022-11-13 17:42:49', '2022-11-05 10:50:16', '2022-11-13 17:42:49'),
(119, 'Program for øgning i 1 RM Squat', 72, NULL, 10, NULL, '10', '2022-11-13 17:42:38', '2022-11-05 10:50:47', '2022-11-13 17:42:38'),
(120, 'Program for øgning i 1 RM Squat', 73, NULL, 10, NULL, '10', '2022-11-13 17:42:29', '2022-11-05 10:51:07', '2022-11-13 17:42:29'),
(121, 'Program for øgning i 1 RM Squat', 74, NULL, 10, NULL, '10', '2022-11-13 17:42:19', '2022-11-05 10:51:27', '2022-11-13 17:42:19'),
(122, 'Program for øgning i 1 RM Squat', 75, NULL, 10, NULL, '10', '2022-11-13 17:42:08', '2022-11-05 10:51:45', '2022-11-13 17:42:08'),
(123, 'Program for øgning i 1 RM Squat', 76, NULL, 10, NULL, '10', '2022-11-13 17:41:57', '2022-11-05 10:52:05', '2022-11-13 17:41:57'),
(124, 'Program for øgning i 1 RM Squat', 76, NULL, 10, NULL, '10', '2022-11-05 10:53:47', '2022-11-05 10:52:24', '2022-11-05 10:53:47'),
(125, 'Program for øgning i 1 RM Squat', 77, NULL, 10, NULL, '10', '2022-11-13 17:41:46', '2022-11-05 10:52:40', '2022-11-13 17:41:46'),
(126, 'Program for øgning i 1 RM Squat', 78, NULL, 10, NULL, '10', '2022-11-13 17:41:36', '2022-11-05 10:52:58', '2022-11-13 17:41:36'),
(127, 'Program for øgning i 1 RM Squat', 79, NULL, 10, NULL, '10', '2022-11-13 17:41:25', '2022-11-05 10:53:33', '2022-11-13 17:41:25'),
(128, 'Testprogram', 53, NULL, 5, NULL, '10', '2022-11-06 11:11:16', '2022-11-06 11:10:17', '2022-11-06 11:11:16'),
(129, 'Opvarmning program 1', 80, NULL, 5, NULL, '10', NULL, '2022-11-12 10:48:44', '2022-11-12 10:48:44'),
(130, 'Styrkeprogram 1 (Concentric block)', 80, NULL, 5, NULL, '10', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(131, 'Opvarmning program 1', 81, NULL, 5, NULL, '10', NULL, '2022-11-12 12:14:19', '2022-11-12 12:14:19'),
(132, 'Styrkeprogram 1 (Concentric block)', 81, NULL, 5, NULL, '10', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(133, 'Opvarmning program 2', 81, NULL, 5, NULL, '10', NULL, '2022-11-12 12:17:06', '2022-11-12 12:17:06'),
(134, 'Styrkeprogram 2 (Concentric block)', 81, NULL, 5, NULL, '10', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(135, 'Tjek', 81, NULL, 5, NULL, '10', '2022-11-13 11:43:02', '2022-11-13 11:41:30', '2022-11-13 11:43:02'),
(136, '1 RM Squat', 68, NULL, 10, NULL, '10', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(137, '1 RM Squat', 69, NULL, 10, NULL, '10', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(138, '1 RM Squat', 71, NULL, 10, NULL, '10', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(139, '1 RM Squat', 72, NULL, 10, NULL, '10', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(140, '1 RM Squat', 73, NULL, 10, NULL, '10', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(141, '1 RM Squat', 74, NULL, 10, NULL, '10', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(142, '1 RM Squat', 75, NULL, 10, NULL, '10', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(143, '1 RM Squat', 76, NULL, 10, NULL, '10', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(144, '1 RM Squat', 77, NULL, 10, NULL, '10', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(145, '1 RM Squat', 78, NULL, 10, NULL, '10', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(146, '1 RM Squat', 79, NULL, 10, NULL, '10', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(147, '1 RM Squat', 82, NULL, 10, NULL, '10', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(148, '1 RM Squat', 83, NULL, 10, NULL, '10', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(149, '1 RM Squat', 84, NULL, 5, NULL, '10', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(150, '1 RM Squat', 84, NULL, 10, NULL, '10', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(151, '1 RM Squat', 85, NULL, 10, NULL, '10', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(152, '1 RM Squat', 86, NULL, 10, NULL, '10', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(153, '1 RM Squat', 87, NULL, 10, NULL, '10', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(154, '1 RM Squat', 88, NULL, 10, NULL, '10', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(155, '1 RM Squat', 89, NULL, 10, NULL, '10', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(156, '1 RM Squat', 90, NULL, 10, NULL, '10', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(157, 'Opvarmning før styrketrening', 91, NULL, 5, NULL, '10', NULL, '2022-11-17 16:52:56', '2022-11-17 16:52:56'),
(158, 'Styrkeprogram', 91, NULL, 5, NULL, '10', NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(159, 'Opvarmning før styrketrening', 92, NULL, 5, NULL, '10', NULL, '2022-11-17 16:54:39', '2022-11-17 16:54:39'),
(160, 'Styrkeprogram', 92, NULL, 5, NULL, '10', NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(161, 'Opvarmning før styrketrening', 93, NULL, 5, NULL, '10', NULL, '2022-11-17 18:03:29', '2022-11-17 18:03:29'),
(162, 'Styrkeprogram 1', 93, NULL, 5, NULL, '10', NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(163, 'Styrkeprogram 2', 93, NULL, 5, NULL, '10', NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(164, 'Opvarmning før styrketrening (AK)', 94, NULL, 5, NULL, '10', NULL, '2022-11-18 09:38:37', '2022-11-18 09:38:37'),
(165, 'Styrkeprogram', 94, NULL, 5, NULL, '10', NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(166, 'Oppvarmning program 2', 80, NULL, 5, NULL, '10', NULL, '2022-11-22 13:08:15', '2022-11-22 13:08:15'),
(167, 'Styrkeprogram 2', 80, NULL, 5, NULL, '10', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(168, 'Opvarmning før styrketrening', 95, NULL, 5, NULL, '10', NULL, '2022-11-22 15:18:58', '2022-11-22 15:18:58'),
(169, 'Styrkeprogram', 95, NULL, 5, NULL, '10', NULL, '2022-11-22 15:19:17', '2022-11-22 15:19:17'),
(170, 'Opvarmning før styrketrening', 96, NULL, 5, NULL, '10', NULL, '2022-11-22 15:25:27', '2022-11-22 15:25:27'),
(171, 'Styrkeprogram', 96, NULL, 5, NULL, '10', NULL, '2022-11-22 15:26:18', '2022-11-22 15:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `program_with_videos`
--

CREATE TABLE `program_with_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exercise_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `load` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `sort` bigint(100) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_with_videos`
--

INSERT INTO `program_with_videos` (`id`, `name`, `video_id`, `exercise_category_id`, `load`, `description`, `sort`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Knebøy', 8, 4, 'Lett', NULL, 2, 1, '2022-07-11 05:23:40', '2022-03-14 10:33:39', '2022-07-11 05:23:40'),
(2, 'Hip-Thrust', 7, 4, 'Lett', NULL, 3, 1, '2022-07-11 05:23:40', '2022-03-14 07:52:38', '2022-07-11 05:23:40'),
(3, 'Leg Extension', 9, 4, 'Lett', NULL, 1, 1, '2022-07-11 05:23:40', '2022-05-23 07:09:42', '2022-07-11 05:23:40'),
(4, 'Global Squat', 10, 4, 'Lett', NULL, 4, 1, '2022-07-11 05:23:40', '2022-05-23 07:10:57', '2022-07-11 05:23:40'),
(5, 'Benpress', 11, 4, 'Lett', NULL, 5, 1, '2022-07-11 05:23:40', '2022-05-23 07:11:27', '2022-07-11 05:23:40'),
(6, 'Markløft', 12, 4, 'Lett', NULL, 6, 1, '2022-07-11 05:23:40', '2022-05-23 07:11:50', '2022-07-11 05:23:40'),
(7, 'Strak mark', 13, 7, 'Lett', NULL, 7, 1, '2022-07-11 05:23:46', '2022-05-23 07:12:20', '2022-07-11 05:23:46'),
(8, 'Squat to stand', 14, 4, 'Lett', NULL, 8, 1, '2022-07-11 05:23:40', '2022-05-23 07:13:00', '2022-07-11 05:23:40'),
(9, 'Spinrotation', 15, 9, 'Lett', NULL, 9, 1, '2022-07-11 05:23:52', '2022-05-23 07:13:35', '2022-07-11 05:23:52'),
(10, 'Benkpress', 16, 6, 'Lett', NULL, 10, 1, '2022-07-11 05:23:43', '2022-05-23 07:13:58', '2022-07-11 05:23:43'),
(11, 'Brystpress med hantler', 17, 6, 'Lett', NULL, 11, 1, '2022-07-11 05:23:43', '2022-05-23 07:14:53', '2022-07-11 05:23:43'),
(12, 'Skråbenk', 18, 6, 'Lett', NULL, 12, 1, '2022-07-11 05:23:43', '2022-05-23 07:15:31', '2022-07-11 05:23:43'),
(13, 'Crunch', 19, 9, 'Lett', NULL, 13, 1, '2022-07-11 05:23:52', '2022-05-23 08:03:51', '2022-07-11 05:23:52'),
(14, 'Mave maskin', 20, 9, 'Lett', NULL, 14, 1, '2022-07-11 05:23:52', '2022-05-23 08:04:31', '2022-07-11 05:23:52'),
(15, 'Brystpress maskin', 21, 6, 'Lett', NULL, 15, 1, '2022-07-11 05:23:43', '2022-05-23 08:04:58', '2022-07-11 05:23:43'),
(16, 'Nedtrekk bredt grep', 22, 7, 'Lett', NULL, 16, 1, '2022-07-11 05:23:46', '2022-05-23 08:05:24', '2022-07-11 05:23:46'),
(17, 'Sittende roing', 23, 7, 'Lett', NULL, 17, 1, '2022-07-11 05:23:46', '2022-05-23 08:05:48', '2022-07-11 05:23:46'),
(18, 'Rygghev', 25, 7, 'Lett', NULL, 18, 1, '2022-07-11 05:23:46', '2022-05-23 08:06:12', '2022-07-11 05:23:46'),
(19, 'Stående Triceps m/tau', 26, 11, 'Lett', NULL, 19, 1, '2022-07-11 05:24:00', '2022-05-23 08:06:52', '2022-07-11 05:24:00'),
(20, 'Triceps press m/tau på knærne', 27, 11, 'Lett', NULL, 20, 1, '2022-07-11 05:24:00', '2022-05-23 08:07:27', '2022-07-11 05:24:00'),
(21, 'Biceps m/hantler', 28, 12, 'Lett', NULL, 21, 1, '2022-07-11 05:24:08', '2022-05-23 08:08:00', '2022-07-11 05:24:08'),
(22, 'Romaskin', 29, 4, 'Lett', NULL, 22, 1, '2022-07-11 05:23:40', '2022-05-23 08:08:28', '2022-07-11 05:23:40'),
(23, 'Tåhev stående', 30, 4, 'Lett', NULL, 23, 1, '2022-07-11 05:23:40', '2022-05-23 08:08:53', '2022-07-11 05:23:40'),
(24, 'Tåhev sittende', 31, 4, 'Lett', NULL, 24, 1, '2022-07-11 05:23:40', '2022-05-23 08:09:19', '2022-07-11 05:23:40'),
(25, 'Triceps Kabel', 32, 11, 'Lett', NULL, 25, 1, '2022-07-11 05:24:00', '2022-05-23 08:09:39', '2022-07-11 05:24:00'),
(26, 'Trappemaskin', 33, 8, 'Lett', NULL, 26, 1, '2022-07-11 05:23:49', '2022-05-23 08:10:06', '2022-07-11 05:23:49'),
(27, 'Sykkel med armer', 34, 8, 'Lett', NULL, 27, 1, '2022-07-11 05:23:49', '2022-05-23 08:10:30', '2022-07-11 05:23:49'),
(28, 'Spirit pec rygg', 35, 10, 'Lett', NULL, 28, 1, '2022-07-11 05:23:56', '2022-05-23 08:10:59', '2022-07-11 05:23:56'),
(29, 'Spirit pec bryst', 36, 6, 'Lett', NULL, 29, 1, '2022-07-11 05:23:43', '2022-05-23 08:11:25', '2022-07-11 05:23:43'),
(30, 'Skulderpress', 37, 7, 'Lett', NULL, 30, 1, '2022-07-11 05:23:46', '2022-05-23 08:12:00', '2022-07-11 05:23:46'),
(31, 'Skrå benk press', 38, 6, 'Lett', NULL, 31, 1, '2022-07-11 05:23:43', '2022-05-23 08:12:38', '2022-07-11 05:23:43'),
(32, 'Ski', 39, 8, 'Lett', NULL, 32, 1, '2022-07-11 05:23:49', '2022-05-23 08:13:02', '2022-07-11 05:23:49'),
(33, 'Sit ups', 40, 9, 'Lett', NULL, 33, 1, '2022-07-11 05:23:52', '2022-05-23 08:13:28', '2022-07-11 05:23:52'),
(34, 'Skulderpress manualer', 41, 11, 'Lett', NULL, 34, 1, '2022-07-11 05:24:00', '2022-05-23 08:13:47', '2022-07-11 05:24:00'),
(35, 'Ring face pull', 43, 10, 'Lett', NULL, 35, 1, '2022-07-11 05:23:56', '2022-05-23 08:14:40', '2022-07-11 05:23:56'),
(36, 'Pull ups', 44, 7, 'Lett', NULL, 36, 1, '2022-07-11 05:23:46', '2022-05-23 08:15:08', '2022-07-11 05:23:46'),
(37, 'Pull ups med bånd', 45, 7, 'Lett', NULL, 37, 1, '2022-07-11 05:23:46', '2022-05-23 08:17:33', '2022-07-11 05:23:46'),
(38, 'Lat pull down', 46, 7, 'Lett', NULL, 38, 1, '2022-07-11 05:23:46', '2022-05-23 08:18:01', '2022-07-11 05:23:46'),
(39, 'Lat pull down kabel', 47, 7, 'Lett', NULL, 39, 1, '2022-07-11 05:23:46', '2022-05-23 08:18:23', '2022-07-11 05:23:46'),
(40, 'Lat pull down neutral grip', 48, 7, 'Lett', NULL, 40, 1, '2022-07-11 05:23:46', '2022-05-23 08:18:43', '2022-07-11 05:23:46'),
(41, 'Bakside skuldre kabel', 49, 7, 'Lett', NULL, 41, 1, '2022-07-11 05:23:46', '2022-05-23 08:19:16', '2022-07-11 05:23:46'),
(42, 'Cable fly', 50, 6, 'Lett', NULL, 42, 1, '2022-07-11 05:23:43', '2022-05-23 08:19:41', '2022-07-11 05:23:43'),
(43, 'Kettlebell swing', 51, 4, 'Lett', NULL, 43, 1, '2022-07-11 05:23:40', '2022-05-23 08:20:04', '2022-07-11 05:23:40'),
(44, 'Hamstring curl liggende', 52, 4, 'Lett', NULL, 44, 1, '2022-07-11 05:23:40', '2022-05-23 08:20:28', '2022-07-11 05:23:40'),
(45, 'Hamstring curl sittende', 53, 4, 'Lett', NULL, 45, 1, '2022-07-11 05:23:40', '2022-05-23 08:20:56', '2022-07-11 05:23:40'),
(46, 'Glute ham raises', 54, 4, 'Lett', NULL, 46, 1, '2022-07-11 05:23:40', '2022-05-23 08:21:15', '2022-07-11 05:23:40'),
(47, 'Sykkel', 55, 8, 'Lett', NULL, 47, 1, '2022-07-11 05:23:49', '2022-05-23 08:21:39', '2022-07-11 05:23:49'),
(48, 'Biceps curl', 56, 12, 'Lett', NULL, 48, 1, '2022-07-11 05:24:08', '2022-05-23 08:24:18', '2022-07-11 05:24:08'),
(49, 'Bent over row', 57, 7, 'Lett', NULL, 49, 1, '2022-07-11 05:23:46', '2022-05-23 08:25:05', '2022-07-11 05:23:46'),
(50, 'En fot strakmark med kneløft', 58, 4, 'Lett', NULL, 50, 1, '2022-07-11 05:23:40', '2022-05-23 08:25:45', '2022-07-11 05:23:40'),
(51, 'Benpress', 59, 4, 'Lett', NULL, 51, 1, '2022-07-11 05:23:40', '2022-05-23 08:26:15', '2022-07-11 05:23:40'),
(52, 'Assisted pull ups', 60, 7, 'Lett', NULL, 52, 1, '2022-07-11 05:23:46', '2022-05-23 08:27:19', '2022-07-11 05:23:46'),
(53, 'Arnold skulderpress', 61, 7, 'Lett', NULL, 53, 1, '2022-07-11 05:23:46', '2022-05-23 08:27:50', '2022-07-11 05:23:46'),
(54, '3D mølle', 62, 8, 'Lett', NULL, 54, 1, '2022-07-11 05:23:49', '2022-05-23 08:28:19', '2022-07-11 05:23:49'),
(55, 'Biceps curls manualer', 63, 12, 'Lett', NULL, 55, 1, '2022-07-11 05:24:08', '2022-05-23 08:28:41', '2022-07-11 05:24:08'),
(56, 'Triceps pull down', 64, 11, 'Lett', NULL, 56, 1, '2022-07-11 05:24:00', '2022-05-23 08:29:11', '2022-07-11 05:24:00'),
(57, 'Triceps extention', 65, 11, 'Lett', NULL, 57, 1, '2022-07-11 05:24:00', '2022-05-23 08:29:44', '2022-07-11 05:24:00'),
(58, 'Rygghev', 66, 7, 'Lett', NULL, 58, 1, '2022-07-11 05:23:46', '2022-05-23 08:30:06', '2022-07-11 05:23:46'),
(59, 'Maskinsittende', 67, 7, 'Lett', NULL, 59, 1, '2022-07-11 05:23:46', '2022-05-23 08:31:18', '2022-07-11 05:23:46'),
(60, 'Sittende roing', 68, 7, 'Lett', NULL, 59, 1, '2022-07-11 05:23:46', '2022-05-23 08:31:43', '2022-07-11 05:23:46'),
(61, 'Nedtrekk', 69, 7, 'Lett', NULL, 61, 1, '2022-07-11 05:23:46', '2022-05-23 08:32:12', '2022-07-11 05:23:46'),
(62, 'Brystpress', 70, 6, 'Lett', NULL, 62, 1, '2022-07-11 05:23:43', '2022-05-23 08:32:41', '2022-07-11 05:23:43'),
(63, 'Benpress', 74, 13, 'Lett', 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen Tilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen Utgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden Utførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken', 1, 1, '2022-07-22 21:46:23', '2022-07-11 05:30:36', '2022-07-22 21:46:23'),
(64, 'Legcurl', 75, 13, 'Lett', 'Sitt helt tilbake i setet og fiksèr overkroppen med grep om håndtakene. Press anklene mot puten, bøy maksimalt i knærne og vend rolig tilbake til startstillingen.', 2, 1, '2022-07-18 05:09:08', '2022-07-11 05:39:49', '2022-07-18 05:09:08'),
(65, 'test', 74, 13, 'Lett', NULL, 232, 0, '2022-07-15 18:05:35', '2022-07-11 20:24:09', '2022-07-15 18:05:35'),
(66, 'Legcurls', 75, 13, 'Normalt', NULL, 3, 0, '2022-07-16 03:54:57', '2022-07-13 13:45:36', '2022-07-16 03:54:57'),
(67, 'test', 74, 13, 'Lett', 'sss', 223, 1, '2022-07-16 03:55:09', '2022-07-15 18:09:33', '2022-07-16 03:55:09'),
(68, 'velsenavn', 74, 14, 'Lett', 'dummytextdummytextdummytextdummytextdummytedummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextxtdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytextdummytext', 13, 0, '2022-07-18 05:13:44', '2022-07-18 05:13:30', '2022-07-18 05:13:44'),
(69, 'test1111', 74, 13, 'Lett', 'test2313', 1111, 1, '2022-07-19 17:56:09', '2022-07-19 17:47:51', '2022-07-19 17:56:09'),
(70, 'test', 74, 13, 'Lett', NULL, 11, 1, '2022-07-24 17:38:59', '2022-07-22 21:46:55', '2022-07-24 17:38:59'),
(71, 'Benpress', 74, 13, 'Lett', 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen \r\nTilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. \r\nUtgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. \r\nUtførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', 1, 1, NULL, '2022-07-24 17:40:17', '2022-08-11 12:22:23'),
(72, 'Legcurl', 75, 13, 'Lett', 'Sitt helt tilbake i setet og fiksèr overkroppen med grep om håndtakene. Press anklene mot puten, bøy maksimalt i knærne og vend rolig tilbake til startstillingen.', 2, 1, NULL, '2022-08-06 05:16:08', '2022-08-06 05:16:08'),
(73, 'Biceps curl', 76, 13, 'Lett', 'Sitt med stangen hengende foran deg, bøy i albuene og løft stangen helt opp mot brystet før du senker den rolig tilbake.', 3, 1, NULL, '2022-08-06 05:17:07', '2022-08-06 05:17:07'),
(74, 'Liggende brystpress med manualer', 77, 13, 'Lett', 'Løft kontrollert håndvektene rett opp. Unngå å løfte korsryggen fra benken, ha god kontroll.', 4, 1, NULL, '2022-08-06 05:18:34', '2022-08-06 05:18:34'),
(75, 'Brystpress maskin', 78, 13, 'Lett', NULL, 5, 1, '2022-08-06 05:26:24', '2022-08-06 05:26:16', '2022-08-06 05:26:24'),
(76, 'Brystpress maskin', 78, 13, 'Lett', 'Sitt med lave skuldre og et godt grep om håndtakene. Albuene holdes på høyde med grepet. Press frem til armene er strake og før håndtakene noe langsommere tilbake til brystet.', 5, 1, NULL, '2022-08-06 05:27:19', '2022-08-06 05:27:19'),
(77, 'Ettbens Tåhev', 79, 13, 'Lett', 'Stå på en fot. Løft hælen og press opp til tåstående.', 6, 1, NULL, '2022-08-06 05:29:29', '2022-08-08 04:36:05'),
(78, 'Goodmornings', 80, 13, 'Lett', 'Føtter i skulderbreddes avstand. Rett rygg gjennom hele øvelsen. Utfør øvelsen i rolig tempo og kontrollert tempo.', 7, 1, NULL, '2022-08-08 04:37:59', '2022-08-08 04:37:59'),
(79, 'Stående lyske', 81, 13, 'Lett', 'Stå bredt med føttene. Legg tyngden av kroppen mot høyre og venstre annenhver gang. Til slutt er det aktive benet bøyd, og foten du står på er tilnærmet strakt.', 8, 1, NULL, '2022-08-08 04:40:16', '2022-08-08 04:40:30'),
(80, 'Stående flies', 82, 13, 'Lett', 'Stå opp med føttene fra hverandre i skulderbredde. Ta armene dine rett opp foran deg slik at de er på brystnivå, håndflatene vendende mot hverandre. Strekk armene ut til sidene, til armene er utvidet. Hold armene på brystnivå hele tiden.', 9, 1, NULL, '2022-08-08 04:41:03', '2022-08-08 04:41:03'),
(81, 'Tåhev', 83, 13, 'Lett', 'Stå med strake ben og med føttene i ca. hoftebreddes avstand. Press opp til tåstående. Senk tilbake.', 10, 1, NULL, '2022-08-08 04:41:51', '2022-08-08 04:41:51'),
(82, 'Starfish', 85, 13, 'Lett', 'Start liggende i et X, og spænd op i maven. Løft og stræk højre arm og venstre ben, og kom helt op, så du kan røre din fod. Hold modsatte arm og ben i ro. Sænk igen, og lav så øvelsen til modsatte side.', 11, 1, NULL, '2022-08-08 04:42:45', '2022-08-08 04:42:45'),
(83, 'Skulderpress maskin', 86, 13, 'Lett', 'Sitt med god støtte i ryggen og ta et bredt grep. Spenn godt opp i mage- og korsryggregionen og press opp fra cirka skuldernivå til armene er strake. Senk langsomt tilbake og gjenta.', 12, 1, NULL, '2022-08-08 04:43:27', '2022-08-08 04:43:27'),
(84, 'Rygghev', 88, 13, 'Lett', 'Ligg med strake ben og la overkroppen henge ned mot gulvet. Stram opp i magen og i korsryggen, og løft overkroppen i en rolig bevegelse. Under bevegelsen er overkroppen strak. Senk rolig tilbake og gjenta.', 13, 1, NULL, '2022-08-08 04:47:13', '2022-08-08 04:47:49'),
(85, 'Sittende roing', 89, 13, 'Lett', 'Sitt med rett rygg, slipp armene og skuldrene godt frem. Trekk skulderbladene sammen, og før armene bakover langs siden av kroppen. Underarmene holdes til sist nærmest parallelle med gulvet.', 14, 1, NULL, '2022-08-08 04:48:42', '2022-08-08 04:49:25'),
(86, 'Reverse flies', 90, 13, 'Lett', 'Hold ryggen rett gjennom hele øvelsen. Løft kontrollert håndvekten opp til siden. Unngå rotasjon i overkroppen.', 15, 1, NULL, '2022-08-08 04:50:15', '2022-08-08 04:51:07'),
(87, 'Magemaskin', 91, 13, 'Lett', 'Dra vekta med deg ned ved å crunche magen slik at øvre del av rygg krummer seg og skuldrene føres ned i retning av hofta. Slipp kontrollert opp igjen.', 16, 1, NULL, '2022-08-08 04:52:57', '2022-08-08 04:52:57'),
(88, 'Markløft', 92, 13, 'Lett', 'Føttene i skulderbreddes avstand. Rett rygg gjennom hele øvelsen. Utfør bevegelsen i rolig tempo ned og hurtigere opp.', 17, 1, NULL, '2022-08-08 04:53:30', '2022-08-08 04:53:30'),
(89, 'Legcurl', 93, 13, 'Lett', 'Sitt helt tilbake i setet og fiksèr overkroppen med grep om håndtakene. Press anklene mot puten, bøy maksimalt i knærne og vend rolig tilbake til startstillingen.', 18, 1, '2022-08-08 04:55:51', '2022-08-08 04:54:17', '2022-08-08 04:55:51'),
(90, 'Nedtrekk maskin', 94, 13, 'Lett', 'Ta et bredt grep, legg deg litt bakover og kikk skrått opp. Press brystkassen fram og trekk stangen ned til brystet. Før langsomt tilbake og gjenta. For å øke bevegelsesbanen og for å engasjere skulderbladmuskulaturen ytterligere kan bevegelsen gjerne startes med å trekke skulderbladene ned og bak og at en \"slipper\" skuldrene helt opp når en vender tilbake til utgangsposisjon igjen.', 18, 1, NULL, '2022-08-08 04:57:01', '2022-08-08 04:57:01'),
(91, 'Utfall sideveis', 95, 13, 'Lett', 'Føttene skal peke rett fram hele tiden. Rett rygg gjennom hele øvelsen. Det andre beinet holdes strakt. Hold overkroppen rett – ikke vri den.', 19, 1, NULL, '2022-08-08 04:58:32', '2022-08-08 04:58:32'),
(92, 'Utfall kryss', 97, 13, 'Lett', 'Føttene skal peke rett fram hele tiden. Rett rygg gjennom hele øvelsen. Det andre beinet holdes strakt. Hold overkroppen rett – ikke vri den.', 20, 1, NULL, '2022-08-08 05:02:55', '2022-08-08 05:04:19'),
(93, 'Knebøy', 98, 13, 'Lett', 'Føtter i skulderbreddes avstand. Rett rygg gjennom hele øvelsen. Utfør bevegelsen i rolig tempo ned og hurtigere opp.', 21, 1, NULL, '2022-08-08 05:03:51', '2022-08-08 05:03:51'),
(94, 'Stående sideplanke', 99, 13, 'Lett', 'Stå sideveis til en kasse og støtt deg på hånden. Aktiver magemuskulaturen og løft hofte og bekken opp fra kassen til du har en strak kropp.', 22, 1, NULL, '2022-08-08 05:08:26', '2022-08-08 05:14:46'),
(95, 'Brystpress', 100, 13, 'Lett', 'Løft kontrollert håndvektene rett opp. Unngå å løfte korsryggen fra benken, ha god kontroll.', 23, 1, NULL, '2022-08-08 05:08:46', '2022-08-08 05:08:46'),
(96, 'Gang på tredemølle', 101, 14, 'Lett', 'Trykk start. For å endre hastigheten trykk pluss/minus og for å endre stigningen trykk pil opp/pil ned. For å avslutte trykk stopp.', 1, 1, NULL, '2022-08-08 05:36:39', '2022-08-08 05:36:39'),
(97, 'Sykkel', 102, 14, 'Lett', 'Velg program og start å sykle. Eventuelt kan du trykke \"QUICK START\". For å endre motstanden trykk +/-. Trykk \"STOPP\" for å avslutte.', 2, 1, NULL, '2022-08-08 05:37:25', '2022-08-08 05:39:02'),
(98, 'Crosstrainer', 103, 14, 'Lett', 'Trykk \"QUICK START\". Juster motstand og hastighet etter eget ønske.', 3, 1, NULL, '2022-08-08 05:37:50', '2022-08-08 05:39:18'),
(99, 'Romaskin', 104, 14, 'Lett', 'Juster motstanden med hendelen på din høyre side. Trykk på \"on\", velg hvilken informasjon du vil se på skjermen og start roingen.', 4, 1, NULL, '2022-08-08 05:38:13', '2022-08-08 05:39:31'),
(100, 'Hangups', 105, 13, 'Lett', 'Heng med et smalt grep og trekk deg opp indtil nakken når grepsnivået. Senk deg sakte ned igjen. Se fremover og nedover gjennom hele øvelsen.', 24, 1, NULL, '2022-08-15 04:43:16', '2022-08-15 04:43:47'),
(101, '0.1', 106, 18, 'Lett', NULL, 1, 1, NULL, '2022-08-17 16:17:20', '2022-08-17 16:17:20'),
(102, '0.2', 107, 18, 'Lett', NULL, 2, 1, NULL, '2022-08-17 16:17:36', '2022-08-17 16:17:36'),
(103, '0.3', 108, 18, 'Lett', NULL, 3, 1, NULL, '2022-08-17 16:17:57', '2022-08-17 16:17:57'),
(104, '1.0', 109, 18, 'Lett', NULL, 4, 1, NULL, '2022-08-17 16:18:16', '2022-08-17 16:18:16'),
(105, '1.1', 110, 18, 'Lett', NULL, 5, 1, NULL, '2022-08-17 16:18:33', '2022-08-17 16:18:33'),
(106, '2.0', 111, 18, 'Lett', NULL, 6, 1, NULL, '2022-08-17 16:19:02', '2022-08-17 16:19:02'),
(107, '2.1', 112, 18, 'Lett', NULL, 7, 1, NULL, '2022-08-17 16:19:22', '2022-08-17 16:19:22'),
(108, '3.0', 113, 18, 'Lett', NULL, 8, 1, NULL, '2022-08-17 16:20:05', '2022-08-17 16:21:17'),
(109, '3.1', 114, 18, 'Lett', NULL, 9, 1, NULL, '2022-08-17 16:20:25', '2022-08-17 16:20:25'),
(110, '4.0', 115, 18, 'Lett', NULL, 10, 1, NULL, '2022-08-17 16:21:46', '2022-08-17 16:24:00'),
(111, '4.1', 116, 18, 'Lett', NULL, 11, 1, NULL, '2022-08-17 16:22:09', '2022-08-17 16:22:09'),
(112, '5.0', 117, 18, 'Lett', NULL, 12, 1, NULL, '2022-08-17 16:22:29', '2022-08-17 16:22:29'),
(113, '5.1', 118, 18, 'Lett', NULL, 13, 1, NULL, '2022-08-17 16:22:49', '2022-08-17 16:24:17'),
(114, '6.0', 119, 18, 'Lett', NULL, 14, 1, NULL, '2022-08-17 16:23:06', '2022-08-17 16:23:06'),
(115, '6.1', 120, 18, 'Lett', NULL, 15, 1, NULL, '2022-08-17 16:23:24', '2022-08-17 16:24:33'),
(116, '7.0', 121, 18, 'Lett', NULL, 16, 1, NULL, '2022-08-17 16:25:06', '2022-08-17 16:26:28'),
(117, '7.1', 122, 18, 'Lett', NULL, 17, 1, NULL, '2022-08-17 16:25:23', '2022-08-17 16:25:23'),
(118, '8.0', 123, 18, 'Lett', NULL, 18, 1, NULL, '2022-08-17 16:25:42', '2022-08-17 16:25:42'),
(119, '8.1', 124, 18, 'Lett', NULL, 19, 1, NULL, '2022-08-17 16:25:59', '2022-08-17 16:25:59'),
(120, 'Belt Squat', 125, 19, 'Lett', NULL, 1, 1, NULL, '2022-09-02 10:01:56', '2022-09-02 10:02:13'),
(121, 'Benpress', 126, 19, 'Lett', NULL, 2, 1, NULL, '2022-09-02 10:02:31', '2022-09-02 10:02:31'),
(122, 'Brystpress maskin', 127, 19, 'Lett', NULL, 3, 1, NULL, '2022-09-02 10:02:48', '2022-09-02 10:02:48'),
(123, 'Standing Barbell Rows', 128, 19, 'Lett', NULL, 4, 1, NULL, '2022-09-02 10:03:12', '2022-09-02 10:03:12'),
(124, 'Nedtrekk', 129, 19, 'Lett', NULL, 5, 1, NULL, '2022-09-02 10:03:30', '2022-09-02 10:03:30'),
(125, 'Planke med rotation', 130, 13, 'Lett', NULL, 6, 1, '2022-09-05 07:06:01', '2022-09-02 10:03:45', '2022-09-05 07:06:01'),
(126, 'Planke med rotation', 130, 19, 'Lett', NULL, 6, 1, NULL, '2022-09-03 07:26:09', '2022-09-03 07:26:09'),
(127, 'Oppvarmning', 131, 20, 'Lett', 'Opvarmning 20 minutter i et roligt og kontrolleret tempo med fokus.', 1, 1, NULL, '2022-09-05 06:58:04', '2022-09-05 06:58:04'),
(128, 'Ankelmobilitet', 132, 20, 'Lett', NULL, 2, 1, NULL, '2022-09-05 07:02:34', '2022-09-05 07:05:32'),
(129, 'Mobilitet hofteledsbøjer', 133, 20, 'Lett', NULL, 3, 1, NULL, '2022-09-05 07:03:06', '2022-09-05 07:06:19'),
(130, 'Hamstringsmobilitet', 139, 20, 'Lett', NULL, 3, 1, NULL, '2022-09-05 07:05:02', '2022-09-05 07:05:02'),
(131, 'Lyskemobilitet', 135, 20, 'Lett', NULL, 4, 1, NULL, '2022-09-05 07:07:26', '2022-09-05 07:07:26'),
(132, 'Overkropsmobilitet', 136, 20, 'Lett', NULL, 5, 1, NULL, '2022-09-05 07:08:20', '2022-09-05 07:08:20'),
(133, 'Løb 10/10', 137, 20, 'Lett', 'Løb skiftevis 10 sekunder med høj intensitet og 10 sekunder pause.', 6, 1, NULL, '2022-09-05 07:08:47', '2022-09-05 07:19:10'),
(134, 'Maxtest 4 minutter', 138, 20, 'Lett', 'Indstil løbebåndet til 10 graders hældning og med forholdsvis høj hastighed. Løb i 3-4 minutter indtil næsten udmattelse, hvorefter der afsluttes med en sprint til total udmattelse. Med brug af pulsmåler registrer din højst målte puls i perioden 60 sekunder efter færdigendt løb, som lægges ind under din personlige profil for videre brug.', 7, 1, NULL, '2022-09-05 07:18:31', '2022-09-05 07:19:35'),
(135, 'Submaksimal test', 140, 21, 'Lett', 'Udfør testen før opstart på en intensiv trænings- eller kampperiode. \r\nIndstil løbebåndet med 2 % stigning og find en kontrolleret løbehastighed, som ikke er mere anstrengende end at du klare at snakke i korte sætninger. Løb i 5 minutter, hvorefter du med brug af en pulsmåler registrere pulsen. Formålet med denne test er at kunne spore eventuel overtræning, da man ofte ser en øget puls på 10-15 slag over det normale. Det er vigtigt at notere sig, at brug af vores træningsdagbog sammen med denne test er et vigtig værktøj. Læg ind dit resultat i din elektroniske dagbog, samt husk at registrere hastigheden.', 1, 1, NULL, '2022-09-05 07:54:33', '2022-09-05 07:54:33'),
(136, 'Øvelse 1', 141, 22, 'Lett', NULL, 1, 1, NULL, '2022-09-06 05:41:52', '2022-09-06 07:45:17'),
(137, 'Øvelse 2', 142, 22, 'Lett', NULL, 2, 1, NULL, '2022-09-06 05:42:16', '2022-09-06 07:45:39'),
(138, 'Øvelse 3', 143, 22, 'Lett', NULL, 3, 1, NULL, '2022-09-06 05:42:37', '2022-09-06 07:45:58'),
(139, 'Øvelse 4', 144, 22, 'Lett', NULL, 4, 1, NULL, '2022-09-06 05:42:54', '2022-09-06 07:46:16'),
(140, 'Øvelse 5', 145, 22, 'Lett', NULL, 5, 1, NULL, '2022-09-06 05:43:11', '2022-09-06 07:44:25'),
(141, 'Øvelse 6', 146, 22, 'Lett', NULL, 6, 1, NULL, '2022-09-06 05:43:33', '2022-09-06 07:46:29'),
(142, 'Øvelse 7', 147, 22, 'Lett', NULL, 7, 1, NULL, '2022-09-06 05:43:50', '2022-09-06 07:46:45'),
(143, 'Øvelse 8', 148, 22, 'Lett', NULL, 8, 1, NULL, '2022-09-06 05:44:05', '2022-09-06 07:47:00'),
(144, 'Crosstrainer', 150, 14, 'Lett', NULL, 5, 1, NULL, '2022-09-08 05:37:47', '2022-09-08 05:38:08'),
(145, 'Stakemaskin', 151, 14, 'Lett', NULL, 6, 1, NULL, '2022-09-08 05:38:28', '2022-09-08 05:38:28'),
(146, 'Løbing', 152, 14, 'Lett', NULL, 7, 1, NULL, '2022-09-08 05:38:54', '2022-09-08 05:38:54'),
(147, 'Trappemaskin', 153, 14, 'Lett', NULL, 8, 1, NULL, '2022-09-08 05:39:15', '2022-09-08 05:39:15'),
(148, '15/15 interval', 149, 23, 'Lett', NULL, 1, 1, NULL, '2022-09-08 07:21:47', '2022-09-08 07:22:35'),
(149, '20/40 interval', 154, 23, 'Lett', NULL, 2, 1, NULL, '2022-09-08 07:22:07', '2022-09-08 07:22:07'),
(150, '15/30 interval', 155, 23, 'Lett', NULL, 3, 1, NULL, '2022-09-08 07:22:55', '2022-09-08 07:22:55'),
(151, '10/20 interval', 156, 23, 'Lett', NULL, 4, 1, NULL, '2022-09-08 07:23:16', '2022-09-08 07:23:16'),
(152, '90 sekunder', 157, 23, 'Lett', NULL, 5, 1, NULL, '2022-09-12 07:06:17', '2022-09-12 07:06:32'),
(153, '17/13', 158, 23, 'Lett', NULL, 6, 1, NULL, '2022-09-12 07:06:49', '2022-09-12 07:06:49'),
(154, '50/10', 159, 23, 'Lett', NULL, 7, 1, NULL, '2022-09-12 07:41:27', '2022-09-12 07:41:27'),
(155, 'Bænkpres 10 Rep', 166, 24, 'Lett', NULL, 1, 1, NULL, '2022-09-13 05:15:32', '2022-09-13 05:15:32'),
(156, 'Bænkpres 5 Rep', 161, 24, 'Lett', NULL, 2, 1, NULL, '2022-09-13 05:17:06', '2022-09-13 05:17:06'),
(157, 'Bænkpres 1 Rep', 162, 24, 'Lett', NULL, 3, 1, NULL, '2022-09-13 05:17:31', '2022-09-13 05:17:31'),
(158, 'Squat 10 Rep', 163, 24, 'Lett', NULL, 4, 1, NULL, '2022-09-13 05:17:54', '2022-09-13 05:17:54'),
(159, 'Squat 5 Rep', 164, 24, 'Lett', NULL, 5, 1, NULL, '2022-09-13 05:18:13', '2022-09-13 05:34:24'),
(160, 'Squat 1 Rep', 165, 24, 'Lett', NULL, 6, 1, NULL, '2022-09-13 05:18:32', '2022-09-13 05:34:41'),
(161, 'Markløft 10 Rep', 166, 24, 'Lett', NULL, 7, 1, NULL, '2022-09-13 05:18:54', '2022-09-13 05:18:54'),
(162, 'Markløft 5 Rep', 167, 24, 'Lett', NULL, 8, 1, NULL, '2022-09-13 05:19:09', '2022-09-13 05:34:58'),
(163, 'Markløft 1 Rep', 168, 24, 'Lett', NULL, 9, 1, NULL, '2022-09-13 05:19:33', '2022-09-13 05:35:14'),
(164, 'Backward skip', 169, 25, 'Lett', NULL, 1, 1, NULL, '2022-09-14 05:12:36', '2022-09-14 05:12:36'),
(165, 'B-Skips', 170, 25, 'Lett', NULL, 2, 1, NULL, '2022-09-14 05:13:01', '2022-09-14 05:13:01'),
(166, 'Carioca', 171, 25, 'Lett', NULL, 3, 1, NULL, '2022-09-14 05:13:24', '2022-09-14 05:13:24'),
(167, 'Forward legswing', 172, 25, 'Lett', NULL, 4, 1, NULL, '2022-09-14 05:13:48', '2022-09-14 05:13:48'),
(168, 'Forward skip', 173, 25, 'Lett', NULL, 5, 1, NULL, '2022-09-14 05:14:10', '2022-09-14 05:14:10'),
(169, 'Hip Close', 174, 25, 'Lett', NULL, 6, 1, NULL, '2022-09-14 05:14:43', '2022-09-14 05:14:43'),
(170, 'Hip opener', 175, 25, 'Lett', NULL, 7, 1, NULL, '2022-09-14 05:15:02', '2022-09-14 05:15:02'),
(171, 'Sideshuffle', 176, 25, 'Lett', NULL, 8, 1, NULL, '2022-09-14 05:15:30', '2022-09-14 05:15:30'),
(172, 'Lying hamstrings', 177, 25, 'Lett', NULL, 9, 1, NULL, '2022-09-14 05:15:48', '2022-09-14 05:15:48'),
(173, 'Reverse Scorpions', 178, 25, 'Lett', NULL, 10, 1, NULL, '2022-09-14 05:16:08', '2022-09-14 05:16:08'),
(174, 'Seated hipflexor', 180, 25, 'Lett', NULL, 11, 1, NULL, '2022-09-14 05:16:28', '2022-09-14 05:16:28'),
(175, 'Seated hipopener', 181, 25, 'Lett', NULL, 12, 1, NULL, '2022-09-14 05:17:06', '2022-09-14 05:17:06'),
(176, 'Vægt og højde', 182, 26, 'Lett', 'Brug følgende link og benyt Jackson-Pollock 7-Site Skinfold:\r\nhttps://www.fatcalc.com/bf?fbclid=IwAR24JmT58ZYN_S8jDpBnq1vqQxvA5fk-cvdWZ8PERwJ7lkGNrI1UiZa1R4A\r\nLæg ind højde, vægt og alder i systemet.', 1, 1, NULL, '2022-09-16 17:39:32', '2022-09-16 17:39:32'),
(177, 'Chess', 183, 26, 'Lett', 'Læg ind målingen for chess i systemet.', 2, 1, NULL, '2022-09-16 17:40:02', '2022-09-16 17:40:02'),
(178, 'Midaxillary', 184, 26, 'Lett', 'Læg ind målingen for Midaxillary i systemet.', 3, 1, NULL, '2022-09-16 17:40:35', '2022-10-26 07:14:59'),
(179, 'Triceps', 185, 26, 'Lett', 'Læg ind målingen for Triceps i systemet.', 4, 1, NULL, '2022-09-16 17:41:03', '2022-09-16 17:41:03'),
(180, 'Subscapular', 186, 26, 'Lett', 'Læg ind målingen for subscapular i systemet.', 5, 1, NULL, '2022-09-16 17:41:36', '2022-10-26 07:15:33'),
(181, 'Suprailiac', 187, 26, 'Lett', 'Læg ind målingen for Suprailiac i systemet.', 6, 1, NULL, '2022-09-16 17:42:09', '2022-09-16 17:42:09'),
(182, 'Abdominal', 188, 26, 'Lett', 'Læg ind målingen for Abdominal i systemet.', 7, 1, NULL, '2022-09-16 17:42:35', '2022-09-16 17:42:35'),
(183, 'Thigh', 189, 26, 'Lett', 'Læg ind målingen for Thigh i systemet.', 8, 1, NULL, '2022-09-16 17:43:03', '2022-09-16 17:43:03'),
(184, 'Squat to stand', 190, 25, 'Lett', NULL, 13, 1, NULL, '2022-09-18 04:21:37', '2022-09-18 04:22:05'),
(185, '1 arm quadruped row', 191, 27, 'Lett', NULL, 1, 1, NULL, '2022-09-18 04:22:48', '2022-09-18 04:40:05'),
(186, 'Pogo jumps', 192, 28, 'Lett', NULL, 1, 1, NULL, '2022-09-18 04:23:27', '2022-09-18 04:23:27'),
(187, 'Tuck Jumps', 193, 28, 'Lett', NULL, 2, 1, NULL, '2022-09-18 04:23:59', '2022-09-18 04:23:59'),
(188, 'Sizzy Squat', 194, 27, 'Lett', NULL, 2, 1, NULL, '2022-09-18 04:24:30', '2022-09-18 04:40:21'),
(189, 'Copenhagen Adductors', 195, 27, 'Lett', NULL, 3, 1, NULL, '2022-09-18 04:25:01', '2022-09-18 04:40:39'),
(190, 'Flooted heal reverse lunges', 196, 27, 'Lett', NULL, 4, 1, NULL, '2022-09-18 04:25:40', '2022-09-18 04:40:57'),
(191, 'One arm dumbell bench press', 197, 27, 'Lett', NULL, 5, 1, NULL, '2022-09-18 04:26:07', '2022-09-18 04:41:14'),
(192, 'Dumbell Bench press', 198, 27, 'Lett', NULL, 6, 1, NULL, '2022-09-18 04:26:40', '2022-09-18 04:41:36'),
(193, 'Dumbell alternative bench press', 199, 27, 'Lett', NULL, 7, 1, NULL, '2022-09-18 04:27:06', '2022-09-18 04:41:56'),
(194, 'Ankle isometric hold', 200, 27, 'Lett', NULL, 8, 1, NULL, '2022-09-18 04:27:28', '2022-09-18 04:42:20'),
(195, 'Dribbles ankle', 201, 25, 'Lett', NULL, 14, 1, NULL, '2022-09-18 04:27:58', '2022-09-18 04:35:56'),
(196, 'Cossack stretch', 202, 25, 'Lett', NULL, 15, 1, NULL, '2022-09-18 04:28:25', '2022-09-18 04:28:25'),
(197, 'Glute ham raises', 203, 27, 'Lett', 'Lay on the floor with a barbell on your hips. Bend your knees to a 90-degree flexion. Lift your hips as far as possible, squeezing your butt while keeping your spine neutral. You might use a pad between your hips and the barbell.', 9, 1, NULL, '2022-09-18 04:28:46', '2022-11-11 04:47:45'),
(198, 'Hip flexor stretch', 204, 25, 'Lett', NULL, 16, 1, NULL, '2022-09-18 04:29:15', '2022-09-18 04:36:29'),
(199, 'Dribbles knee', 205, 25, 'Lett', NULL, 17, 1, NULL, '2022-09-18 04:29:39', '2022-09-18 04:36:53'),
(200, 'Leg bounds', 206, 25, 'Lett', NULL, 18, 1, NULL, '2022-09-18 04:30:05', '2022-09-18 04:37:12'),
(201, 'Leg-skips', 207, 25, 'Lett', NULL, 19, 1, NULL, '2022-09-18 04:30:31', '2022-09-18 04:37:34'),
(202, 'Dribbles mid-shin', 208, 25, 'Lett', NULL, 20, 1, NULL, '2022-09-18 04:30:53', '2022-09-18 04:37:53'),
(203, 'Nordic hamstrings', 209, 27, 'Lett', NULL, 10, 1, NULL, '2022-09-18 04:31:16', '2022-09-18 04:43:03'),
(204, 'Overspeed jump', 210, 28, 'Lett', NULL, 3, 1, NULL, '2022-09-18 04:31:38', '2022-09-18 04:35:14'),
(205, 'Quadriceps strecht', 211, 25, 'Lett', NULL, 21, 1, NULL, '2022-09-18 04:32:02', '2022-09-18 04:38:23'),
(206, 'T-Spine stretch', 212, 25, 'Lett', NULL, 22, 1, NULL, '2022-09-18 04:32:24', '2022-09-18 04:38:40'),
(207, 'Scorpions', 179, 25, 'Lett', NULL, 23, 1, NULL, '2022-10-05 05:07:28', '2022-10-05 05:07:51'),
(208, 'Trap bar', 213, 27, 'Lett', NULL, 11, 1, NULL, '2022-10-06 08:35:29', '2022-10-06 08:36:00'),
(209, 'Trap-bar jump', 214, 28, 'Lett', NULL, 4, 1, NULL, '2022-10-06 08:36:28', '2022-10-06 08:37:30'),
(210, 'Half-kneeling Dumbell press', 215, 27, 'Lett', NULL, 12, 1, NULL, '2022-10-06 08:36:55', '2022-10-06 08:37:15'),
(211, 'Chin-ups close grip', 216, 27, 'Lett', NULL, 13, 1, NULL, '2022-10-06 08:37:58', '2022-10-06 08:37:58'),
(212, 'Pistol Squat band assisted', 217, 27, 'Lett', NULL, 14, 1, NULL, '2022-10-06 08:38:29', '2022-10-06 08:38:29'),
(213, '1-leg romanian deadlift to dumbell snatch', 218, 27, 'Lett', NULL, 15, 1, NULL, '2022-10-06 08:38:47', '2022-10-06 08:44:35'),
(214, 'Lateral leg swing', 219, 25, 'Lett', NULL, 24, 1, NULL, '2022-10-07 06:05:49', '2022-10-07 06:06:12'),
(215, 'Supine straight leg hamstring banded kickers', 220, 29, 'Lett', NULL, 1, 1, NULL, '2022-10-07 06:12:23', '2022-10-07 06:12:23'),
(216, '1-leg vertical jump non-countermovement', 221, 28, 'Lett', NULL, 5, 1, NULL, '2022-10-07 06:24:05', '2022-10-07 06:24:28'),
(217, '1-leg vertical jump countermovement', 222, 28, 'Lett', NULL, 6, 1, NULL, '2022-10-07 06:25:09', '2022-10-07 06:25:09'),
(218, '1-leg vertical double contact jump', 223, 28, 'Lett', NULL, 7, 1, NULL, '2022-10-07 06:25:40', '2022-10-07 06:25:40'),
(219, '1-leg vertical jump double-contact on toes', 224, 28, 'Lett', NULL, 8, 1, NULL, '2022-10-07 06:26:17', '2022-10-07 06:26:17'),
(220, '1-leg vertical continues jump on toes', 225, 28, 'Lett', NULL, 9, 1, NULL, '2022-10-07 06:26:45', '2022-10-07 06:26:45'),
(221, '1-leg linear hurdle jump to 1-leg tuck jump (One post. jump and 5 ant. jumps).', 226, 28, 'Lett', NULL, 10, 1, NULL, '2022-10-07 06:27:09', '2022-10-07 06:27:09'),
(222, 'Ankle wiper', 227, 25, 'Lett', NULL, 25, 1, NULL, '2022-10-25 04:47:13', '2022-10-25 04:48:57'),
(223, 'Scorpions', 179, 25, 'Lett', NULL, 26, 1, '2022-10-25 04:56:38', '2022-10-25 04:56:00', '2022-10-25 04:56:38'),
(224, 'Half-kneeling 45\' degree lunges', 228, 25, 'Lett', NULL, 27, 1, NULL, '2022-10-25 05:10:14', '2022-10-25 05:10:14'),
(225, '2-Point stance first step+strike', 229, 29, 'Lett', NULL, 2, 1, NULL, '2022-10-26 05:12:03', '2022-10-26 05:12:37'),
(226, 'B-Step over', 230, 29, 'Lett', NULL, 3, 1, NULL, '2022-10-26 05:16:10', '2022-10-26 05:16:10'),
(227, 'Dumbell jump shrug (20 % BW)', 231, 28, 'Lett', NULL, 11, 1, NULL, '2022-10-26 05:29:55', '2022-10-26 05:30:16'),
(228, 'Barbell push press', 232, 27, 'Lett', NULL, 16, 1, NULL, '2022-10-26 05:35:54', '2022-10-26 05:35:54'),
(229, 'Drop lunge from 10 cm', 233, 27, 'Lett', NULL, 17, 1, NULL, '2022-10-26 05:44:24', '2022-10-26 05:44:52'),
(230, 'Chaos Push-Ups', 234, 27, 'Lett', NULL, 18, 1, NULL, '2022-10-26 05:45:31', '2022-10-26 05:45:31'),
(231, 'Chaos Banded Pallof-Press', 235, 27, 'Lett', NULL, 19, 1, NULL, '2022-10-26 05:45:53', '2022-10-26 05:45:53'),
(232, 'Russian twist', 236, 13, 'Lett', NULL, 25, 1, NULL, '2022-10-26 07:14:18', '2022-10-26 07:15:48'),
(233, 'Reverse flies maskine', 237, 13, 'Lett', NULL, 26, 1, NULL, '2022-10-26 07:16:27', '2022-10-26 07:16:27'),
(234, 'Brutalbænk Mavebøjning', 238, 13, 'Lett', NULL, 27, 1, NULL, '2022-10-26 07:16:41', '2022-10-26 07:16:41'),
(235, 'Flies Chess press maskine', 239, 13, 'Lett', NULL, 28, 1, NULL, '2022-10-26 07:17:00', '2022-10-26 07:17:00'),
(236, 'Dips', 240, 13, 'Lett', NULL, 29, 1, NULL, '2022-10-26 07:17:17', '2022-10-26 07:17:17'),
(237, 'Figure-of-Eight Hop Test', 241, 31, 'Lett', 'Placer to toppe med en afstand på 5 meter mellem hinanden. Udgangsposition er at stå på højre fod, når startposition er på højre side af toppen og vice versa. Videre må begge hænder til enhver tid være placeret bag på ryggen igennem hele øvelsen. Herfra gennemføres to runder på tid for henholdvis højre og venstre fod, hvorefter tiderne sammenlignes og den procentvise forskel beregnes. Der vil være en pause på 1 minut mellem forsøgene. Der udføres 3 runder for hvert ben, hvor den bedste tid for henholdvis højre og venstre fod er gældende.', 1, 1, NULL, '2022-10-26 07:23:11', '2022-10-26 08:00:22'),
(238, 'Side-Hop test', 242, 31, 'Lett', 'Placer to linjer på gulvet med en total afstand på 40 cm. Stå på enten højre eller venstre fod i startpositionen, hvorefter der hoppes sidevejs i 30 sekunder uden at ramme linjerne placeret på jorden. Begge hænder skal til enhver tid være placeret bag på ryggen igennem hele øvelsen. Tæl antal succesfulde hop, som udføres på de 30 sekunder. Ved mere end 25% fejlhop gennemføres testen på nyt. Sammenlign herefter den procentvise forskel mellem højre og venstre fod for at kortlægge asymmetri.', 2, 1, NULL, '2022-10-26 07:23:26', '2022-10-26 07:58:59'),
(239, '6-Meter Crossover Hop Test', 243, 31, 'Lett', 'Placer to toppe med en afstand på 6 meter mellem hinanden. Udgangsposition er at stå på højre fod, når startposition er på højre side af toppen og vice versa. Videre må begge hænder til enhver tid være placeret bag på ryggen igennem hele øvelsen. Herfra gennemføres runde med zigzag hop på tid for henholdvis højre og venstre fod, hvorefter tiderne sammenlignes og den procentvise forskel beregnes. Der vil være en pause på 1 minut mellem forsøgene. Der udføres 3 runder for hvert ben, hvor den bedste tid for henholdvis højre og venstre fod er gældende.', 3, 1, NULL, '2022-10-26 07:23:42', '2022-10-26 08:01:20'),
(240, 'A-March', 244, 29, 'Lett', NULL, 4, 1, NULL, '2022-11-10 05:11:05', '2022-11-10 05:12:56'),
(241, 'A-Switch- Double Pause', 245, 29, 'Lett', NULL, 5, 1, NULL, '2022-11-11 04:38:47', '2022-11-11 04:38:47'),
(242, 'Drop-jump', 246, 28, 'Lett', 'Stand on a 50 cm box. Step forward and drop down towards the jump. Try to pull yourself down towards the ground once you hit the ground, and jump as quickly and high as possible. The goal with the drop jump is to have a short ground contact time. Make sure to stick your landing.', 12, 1, NULL, '2022-11-11 04:39:49', '2022-11-11 04:44:36'),
(243, 'Landmine split stance 1arm press', 247, 27, 'Lett', 'With a landmine set up, stand in a split stance. With the barbell in your right hand, ensure that your front leg is the left leg and the other way around when pressing with your left arm. Keep a solid base from the split stance position and do a regular landmine press pushing through.', 20, 1, NULL, '2022-11-11 04:40:29', '2022-11-11 04:46:02'),
(244, 'One arm dumbell row', 248, 27, 'Lett', NULL, 21, 1, NULL, '2022-11-11 04:40:55', '2022-11-11 04:40:55'),
(245, 'Glut bar lift', 249, 27, 'Lett', NULL, 22, 1, NULL, '2022-11-11 04:41:18', '2022-11-11 04:41:18'),
(246, 'Z-sit overhead dumbell press', 250, 27, 'Lett', 'Sit on the floor with your legs as straight as possible and your feet wider than your shoulder width. Keep your spine neutral and do a regular shoulder press. Keep your hands in a neutral position so your elbows are pointed forward and not out to the side.', 23, 1, NULL, '2022-11-11 04:41:36', '2022-11-11 04:49:20'),
(247, 'TRX-Row', 251, 27, 'Lett', 'Use a TRX, gymnastic rings or something similar. Grab the handle and move forward with your legs. Tighten your butt and keep your body straight while doing a typical row. You can make the exercise harder by having your legs on a step or box.', 24, 1, NULL, '2022-11-11 04:41:56', '2022-11-11 04:48:40'),
(248, 'Straight leg one-leg hamstrings lift', 252, 27, 'Lett', 'Lay on the floor with your one leg on the bench. Keep your knee slightly bent. Place a dumbbell, plate or barbell on your hips. From here, squeeze your glutes, keep your lower back flat and lift yourself.', 25, 1, NULL, '2022-11-11 04:42:16', '2022-11-11 04:50:22'),
(249, 'Straight leg one-leg hamstrings lift', 252, 27, 'Lett', NULL, 25, 1, '2022-11-11 04:49:56', '2022-11-11 04:42:16', '2022-11-11 04:49:56'),
(250, 'Front squat', 257, 27, 'Lett', 'When doing a front squat, you must keep your elbows high. The barbell should be uncomfortably close to your throat. Keep your chest high from a medium stance position, and push your knee forwards over your toes while squatting down. Make sure to control the eccentric and move slowly. From the bottom, quickly reverse the movement and explode up.', 26, 1, NULL, '2022-11-17 13:16:46', '2022-11-17 13:17:08'),
(251, '30`degree 1 dumbell press', 253, 27, 'Lett', 'Lay on a 30\' degree incline bench with one dumbbell in one hand. Bend your knees at a 90-degree angle and push your heels into the ground. Retract your shoulders. Slowly lower the weight for the described seconds and then push the weight back up. Complete the described reps for each arm. Start with your weakest arm.', 27, 1, NULL, '2022-11-17 13:18:11', '2022-11-17 13:18:11'),
(252, 'Land-One leg romanian deadlift', 254, 27, 'Lett', 'Stand with your side to the landmine on your outside leg while holding the barbell with your inside hand. Keep a good posture while pushing your hips and inside leg backwards into the Romanian deadlift. Make sure to move down slowly to focus on the eccentric part. Once hitting a good stretch on your hamstring, move forward, trying to move the weight as fast as possible.', 28, 1, NULL, '2022-11-17 13:19:08', '2022-11-17 13:19:08'),
(253, 'Landmine- Drop lunges to press', 255, 27, 'Lett', 'Stand with your feet shoulder-width apart with your side to the landmine set up, holding the barbell at your chest with a \"goblet\" grip. Quickly decent into a split squat position catching yourself, and hold a short isometric break of 1-2 seconds before exploding back up, rotating toward the landmine following through with a press. Return to the start position and complete another rep.', 29, 1, NULL, '2022-11-17 13:20:16', '2022-11-17 13:54:06'),
(254, 'Swissball Groinplank', 256, 27, 'Lett', 'Lay on the floor with your feet on the side of the swiss ball. Lift your hips up and squeeze the swiss ball.', 29, 1, NULL, '2022-11-17 13:21:20', '2022-11-17 13:21:20'),
(255, 'Benpress', 258, 32, 'Lett', NULL, 1, 1, NULL, '2022-11-18 08:33:28', '2022-11-18 09:42:54'),
(256, 'Brystpress', 259, 32, 'Lett', NULL, 2, 1, NULL, '2022-11-18 08:34:05', '2022-11-18 08:34:05'),
(257, 'Calf raises', 260, 32, 'Lett', NULL, 3, 1, NULL, '2022-11-18 08:35:07', '2022-11-18 08:35:07'),
(258, 'Legcurl', 261, 32, 'Lett', NULL, 4, 1, NULL, '2022-11-18 08:36:03', '2022-11-18 08:36:03'),
(259, 'Leg Extension', 262, 32, 'Lett', NULL, 5, 1, NULL, '2022-11-18 08:37:03', '2022-11-18 08:37:03'),
(260, 'Mavebøjning', 263, 32, 'Lett', NULL, 6, 1, NULL, '2022-11-18 08:37:45', '2022-11-18 08:37:45'),
(261, 'Nedtrekk', 264, 32, 'Lett', NULL, 7, 1, NULL, '2022-11-18 08:38:14', '2022-11-18 08:38:14'),
(262, 'Ryggekstensjon', 266, 32, 'Lett', NULL, 8, 1, NULL, '2022-11-18 08:39:02', '2022-11-18 08:39:02'),
(263, 'Sittende roing', 267, 32, 'Lett', NULL, 9, 1, NULL, '2022-11-18 08:39:41', '2022-11-18 08:39:41'),
(264, 'Skulderpress', 268, 32, 'Lett', NULL, 10, 1, NULL, '2022-11-18 08:40:29', '2022-11-18 08:40:29'),
(265, 'Stående flies', 269, 32, 'Lett', NULL, 11, 1, NULL, '2022-11-18 08:41:05', '2022-11-18 08:41:05'),
(266, 'Romaskin', 265, 32, 'Lett', NULL, 12, 1, NULL, '2022-11-18 08:56:18', '2022-11-18 08:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `pt_clipboards`
--

CREATE TABLE `pt_clipboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remain_clip` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pt_clipboards`
--

INSERT INTO `pt_clipboards` (`id`, `user_id`, `remain_clip`, `created_at`, `updated_at`) VALUES
(8, 53, 0, '2022-10-13 04:20:47', '2022-10-18 16:12:09'),
(9, 61, 7, '2022-10-26 03:26:24', '2022-11-22 11:19:05'),
(12, 80, 9, '2022-11-18 09:29:34', '2022-11-18 09:29:34'),
(13, 81, 2, '2022-11-18 09:29:50', '2022-11-18 09:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `pt_clipboard_logs`
--

CREATE TABLE `pt_clipboard_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `now` bigint(20) DEFAULT NULL,
  `previous` bigint(20) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pt_clipboard_logs`
--

INSERT INTO `pt_clipboard_logs` (`id`, `user_id`, `now`, `previous`, `create_by`, `created_at`, `updated_at`) VALUES
(1, 4, 29, 30, 1, '2022-03-22 07:27:32', '2022-03-22 07:27:32'),
(2, 4, 28, 29, 1, '2022-03-22 07:27:48', '2022-03-22 07:27:48'),
(3, 4, 27, 28, 1, '2022-03-22 07:29:28', '2022-03-22 07:29:28'),
(4, 2, 29, 30, 1, '2022-03-22 07:59:38', '2022-03-22 07:59:38'),
(5, 4, 30, 27, 1, '2022-03-22 08:35:39', '2022-03-22 08:35:39'),
(6, 4, 29, 30, 1, '2022-04-19 07:06:18', '2022-04-19 07:06:18'),
(7, 4, 28, 29, 1, '2022-04-19 07:06:20', '2022-04-19 07:06:20'),
(8, 2, 28, 29, 1, '2022-04-19 07:06:24', '2022-04-19 07:06:24'),
(9, 2, 30, 28, 1, '2022-04-29 06:42:25', '2022-04-29 06:42:25'),
(10, 2, 80, 30, 1, '2022-05-20 09:18:21', '2022-05-20 09:18:21'),
(11, 2, 79, 80, 1, '2022-05-20 09:18:24', '2022-05-20 09:18:24'),
(12, 2, 78, 79, 1, '2022-05-20 09:18:27', '2022-05-20 09:18:27'),
(13, 2, 77, 78, 1, '2022-05-20 09:18:27', '2022-05-20 09:18:27'),
(14, 2, 76, 77, 1, '2022-05-20 09:18:43', '2022-05-20 09:18:43'),
(15, 2, 153, 76, 1, '2022-05-20 09:18:57', '2022-05-20 09:18:57'),
(16, 2, 152, 153, 1, '2022-05-22 09:43:48', '2022-05-22 09:43:48'),
(17, 7, -1, 0, 1, '2022-05-28 13:09:16', '2022-05-28 13:09:16'),
(18, 7, 4, -1, 1, '2022-05-28 13:09:31', '2022-05-28 13:09:31'),
(19, 4, 27, 28, 1, '2022-06-02 04:35:04', '2022-06-02 04:35:04'),
(20, 4, 40, 27, 1, '2022-06-15 10:49:25', '2022-06-15 10:49:25'),
(21, 4, 40, 40, 1, '2022-06-15 10:50:22', '2022-06-15 10:50:22'),
(22, 4, 20, 40, 1, '2022-06-17 11:39:52', '2022-06-17 11:39:52'),
(23, 4, 19, 20, 1, '2022-06-17 11:40:18', '2022-06-17 11:40:18'),
(24, 4, 18, 19, 1, '2022-06-19 10:29:40', '2022-06-19 10:29:40'),
(25, 4, 19, 18, 1, '2022-06-19 10:30:26', '2022-06-19 10:30:26'),
(26, 4, 30, 19, 1, '2022-06-19 10:31:36', '2022-06-19 10:31:36'),
(27, 4, 29, 30, 1, '2022-07-19 19:06:36', '2022-07-19 19:06:36'),
(28, 4, 30, 29, 1, '2022-07-19 19:08:53', '2022-07-19 19:08:53'),
(29, 19, 22, 23, 1, '2022-07-19 19:10:20', '2022-07-19 19:10:20'),
(30, 4, 29, 30, 1, '2022-07-23 20:12:51', '2022-07-23 20:12:51'),
(31, 4, 30, 29, 1, '2022-07-23 20:13:26', '2022-07-23 20:13:26'),
(32, 4, 29, 30, 1, '2022-08-05 17:07:19', '2022-08-05 17:07:19'),
(33, 61, 0, 1, 1, '2022-10-31 16:09:06', '2022-10-31 16:09:06'),
(34, 61, 8, 2, 1, '2022-11-04 09:58:27', '2022-11-04 09:58:27'),
(35, 61, 7, 8, 1, '2022-11-04 09:58:33', '2022-11-04 09:58:33'),
(36, 61, 8, 7, 1, '2022-11-04 09:58:41', '2022-11-04 09:58:41'),
(37, 94, 9, 10, 70, '2022-11-18 09:27:30', '2022-11-18 09:27:30'),
(38, 94, 8, 9, 70, '2022-11-18 09:27:35', '2022-11-18 09:27:35'),
(39, 61, 7, 8, 1, '2022-11-22 11:19:05', '2022-11-22 11:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `register_activities`
--

CREATE TABLE `register_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `recordDate` varchar(50) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `exerciseName` varchar(250) DEFAULT NULL,
  `intensity` bigint(20) DEFAULT NULL,
  `injuryPain` bigint(20) DEFAULT NULL,
  `recovery` bigint(20) DEFAULT NULL,
  `sleep` bigint(20) DEFAULT NULL,
  `sleep_quality` bigint(20) DEFAULT NULL,
  `coach_id` bigint(20) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_activities`
--

INSERT INTO `register_activities` (`id`, `user_id`, `recordDate`, `duration`, `exerciseName`, `intensity`, `injuryPain`, `recovery`, `sleep`, `sleep_quality`, `coach_id`, `comment`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, '2022-03-22', 5, 'lift ups', 2, 3, 1, 4, NULL, 5, 'nice', 'test35', NULL, '2022-03-22 06:51:28', '2022-07-23 20:10:58'),
(2, 2, '2022-03-22', 3, 'the bench press', 3, 2, 4, 2, NULL, 6, 'the new commentss', 'Hellp', NULL, '2022-03-22 03:16:15', '2022-08-06 05:57:43'),
(3, 2, '2022-06-16', 60, 'Styrke', 6, 2, 6, 4, NULL, 5, 'Very tired today', NULL, NULL, '2022-06-16 12:27:12', '2022-06-16 12:27:12'),
(4, 2, '2022-08-18', 60, 'Styrke', 5, 3, 4, 6, NULL, 17, 'Hej Jesper', 'Godt arbejde', NULL, '2022-08-18 08:42:53', '2022-08-20 03:37:58'),
(5, 29, '2022-08-29', 60, 'Styrke', 6, 0, 5, 9, NULL, 5, 'Bra', NULL, '2022-11-03 06:20:00', '2022-08-29 06:45:45', '2022-11-03 06:20:00'),
(6, 32, '2022-09-14', 322, 'adsad', 3, 3, 4, 5, NULL, 11, 'Hei, dette er bare en test. Aktiviteten gikk veldig fint i dag', NULL, NULL, '2022-09-05 11:03:58', '2022-09-05 11:03:58'),
(7, 42, '2022-09-20', 90, 'Fotball', 8, 5, 6, 8, NULL, 5, 'God økt med høy intensitet', NULL, NULL, '2022-09-20 16:47:47', '2022-09-20 16:47:47'),
(8, 50, '2022-09-26', 60, 'Styrke', 5, 0, 7, 6, NULL, 5, 'Bra time og passende program som motiverer til mer trening!', 'Dejligt at høre:-)', NULL, '2022-09-26 12:42:04', '2022-10-02 09:31:46'),
(9, 48, '2022-10-03', 60, 'Styrkeintro', 3, 0, 8, 8, NULL, 5, 'Har været full hele helgen', 'IKKE BRA!!', '2022-11-03 06:19:52', '2022-10-03 06:15:11', '2022-11-03 06:19:52'),
(10, 53, '2022-10-13', 60, 'Styrkeprogram 2', 7, 0, 8, 10, NULL, 5, 'Hej Lasse Hvordan det nu øvelse 1 skulle gennemføres?', 'Husk at fokusere på eksplosiv bevægelse!', '2022-11-03 06:19:41', '2022-10-13 09:32:21', '2022-11-03 06:19:41'),
(11, 50, '2022-10-20', 60, 'Zumba', 8, 0, 10, 6, NULL, 5, 'Flink instruktør 👍', 'Tak:-)', NULL, '2022-10-30 08:53:59', '2022-11-04 09:39:42'),
(12, 50, '2022-10-30', 50, 'Styrkeprogram 1', 4, 0, 7, 6, NULL, 5, 'Godt å komme litt mer igang!', 'Det kan jeg godt forstå', NULL, '2022-10-30 08:56:05', '2022-11-04 09:39:12'),
(13, 62, '2022-11-01', 30, '1 RM Knebøy', 5, 4, 8, 8, NULL, 5, 'Havde ondt i ryggen- hvad skal jeg gøre for at undgå dette igen??', 'Prøv at reducere lidt på belastning, da jeg ser din 1 RM ikke samsvare med belastning du benytter på 5 rep- Husk at bruge kalkulator under profil.', '2022-11-03 06:19:22', '2022-11-01 17:43:15', '2022-11-03 06:19:22'),
(14, 80, '2022-11-12', 50, 'Styrkeprogram 1', 6, 0, 8, 8, 6, 5, 'Træf nogle nye muskelgrupper', 'Veldig bra!', NULL, '2022-11-12 11:55:23', '2022-11-12 11:56:03'),
(15, 81, '2022-11-12', 90, 'Styrke', 8, 0, 8, 10, 8, 5, 'Gjennomgang av stryke program 1 og 2 \r\nGod økt', 'Husk og giv besked om du har spørgsmål!', NULL, '2022-11-12 14:35:34', '2022-11-12 19:09:52'),
(16, 81, '2022-11-13', 0, 'Ingen', 0, 0, 6, 10, 8, 5, 'Litt støl etter styrken på lørdag', NULL, NULL, '2022-11-14 20:43:35', '2022-11-14 20:43:35'),
(17, 81, '2022-11-14', 90, 'Fotball', 7, 0, 7, 9, 8, 5, 'God økt med ok intensitet \r\nGod utførelse på øvelser og i kamp', NULL, NULL, '2022-11-14 20:44:42', '2022-11-14 20:44:42'),
(18, 80, '2022-11-14', 90, 'Fotballtrening', 7, 0, 9, 8, 8, 5, 'Spill 6v6 på liten bane.', NULL, NULL, '2022-11-15 05:06:19', '2022-11-15 05:06:19'),
(19, 80, '2022-11-15', 75, 'Fotballtrening', 5, 3, 8, 8, 9, 5, 'Sliter litt med en vond tå, men ingen muskulære smerter.', NULL, NULL, '2022-11-15 15:03:34', '2022-11-15 15:03:34'),
(20, 81, '2022-11-15', 60, 'Styrke', 7, 0, 7, 9, 8, 5, 'Ok økt. Følte at noe ikke var riktig men veit ikke helt hva. Skal bli bedre neste gang. Gjorde styrke program 1. \r\nskal de trapbar markløftene med vekt være eksplosive?', 'Hej Alexander! De skal udføres eksplosivt, men med god teknik i forhold til ret ryg.', NULL, '2022-11-15 17:32:02', '2022-11-16 11:42:35'),
(21, 80, '2022-11-15', 50, 'Styrkeprogram 1', 6, 2, 7, 8, 9, 5, 'Følte jeg hadde bedre kontroll ved utførelse av øvelsene.', 'Veldig bra og handler bare om tilvænning!', NULL, '2022-11-15 18:23:03', '2022-11-17 13:56:26'),
(22, 76, '2022-11-15', 30, 'Løping', 3, 0, 8, 9, 8, 5, 'Det gikk veldig bra', NULL, NULL, '2022-11-15 19:34:16', '2022-11-15 19:34:16'),
(23, 80, '2022-11-16', 90, 'Fotballtrening', 9, 2, 8, 9, 9, 5, 'Spill på liten bane.', NULL, NULL, '2022-11-16 18:42:28', '2022-11-16 18:42:28'),
(24, 81, '2022-11-16', 90, 'Fotball', 8, 1, 6, 8, 8, 5, 'Elendig bane men gjorde det ok sånn generelt på g16', NULL, NULL, '2022-11-17 06:26:32', '2022-11-17 06:26:32'),
(25, 94, '2022-11-18', 60, 'Styrke', 6, 0, 8, 5, 4, 70, 'Havne ondt', 'Prøv og reducere din belastning. Bliver det ikke bedre må vi mødes!', NULL, '2022-11-18 09:36:47', '2022-11-18 09:37:34'),
(26, 81, '2022-11-17', 90, 'Fotball', 7, 1, 8, 9, 9, 5, 'Trening med g14', NULL, NULL, '2022-11-18 13:27:25', '2022-11-18 13:27:25'),
(27, 80, '2022-11-18', 40, 'Løpeintervall', 7, 0, 8, 8, 8, 5, '45sek/15sek x 8 x 3', NULL, NULL, '2022-11-18 19:44:11', '2022-11-18 19:44:11'),
(28, 86, '2022-11-19', 60, 'BDO fotball kamp', 5, 0, 7, 9, 8, 5, 'BDO kamp på Lånke', NULL, NULL, '2022-11-19 17:08:48', '2022-11-19 17:08:48'),
(29, 81, '2022-11-18', 69, 'Styrke', 6, 0, 6, 9, 8, 5, 'Styrkeprogram 2', NULL, NULL, '2022-11-21 06:29:19', '2022-11-21 06:29:19'),
(30, 81, '2022-11-19', 40, 'Futsal', 9, 1, 8, 8, 9, 5, 'Flatås julecup \r\nGikk videre fra gruppe spillet', NULL, NULL, '2022-11-21 06:30:29', '2022-11-21 06:30:29'),
(31, 81, '2022-11-20', 60, 'Futsal', 9, 4, 6, 10, 8, 5, 'Sliter med ryggen \r\nVi vant hele Flatås julecup', 'Er sikkert pga. uvant underlag og mere intens spilsekvenser, så tag en dag ekstra fri om kroppen behøver hvile.', NULL, '2022-11-21 06:31:41', '2022-11-22 15:29:39'),
(32, 80, '2022-11-21', 90, 'Fotballtrening', 7, 0, 9, 7, 6, 5, 'Spill 8v8', NULL, NULL, '2022-11-22 05:23:58', '2022-11-22 05:23:58'),
(33, 86, '2022-11-21', 60, 'Fotball', 7, 1, 8, 8, 8, 5, 'Cover er i Vuku', NULL, NULL, '2022-11-22 14:49:06', '2022-11-22 14:49:06'),
(34, 86, '2022-11-22', 90, 'Fotball', 5, 1, 7, 8, 7, 5, 'Fellestrening Verdal stadion', NULL, NULL, '2022-11-22 14:51:57', '2022-11-22 14:51:57'),
(35, 80, '2022-11-22', 75, 'Fotballtrening', 7, 0, 7, 8, 8, 5, 'Skoletrening', NULL, NULL, '2022-11-22 20:49:50', '2022-11-22 20:49:50'),
(36, 80, '2022-11-22', 50, 'Styrkeprogram 2', 6, 0, 7, 8, 9, 5, '.', NULL, NULL, '2022-11-22 20:51:59', '2022-11-22 20:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2022-03-10 03:58:33', '2022-03-10 03:58:33'),
(2, 'practitioner', 'Resepsjon', NULL, '2022-03-10 04:00:10', '2022-10-12 05:49:31'),
(3, 'coach', 'Trener', NULL, '2022-03-21 09:52:27', '2022-03-21 09:52:36'),
(4, 'coach-responsible', 'Treneransvarlig', NULL, '2022-03-24 02:10:35', '2022-03-24 02:10:35'),
(5, 'manager', 'Daglig leder', NULL, '2022-03-24 02:10:49', '2022-08-27 08:49:38'),
(6, 'rubentestrubentrener', 'RubentestRubentrener', NULL, '2022-07-19 21:10:12', '2022-07-19 21:10:12'),
(9, 'test-rubenrolle', 'test-rubenrolle', NULL, '2022-11-02 15:30:46', '2022-11-02 15:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `setup_fixed_programs`
--

CREATE TABLE `setup_fixed_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exercise_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `sort` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup_fixed_programs`
--

INSERT INTO `setup_fixed_programs` (`id`, `name`, `user_id`, `exercise_category_id`, `group_id`, `comment`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Begins speed', NULL, 3, NULL, 'some Text!!', '', '2022-05-20 09:04:48', '2022-03-29 10:06:06', '2022-05-20 09:04:48'),
(2, 'Helkropp for begyndere', NULL, NULL, NULL, 'new demo', '1', '2022-07-24 17:37:44', '2022-03-29 05:26:50', '2022-07-24 17:37:44'),
(3, 'Helkropps program', NULL, 6, NULL, NULL, '1', '2022-07-11 05:23:43', '2022-05-16 12:47:10', '2022-07-11 05:23:43'),
(4, 'Helkropps program Nybegynner', NULL, 4, NULL, NULL, '1', '2022-07-11 05:23:40', '2022-05-23 10:09:53', '2022-07-11 05:23:40'),
(5, 'jjjj', NULL, 4, NULL, NULL, '1', '2022-06-09 16:50:50', '2022-05-29 08:34:15', '2022-06-09 16:50:50'),
(6, 'Test', NULL, 4, NULL, NULL, '1', '2022-07-11 05:23:40', '2022-06-09 16:55:33', '2022-07-11 05:23:40'),
(7, 'test', NULL, 4, NULL, NULL, '1', '2022-07-05 15:26:16', '2022-06-10 09:00:12', '2022-07-05 15:26:16'),
(8, 'tests', NULL, NULL, NULL, NULL, '1', '2022-07-08 20:51:24', '2022-07-08 20:50:48', '2022-07-08 20:51:24'),
(9, 'tests', NULL, NULL, NULL, NULL, '1', '2022-07-24 17:37:19', '2022-07-19 16:59:53', '2022-07-24 17:37:19'),
(10, 'test', NULL, NULL, NULL, NULL, '1', '2022-07-22 21:42:01', '2022-07-22 21:41:42', '2022-07-22 21:42:01'),
(11, 'Begynderprogram SSA (Treningsveiledning)', NULL, NULL, NULL, NULL, '1', '2022-08-03 09:37:34', '2022-07-24 17:38:09', '2022-08-03 09:37:34'),
(12, 'Begynderprogram SSA (Treningsveiledning)', NULL, NULL, NULL, NULL, '1', '2022-09-12 06:09:36', '2022-08-05 12:40:37', '2022-09-12 06:09:36'),
(13, 'test2', NULL, NULL, NULL, NULL, '1', '2022-08-06 05:26:35', '2022-08-05 21:36:29', '2022-08-06 05:26:35'),
(14, 'Mediumprogram SSA (Treningsveiledning)', NULL, NULL, NULL, NULL, '1', '2022-09-16 07:24:54', '2022-08-15 04:36:06', '2022-09-16 07:24:54'),
(15, 'Oppvarmning romaskine', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-01 08:43:05', '2022-09-01 08:43:05'),
(16, 'Konditionsprogram 20/10', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-01 08:57:45', '2022-09-01 08:57:45'),
(17, 'Treningsveiledningsprogram (Jesper)', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-03 07:24:30', '2022-09-03 07:24:30'),
(18, 'Makspulstest (Løb)', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-05 07:25:15', '2022-09-05 07:25:15'),
(19, 'Intervalprogram 4 set *6 minutter (Tærskeltræning)', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-06 07:42:19', '2022-09-06 07:42:33'),
(20, 'Oppvarmning løpeintervaller', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-06 07:47:27', '2022-09-06 07:47:27'),
(21, 'Intervalprogram 4 set *4 minutter (Tærskeltræning)', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-08 07:38:42', '2022-09-08 07:38:42'),
(22, 'Intervalprogram pyramide 1-2-3-4-3-2-1 (Tærskeltræning og fart)', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-08 07:41:03', '2022-09-08 07:48:47'),
(23, 'Interval program 15/15 (Anaerob kondition)', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-08 07:49:55', '2022-09-08 07:49:55'),
(24, 'Begynderprogram SSA', NULL, NULL, NULL, NULL, '1', '2022-09-12 07:07:07', '2022-09-12 06:09:44', '2022-09-12 07:07:07'),
(25, 'Intervalprogram 17/13', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-12 07:08:09', '2022-09-12 07:08:31'),
(26, 'Intervalprogram 90 sekunder', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-12 07:11:17', '2022-09-12 07:11:17'),
(27, 'Intervalprogram (Fokus hastighed)', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-12 07:21:09', '2022-09-12 07:21:09'),
(28, 'Intervalprogram 50/10', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-12 07:42:00', '2022-09-12 07:42:00'),
(29, '1 RM bænkpres', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-13 05:21:24', '2022-09-13 05:21:24'),
(30, '1 RM Squat', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-13 05:21:38', '2022-09-13 05:21:38'),
(31, '1 RM Markløft', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-13 05:21:48', '2022-09-13 05:21:48'),
(32, 'Oppvarmning tredemølle', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-13 08:12:29', '2022-09-13 08:12:29'),
(33, 'Begynderprogram SSA (Treningsveiledning)', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-13 08:15:15', '2022-10-02 09:30:02'),
(34, 'Mediumprogram SSA (Treningsveiledning)', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-16 07:25:08', '2022-09-16 07:25:08'),
(35, 'Fedtmåling', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-16 17:43:25', '2022-09-16 17:43:25'),
(36, 'Oppvarmning ellipsemaskine', NULL, NULL, NULL, NULL, '1', NULL, '2022-09-29 08:07:26', '2022-09-29 08:07:26'),
(37, 'Oppvarmning 1 (Concentric block)', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-05 04:33:33', '2022-10-05 04:33:44'),
(38, 'Oppvarmning 2 (Concentric block)', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-05 04:33:56', '2022-10-05 04:33:56'),
(39, 'Oppvarmning 3 (Concentric block)', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-05 04:34:05', '2022-10-05 04:34:05'),
(40, 'Styrkeprogram 1 (Concentric block)', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-05 04:34:36', '2022-10-05 04:34:36'),
(41, 'Styrkeprogram 2 (Concentric block)', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-05 04:35:01', '2022-10-05 04:35:01'),
(42, 'Styrkeprogram 3 (Concentric block)', NULL, NULL, NULL, NULL, '1', '2022-10-13 09:57:55', '2022-10-05 04:35:13', '2022-10-13 09:57:55'),
(43, 'Styrkeprogram 3 (Concentric block)', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-13 09:58:01', '2022-10-13 09:58:01'),
(44, 'Oppvarmning eccentric block program 1', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-25 04:40:54', '2022-10-25 04:52:49'),
(45, 'Oppvarmning eccentric block program 2', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-25 04:52:36', '2022-10-25 04:52:36'),
(46, 'Oppvarmning eccentric block program 3', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-25 05:07:13', '2022-10-25 05:07:13'),
(47, 'Styrkeprogram 1 (Eccentric block)', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-26 05:06:45', '2022-10-26 05:06:45'),
(48, 'Program for øgning i 1 RM Squat', NULL, NULL, NULL, NULL, '1', NULL, '2022-10-30 18:29:41', '2022-10-30 18:29:41'),
(49, 'Styrkeprogram 2', NULL, NULL, NULL, NULL, '1', '2022-10-31 16:13:39', '2022-10-31 16:13:12', '2022-10-31 16:13:39'),
(50, 'Styrkeprogram 2 (Eccentric block)', NULL, NULL, NULL, NULL, '1', NULL, '2022-11-10 05:05:58', '2022-11-10 05:05:58'),
(51, 'Styrkeprogram 3 (Eccentric block)', NULL, NULL, NULL, NULL, '1', NULL, '2022-11-10 05:06:12', '2022-11-10 05:06:12'),
(52, 'Opvarmning før styrketrening (AK)', NULL, NULL, NULL, NULL, '1', NULL, '2022-11-18 08:54:19', '2022-11-18 08:54:19'),
(53, 'Styrkeprogram 1 begynder (Ann-kristin)', NULL, NULL, NULL, NULL, '1', NULL, '2022-11-18 09:01:26', '2022-11-18 09:01:26'),
(54, 'Oppvarmning 1 (Speed peak)', NULL, NULL, NULL, NULL, '1', NULL, '2022-11-20 11:30:49', '2022-11-20 11:30:49'),
(55, 'Oppvarmning 2 (Speed peak)', NULL, NULL, NULL, NULL, '1', NULL, '2022-11-21 07:17:59', '2022-11-21 07:17:59'),
(56, 'Oppvarmning 3 (Speed peak)', NULL, NULL, NULL, NULL, '1', NULL, '2022-11-22 13:10:16', '2022-11-22 13:10:16'),
(57, 'Oppvarmning sykkel', NULL, NULL, NULL, NULL, '1', NULL, '2022-11-22 15:37:52', '2022-11-22 15:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `setup_fixed_program_values`
--

CREATE TABLE `setup_fixed_program_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setup_fixed_program_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `program_with_video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `set` varchar(50) DEFAULT NULL,
  `rep` varchar(50) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `break` varchar(255) DEFAULT NULL,
  `distance` varchar(50) DEFAULT NULL,
  `exercise_no` varchar(50) DEFAULT NULL,
  `sort` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup_fixed_program_values`
--

INSERT INTO `setup_fixed_program_values` (`id`, `setup_fixed_program_id`, `user_id`, `program_with_video_id`, `set`, `rep`, `duration`, `break`, `distance`, `exercise_no`, `sort`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, '1', '3', '3', '3', NULL, NULL, NULL, NULL, '2022-04-25 01:41:47', '2022-03-29 11:59:34', '2022-04-25 01:41:47'),
(2, 1, NULL, 1, '1', '2', '6', '7', '4', '5', '3', '8 some text', NULL, '2022-03-29 07:32:35', '2022-03-29 08:40:53'),
(3, 1, NULL, 2, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-29 07:32:35', '2022-04-25 01:39:08'),
(4, 3, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 16:01:25', '2022-05-16 12:49:54', '2022-05-16 16:01:25'),
(5, 3, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 16:01:20', '2022-05-16 12:49:54', '2022-05-16 16:01:20'),
(6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 08:02:19', '2022-05-23 08:02:12', '2022-05-23 08:02:19'),
(7, 2, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 08:02:34', '2022-05-23 08:02:12', '2022-05-23 08:02:34'),
(8, 2, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 08:02:38', '2022-05-23 08:02:12', '2022-05-23 08:02:38'),
(9, 4, NULL, 1, '3', '10', NULL, NULL, NULL, NULL, '2', NULL, NULL, '2022-05-23 10:13:44', '2022-05-23 10:17:20'),
(10, 4, NULL, 4, '3', '10', NULL, NULL, NULL, NULL, '2', NULL, NULL, '2022-05-23 10:14:04', '2022-05-23 10:15:22'),
(11, 4, NULL, 8, '2', '8', NULL, NULL, NULL, NULL, '1', 'Oppvarming', NULL, '2022-05-23 10:14:04', '2022-05-23 10:17:03'),
(12, 4, NULL, 10, '3', '10', NULL, NULL, NULL, NULL, '3', NULL, NULL, '2022-05-23 10:14:04', '2022-05-23 10:16:01'),
(13, 2, NULL, 1, '2', '10', '32', '2', '14', '1', '2', 'rewer', NULL, '2022-05-23 10:46:15', '2022-06-15 10:20:18'),
(14, 2, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 15:31:12', '2022-06-06 15:31:12'),
(15, 2, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 15:31:12', '2022-06-06 15:31:12'),
(16, 6, NULL, 9, NULL, NULL, NULL, NULL, '60', '1', '2', NULL, NULL, '2022-06-09 17:01:30', '2022-06-09 17:03:19'),
(17, 6, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 17:01:30', '2022-06-09 17:01:30'),
(18, 6, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 17:01:30', '2022-06-09 17:01:30'),
(19, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 08:33:30', '2022-06-10 08:33:30'),
(20, 2, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 11:58:10', '2022-06-11 11:58:10'),
(21, 9, NULL, 63, NULL, NULL, NULL, NULL, NULL, '1', NULL, 's', '2022-07-26 12:06:53', '2022-07-19 17:00:17', '2022-07-26 12:06:53'),
(22, 9, NULL, 63, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2022-08-02 13:11:30', '2022-07-22 21:42:19', '2022-08-02 13:11:30'),
(23, 11, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-25 09:52:31', '2022-07-25 09:52:12', '2022-07-25 09:52:31'),
(24, 11, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-03 09:37:01', '2022-08-03 09:36:53', '2022-08-03 09:37:01'),
(25, 12, NULL, 71, '1', '2', '5', '5', '44', '1', '3', 'demo', '2022-08-08 05:22:00', '2022-08-05 12:40:45', '2022-08-08 05:22:00'),
(26, 13, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 21:37:06', '2022-08-05 21:37:06'),
(27, 13, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 21:37:11', '2022-08-05 21:37:11'),
(28, 13, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 21:37:15', '2022-08-05 21:37:15'),
(29, 12, NULL, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 05:21:18', '2022-08-06 05:30:01', '2022-08-08 05:21:18'),
(30, 12, NULL, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 05:21:28', '2022-08-06 05:30:01', '2022-08-08 05:21:28'),
(31, 12, NULL, 83, '2', '10', NULL, NULL, NULL, '1', '6', NULL, '2022-09-01 08:52:08', '2022-08-08 05:23:38', '2022-09-01 08:52:08'),
(32, 12, NULL, 84, '2', '10', NULL, NULL, NULL, '1', '9', NULL, '2022-09-01 08:52:14', '2022-08-08 05:23:38', '2022-09-01 08:52:14'),
(33, 12, NULL, 85, '2', '10', NULL, NULL, NULL, '1', '3', NULL, '2022-09-01 08:52:18', '2022-08-08 05:23:38', '2022-09-01 08:52:18'),
(34, 12, NULL, 87, '2', '15', NULL, NULL, NULL, '1', '10', NULL, '2022-09-01 08:52:24', '2022-08-08 05:23:38', '2022-09-01 08:52:24'),
(35, 12, NULL, 90, '2', '10', NULL, NULL, NULL, '1', '5', NULL, '2022-09-01 08:52:30', '2022-08-08 05:23:38', '2022-09-01 08:52:30'),
(36, 12, NULL, 71, '2', '10', NULL, NULL, NULL, '1', '1', NULL, '2022-09-01 08:52:34', '2022-08-08 05:24:57', '2022-09-01 08:52:34'),
(37, 12, NULL, 72, '2', '10', NULL, NULL, NULL, '1', '2', NULL, '2022-09-01 08:52:39', '2022-08-08 05:24:57', '2022-09-01 08:52:39'),
(38, 12, NULL, 73, '2', '10', NULL, NULL, NULL, '1', '7', NULL, '2022-09-01 08:52:45', '2022-08-08 05:24:57', '2022-09-01 08:52:45'),
(39, 12, NULL, 76, '2', '10', NULL, NULL, NULL, '1', '4', NULL, '2022-09-01 08:52:49', '2022-08-08 05:24:57', '2022-09-01 08:52:49'),
(40, 12, NULL, 81, '2', '10', NULL, NULL, NULL, '1', '8', NULL, '2022-09-01 08:52:55', '2022-08-08 05:24:57', '2022-09-01 08:52:55'),
(41, 14, NULL, 77, '2', '15', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-08-15 04:38:31', '2022-08-15 04:46:25'),
(42, 14, NULL, 78, '2', '10', NULL, NULL, NULL, '1', '11', NULL, NULL, '2022-08-15 04:38:31', '2022-08-15 04:47:41'),
(43, 14, NULL, 80, '2', '10', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-08-15 04:38:31', '2022-08-15 04:46:06'),
(44, 14, NULL, 93, '2', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-08-15 04:38:55', '2022-08-15 04:40:16'),
(45, 14, NULL, 95, '2', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-08-15 04:38:55', '2022-08-15 04:40:49'),
(46, 14, NULL, 82, '2', '20', NULL, NULL, NULL, '1', '10', NULL, NULL, '2022-08-15 04:39:26', '2022-08-15 04:47:22'),
(47, 14, NULL, 86, '2', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-08-15 04:39:26', '2022-08-15 04:45:41'),
(48, 14, NULL, 88, '2', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-08-15 04:39:26', '2022-08-15 04:40:34'),
(49, 14, NULL, 91, '2', '10', NULL, NULL, NULL, '1', '8', NULL, NULL, '2022-08-15 04:39:26', '2022-08-15 04:46:45'),
(50, 14, NULL, 92, '2', '10', NULL, NULL, NULL, '1', '9', NULL, NULL, '2022-08-15 04:39:26', '2022-08-15 04:46:59'),
(51, 14, NULL, 100, '2', '6', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-08-15 04:44:11', '2022-08-15 04:45:24'),
(52, 15, NULL, 99, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-01 08:44:39', '2022-11-03 09:46:13'),
(53, 12, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:53:03', '2022-09-01 08:53:03'),
(54, 12, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:53:03', '2022-09-01 08:53:03'),
(55, 12, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:53:18', '2022-09-01 08:53:18'),
(56, 12, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:53:31', '2022-09-01 08:53:31'),
(57, 12, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:54:01', '2022-09-01 08:54:01'),
(58, 12, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:54:01', '2022-09-01 08:54:01'),
(59, 12, NULL, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:54:40', '2022-09-01 08:54:40'),
(60, 12, NULL, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:54:40', '2022-09-01 08:54:40'),
(61, 12, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:55:16', '2022-09-01 08:55:16'),
(62, 12, NULL, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:55:16', '2022-09-01 08:55:16'),
(63, 16, NULL, 96, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Tabatainterval 20 sekunders løb/10 sekunders pause*8 runder (1 til 4 set).', '2022-09-08 05:40:15', '2022-09-01 08:58:02', '2022-09-08 05:40:15'),
(64, 17, NULL, 120, '2', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-09-03 07:25:28', '2022-10-03 06:08:33'),
(65, 17, NULL, 121, '2', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-09-03 07:25:28', '2022-10-03 06:08:47'),
(66, 17, NULL, 122, '2', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-09-03 07:25:28', '2022-10-03 06:08:59'),
(67, 17, NULL, 123, '2', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-09-03 07:25:28', '2022-10-03 06:09:10'),
(68, 17, NULL, 124, '2', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-09-03 07:25:28', '2022-10-03 06:09:22'),
(69, 17, NULL, 126, '2', '10', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-09-03 07:26:27', '2022-10-03 06:09:36'),
(70, 18, NULL, 127, NULL, NULL, '20:__', NULL, NULL, '1', '1', NULL, NULL, '2022-09-05 07:25:38', '2022-11-03 06:29:18'),
(71, 18, NULL, 128, '1', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-09-05 07:25:38', '2022-11-03 06:29:27'),
(72, 18, NULL, 129, '1', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-09-05 07:25:38', '2022-11-03 06:29:34'),
(73, 18, NULL, 130, '1', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-09-05 07:25:38', '2022-11-03 06:29:45'),
(74, 18, NULL, 131, '1', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-09-05 07:25:38', '2022-11-03 06:29:53'),
(75, 18, NULL, 132, '1', '10', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-09-05 07:25:38', '2022-11-03 06:30:01'),
(76, 18, NULL, 133, '1', '5', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-09-05 07:25:38', '2022-11-03 06:30:12'),
(77, 18, NULL, 134, '1', '1', NULL, NULL, NULL, '1', '8', NULL, NULL, '2022-09-05 07:25:38', '2022-11-03 06:30:22'),
(78, 19, NULL, 127, NULL, NULL, '10', NULL, NULL, '1', NULL, NULL, '2022-09-08 07:26:40', '2022-09-06 07:42:49', '2022-09-08 07:26:40'),
(79, 20, NULL, 136, NULL, NULL, '10', NULL, NULL, '1', NULL, 'Oppvarmning 10 minutter 70-75% av maxpuls', NULL, '2022-09-06 07:48:46', '2022-09-06 07:49:35'),
(80, 20, NULL, 137, NULL, NULL, '1', NULL, NULL, '1', NULL, 'Gå 1 minut baglæns!', NULL, '2022-09-06 07:48:46', '2022-09-06 07:49:59'),
(81, 20, NULL, 138, NULL, NULL, '1', NULL, NULL, '1', NULL, 'Gå 1 minut sidelens til begge sidder!', NULL, '2022-09-06 07:48:46', '2022-09-06 07:50:51'),
(82, 20, NULL, 139, '1', '10', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-09-06 07:48:46', '2022-09-06 07:51:01'),
(83, 20, NULL, 140, '1', '10', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-09-06 07:48:46', '2022-09-06 07:51:22'),
(84, 20, NULL, 141, '1', '10', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-09-06 07:48:46', '2022-09-06 07:51:38'),
(85, 20, NULL, 142, '1', '10', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-09-06 07:48:46', '2022-09-06 07:51:50'),
(86, 20, NULL, 143, '1', '10', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-09-06 07:48:46', '2022-09-06 07:52:00'),
(87, 16, NULL, 146, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Tabatainterval 20 sekunders løb/10 sekunders pause*8 runder (1 til 4 set).', NULL, '2022-09-08 05:39:54', '2022-09-08 05:40:08'),
(88, 19, NULL, 134, '1', '4', '6', '4', NULL, '1', NULL, 'Langinterval hvor der gennemføres 4 løb af 6 minutter på 80-90 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:27:08', '2022-09-08 07:37:40'),
(89, 21, NULL, 134, '4', '4', '4', '2', NULL, '1', NULL, 'Langinterval hvor der gennemføres 4 løb af 4 minutter på 85-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:39:10', '2022-09-08 07:39:46'),
(90, 22, NULL, 134, '1', '1', '1', '1', NULL, '1', NULL, '1 minuts interval på 85-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:41:40', '2022-09-08 07:44:04'),
(91, 22, NULL, 134, '1', '1', '2', '2', NULL, '1', NULL, '2 minuts interval på 85-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:41:51', '2022-09-08 07:44:26'),
(92, 22, NULL, 134, '1', '1', '3', '3', NULL, '1', NULL, '3 minuts interval på 85-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:42:02', '2022-09-08 07:44:49'),
(93, 22, NULL, 134, '1', '1', '4', '4', NULL, '1', NULL, '4 minuts interval på 85-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:42:14', '2022-09-08 07:45:13'),
(94, 22, NULL, 134, '1', '1', '3', '3', NULL, '1', NULL, '3 minuts interval på 85-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:42:25', '2022-09-08 07:46:30'),
(95, 22, NULL, 134, '1', '1', '2', '2', NULL, '1', NULL, '2 minuts interval på 85-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:42:39', '2022-09-08 07:46:41'),
(96, 22, NULL, 134, '1', '1', '1', '1', NULL, '1', NULL, '1 minuts interval på 85-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:42:51', '2022-09-08 07:46:51'),
(97, 23, NULL, 148, '2', '14', NULL, '5', NULL, '1', NULL, '15/15 interval er hvor du løber 15 sekunder med høj intensitet efterfulgt af 15 sekunders pause af 14 runder. Intensiteten bør ligge på 90-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:50:33', '2022-09-08 07:54:48'),
(98, 24, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:10:52', '2022-09-12 06:10:20', '2022-09-12 06:10:52'),
(99, 24, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 06:10:45', '2022-09-12 06:10:20', '2022-09-12 06:10:45'),
(100, 25, NULL, 153, '2', '15', NULL, NULL, NULL, '1', NULL, '17/13 interval er hvor du løber 17 sekunder med høj intensitet efterfulgt af 13 sekunders pause af 15 runder. Intensiteten bør ligge på 90-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-12 07:08:48', '2022-09-12 07:10:21'),
(101, 26, NULL, 152, '1', '6', NULL, NULL, NULL, '1', NULL, '90 sekunders interval er hvor du løber 90 sekunder med høj intensitet efterfulgt af 3 minutters pause af 6 runder. Intensiteten bør ligge på 90-100 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-12 07:11:37', '2022-09-12 07:12:55'),
(102, 27, NULL, 149, '1', '6', NULL, NULL, NULL, '1', NULL, '20/40 interval er hvor du løber 20 sekunder med høj intensitet/hastighed efterfulgt af 40 sekunders pause af 6 runder. Intensiteten bør ligge på 90 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Efter intervallet har du 3 minutters aktiv pause.', NULL, '2022-09-12 07:21:48', '2022-09-12 07:24:21'),
(103, 27, NULL, 150, '1', '6', NULL, NULL, NULL, '1', NULL, '15/30 interval er hvor du løber 15 sekunder med høj intensitet/hastighed efterfulgt af 30 sekunders pause af 6 runder. Intensiteten bør ligge på 92 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Efter intervallet har du 3 minutters aktiv pause.', NULL, '2022-09-12 07:21:48', '2022-09-12 07:25:19'),
(104, 27, NULL, 151, '1', '6', NULL, NULL, NULL, '1', NULL, '10/20 interval er hvor du løber 10 sekunder med høj intensitet/hastighed efterfulgt af 20 sekunders pause af 6 runder. Intensiteten bør ligge på 95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Efter intervallet har du 5 minutteres nedvarmning bestående af rolig løb..', NULL, '2022-09-12 07:21:48', '2022-09-12 07:26:26'),
(105, 28, NULL, 154, '3', '4', NULL, '3', NULL, '1', NULL, '50/10 interval er hvor du løber 50 sekunder med høj intensitet efterfulgt af 10 sekunders pause af 4 runder. Intensiteten bør ligge på 90-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-12 07:42:25', '2022-09-12 07:44:34'),
(106, 29, NULL, 155, '1', '10', NULL, '3', NULL, '1', '1', 'Udfør opvarmning med en selvvalgt belastning som kan gennemføres minimum 10 gentagelser (Ca. 50% af 1 RM)- Husk at registere belastningen til næste test.', NULL, '2022-09-13 05:24:26', '2022-09-13 05:33:15'),
(107, 29, NULL, 156, '1', '5', NULL, '3', NULL, '1', '2', 'Vælg en belastning baseret på tidligere løftesekvens med fokus på at gennemføre 5 gentagelser (Ca. 80% af 1 RM)- Husk at registere belastningen til næste test.', NULL, '2022-09-13 05:24:26', '2022-09-13 05:28:53'),
(108, 29, NULL, 157, '5', '1', NULL, '3', NULL, '1', '3', 'Nu øges belastningen mod gennemførslen af 1 RM. En serie af enkle løft gennemføres indtil, at belastningen betyder øvelsen ikke kan gennemføres med optimal teknik. Der gives maksimalt 5 forsøg og der bør bruges en spotter for sikkerheden. Husk at registere højeste belastning, som bliver dit 1 RM resultat.', NULL, '2022-09-13 05:24:26', '2022-09-13 05:32:59'),
(109, 30, NULL, 158, '1', '10', NULL, '3', NULL, '1', NULL, 'Udfør opvarmning med en selvvalgt belastning som kan gennemføres minimum 10 gentagelser (Ca. 50% af 1 RM)- Husk at registere belastningen til næste test.', NULL, '2022-09-13 05:33:42', '2022-09-13 05:34:02'),
(110, 31, NULL, 161, '1', '10', NULL, NULL, NULL, '1', '1', 'Udfør opvarmning med en selvvalgt belastning som kan gennemføres minimum 10 gentagelser (Ca. 50% af 1 RM)- Husk at registere belastningen til næste test.', NULL, '2022-09-13 05:36:02', '2022-09-13 05:36:22'),
(111, 31, NULL, 162, '1', '5', NULL, '3', NULL, '1', '2', 'Vælg en belastning baseret på tidligere løftesekvens med fokus på at gennemføre 5 gentagelser (Ca. 80% af 1 RM)- Husk at registere belastningen til næste test.', NULL, '2022-09-13 05:36:02', '2022-09-13 05:38:02'),
(112, 31, NULL, 163, '5', '1', NULL, '3', NULL, '1', '3', 'Nu øges belastningen mod gennemførslen af 1 RM. En serie af enkle løft gennemføres indtil, at belastningen betyder øvelsen ikke kan gennemføres med optimal teknik. Der gives maksimalt 5 forsøg og der bør bruges en spotter for sikkerheden. Husk at registere højeste belastning, som bliver dit 1 RM resultat.', NULL, '2022-09-13 05:36:02', '2022-09-13 05:39:32'),
(113, 30, NULL, 159, '1', '5', NULL, '3', NULL, '1', NULL, 'Vælg en belastning baseret på tidligere løftesekvens med fokus på at gennemføre 5 gentagelser (Ca. 80% af 1 RM)- Husk at registere belastningen til næste test.', NULL, '2022-09-13 05:37:10', '2022-09-13 05:37:25'),
(114, 30, NULL, 160, '5', NULL, NULL, '3', NULL, '1', '3', 'Nu øges belastningen mod gennemførslen af 1 RM. En serie af enkle løft gennemføres indtil, at belastningen betyder øvelsen ikke kan gennemføres med optimal teknik. Der gives maksimalt 5 forsøg og der bør bruges en spotter for sikkerheden. Husk at registere højeste belastning, som bliver dit 1 RM resultat.', NULL, '2022-09-13 05:37:10', '2022-09-13 05:38:51'),
(115, 32, NULL, 146, NULL, NULL, '10', NULL, NULL, '1', '1', 'Opvarmning 10 minutter rolig løb på løbebånd.', NULL, '2022-09-13 08:12:47', '2022-09-13 08:14:37'),
(116, 33, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:16:07', '2022-09-13 08:15:40', '2022-09-13 08:16:07'),
(117, 33, NULL, 72, '2', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-09-13 08:15:40', '2022-09-13 08:24:47'),
(118, 33, NULL, 120, '2', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-09-13 08:16:38', '2022-09-13 08:24:54'),
(119, 33, NULL, 81, '2', '15', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-09-13 08:16:58', '2022-09-13 08:25:57'),
(120, 33, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:19:28', '2022-09-13 08:17:16', '2022-09-13 08:19:28'),
(121, 33, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:18:57', '2022-09-13 08:18:19', '2022-09-13 08:18:57'),
(122, 33, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:19:05', '2022-09-13 08:18:38', '2022-09-13 08:19:05'),
(123, 33, NULL, 85, '2', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-09-13 08:19:20', '2022-09-13 08:26:07'),
(124, 33, NULL, 76, '2', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-09-13 08:19:39', '2022-09-13 08:26:16'),
(125, 33, NULL, 80, '2', '10', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-09-13 08:19:49', '2022-09-13 08:26:28'),
(126, 33, NULL, 90, '2', '10', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-09-13 08:19:59', '2022-09-13 08:26:38'),
(127, 33, NULL, 82, '2', '20', NULL, NULL, NULL, '1', '8', NULL, NULL, '2022-09-13 08:20:19', '2022-09-13 08:26:46'),
(128, 33, NULL, 94, '2', '10', NULL, NULL, NULL, '1', '9', NULL, '2022-10-02 09:26:05', '2022-09-13 08:20:29', '2022-10-02 09:26:05'),
(129, 34, NULL, 93, '2', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-09-16 07:27:25', '2022-10-02 09:33:04'),
(130, 34, NULL, 88, '2', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-09-16 07:27:37', '2022-10-02 09:33:12'),
(131, 34, NULL, 78, '2', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-09-16 07:27:48', '2022-10-02 09:33:20'),
(132, 34, NULL, 74, '2', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-09-16 07:27:59', '2022-10-02 09:33:32'),
(133, 34, NULL, 86, '2', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-09-16 07:28:13', '2022-10-02 09:33:43'),
(134, 34, NULL, 83, '2', '10', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-09-16 07:28:35', '2022-10-02 09:33:54'),
(135, 34, NULL, 100, '2', '10', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-09-16 07:28:47', '2022-10-02 09:34:04'),
(136, 34, NULL, 73, '2', '10', NULL, NULL, NULL, '1', '8', NULL, NULL, '2022-09-16 07:29:02', '2022-10-02 09:34:16'),
(137, 34, NULL, 87, '2', '10', NULL, NULL, NULL, '1', '9', NULL, NULL, '2022-09-16 07:29:34', '2022-10-02 09:34:23'),
(138, 33, NULL, 84, '2', '10', NULL, NULL, NULL, '1', '9', NULL, NULL, '2022-09-16 08:19:40', '2022-10-02 09:26:26'),
(139, 36, NULL, 98, NULL, NULL, '10', NULL, NULL, '1', '1', NULL, NULL, '2022-09-29 08:07:47', '2022-09-29 08:08:01'),
(140, 37, NULL, 168, '1', NULL, '01:00', '01:00', NULL, '1', '1', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:36:17', '2022-11-06 11:00:58'),
(141, 37, NULL, 164, '1', NULL, '01:00', '01:00', NULL, '1', '2', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:36:43', '2022-11-06 11:01:18'),
(142, 37, NULL, 171, '1', NULL, '01:00', '01:00', NULL, '1', '3', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:36:43', '2022-11-06 11:01:35'),
(143, 37, NULL, 167, '1', '15', NULL, NULL, NULL, '1', '4', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:37:10', '2022-11-06 11:06:24'),
(144, 37, NULL, 170, '1', '15', NULL, NULL, NULL, '1', '5', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:37:10', '2022-11-06 11:06:10'),
(145, 37, NULL, 169, '1', '15', NULL, NULL, NULL, '1', '6', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:39:49', '2022-11-06 11:06:38'),
(146, 37, NULL, 166, '1', NULL, '00:30', '00:30', NULL, '1', '7', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:40:02', '2022-11-06 11:07:02'),
(147, 38, NULL, 168, '1', NULL, '01:00', '00:30', NULL, '1', '1', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:55:39', '2022-11-08 03:36:13'),
(148, 38, NULL, 164, '1', NULL, '01:00', '00:30', NULL, '1', '2', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:55:56', '2022-11-08 03:36:38'),
(149, 38, NULL, 171, '1', NULL, '01:00', '00:30', NULL, '1', '3', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:55:56', '2022-11-08 03:36:58'),
(150, 38, NULL, 167, '1', '15', NULL, NULL, NULL, '1', '4', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:56:14', '2022-11-08 03:37:15'),
(151, 38, NULL, 170, '1', '15', NULL, NULL, NULL, '1', '5', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:56:14', '2022-11-08 03:37:28'),
(152, 38, NULL, 169, '1', '15', NULL, NULL, NULL, '1', '6', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:56:29', '2022-11-08 03:37:42'),
(153, 38, NULL, 166, '1', NULL, '00:30', '00:30', NULL, '1', '7', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-05 04:56:39', '2022-11-08 03:38:00'),
(154, 38, NULL, 165, '1', '15', NULL, NULL, NULL, '1', '8', NULL, NULL, '2022-10-05 04:56:52', '2022-10-05 04:59:18'),
(155, 42, NULL, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 05:43:31', '2022-10-05 05:04:49', '2022-10-07 05:43:31'),
(156, 42, NULL, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 05:43:36', '2022-10-05 05:04:49', '2022-10-07 05:43:36'),
(157, 42, NULL, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 05:43:42', '2022-10-05 05:05:05', '2022-10-07 05:43:42'),
(158, 42, NULL, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 05:43:54', '2022-10-05 05:05:05', '2022-10-07 05:43:54'),
(159, 39, NULL, 174, '1', '15', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-10-05 05:09:19', '2022-10-05 05:10:47'),
(160, 39, NULL, 175, '1', '15', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-10-05 05:09:19', '2022-10-05 05:10:54'),
(161, 39, NULL, 172, '1', '15', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-10-05 05:09:47', '2022-10-05 05:11:03'),
(162, 39, NULL, 173, '1', '15', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-10-05 05:09:47', '2022-10-05 05:11:13'),
(163, 39, NULL, 207, '1', '15', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-10-05 05:10:05', '2022-10-05 05:11:24'),
(164, 40, NULL, 174, '2', '15', NULL, NULL, NULL, '1', '1', 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:19:53', '2022-10-05 05:34:51'),
(165, 40, NULL, 175, '2', '15', NULL, NULL, NULL, '1', '2', 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:19:53', '2022-10-05 05:35:03'),
(166, 40, NULL, 172, '2', '15', NULL, NULL, NULL, '1', '3', 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:20:11', '2022-10-05 05:35:18'),
(167, 40, NULL, 186, '3', '10', NULL, NULL, NULL, '1', '4', NULL, '2022-10-05 05:29:37', '2022-10-05 05:28:53', '2022-10-05 05:29:37'),
(168, 40, NULL, 184, '2', '15', NULL, NULL, NULL, '1', '4', 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:29:48', '2022-10-05 05:35:37'),
(169, 40, NULL, 186, '3', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-10-05 05:31:18', '2022-10-05 05:31:43'),
(170, 40, NULL, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-05 05:31:28', '2022-10-05 05:31:18', '2022-10-05 05:31:28'),
(171, 40, NULL, 159, '4', '3', NULL, NULL, NULL, '1', '6', '(82-87% af 1 RM)! Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre to øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:32:33', '2022-11-09 16:39:30'),
(172, 40, NULL, 204, '4', '6', NULL, NULL, NULL, '1', '7', 'Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:33:04', '2022-10-05 05:36:16'),
(173, 40, NULL, 190, '4', '4', NULL, NULL, NULL, '1', '8', 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:36:51', '2022-10-05 05:37:49'),
(174, 40, NULL, 197, '3', '4', NULL, NULL, NULL, '1', '9', 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:36:51', '2022-11-09 04:58:45'),
(175, 40, NULL, 185, '4', '6', NULL, NULL, NULL, '1', '10', 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:39:17', '2022-10-05 05:39:54'),
(176, 40, NULL, 191, '4', '6', NULL, NULL, NULL, '1', '11', 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-05 05:39:17', '2022-10-05 05:40:33'),
(177, 40, NULL, 194, '3', NULL, '00:30', '00:30', NULL, '1', '12', NULL, NULL, '2022-10-05 05:41:08', '2022-11-09 04:59:14'),
(178, 41, NULL, 198, '1', '15', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-10-06 08:11:28', '2022-11-09 16:41:07'),
(179, 41, NULL, 205, '1', '15', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-10-06 08:11:40', '2022-11-09 16:41:39'),
(180, 41, NULL, 196, '1', '15', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-10-06 08:11:57', '2022-11-09 16:41:45'),
(181, 41, NULL, 206, '1', '15', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-10-06 08:12:07', '2022-11-09 16:41:58'),
(182, 41, NULL, 201, '2', '10', NULL, NULL, NULL, '1', '5', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal skips for begge fødder- Husk at tænk høj frekvens.', NULL, '2022-10-06 08:14:08', '2022-11-09 16:42:08'),
(183, 41, NULL, 200, '2', '8', NULL, NULL, NULL, '1', '6', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal bounds for begge fødder. Husk det er vigtigt med svævefase i denne øvelse, hvilket betyder et eksplosivt afsæt fra jorden.', NULL, '2022-10-06 08:15:10', '2022-11-09 16:42:19'),
(184, 41, NULL, 195, '1', '10', NULL, NULL, NULL, '1', '7', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til ankle højde og med høj frekvens.', NULL, '2022-10-06 08:17:13', '2022-11-09 16:42:30'),
(185, 41, NULL, 202, '1', '10', NULL, NULL, NULL, '1', '8', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til midten af skindebenet og med høj frekvens.', NULL, '2022-10-06 08:17:13', '2022-11-09 16:43:16'),
(186, 41, NULL, 199, '1', '10', NULL, NULL, NULL, '1', '9', 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til knæhøjde og med høj frekvens.', NULL, '2022-10-06 08:17:36', '2022-11-09 16:43:05'),
(187, 41, NULL, 208, '7', '1', NULL, '00:30', NULL, '1', '10', 'Løft med 90-97% af 1RM og med korte pauser mellem gentagelserne.', NULL, '2022-10-06 08:42:47', '2022-11-09 16:42:44'),
(188, 41, NULL, 209, '3', '4', NULL, '00:30', NULL, '1', '11', 'Kun brug stangen på denne øvelse og tænk fuld kraftudvikling. Hold kun korte pauser mellem hvert set.', NULL, '2022-10-06 08:42:58', '2022-11-09 16:44:35'),
(189, 41, NULL, 210, '4', '6', NULL, NULL, NULL, '1', '12', 'Gennemfør øvelse 12, og 13 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-10-06 08:43:33', '2022-11-09 16:45:09'),
(190, 41, NULL, 211, '4', '6', NULL, NULL, NULL, '1', '13', 'Gennemfør øvelse 12, og 13 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-10-06 08:43:33', '2022-11-10 04:58:08'),
(191, 41, NULL, 212, '3', '8', NULL, NULL, NULL, '1', '14', 'Gennemfør øvelse 14, og 15 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-10-06 08:43:56', '2022-11-09 16:45:56'),
(192, 41, NULL, 213, '3', '8', NULL, NULL, NULL, '1', '15', 'Gennemfør øvelse 14, og 15 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-10-06 08:50:09', '2022-11-09 16:46:13'),
(193, 42, NULL, 174, '1', '15', NULL, NULL, NULL, '1', '1', NULL, '2022-10-13 09:56:28', '2022-10-07 05:45:27', '2022-10-13 09:56:28'),
(194, 42, NULL, 205, '1', '15', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-10-07 05:45:38', '2022-10-07 07:37:58'),
(195, 42, NULL, 196, '1', '15', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-10-07 05:45:51', '2022-10-07 08:20:28'),
(196, 42, NULL, 206, '1', '15', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-10-07 05:46:10', '2022-10-07 08:20:45'),
(197, 42, NULL, 167, '1', '15', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-10-07 05:46:24', '2022-10-07 08:22:13'),
(198, 42, NULL, 214, '1', '15', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-10-07 06:06:41', '2022-10-07 08:22:32'),
(199, 42, NULL, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 06:08:23', '2022-10-07 06:07:17', '2022-10-07 06:08:23'),
(200, 42, NULL, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 06:08:11', '2022-10-07 06:07:17', '2022-10-07 06:08:11'),
(201, 42, NULL, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 06:08:04', '2022-10-07 06:07:28', '2022-10-07 06:08:04'),
(202, 42, NULL, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 06:07:58', '2022-10-07 06:07:44', '2022-10-07 06:07:58'),
(203, 42, NULL, 165, '1', '15', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-10-07 06:08:34', '2022-10-07 08:22:45'),
(204, 42, NULL, 195, '1', '1', NULL, NULL, NULL, '1', '8', 'Udfør så mange gentagelser som muligt på 10 sekunder!', NULL, '2022-10-07 06:08:50', '2022-10-07 08:24:29'),
(205, 42, NULL, 202, '1', '1', NULL, NULL, NULL, '1', '9', 'Udfør så mange gentagelser som muligt på 10 sekunder!', NULL, '2022-10-07 06:08:50', '2022-10-07 08:24:44'),
(206, 42, NULL, 199, '1', '1', NULL, NULL, NULL, '1', '10', 'Udfør så mange gentagelser som muligt på 10 sekunder!', NULL, '2022-10-07 06:09:02', '2022-10-07 08:28:02'),
(207, 42, NULL, 201, '2', '10', NULL, NULL, NULL, '1', '11', NULL, NULL, '2022-10-07 06:09:14', '2022-10-07 08:25:35'),
(208, 42, NULL, 200, '2', '6', NULL, NULL, NULL, '1', '12', NULL, NULL, '2022-10-07 06:09:24', '2022-10-07 08:25:55'),
(209, 42, NULL, 216, '1', '5', NULL, NULL, NULL, '1', '13', 'Non countermovement jump', NULL, '2022-10-07 06:27:43', '2022-10-07 08:47:52'),
(210, 42, NULL, 217, '1', '5', NULL, NULL, NULL, '1', '14', 'Countermovement jump', NULL, '2022-10-07 06:27:43', '2022-10-07 08:47:32'),
(211, 42, NULL, 218, '1', '5', NULL, NULL, NULL, '1', '15', 'Double contact jump', NULL, '2022-10-07 06:27:43', '2022-10-07 08:47:10'),
(212, 42, NULL, 219, '1', '5', NULL, NULL, NULL, '1', '16', 'Double contact jump on toes', NULL, '2022-10-07 06:27:43', '2022-10-07 08:46:43'),
(213, 42, NULL, 220, '1', '5', NULL, NULL, NULL, '1', '17', 'Continuous jump on toes', NULL, '2022-10-07 06:27:43', '2022-10-07 08:45:56'),
(214, 42, NULL, 221, '3', '1', NULL, NULL, NULL, '1', '18', '1 reps = both legs.', NULL, '2022-10-07 06:27:43', '2022-10-07 08:42:47'),
(215, 42, NULL, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 07:35:46', '2022-10-07 07:35:26', '2022-10-07 07:35:46'),
(216, 42, NULL, 190, '4', '4', NULL, NULL, NULL, '1', '19', 'Do a reverse lunges, stepping backwards and quickly reverse with a violent knee drive for maximum drive. ALSO, raise your heel on your front foot slightly to strengthening your ankle complex.', NULL, '2022-10-07 07:36:03', '2022-10-07 08:41:32'),
(217, 42, NULL, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:30:21', '2022-10-07 07:36:30', '2022-10-07 08:30:21'),
(218, 42, NULL, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:30:36', '2022-10-07 07:36:55', '2022-10-07 08:30:36'),
(219, 42, NULL, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-07 08:30:47', '2022-10-07 07:37:22', '2022-10-07 08:30:47'),
(220, 42, NULL, 187, '4', '4', NULL, NULL, NULL, '1', '20', 'Jump as quickly and high as possible.', NULL, '2022-10-07 08:31:08', '2022-10-07 08:40:35'),
(221, 42, NULL, 204, '4', '4', NULL, NULL, NULL, '1', '21', 'Place a thick band on a rack or pull up bar. Grab the band and pull it towards your chest and keep it there. From a medium stance, quickly drop down and then jump as high as possible.', NULL, '2022-10-07 08:31:34', '2022-10-07 08:39:14'),
(222, 42, NULL, 203, '3', '4', NULL, NULL, NULL, '1', '22', 'Place your self as you would for a nordic hamstring. This could be under a bench, rack or in a GHR. Lower your self down and pull your self back up, while trying to keep your hips straight. You might need to assist with your hands a bit or you can use a band.', NULL, '2022-10-07 08:31:47', '2022-10-07 08:38:09'),
(223, 42, NULL, 215, '3', NULL, NULL, NULL, NULL, '1', '23', 'Lay on the floor with three hards bands placed on the rack in knee height. Lay supine on the floor with your feet in between the bands. This is a hamstring exercise so there need to be more bands under your feet than over. So place 4 bands under and 2 bands on top. Then kick as fast as possible down to the bands with your legs straight.', NULL, '2022-10-07 08:31:56', '2022-10-07 08:38:26'),
(224, 43, NULL, 198, '1', '15', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-10-13 09:58:31', '2022-11-09 15:55:21'),
(225, 43, NULL, 205, '1', '15', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-10-13 09:58:47', '2022-11-09 15:55:32'),
(226, 43, NULL, 196, '1', '15', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-10-13 09:59:19', '2022-11-09 15:56:09'),
(227, 43, NULL, 206, '1', '15', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-10-13 09:59:34', '2022-11-09 15:56:20'),
(228, 43, NULL, 167, '1', '15', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-10-13 10:00:38', '2022-11-09 15:56:32'),
(229, 43, NULL, 214, '1', '15', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-10-13 10:05:14', '2022-11-09 15:56:45'),
(230, 43, NULL, 165, '1', '15', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-10-13 10:05:26', '2022-11-09 15:57:01'),
(231, 43, NULL, 195, '1', NULL, '00:10', NULL, NULL, '1', '8', 'Perform as many reps as possible in 10 seconds!', NULL, '2022-10-13 10:07:22', '2022-11-09 15:57:13'),
(232, 43, NULL, 202, '1', NULL, '00:10', NULL, NULL, '1', '9', 'Perform as many reps as possible in 10 seconds!', NULL, '2022-10-13 10:07:22', '2022-11-09 15:57:23'),
(233, 43, NULL, 199, '1', NULL, '00:10', NULL, NULL, '1', '10', 'Perform as many reps as possible in 10 seconds!', NULL, '2022-10-13 10:07:30', '2022-11-09 15:57:39'),
(234, 43, NULL, 201, '2', '10', NULL, NULL, NULL, '1', '11', NULL, NULL, '2022-10-13 10:08:08', '2022-11-09 15:58:09'),
(235, 43, NULL, 200, '2', '6', NULL, NULL, NULL, '1', '12', NULL, NULL, '2022-10-13 10:08:17', '2022-11-09 15:58:33'),
(236, 43, NULL, 216, '1', '5', NULL, NULL, NULL, '1', '13', 'Non-countermovement jump', NULL, '2022-10-13 10:18:28', '2022-11-09 15:58:58'),
(237, 43, NULL, 217, '1', '5', NULL, NULL, NULL, '1', '14', 'Countermovement jump', NULL, '2022-10-13 10:18:41', '2022-11-09 15:59:32'),
(238, 43, NULL, 218, '1', '5', NULL, NULL, NULL, '1', '15', 'Double contact jump', NULL, '2022-10-13 10:19:03', '2022-11-09 15:59:53'),
(239, 43, NULL, 219, '1', '5', NULL, NULL, NULL, '1', '16', 'Double contact jump on toes', NULL, '2022-10-13 10:19:03', '2022-11-09 16:00:11'),
(240, 43, NULL, 220, '1', '5', NULL, NULL, NULL, '1', '17', 'Continuous jump on toes', NULL, '2022-10-13 10:19:03', '2022-11-09 16:01:17'),
(241, 43, NULL, 221, '3', '1', NULL, NULL, NULL, '1', '18', '1 reps = both legs.', NULL, '2022-10-13 10:19:31', '2022-11-09 16:00:57'),
(242, 43, NULL, 190, '4', '4', NULL, NULL, NULL, '1', '19', 'Gennemfør øvelse 19, 20 og 21 som et gigantset, hvilket betyder at du gennemføre 3 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser. Do a reverse lunges, stepping backwards and quickly reverse with a violent knee drive for maximum drive. ALSO, raise your heel on your front foot slightly to strengthening your ankle complex.', NULL, '2022-10-13 10:28:16', '2022-11-10 05:01:26'),
(243, 43, NULL, 187, '4', '4', NULL, NULL, NULL, '1', '20', 'Gennemfør øvelse 19, 20 og 21 som et gigantset, hvilket betyder at du gennemføre 3 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser. Jump as quickly and high as possible.', NULL, '2022-10-13 10:28:26', '2022-11-10 05:01:54'),
(244, 43, NULL, 204, '4', '4', NULL, NULL, NULL, '1', '21', 'Gennemfør øvelse 19, 20 og 21 som et gigantset, hvilket betyder at du gennemføre 3 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.  Place a thick band on a rack or pull up bar. Grab the band and pull it towards your chest and keep it there. From a medium stance, quickly drop down and then jump as high as possible.', NULL, '2022-10-13 10:29:02', '2022-11-10 05:02:18'),
(245, 43, NULL, 203, '3', '4', NULL, NULL, NULL, '1', '22', 'Place your self as you would for a nordic hamstring. This could be under a bench, rack or in a GHR. Lower your self down and pull your self back up, while trying to keep your hips straight. You might need to assist with your hands a bit or you can use a band.', NULL, '2022-10-13 10:29:13', '2022-11-09 16:02:03'),
(246, 43, NULL, 215, '3', NULL, '00:20', NULL, NULL, '1', '23', 'Lay on the floor with three hards bands placed on the rack in knee height. Lay supine on the floor with your feet in between the bands. This is a hamstring exercise so there need to be more bands under your feet than over. So place 4 bands under and 2 bands on top. Then kick as fast as possible down to the bands with your legs straight.', NULL, '2022-10-13 10:29:26', '2022-11-09 16:02:38'),
(247, 34, NULL, 71, NULL, NULL, NULL, NULL, NULL, '1', '10', NULL, '2022-10-19 17:32:40', '2022-10-19 17:31:58', '2022-10-19 17:32:40'),
(248, 34, NULL, 72, NULL, NULL, NULL, NULL, NULL, '1', '10', NULL, '2022-10-22 04:40:53', '2022-10-19 17:31:58', '2022-10-22 04:40:53'),
(249, 34, NULL, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-22 04:41:01', '2022-10-19 17:31:58', '2022-10-22 04:41:01'),
(250, 44, NULL, 198, '1', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-10-25 04:42:34', '2022-10-25 04:50:00'),
(251, 44, NULL, 205, '1', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-10-25 04:42:48', '2022-10-25 04:50:11'),
(252, 44, NULL, 196, '1', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-10-25 04:42:57', '2022-10-25 04:50:21'),
(253, 44, NULL, 206, '1', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-10-25 04:43:09', '2022-10-25 04:50:31'),
(254, 44, NULL, 222, '1', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-10-25 04:49:20', '2022-10-25 04:50:41'),
(255, 34, NULL, 71, NULL, NULL, NULL, NULL, NULL, '1', '10', NULL, '2022-10-25 04:51:34', '2022-10-25 04:51:14', '2022-10-25 04:51:34'),
(256, 34, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 04:51:40', '2022-10-25 04:51:14', '2022-10-25 04:51:40'),
(257, 45, NULL, 174, '2', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-10-25 04:53:40', '2022-11-09 16:15:21'),
(258, 45, NULL, 172, '2', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-10-25 04:53:58', '2022-11-09 16:15:35'),
(259, 45, NULL, 173, '2', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-10-25 04:54:13', '2022-11-09 16:15:45'),
(260, 45, NULL, 207, '2', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-10-25 04:56:24', '2022-11-09 16:15:56'),
(261, 45, NULL, 184, '1', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-10-25 04:56:59', '2022-10-25 04:57:47'),
(262, 46, NULL, 174, '2', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-10-25 05:07:30', '2022-10-25 05:13:50'),
(263, 46, NULL, 224, '2', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-10-25 05:10:32', '2022-10-25 05:14:02'),
(264, 46, NULL, 184, '2', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-10-25 05:10:48', '2022-10-25 05:14:11'),
(265, 46, NULL, 216, '1', '5', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-10-25 05:12:10', '2022-10-25 05:14:46'),
(266, 46, NULL, 217, '1', '5', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-10-25 05:12:48', '2022-10-25 05:14:31'),
(267, 46, NULL, 218, '1', '5', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-10-25 05:13:05', '2022-10-25 05:14:57'),
(268, 46, NULL, 219, '1', '5', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-10-25 05:13:05', '2022-10-25 05:15:08'),
(269, 46, NULL, 220, '1', '5', NULL, NULL, NULL, '1', '8', NULL, NULL, '2022-10-25 05:13:25', '2022-10-25 05:15:21'),
(270, 47, NULL, 216, '1', '5', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-10-26 05:07:30', '2022-11-09 16:22:08'),
(271, 47, NULL, 217, '1', '5', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-10-26 05:07:30', '2022-11-09 16:22:25'),
(272, 47, NULL, 218, '1', '5', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-10-26 05:07:30', '2022-11-09 16:22:40'),
(273, 47, NULL, 219, '1', '5', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-10-26 05:07:30', '2022-11-09 16:22:53'),
(274, 47, NULL, 220, '1', '5', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-10-26 05:07:30', '2022-11-09 16:23:40'),
(275, 47, NULL, 226, '2', '6', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-10-26 05:16:29', '2022-11-09 16:24:04'),
(276, 47, NULL, 225, '3', '1', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-10-26 05:16:39', '2022-11-09 16:24:39'),
(277, 47, NULL, 186, '3', '15', NULL, NULL, NULL, '1', '8', 'Gennemfør øvelse 8, 9, 10 og 11 som et gigantset, hvilket betyder at du gennemføre 4 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-26 05:16:49', '2022-11-09 16:30:31'),
(278, 47, NULL, 159, '4', '3', NULL, NULL, NULL, '1', '9', '82-87% af 1 RM! Gennemfør øvelse 8, 9, 10 og 11 som et gigantset, hvilket betyder at du gennemføre 4 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-26 05:17:02', '2022-11-09 16:31:59'),
(279, 47, NULL, 187, '4', '4', NULL, NULL, NULL, '1', '10', 'Gennemfør øvelse 8, 9, 10 og 11 som et gigantset, hvilket betyder at du gennemføre 4 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-26 05:17:13', '2022-11-09 16:31:07'),
(280, 47, NULL, 227, '4', '4', NULL, NULL, NULL, '1', '11', 'Gennemfør øvelse 8, 9, 10 og 11 som et gigantset, hvilket betyder at du gennemføre 4 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-26 05:33:12', '2022-11-09 16:31:25'),
(281, 47, NULL, 204, '4', '4', NULL, NULL, NULL, '1', '12', 'Gennemfør øvelse 11, 12, 13 og 14 som et gigantset, hvilket betyder at du gennemføre 4 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-26 05:33:31', '2022-11-09 16:28:09'),
(282, 47, NULL, 228, '3', '3', NULL, NULL, NULL, '1', '13', '82-87 & af 1 RM! Gennemfør øvelse 13 og 14 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-10-26 05:36:11', '2022-11-09 16:34:26'),
(283, 47, NULL, 211, '3', '3', NULL, NULL, NULL, '1', '14', 'Gennemfør øvelse 13 og 14 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-10-26 05:39:06', '2022-11-09 16:34:07'),
(284, 47, NULL, 229, '3', '4', NULL, NULL, NULL, '1', '15', 'Gennemfør øvelse 15 og 16 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-10-26 05:47:47', '2022-11-09 16:33:18'),
(285, 47, NULL, 203, '3', '4', NULL, NULL, NULL, '1', '16', 'Gennemfør øvelse 15 og 16 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-10-26 05:47:56', '2022-11-09 16:33:51'),
(286, 47, NULL, 230, '3', '10', NULL, NULL, NULL, '1', '17', NULL, NULL, '2022-10-26 05:48:05', '2022-11-09 16:34:44'),
(287, 47, NULL, 231, '3', '10', NULL, NULL, NULL, '1', '18', NULL, NULL, '2022-10-26 05:48:05', '2022-11-09 16:35:00'),
(288, 48, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 18:34:58', '2022-10-30 18:34:51', '2022-10-30 18:34:58'),
(289, 48, NULL, 156, '6', '2', NULL, NULL, NULL, '1', NULL, 'Week 1: Day 1 80% of your 1RM.', '2022-10-30 18:40:39', '2022-10-30 18:35:47', '2022-10-30 18:40:39'),
(290, 48, NULL, 156, '6', '3', NULL, NULL, NULL, '1', NULL, 'Week 1: Day 2 80% of your 1RM.', '2022-10-30 18:40:33', '2022-10-30 18:38:07', '2022-10-30 18:40:33'),
(291, 48, NULL, 156, '6', '2', NULL, NULL, NULL, '1', NULL, 'Week 1: Day 3 80% of your 1RM.', '2022-10-30 18:40:28', '2022-10-30 18:38:17', '2022-10-30 18:40:28'),
(292, 48, NULL, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 18:40:22', '2022-10-30 18:39:48', '2022-10-30 18:40:22'),
(293, 48, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 18:40:15', '2022-10-30 18:40:00', '2022-10-30 18:40:15');
INSERT INTO `setup_fixed_program_values` (`id`, `setup_fixed_program_id`, `user_id`, `program_with_video_id`, `set`, `rep`, `duration`, `break`, `distance`, `exercise_no`, `sort`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(294, 48, NULL, 159, '6', '2', NULL, NULL, NULL, '1', '1', 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-10-30 18:40:47', '2022-11-13 11:38:14'),
(295, 48, NULL, 159, '6', '3', NULL, NULL, NULL, '1', '2', 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-10-30 18:40:55', '2022-11-13 11:38:23'),
(296, 48, NULL, 159, '6', '2', NULL, NULL, NULL, '1', '3', 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-10-30 18:41:03', '2022-11-13 11:38:31'),
(297, 48, NULL, 159, '6', '4', NULL, NULL, NULL, '1', '4', 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-10-30 18:41:25', '2022-11-13 11:38:40'),
(298, 48, NULL, 159, '6', '2', NULL, NULL, NULL, '1', '5', 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-10-30 18:41:35', '2022-11-13 11:38:49'),
(299, 48, NULL, 159, '6', '5', NULL, NULL, NULL, '1', '6', 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-10-30 18:41:43', '2022-11-13 11:38:57'),
(300, 48, NULL, 159, '6', '2', NULL, NULL, NULL, '1', '7', 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-10-30 18:41:56', '2022-11-13 11:39:08'),
(301, 48, NULL, 159, '6', '6', NULL, NULL, NULL, '1', '8', 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-10-30 18:42:06', '2022-11-13 11:39:18'),
(302, 48, NULL, 159, '6', '2', NULL, NULL, NULL, '1', '9', 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-10-30 18:42:17', '2022-11-13 11:39:25'),
(303, 48, NULL, 159, '5', '5', NULL, NULL, NULL, '1', '10', 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-10-30 18:42:32', '2022-11-13 11:39:34'),
(304, 48, NULL, 159, '6', '2', NULL, NULL, NULL, '1', '11', 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-10-30 18:42:48', '2022-11-13 11:39:47'),
(305, 48, NULL, 159, '4', '4', NULL, NULL, NULL, '1', '12', 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-10-30 18:43:00', '2022-11-13 11:39:58'),
(306, 48, NULL, 159, '6', '2', NULL, NULL, NULL, '1', '13', 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-10-30 18:43:10', '2022-11-13 11:40:09'),
(307, 48, NULL, 159, '3', '3', NULL, NULL, NULL, '1', '14', 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-10-30 18:43:21', '2022-11-13 11:40:21'),
(308, 48, NULL, 159, '6', '2', NULL, NULL, NULL, '1', '15', 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-10-30 18:43:31', '2022-11-13 11:40:32'),
(309, 48, NULL, 159, '2', '2', NULL, NULL, NULL, '1', '16', 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-10-30 18:43:42', '2022-11-13 11:40:41'),
(310, 48, NULL, 159, '6', '2', NULL, NULL, NULL, '1', '17', 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-10-30 18:43:50', '2022-11-13 11:40:52'),
(311, 48, NULL, 159, '1', '1', NULL, NULL, NULL, '1', '18', 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-10-30 18:44:01', '2022-11-13 11:41:02'),
(312, 18, NULL, 71, NULL, NULL, NULL, NULL, NULL, '1', '9', NULL, NULL, '2022-11-03 06:34:05', '2022-11-03 06:34:21'),
(313, 18, NULL, 96, NULL, NULL, NULL, NULL, NULL, '1', '10', NULL, NULL, '2022-11-03 06:34:05', '2022-11-03 06:34:31'),
(314, 18, NULL, 101, NULL, NULL, NULL, NULL, NULL, '1', '11', NULL, NULL, '2022-11-03 06:34:05', '2022-11-03 06:34:42'),
(315, 18, NULL, 120, NULL, NULL, NULL, NULL, NULL, '1', '12', NULL, NULL, '2022-11-03 06:34:05', '2022-11-03 06:34:53'),
(316, 18, NULL, 127, NULL, NULL, NULL, NULL, NULL, '1', '13', NULL, NULL, '2022-11-03 06:34:05', '2022-11-03 06:55:47'),
(317, 50, NULL, 240, '2', '6', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-11-11 04:51:32', '2022-11-11 04:53:35'),
(318, 50, NULL, 241, '2', '6', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-11-11 04:51:32', '2022-11-11 04:53:46'),
(319, 50, NULL, 208, '7', '1', NULL, '00:30', NULL, '1', '3', '90% af 1 RM', NULL, '2022-11-11 04:51:49', '2022-11-11 04:54:30'),
(320, 50, NULL, 242, '4', '2', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-11-11 04:51:58', '2022-11-11 04:54:52'),
(321, 50, NULL, 243, '3', '3', NULL, NULL, NULL, '1', '5', 'Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-11 04:52:07', '2022-11-11 04:56:21'),
(322, 50, NULL, 244, '3', '3', NULL, NULL, NULL, '1', '6', 'Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-11 04:52:19', '2022-11-11 04:56:41'),
(323, 50, NULL, 245, '1', '3', NULL, '00:30', NULL, '1', '7', NULL, NULL, '2022-11-11 04:52:31', '2022-11-11 04:57:14'),
(324, 50, NULL, 246, '2', '5', NULL, NULL, NULL, '1', '8', 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-11 04:52:44', '2022-11-11 04:57:53'),
(325, 50, NULL, 247, '2', '5', NULL, NULL, NULL, '1', '9', NULL, NULL, '2022-11-11 04:52:57', '2022-11-11 04:58:20'),
(326, 50, NULL, 248, '2', '8', NULL, NULL, NULL, '1', '10', NULL, NULL, '2022-11-11 04:53:12', '2022-11-11 04:58:56'),
(327, 51, NULL, 250, '4', '4', NULL, NULL, NULL, '1', '1', 'Gennemfør øvelse 1,2,3 og 4 som et gigantset, hvilket betyder at du gennemføre 4 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-17 13:48:41', '2022-11-17 13:49:44'),
(328, 51, NULL, 187, '4', '4', NULL, NULL, NULL, '1', '2', 'Gennemfør øvelse 1,2,3 og 4 som et gigantset, hvilket betyder at du gennemføre 4 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-17 13:48:50', '2022-11-17 13:50:04'),
(329, 51, NULL, 242, '4', '4', NULL, NULL, NULL, '1', '3', 'Drop-jump from a box with a height of 30 cm! Gennemfør øvelse 1,2,3 og 4 som et gigantset, hvilket betyder at du gennemføre 4 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-17 13:49:01', '2022-11-17 13:51:23'),
(330, 51, NULL, 204, '4', '4', NULL, NULL, NULL, '1', '4', 'Gennemfør øvelse 1,2,3 og 4 som et gigantset, hvilket betyder at du gennemføre 4 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-17 13:49:10', '2022-11-17 13:51:43'),
(331, 51, NULL, 251, '3', '4', NULL, NULL, NULL, '1', '5', 'Gennemfør øvelse 5 og 6  som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-17 13:51:52', '2022-11-17 13:52:37'),
(332, 51, NULL, 211, '3', '4', NULL, NULL, NULL, '1', '6', 'Gennemfør øvelse 5 og 6  som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-17 13:52:00', '2022-11-17 13:52:52'),
(333, 51, NULL, 252, '3', '5', NULL, NULL, NULL, '1', '7', 'Gennemfør øvelse 7 og 8  som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-17 13:53:14', '2022-11-17 13:53:45'),
(334, 51, NULL, 253, '3', '5', NULL, NULL, NULL, '1', '8', 'Gennemfør øvelse 7 og 8  som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-17 13:53:14', '2022-11-17 13:54:48'),
(335, 51, NULL, 254, '3', NULL, '00:30', '00:30', NULL, '1', NULL, NULL, NULL, '2022-11-17 13:55:04', '2022-11-17 13:55:26'),
(336, 52, NULL, 266, NULL, NULL, '10:00', NULL, NULL, '1', NULL, 'Rolig og kontrollert oppvarming i 10 minutter.', NULL, '2022-11-18 08:56:43', '2022-11-18 08:58:03'),
(337, 53, NULL, 255, '2', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-11-18 09:01:56', '2022-11-18 09:02:54'),
(338, 53, NULL, 257, '2', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-11-18 09:01:56', '2022-11-18 09:03:08'),
(339, 53, NULL, 258, '2', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-11-18 09:01:56', '2022-11-18 09:03:23'),
(340, 53, NULL, 256, '2', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-11-18 09:02:17', '2022-11-18 09:03:34'),
(341, 53, NULL, 261, '2', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-11-18 09:02:17', '2022-11-18 09:03:46'),
(342, 53, NULL, 263, '2', '10', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-11-18 09:02:17', '2022-11-18 09:03:56'),
(343, 53, NULL, 264, '2', '10', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-11-18 09:02:17', '2022-11-18 09:04:18'),
(344, 53, NULL, 260, '2', '10', NULL, NULL, NULL, '1', '8', NULL, NULL, '2022-11-18 09:02:32', '2022-11-18 09:04:31'),
(345, 53, NULL, 262, '2', '10', NULL, NULL, NULL, '1', '9', NULL, NULL, '2022-11-18 09:02:32', '2022-11-18 09:04:41'),
(346, 54, NULL, 198, '1', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-11-20 11:31:22', '2022-11-20 11:32:15'),
(347, 54, NULL, 205, '1', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-11-20 11:31:35', '2022-11-20 11:32:28'),
(348, 54, NULL, 196, '1', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-11-20 11:31:44', '2022-11-20 11:32:38'),
(349, 54, NULL, 206, '1', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-11-20 11:31:54', '2022-11-20 11:32:48'),
(350, 54, NULL, 222, '1', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-11-20 11:32:03', '2022-11-20 11:32:59'),
(351, 55, NULL, 174, '2', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-11-21 07:18:25', '2022-11-21 07:19:21'),
(352, 55, NULL, 172, '2', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-11-21 07:18:37', '2022-11-21 07:19:31'),
(353, 55, NULL, 173, '2', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-11-21 07:18:47', '2022-11-21 07:19:41'),
(354, 55, NULL, 207, '2', '10', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-11-21 07:18:56', '2022-11-21 07:19:52'),
(355, 55, NULL, 184, '1', '10', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-11-21 07:19:09', '2022-11-21 07:20:14'),
(356, 56, NULL, 174, '2', '10', NULL, NULL, NULL, '1', '1', NULL, NULL, '2022-11-22 13:10:44', '2022-11-22 13:11:35'),
(357, 56, NULL, 224, '2', '10', NULL, NULL, NULL, '1', '2', NULL, NULL, '2022-11-22 13:10:54', '2022-11-22 13:11:46'),
(358, 56, NULL, 184, '2', '10', NULL, NULL, NULL, '1', '3', NULL, NULL, '2022-11-22 13:11:05', '2022-11-22 13:12:03'),
(359, 56, NULL, 216, '1', '5', NULL, NULL, NULL, '1', '4', NULL, NULL, '2022-11-22 13:11:23', '2022-11-22 13:12:16'),
(360, 56, NULL, 217, '1', '5', NULL, NULL, NULL, '1', '5', NULL, NULL, '2022-11-22 13:11:23', '2022-11-22 13:12:25'),
(361, 56, NULL, 218, '1', '5', NULL, NULL, NULL, '1', '6', NULL, NULL, '2022-11-22 13:11:23', '2022-11-22 13:12:35'),
(362, 56, NULL, 219, '1', '5', NULL, NULL, NULL, '1', '7', NULL, NULL, '2022-11-22 13:11:23', '2022-11-22 13:12:48'),
(363, 56, NULL, 220, '15', '5', NULL, NULL, NULL, '1', '8', NULL, NULL, '2022-11-22 13:11:23', '2022-11-22 13:13:00'),
(364, 57, NULL, 97, NULL, NULL, '10:00', NULL, NULL, '1', '1', NULL, NULL, '2022-11-22 15:38:05', '2022-11-22 15:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `setup_programs`
--

CREATE TABLE `setup_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `register_program_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `program_with_video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `set` varchar(50) DEFAULT NULL,
  `rep` varchar(50) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `break` varchar(255) DEFAULT NULL,
  `distance` varchar(50) DEFAULT NULL,
  `exercise_no` varchar(50) DEFAULT NULL,
  `sort` bigint(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup_programs`
--

INSERT INTO `setup_programs` (`id`, `register_program_id`, `user_id`, `program_with_video_id`, `set`, `rep`, `duration`, `break`, `distance`, `exercise_no`, `sort`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, '2', '2', '1', '2', '15', '16', 14, 'Some Text 19', NULL, '2022-03-18 05:26:33', '2022-03-18 05:28:48'),
(2, 2, 2, 1, '1', '2', NULL, NULL, NULL, NULL, NULL, 'some text 1', NULL, '2022-03-18 05:29:48', '2022-03-18 05:29:48'),
(3, 2, 2, 2, '1', '2', NULL, NULL, NULL, NULL, NULL, 'some text 2', NULL, '2022-03-18 05:29:48', '2022-03-18 05:29:48'),
(4, 1, 4, 1, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-18 07:05:44', '2022-03-18 07:05:44'),
(5, 1, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-29 06:54:00', '2022-03-18 07:05:44', '2022-04-29 06:54:00'),
(6, 3, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 07:42:57', '2022-03-21 07:42:57'),
(7, 3, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 07:42:57', '2022-03-21 07:42:57'),
(8, 4, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 07:44:19', '2022-03-21 07:44:19'),
(9, 4, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 07:44:19', '2022-03-21 07:44:19'),
(10, 5, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 17:48:50', '2022-05-20 17:48:50'),
(11, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 15:42:07', '2022-05-21 15:42:07'),
(12, 1, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 10:34:28', '2022-06-19 10:34:28'),
(13, 9, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 21:26:19', '2022-07-04 21:26:19'),
(14, 9, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 21:26:19', '2022-07-04 21:26:19'),
(15, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 19:30:15', '2022-07-05 19:30:15'),
(16, 10, 20, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 21:14:05', '2022-07-18 21:14:05'),
(17, 10, 20, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 21:17:12', '2022-07-18 21:17:12'),
(18, 11, 2, 71, '2', '10', NULL, NULL, NULL, NULL, 1, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen Tilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen Utgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden Utførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken', NULL, '2022-07-24 17:41:58', '2022-07-24 17:47:35'),
(19, 11, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 22:02:43', '2022-07-26 22:02:43'),
(20, 12, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-03 09:10:34', '2022-08-03 09:10:34'),
(21, 13, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 04:14:53', '2022-08-03 09:20:45', '2022-08-12 04:14:53'),
(22, 13, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 17:23:58', '2022-08-03 09:21:16', '2022-08-12 17:23:58'),
(23, 14, 2, 71, '1', '2', '5', '5', '44', NULL, 3, 'demo', '2022-08-14 08:20:25', '2022-08-05 12:41:16', '2022-08-14 08:20:25'),
(24, 15, 7, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 21:38:35', '2022-08-05 21:38:35'),
(25, 15, 7, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 21:38:35', '2022-08-05 21:38:35'),
(26, 15, 7, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 21:38:35', '2022-08-05 21:38:35'),
(27, 16, 7, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-06 04:13:22', '2022-08-06 04:13:22'),
(28, 16, 7, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-06 04:13:22', '2022-08-06 04:13:22'),
(29, 16, 7, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-06 04:13:22', '2022-08-06 04:13:22'),
(30, 17, 2, 71, '1', '2', '5', '5', '44', NULL, 3, 'demo', NULL, '2022-08-06 05:30:32', '2022-08-06 05:30:32'),
(31, 17, 2, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-06 05:30:32', '2022-08-06 05:30:32'),
(32, 17, 2, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 17:28:33', '2022-08-06 05:30:32', '2022-08-12 17:28:33'),
(33, 18, 2, 83, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(34, 18, 2, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(35, 18, 2, 85, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(36, 18, 2, 87, '2', '15', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(37, 18, 2, 90, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(38, 18, 2, 71, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(39, 18, 2, 72, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(40, 18, 2, 73, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(41, 18, 2, 76, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(42, 18, 2, 81, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-08-08 17:48:30', '2022-08-08 17:48:30'),
(43, 18, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 04:15:58', '2022-08-12 04:15:39', '2022-08-12 04:15:58'),
(44, 13, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 19:51:00', '2022-08-12 19:48:00', '2022-08-12 19:51:00'),
(45, 13, 2, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 20:07:07', '2022-08-12 20:06:53', '2022-08-12 20:07:07'),
(46, 13, 2, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12 20:06:59', '2022-08-12 20:06:53', '2022-08-12 20:06:59'),
(47, 13, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-14 19:43:32', '2022-08-12 20:07:48', '2022-08-14 19:43:32'),
(48, 13, 2, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-21 05:27:33', '2022-08-12 20:07:48', '2022-08-21 05:27:33'),
(49, 13, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-21 05:27:45', '2022-08-14 19:42:31', '2022-08-21 05:27:45'),
(50, 19, 2, 77, '2', '15', NULL, NULL, NULL, NULL, 7, NULL, '2022-08-20 03:33:57', '2022-08-16 04:24:52', '2022-08-20 03:33:57'),
(51, 19, 2, 78, '2', '10', NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(52, 19, 2, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(53, 19, 2, 93, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(54, 19, 2, 95, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(55, 19, 2, 82, '2', '20', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(56, 19, 2, 86, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(57, 19, 2, 88, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(58, 19, 2, 91, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(59, 19, 2, 92, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(60, 19, 2, 100, '2', '6', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-08-16 04:24:52', '2022-08-16 04:24:52'),
(61, 20, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen \r\nTilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. \r\nUtgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. \r\nUtførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', '2022-08-19 10:00:37', '2022-08-19 10:00:15', '2022-08-19 10:00:37'),
(62, 19, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen \r\nTilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. \r\nUtgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. \r\nUtførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', NULL, '2022-08-20 03:34:11', '2022-08-20 03:34:11'),
(63, 13, 2, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Stå på en fot. Løft hælen og press opp til tåstående.', '2022-08-21 05:26:17', '2022-08-21 05:25:28', '2022-08-21 05:26:17'),
(64, 13, 2, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt helt tilbake i setet og fiksèr overkroppen med grep om håndtakene. Press anklene mot puten, bøy maksimalt i knærne og vend rolig tilbake til startstillingen.', NULL, '2022-08-21 05:27:21', '2022-08-21 05:27:21'),
(65, 13, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen \r\nTilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. \r\nUtgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. \r\nUtførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', NULL, '2022-08-21 05:27:38', '2022-08-21 05:27:38'),
(66, 19, 2, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Føtter i skulderbreddes avstand. Rett rygg gjennom hele øvelsen. Utfør øvelsen i rolig tempo og kontrollert tempo.', '2022-08-21 05:29:39', '2022-08-21 05:28:46', '2022-08-21 05:29:39'),
(67, 19, 2, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt helt tilbake i setet og fiksèr overkroppen med grep om håndtakene. Press anklene mot puten, bøy maksimalt i knærne og vend rolig tilbake til startstillingen.', '2022-08-21 05:35:01', '2022-08-21 05:33:05', '2022-08-21 05:35:01'),
(68, 21, 29, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt helt tilbake i setet og fiksèr overkroppen med grep om håndtakene. Press anklene mot puten, bøy maksimalt i knærne og vend rolig tilbake til startstillingen.', NULL, '2022-08-27 09:56:29', '2022-08-27 09:56:29'),
(69, 22, 30, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Juster motstanden med hendelen på din høyre side. Trykk på \"on\", velg hvilken informasjon du vil se på skjermen og start roingen.', '2022-09-05 22:26:43', '2022-08-29 10:11:17', '2022-09-05 22:26:43'),
(70, 24, 30, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen \r\nTilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. \r\nUtgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. \r\nUtførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', NULL, '2022-08-29 10:13:38', '2022-08-29 10:13:38'),
(71, 24, 30, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt helt tilbake i setet og fiksèr overkroppen med grep om håndtakene. Press anklene mot puten, bøy maksimalt i knærne og vend rolig tilbake til startstillingen.', NULL, '2022-08-29 10:13:45', '2022-08-29 10:13:45'),
(72, 24, 30, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Stå med strake ben og med føttene i ca. hoftebreddes avstand. Press opp til tåstående. Senk tilbake.', NULL, '2022-08-29 10:13:55', '2022-08-29 10:13:55'),
(73, 24, 30, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt med god støtte i ryggen og ta et bredt grep. Spenn godt opp i mage- og korsryggregionen og press opp fra cirka skuldernivå til armene er strake. Senk langsomt tilbake og gjenta.', NULL, '2022-08-29 10:14:06', '2022-08-29 10:14:06'),
(74, 24, 30, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt med rett rygg, slipp armene og skuldrene godt frem. Trekk skulderbladene sammen, og før armene bakover langs siden av kroppen. Underarmene holdes til sist nærmest parallelle med gulvet.', NULL, '2022-08-29 10:14:06', '2022-08-29 10:14:06'),
(75, 24, 30, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dra vekta med deg ned ved å crunche magen slik at øvre del av rygg krummer seg og skuldrene føres ned i retning av hofta. Slipp kontrollert opp igjen.', NULL, '2022-08-29 10:14:24', '2022-08-29 10:14:24'),
(76, 24, 30, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ta et bredt grep, legg deg litt bakover og kikk skrått opp. Press brystkassen fram og trekk stangen ned til brystet. Før langsomt tilbake og gjenta. For å øke bevegelsesbanen og for å engasjere skulderbladmuskulaturen ytterligere kan bevegelsen gjerne startes med å trekke skulderbladene ned og bak og at en \"slipper\" skuldrene helt opp når en vender tilbake til utgangsposisjon igjen.', NULL, '2022-08-29 10:14:24', '2022-08-29 10:14:24'),
(77, 24, 30, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt med stangen hengende foran deg, bøy i albuene og løft stangen helt opp mot brystet før du senker den rolig tilbake.', NULL, '2022-08-29 10:16:14', '2022-08-29 10:16:14'),
(78, 24, 30, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt med lave skuldre og et godt grep om håndtakene. Albuene holdes på høyde med grepet. Press frem til armene er strake og før håndtakene noe langsommere tilbake til brystet.', NULL, '2022-08-29 10:16:14', '2022-08-29 10:16:14'),
(79, 25, 30, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Føtter i skulderbreddes avstand. Rett rygg gjennom hele øvelsen. Utfør bevegelsen i rolig tempo ned og hurtigere opp.', NULL, '2022-08-29 10:17:08', '2022-08-29 10:17:08'),
(80, 25, 30, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Føttene i skulderbreddes avstand. Rett rygg gjennom hele øvelsen. Utfør bevegelsen i rolig tempo ned og hurtigere opp.', NULL, '2022-08-29 10:17:27', '2022-08-29 10:17:27'),
(81, 25, 30, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Føtter i skulderbreddes avstand. Rett rygg gjennom hele øvelsen. Utfør øvelsen i rolig tempo og kontrollert tempo.', NULL, '2022-08-29 10:17:49', '2022-08-29 10:17:49'),
(82, 25, 30, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Løft kontrollert håndvektene rett opp. Unngå å løfte korsryggen fra benken, ha god kontroll.', NULL, '2022-08-29 10:18:03', '2022-08-29 10:18:03'),
(83, 25, 30, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hold ryggen rett gjennom hele øvelsen. Løft kontrollert håndvekten opp til siden. Unngå rotasjon i overkroppen.', NULL, '2022-08-29 10:18:22', '2022-08-29 10:18:22'),
(84, 25, 30, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Løft kontrollert håndvektene rett opp. Unngå å løfte korsryggen fra benken, ha god kontroll.', NULL, '2022-08-29 10:18:37', '2022-08-29 10:18:37'),
(85, 25, 30, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Heng med et smalt grep og trekk deg opp indtil nakken når grepsnivået. Senk deg sakte ned igjen. Se fremover og nedover gjennom hele øvelsen.', NULL, '2022-08-29 10:18:37', '2022-08-29 10:18:37'),
(86, 25, 30, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start liggende i et X, og spænd op i maven. Løft og stræk højre arm og venstre ben, og kom helt op, så du kan røre din fod. Hold modsatte arm og ben i ro. Sænk igen, og lav så øvelsen til modsatte side.', NULL, '2022-08-29 10:19:00', '2022-08-29 10:19:00'),
(87, 25, 30, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Stå opp med føttene fra hverandre i skulderbredde. Ta armene dine rett opp foran deg slik at de er på brystnivå, håndflatene vendende mot hverandre. Strekk armene ut til sidene, til armene er utvidet. Hold armene på brystnivå hele tiden.', NULL, '2022-08-29 10:19:34', '2022-08-29 10:19:34'),
(88, 26, 30, 83, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(89, 26, 30, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(90, 26, 30, 85, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(91, 26, 30, 87, '2', '15', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(92, 26, 30, 90, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(93, 26, 30, 71, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(94, 26, 30, 72, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(95, 26, 30, 73, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(96, 26, 30, 76, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(97, 26, 30, 81, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-08-29 10:22:41', '2022-08-29 10:22:41'),
(98, 27, 30, 96, '4', '8', NULL, NULL, NULL, NULL, NULL, 'Trykk start. For å endre hastigheten trykk pluss/minus og for å endre stigningen trykk pil opp/pil ned. For å avslutte trykk stopp.', NULL, '2022-08-29 10:23:41', '2022-08-29 10:23:58'),
(99, 28, 32, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen \r\nTilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. \r\nUtgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. \r\nUtførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', '2022-09-08 03:38:21', '2022-08-29 23:49:02', '2022-09-08 03:38:21'),
(100, 29, 33, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Juster motstanden med hendelen på din høyre side. Trykk på \"on\", velg hvilken informasjon du vil se på skjermen og start roingen. Opvarmning 500 m, hvorefter du gennem 5 runder med 10 eksplosive og 10 rolige træk.', NULL, '2022-08-31 06:15:52', '2022-08-31 06:17:55'),
(101, 31, 33, 83, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(102, 31, 33, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(103, 31, 33, 85, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(104, 31, 33, 87, '2', '15', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(105, 31, 33, 90, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(106, 31, 33, 71, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(107, 31, 33, 72, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(108, 31, 33, 73, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(109, 31, 33, 76, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(110, 31, 33, 81, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-08-31 06:19:04', '2022-08-31 06:19:04'),
(111, 32, 33, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trykk start. For å endre hastigheten trykk pluss/minus og for å endre stigningen trykk pil opp/pil ned. For å avslutte trykk stopp.', NULL, '2022-08-31 07:08:09', '2022-08-31 07:08:09'),
(112, 33, 34, 83, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(113, 33, 34, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(114, 33, 34, 85, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(115, 33, 34, 87, '2', '15', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(116, 33, 34, 90, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(117, 33, 34, 71, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(118, 33, 34, 72, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(119, 33, 34, 73, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(120, 33, 34, 76, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(121, 33, 34, 81, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-08-31 09:05:37', '2022-08-31 09:05:37'),
(122, 34, 34, 77, '2', '15', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(123, 34, 34, 78, '2', '10', NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(124, 34, 34, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(125, 34, 34, 93, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(126, 34, 34, 95, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(127, 34, 34, 82, '2', '20', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(128, 34, 34, 86, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(129, 34, 34, 88, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(130, 34, 34, 91, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(131, 34, 34, 92, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(132, 34, 34, 100, '2', '6', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-08-31 09:05:55', '2022-08-31 09:05:55'),
(133, 35, 35, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-01 08:46:38', '2022-09-01 08:46:38'),
(134, 36, 35, 83, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(135, 36, 35, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(136, 36, 35, 85, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(137, 36, 35, 87, '2', '15', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(138, 36, 35, 90, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(139, 36, 35, 71, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(140, 36, 35, 72, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(141, 36, 35, 73, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(142, 36, 35, 76, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(143, 36, 35, 81, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-01 08:50:22', '2022-09-01 08:50:22'),
(144, 37, 35, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(145, 37, 35, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(146, 37, 35, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(147, 37, 35, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(148, 37, 35, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(149, 37, 35, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(150, 37, 35, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(151, 37, 35, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(152, 37, 35, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(153, 37, 35, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 08:56:18', '2022-09-01 08:56:18'),
(154, 38, 35, 77, '2', '15', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(155, 38, 35, 78, '2', '10', NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(156, 38, 35, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(157, 38, 35, 93, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(158, 38, 35, 95, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(159, 38, 35, 82, '2', '20', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(160, 38, 35, 86, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(161, 38, 35, 88, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(162, 38, 35, 91, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(163, 38, 35, 92, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(164, 38, 35, 100, '2', '6', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-01 08:57:10', '2022-09-01 08:57:10'),
(165, 39, 35, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tabatainterval 20 sekunders løb/10 sekunders pause*8 runder (1 til 4 set).', NULL, '2022-09-01 09:01:41', '2022-09-01 09:01:41'),
(166, 40, 29, 127, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 07:28:06', '2022-09-05 07:28:06'),
(167, 40, 29, 128, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 07:28:06', '2022-09-05 07:28:06'),
(168, 40, 29, 129, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 07:28:06', '2022-09-05 07:28:06'),
(169, 40, 29, 130, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 07:28:06', '2022-09-05 07:28:06'),
(170, 40, 29, 131, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 07:28:06', '2022-09-05 07:28:06'),
(171, 40, 29, 132, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 07:28:06', '2022-09-05 07:28:06'),
(172, 40, 29, 133, '1', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 07:28:06', '2022-09-05 07:28:06'),
(173, 40, 29, 134, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 07:28:06', '2022-09-05 07:28:06'),
(174, 22, 30, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Juster motstanden med hendelen på din høyre side. Trykk på \"on\", velg hvilken informasjon du vil se på skjermen og start roingen.', NULL, '2022-09-05 22:26:51', '2022-09-18 22:57:56'),
(175, 41, 29, 136, NULL, NULL, '10', NULL, NULL, NULL, NULL, 'Oppvarmning 10 minutter 70-75% av maxpuls', NULL, '2022-09-06 07:52:25', '2022-09-06 07:52:25'),
(176, 41, 29, 137, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'Gå 1 minut baglæns!', NULL, '2022-09-06 07:52:25', '2022-09-06 07:52:25'),
(177, 41, 29, 138, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'Gå 1 minut sidelens til begge sidder!', NULL, '2022-09-06 07:52:25', '2022-09-06 07:52:25'),
(178, 41, 29, 139, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 07:52:25', '2022-09-06 07:52:25'),
(179, 41, 29, 140, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 07:52:25', '2022-09-06 07:52:25'),
(180, 41, 29, 141, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 07:52:25', '2022-09-06 07:52:25'),
(181, 41, 29, 142, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 07:52:25', '2022-09-06 07:52:25'),
(182, 41, 29, 143, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 07:52:25', '2022-09-06 07:52:25'),
(183, 42, 36, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-07 07:23:36', '2022-09-07 07:23:36'),
(184, 43, 36, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:26:12'),
(185, 43, 36, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(186, 43, 36, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(187, 43, 36, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(188, 43, 36, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(189, 43, 36, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(190, 43, 36, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(191, 43, 36, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(192, 43, 36, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(193, 43, 36, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:25:02', '2022-09-07 07:25:02'),
(194, 44, 36, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tabatainterval 20 sekunders løb/10 sekunders pause*8 runder (1 til 4 set).', NULL, '2022-09-07 07:26:45', '2022-09-07 07:26:45'),
(195, 45, 37, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-07 07:43:38', '2022-09-07 07:43:38'),
(196, 46, 37, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:44:11', '2022-09-07 07:44:11'),
(197, 46, 37, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:44:11', '2022-09-07 07:44:11'),
(198, 46, 37, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:44:11', '2022-09-07 07:44:11'),
(199, 46, 37, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:44:11', '2022-09-07 07:44:11'),
(200, 46, 37, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:44:11', '2022-09-07 07:44:11'),
(201, 46, 37, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 07:44:11', '2022-09-07 07:44:11'),
(202, 47, 38, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-07 13:03:14', '2022-09-07 13:03:14'),
(203, 48, 38, 77, '2', '15', NULL, NULL, NULL, NULL, 7, NULL, '2022-09-07 13:05:58', '2022-09-07 13:04:04', '2022-09-07 13:05:58'),
(204, 48, 38, 78, '2', '10', NULL, NULL, NULL, NULL, 11, NULL, '2022-09-07 13:06:04', '2022-09-07 13:04:04', '2022-09-07 13:06:04'),
(205, 48, 38, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, '2022-09-07 13:06:08', '2022-09-07 13:04:04', '2022-09-07 13:06:08'),
(206, 48, 38, 93, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, '2022-09-07 13:06:13', '2022-09-07 13:04:04', '2022-09-07 13:06:13'),
(207, 48, 38, 95, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, '2022-09-07 13:06:19', '2022-09-07 13:04:04', '2022-09-07 13:06:19'),
(208, 48, 38, 82, '2', '20', NULL, NULL, NULL, NULL, 10, NULL, '2022-09-07 13:06:24', '2022-09-07 13:04:04', '2022-09-07 13:06:24'),
(209, 48, 38, 86, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, '2022-09-07 13:05:49', '2022-09-07 13:04:04', '2022-09-07 13:05:49'),
(210, 48, 38, 88, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, '2022-09-07 13:05:43', '2022-09-07 13:04:04', '2022-09-07 13:05:43'),
(211, 48, 38, 91, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, '2022-09-07 13:05:36', '2022-09-07 13:04:04', '2022-09-07 13:05:36'),
(212, 48, 38, 92, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, '2022-09-07 13:05:22', '2022-09-07 13:04:04', '2022-09-07 13:05:22'),
(213, 48, 38, 100, '2', '6', NULL, NULL, NULL, NULL, 5, NULL, '2022-09-07 13:05:29', '2022-09-07 13:04:04', '2022-09-07 13:05:29'),
(214, 49, 38, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tabatainterval 20 sekunders løb/10 sekunders pause*8 runder (1 til 4 set).', NULL, '2022-09-07 13:04:57', '2022-09-07 13:04:57'),
(215, 48, 38, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Føtter i skulderbreddes avstand. Rett rygg gjennom hele øvelsen. Utfør bevegelsen i rolig tempo ned og hurtigere opp.', NULL, '2022-09-07 13:06:46', '2022-09-07 13:06:46'),
(216, 48, 38, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Føttene i skulderbreddes avstand. Rett rygg gjennom hele øvelsen. Utfør bevegelsen i rolig tempo ned og hurtigere opp.', NULL, '2022-09-07 13:07:07', '2022-09-07 13:07:07'),
(217, 48, 38, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Løft kontrollert håndvektene rett opp. Unngå å løfte korsryggen fra benken, ha god kontroll.', NULL, '2022-09-07 13:07:37', '2022-09-07 13:07:37'),
(218, 48, 38, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt med rett rygg, slipp armene og skuldrene godt frem. Trekk skulderbladene sammen, og før armene bakover langs siden av kroppen. Underarmene holdes til sist nærmest parallelle med gulvet.', NULL, '2022-09-07 13:07:52', '2022-09-07 13:07:52'),
(219, 48, 38, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt med god støtte i ryggen og ta et bredt grep. Spenn godt opp i mage- og korsryggregionen og press opp fra cirka skuldernivå til armene er strake. Senk langsomt tilbake og gjenta.', NULL, '2022-09-07 13:08:14', '2022-09-07 13:08:14'),
(220, 48, 38, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ta et bredt grep, legg deg litt bakover og kikk skrått opp. Press brystkassen fram og trekk stangen ned til brystet. Før langsomt tilbake og gjenta. For å øke bevegelsesbanen og for å engasjere skulderbladmuskulaturen ytterligere kan bevegelsen gjerne startes med å trekke skulderbladene ned og bak og at en \"slipper\" skuldrene helt opp når en vender tilbake til utgangsposisjon igjen.', NULL, '2022-09-07 13:08:14', '2022-09-07 13:08:14'),
(221, 48, 38, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Heng med et smalt grep og trekk deg opp indtil nakken når grepsnivået. Senk deg sakte ned igjen. Se fremover og nedover gjennom hele øvelsen.', NULL, '2022-09-07 13:09:38', '2022-09-07 13:09:38'),
(222, 48, 38, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Stå sideveis til en kasse og støtt deg på hånden. Aktiver magemuskulaturen og løft hofte og bekken opp fra kassen til du har en strak kropp.', NULL, '2022-09-07 13:10:03', '2022-09-07 13:10:03'),
(223, 48, 38, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start liggende i et X, og spænd op i maven. Løft og stræk højre arm og venstre ben, og kom helt op, så du kan røre din fod. Hold modsatte arm og ben i ro. Sænk igen, og lav så øvelsen til modsatte side.', NULL, '2022-09-07 13:47:20', '2022-09-07 13:47:20'),
(224, 50, 29, 134, '1', '4', '6', '2', NULL, NULL, NULL, 'Langinterval hvor der gennemføres 4 løb af 6 minutter på 80-90 % af makspuls. Indstil løbebåndet med en hældning mellem 5-10% stigning.', NULL, '2022-09-08 07:29:52', '2022-09-08 07:31:29'),
(225, 51, 29, 134, '1', '4', '6', '120', NULL, NULL, NULL, 'Langinterval hvor der gennemføres 4 løb af 6 minutter på 80-90 % af makspuls (Du kan tjekke pulsen under din profil og pulskalkulator). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:33:32', '2022-09-08 07:33:32'),
(226, 52, 29, 134, '1', '4', '6', '4', NULL, '1', NULL, 'Langinterval hvor der gennemføres 4 løb af 6 minutter på 80-90 % af makspuls (Du kan tjekke pulsen under din profil og pulskalkulator). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-09-08 07:35:41', '2022-09-13 05:40:45'),
(227, 28, 32, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen \r\nTilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. \r\nUtgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. \r\nUtførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', NULL, '2022-09-08 18:27:18', '2022-09-08 18:27:18'),
(228, 28, 32, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sitt helt tilbake i setet og fiksèr overkroppen med grep om håndtakene. Press anklene mot puten, bøy maksimalt i knærne og vend rolig tilbake til startstillingen.', NULL, '2022-09-08 18:27:18', '2022-09-08 18:27:18'),
(229, 54, 39, 146, NULL, NULL, '10', NULL, NULL, NULL, NULL, 'Opvarmning 10 minutter rolig løb på løbebånd.', NULL, '2022-09-13 08:14:02', '2022-09-13 08:14:02'),
(230, 55, 39, 72, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:24:10', '2022-09-13 08:24:10'),
(231, 55, 39, 120, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:24:10', '2022-09-13 08:24:10'),
(232, 55, 39, 81, '2', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:24:10', '2022-09-13 08:24:10'),
(233, 55, 39, 85, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:24:10', '2022-09-13 08:24:10'),
(234, 55, 39, 76, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:24:10', '2022-09-13 08:24:10'),
(235, 55, 39, 80, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:24:10', '2022-09-13 08:24:10'),
(236, 55, 39, 90, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:24:10', '2022-09-13 08:24:10'),
(237, 55, 39, 82, '2', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:24:10', '2022-09-13 08:24:10'),
(238, 55, 39, 94, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 08:24:10', '2022-09-13 08:24:10'),
(239, 56, 39, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(240, 56, 39, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(241, 56, 39, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(242, 56, 39, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(243, 56, 39, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(244, 56, 39, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(245, 56, 39, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(246, 56, 39, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(247, 56, 39, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-13 08:27:32', '2022-09-13 08:27:32'),
(248, 57, 29, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen \r\nTilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. \r\nUtgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. \r\nUtførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', NULL, '2022-09-13 15:59:15', '2022-09-13 15:59:15'),
(249, 58, 40, 146, NULL, NULL, '10', NULL, NULL, NULL, 1, 'Opvarmning 10 minutter rolig løb på løbebånd.', NULL, '2022-09-14 08:51:47', '2022-09-14 08:51:47'),
(250, 59, 41, 146, NULL, NULL, '10', NULL, NULL, NULL, 1, 'Opvarmning 10 minutter rolig løb på løbebånd.', NULL, '2022-09-14 08:52:26', '2022-09-14 08:52:26'),
(251, 60, 40, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-14 08:55:43', '2022-09-14 08:55:43'),
(252, 60, 40, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-14 08:55:43', '2022-09-14 08:55:43'),
(253, 60, 40, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-14 08:55:43', '2022-09-14 08:55:43'),
(254, 60, 40, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-14 08:55:43', '2022-09-14 08:55:43'),
(255, 60, 40, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-14 08:55:43', '2022-09-14 08:55:43'),
(256, 60, 40, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-14 08:55:43', '2022-09-14 08:55:43'),
(257, 60, 40, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-14 08:55:43', '2022-09-14 08:55:43'),
(258, 60, 40, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-14 08:55:43', '2022-09-14 08:55:43'),
(259, 60, 40, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, '2022-09-14 09:49:13', '2022-09-14 08:55:43', '2022-09-14 09:49:13'),
(260, 61, 41, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-14 08:56:05', '2022-09-14 08:56:05'),
(261, 61, 41, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-14 08:56:05', '2022-09-14 08:56:05'),
(262, 61, 41, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-14 08:56:05', '2022-09-14 08:56:05'),
(263, 61, 41, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-14 08:56:05', '2022-09-14 08:56:05'),
(264, 61, 41, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-14 08:56:05', '2022-09-14 08:56:05'),
(265, 61, 41, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-14 08:56:05', '2022-09-14 08:56:05'),
(266, 61, 41, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-14 08:56:05', '2022-09-14 08:56:05'),
(267, 61, 41, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-14 08:56:05', '2022-09-14 08:56:05'),
(268, 61, 41, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, '2022-09-14 09:48:40', '2022-09-14 08:56:05', '2022-09-14 09:48:40'),
(269, 62, 42, 136, NULL, NULL, '10', NULL, NULL, NULL, NULL, 'Oppvarmning 10 minutter 70-75% av maxpuls', NULL, '2022-09-15 05:28:03', '2022-09-15 05:28:03'),
(270, 62, 42, 137, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'Gå 1 minut baglæns!', NULL, '2022-09-15 05:28:03', '2022-09-15 05:28:03'),
(271, 62, 42, 138, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'Gå 1 minut sidelens til begge sidder!', NULL, '2022-09-15 05:28:03', '2022-09-15 05:28:03'),
(272, 62, 42, 139, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 05:28:03', '2022-09-15 05:28:03'),
(273, 62, 42, 140, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 05:28:03', '2022-09-15 05:28:03'),
(274, 62, 42, 141, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 05:28:03', '2022-09-15 05:28:03'),
(275, 62, 42, 142, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 05:28:03', '2022-09-15 05:28:03'),
(276, 62, 42, 143, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 05:28:03', '2022-09-15 05:28:03'),
(277, 63, 43, 77, '2', '15', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(278, 63, 43, 78, '2', '10', NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(279, 63, 43, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(280, 63, 43, 93, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(281, 63, 43, 95, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(282, 63, 43, 82, '2', '20', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(283, 63, 43, 86, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(284, 63, 43, 88, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(285, 63, 43, 91, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(286, 63, 43, 92, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(287, 63, 43, 100, '2', '6', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-16 07:21:58', '2022-09-16 07:21:58'),
(288, 64, 43, 146, NULL, NULL, '10', NULL, NULL, NULL, 1, 'Opvarmning 10 minutter rolig løb på løbebånd.', NULL, '2022-09-16 07:22:44', '2022-09-16 07:22:44'),
(289, 65, 43, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-16 07:23:10', '2022-09-16 07:23:10'),
(290, 65, 43, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-16 07:23:10', '2022-09-16 07:23:10'),
(291, 65, 43, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-16 07:23:10', '2022-09-16 07:23:10'),
(292, 65, 43, 85, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-16 07:23:10', '2022-09-16 08:10:04'),
(293, 65, 43, 76, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-16 07:23:10', '2022-09-16 08:11:01'),
(294, 65, 43, 80, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-16 07:23:10', '2022-09-16 08:11:21'),
(295, 65, 43, 90, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-16 07:23:10', '2022-09-16 08:11:41'),
(296, 65, 43, 82, '2', '20', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-16 07:23:10', '2022-09-16 08:12:21'),
(297, 65, 43, 94, '2', '10', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-16 07:23:10', '2022-09-16 08:13:13'),
(298, 66, 43, 77, '2', '15', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-16 07:23:30', '2022-09-16 07:23:30'),
(299, 66, 43, 78, '2', '10', NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-09-16 07:23:30', '2022-09-16 07:23:30'),
(300, 66, 43, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-16 07:23:30', '2022-09-16 07:23:30'),
(301, 66, 43, 93, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-16 07:23:30', '2022-09-16 07:23:30'),
(302, 66, 43, 95, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-16 07:23:30', '2022-09-16 07:23:30'),
(303, 66, 43, 82, '2', '20', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-16 07:23:30', '2022-09-16 07:23:30'),
(304, 66, 43, 86, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-16 07:23:31', '2022-09-16 07:23:31'),
(305, 66, 43, 88, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-16 07:23:31', '2022-09-16 07:23:31'),
(306, 66, 43, 91, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-16 07:23:31', '2022-09-16 07:23:31'),
(307, 66, 43, 92, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-16 07:23:31', '2022-09-16 07:23:31'),
(308, 66, 43, 100, '2', '6', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-16 07:23:31', '2022-09-16 07:23:31'),
(309, 67, 43, 93, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-16 07:31:45', '2022-09-16 07:31:45'),
(310, 67, 43, 88, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-16 07:31:45', '2022-09-16 07:31:45'),
(311, 67, 43, 78, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-16 07:31:45', '2022-09-16 07:31:45'),
(312, 67, 43, 74, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-16 07:31:45', '2022-09-16 07:31:45'),
(313, 67, 43, 86, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-16 07:31:45', '2022-09-16 07:31:45'),
(314, 67, 43, 83, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-16 07:31:45', '2022-09-16 07:31:45'),
(315, 67, 43, 100, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-16 07:31:45', '2022-09-16 07:31:45'),
(316, 67, 43, 73, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-16 07:31:45', '2022-09-16 07:31:45'),
(317, 67, 43, 87, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-16 07:31:45', '2022-09-16 07:31:45'),
(318, 65, 43, 84, '2', '10', NULL, NULL, NULL, '4', NULL, 'Ligg med strake ben og la overkroppen henge ned mot gulvet. Stram opp i magen og i korsryggen, og løft overkroppen i en rolig bevegelse. Under bevegelsen er overkroppen strak. Senk rolig tilbake og gjenta.', NULL, '2022-09-16 07:32:38', '2022-09-16 08:16:56'),
(319, 68, 43, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(320, 68, 43, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(321, 68, 43, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(322, 68, 43, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(323, 68, 43, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(324, 68, 43, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(325, 68, 43, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(326, 68, 43, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(327, 68, 43, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04'),
(328, 68, 43, 84, '2', '10', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-16 08:21:04', '2022-09-16 08:21:04');
INSERT INTO `setup_programs` (`id`, `register_program_id`, `user_id`, `program_with_video_id`, `set`, `rep`, `duration`, `break`, `distance`, `exercise_no`, `sort`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(329, 69, 32, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen \r\nTilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. \r\nUtgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. \r\nUtførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', NULL, '2022-09-17 21:29:31', '2022-09-17 21:29:31'),
(330, 70, 44, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 05:27:42', '2022-09-19 05:27:34', '2022-09-19 05:27:42'),
(331, 70, 44, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 05:27:46', '2022-09-19 05:27:34', '2022-09-19 05:27:46'),
(332, 70, 44, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 05:27:52', '2022-09-19 05:27:34', '2022-09-19 05:27:52'),
(333, 70, 44, 104, '1', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-19 05:28:12', '2022-09-19 05:31:46'),
(334, 70, 44, 108, '1', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-19 05:28:12', '2022-09-19 05:32:39'),
(335, 70, 44, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 05:31:13', '2022-09-19 05:28:39', '2022-09-19 05:31:13'),
(336, 70, 44, 116, '1', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-19 05:28:39', '2022-09-19 05:33:51'),
(337, 70, 44, 118, '1', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-19 05:28:39', '2022-09-19 05:34:15'),
(338, 70, 44, 114, '1', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-19 05:31:31', '2022-09-19 05:33:05'),
(339, 71, 45, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 12:20:29', '2022-09-19 12:20:29'),
(340, 71, 45, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 12:20:29', '2022-09-19 12:20:29'),
(341, 71, 45, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 12:20:29', '2022-09-19 12:20:29'),
(342, 71, 45, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 12:20:29', '2022-09-19 12:20:29'),
(343, 71, 45, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 12:20:29', '2022-09-19 12:20:29'),
(344, 71, 45, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-19 12:20:29', '2022-09-19 12:20:29'),
(345, 72, 46, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-21 13:15:38', '2022-09-21 13:15:38'),
(346, 73, 46, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-21 13:16:40', '2022-09-21 13:16:40'),
(347, 74, 46, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(348, 74, 46, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(349, 74, 46, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(350, 74, 46, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(351, 74, 46, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(352, 74, 46, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(353, 74, 46, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(354, 74, 46, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(355, 74, 46, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, '2022-09-21 13:17:44', '2022-09-21 13:17:15', '2022-09-21 13:17:44'),
(356, 74, 46, 84, '2', '10', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-21 13:17:15', '2022-09-21 13:17:15'),
(357, 75, 47, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(358, 75, 47, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(359, 75, 47, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(360, 75, 47, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(361, 75, 47, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(362, 75, 47, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(363, 75, 47, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(364, 75, 47, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(365, 75, 47, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(366, 75, 47, 84, '2', '10', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-23 08:49:24', '2022-09-23 08:49:24'),
(367, 76, 47, 93, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(368, 76, 47, 88, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(369, 76, 47, 78, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(370, 76, 47, 74, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(371, 76, 47, 86, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(372, 76, 47, 83, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(373, 76, 47, 100, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(374, 76, 47, 73, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(375, 76, 47, 87, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-23 08:49:42', '2022-09-23 08:49:42'),
(376, 77, 48, 93, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-26 06:11:16', '2022-09-26 06:11:16'),
(377, 77, 48, 88, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-26 06:11:16', '2022-09-26 06:11:16'),
(378, 77, 48, 78, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-26 06:11:16', '2022-09-26 06:11:16'),
(379, 77, 48, 74, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-26 06:11:16', '2022-09-26 06:11:16'),
(380, 77, 48, 86, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-26 06:11:16', '2022-09-26 06:11:16'),
(381, 77, 48, 83, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-26 06:11:16', '2022-09-26 06:11:16'),
(382, 77, 48, 100, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-26 06:11:16', '2022-09-26 06:11:16'),
(383, 77, 48, 73, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-26 06:11:16', '2022-09-26 06:11:16'),
(384, 77, 48, 87, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-26 06:11:16', '2022-09-26 06:11:16'),
(385, 78, 48, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(386, 78, 48, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(387, 78, 48, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(388, 78, 48, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(389, 78, 48, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(390, 78, 48, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(391, 78, 48, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(392, 78, 48, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(393, 78, 48, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(394, 78, 48, 84, '2', '10', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-26 06:11:37', '2022-09-26 06:11:37'),
(395, 79, 49, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-26 07:04:02', '2022-09-26 07:04:02'),
(396, 80, 49, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(397, 80, 49, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(398, 80, 49, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(399, 80, 49, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(400, 80, 49, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(401, 80, 49, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(402, 80, 49, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(403, 80, 49, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(404, 80, 49, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(405, 80, 49, 84, '2', '10', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-26 07:04:33', '2022-09-26 07:04:33'),
(406, 81, 50, 146, NULL, NULL, '10', NULL, NULL, NULL, 1, 'Opvarmning 10 minutter rolig løb på løbebånd.', NULL, '2022-09-26 09:13:02', '2022-09-26 09:13:02'),
(407, 82, 50, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(408, 82, 50, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(409, 82, 50, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(410, 82, 50, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(411, 82, 50, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(412, 82, 50, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(413, 82, 50, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(414, 82, 50, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(415, 82, 50, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(416, 82, 50, 84, '2', '10', NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-09-26 09:14:05', '2022-09-26 09:14:05'),
(417, 83, 50, 93, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(418, 83, 50, 88, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(419, 83, 50, 78, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(420, 83, 50, 74, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(421, 83, 50, 86, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(422, 83, 50, 83, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(423, 83, 50, 100, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(424, 83, 50, 73, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(425, 83, 50, 87, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-26 09:14:46', '2022-09-26 09:14:46'),
(426, 84, 51, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-29 08:05:29', '2022-09-29 08:05:29'),
(427, 85, 51, 98, NULL, NULL, '10', NULL, NULL, NULL, 1, NULL, NULL, '2022-09-29 08:08:36', '2022-09-29 08:08:36'),
(428, 86, 51, 93, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-29 08:10:35', '2022-09-29 08:10:35'),
(429, 86, 51, 88, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-29 08:10:35', '2022-09-29 08:10:35'),
(430, 86, 51, 78, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2022-09-29 08:11:08', '2022-09-29 08:10:35', '2022-09-29 08:11:08'),
(431, 86, 51, 74, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-29 08:10:35', '2022-09-29 08:10:35'),
(432, 86, 51, 86, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-29 08:10:35', '2022-09-29 08:10:35'),
(433, 86, 51, 83, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-29 08:10:35', '2022-09-29 08:10:35'),
(434, 86, 51, 100, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-29 08:10:35', '2022-09-29 08:10:35'),
(435, 86, 51, 73, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-29 08:10:35', '2022-09-29 08:10:35'),
(436, 86, 51, 87, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-29 08:10:35', '2022-09-29 08:10:35'),
(437, 87, 52, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-09-29 08:13:42', '2022-09-29 08:13:42'),
(438, 88, 52, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-09-29 08:14:24', '2022-09-29 08:14:24'),
(439, 88, 52, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-09-29 08:14:24', '2022-09-29 08:14:24'),
(440, 88, 52, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-09-29 08:14:24', '2022-09-29 08:14:24'),
(441, 88, 52, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-09-29 08:14:24', '2022-09-29 08:14:24'),
(442, 88, 52, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-09-29 08:14:24', '2022-09-29 08:14:24'),
(443, 88, 52, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-09-29 08:14:24', '2022-09-29 08:14:24'),
(444, 88, 52, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-09-29 08:14:24', '2022-09-29 08:14:24'),
(445, 88, 52, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-09-29 08:14:24', '2022-09-29 08:14:24'),
(446, 88, 52, 94, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, '2022-09-29 08:14:50', '2022-09-29 08:14:24', '2022-09-29 08:14:50'),
(447, 88, 52, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-09-29 08:14:24', '2022-09-29 08:15:03'),
(448, 89, 51, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-29 08:40:34', '2022-09-29 08:40:34'),
(449, 89, 51, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-29 08:40:34', '2022-09-29 08:40:34'),
(450, 90, 51, 71, '2', '10', NULL, NULL, NULL, NULL, 1, 'Innstillinger apparat: Tilpass hellingen på ryggstøtten, fotbladene skal helst være paralelle med overkroppen Tilpass setelengden etter din høyde, benene skal være bøyd minst 90° i bunnposisjonen. Utgangsposisjon: Skulderbreddes avstand mellom føttene samtidig som at tærne peker noen få grader ut til siden. Utførelse: Bøy i knærne til de når omtrent 90° Press motstanden opp igjen ved å strekke ut i knærne NB! Alt etter hvordan du trener så er det fullt mulig å bøye forbi 90° for å oppnå mer effekt i muskulaturen i baken.', NULL, '2022-09-29 08:57:00', '2022-09-29 09:10:39'),
(451, 90, 51, 72, '2', '10', NULL, NULL, NULL, NULL, 2, 'Sitt helt tilbake i setet og fiksèr overkroppen med grep om håndtakene. Press anklene mot puten, bøy maksimalt i knærne og vend rolig tilbake til startstillingen.', NULL, '2022-09-29 08:57:00', '2022-09-29 09:11:08'),
(452, 90, 51, 76, '2', '10', NULL, NULL, NULL, NULL, 3, 'Sitt med lave skuldre og et godt grep om håndtakene. Albuene holdes på høyde med grepet. Press frem til armene er strake og før håndtakene noe langsommere tilbake til brystet.', NULL, '2022-09-29 08:57:00', '2022-09-29 09:11:33'),
(453, 90, 51, 83, '2', '10', NULL, NULL, NULL, NULL, 4, 'Sitt med god støtte i ryggen og ta et bredt grep. Spenn godt opp i mage- og korsryggregionen og press opp fra cirka skuldernivå til armene er strake. Senk langsomt tilbake og gjenta.', NULL, '2022-09-29 08:57:24', '2022-09-29 09:11:59'),
(454, 90, 51, 85, '2', '10', NULL, NULL, NULL, NULL, 5, 'Sitt med rett rygg, slipp armene og skuldrene godt frem. Trekk skulderbladene sammen, og før armene bakover langs siden av kroppen. Underarmene holdes til sist nærmest parallelle med gulvet.', NULL, '2022-09-29 08:57:24', '2022-09-29 09:12:28'),
(455, 90, 51, 90, '2', '10', NULL, NULL, NULL, NULL, 6, 'Ta et bredt grep, legg deg litt bakover og kikk skrått opp. Press brystkassen fram og trekk stangen ned til brystet. Før langsomt tilbake og gjenta. For å øke bevegelsesbanen og for å engasjere skulderbladmuskulaturen ytterligere kan bevegelsen gjerne startes med å trekke skulderbladene ned og bak og at en \"slipper\" skuldrene helt opp når en vender tilbake til utgangsposisjon igjen.', NULL, '2022-09-29 08:57:24', '2022-09-29 09:12:52'),
(456, 90, 51, 87, '2', '10', NULL, NULL, NULL, NULL, 7, 'Dra vekta med deg ned ved å crunche magen slik at øvre del av rygg krummer seg og skuldrene føres ned i retning av hofta. Slipp kontrollert opp igjen.', NULL, '2022-09-29 08:57:59', '2022-09-29 09:13:22'),
(457, 91, 48, 93, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(458, 91, 48, 88, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(459, 91, 48, 78, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(460, 91, 48, 74, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(461, 91, 48, 86, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(462, 91, 48, 83, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(463, 91, 48, 100, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(464, 91, 48, 73, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(465, 91, 48, 87, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-10-03 06:06:38', '2022-10-03 06:06:38'),
(466, 92, 48, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:07:07', '2022-10-03 06:07:07'),
(467, 92, 48, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:07:07', '2022-10-03 06:07:07'),
(468, 92, 48, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:07:07', '2022-10-03 06:07:07'),
(469, 92, 48, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:07:07', '2022-10-03 06:07:07'),
(470, 92, 48, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:07:07', '2022-10-03 06:07:07'),
(471, 92, 48, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 06:07:07', '2022-10-03 06:07:07'),
(472, 93, 48, 120, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-10-03 06:10:14', '2022-10-03 06:10:14'),
(473, 93, 48, 121, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-10-03 06:10:14', '2022-10-03 06:10:14'),
(474, 93, 48, 122, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-10-03 06:10:14', '2022-10-03 06:10:14'),
(475, 93, 48, 123, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-10-03 06:10:14', '2022-10-03 06:10:14'),
(476, 93, 48, 124, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-10-03 06:10:14', '2022-10-03 06:10:14'),
(477, 93, 48, 126, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-10-03 06:10:14', '2022-10-03 06:10:14'),
(478, 94, 29, 174, '2', '15', NULL, NULL, NULL, NULL, 1, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(479, 94, 29, 175, '2', '15', NULL, NULL, NULL, NULL, 2, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(480, 94, 29, 172, '2', '15', NULL, NULL, NULL, NULL, 3, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(481, 94, 29, 184, '2', '15', NULL, NULL, NULL, NULL, 4, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(482, 94, 29, 186, '3', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(483, 94, 29, 159, '4', '3', NULL, NULL, NULL, NULL, 6, '(82-87% af 1 RM). Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre to øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(484, 94, 29, 204, '4', '6', NULL, NULL, NULL, NULL, 7, 'Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(485, 94, 29, 190, '4', '4', NULL, NULL, NULL, NULL, 8, 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(486, 94, 29, 197, '4', '4', NULL, NULL, NULL, NULL, 9, 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(487, 94, 29, 185, '4', '6', NULL, NULL, NULL, NULL, 10, 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(488, 94, 29, 191, '4', '6', NULL, NULL, NULL, NULL, 11, 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(489, 94, 29, 194, '3', NULL, NULL, NULL, NULL, NULL, NULL, 'Udfør 3 runder af 30 sekunder', NULL, '2022-10-06 09:50:28', '2022-10-06 09:50:28'),
(490, 95, 53, 168, '1', NULL, '1', NULL, NULL, NULL, 1, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-10 11:42:15', '2022-10-10 11:42:15'),
(491, 95, 53, 164, '1', NULL, '1', NULL, NULL, NULL, 2, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-10 11:42:15', '2022-10-10 11:42:15'),
(492, 95, 53, 171, '1', NULL, '1', NULL, NULL, NULL, 3, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-10 11:42:15', '2022-10-10 11:42:15'),
(493, 95, 53, 167, '1', NULL, '1', NULL, NULL, NULL, 4, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-10 11:42:15', '2022-10-10 11:42:15'),
(494, 95, 53, 170, '1', NULL, '1', NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-10 11:42:15', '2022-10-10 11:42:15'),
(495, 95, 53, 169, '1', NULL, '1', NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-10 11:42:15', '2022-10-10 11:42:15'),
(496, 95, 53, 166, '1', NULL, '1', NULL, NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-10 11:42:15', '2022-10-10 11:42:15'),
(497, 96, 53, 174, '2', '15', NULL, NULL, NULL, NULL, NULL, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:24:06'),
(498, 96, 53, 175, '2', '15', NULL, NULL, NULL, NULL, NULL, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:24:13'),
(499, 96, 53, 172, '2', '15', NULL, NULL, NULL, NULL, NULL, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:24:20'),
(500, 96, 53, 184, '2', '15', NULL, NULL, NULL, NULL, NULL, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:24:28'),
(501, 96, 53, 186, '3', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 11:42:43', '2022-10-11 05:24:44'),
(502, 96, 53, 159, '4', '3', NULL, NULL, NULL, NULL, NULL, '(82-87% af 1 RM). Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre to øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:24:57'),
(503, 96, 53, 204, '4', '6', NULL, NULL, NULL, NULL, NULL, 'Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:25:33'),
(504, 96, 53, 190, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:25:24'),
(505, 96, 53, 197, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:25:14'),
(506, 96, 53, 185, '4', '6', NULL, NULL, NULL, NULL, NULL, 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:22:42'),
(507, 96, 53, 191, '4', '6', NULL, NULL, NULL, NULL, NULL, 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-10-10 11:42:43', '2022-10-11 05:25:53'),
(508, 96, 53, 194, '3', NULL, NULL, NULL, NULL, NULL, NULL, 'Udfør 3 runder af 30 sekunder', NULL, '2022-10-10 11:42:43', '2022-10-11 05:26:04'),
(509, 97, 53, 198, '1', '15', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(510, 97, 53, 205, '1', '15', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(511, 97, 53, 196, '1', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(512, 97, 53, 206, '1', '15', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(513, 97, 53, 201, '2', '10', NULL, NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal skips for begge fødder- Husk at tænk høj frekvens.', NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(514, 97, 53, 200, '2', '10', NULL, NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal bounds for begge fødder. Husk det er vigtigt med svævefase i denne øvelse, hvilket betyder et eksplosivt afsæt fra jorden.', NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(515, 97, 53, 195, '1', '10', NULL, NULL, NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til ankle højde og med høj frekvens.', NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(516, 97, 53, 202, '1', '10', NULL, NULL, NULL, NULL, 8, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til midten af skindebenet og med høj frekvens.', NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(517, 97, 53, 199, '1', '10', NULL, NULL, NULL, NULL, 9, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til knæhøjde og med høj frekvens.', NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(518, 97, 53, 208, '7', '1', NULL, NULL, NULL, NULL, 10, 'Løft med 90-97% af 1RM og med korte pauser mellem gentagelserne.', NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(519, 97, 53, 209, '3', '4', NULL, NULL, NULL, NULL, 11, 'Kun brug stangen på denne øvelse og tænk fuld kraftudvikling. Hold kun korte pauser mellem hvert set.', NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(520, 97, 53, 210, '4', '6', NULL, NULL, NULL, NULL, 12, NULL, NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(521, 97, 53, 211, '4', '6', NULL, NULL, NULL, NULL, 13, NULL, NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(522, 97, 53, 212, '3', '8', NULL, NULL, NULL, NULL, 14, NULL, NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(523, 97, 53, 213, '3', '8', NULL, NULL, NULL, NULL, 15, NULL, NULL, '2022-10-13 04:18:56', '2022-10-13 04:18:56'),
(524, 98, 53, 198, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 04:19:33', '2022-10-13 04:22:46'),
(525, 98, 53, 205, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 04:19:33', '2022-10-13 04:23:02'),
(526, 98, 53, 196, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 04:19:33', '2022-10-13 04:23:12'),
(527, 98, 53, 206, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 04:19:33', '2022-10-13 04:23:31'),
(528, 98, 53, 201, '2', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal skips for begge fødder- Husk at tænk høj frekvens.', NULL, '2022-10-13 04:19:33', '2022-10-13 04:23:44'),
(529, 98, 53, 200, '2', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal bounds for begge fødder. Husk det er vigtigt med svævefase i denne øvelse, hvilket betyder et eksplosivt afsæt fra jorden.', NULL, '2022-10-13 04:19:33', '2022-10-13 04:24:44'),
(530, 98, 53, 195, '1', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til ankle højde og med høj frekvens.', NULL, '2022-10-13 04:19:33', '2022-10-13 04:24:32'),
(531, 98, 53, 202, '1', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til midten af skindebenet og med høj frekvens.', NULL, '2022-10-13 04:19:33', '2022-10-13 04:24:17'),
(532, 98, 53, 199, '1', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til knæhøjde og med høj frekvens.', NULL, '2022-10-13 04:19:33', '2022-10-13 04:24:05'),
(533, 98, 53, 208, '7', '1', NULL, NULL, NULL, NULL, NULL, 'Løft med 90-97% af 1RM og med korte pauser mellem gentagelserne.', NULL, '2022-10-13 04:19:33', '2022-10-13 04:23:55'),
(534, 98, 53, 209, '3', '4', NULL, NULL, NULL, NULL, NULL, 'Kun brug stangen på denne øvelse og tænk fuld kraftudvikling. Hold kun korte pauser mellem hvert set.', NULL, '2022-10-13 04:19:33', '2022-10-13 04:25:35'),
(535, 98, 53, 210, '4', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 04:19:33', '2022-10-13 04:25:50'),
(536, 98, 53, 211, '4', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 04:19:33', '2022-10-13 04:26:02'),
(537, 98, 53, 212, '3', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 04:19:33', '2022-10-13 04:25:11'),
(538, 98, 53, 213, '3', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 04:19:33', '2022-10-13 04:24:55'),
(539, 99, 53, 168, '1', NULL, '1', NULL, NULL, NULL, 1, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-13 09:45:05', '2022-10-13 09:45:05'),
(540, 99, 53, 164, '1', NULL, '1', NULL, NULL, NULL, 2, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-13 09:45:05', '2022-10-13 09:45:05'),
(541, 99, 53, 171, '1', NULL, '1', NULL, NULL, NULL, 3, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-13 09:45:05', '2022-10-13 09:45:05'),
(542, 99, 53, 167, '1', NULL, '1', NULL, NULL, NULL, 4, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-13 09:45:05', '2022-10-13 09:45:05'),
(543, 99, 53, 170, '1', NULL, '1', NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-13 09:45:05', '2022-10-13 09:45:05'),
(544, 99, 53, 169, '1', NULL, '1', NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-13 09:45:05', '2022-10-13 09:45:05'),
(545, 99, 53, 166, '1', NULL, '1', NULL, NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-10-13 09:45:05', '2022-10-13 09:45:05'),
(546, 99, 53, 165, '1', '15', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-10-13 09:45:05', '2022-10-13 09:45:05'),
(547, 100, 53, 198, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(548, 100, 53, 205, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(549, 100, 53, 196, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(550, 100, 53, 206, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(551, 100, 53, 201, '2', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal skips for begge fødder- Husk at tænk høj frekvens.', NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(552, 100, 53, 200, '2', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal bounds for begge fødder. Husk det er vigtigt med svævefase i denne øvelse, hvilket betyder et eksplosivt afsæt fra jorden.', NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(553, 100, 53, 195, '1', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til ankle højde og med høj frekvens.', NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(554, 100, 53, 202, '1', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til midten af skindebenet og med høj frekvens.', NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(555, 100, 53, 199, '1', '10', NULL, NULL, NULL, NULL, NULL, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til knæhøjde og med høj frekvens.', NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(556, 100, 53, 208, '7', '1', NULL, NULL, NULL, NULL, NULL, 'Løft med 90-97% af 1RM og med korte pauser mellem gentagelserne.', NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(557, 100, 53, 209, '3', '4', NULL, NULL, NULL, NULL, NULL, 'Kun brug stangen på denne øvelse og tænk fuld kraftudvikling. Hold kun korte pauser mellem hvert set.', NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(558, 100, 53, 210, '4', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(559, 100, 53, 211, '4', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(560, 100, 53, 212, '3', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(561, 100, 53, 213, '3', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 09:50:49', '2022-10-13 09:50:49'),
(562, 101, 53, 174, '1', '15', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-10-13 09:53:46', '2022-10-13 09:53:46'),
(563, 101, 53, 175, '1', '15', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-10-13 09:53:46', '2022-10-13 09:53:46'),
(564, 101, 53, 172, '1', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-10-13 09:53:46', '2022-10-13 09:53:46'),
(565, 101, 53, 173, '1', '15', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-10-13 09:53:46', '2022-10-13 09:53:46'),
(566, 101, 53, 207, '1', '15', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-10-13 09:53:46', '2022-10-13 09:53:46'),
(567, 102, 53, 198, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(568, 102, 53, 205, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(569, 102, 53, 196, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(570, 102, 53, 206, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(571, 102, 53, 167, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(572, 102, 53, 214, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(573, 102, 53, 165, '1', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(574, 102, 53, 195, '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Perform as many reps as possible in 10 seconds!', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(575, 102, 53, 202, '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Perform as many reps as possible in 10 seconds!', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(576, 102, 53, 199, '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Perform as many reps as possible in 10 seconds!', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(577, 102, 53, 201, '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(578, 102, 53, 200, '2', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(579, 102, 53, 216, '1', '5', NULL, NULL, NULL, NULL, NULL, 'Non-countermovement jump', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(580, 102, 53, 217, '1', '5', NULL, NULL, NULL, NULL, NULL, 'Countermovement jump', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(581, 102, 53, 218, '1', '5', NULL, NULL, NULL, NULL, NULL, 'Double contact jump', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(582, 102, 53, 219, '1', '5', NULL, NULL, NULL, NULL, NULL, 'Double contact jump on toes', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(583, 102, 53, 220, '1', '5', NULL, NULL, NULL, NULL, NULL, 'Continuous jump on toes', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(584, 102, 53, 221, '3', '1', NULL, NULL, NULL, NULL, NULL, '1 reps = both legs.', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(585, 102, 53, 190, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Do a reverse lunges, stepping backwards and quickly reverse with a violent knee drive for maximum drive. ALSO, raise your heel on your front foot slightly to strengthening your ankle complex.', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(586, 102, 53, 187, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Jump as quickly and high as possible.', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(587, 102, 53, 204, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Place a thick band on a rack or pull up bar. Grab the band and pull it towards your chest and keep it there. From a medium stance, quickly drop down and then jump as high as possible.', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(588, 102, 53, 203, '3', '4', NULL, NULL, NULL, NULL, NULL, 'Place your self as you would for a nordic hamstring. This could be under a bench, rack or in a GHR. Lower your self down and pull your self back up, while trying to keep your hips straight. You might need to assist with your hands a bit or you can use a band.', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(589, 102, 53, 215, '3', NULL, NULL, NULL, NULL, NULL, NULL, 'Perform 3 rounds of 20 seconds! Lay on the floor with three hards bands placed on the rack in knee height. Lay supine on the floor with your feet in between the bands. This is a hamstring exercise so there need to be more bands under your feet than over. So place 4 bands under and 2 bands on top. Then kick as fast as possible down to the bands with your legs straight.', NULL, '2022-10-13 10:47:42', '2022-10-13 10:47:42'),
(590, 103, 61, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-10-25 13:12:44', '2022-10-25 13:12:44'),
(591, 104, 61, 93, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(592, 104, 61, 88, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(593, 104, 61, 78, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(594, 104, 61, 74, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(595, 104, 61, 86, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(596, 104, 61, 83, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(597, 104, 61, 100, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(598, 104, 61, 73, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(599, 104, 61, 87, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-10-25 13:13:29', '2022-10-25 13:13:29'),
(600, 105, 61, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(601, 105, 61, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(602, 105, 61, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(603, 105, 61, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(604, 105, 61, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(605, 105, 61, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(606, 105, 61, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(607, 105, 61, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(608, 105, 61, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-10-31 16:14:10', '2022-10-31 16:14:10'),
(609, 106, 62, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(610, 106, 62, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(611, 106, 62, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(612, 106, 62, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(613, 106, 62, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(614, 106, 62, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(615, 106, 62, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(616, 106, 62, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(617, 106, 62, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(618, 106, 62, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(619, 106, 62, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(620, 106, 62, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(621, 106, 62, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(622, 106, 62, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(623, 106, 62, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(624, 106, 62, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(625, 106, 62, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(626, 106, 62, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-01 17:38:40', '2022-11-01 17:38:40'),
(627, 107, 60, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tabatainterval 20 sekunders løb/10 sekunders pause*8 runder (1 til 4 set).', NULL, '2022-11-03 06:23:17', '2022-11-03 06:23:17'),
(628, 108, 60, 154, '3', '4', NULL, '3', NULL, NULL, NULL, '50/10 interval er hvor du løber 50 sekunder med høj intensitet efterfulgt af 10 sekunders pause af 4 runder. Intensiteten bør ligge på 90-95 % af makspuls (Du kan tjekke pulsen med brug af pulskalkulatoren under profil). Indstil løbebåndet med en hældning på mellem 5-10%.', NULL, '2022-11-03 06:25:07', '2022-11-03 06:25:07'),
(629, 109, 60, 127, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:27:43', '2022-11-03 06:27:43'),
(630, 109, 60, 128, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:27:43', '2022-11-03 06:27:43'),
(631, 109, 60, 129, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:27:43', '2022-11-03 06:27:43'),
(632, 109, 60, 130, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:27:43', '2022-11-03 06:27:43'),
(633, 109, 60, 131, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:27:43', '2022-11-03 06:27:43'),
(634, 109, 60, 132, '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:27:43', '2022-11-03 06:27:43'),
(635, 109, 60, 133, '1', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:27:43', '2022-11-03 06:27:43'),
(636, 109, 60, 134, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:27:43', '2022-11-03 06:27:43'),
(637, 110, 60, 127, NULL, NULL, '20:__', NULL, NULL, NULL, 1, NULL, NULL, '2022-11-03 06:33:00', '2022-11-03 06:33:00'),
(638, 110, 60, 128, '1', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-03 06:33:00', '2022-11-03 06:33:00'),
(639, 110, 60, 129, '1', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-03 06:33:00', '2022-11-03 06:33:00'),
(640, 110, 60, 130, '1', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-03 06:33:00', '2022-11-03 06:33:00'),
(641, 110, 60, 131, '1', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-03 06:33:00', '2022-11-03 06:33:00'),
(642, 110, 60, 132, '1', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-03 06:33:00', '2022-11-03 06:33:00'),
(643, 110, 60, 133, '1', '5', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-11-03 06:33:00', '2022-11-03 06:33:00'),
(644, 110, 60, 134, '1', '1', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-03 06:33:00', '2022-11-03 06:33:00'),
(645, 111, 60, 127, NULL, NULL, '20:__', NULL, NULL, NULL, 1, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(646, 111, 60, 128, '1', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(647, 111, 60, 129, '1', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(648, 111, 60, 130, '1', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(649, 111, 60, 131, '1', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(650, 111, 60, 132, '1', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(651, 111, 60, 133, '1', '5', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(652, 111, 60, 134, '1', '1', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30');
INSERT INTO `setup_programs` (`id`, `register_program_id`, `user_id`, `program_with_video_id`, `set`, `rep`, `duration`, `break`, `distance`, `exercise_no`, `sort`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(653, 111, 60, 71, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(654, 111, 60, 96, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(655, 111, 60, 101, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(656, 111, 60, 120, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(657, 111, 60, 127, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, '2022-11-03 06:56:30', '2022-11-03 06:56:30'),
(658, 112, 29, 127, NULL, NULL, '20:__', NULL, NULL, NULL, 1, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(659, 112, 29, 128, '1', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(660, 112, 29, 129, '1', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(661, 112, 29, 130, '1', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(662, 112, 29, 131, '1', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(663, 112, 29, 132, '1', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(664, 112, 29, 133, '1', '5', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(665, 112, 29, 134, '1', '1', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(666, 112, 29, 71, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(667, 112, 29, 96, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(668, 112, 29, 101, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(669, 112, 29, 120, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(670, 112, 29, 127, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, '2022-11-04 09:43:10', '2022-11-04 09:43:10'),
(671, 113, 69, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-11-04 10:09:23', '2022-11-04 10:09:23'),
(672, 114, 69, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-04 10:09:46', '2022-11-04 10:09:46'),
(673, 114, 69, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-04 10:09:46', '2022-11-04 10:09:46'),
(674, 114, 69, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-04 10:09:46', '2022-11-04 10:09:46'),
(675, 114, 69, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-04 10:09:46', '2022-11-04 10:09:46'),
(676, 114, 69, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-04 10:09:46', '2022-11-04 10:09:46'),
(677, 114, 69, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-04 10:09:46', '2022-11-04 10:09:46'),
(678, 114, 69, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-11-04 10:09:46', '2022-11-04 10:09:46'),
(679, 114, 69, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-04 10:09:46', '2022-11-04 10:09:46'),
(680, 114, 69, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-11-04 10:09:46', '2022-11-04 10:09:46'),
(681, 115, 53, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(682, 115, 53, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(683, 115, 53, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(684, 115, 53, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(685, 115, 53, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(686, 115, 53, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(687, 115, 53, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(688, 115, 53, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(689, 115, 53, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(690, 115, 53, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(691, 115, 53, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(692, 115, 53, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(693, 115, 53, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(694, 115, 53, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(695, 115, 53, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(696, 115, 53, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(697, 115, 53, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(698, 115, 53, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:47:48', '2022-11-05 10:47:48'),
(699, 116, 68, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(700, 116, 68, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(701, 116, 68, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(702, 116, 68, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(703, 116, 68, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(704, 116, 68, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(705, 116, 68, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(706, 116, 68, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(707, 116, 68, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(708, 116, 68, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(709, 116, 68, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(710, 116, 68, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(711, 116, 68, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(712, 116, 68, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(713, 116, 68, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(714, 116, 68, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(715, 116, 68, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(716, 116, 68, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:49:33', '2022-11-05 10:49:33'),
(717, 117, 69, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(718, 117, 69, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(719, 117, 69, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(720, 117, 69, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(721, 117, 69, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(722, 117, 69, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(723, 117, 69, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(724, 117, 69, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(725, 117, 69, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(726, 117, 69, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(727, 117, 69, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(728, 117, 69, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(729, 117, 69, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(730, 117, 69, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(731, 117, 69, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(732, 117, 69, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(733, 117, 69, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(734, 117, 69, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:49:56', '2022-11-05 10:49:56'),
(735, 118, 71, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(736, 118, 71, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(737, 118, 71, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(738, 118, 71, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(739, 118, 71, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(740, 118, 71, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(741, 118, 71, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(742, 118, 71, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(743, 118, 71, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(744, 118, 71, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(745, 118, 71, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(746, 118, 71, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(747, 118, 71, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(748, 118, 71, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(749, 118, 71, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(750, 118, 71, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(751, 118, 71, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(752, 118, 71, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:50:16', '2022-11-05 10:50:16'),
(753, 119, 72, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(754, 119, 72, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(755, 119, 72, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(756, 119, 72, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(757, 119, 72, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(758, 119, 72, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(759, 119, 72, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(760, 119, 72, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(761, 119, 72, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(762, 119, 72, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(763, 119, 72, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(764, 119, 72, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(765, 119, 72, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(766, 119, 72, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(767, 119, 72, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(768, 119, 72, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(769, 119, 72, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(770, 119, 72, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:50:47', '2022-11-05 10:50:47'),
(771, 120, 73, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(772, 120, 73, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(773, 120, 73, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(774, 120, 73, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(775, 120, 73, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(776, 120, 73, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(777, 120, 73, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(778, 120, 73, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(779, 120, 73, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(780, 120, 73, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(781, 120, 73, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(782, 120, 73, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(783, 120, 73, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(784, 120, 73, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(785, 120, 73, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(786, 120, 73, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(787, 120, 73, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(788, 120, 73, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:51:07', '2022-11-05 10:51:07'),
(789, 121, 74, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(790, 121, 74, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(791, 121, 74, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(792, 121, 74, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(793, 121, 74, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(794, 121, 74, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(795, 121, 74, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(796, 121, 74, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(797, 121, 74, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(798, 121, 74, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(799, 121, 74, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(800, 121, 74, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(801, 121, 74, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(802, 121, 74, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(803, 121, 74, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(804, 121, 74, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(805, 121, 74, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(806, 121, 74, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:51:27', '2022-11-05 10:51:27'),
(807, 122, 75, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(808, 122, 75, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(809, 122, 75, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(810, 122, 75, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(811, 122, 75, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(812, 122, 75, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(813, 122, 75, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(814, 122, 75, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(815, 122, 75, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(816, 122, 75, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(817, 122, 75, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(818, 122, 75, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(819, 122, 75, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(820, 122, 75, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(821, 122, 75, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(822, 122, 75, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(823, 122, 75, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(824, 122, 75, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:51:45', '2022-11-05 10:51:45'),
(825, 123, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(826, 123, 76, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(827, 123, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(828, 123, 76, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(829, 123, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(830, 123, 76, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(831, 123, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(832, 123, 76, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(833, 123, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(834, 123, 76, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(835, 123, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(836, 123, 76, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(837, 123, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(838, 123, 76, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(839, 123, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(840, 123, 76, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(841, 123, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(842, 123, 76, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:52:05', '2022-11-05 10:52:05'),
(843, 124, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(844, 124, 76, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(845, 124, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(846, 124, 76, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(847, 124, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(848, 124, 76, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(849, 124, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(850, 124, 76, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(851, 124, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(852, 124, 76, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(853, 124, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(854, 124, 76, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(855, 124, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(856, 124, 76, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(857, 124, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(858, 124, 76, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(859, 124, 76, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(860, 124, 76, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:52:24', '2022-11-05 10:52:24'),
(861, 125, 77, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(862, 125, 77, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(863, 125, 77, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(864, 125, 77, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(865, 125, 77, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(866, 125, 77, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(867, 125, 77, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(868, 125, 77, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(869, 125, 77, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(870, 125, 77, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(871, 125, 77, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(872, 125, 77, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(873, 125, 77, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(874, 125, 77, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(875, 125, 77, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(876, 125, 77, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(877, 125, 77, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(878, 125, 77, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:52:40', '2022-11-05 10:52:40'),
(879, 126, 78, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(880, 126, 78, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(881, 126, 78, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(882, 126, 78, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(883, 126, 78, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(884, 126, 78, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(885, 126, 78, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(886, 126, 78, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(887, 126, 78, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(888, 126, 78, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(889, 126, 78, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(890, 126, 78, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(891, 126, 78, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(892, 126, 78, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(893, 126, 78, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(894, 126, 78, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(895, 126, 78, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(896, 126, 78, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:52:58', '2022-11-05 10:52:58'),
(897, 127, 79, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(898, 127, 79, 159, '6', '3', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(899, 127, 79, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(900, 127, 79, 159, '6', '4', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(901, 127, 79, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(902, 127, 79, 159, '6', '5', NULL, NULL, NULL, NULL, NULL, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(903, 127, 79, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(904, 127, 79, 159, '6', '6', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(905, 127, 79, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(906, 127, 79, 159, '5', '5', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(907, 127, 79, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(908, 127, 79, 159, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(909, 127, 79, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(910, 127, 79, 159, '3', '3', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(911, 127, 79, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(912, 127, 79, 159, '2', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(913, 127, 79, 159, '6', '2', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(914, 127, 79, 159, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-05 10:53:33', '2022-11-05 10:53:33'),
(915, 128, 53, 168, '1', NULL, '01:00', '01:00', NULL, NULL, 1, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-06 11:10:17', '2022-11-06 11:10:17'),
(916, 128, 53, 164, '1', NULL, '01:00', '01:00', NULL, NULL, 2, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-06 11:10:17', '2022-11-06 11:10:17'),
(917, 128, 53, 171, '1', NULL, '01:00', '01:00', NULL, NULL, 3, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-06 11:10:17', '2022-11-06 11:10:17'),
(918, 128, 53, 167, '1', '15', NULL, NULL, NULL, NULL, 4, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-06 11:10:17', '2022-11-06 11:10:17'),
(919, 128, 53, 170, '1', '15', NULL, NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-06 11:10:17', '2022-11-06 11:10:17'),
(920, 128, 53, 169, '1', '15', NULL, NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-06 11:10:17', '2022-11-06 11:10:17'),
(921, 128, 53, 166, '1', NULL, '00:30', '00:30', NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-06 11:10:17', '2022-11-06 11:10:17'),
(922, 129, 80, 168, '1', NULL, '01:00', '01:00', NULL, NULL, 1, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 10:48:44', '2022-11-12 10:48:44'),
(923, 129, 80, 164, '1', NULL, '01:00', '01:00', NULL, NULL, 2, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 10:48:44', '2022-11-12 10:48:44'),
(924, 129, 80, 171, '1', NULL, '01:00', '01:00', NULL, NULL, 3, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 10:48:44', '2022-11-12 10:48:44'),
(925, 129, 80, 167, '1', '15', NULL, NULL, NULL, NULL, 4, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 10:48:44', '2022-11-12 10:48:44'),
(926, 129, 80, 170, '1', '15', NULL, NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 10:48:44', '2022-11-12 10:48:44'),
(927, 129, 80, 169, '1', '15', NULL, NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 10:48:44', '2022-11-12 10:48:44'),
(928, 129, 80, 166, '1', NULL, '00:30', '00:30', NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 10:48:44', '2022-11-12 10:48:44'),
(929, 130, 80, 174, '2', '15', NULL, NULL, NULL, NULL, 1, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(930, 130, 80, 175, '2', '15', NULL, NULL, NULL, NULL, 2, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(931, 130, 80, 172, '2', '15', NULL, NULL, NULL, NULL, 3, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(932, 130, 80, 184, '2', '15', NULL, NULL, NULL, NULL, 4, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(933, 130, 80, 186, '3', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(934, 130, 80, 159, '4', '3', NULL, NULL, NULL, NULL, 6, '(82-87% af 1 RM)! Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre to øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(935, 130, 80, 204, '4', '6', NULL, NULL, NULL, NULL, 7, 'Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(936, 130, 80, 190, '4', '4', NULL, NULL, NULL, NULL, 8, 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(937, 130, 80, 197, '3', '4', NULL, NULL, NULL, NULL, 9, 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(938, 130, 80, 185, '4', '6', NULL, NULL, NULL, NULL, 10, 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(939, 130, 80, 191, '4', '6', NULL, NULL, NULL, NULL, 11, 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(940, 130, 80, 194, '3', NULL, '00:30', '00:30', NULL, NULL, 12, NULL, NULL, '2022-11-12 10:49:13', '2022-11-12 10:49:13'),
(941, 131, 81, 168, '1', NULL, '01:00', '00:30', NULL, NULL, 1, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:14:19', '2022-11-12 12:14:19'),
(942, 131, 81, 164, '1', NULL, '01:00', '00:30', NULL, NULL, 2, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:14:19', '2022-11-12 12:14:19'),
(943, 131, 81, 171, '1', NULL, '01:00', '00:30', NULL, NULL, 3, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:14:19', '2022-11-12 12:14:19'),
(944, 131, 81, 167, '1', '15', NULL, NULL, NULL, NULL, 4, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:14:19', '2022-11-12 12:14:19'),
(945, 131, 81, 170, '1', '15', NULL, NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:14:19', '2022-11-12 12:14:19'),
(946, 131, 81, 169, '1', '15', NULL, NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:14:19', '2022-11-12 12:14:19'),
(947, 131, 81, 166, '1', NULL, '00:30', '00:30', NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:14:19', '2022-11-12 12:14:19'),
(948, 131, 81, 165, '1', '15', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-12 12:14:19', '2022-11-12 12:14:19'),
(949, 132, 81, 198, '1', '15', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(950, 132, 81, 205, '1', '15', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(951, 132, 81, 196, '1', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(952, 132, 81, 206, '1', '15', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(953, 132, 81, 201, '2', '10', NULL, NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal skips for begge fødder- Husk at tænk høj frekvens.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(954, 132, 81, 200, '2', '8', NULL, NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal bounds for begge fødder. Husk det er vigtigt med svævefase i denne øvelse, hvilket betyder et eksplosivt afsæt fra jorden.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(955, 132, 81, 195, '1', '10', NULL, NULL, NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til ankle højde og med høj frekvens.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(956, 132, 81, 202, '1', '10', NULL, NULL, NULL, NULL, 8, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til midten af skindebenet og med høj frekvens.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(957, 132, 81, 199, '1', '10', NULL, NULL, NULL, NULL, 9, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til knæhøjde og med høj frekvens.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(958, 132, 81, 208, '7', '1', NULL, '00:30', NULL, NULL, 10, 'Løft med 90-97% af 1RM og med korte pauser mellem gentagelserne.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(959, 132, 81, 209, '3', '4', NULL, '00:30', NULL, NULL, 11, 'Kun brug stangen på denne øvelse og tænk fuld kraftudvikling. Hold kun korte pauser mellem hvert set.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(960, 132, 81, 210, '4', '6', NULL, NULL, NULL, NULL, 12, 'Gennemfør øvelse 12, og 13 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(961, 132, 81, 211, '4', '6', NULL, NULL, NULL, NULL, 13, 'Gennemfør øvelse 12, og 13 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(962, 132, 81, 212, '3', '8', NULL, NULL, NULL, NULL, 14, 'Gennemfør øvelse 14, og 15 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(963, 132, 81, 213, '3', '8', NULL, NULL, NULL, NULL, 15, 'Gennemfør øvelse 14, og 15 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-11-12 12:14:47', '2022-11-12 12:14:47'),
(964, 133, 81, 168, '1', NULL, '01:00', '01:00', NULL, NULL, 1, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:17:06', '2022-11-12 12:17:06'),
(965, 133, 81, 164, '1', NULL, '01:00', '01:00', NULL, NULL, 2, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:17:06', '2022-11-12 12:17:06'),
(966, 133, 81, 171, '1', NULL, '01:00', '01:00', NULL, NULL, 3, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:17:06', '2022-11-12 12:17:06'),
(967, 133, 81, 167, '1', '15', NULL, NULL, NULL, NULL, 4, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:17:06', '2022-11-12 12:17:06'),
(968, 133, 81, 170, '1', '15', NULL, NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:17:06', '2022-11-12 12:17:06'),
(969, 133, 81, 169, '1', '15', NULL, NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:17:06', '2022-11-12 12:17:06'),
(970, 133, 81, 166, '1', NULL, '00:30', '00:30', NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-12 12:17:06', '2022-11-12 12:17:06'),
(971, 134, 81, 174, '2', '15', NULL, NULL, NULL, NULL, 1, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44');
INSERT INTO `setup_programs` (`id`, `register_program_id`, `user_id`, `program_with_video_id`, `set`, `rep`, `duration`, `break`, `distance`, `exercise_no`, `sort`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(972, 134, 81, 175, '2', '15', NULL, NULL, NULL, NULL, 2, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(973, 134, 81, 172, '2', '15', NULL, NULL, NULL, NULL, 3, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(974, 134, 81, 184, '2', '15', NULL, NULL, NULL, NULL, 4, 'Gennemfør øvelse 1 til 4 som et gigantset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(975, 134, 81, 186, '3', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(976, 134, 81, 159, '4', '3', NULL, NULL, NULL, NULL, 6, '(82-87% af 1 RM)! Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre to øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(977, 134, 81, 204, '4', '6', NULL, NULL, NULL, NULL, 7, 'Gennemfør øvelse 6 og 7 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(978, 134, 81, 190, '4', '4', NULL, NULL, NULL, NULL, 8, 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(979, 134, 81, 197, '3', '4', NULL, NULL, NULL, NULL, 9, 'Gennemfør øvelse 8 og 9 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(980, 134, 81, 185, '4', '6', NULL, NULL, NULL, NULL, 10, 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(981, 134, 81, 191, '4', '6', NULL, NULL, NULL, NULL, 11, 'Gennemfør øvelse 10 og 11 som et superset, hvilket betyder at du gennemføre hver af de fire øvelser efter hinanden i henhold til de opsatte antal runder.', NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(982, 134, 81, 194, '3', NULL, '00:30', '00:30', NULL, NULL, 12, NULL, NULL, '2022-11-12 12:17:44', '2022-11-12 12:17:44'),
(983, 135, 81, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(984, 135, 81, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(985, 135, 81, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(986, 135, 81, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(987, 135, 81, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(988, 135, 81, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(989, 135, 81, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(990, 135, 81, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(991, 135, 81, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(992, 135, 81, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(993, 135, 81, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(994, 135, 81, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(995, 135, 81, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(996, 135, 81, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(997, 135, 81, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(998, 135, 81, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(999, 135, 81, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(1000, 135, 81, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 11:41:30', '2022-11-13 11:41:30'),
(1001, 136, 68, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1002, 136, 68, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1003, 136, 68, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1004, 136, 68, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1005, 136, 68, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1006, 136, 68, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1007, 136, 68, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1008, 136, 68, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1009, 136, 68, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1010, 136, 68, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1011, 136, 68, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1012, 136, 68, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:44:05', '2022-11-13 17:44:05'),
(1013, 136, 68, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:44:06', '2022-11-13 17:44:06'),
(1014, 136, 68, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:44:06', '2022-11-13 17:44:06'),
(1015, 136, 68, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:44:06', '2022-11-13 17:44:06'),
(1016, 136, 68, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:44:06', '2022-11-13 17:44:06'),
(1017, 136, 68, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:44:06', '2022-11-13 17:44:06'),
(1018, 136, 68, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:44:06', '2022-11-13 17:44:06'),
(1019, 137, 69, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1020, 137, 69, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1021, 137, 69, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1022, 137, 69, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1023, 137, 69, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1024, 137, 69, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1025, 137, 69, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1026, 137, 69, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1027, 137, 69, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1028, 137, 69, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1029, 137, 69, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1030, 137, 69, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1031, 137, 69, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1032, 137, 69, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1033, 137, 69, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1034, 137, 69, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1035, 137, 69, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1036, 137, 69, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:44:34', '2022-11-13 17:44:34'),
(1037, 138, 71, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1038, 138, 71, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1039, 138, 71, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1040, 138, 71, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1041, 138, 71, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1042, 138, 71, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1043, 138, 71, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1044, 138, 71, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1045, 138, 71, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1046, 138, 71, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1047, 138, 71, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1048, 138, 71, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1049, 138, 71, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1050, 138, 71, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1051, 138, 71, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1052, 138, 71, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1053, 138, 71, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1054, 138, 71, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:44:55', '2022-11-13 17:44:55'),
(1055, 139, 72, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1056, 139, 72, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1057, 139, 72, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1058, 139, 72, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1059, 139, 72, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1060, 139, 72, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1061, 139, 72, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1062, 139, 72, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1063, 139, 72, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1064, 139, 72, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1065, 139, 72, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1066, 139, 72, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1067, 139, 72, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1068, 139, 72, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1069, 139, 72, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1070, 139, 72, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1071, 139, 72, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1072, 139, 72, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:45:27', '2022-11-13 17:45:27'),
(1073, 140, 73, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1074, 140, 73, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1075, 140, 73, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1076, 140, 73, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1077, 140, 73, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1078, 140, 73, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1079, 140, 73, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1080, 140, 73, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1081, 140, 73, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1082, 140, 73, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1083, 140, 73, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1084, 140, 73, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1085, 140, 73, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1086, 140, 73, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1087, 140, 73, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1088, 140, 73, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1089, 140, 73, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1090, 140, 73, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:45:59', '2022-11-13 17:45:59'),
(1091, 141, 74, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1092, 141, 74, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1093, 141, 74, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1094, 141, 74, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1095, 141, 74, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1096, 141, 74, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1097, 141, 74, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1098, 141, 74, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1099, 141, 74, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1100, 141, 74, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1101, 141, 74, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1102, 141, 74, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1103, 141, 74, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1104, 141, 74, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1105, 141, 74, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1106, 141, 74, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1107, 141, 74, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1108, 141, 74, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:46:22', '2022-11-13 17:46:22'),
(1109, 142, 75, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1110, 142, 75, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1111, 142, 75, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1112, 142, 75, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1113, 142, 75, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1114, 142, 75, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1115, 142, 75, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1116, 142, 75, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1117, 142, 75, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1118, 142, 75, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1119, 142, 75, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1120, 142, 75, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1121, 142, 75, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1122, 142, 75, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1123, 142, 75, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1124, 142, 75, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1125, 142, 75, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1126, 142, 75, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:46:41', '2022-11-13 17:46:41'),
(1127, 143, 76, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1128, 143, 76, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1129, 143, 76, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1130, 143, 76, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1131, 143, 76, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1132, 143, 76, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1133, 143, 76, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1134, 143, 76, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1135, 143, 76, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1136, 143, 76, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1137, 143, 76, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1138, 143, 76, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1139, 143, 76, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1140, 143, 76, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1141, 143, 76, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1142, 143, 76, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1143, 143, 76, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1144, 143, 76, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:47:00', '2022-11-13 17:47:00'),
(1145, 144, 77, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1146, 144, 77, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1147, 144, 77, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1148, 144, 77, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1149, 144, 77, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1150, 144, 77, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1151, 144, 77, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1152, 144, 77, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1153, 144, 77, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1154, 144, 77, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1155, 144, 77, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1156, 144, 77, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1157, 144, 77, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1158, 144, 77, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1159, 144, 77, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1160, 144, 77, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1161, 144, 77, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1162, 144, 77, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:47:18', '2022-11-13 17:47:18'),
(1163, 145, 78, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1164, 145, 78, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1165, 145, 78, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1166, 145, 78, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1167, 145, 78, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1168, 145, 78, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1169, 145, 78, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1170, 145, 78, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1171, 145, 78, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1172, 145, 78, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1173, 145, 78, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1174, 145, 78, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1175, 145, 78, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1176, 145, 78, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1177, 145, 78, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1178, 145, 78, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1179, 145, 78, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1180, 145, 78, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:47:37', '2022-11-13 17:47:37'),
(1181, 146, 79, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1182, 146, 79, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1183, 146, 79, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1184, 146, 79, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1185, 146, 79, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1186, 146, 79, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1187, 146, 79, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1188, 146, 79, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1189, 146, 79, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1190, 146, 79, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1191, 146, 79, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-13 17:47:58', '2022-11-13 17:47:58'),
(1192, 146, 79, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-13 17:47:59', '2022-11-13 17:47:59'),
(1193, 146, 79, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-13 17:47:59', '2022-11-13 17:47:59'),
(1194, 146, 79, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-13 17:47:59', '2022-11-13 17:47:59'),
(1195, 146, 79, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-13 17:47:59', '2022-11-13 17:47:59'),
(1196, 146, 79, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-13 17:47:59', '2022-11-13 17:47:59'),
(1197, 146, 79, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-13 17:47:59', '2022-11-13 17:47:59'),
(1198, 146, 79, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-13 17:47:59', '2022-11-13 17:47:59'),
(1199, 147, 82, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1200, 147, 82, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1201, 147, 82, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1202, 147, 82, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1203, 147, 82, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1204, 147, 82, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1205, 147, 82, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1206, 147, 82, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1207, 147, 82, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1208, 147, 82, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1209, 147, 82, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1210, 147, 82, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1211, 147, 82, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1212, 147, 82, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1213, 147, 82, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1214, 147, 82, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1215, 147, 82, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1216, 147, 82, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 10:41:38', '2022-11-14 10:41:38'),
(1217, 148, 83, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1218, 148, 83, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1219, 148, 83, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1220, 148, 83, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1221, 148, 83, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1222, 148, 83, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1223, 148, 83, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1224, 148, 83, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1225, 148, 83, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1226, 148, 83, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1227, 148, 83, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1228, 148, 83, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1229, 148, 83, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1230, 148, 83, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1231, 148, 83, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1232, 148, 83, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1233, 148, 83, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1234, 148, 83, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 10:41:59', '2022-11-14 10:41:59'),
(1235, 149, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1236, 149, 84, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1237, 149, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1238, 149, 84, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1239, 149, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1240, 149, 84, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1241, 149, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1242, 149, 84, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1243, 149, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1244, 149, 84, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1245, 149, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1246, 149, 84, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1247, 149, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1248, 149, 84, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1249, 149, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1250, 149, 84, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1251, 149, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1252, 149, 84, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 10:42:17', '2022-11-14 10:42:17'),
(1253, 150, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1254, 150, 84, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1255, 150, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1256, 150, 84, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1257, 150, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1258, 150, 84, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1259, 150, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1260, 150, 84, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1261, 150, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1262, 150, 84, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1263, 150, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1264, 150, 84, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1265, 150, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 10:51:12', '2022-11-14 10:51:12'),
(1266, 150, 84, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 10:51:13', '2022-11-14 10:51:13'),
(1267, 150, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 10:51:13', '2022-11-14 10:51:13'),
(1268, 150, 84, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 10:51:13', '2022-11-14 10:51:13'),
(1269, 150, 84, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 10:51:13', '2022-11-14 10:51:13'),
(1270, 150, 84, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 10:51:13', '2022-11-14 10:51:13'),
(1271, 151, 85, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1272, 151, 85, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1273, 151, 85, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1274, 151, 85, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1275, 151, 85, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1276, 151, 85, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1277, 151, 85, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1278, 151, 85, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1279, 151, 85, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1280, 151, 85, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1281, 151, 85, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1282, 151, 85, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1283, 151, 85, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1284, 151, 85, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1285, 151, 85, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1286, 151, 85, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1287, 151, 85, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1288, 151, 85, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 10:51:30', '2022-11-14 10:51:30'),
(1289, 152, 86, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1290, 152, 86, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1291, 152, 86, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1292, 152, 86, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1293, 152, 86, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1294, 152, 86, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1295, 152, 86, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1296, 152, 86, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1297, 152, 86, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1298, 152, 86, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1299, 152, 86, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1300, 152, 86, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1301, 152, 86, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1302, 152, 86, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1303, 152, 86, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1304, 152, 86, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1305, 152, 86, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1306, 152, 86, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 10:51:49', '2022-11-14 10:51:49'),
(1307, 153, 87, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1308, 153, 87, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1309, 153, 87, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1310, 153, 87, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18');
INSERT INTO `setup_programs` (`id`, `register_program_id`, `user_id`, `program_with_video_id`, `set`, `rep`, `duration`, `break`, `distance`, `exercise_no`, `sort`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1311, 153, 87, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1312, 153, 87, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1313, 153, 87, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1314, 153, 87, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1315, 153, 87, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1316, 153, 87, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1317, 153, 87, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1318, 153, 87, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1319, 153, 87, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1320, 153, 87, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1321, 153, 87, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1322, 153, 87, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1323, 153, 87, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1324, 153, 87, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 11:28:18', '2022-11-14 11:28:18'),
(1325, 154, 88, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1326, 154, 88, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1327, 154, 88, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1328, 154, 88, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1329, 154, 88, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1330, 154, 88, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1331, 154, 88, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1332, 154, 88, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1333, 154, 88, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1334, 154, 88, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1335, 154, 88, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1336, 154, 88, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1337, 154, 88, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1338, 154, 88, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1339, 154, 88, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1340, 154, 88, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1341, 154, 88, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1342, 154, 88, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 11:28:39', '2022-11-14 11:28:39'),
(1343, 155, 89, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1344, 155, 89, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1345, 155, 89, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1346, 155, 89, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1347, 155, 89, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1348, 155, 89, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1349, 155, 89, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1350, 155, 89, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1351, 155, 89, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1352, 155, 89, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1353, 155, 89, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1354, 155, 89, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1355, 155, 89, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1356, 155, 89, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1357, 155, 89, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1358, 155, 89, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1359, 155, 89, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1360, 155, 89, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 11:33:59', '2022-11-14 11:33:59'),
(1361, 156, 90, 159, '6', '2', NULL, NULL, NULL, NULL, 1, 'Week 1: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1362, 156, 90, 159, '6', '3', NULL, NULL, NULL, NULL, 2, 'Week 1: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1363, 156, 90, 159, '6', '2', NULL, NULL, NULL, NULL, 3, 'Week 1: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1364, 156, 90, 159, '6', '4', NULL, NULL, NULL, NULL, 4, 'Week 2: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1365, 156, 90, 159, '6', '2', NULL, NULL, NULL, NULL, 5, 'Week 2: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1366, 156, 90, 159, '6', '5', NULL, NULL, NULL, NULL, 6, 'Week 2: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1367, 156, 90, 159, '6', '2', NULL, NULL, NULL, NULL, 7, 'Week 3: Day 1 80% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1368, 156, 90, 159, '6', '6', NULL, NULL, NULL, NULL, 8, 'Week 3: Day 2 80% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1369, 156, 90, 159, '6', '2', NULL, NULL, NULL, NULL, 9, 'Week 3: Day 3 80% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1370, 156, 90, 159, '5', '5', NULL, NULL, NULL, NULL, 10, 'Week 4: Day 1 85% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1371, 156, 90, 159, '6', '2', NULL, NULL, NULL, NULL, 11, 'Week 4: Day 2 85% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1372, 156, 90, 159, '4', '4', NULL, NULL, NULL, NULL, 12, 'Week 4: Day 3 85% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1373, 156, 90, 159, '6', '2', NULL, NULL, NULL, NULL, 13, 'Week 5: Day 1 90% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1374, 156, 90, 159, '3', '3', NULL, NULL, NULL, NULL, 14, 'Week 5: Day 2 90% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1375, 156, 90, 159, '6', '2', NULL, NULL, NULL, NULL, 15, 'Week 5: Day 3 90% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1376, 156, 90, 159, '2', '2', NULL, NULL, NULL, NULL, 16, 'Week 6: Day 1 95% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1377, 156, 90, 159, '6', '2', NULL, NULL, NULL, NULL, 17, 'Week 6: Day 2 95% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1378, 156, 90, 159, '1', '1', NULL, NULL, NULL, NULL, 18, 'Week 6: Day 3 100% of your 1RM.', NULL, '2022-11-14 11:34:17', '2022-11-14 11:34:17'),
(1379, 157, 91, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-11-17 16:52:56', '2022-11-17 16:52:56'),
(1380, 158, 91, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(1381, 158, 91, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(1382, 158, 91, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(1383, 158, 91, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(1384, 158, 91, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(1385, 158, 91, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(1386, 158, 91, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(1387, 158, 91, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(1388, 158, 91, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-11-17 16:53:18', '2022-11-17 16:53:18'),
(1389, 159, 92, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-11-17 16:54:39', '2022-11-17 16:54:39'),
(1390, 160, 92, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(1391, 160, 92, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(1392, 160, 92, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(1393, 160, 92, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(1394, 160, 92, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(1395, 160, 92, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(1396, 160, 92, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(1397, 160, 92, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(1398, 160, 92, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-11-17 16:55:16', '2022-11-17 16:55:16'),
(1399, 161, 93, 101, '1', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-17 18:03:57', '2022-11-17 18:04:47'),
(1400, 161, 93, 104, '1', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-17 18:03:57', '2022-11-17 18:04:57'),
(1401, 161, 93, 106, '1', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-17 18:03:57', '2022-11-17 18:05:07'),
(1402, 161, 93, 112, '1', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-17 18:04:20', '2022-11-17 18:05:31'),
(1403, 161, 93, 116, '1', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-17 18:04:20', '2022-11-17 18:05:44'),
(1404, 161, 93, 117, '1', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-17 18:04:20', '2022-11-17 18:05:55'),
(1405, 162, 93, 72, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(1406, 162, 93, 120, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(1407, 162, 93, 81, '2', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(1408, 162, 93, 85, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(1409, 162, 93, 76, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(1410, 162, 93, 80, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(1411, 162, 93, 90, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(1412, 162, 93, 82, '2', '20', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(1413, 162, 93, 84, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-11-17 18:06:56', '2022-11-17 18:06:56'),
(1414, 163, 93, 93, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(1415, 163, 93, 88, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(1416, 163, 93, 78, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(1417, 163, 93, 74, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(1418, 163, 93, 86, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(1419, 163, 93, 83, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(1420, 163, 93, 100, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(1421, 163, 93, 73, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(1422, 163, 93, 87, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-11-17 18:07:13', '2022-11-17 18:07:13'),
(1423, 164, 94, 266, NULL, NULL, '10:00', NULL, NULL, NULL, NULL, 'Rolig og kontrollert oppvarming i 10 minutter.', NULL, '2022-11-18 09:38:37', '2022-11-18 09:38:37'),
(1424, 165, 94, 255, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(1425, 165, 94, 257, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(1426, 165, 94, 258, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(1427, 165, 94, 256, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(1428, 165, 94, 261, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(1429, 165, 94, 263, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(1430, 165, 94, 264, '2', '10', NULL, NULL, NULL, NULL, 7, NULL, NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(1431, 165, 94, 260, '2', '10', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(1432, 165, 94, 262, '2', '10', NULL, NULL, NULL, NULL, 9, NULL, NULL, '2022-11-18 09:38:55', '2022-11-18 09:38:55'),
(1433, 166, 80, 168, '1', NULL, '01:00', '00:30', NULL, NULL, 1, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-22 13:08:15', '2022-11-22 13:08:15'),
(1434, 166, 80, 164, '1', NULL, '01:00', '00:30', NULL, NULL, 2, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-22 13:08:15', '2022-11-22 13:08:15'),
(1435, 166, 80, 171, '1', NULL, '01:00', '00:30', NULL, NULL, 3, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-22 13:08:15', '2022-11-22 13:08:15'),
(1436, 166, 80, 167, '1', '15', NULL, NULL, NULL, NULL, 4, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-22 13:08:15', '2022-11-22 13:08:15'),
(1437, 166, 80, 170, '1', '15', NULL, NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-22 13:08:15', '2022-11-22 13:08:15'),
(1438, 166, 80, 169, '1', '15', NULL, NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-22 13:08:15', '2022-11-22 13:08:15'),
(1439, 166, 80, 166, '1', NULL, '00:30', '00:30', NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør øvelsen som vist i videoen!', NULL, '2022-11-22 13:08:15', '2022-11-22 13:08:15'),
(1440, 166, 80, 165, '1', '15', NULL, NULL, NULL, NULL, 8, NULL, NULL, '2022-11-22 13:08:15', '2022-11-22 13:08:15'),
(1441, 167, 80, 198, '1', '15', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1442, 167, 80, 205, '1', '15', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1443, 167, 80, 196, '1', '15', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1444, 167, 80, 206, '1', '15', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1445, 167, 80, 201, '2', '10', NULL, NULL, NULL, NULL, 5, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal skips for begge fødder- Husk at tænk høj frekvens.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1446, 167, 80, 200, '2', '8', NULL, NULL, NULL, NULL, 6, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal bounds for begge fødder. Husk det er vigtigt med svævefase i denne øvelse, hvilket betyder et eksplosivt afsæt fra jorden.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1447, 167, 80, 195, '1', '10', NULL, NULL, NULL, NULL, 7, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til ankle højde og med høj frekvens.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1448, 167, 80, 202, '1', '10', NULL, NULL, NULL, NULL, 8, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til midten af skindebenet og med høj frekvens.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1449, 167, 80, 199, '1', '10', NULL, NULL, NULL, NULL, 9, 'Placer to toppe med en afstand på 5 meter fra hinanden og udfør det given antal dribbles for begge fødder. Foden skal kun løftes til knæhøjde og med høj frekvens.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1450, 167, 80, 208, '7', '1', NULL, '00:30', NULL, NULL, 10, 'Løft med 90-97% af 1RM og med korte pauser mellem gentagelserne.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1451, 167, 80, 209, '3', '4', NULL, '00:30', NULL, NULL, 11, 'Kun brug stangen på denne øvelse og tænk fuld kraftudvikling. Hold kun korte pauser mellem hvert set.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1452, 167, 80, 210, '4', '6', NULL, NULL, NULL, NULL, 12, 'Gennemfør øvelse 12, og 13 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1453, 167, 80, 211, '4', '6', NULL, NULL, NULL, NULL, 13, 'Gennemfør øvelse 12, og 13 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1454, 167, 80, 212, '3', '8', NULL, NULL, NULL, NULL, 14, 'Gennemfør øvelse 14, og 15 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1455, 167, 80, 213, '3', '8', NULL, NULL, NULL, NULL, 15, 'Gennemfør øvelse 14, og 15 som et superset, hvilket betyder at du gennemføre 2 øvelser efter hinanden i henhold til de opsatte antal runder og gentagelser.', NULL, '2022-11-22 13:08:43', '2022-11-22 13:08:43'),
(1456, 168, 95, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-11-22 15:18:58', '2022-11-22 15:18:58'),
(1457, 169, 95, 120, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-22 15:19:17', '2022-11-22 15:19:17'),
(1458, 169, 95, 121, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-22 15:19:17', '2022-11-22 15:19:17'),
(1459, 169, 95, 122, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-22 15:19:17', '2022-11-22 15:19:17'),
(1460, 169, 95, 123, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-22 15:19:17', '2022-11-22 15:19:17'),
(1461, 169, 95, 124, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-22 15:19:17', '2022-11-22 15:19:17'),
(1462, 169, 95, 126, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-22 15:19:17', '2022-11-22 15:19:17'),
(1463, 170, 96, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Start med 500 m rolig roing, hvorefter der afsluttes med 10 eksplosive og 10 rolige træk af 5 runder.', NULL, '2022-11-22 15:25:27', '2022-11-22 15:25:27'),
(1464, 171, 96, 120, '2', '10', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-22 15:26:18', '2022-11-22 15:26:18'),
(1465, 171, 96, 121, '2', '10', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-11-22 15:26:18', '2022-11-22 15:26:18'),
(1466, 171, 96, 122, '2', '10', NULL, NULL, NULL, NULL, 3, NULL, NULL, '2022-11-22 15:26:18', '2022-11-22 15:26:18'),
(1467, 171, 96, 123, '2', '10', NULL, NULL, NULL, NULL, 4, NULL, NULL, '2022-11-22 15:26:18', '2022-11-22 15:26:18'),
(1468, 171, 96, 124, '2', '10', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-11-22 15:26:18', '2022-11-22 15:26:18'),
(1469, 171, 96, 126, '2', '10', NULL, NULL, NULL, NULL, 6, NULL, NULL, '2022-11-22 15:26:18', '2022-11-22 15:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `bmi` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `user_id`, `height`, `weight`, `bmi`, `created_at`, `updated_at`) VALUES
(1, 2, '1.90', '90', '25', '2022-03-24 12:09:42', '2022-07-06 06:41:46'),
(2, 4, NULL, NULL, NULL, '2022-03-24 07:38:16', '2022-03-24 07:38:16'),
(3, 7, NULL, NULL, NULL, '2022-04-18 05:48:38', '2022-04-18 05:48:38'),
(4, 15, NULL, NULL, NULL, '2022-07-05 20:39:17', '2022-07-05 20:39:17'),
(5, 18, NULL, NULL, NULL, '2022-07-05 20:39:17', '2022-07-05 20:39:17'),
(6, 20, NULL, NULL, NULL, '2022-07-23 20:19:13', '2022-07-23 20:19:13'),
(7, 29, '1.89', '67', '19', '2022-08-27 09:07:58', '2022-10-11 10:48:09'),
(8, 30, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(9, 32, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(10, 33, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(11, 34, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(12, 35, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(13, 36, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(14, 37, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(15, 38, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(16, 39, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(17, 40, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(18, 41, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(19, 42, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(20, 43, NULL, NULL, NULL, '2022-09-18 21:03:07', '2022-09-18 21:03:07'),
(21, 44, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(22, 45, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(23, 46, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(24, 47, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(25, 48, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(26, 49, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(27, 50, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(28, 51, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(29, 52, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(30, 53, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(31, 60, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(32, 61, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(33, 68, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(34, 69, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(35, 71, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(36, 72, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(37, 73, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(38, 74, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(39, 75, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(40, 76, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(41, 77, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(42, 78, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(43, 79, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(44, 80, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(45, 81, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(46, 82, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(47, 83, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(48, 84, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(49, 85, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(50, 86, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(51, 87, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(52, 88, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(53, 89, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(54, 90, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(55, 91, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(56, 92, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(57, 93, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(58, 94, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(59, 95, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17'),
(60, 96, NULL, NULL, NULL, '2022-11-24 11:54:17', '2022-11-24 11:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `stats3d_screenings`
--

CREATE TABLE `stats3d_screenings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `fpi1h` varchar(50) DEFAULT NULL,
  `fpi1v` varchar(50) DEFAULT NULL,
  `fpi2h` varchar(50) DEFAULT NULL,
  `fpi2v` varchar(50) DEFAULT NULL,
  `fpi3h` varchar(50) DEFAULT NULL,
  `fpi3v` varchar(50) DEFAULT NULL,
  `fpi4h` varchar(50) DEFAULT NULL,
  `fpi4v` varchar(50) DEFAULT NULL,
  `fpi5h` varchar(50) DEFAULT NULL,
  `fpi5v` varchar(50) DEFAULT NULL,
  `fpi6h` varchar(50) DEFAULT NULL,
  `fpi6v` varchar(50) DEFAULT NULL,
  `irh` varchar(50) DEFAULT NULL,
  `irv` varchar(50) DEFAULT NULL,
  `erh` varchar(50) DEFAULT NULL,
  `erv` varchar(50) DEFAULT NULL,
  `addh` varchar(50) DEFAULT NULL,
  `addv` varchar(50) DEFAULT NULL,
  `abdh` varchar(50) DEFAULT NULL,
  `abdv` varchar(50) DEFAULT NULL,
  `eksh` varchar(50) DEFAULT NULL,
  `eksv` varchar(50) DEFAULT NULL,
  `flekh` varchar(50) DEFAULT NULL,
  `flekv` varchar(50) DEFAULT NULL,
  `rotbh` varchar(50) DEFAULT NULL,
  `rotbv` varchar(50) DEFAULT NULL,
  `latbh` varchar(50) DEFAULT NULL,
  `latbv` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stats3d_screenings`
--

INSERT INTO `stats3d_screenings` (`id`, `user_id`, `status`, `fpi1h`, `fpi1v`, `fpi2h`, `fpi2v`, `fpi3h`, `fpi3v`, `fpi4h`, `fpi4v`, `fpi5h`, `fpi5v`, `fpi6h`, `fpi6v`, `irh`, `irv`, `erh`, `erv`, `addh`, `addv`, `abdh`, `abdv`, `eksh`, `eksv`, `flekh`, `flekv`, `rotbh`, `rotbv`, `latbh`, `latbv`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'pre', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '2022-07-11 21:12:23', '2022-03-28 13:27:16', '2022-07-11 21:12:23'),
(2, 2, 'mail', '11', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28.5', '2022-07-11 20:09:31', '2022-03-28 10:08:40', '2022-07-11 20:09:31'),
(3, 2, 'post', '22', '4', '3', '2', '4', '4', '4', '4', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '2', '4', '4', '4', '2', NULL, '2022-07-11 20:10:09', '2022-07-11 20:10:09'),
(4, 2, 'pre', '2', '2', '0', '0', '2', '0', '5', '5', '5', '5', '5', '5', '5', '3', NULL, '6', '5', '55', '23', '1', '5', '7', '5', '8', '4', '9', '3', '2', NULL, '2022-07-11 21:09:02', '2022-07-11 21:09:02'),
(5, 2, 'pre', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', NULL, '2022-07-11 21:09:24', '2022-07-11 21:09:24'),
(6, 2, 'pre', '3', '3', NULL, '3', '3', '31213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 05:49:51', '2022-07-15 12:49:58', '2022-07-18 05:49:51'),
(7, 2, 'mid', 'Voluptas ut est proi', 'Sunt laudantium nih', 'Voluptatum ad offici', 'Velit ut ut velit e', 'Dolores impedit eli', 'In dicta tempora lib', 'Et irure nulla iusto', 'Non velit quo qui ul', 'Sint quo fugit eum', 'Voluptatem reprehend', 'Dolor corporis ad qu', 'Ea amet anim volupt', 'Placeat vero aut sa', 'Quas beatae exercita', 'Culpa nobis volupta', 'Consectetur amet ex', 'Consequuntur dolor r', 'Quaerat anim asperio', 'Voluptas excepturi l', 'Eiusmod eius quia qu', 'Voluptas corrupti c', 'Est ullam perferendi', 'Consectetur molesti', 'Praesentium illum c', 'Dolore quas atque co', 'Quia in voluptas per', 'Quisquam deleniti et', 'Dolores voluptas est', '2022-07-18 05:48:59', '2022-07-18 05:48:48', '2022-07-18 05:48:59'),
(8, 2, 'pre', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2022-07-19 19:35:54', '2022-07-19 19:32:10', '2022-07-19 19:35:54'),
(9, 2, 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 19:41:14', '2022-07-19 19:37:29', '2022-07-19 19:41:14'),
(10, 2, 'pre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:46:35', '2022-07-23 20:38:07', '2022-08-05 06:46:35'),
(11, 29, 'pre', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '2022-08-27 09:46:36', '2022-08-27 09:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `stats_questions`
--

CREATE TABLE `stats_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stats_questions`
--

INSERT INTO `stats_questions` (`id`, `user_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 2, 'pre', NULL, '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(4, 2, 'post', '2022-07-26 12:09:24', '2022-07-11 21:16:55', '2022-07-26 12:09:24'),
(5, 2, 'post', '2022-07-18 15:55:39', '2022-07-18 05:52:02', '2022-07-18 05:52:02'),
(6, 18, 'pre', '2022-07-19 20:08:57', '2022-07-19 20:01:07', '2022-07-19 20:08:57'),
(7, 2, 'pre', '2022-07-23 20:42:41', '2022-07-23 20:41:16', '2022-07-23 20:42:41'),
(8, 2, 'post', '2022-07-25 09:53:19', '2022-07-25 09:53:07', '2022-07-25 09:53:19'),
(9, 2, 'pre', '2022-07-26 22:06:02', '2022-07-26 22:05:55', '2022-07-26 22:06:02'),
(10, 2, 'post', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(11, 4, 'pre', '2022-10-06 08:47:52', '2022-10-05 04:54:05', '2022-10-06 08:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `stats_question_values`
--

CREATE TABLE `stats_question_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stats_question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_no` varchar(50) DEFAULT NULL COMMENT 'Ques like Q1,Q2..Q32',
  `question_value` varchar(50) DEFAULT NULL COMMENT 'Ques value',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stats_question_values`
--

INSERT INTO `stats_question_values` (`id`, `stats_question_id`, `question_no`, `question_value`, `created_at`, `updated_at`) VALUES
(1, 3, 'q1', '1', '2022-04-18 06:05:44', '2022-06-10 17:51:29'),
(2, 3, 'q2', '22', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(3, 3, 'q3', '33', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(4, 3, 'q4', '44', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(5, 3, 'q5', '55', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(6, 3, 'q6', '66', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(7, 3, 'q7', '77', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(8, 3, 'q8', '88', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(9, 3, 'q9', '99', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(10, 3, 'q10', '010', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(11, 3, 'q11', '011', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(12, 3, 'q12', '012', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(13, 3, 'q13', '013', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(14, 3, 'q14', '014', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(15, 3, 'q15', '015', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(16, 3, 'q16', '016', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(17, 3, 'q17', '017', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(18, 3, 'q18', '018', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(19, 3, 'q19', '019', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(20, 3, 'q20', '020', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(21, 3, 'q21', '021', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(22, 3, 'q22', '022', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(23, 3, 'q23', '023', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(24, 3, 'q24', '024', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(25, 3, 'q25', '025', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(26, 3, 'q26', '026', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(27, 3, 'q27', '027', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(28, 3, 'q28', '028', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(29, 3, 'q29', '029', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(30, 3, 'q30', '030', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(31, 3, 'q31', '031', '2022-04-18 06:05:44', '2022-04-18 06:05:44'),
(32, 3, 'q32', '1', '2022-04-18 06:05:44', '2022-06-10 17:51:01'),
(33, 4, 'q1', '2', '2022-07-11 21:16:55', '2022-07-15 12:49:35'),
(34, 4, 'q2', '3', '2022-07-11 21:16:55', '2022-07-15 12:49:35'),
(35, 4, 'q3', '4', '2022-07-11 21:16:55', '2022-07-15 12:49:35'),
(36, 4, 'q4', '4', '2022-07-11 21:16:55', '2022-07-15 12:49:35'),
(37, 4, 'q5', '5', '2022-07-11 21:16:55', '2022-07-15 12:49:35'),
(38, 4, 'q6', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(39, 4, 'q7', '6', '2022-07-11 21:16:55', '2022-07-15 12:49:35'),
(40, 4, 'q8', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(41, 4, 'q9', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(42, 4, 'q10', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(43, 4, 'q11', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(44, 4, 'q12', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(45, 4, 'q13', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(46, 4, 'q14', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(47, 4, 'q15', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(48, 4, 'q16', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(49, 4, 'q17', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(50, 4, 'q18', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(51, 4, 'q19', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(52, 4, 'q20', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(53, 4, 'q21', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(54, 4, 'q22', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(55, 4, 'q23', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(56, 4, 'q24', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(57, 4, 'q25', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(58, 4, 'q26', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(59, 4, 'q27', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(60, 4, 'q28', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(61, 4, 'q29', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(62, 4, 'q30', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(63, 4, 'q31', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(64, 4, 'q32', NULL, '2022-07-11 21:16:55', '2022-07-11 21:16:55'),
(65, 5, 'q1', 'Eu nobis molestias q', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(66, 5, 'q2', 'Anim ipsam provident', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(67, 5, 'q3', 'Error dolor id verit', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(68, 5, 'q4', 'Aut enim nulla labor', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(69, 5, 'q5', 'Aute officia minim e', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(70, 5, 'q6', 'Ipsam sed cillum rem', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(71, 5, 'q7', 'Quae nobis irure sin', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(72, 5, 'q8', 'Totam voluptas qui u', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(73, 5, 'q9', 'Quis aperiam omnis m', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(74, 5, 'q10', 'Eos quas magnam con', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(75, 5, 'q11', 'Impedit sit quia ea', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(76, 5, 'q12', 'Est molestiae corpor', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(77, 5, 'q13', 'Facere nulla quia ve', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(78, 5, 'q14', 'Eum voluptatem asper', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(79, 5, 'q15', 'Expedita tenetur eni', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(80, 5, 'q16', 'In illo sint esse t', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(81, 5, 'q17', 'Omnis voluptatum ab', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(82, 5, 'q18', 'Eum eaque laborum L', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(83, 5, 'q19', 'Sed animi earum omn', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(84, 5, 'q20', 'Iure minus nesciunt', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(85, 5, 'q21', 'Voluptatibus quos au', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(86, 5, 'q22', 'Harum dolore dolorem', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(87, 5, 'q23', 'Reprehenderit et el', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(88, 5, 'q24', 'Consectetur est do', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(89, 5, 'q25', 'Iusto praesentium su', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(90, 5, 'q26', 'Eiusmod ut labore as', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(91, 5, 'q27', 'Deleniti tempor offi', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(92, 5, 'q28', 'Facilis cum atque in', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(93, 5, 'q29', 'Aut blanditiis iure', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(94, 5, 'q30', 'Pariatur Doloremque', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(95, 5, 'q31', 'Laudantium voluptat', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(96, 5, 'q32', 'Ipsum aut nesciunt', '2022-07-18 05:52:03', '2022-07-18 05:52:03'),
(97, 6, 'q1', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(98, 6, 'q2', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(99, 6, 'q3', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(100, 6, 'q4', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(101, 6, 'q5', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(102, 6, 'q6', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(103, 6, 'q7', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(104, 6, 'q8', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(105, 6, 'q9', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(106, 6, 'q10', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(107, 6, 'q11', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(108, 6, 'q12', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(109, 6, 'q13', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(110, 6, 'q14', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(111, 6, 'q15', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(112, 6, 'q16', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(113, 6, 'q17', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(114, 6, 'q18', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(115, 6, 'q19', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(116, 6, 'q20', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(117, 6, 'q21', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(118, 6, 'q22', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(119, 6, 'q23', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(120, 6, 'q24', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(121, 6, 'q25', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(122, 6, 'q26', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(123, 6, 'q27', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(124, 6, 'q28', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(125, 6, 'q29', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(126, 6, 'q30', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(127, 6, 'q31', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(128, 6, 'q32', NULL, '2022-07-19 20:01:07', '2022-07-19 20:01:07'),
(129, 7, 'q1', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(130, 7, 'q2', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(131, 7, 'q3', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(132, 7, 'q4', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(133, 7, 'q5', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(134, 7, 'q6', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(135, 7, 'q7', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(136, 7, 'q8', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(137, 7, 'q9', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(138, 7, 'q10', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(139, 7, 'q11', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(140, 7, 'q12', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(141, 7, 'q13', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(142, 7, 'q14', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(143, 7, 'q15', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(144, 7, 'q16', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(145, 7, 'q17', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(146, 7, 'q18', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(147, 7, 'q19', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(148, 7, 'q20', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(149, 7, 'q21', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(150, 7, 'q22', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(151, 7, 'q23', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(152, 7, 'q24', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(153, 7, 'q25', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(154, 7, 'q26', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(155, 7, 'q27', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(156, 7, 'q28', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(157, 7, 'q29', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(158, 7, 'q30', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(159, 7, 'q31', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(160, 7, 'q32', NULL, '2022-07-23 20:41:16', '2022-07-23 20:41:16'),
(161, 8, 'q1', '1', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(162, 8, 'q2', '1', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(163, 8, 'q3', '2', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(164, 8, 'q4', '5', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(165, 8, 'q5', '22', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(166, 8, 'q6', '2', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(167, 8, 'q7', '5', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(168, 8, 'q8', '5', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(169, 8, 'q9', '2', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(170, 8, 'q10', '5', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(171, 8, 'q11', '2', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(172, 8, 'q12', '4', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(173, 8, 'q13', '4', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(174, 8, 'q14', NULL, '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(175, 8, 'q15', '8', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(176, 8, 'q16', NULL, '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(177, 8, 'q17', '4', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(178, 8, 'q18', '5', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(179, 8, 'q19', '84', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(180, 8, 'q20', '5', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(181, 8, 'q21', NULL, '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(182, 8, 'q22', '4', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(183, 8, 'q23', '4', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(184, 8, 'q24', '84', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(185, 8, 'q25', '84', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(186, 8, 'q26', '84', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(187, 8, 'q27', '84', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(188, 8, 'q28', '84', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(189, 8, 'q29', '84', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(190, 8, 'q30', '99', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(191, 8, 'q31', '994', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(192, 8, 'q32', '9', '2022-07-25 09:53:07', '2022-07-25 09:53:07'),
(193, 9, 'q1', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(194, 9, 'q2', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(195, 9, 'q3', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(196, 9, 'q4', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(197, 9, 'q5', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(198, 9, 'q6', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(199, 9, 'q7', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(200, 9, 'q8', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(201, 9, 'q9', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(202, 9, 'q10', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(203, 9, 'q11', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(204, 9, 'q12', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(205, 9, 'q13', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(206, 9, 'q14', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(207, 9, 'q15', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(208, 9, 'q16', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(209, 9, 'q17', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(210, 9, 'q18', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(211, 9, 'q19', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(212, 9, 'q20', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(213, 9, 'q21', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(214, 9, 'q22', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(215, 9, 'q23', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(216, 9, 'q24', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(217, 9, 'q25', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(218, 9, 'q26', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(219, 9, 'q27', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(220, 9, 'q28', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(221, 9, 'q29', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(222, 9, 'q30', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(223, 9, 'q31', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(224, 9, 'q32', NULL, '2022-07-26 22:05:55', '2022-07-26 22:05:55'),
(225, 10, 'q1', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(226, 10, 'q2', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(227, 10, 'q3', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(228, 10, 'q4', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(229, 10, 'q5', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(230, 10, 'q6', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(231, 10, 'q7', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(232, 10, 'q8', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(233, 10, 'q9', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(234, 10, 'q10', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(235, 10, 'q11', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(236, 10, 'q12', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(237, 10, 'q13', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(238, 10, 'q14', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(239, 10, 'q15', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(240, 10, 'q16', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(241, 10, 'q17', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(242, 10, 'q18', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(243, 10, 'q19', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(244, 10, 'q20', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(245, 10, 'q21', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(246, 10, 'q22', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(247, 10, 'q23', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(248, 10, 'q24', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(249, 10, 'q25', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(250, 10, 'q26', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(251, 10, 'q27', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(252, 10, 'q28', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(253, 10, 'q29', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(254, 10, 'q30', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(255, 10, 'q31', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(256, 10, 'q32', NULL, '2022-08-12 19:44:40', '2022-08-12 19:44:40'),
(257, 11, 'q1', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(258, 11, 'q2', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(259, 11, 'q3', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(260, 11, 'q4', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(261, 11, 'q5', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(262, 11, 'q6', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(263, 11, 'q7', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(264, 11, 'q8', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(265, 11, 'q9', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(266, 11, 'q10', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(267, 11, 'q11', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(268, 11, 'q12', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(269, 11, 'q13', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(270, 11, 'q14', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(271, 11, 'q15', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(272, 11, 'q16', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(273, 11, 'q17', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(274, 11, 'q18', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(275, 11, 'q19', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(276, 11, 'q20', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(277, 11, 'q21', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(278, 11, 'q22', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(279, 11, 'q23', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(280, 11, 'q24', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(281, 11, 'q25', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(282, 11, 'q26', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(283, 11, 'q27', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(284, 11, 'q28', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(285, 11, 'q29', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(286, 11, 'q30', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(287, 11, 'q31', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05'),
(288, 11, 'q32', '10000', '2022-10-05 04:54:05', '2022-10-05 04:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `stats_testers`
--

CREATE TABLE `stats_testers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `step_test_time` varchar(50) DEFAULT NULL,
  `step_test_count` varchar(50) DEFAULT NULL,
  `bicycle_time` varchar(50) DEFAULT NULL,
  `bicycle_dist` varchar(50) DEFAULT NULL,
  `cooperes_dist` varchar(50) DEFAULT NULL,
  `cooperes_count` varchar(50) DEFAULT NULL,
  `cooperes_time` varchar(50) DEFAULT NULL,
  `funk_strength` varchar(50) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stats_testers`
--

INSERT INTO `stats_testers` (`id`, `user_id`, `status`, `step_test_time`, `step_test_count`, `bicycle_time`, `bicycle_dist`, `cooperes_dist`, `cooperes_count`, `cooperes_time`, `funk_strength`, `comments`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'pre', '1', '2', '3', '4', '5', '6', '7', '8', 'some text 9 ', NULL, '2022-03-28 08:25:20', '2022-03-28 08:25:20'),
(2, 2, 'pre', '11', '22', '33', '44', '66', '77', '88', '55', 'some text 99 updated', NULL, '2022-03-28 05:14:47', '2022-03-28 05:24:42'),
(3, 2, 'post', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2022-07-11 21:02:25', '2022-07-11 20:58:48', '2022-07-11 21:02:25'),
(4, 2, 'post', 'Ut eveniet voluptat', 'Sit aperiam dolorum', 'Consequat Cumque au', 'Possimus nostrud et', 'Similique esse nobis', 'Eu aute quis aut non', 'Vero totam occaecat', 'Modi sint quia incid', 'Obcaecati laudantium', '2022-07-18 15:59:26', '2022-07-18 05:40:18', '2022-07-18 05:40:18'),
(5, 2, 'mid', '10', '20', '29', '29', '23', '38', '23', '20', 'dhs', NULL, '2022-07-18 05:40:50', '2022-07-19 19:27:38'),
(6, 2, 'pre', '3', '3', '23', '3', NULL, NULL, NULL, '3', NULL, '2022-07-19 19:27:04', '2022-07-19 19:26:48', '2022-07-19 19:27:04'),
(7, 2, 'pre', '2', '2', '2', '2', '2', '2', '2', '2', '2', NULL, '2022-07-19 19:28:36', '2022-07-19 19:28:36'),
(8, 2, 'mid', '12', '16', '92', '81', '74', '39', '34', '59', 'Officiis consectetur', NULL, '2022-07-27 05:27:20', '2022-07-27 05:27:20'),
(9, 2, 'mid', '30', '8', '44', '51', '93', '34', '86', '43', 'Unde laboriosam ut', '2022-07-27 05:27:47', '2022-07-27 05:27:35', '2022-07-27 05:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_status` varchar(255) NOT NULL,
  `stripe_price` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subscription_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_price`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`, `subscription_ends_at`) VALUES
(1, 2, 'default', 'sub_1LNeEGFC9zDwzih7aFmRe02Q', 'active', 'price_1LNeD9FC9zDwzih7SDvp0CIs', 1, NULL, NULL, '2022-07-20 12:50:28', '2022-07-20 12:50:28', NULL),
(2, 2, 'default', 'sub_1LS08mFC9zDwzih70lR3G0xk', 'active', 'price_1LNeD9FC9zDwzih7SDvp0CIs', 1, NULL, '2022-09-01 13:02:44', '2022-08-01 13:02:48', '2022-08-21 21:36:14', '2022-09-01 01:02:48'),
(3, 60, 'default', 'sub_1M7JwSFC9zDwzih7dfGdtip9', 'active', 'plan_MoOvUy0JaLWixx', 1, NULL, NULL, '2022-11-23 13:28:50', '2022-11-23 13:28:50', '2022-12-23 01:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_product` varchar(255) NOT NULL,
  `stripe_price` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_items`
--

INSERT INTO `subscription_items` (`id`, `subscription_id`, `stripe_id`, `stripe_product`, `stripe_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 'si_M5puJn71nbXiEJ', 'prod_M5psOT1bPbM8nY', 'price_1LNeD9FC9zDwzih7SDvp0CIs', 1, '2022-07-20 12:50:28', '2022-07-20 12:50:28'),
(2, 2, 'si_MAKo7gE4lZ6aDk', 'prod_M5psOT1bPbM8nY', 'price_1LNeD9FC9zDwzih7SDvp0CIs', 1, '2022-08-01 13:02:48', '2022-08-01 13:02:48'),
(3, 3, 'si_Mr20vQnfpwoOdZ', 'prod_MoOvOPyhrQhvgN', 'plan_MoOvUy0JaLWixx', 1, '2022-11-23 13:28:50', '2022-11-23 13:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text DEFAULT NULL,
  `postnr` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `profession_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `case_manager_id` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `right_left` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `cut` int(11) DEFAULT NULL,
  `center` int(11) DEFAULT NULL,
  `ab_rest_dager` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 0,
  `statistics` tinyint(4) DEFAULT 0,
  `pt_customer` tinyint(4) DEFAULT 0,
  `consent` tinyint(4) DEFAULT 0,
  `utv_adr_info` tinyint(4) DEFAULT 0,
  `self_reg` tinyint(4) DEFAULT 0,
  `aft` tinyint(4) DEFAULT 0,
  `note` text DEFAULT NULL,
  `maxHeartRate` varchar(150) DEFAULT NULL,
  `fat` varchar(150) DEFAULT NULL,
  `position` varchar(150) DEFAULT NULL,
  `foretrukket` varchar(150) DEFAULT NULL,
  `Journal` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `address`, `postnr`, `city`, `dob`, `telephone`, `profession_id`, `group_id`, `type_id`, `case_manager_id`, `gender`, `right_left`, `level`, `age`, `cut`, `center`, `ab_rest_dager`, `is_active`, `statistics`, `pt_customer`, `consent`, `utv_adr_info`, `self_reg`, `aft`, `note`, `maxHeartRate`, `fat`, `position`, `foretrukket`, `Journal`, `deleted_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'Admin', 'admin@test.com', 'admin', NULL, '$2y$10$ceeyO7mETRoNe.f9LnWLjO/m4bmGai9WGmW0h265e8uPeRb2snRvO', NULL, '2022-02-18 02:25:04', '2022-09-16 08:17:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Lasse Lassen', 'user1@test.com', 'user1', NULL, '$2y$10$YXid21JLjjko9uGy7kHBbezb2IeWsmi4DnxNFrN5.T5D8cGrPsD4.', NULL, '2022-02-18 02:25:04', '2022-08-27 08:32:27', 'test Address', '7227', 'new', '1985-04-03', '03123456789', 1, 5, 2, '1', 'male', 'right', 2, '23', NULL, 1, NULL, 1, 1, 1, 1, 1, 0, 1, NULL, '24', '23', 'Målvakt', 'Høyre', NULL, '2022-08-27 08:32:27', 'cus_MAKnEVLiGfNc5M', 'visa', '1111', NULL),
(4, 'user 2', 'dowag52485@ishyp.com', 'demo1user', NULL, '$2y$10$z1C6BS6NGPEl6ZPMb16YdeE8BJJhHg7N4ytquTbTdwFLCQ0ii3vR.', 'paz4R2I47MePJJ09KldeWgSQZr13rEal3s2opCqz3wiPnPnRdSy678G6rN4Q', '2022-03-09 05:59:19', '2022-10-19 17:36:18', '511 Main street', 'demo postnr', 'Fayetteville', '1992-03-09', '0987654321', 1, 4, 2, '2', 'male', 'left', 2, '30', 4, 1, 5, 1, 1, 1, 1, 0, 0, 1, 'some note text.........', NULL, NULL, NULL, NULL, 'SOME journal text......', '2022-10-19 17:36:18', NULL, NULL, NULL, NULL),
(5, 'Lasse Lassen', 'lasse@ssa.no', 'Lasselassen', NULL, '$2y$10$r3mo2DHTNc3hMZQEje8D.ugQt.sQ5EUw44eUWEyvpYNeSjkVDKJ3u', 'pmqL0hTHiPjW0DQyIcutX2xiDPyPw7qC7QGlgqZQalqmjSH4NBrnInxKtY31', '2022-03-21 11:25:58', '2022-08-29 13:38:54', NULL, NULL, NULL, NULL, '46343144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Coach two', 'coachtwo@ssa.com', 'coach-two', NULL, '$2y$10$BCgXy7MsEcoyPaRVJqByBuCMudlq.BbeiaJh7IIcO/PI6RhVPJcpK', NULL, '2022-03-22 00:51:01', '2022-04-26 00:07:16', NULL, NULL, NULL, NULL, '321645987', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-26 00:07:16', NULL, NULL, NULL, NULL),
(7, 'user3', 'rajobo5220@lutota.com', 'user3', NULL, '$2y$10$Z6ud8w61.3ohzEZsIQ0eROG0Bgjwoyx6Bp1Wf.l/PI6BmLCKwNcXi', NULL, '2022-04-08 04:09:54', '2022-10-19 17:36:25', 'test', 'test', 'test', '2022-04-15', '12313123123', 1, 5, 2, '2', 'male', '1', 2, '22', 1, 1, 2, 1, 1, 1, 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, '33', '2022-10-19 17:36:25', NULL, NULL, NULL, NULL),
(9, 'coach three', 'coachthree@test.com', 'coachthree', NULL, '$2y$10$./7uhBRdTH08jMjY8y63h.PpfZJVq7cEK18K0/bzGoo8sJ6nFkHPW', NULL, '2022-04-26 03:18:00', '2022-05-03 05:25:32', NULL, NULL, NULL, NULL, '13123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-03 05:25:32', NULL, NULL, NULL, NULL),
(10, 'Rune Asp', 'rune@ssa.no', 'Runeasp', NULL, '$2y$10$sADYOnsVZ19jXVI4J3WaYuCNjoJS50cNzMnJqBsi0mIifToxSvI3G', 'OL9cEoZE8Z5mJjIUdLBz9txJLHHTzuWqFF84GpQpBNV0d4ukIWoEfJnmYrSl', '2022-05-16 05:11:30', '2022-07-03 07:41:46', NULL, NULL, NULL, NULL, '90931371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 07:41:46', NULL, NULL, NULL, NULL),
(11, 'Ruben', 'mr.kristiansen@hotmail.com', 'Ruben', NULL, '$2y$10$etmB1PHBlpcKQ6Egk90eYeqR8QlClCwseAi4M4vqZnB1lwPbZC.n.', '7MbVt2v6RkBTreE9Z88yfbQfcZ5mwvF9iaNvt3LChx6As5JAA76HhsxPgvO1', '2022-07-03 17:51:18', '2022-11-14 15:06:37', NULL, NULL, NULL, NULL, '95034266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 15:06:37', NULL, NULL, NULL, NULL),
(15, 'Ruben', 'mr.krissddtiansen@hotmail.com', 'Rub', NULL, '$2y$10$DsdJ5xcAhYr5P1Vh1f1QjOBfkW8YJGeSdTX20Tr4k1LbpgrxFQOC2', NULL, '2022-07-03 19:55:19', '2022-08-27 08:33:00', 'asdasd', '1334', 'asdads', '2017-06-13', '2323332', 1, 5, 1, NULL, 'male', '0', 1, '24', NULL, 1, NULL, 1, 1, 1, 0, 0, 0, 0, 'asda', NULL, NULL, NULL, NULL, 'asdds', '2022-08-27 08:33:00', NULL, NULL, NULL, NULL),
(16, 'Ruben1-test', 'rubentest@hotmail.com', 'Rubentesttest', NULL, '$2y$10$J4U1ydqfzdVkvdOWqhP7J.AkpMzGSSMRnrPXLqWrloSXEhCitw8TO', NULL, '2022-07-04 21:22:00', '2022-07-05 18:30:15', 'test2', '1234', 'test2', '2022-07-03', '12345667', 1, 5, 1, NULL, 'male', '0', 1, '23', NULL, 1, NULL, 1, 1, 1, 0, 0, 0, 0, 'wewe', NULL, NULL, NULL, NULL, 'asdasd', '2022-07-05 18:30:15', NULL, NULL, NULL, NULL),
(17, 'Jesper Iversen', 'jesper@ssa.no', 'Jesperiversen', NULL, '$2y$10$gpzPWj/cK/nJCa3lrAr.i.Z.f9Shs9Vu8OQfQon8QqCvPgCVVeCzm', 'QVubaZ7nSBmJArQwSEs9NqiqecjIM9tW2Yb6BrdKL1oCRnPeQqtn29rvyswC', '2022-07-05 13:11:04', '2022-07-05 13:11:04', NULL, NULL, NULL, NULL, '46515101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'test3', 'test3@hotmail.com', 'test3', NULL, '$2y$10$SaA/Vyl4MDyAe1iqYPR4i.z94mbnxjVUCYZX4ubMp38kvGQ/6sNh.', NULL, '2022-07-05 18:33:31', '2022-08-27 08:32:47', 'test3', '3333', 'test3', '2022-07-04', '42424', 1, 5, 2, NULL, 'male', 'right', 1, '23', NULL, 1, NULL, 1, 1, 0, 0, 0, 0, 0, '23', NULL, NULL, NULL, NULL, 'test', '2022-08-27 08:32:47', NULL, NULL, NULL, NULL),
(19, 'tests', 'rubentsssest@hotmail.com', 'test', NULL, '$2y$10$NVWvhW3jUKDyI8zcv4893OWh1CgTnh8RYt93Mg93FK2Yauooe/EdO', NULL, '2022-07-08 21:06:30', '2022-07-08 21:07:08', 'resadasd', '3234', 'asda', '2022-07-03', '342423423424', 1, 5, 1, NULL, 'male', '0', 1, '42', NULL, 1, NULL, 1, 1, 1, 0, 0, 0, 0, 'dsadas', NULL, NULL, NULL, NULL, 'asdasd', '2022-07-08 21:07:08', NULL, NULL, NULL, NULL),
(20, 'Ola Normann', 'test@hotmail.com', 'test24', NULL, '$2y$10$hR6WVvXvnsum.hJu44KwxuxIYIynC4Q2H4bKJkIeV047B1469/Vr2', NULL, '2022-07-18 21:11:16', '2022-08-06 05:53:08', 'test', '123', 'test', '2022-07-12', '1233', 1, 5, 1, NULL, 'male', 'right', 1, '21', NULL, 1, NULL, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-06 05:53:08', NULL, NULL, NULL, NULL),
(22, 'test', 'tessst@hotmail.com', 'test2222', NULL, '$2y$10$D7KWYPIp/JKwz.pnj8xeTeBn/V.eCyxx.wxDPGPWU2qoD24lticuy', NULL, '2022-07-19 16:45:07', '2022-07-19 16:51:41', NULL, NULL, NULL, NULL, '2433342424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 16:51:41', NULL, NULL, NULL, NULL),
(23, 'ruben-test', 'tesrt@test.no', 'tester132', NULL, '$2y$10$8K5AadWmwqs7zty5Pagvh.dfF5udytEoUDgw5TQ69FGqA0GEhtNZq', NULL, '2022-07-19 18:19:57', '2022-07-19 18:20:45', 'test', '2321', 'test', '2022-07-05', '2323', 1, 5, 1, NULL, 'male', '0', 1, '23', NULL, 1, NULL, 1, 1, 0, 0, 0, 0, 0, 'sdads', NULL, NULL, NULL, NULL, 'asdasd', '2022-07-19 18:20:45', NULL, NULL, NULL, NULL),
(26, 'test', 'test@hotmailcssea.com', 'asdadfsgdsf', NULL, '$2y$10$xUX2WJKbU4YR19y5rq9J2OiQMnVA4goRseX1AzRfabXm.2SOaKFJ2', NULL, '2022-07-22 21:39:38', '2022-07-22 21:39:58', NULL, NULL, NULL, NULL, '242414124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-22 21:39:58', NULL, NULL, NULL, NULL),
(27, 'Amelia Kolstad', 'amelia@ssa.no', 'Ameliakolstad', NULL, '$2y$10$l6cB/QdSU2U3vhtMbe5Bq.xRpR6NOrgJt47PKRKHetXPr3cFg3mn6', NULL, '2022-08-18 13:17:33', '2022-08-29 13:38:31', NULL, NULL, NULL, NULL, '98334734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Ståle Kvaran', 'stale@ssa.no', 'Ståle Kvaran', NULL, '$2y$10$2cwqGsdwu8aaa6M2.dMnMe5hDHnlTmoKSINGw8Jal6oIkj7KyqDkm', 'fJ66E6RK2oqoQWEJVfxY5bfQVc1s0nasu5PSinYpB0TGBDPnCedhvY20UHsK', '2022-08-27 08:30:30', '2022-08-31 05:46:54', NULL, NULL, NULL, NULL, '95306301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Lasse Lassen', 'lasselassen@yahoo.dk', 'lasselassen@yahoo.dk', NULL, '$2y$10$n9Cgs93YCSafLGBzw96j.eISUDvlyVu.egxzN1yMVQEcfBpxTZud2', NULL, '2022-08-27 08:39:17', '2022-10-22 07:36:30', 'Årfallvegen 24', '7670', 'Inderøy', '1982-07-03', '46343144', 7, 5, 9, NULL, 'male', 'right', 2, '40', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', 'Høyre', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Carmen Otnæs', 'carmenalexandra@hotmail.com', 'Carmenotnæs', NULL, '$2y$10$iDPzbU/ZfUEV0k5UNxEcx.rzGV0K69MZgpqg0NoDlNzOu9JhSt/vO', 'vDMcEmd6yi9mr0NMPKY9JfVB1XvqfITEzRn7iuZhrYFknK7pR1AyTwc9GC87', '2022-08-29 09:57:44', '2022-09-18 20:58:59', 'Hervikmarka 39', '7714', 'Steinkjer', '2007-05-20', '41629075', 7, 5, 10, NULL, 'male', 'right', 2, '15', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, 'Sygdom: Ingenting\r\nMålsætning: Holde sig i form. Elsker styrketræning, samt ønsker lidt cardiotræning. \r\nAntal: 3 gange ugentligt.', NULL, NULL, 'Forsvarspiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'test22', 'test22@hotmail.com', 'test22', NULL, '$2y$10$pOy6JguC3mPwa3x7vXyySO/qBL1twC7arXtu.zUoW2M9IqdBl/ep.', NULL, '2022-08-29 23:47:45', '2022-10-19 17:36:33', 'test', '4312', 'test', '2022-08-15', '12345', 7, 5, 2, NULL, 'male', 'right', 1, '11', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, 'test', NULL, NULL, NULL, NULL, 'test', '2022-10-19 17:36:33', NULL, NULL, NULL, NULL),
(33, 'Wenche Sundseth', 'wenche@ntebb.no', 'Wenchesundseth', NULL, '$2y$10$eIDj7tZp1SGGVRGmw7NGHeHCAcmBEXdsRFFXORaGWHFoVzJJTu3g2', 'gOlUxCyZJkUFwA8pMcg8TgWlKDrEh7EgSBnU6L6gQ97aH8TttSB4uaswtUpa', '2022-08-31 06:03:14', '2022-08-31 06:16:14', 'Slalomsvingen 37', '7715', 'Steinkjer', '1970-03-07', '92682799', 7, 5, 11, NULL, 'male', 'right', 2, '52', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, 'Læge: OK\r\nMålsætning: Bevare styrken iom. hun har en del tyngere løft i gennem hverdagen. \r\nAntal: 2 gange pr. uge.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Anja Smestad', 'anja.sme@gmail.com', 'Anjasmestad', NULL, '$2y$10$TJgfxOl.T7p0YxpJidd7suLgpraNaWwCYvy5IRrWoqvk/uFlWS6nS', 'ZqeT6g1pcCUkJAeHQiv2ys0SW6NJz2eWxCaevPXWldmKnZw5ZBPA1O43CtRC', '2022-08-31 09:05:11', '2022-08-31 09:06:32', 'Heggevegen 3', '7715', 'Steinkjer', '1985-07-31', '97100035', 11, 5, 11, NULL, 'female', 'right', 1, '37', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Camilla Kirkvoll', 'camillakirkvoll@gmail.com', 'Camillakirkvoll', NULL, '$2y$10$g0bQdzDD23AO3fT0VXJ.XeJnvY.TVpV8XJN2wFQuNfuLQnpdaKCvu', 'a4d0UuRUuDYZrolf7FPx5ZMEbW0GjeZ82yd7KteFCZr4mCMB5YxykekBQhl9', '2022-09-01 08:25:21', '2022-09-01 08:25:45', 'Byavegen 128', '7715', 'Steinkjer', '1981-06-02', '90244118', 11, 5, 11, NULL, 'female', 'right', 2, '41', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Torill Nordtug', 't_nordtug@hotmail.com', 'Torill Nordtug', NULL, '$2y$10$5dstutuxEsesG8s8GXBVi.pAViGS0.1UcUBr.5sBeZA4XRl.NN6hq', 'e5CbOnlt147VfDCskioWbEo1sDMU3AqvEST9S4PYxPBZyfeLdR5YOjTa6oxY', '2022-09-07 07:18:17', '2022-09-07 07:23:13', 'Sandvollanvegen 440', '7670', 'Inderøy', '1982-10-10', '45487842', 12, 5, 11, NULL, 'female', 'right', 1, '39', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, 'Eventulle: Ingenting\r\nLæge: OK\r\nMålsætninger: Vægtreduktion/ opstramning.\r\nTanker angående måsætninger: Individuel træning (60 minutter).\r\nBegrænsninger: Ingen begrænsning- vi må være nøje på træningsmængden- justere mængden.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Per Annar Skogset', 'peraskog@hotmail.com', 'admin@test.com', NULL, '$2y$10$h/QLhVpruE2c64zkoepLReZvUBK0VhbpUEq5xH1r1.tgyaXkrhSia', 'NxTaR7ngbf4R2iSGZPR40YUg1QOU0iuKcTBU1EiHJ51k6hGJS5NLzyhNMqJL', '2022-09-07 07:41:22', '2022-09-07 07:42:13', 'Sandvollanvegen 440', '7670', 'Inderøy', '1974-08-07', '97181436', 7, 5, 11, NULL, 'male', 'right', 1, '48', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Gunhild Hovind', 'gmhovind@msn.com', 'Gunhildhovind', NULL, '$2y$10$BTMycx.LgI5.FHegPbMKm.R5qr6FoRXpGncGB1Rteigj.J8o3AQ1a', '53O46KL9VVnDoY5DDmEdAlKiTfVvw6lH2Ii1IC2OmbbHN0xEdSWK7j2wRvXl', '2022-09-07 12:58:44', '2022-09-07 13:04:19', 'Heggevegen 45', '7715', 'Steinkjer', '1966-04-04', '97100035', 7, 5, 11, NULL, 'male', 'right', 2, '56', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, 'Problemstillinger: Ingen\r\nLæge: OK\r\nBehandling: Nej\r\nMålsætninger: Træne for at holde sig form.\r\nTræningsmetode: Blanding mellem gruppe og egentræning (Styrke og kondition).\r\nAntal: 2-3- slider lidt med motivation for egentræning. \r\nLøsning: Gruppetimer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Åsne Sagmo', 'asnesagmo@icloud.com', 'asnesagmo@icloud.com', NULL, '$2y$10$B4VelNAr0EqDI5Z7NEI2Vu9bd7qNenmTGilhzMEIWrBf.JkzY9cYq', NULL, '2022-09-13 08:05:11', '2022-09-16 16:36:34', 'Ølvisheim 6', '7715', 'Steinkjer', '2007-09-18', '92237969', 7, 5, 11, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, 'Skader: Nej\r\nLæge: OK\r\nBehandling: Nej\r\nMålsætninger: Bedre kondition og styrke ca. 2 gange per uge.\r\nBegrænsning: Ingen.', NULL, NULL, NULL, NULL, NULL),
(40, 'Hanna Rokseth', 'hanna.rokseth@gmail.com', 'hanna.rokseth@gmail.com', NULL, '$2y$10$wmZrUGC/cXctGQKK8zNk0.1FhS/AUwasCe9u65g3tHPEYepK5F3om', '50O2VB4iXHdFOdEYRs6rW62eepX5TwrpIE0PD76q8dcWVb9qWD1HJaKNXqVn', '2022-09-14 08:47:10', '2022-09-14 08:50:47', 'Helgesvegen 22A', '7716', 'Steinkjer', '2006-09-23', '99595140', 17, 5, 11, NULL, 'female', 'right', 1, '15', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Hannah Borgsø', 'hanborg06@gmail.com', 'hanborg06@gmail.com', NULL, '$2y$10$GRMv3hHiwC3EWYUoeQi6FOdbZVhj6RBbUMdV9j/dqQAY9fAgov1eS', 'qHxmrNcF1pl6tQCyLqHTvknUjfn2jnvfLQgj8TceFYSBbAdIyIfjMaeF1335', '2022-09-14 08:49:29', '2022-09-14 08:51:18', 'Helgeslia 5', '7716', 'Steinkjer', '2006-10-15', '90665227', 7, 5, 11, NULL, 'male', 'right', 1, '15', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Sebastian Arntsen', 'sebbern11@gmail.com', 'sebbern11@gmail.com', NULL, '$2y$10$CXqBHLhm7CJ.aMSHwkIFmenIZyaXK5Pl.S732TrOLFZb4FBTOYjj2', NULL, '2022-09-15 05:23:40', '2022-09-15 05:24:50', 'Øvre Bakkeveg 12', '7713', 'Steinkjer', '2004-12-13', '90022083', 17, 5, 9, NULL, 'male', 'right', 3, '17', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, 'Eventuelle problemstilling: Slider lidt med benhindebetændelse grundet stor træningsbelastning.\r\nLæge: OK\r\nBehandling: Nej.\r\nForventninger: Udvikle sig som fodboldspiller- fysisk stærk/vinde dueller. Svagheder fysisk: Slider med acceleration/koordinering af bevægelser. Slider lidt med luftdueller. \r\nAntal træninger: 7 træninger plus 2 kampe.', NULL, NULL, NULL, NULL, NULL),
(43, 'Jannike Hovland', 'miss-hovland@hotmail.com', 'miss-hovland@hotmail.com', NULL, '$2y$10$2XpVjYW132Qb1xC07vQAT.YN4OA/lpo16S9OgT0Wkt6sCNeBe7ftO', NULL, '2022-09-16 07:06:29', '2022-09-16 07:15:12', 'Melgårdsvegen 28A', '7710', 'Sparbu', '1993-04-02', '94182459', 7, 5, 11, NULL, 'male', 'right', 2, '29', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, 'Eventuelle problemstillinger: Kronisk betændelse i venstre skulder.\r\nBehandling: Går jævnligt til kiropraktor.\r\nLæge: OK\r\nMålsætninger: Bygge muskler generelt for at reducere smerten i skulderen. Mellem 2-3 gange pr. uge.\r\nBegrænsning: At hun ikke er sikker med udstyret.', NULL, NULL, NULL, NULL, NULL),
(44, 'Ken Gøran Nikolaisen', 'ken.g.niko@gmail.com', 'ken.g.niko@gmail.com', NULL, '$2y$10$cs4cmZpY6Qr1is.uy8ghhe0QA3fLfSldtb2J4dVEWWD63m9N634hC', NULL, '2022-09-19 05:08:42', '2022-09-19 05:30:25', 'Grjotgars Veg 61', '7725', 'Steinkjer', '1989-03-05', '90565878', 7, 5, 11, NULL, 'male', 'right', 2, '33', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, 'Eventuelle problemstillinger: Rygproblemer og stor stivhed derfra.\r\nLæge: OK\r\nBehandling: Nej- Gået til fysioteraput. \r\nForventninger: Blive bedre i ryggen og generelt funktionsmæssigt.\r\nTanker målsætninger: Prøve at nedbryde phykiske barriere igennem kontrollerede bevægelser.\r\nBegrænsninger: Er sygemeldt pga. hånden efter fald.', NULL, NULL, NULL, NULL, NULL),
(45, 'Jan ove Dahl', 'jod@ntebb.no', 'Janovedahl', NULL, '$2y$10$K1SyYlMOJU9K7LH6YFHNZ.gxWUG2XtYW1PaZ2dwizwbWAhRVMl2w.', NULL, '2022-09-19 12:13:32', '2022-09-19 12:23:47', 'kapteinvegen 6a', '7713', 'Steinkjer', '1964-06-12', '40553060', 7, 5, 11, NULL, 'male', 'both', 2, '58', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, '1. Stiv i nakke rygg\r\n2. Legegodkjenning: ok\r\n3. ikke noe fysioterapi\r\n4. vedlikehold/ forbygge funksjonstrening\r\n5. Holde seg skadefri gjære daglige aktiviteter uten ekstra bry.\r\n6. ingen bregrensinger. \r\n7. Tren på.', NULL, NULL, NULL, NULL, NULL),
(46, 'Elita Grunte', 'elitagrunte@gmail.com', 'elitagrunte@gmail.com', NULL, '$2y$10$iCoj6XCSPukgEXNrF4QM/u3a3C1gjQiFo.cvkF/J0jRNxQL226Ic2', NULL, '2022-09-21 13:10:37', '2022-09-21 13:19:31', 'Fjellgata 29', '9603', 'Hammerfest', '1970-05-06', '46340746', 7, 5, 11, NULL, 'male', 'right', 1, '52', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, 'Problemstilling: Har ondt i begge knæer, men ved ikke hvad det skyldes. Hun har også lidt rygproblemer.\r\nLæge: OK\r\nBehandling: Alloss på Sparbu (Rehabiliteringscenter)\r\nForventninger: Blive bedre i knæ og stærkere, så hun får bedre funktionalitet. \r\nAntal gange: 3 gange pr. uge.', NULL, NULL, NULL, NULL, NULL),
(47, 'Marius Eriksen', 'mariusreriksen@hotmail.com', 'mariusreriksen@hotmail.com', NULL, '$2y$10$d1SxBtNdbHHaXnTxZYUaWudlr5rYScSzqn1WrFwv5dXWWv4jy0LVa', 'rk4w0m2vPHUY6E812GUT0WdWquXzdcvOWdaoaMIerLZHKYTH2vLbVcDTZDUp', '2022-09-23 08:48:40', '2022-09-23 08:49:48', 'Melgårdsvegen 28A', '7710', 'Sparbu', '1985-05-09', '94182459', 14, 5, 11, NULL, 'male', 'right', 1, '37', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Anja Hahtokari', 'anjakjolstad@live.no', 'anjakjolstad@live.no', NULL, '$2y$10$jZaLUd1vnsYi/LIWRld86OEwSKwBlSuwmo0zUnGVLm/jSH6LvYTty', 'uLO0rYEbfjq7Wl5dzf7MbuyTHLFyjhlLe8T1wvDYrvyOq4UZwSo22DVS6ogO', '2022-09-26 06:08:45', '2022-10-03 06:05:13', 'karjolvegen 39', '7712', 'Steinkjer', '1976-01-25', '45507091', 7, 5, 11, NULL, 'male', 'right', 1, '46', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, 'Fysisk aktivitet: Ja\r\nEventuelle skader: Lidt ondt i knæ.\r\nMålsætninger: Helkropsprogram/ Fokus Rumpe, mage og lår.\r\nAntal: 3-4 gange pr. uge.\r\nBegrænsning: Ingen problem\r\nIngen problemer.', NULL, NULL, NULL, NULL, NULL),
(49, 'Bente Wågan', 'bente.wagan@hotmail.com', 'bente.wagan@hotmail.com', NULL, '$2y$10$x6DO7TECYQ1MNoca39ENmuUz9ZqBBZVn.rhovCbJVPhzxGrTwdRUy', NULL, '2022-09-26 07:02:58', '2022-09-26 07:07:17', 'kalv Arnesons Gate 15', '7715', 'Steinkjer', '1976-03-07', '93671164', 7, 5, 11, NULL, 'male', 'right', 1, '46', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, 'Læge: OK\r\nProblemstilling: Har en del nakke og skulderproblematikker. Har en ledproblemer grundet en del ledelser. \r\nErfaring: Har trænet jævnt, men ender ofte med en del øget smerter og derfor plader ud træningen. \r\nAntal gange pr. uge: 2 gange ugentlig. \r\nBegrænsninger: Smerter kan være en begrænsende faktor, da hun bliver nervøs.', NULL, NULL, NULL, NULL, NULL),
(50, 'Silje Haagensen', 'silje_wn@hotmail.com', 'silje_wn@hotmail.com', NULL, '$2y$10$BwtPIff3/TEo5Ubnup9Hzucvr1aOdyZS5FEdiJF50fkDc4aR2YqhW', 'd8jrw7LlpEGxZzMRdF8NQYKuAMhIhu6SBcc50kuF5PnnmdWHlHDUMOMZtdJe', '2022-09-26 09:10:36', '2022-09-26 09:16:02', 'Malisvvegen 9', '7713', 'Steinkjer', '1986-01-05', '47904802', 11, 5, 11, NULL, 'female', 'right', 1, '36', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, 'Læge: OK\r\nProblemstillinger: Ingen.\r\nMålsætninger: Strammet op muskulaturen og bygge muskelmasse.\r\nGruppetimer: Zumba (Kondition)\r\nTræning: 2-3 gange ugentligt.', NULL, NULL, NULL, NULL, NULL),
(51, 'Birgit Josefsen', 'birgit.josefsen@hotmail.com', 'birgit.josefsen@hotmail.com', NULL, '$2y$10$mmp8Kv3VTWLZHtFyRrm2ku7.2/8JFx60GAWZIjuIAMVQFbHNUG8Xq', NULL, '2022-09-29 07:40:19', '2022-09-29 08:05:26', 'Skjeftevegen 5B', '7713', 'Steinkjer', '1965-04-18', '98039612', 7, 5, 11, NULL, 'male', 'right', 1, '57', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, 'Læge: OK\r\nProblemstillinger: Brækket skulderen, så klare ikke så stor belastning. Har tidligere haft prolapsoperation, hvilket har påvirket nerven. \r\nMålsætning: Ikke så meget fokus på behandling, men hellere tænker fysisk forbedring.', NULL, NULL, NULL, NULL, NULL),
(52, 'Aleksander Martinussen', 'martinussen_95@live.no', 'martinussen_95@live.no', NULL, '$2y$10$tgGUFJB7P7Fk8VaL8q2Rx.5TmUrrv.Hz6/h1UJvjE9d7eMOg8dvnO', NULL, '2022-09-29 08:04:34', '2022-09-29 08:18:20', 'Tranebærvegen 19B', '7712', 'Steinkjer', '1995-08-21', '92459259', 7, 5, 11, NULL, 'male', 'right', 1, '27', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, 'Læge: OK\r\nProblemstillinger: Ingen\r\nBehandling: Nej\r\nMålsætning: Komme igang med træning for at forbedre sin fysiske sundhed.\r\nTanker: 2-3 gange ugentligt. \r\nBegrænsninger: Ingen problem.', NULL, NULL, NULL, NULL, NULL),
(53, 'Eskil Brøndstad', 'eskil.stai.brondstad@gmail.com', 'eskil.stai.brondstad@gmail.com', NULL, '$2y$10$QSSHm6dM937KaBr8iZFIpurHl.JBpY2IyN.r/M4kqPFxHSnyyas82', NULL, '2022-10-10 11:40:52', '2022-10-18 16:12:09', 'Sørekkervegen 14', '7540', 'Trondheim', '2005-04-29', '94188428', 7, 5, 9, NULL, 'male', 'right', 1, '17', NULL, 2, NULL, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, 'Angrepsspiller/Spiss', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Jette Marie Røstad', 'jette@ssa.no', 'jette@ssa.no', NULL, '$2y$10$qR1OgJB93MEjSIMJ9bL78em3NIIOGMdZ9eDn5lSlDDLT9Sqv2pot.', 'NIrXAgNBjB6S8YW58915smtv1w44zL0GFux3jgZjlJh8lzyh3R5McGis9izB', '2022-10-12 05:47:08', '2022-11-21 16:32:48', NULL, NULL, NULL, NULL, '47524752', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Jette Røstad', 'jettemarie@ssa.no', 'jettemarie@ssa.no', NULL, '$2y$10$yH70lJFXJt5olZQ1/b3uTeNotQ4V2IqoBrjACMOW7zAD1fIxmcuKW', NULL, '2022-10-12 05:55:58', '2022-11-14 15:06:48', NULL, NULL, NULL, NULL, '47524752', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 15:06:48', NULL, NULL, NULL, NULL),
(59, 'Amelia Kolstad', 'ameliakolstad@ssa.no', 'ameliakolstad@ssa.no', NULL, '$2y$10$35vcn7XGwA93/AQxzHuGnO4t1xe.H5WsQB2yET8i/nE1el0kQsC6y', NULL, '2022-10-12 05:58:52', '2022-11-14 15:04:03', NULL, NULL, NULL, NULL, '98334734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'test30', 'test30@hotmail.com', 'test30', NULL, '$2y$10$mFH6m.QmNbxFjY27XLB6U.UqG2cFKIdpdFmlWHlMbGx32Qdzoaxlq', NULL, '2022-10-19 21:54:54', '2022-11-23 13:28:47', 'test30', '32424', '2442', '1970-01-01', '23229', 7, 5, 2, NULL, 'male', 'right', 1, '34', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, NULL, NULL, 'cus_Mr1vJUNfX3VhBy', 'visa', '4242', NULL),
(61, 'Torild Moxness', 'torild.moxness@friskgarden.no', 'torild.moxness@friskgarden.no', NULL, '$2y$10$S64bk/c66zI0wRVq6YP61OjjoTaPV2VlkWCb.8w8FjHo8Rq8sXYDm', 'qn9yN58QFzttNttbBp95lUneVNKZ9cQgV6eAk9g5h4l8xg43Mfmscyr9QoPT', '2022-10-25 13:10:07', '2022-10-31 16:09:36', 'Okstaddalvegen 215', '7711', 'Steinkjer', '1970-04-27', '95742709', 7, 5, 11, NULL, 'male', 'right', 1, '52', NULL, 2, NULL, 1, 1, 1, 1, 0, 0, 0, 'Eventuelle problemstillinger: Nej\r\nLæge:Ok\r\nBehandling: Nej\r\nMålsætninger: Bliver stærkere i kroppen og mere funktionsdygtig. \r\nTanker for opnåelse af målsætning: Brug af styrketræning kombineret med cardiovaskulært.  \r\nBegrænsninger: Ingen', NULL, NULL, 'Målvakt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'VukuG16', 'vuku@g16.no', 'vuku@g16.no', NULL, '$2y$10$pRJcQRU9IE0FkQ7NB2PI8ulGlgtfV9ZQT47WZKp9ROUVhZY2dsD/K', 'Q42bQBtNUb9me5a2xRb8SbJ3mFfYnSS8vhttPUUrpbbfFz5SrSigT19JjJIs', '2022-11-01 17:37:32', '2022-11-04 09:10:21', 'Vuku', '8888', 'Vuku', '1970-01-01', '6666666', 7, 5, 2, NULL, 'male', 'right', 1, '77', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, NULL, '2022-11-04 09:10:21', NULL, NULL, NULL, NULL),
(63, 'test30-r', 'test30-r@hotmail.com', 'test30-r', NULL, '$2y$10$Sm855R4s1zLtmLPIKWooTuQ9AVufw.mp4VzkVsv2E0IkEPWzyRrby', NULL, '2022-11-02 15:28:54', '2022-11-02 15:28:54', NULL, NULL, NULL, NULL, '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Dummy-testcoach', 'Dummy-testcoach@hotmail.com', 'Dummy-testcoach', NULL, '$2y$10$qojAaMFgLb.RBqyOYgSIve1cnKbbqo6VsczMW1GirbAlblbx3DdLu', NULL, '2022-11-03 07:39:52', '2022-11-14 15:06:58', NULL, NULL, NULL, NULL, '131234432231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 15:06:58', NULL, NULL, NULL, NULL),
(66, 'testtestetst', 'testtestetst@hotmail.com', 'testtestetst', NULL, '$2y$10$JH1IQpGxqPc79XjoOkiGKOSP4jkVvCitaQb5Uy9n5MyQ/0dHsFCdi', NULL, '2022-11-03 07:43:07', '2022-11-03 07:43:07', NULL, NULL, NULL, NULL, '12312323123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'Testruben123', 'Testruben123@hotmail.com', 'Testruben123', NULL, '$2y$10$wde7JyU6BajYN5oGWwGwxOVzMUVEBF.0TzSaXyzqyj8jYZS/X72i2', NULL, '2022-11-03 07:51:19', '2022-11-03 07:51:19', NULL, NULL, NULL, NULL, '123123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Peder Bjørkeng', 'geirmarbjo@gmail.com', 'geirmarbjo@gmail.com', NULL, '$2y$10$0X7GEGCuFqq/.GeVJdhF9eOciRWnW2o/uUqaYfnqTS8WtHg4cX2K2', 'u2Z69tFHKjGjUCgqAH4LTUDMYr2TJUrPZUWL8YmRvJehm6g1km8vwFfGP7WA', '2022-11-04 09:14:49', '2022-11-13 18:28:18', 'Halsetbakken 77', '7656', 'Verdal', '2008-12-10', '94851187', 17, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Ruben Julnes', 'jannemunkeby@outlook.com', 'jannemunkeby@outlook.com', NULL, '$2y$10$L0pGKAGdpMM9..gV0zDkEuMC7J7vqJpC5CTWG.l2OOn90nNaXAVHa', 'Q3IoiXzvVOuVKx5ktW68eqvQnUSf4ZQnOHlu0wQOMo8ELCdMFMtAkBaASz3U', '2022-11-04 09:58:07', '2022-11-13 18:47:21', 'Ringleveien 7', '7655', 'Verdal', '2008-02-02', '46945596', 7, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Ann-Kristin Larsen', 'annkristin@ssa.no', 'annkristin@ssa.no', NULL, '$2y$10$WW0OaFZ9RfzCLLQ4XFVsP.DBhgA6uGB4X4UOFGxX15IR1JIkkIaLi', NULL, '2022-11-04 10:20:53', '2022-11-18 08:01:27', NULL, NULL, NULL, NULL, '98859963', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Tobias Flyum', 'kim.flyum@gmail.com', 'kim.flyum@gmail.com', NULL, '$2y$10$h1ke64ee0vKe6M2irTKEUOF3mY/VLURPcX7dh6J65NjSWTylzQWnG', 'NIDDrrEnl4GBpiRTckxRRgcggK0FXxZSbnbq6mHEQiGmAktp2US2wiynlufD', '2022-11-04 12:58:41', '2022-11-07 18:54:55', 'Fagerlibakken 6', '7655', 'Verdal', '2008-04-08', '46316717', 17, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Anton Sende', 'luda.sende@gmail.com', 'luda.sende@gmail.com', NULL, '$2y$10$mEO6BNCabq2FbNPu8fcwCuZwuPmbOzv7TPP3JI.kTNnDl.PaAnyBy', 'o5xJTyDC7CKeax496gy373qMmcpKOM1HfxS3ADc9UaSaI555SBcoBllxn1Oq', '2022-11-04 13:03:44', '2022-11-14 19:32:21', 'Musemvegen 113', '7656', 'Verdal', '2008-09-15', '95277235', 7, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Angrepsspiller/Spiss', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Niklas Hynne', 'trinewohlen@hotmail.com', 'trinewohlen@hotmail.com', NULL, '$2y$10$N/o9gCvwytOD9c0FNzx/KeL5BOWvhNHhbgYr329hxxN28zdXfZthC', '8VYl3rlMX9EEX8YTXSWWH9cn19h7Y4HNc8tnOZXn4FaNF5ZDSjOkrYnFmDHC', '2022-11-04 13:07:30', '2022-11-14 15:04:23', 'Leinsmoen 45', '7655', 'Verdal', '2008-04-10', '46316628', 17, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Sverre Grønn', 'jangro@trondelagfylke.no', 'jangro@trondelagfylke.no', NULL, '$2y$10$12xs7qMiZX7OT9Xwwkulr.FBKmOIFrmxVFUkagX0JJ3xYmfiYp9Te', 'eyhA2h5n81TXq22sgL9w7vPoCcdC9c0YsqrPQ0TzXsNFHz0pPks4uAXUciOR', '2022-11-04 13:09:46', '2022-11-14 19:15:57', 'Landstadvegen 106', '7655', 'Verdal', '2008-08-15', '90288846', 17, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Forsvarspiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Tormod Fiskum', 'annelisehofstadhojem@gmail.com', 'annelisehofstadhojem@gmail.com', NULL, '$2y$10$pNiwCgDMbmk3JzjrLRdngOLdlLd1FXskLVysuKY2jV8hHPYvbtldm', 'FoPRsGAk4aG1VhNDKmrdcEFGINnDXkOexj1RrfZhxjlLJKAAlwj0DxoNDxed', '2022-11-04 13:12:09', '2022-11-13 21:28:08', 'Kattuglevegen 3', '7655', 'Verdal', '2008-05-05', '41917334', 7, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Tore Langdal Kristiansen', 'kristin.langdal@verdal.kommune.no', 'kristin.langdal@verdal.kommune.no', NULL, '$2y$10$bMo5/SR6IwS7bmyBV2gtou4.pVZ2W.L4PZs.FHkO93oAY/FkCKRDq', '8BdGLoKhebavyslRsnGgw2NmSDcB0bzvT4KU4i9IFpvgIfkeZAMieeEOV5Gd', '2022-11-04 13:14:34', '2022-11-14 19:58:06', 'Tranevegen 5', '7655', 'Verdal', '2008-04-08', '45047043', 17, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Forsvarspiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Robin Kjelvik', 'jon.ivar.kvelvik@gmail.com', 'jon.ivar.kvelvik@gmail.com', NULL, '$2y$10$45sh3CNMEYvY.G9E0BJDZOKyWWyg6DcheJ/zqoKYNUPCQpBokWGs6', 'agQ4JZnYQpIcPZiPU8cPrhIV65ycf7qToyIrePpaKX9AODYee8vKyG0jCHPE', '2022-11-04 13:16:42', '2022-11-14 20:35:08', 'Musemvegen 215', '7656', 'Verdal', '2007-10-02', '91381750', 7, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Forsvarspiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Lukas Olofsson', 'lukasolofsson08@gmail.com', 'lukasolofsson08@gmail.com', NULL, '$2y$10$lgXmgBDXmAcExn8XBMB7J.3riciX6WqLNuIc0GHyRWiBzlwfa8rDO', 'ZBA1ltnDN3I9oQkoeT8wj24KOMmVPBnXYmTsHUgxlDaiTwocX1DCfReSyMRl', '2022-11-04 13:20:38', '2022-11-07 09:44:45', 'Ando Indals Veg 9', '7660', 'Vuku', '2008-02-22', '91911928', 17, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Forsvarspiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Jørgen Ekseth', 'stigarild@kubikkas.no', 'stigarild@kubikkas.no', NULL, '$2y$10$wWRuoxT0kF2Vwpa0QkfndePTjZsmiwUJQB.S1rVkY8kAZMkn45igK', 'sSDm0Z2dqMlwZ3lWeTognRNlnJcA0mASSU6DDlGSw5fDKghDXcE9FBLTMf1z', '2022-11-04 13:23:19', '2022-11-07 18:33:47', 'Grågåsvegen 2A', '7655', 'Verdal', '2008-08-09', '48281990', 17, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Brian Hustad', 'brian.hustad@icloud.com', 'brian.hustad@icloud.com', NULL, '$2y$10$Jhwaqp1ZwoM9Xt580jzpcewUPFRHXpt5qPu5ubwP5BZK1HN/TITTi', 'hEvPNVvUP6b7BO6n0XQptD35KtQBk8Po2NhDHmlPcLZrNndZRNLHJcDTXynU', '2022-11-12 10:43:41', '2022-11-18 09:29:34', 'Bogavegen 147', '7725', 'Steinkjer', '2004-04-20', '46621163', 7, 5, 9, NULL, 'male', 'right', 3, '18', NULL, 2, NULL, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, 'Forsvarspiller', NULL, 'Styker: Føler han ikke har nogen spidskompetancer, god topfart og højde.\r\nSvagheder: Har problemer med de første meter, som skyldes manglende frekvenskontrol. \r\nFysisk træning: Har fået program fra videregående, hvor han arbejder med knæbøj og markløft', NULL, NULL, NULL, NULL, NULL),
(81, 'Alexander Johnsen', 'alexander.g.johnsen@icloud.com', 'alexander.g.johnsen@icloud.com', NULL, '$2y$10$vwRDLJv7ysSucIDWXSxi..MMKjYj56p7HGX4hc0upHmDW8uiyNknq', 'pBI7PGzKpW0eCaoY1qXMM9hYYFdeLDKsgfBDQaMCU0OAU4O1exH02WucCysC', '2022-11-12 12:12:37', '2022-11-18 09:29:50', 'Tværstien 1D', '7020', 'Trondheim', '2008-01-10', '41461001', 7, 5, 9, NULL, 'male', 'right', 2, '14', NULL, 2, NULL, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, 'Forsvarspiller', NULL, 'Svagheder: Overkroppen må arbejdes med. Mangler lidt på hurtighed og fart under de første meter, så vi må fokusere må den generelle styrke.', NULL, NULL, NULL, NULL, NULL),
(82, 'Emilian Munkhaugen', 'jannisfh@yahoo.no', 'jannisfh@yahoo.no', NULL, '$2y$10$TFVVKO107L/mV/nRRS8lLerCjForTEXT0oKRJP1yMkOPYUlURCPVS', '81bMvHoYba4ouiQSOtKP2hBKmRRGKsipdArq2gCxkBQyEsIxsF8Xc1KWcuDy', '2022-11-14 10:34:48', '2022-11-15 12:01:22', 'Ringleveien 9', '7655', 'Verdal', '2008-04-28', '46945596', 7, 10, 9, NULL, 'male', 'right', 1, '14', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Jonathan Tuset Kippe', 'frode-k@mkbetongbygg.no', 'frode-k@mkbetongbygg.no', NULL, '$2y$10$Zns2WZ/IQj/g47AJRLCjOua.m9CbFjHtTSN45PHhA7ayDppMOfZqS', 'hIFgncV9genrjjg3sEWJfwmeSXY65mZg5fIAhZQT4xMhyQ9aaG7ZwtORDxFn', '2022-11-14 10:37:27', '2022-11-14 17:08:42', 'Hubroberget 4', '7655', 'Verdal', '2008-12-09', '93623739', 7, 10, 9, NULL, 'male', 'right', 1, '13', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Angrepsspiller/Spiss', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Ruben Sellæg', 'asellaeg@gmail.com', 'asellaeg@gmail.com', NULL, '$2y$10$p.O4XiGv3f.ApJVJa/34NuC5V2ddt.7f.EsJG.sYrK.Y0KKUIzVfC', 'kkCeVa6MjJh2dWnKHZtBHropt0u2VHOBaNzxSoMV4uk0zXgRk15eESKY7Rr1', '2022-11-14 10:40:42', '2022-11-14 18:32:28', 'Rasvegen 147', '7656', 'Verdal', '2009-11-07', '90534976', 7, 10, 9, NULL, 'male', 'right', 1, '13', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Lukas Holmli', 'hildegunnflyum91@hotmail.com', 'hildegunnflyum91@hotmail.com', NULL, '$2y$10$64WlbGcbBZxgBGlHwVzR3urKYS/7JMqd8e1LgXH0WUEJLxUl3tFva', '2reATQTYlHRHu04EC7ez93Wi34cCTWs2NtMftNHvkGbku8553rLUx8s90Dac', '2022-11-14 10:45:50', '2022-11-14 19:33:46', 'Ulvillvegwn 680', '7660', 'Vuku', '2007-06-09', '00000000', 17, 10, 9, NULL, 'male', 'right', 1, '15', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Kristoffer Lein', 'oarvl@online.no', 'oarvl@online.no', NULL, '$2y$10$S0nkcOh4vS2ChnDYMTJTDOZmzIntD8OGm.dF51RNCkfN7UX.hGgXa', NULL, '2022-11-14 10:50:34', '2022-11-17 08:20:42', 'Leinstrøa', '7655', 'Verdal', '2009-01-12', '92663679', 17, 10, 9, NULL, 'male', 'right', 1, '13', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Ovid Bjørkeng', 'ragnhiba@hotmail.com', 'ragnhiba@hotmail.com', NULL, '$2y$10$p9fwRFfw9DYgJ7.qR3/5F.EVM0d6dCwu7ekD5RGEjqV6fyvokwy.i', 'AeFoFp5Hd76wnHSzEqTl9kofWLmX09m9Hn9kdbN0fTUEERHl4btRR9KUxQXR', '2022-11-14 11:25:43', '2022-11-16 19:21:20', 'Aunflata 42', '7656', 'Verdal', '2009-05-26', '95829070', 17, 10, 9, NULL, 'male', 'right', 1, '13', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Tage Svendsen', 'toreksvendsen1@gmail.com', 'toreksvendsen1@gmail.com', NULL, '$2y$10$ieAfPxWKNRsSTkkKsWf7X.0bfS77cC52YuWhUM6WuKFv6pO93TaXy', NULL, '2022-11-14 11:27:45', '2022-11-20 18:27:48', 'Haugstien 3', '7603', 'Levanger', '2009-04-15', '90964435', 7, 10, 9, NULL, 'male', 'right', 1, '13', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Trym Svendsen', 'toreksvendsen@gmail.com', 'toreksvendsen@gmail.com', NULL, '$2y$10$nL39oP42ji3AJHsvZLs70uF1G7YGa5C0/FxL8QxKfMC9q380wo.M.', NULL, '2022-11-14 11:31:38', '2022-11-20 18:28:04', 'Haugstien 3', '7603', 'Levanger', '2009-04-15', '90964435', 7, 10, 9, NULL, 'male', 'right', 1, '13', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Midtbanespiller', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Tobias Forberg', 'hennyforberg@gmail.com', 'hennyforberg@gmail.com', NULL, '$2y$10$zjt/ockP6LCGpyt7Aiyh..V5FXEUYg0FXjv5PT7W3rqEWGalg8Kr2', 'W3eG6oXVnYCSqX2hCTMtXrOmOhMSH3pzarXyBQBpgXmsp3SzEdXMalNSWrd6', '2022-11-14 11:33:24', '2022-11-16 19:24:02', 'Tiurvegen 15', '7655', 'Verdal', '2009-01-11', '95919400', 17, 10, 9, NULL, 'male', 'right', 1, '13', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Målvakt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Hilde Norum', 'hilde_n_d@hotmail.com', 'hilde_n_d@hotmail.com', NULL, '$2y$10$yIcO7jzaOAATuzSQl1bs1.K0XEABnl3vmCis62UMVS3iz9TygNyC6', NULL, '2022-11-17 16:42:32', '2022-11-17 16:45:48', 'Kvamsskogvegen 13', '7715', 'Steinkjer', '1987-10-12', '93401519', 10, 5, 11, NULL, 'female', 'ikke_fotballspiller', 1, '34', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Ikke fotballspiller', NULL, 'Læge: OK\r\nBehandling: Nej\r\nLidt smerter i skulder og ryg.\r\nMålsætninger: Blive stærkere og klare at sidde på arbejdet. \r\nTanker angående målsætning: Tænker at træne to gange ugentlig. \r\nBegrænsninger: Ingen begrænsninger.', NULL, NULL, NULL, NULL, NULL),
(92, 'Målfrid Hellan', 'mofrid_n_h@hotmail.com', 'mofrid_n_h@hotmail.com', NULL, '$2y$10$xaet1jHJKqaWpI5S2ntJwO/b.K0CkLxKWzwr14ekGDjfkmW1UePuC', '0bGl8FH6h6DLFDS4B3ca914yTuB2H9q7DoJXN4AB1q9JOnGaarVNDeSASvfC', '2022-11-17 16:49:37', '2022-11-17 16:57:57', 'Bjønnavegen 58', '7670', 'Inderøy', '1963-05-03', '93659595', 7, 5, 11, NULL, 'male', 'ikke_fotballspiller', 1, '59', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Ikke fotballspiller', NULL, 'Læge: OK\r\nProblemstilling: Nej\r\nBehandling: Nej\r\nMålsætning: Blive lidt sprekere og træne op musklerne.\r\nAntal: Træning tirsdag kl. 10:00 og en egentræning. \r\nOpmøde: Ingen problem', NULL, NULL, NULL, NULL, NULL),
(93, 'Bestian Svendsen', 'bastiansvendsen73@gmail.com', 'bastiansvendsen73@gmail.com', NULL, '$2y$10$hBJf/fHs/kwquvPsjegdQ.N60BOHJZJDxotK5FyH7SRjaQSnmj8ye', NULL, '2022-11-17 17:59:40', '2022-11-17 18:05:17', 'rognvegen 275', '7710', 'sparbu', '2003-07-29', '90362524', 17, 5, 9, NULL, 'male', 'right', 2, '19', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Angrepsspiller/Spiss', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Ann-Kristin Larsen', 'larsenannk@hotmail.com', 'larsenannk@hotmail.com', NULL, '$2y$10$jsHPg3dIqwVkyIjjcIMvIuMR8ciWu0D5Ubuo8QOKytQOXe8bnIwB.', NULL, '2022-11-18 09:26:37', '2022-11-22 11:19:25', 'Helgesvegen 25', '7716', 'Steinkjer', '1990-05-13', '98859963', 7, 5, 11, NULL, 'male', 'ikke_fotballspiller', 3, '32', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Ikke fotballspiller', NULL, 'Evt problemstilling- nei \r\nLege- ok \r\nBehandling-nei \r\nMålsettning- bedre form \r\nTanker rundt målsettning- Tenkte 5 til 6 ganger, men gikk ned til ett mer realistisk mål, 1-2 ganger i uken. \r\nBegrensninger- Dårlig struktur, det snakket vi om.\r\nLøsning- Arbeid med løsninger rundt forbedre struktur', NULL, NULL, NULL, NULL, NULL),
(95, 'Rune Melbu', 'rune.melbo@tellus.no', 'rune.melbo@tellus.no', NULL, '$2y$10$BdVCC3ALI.MLzgwUqc5SQuBAIXVpVNio7LacZkaiHZFdSz8.jwzJS', '7yT3EHYGuATBkjIIBFx4bHUWHvQqWUZ8MuODE9rjMXfUX1NCUk1lIrNwYU80', '2022-11-22 15:13:38', '2022-11-22 15:27:33', 'Alfheimvegen 22', '7715', 'Steinkjer', '1963-06-07', '41204950', 7, 5, 2, NULL, 'male', 'ikke_fotballspiller', 1, '59', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Ikke fotballspiller', NULL, 'problemstilling: Stiv og støl\r\nJa legen godkjenner\r\nIkke foelæpig\r\nBedre helse\r\ngruppetimetreninger\r\nLite problem. stiller på treninger\r\nok', NULL, NULL, NULL, NULL, NULL),
(96, 'Rita Mork', 'ritamo@online.no', 'ritamo@online.no', NULL, '$2y$10$ONTg/LLgDwah41nsZiDxZ.ipuMXvN.wb5yycgVcqlwUGU38MCrdNm', '8mcuDuBRjjanVx43lXpEw8MpdUPOWczDRhEi6z9ZppgE9DG05Zoxg8d161yq', '2022-11-22 15:24:39', '2022-11-22 15:28:19', 'Alfheimvegen 22', '7715', 'Steinkjer', '1968-09-04', '91116344', 10, 5, 2, NULL, 'male', 'ikke_fotballspiller', 1, '54', NULL, 2, NULL, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'Ikke fotballspiller', NULL, 'Nei, ingen problemer\r\nJa.\r\nIngen fysioterapi\r\nForventninger: bli sterkere \r\nBegrensninger: Nei\r\nIngen begrensninger', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `exercise_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `video_sd` text NOT NULL,
  `video_hd` text NOT NULL,
  `description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `type`, `exercise_category_id`, `video_sd`, `video_hd`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Screening 8.1', 'video', 1, 'https://player.vimeo.com/external/644867800.sd.mp4?s=779f0c3de651265aa598ed8efb71a5fd5eec4b74&profile_id=165', 'https://player.vimeo.com/external/644867800.hd.mp4?s=6833d02b9b9144caf0208c92e45fbb88e8c5ec6a&profile_id=175', 'test DESC.', '2022-05-20 09:00:27', '2022-03-11 07:47:35', '2022-05-20 09:00:27'),
(3, 'Screening 8.0', 'video', 2, 'https://player.vimeo.com/external/643843423.sd.mp4?s=029d5fc5d8b70ca42bdac63bf1ba9e181d90ad8d&profile_id=165', 'https://player.vimeo.com/external/643843423.hd.mp4?s=20287fd34df27b2824bb1ee918baa0c2b847c242&profile_id=175', 'Some Text', '2022-05-20 09:00:33', '2022-03-11 07:32:36', '2022-05-20 09:00:33'),
(4, 'new test one', 'video', 1, 'https://player.vimeo.com/external/644867800.sd.mp4?s=779f0c3de651265aa598ed8efb71a5fd5eec4b74&profile_id=165', 'https://player.vimeo.com/external/644867800.sd.mp4?s=779f0c3de651265aa598ed8efb71a5fd5eec4b74&profile_id=165', 'some text', '2022-05-20 09:00:21', '2022-04-20 23:34:59', '2022-05-20 09:00:21'),
(5, 'new video update', 'video', 1, 'https://player.vimeo.com/external/644867800.sd.mp4?s=779f0c3de651265aa598ed8efb71a5fd5eec4b74&profile_id=165', 'https://player.vimeo.com/external/644867800.sd.mp4?s=779f0c3de651265aa598ed8efb71a5fd5eec4b74&profile_id=165', 'text', '2022-05-20 09:00:38', '2022-04-20 23:36:12', '2022-05-20 09:00:38'),
(6, 'test video 5', 'video', 3, 'https://vod-progressive.akamaized.net/exp=1651871912~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F3973%2F25%2F644867800%2F2957506287.mp4~hmac=e8c3e1e6cc66ecee28edf702d2f8ad9f3ce1c97b19a75dd615a0bf06a50648c5/vimeo-prod-skyfire-std-us/01/3973/25/644867800/2957506287.mp4?filename=Screening8.1.mp4.mp4', 'https://vod-progressive.akamaized.net/exp=1651871912~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F3973%2F25%2F644867800%2F2957506287.mp4~hmac=e8c3e1e6cc66ecee28edf702d2f8ad9f3ce1c97b19a75dd615a0bf06a50648c5/vimeo-prod-skyfire-std-us/01/3973/25/644867800/2957506287.mp4?filename=Screening8.1.mp4.mp4', 'test', '2022-05-20 09:00:44', '2022-05-06 15:18:51', '2022-05-20 09:00:44'),
(7, 'Hip-thrust', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/705721895/rendition/720p/file.mp4?loc=external&signature=173f650f2477e49f86683c4eedbbfd85d8196bb0d57d1bcbc1868c74b0789f98', 'https://player.vimeo.com/progressive_redirect/playback/705721895/rendition/1080p/file.mp4?loc=external&signature=55e2c0edfac78f6748ee9e5b1f2a157b4fcc757b23b7271a6b1ad469494fcbf0', 'Ha skuldrene på benken, stram rumpen i topp posisjon, ut med knærne, hold haken ned mot brystet i hele bevegelsen', '2022-07-05 13:11:41', '2022-05-16 05:33:22', '2022-07-05 13:11:41'),
(8, 'Knebøy', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/705721895/rendition/720p/file.mp4?loc=external&signature=173f650f2477e49f86683c4eedbbfd85d8196bb0d57d1bcbc1868c74b0789f98', 'https://player.vimeo.com/progressive_redirect/playback/705721947/rendition/1080p/file.mp4?loc=external&signature=110567b20b2284b0390c2eaf89e67beafa8469647ac12ba75763fdfdf614300a', 'God bein stilling tærne kan vikles 15 grader utover, gå dypt ned 90 g fra kne til hofte', '2022-07-05 13:11:46', '2022-05-16 05:50:36', '2022-07-05 13:11:46'),
(9, 'Leg Extention', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/705722038/rendition/720p/file.mp4?loc=external&signature=8926355aae914614769040309c8d449c173225bf606caf8f5444ab5fe50f99e1', 'https://player.vimeo.com/progressive_redirect/playback/705722038/rendition/1080p/file.mp4?loc=external&signature=fe91221904f7f0bb74a1a66860c553e4593e5c03741662520de7711b257f5853', 'Strekk ut knærne', '2022-07-05 13:11:52', '2022-05-16 06:04:07', '2022-07-05 13:11:52'),
(10, 'Global Squat', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/705721833/rendition/720p/file.mp4?loc=external&signature=aedc5aeb4b06fbe4f84c0520246462c7f63938c4f5afc011c35968a998e34652', 'https://player.vimeo.com/progressive_redirect/playback/705721833/rendition/1080p/file.mp4?loc=external&signature=ddc00438e74bf0af85ad95240e9e91ad76db247660877e12edf8cf4cffa9c643', 'Stå med skulder bredd avstand tærne peker 15 grader ut, sett deg ned i en dyp knebøypress knærne ut gjennom hele bevegelsen', '2022-07-05 13:13:04', '2022-05-16 06:07:06', '2022-07-05 13:13:04'),
(11, 'Benpress', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/705721687/rendition/1080p/file.mp4?loc=external&signature=66161ee0623532ca2bd8cf7df19298f58a9a06e1ca375015f6da1abae5be4b5d', 'https://player.vimeo.com/progressive_redirect/playback/705721687/rendition/1080p/file.mp4?loc=external&signature=66161ee0623532ca2bd8cf7df19298f58a9a06e1ca375015f6da1abae5be4b5d', 'Sitt med beina i skulder bredde, tæne peker 15 grader utover, gå dypt ned med beina mot brystet', '2022-07-05 13:13:28', '2022-05-16 06:10:28', '2022-07-05 13:13:28'),
(12, 'Markløft', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/705722159/rendition/1080p/file.mp4?loc=external&signature=f53f9a5f18bab13d97f87a98e3ab2b250d36c59940892a2d423335010e214279', 'https://player.vimeo.com/progressive_redirect/playback/705722159/rendition/1080p/file.mp4?loc=external&signature=f53f9a5f18bab13d97f87a98e3ab2b250d36c59940892a2d423335010e214279', 'Ha stangen inntil leggen, press brystet frem, trekk skuldrene tilbake, vær rett i ryggen, trekk stangen rett opp. Når du skal ned press rumpen bakover hold stangen inntil beina', '2022-07-05 13:18:12', '2022-05-16 06:15:32', '2022-07-05 13:18:12'),
(13, 'Strak mark', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/705797968/rendition/1080p/file.mp4?loc=external&signature=3b60333fc5957ba30f77821b7d24b319796a23b44f37057034c9a2b5040c6eeb', 'https://player.vimeo.com/progressive_redirect/playback/705797968/rendition/1080p/file.mp4?loc=external&signature=3b60333fc5957ba30f77821b7d24b319796a23b44f37057034c9a2b5040c6eeb', 'Hold beina strake, press rumpen bakover, stangen inntil kroppen press overkroppen fremover, hver rett i ryggen i hele bevegelsen', '2022-07-05 13:32:44', '2022-05-16 06:18:50', '2022-07-05 13:32:44'),
(14, 'Squat to stand', 'video', 8, 'https://player.vimeo.com/progressive_redirect/playback/705796700/rendition/1080p/file.mp4?loc=external&signature=ffca0352368e1b15fb93376ab985a95b2872a20c28658ee180b8c16cb8d45d98', 'https://player.vimeo.com/progressive_redirect/playback/705796700/rendition/1080p/file.mp4?loc=external&signature=ffca0352368e1b15fb93376ab985a95b2872a20c28658ee180b8c16cb8d45d98', 'Stå med bred beinstilling, hendene under tærne, gå ned i en knebøy, strekk på beina men su holder armene under tærne', '2022-07-05 13:32:48', '2022-05-16 06:23:46', '2022-07-05 13:32:48'),
(15, 'Spinrotation', 'video', 8, 'https://player.vimeo.com/progressive_redirect/playback/705795790/rendition/1080p/file.mp4?loc=external&signature=5c92d1c416f2f5ec195bdab19f8f34959e0e98e0dc8a1c73dd55bad2afa986d0', 'https://player.vimeo.com/progressive_redirect/playback/705795790/rendition/1080p/file.mp4?loc=external&signature=5c92d1c416f2f5ec195bdab19f8f34959e0e98e0dc8a1c73dd55bad2afa986d0', 'Stå i en høy planke , ta det ene beinet ved siden av armene roter den ene armen opp og tilbake så motsatt, bein tilbake  så det andre beinet', '2022-07-05 13:32:52', '2022-05-16 06:27:33', '2022-07-05 13:32:52'),
(16, 'Benkpress', 'video', 6, 'https://player.vimeo.com/progressive_redirect/playback/705721470/rendition/1080p/file.mp4?loc=external&signature=9dafac1597b97bd894e01b436eb1e30223787a54566787c532bac413297d7375', 'https://player.vimeo.com/progressive_redirect/playback/705721470/rendition/1080p/file.mp4?loc=external&signature=9dafac1597b97bd894e01b436eb1e30223787a54566787c532bac413297d7375', 'Ligg på benken med øynene rett under stangen, ta av stangen så press brystet opp og skuldrene ned mot benken, stangen skal treffe nedre del av brystet i under øvelsen', '2022-07-05 13:32:55', '2022-05-16 06:30:42', '2022-07-05 13:32:55'),
(17, 'Brystpress med hantler', 'video', 6, 'https://player.vimeo.com/progressive_redirect/playback/705721344/rendition/1080p/file.mp4?loc=external&signature=60c7e6d39fbe6bd2190d866810582e45023534675dc5f06452c83f4de9e6bb35', 'https://player.vimeo.com/progressive_redirect/playback/705721344/rendition/1080p/file.mp4?loc=external&signature=60c7e6d39fbe6bd2190d866810582e45023534675dc5f06452c83f4de9e6bb35', 'Press skuldrene i benken og brystet opp,', '2022-07-05 13:32:59', '2022-05-16 06:37:21', '2022-07-05 13:32:59'),
(18, 'Skråbenk', 'video', 6, 'https://player.vimeo.com/progressive_redirect/playback/705794404/rendition/1080p/file.mp4?loc=external&signature=9a3347c654f102716bc23079a90e222c5efe8f1f805303c2aa2714acbfe28a1a', 'https://player.vimeo.com/progressive_redirect/playback/705794404/rendition/1080p/file.mp4?loc=external&signature=9a3347c654f102716bc23079a90e222c5efe8f1f805303c2aa2714acbfe28a1a', 'Press brystet opp, skuldrene i benken, vektene skal på yttersiden av brystet', '2022-07-05 13:33:02', '2022-05-16 06:43:32', '2022-07-05 13:33:02'),
(19, 'Crunch', 'video', 9, 'https://player.vimeo.com/progressive_redirect/playback/705722683/rendition/1080p/file.mp4?loc=external&signature=2e962acd6a504e632eefc627a473b21c8a16b8650b21c9cce5a2dfa3d5fee04c', 'https://player.vimeo.com/progressive_redirect/playback/705722683/rendition/1080p/file.mp4?loc=external&signature=2e962acd6a504e632eefc627a473b21c8a16b8650b21c9cce5a2dfa3d5fee04c', 'Press korsryggen skal være  i bakken hele tiden, under øvelsen, gå så langt opp du klarer med korsryggen i bakken og stram maven på toppen', '2022-07-05 13:33:05', '2022-05-16 06:49:03', '2022-07-05 13:33:05'),
(20, 'Mave maskin', 'video', 9, 'https://player.vimeo.com/progressive_redirect/playback/705722265/rendition/1080p/file.mp4?loc=external&signature=81bc29567d43c410f233c23c1ae1b7e472b5bfb4d0e48154e4f1ce47ebd29967', 'https://player.vimeo.com/progressive_redirect/playback/705722265/rendition/1080p/file.mp4?loc=external&signature=81bc29567d43c410f233c23c1ae1b7e472b5bfb4d0e48154e4f1ce47ebd29967', 'Ha puten over brystet og press fremover stram maven i bunn posisjon', '2022-07-05 13:13:24', '2022-05-16 06:50:41', '2022-07-05 13:13:24'),
(21, 'Brystpress maskin', 'video', 6, 'https://player.vimeo.com/progressive_redirect/playback/705722217/rendition/1080p/file.mp4?loc=external&signature=00ab9cf483ab83cedeaa1c9674c4a41756392f909b41b8b6a09b15339f8bb38c', 'https://player.vimeo.com/progressive_redirect/playback/705722217/rendition/1080p/file.mp4?loc=external&signature=00ab9cf483ab83cedeaa1c9674c4a41756392f909b41b8b6a09b15339f8bb38c', 'Sitt så håndtakken er i bryst høyde, press brystet frem, skuldrenebladene i benken og press frem', '2022-07-05 13:33:17', '2022-05-16 06:54:35', '2022-07-05 13:33:17'),
(22, 'Nedtrekk bredt grep', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/705722423/rendition/1080p/file.mp4?loc=external&signature=ee9c59e2d9846fb8e5e0c552e29759030d0357f7e080fd12ff7e88463f122f28', 'https://player.vimeo.com/progressive_redirect/playback/705722423/rendition/1080p/file.mp4?loc=external&signature=ee9c59e2d9846fb8e5e0c552e29759030d0357f7e080fd12ff7e88463f122f28', 'Press ned skulderbladen før du starter øvelsen, dra ned stangen til brystet slipp stangen rolig opp', '2022-07-05 13:33:25', '2022-05-16 06:58:30', '2022-07-05 13:33:25'),
(23, 'Sittende roing', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/705722514/rendition/1080p/file.mp4?loc=external&signature=da94de80eb244731bb859914099a6ed3c90d336337e02795686be31303a1ca7a', 'https://player.vimeo.com/progressive_redirect/playback/705722514/rendition/1080p/file.mp4?loc=external&signature=da94de80eb244731bb859914099a6ed3c90d336337e02795686be31303a1ca7a', 'Press skulderbladene bak, dra stangen mot nedre del av maven Sitt med rett overkropp', '2022-07-05 13:32:40', '2022-05-16 07:33:48', '2022-07-05 13:32:40'),
(24, 'Sittende roing maskin', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/705722305/rendition/1080p/file.mp4?loc=external&signature=888966740f87cb3e5c6a3dd3b949b434e244a7dd0460bfaa88ce765e2994d78f', 'https://player.vimeo.com/progressive_redirect/playback/705722305/rendition/1080p/file.mp4?loc=external&signature=888966740f87cb3e5c6a3dd3b949b434e244a7dd0460bfaa88ce765e2994d78f', 'Sitt med brystet mot puten, dra skuldrene bak før du starter med å dra armene intill kroppen', '2022-07-05 13:33:29', '2022-05-16 07:35:38', '2022-07-05 13:33:29'),
(25, 'Rygghev', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/705722463/rendition/1080p/file.mp4?loc=external&signature=46019c7c86f5597ab9b3d7b2332addc0e6aa23120b0b74e7dff22d34696bbb60', 'https://player.vimeo.com/progressive_redirect/playback/705722463/rendition/1080p/file.mp4?loc=external&signature=46019c7c86f5597ab9b3d7b2332addc0e6aa23120b0b74e7dff22d34696bbb60', 'Ligg så hoften er på kanten av puten, gå så langt ned du kan og rull opp så kroppen er rett som en strek', '2022-07-05 13:33:32', '2022-05-16 07:37:49', '2022-07-05 13:33:32'),
(26, 'Stående Triceps m/tau', 'video', 11, 'https://player.vimeo.com/progressive_redirect/playback/705800619/rendition/1080p/file.mp4?loc=external&signature=7e0e0838401764a31bd299b8946566d3336b711eeb20e64b0dfaa055df86d3bf', 'https://player.vimeo.com/progressive_redirect/playback/705800619/rendition/1080p/file.mp4?loc=external&signature=7e0e0838401764a31bd299b8946566d3336b711eeb20e64b0dfaa055df86d3bf', 'Stå med tau over hodet dra  armen frem så de blir strake', '2022-07-05 13:33:35', '2022-05-16 07:41:16', '2022-07-05 13:33:35'),
(27, 'Triceps press m/tau på knærne', 'video', 11, 'https://player.vimeo.com/progressive_redirect/playback/705801932/rendition/1080p/file.mp4?loc=external&signature=794c4a0e366da1e8891b0d843eca77c8e5bfc9a8b1a4de0592bc6d9961f824ac', 'https://player.vimeo.com/progressive_redirect/playback/705801932/rendition/1080p/file.mp4?loc=external&signature=794c4a0e366da1e8891b0d843eca77c8e5bfc9a8b1a4de0592bc6d9961f824ac', 'Hold overarmen inntil kroppen og dra ned, Her kan man både stå og sitte på kne så du får full bevegelse', '2022-07-05 13:33:39', '2022-05-16 07:45:40', '2022-07-05 13:33:39'),
(28, 'Biceps m/hantler', 'video', 12, 'https://player.vimeo.com/progressive_redirect/playback/705721783/rendition/1080p/file.mp4?loc=external&signature=ce5b5936ac8ebb4ea3347e88346c6649835dff33577b3a6c78b24a8e6f105d7e', 'https://player.vimeo.com/progressive_redirect/playback/705721783/rendition/1080p/file.mp4?loc=external&signature=ce5b5936ac8ebb4ea3347e88346c6649835dff33577b3a6c78b24a8e6f105d7e', 'Sitt med armene rett ned dra opp og vri håndleddene på toppen', '2022-07-05 13:33:43', '2022-05-16 07:51:25', '2022-07-05 13:33:43'),
(29, 'Romaskin', 'video', 8, 'https://player.vimeo.com/progressive_redirect/playback/712009226/rendition/1080p/file.mp4?loc=external&signature=e59a61685d38b7f9d1d8e258e958aa33ac61377bf5b18837129eeee24b577ceb', 'https://player.vimeo.com/progressive_redirect/playback/712009226/rendition/1080p/file.mp4?loc=external&signature=e59a61685d38b7f9d1d8e258e958aa33ac61377bf5b18837129eeee24b577ceb', 'X', '2022-07-05 13:33:46', '2022-05-23 05:37:24', '2022-07-05 13:33:46'),
(30, 'Tåhev stående', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/712009782/rendition/1080p/file.mp4?loc=external&signature=79c7873caf08a8eb9746984bb2be83857f488f2fdb44bf07a13eb73ade42e148', 'https://player.vimeo.com/progressive_redirect/playback/712009782/rendition/1080p/file.mp4?loc=external&signature=79c7873caf08a8eb9746984bb2be83857f488f2fdb44bf07a13eb73ade42e148', 'x', '2022-07-05 13:33:49', '2022-05-23 05:39:31', '2022-07-05 13:33:49'),
(31, 'Tåhev sittende', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/712009749/rendition/1080p/file.mp4?loc=external&signature=d0a50d5ab1ebd39b1e0dbf36b46ff2cb631896caebc778d84585df066130fd56', 'https://player.vimeo.com/progressive_redirect/playback/712009749/rendition/1080p/file.mp4?loc=external&signature=d0a50d5ab1ebd39b1e0dbf36b46ff2cb631896caebc778d84585df066130fd56', 'x', '2022-07-05 13:33:54', '2022-05-23 05:40:55', '2022-07-05 13:33:54'),
(32, 'Triceps Kabel', 'video', 11, 'https://player.vimeo.com/progressive_redirect/playback/712009714/rendition/1080p/file.mp4?loc=external&signature=b10e44491700ba9f249f8ecccb50262ed721c7793538e7157c91c5f4f48c7379', 'https://player.vimeo.com/progressive_redirect/playback/712009714/rendition/1080p/file.mp4?loc=external&signature=b10e44491700ba9f249f8ecccb50262ed721c7793538e7157c91c5f4f48c7379', 'x', '2022-07-05 13:33:59', '2022-05-23 05:42:12', '2022-07-05 13:33:59'),
(33, 'Trappemaskin', 'video', 8, 'https://player.vimeo.com/progressive_redirect/playback/712009681/rendition/1080p/file.mp4?loc=external&signature=a0626b00829a2180b3c8c6f7dd9dee32a251a7fb0ee3ca3ddee9608c50bf920d', 'https://player.vimeo.com/progressive_redirect/playback/712009681/rendition/1080p/file.mp4?loc=external&signature=a0626b00829a2180b3c8c6f7dd9dee32a251a7fb0ee3ca3ddee9608c50bf920d', 'x', '2022-07-05 13:34:03', '2022-05-23 05:43:18', '2022-07-05 13:34:03'),
(34, 'Sykkel med armer', 'video', 8, 'https://player.vimeo.com/progressive_redirect/playback/712009658/rendition/1080p/file.mp4?loc=external&signature=0ff399f574b34909a36e12ac4c1ebffdb30b9c5fab7cfcdefb71b0087319de66', 'https://player.vimeo.com/progressive_redirect/playback/712009658/rendition/1080p/file.mp4?loc=external&signature=0ff399f574b34909a36e12ac4c1ebffdb30b9c5fab7cfcdefb71b0087319de66', 'x', '2022-07-05 13:34:06', '2022-05-23 05:45:13', '2022-07-05 13:34:06'),
(35, 'Spirit pec rygg', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712009636/rendition/1080p/file.mp4?loc=external&signature=ee5cead793a6d5797c90f00ee2e8abe04f6d9f5a59115a84a3a9eae23a7ef047', 'https://player.vimeo.com/progressive_redirect/playback/712009636/rendition/1080p/file.mp4?loc=external&signature=ee5cead793a6d5797c90f00ee2e8abe04f6d9f5a59115a84a3a9eae23a7ef047', 'x', '2022-07-05 13:34:09', '2022-05-23 05:47:31', '2022-07-05 13:34:09'),
(36, 'Spirit pec bryst', 'video', 6, 'https://player.vimeo.com/progressive_redirect/playback/712009603/rendition/1080p/file.mp4?loc=external&signature=832ccf116fbb853d9456fed16bbba0275bf4f92c566b7a5330132f6e1a830c6f', 'https://player.vimeo.com/progressive_redirect/playback/712009603/rendition/1080p/file.mp4?loc=external&signature=832ccf116fbb853d9456fed16bbba0275bf4f92c566b7a5330132f6e1a830c6f', 'x', '2022-07-05 13:34:15', '2022-05-23 05:48:35', '2022-07-05 13:34:15'),
(37, 'Skulderpress', 'video', 11, 'https://player.vimeo.com/progressive_redirect/playback/712009570/rendition/1080p/file.mp4?loc=external&signature=d47d65a560738ab128ae9cc139e4f2c0f47020801669a2c1be32dd1b17802b12', 'https://player.vimeo.com/progressive_redirect/playback/712009570/rendition/1080p/file.mp4?loc=external&signature=d47d65a560738ab128ae9cc139e4f2c0f47020801669a2c1be32dd1b17802b12', 'x', '2022-07-05 13:34:18', '2022-05-23 05:50:44', '2022-07-05 13:34:18'),
(38, 'Skrå benk press', 'video', 6, 'https://player.vimeo.com/progressive_redirect/playback/712009540/rendition/1080p/file.mp4?loc=external&signature=a5881d26741d1367bd1a38d345196783702d2f1b707c05e6506e664570e77f19', 'https://player.vimeo.com/progressive_redirect/playback/712009540/rendition/1080p/file.mp4?loc=external&signature=a5881d26741d1367bd1a38d345196783702d2f1b707c05e6506e664570e77f19', 'x', '2022-07-05 13:34:21', '2022-05-23 05:53:44', '2022-07-05 13:34:21'),
(39, 'Ski', 'video', 8, 'https://player.vimeo.com/progressive_redirect/playback/712009510/rendition/1080p/file.mp4?loc=external&signature=ac68a73e7f65445f6c62a2e8ec703e4f329a59a56da101c0cdda120e8efa6876', 'https://player.vimeo.com/progressive_redirect/playback/712009510/rendition/1080p/file.mp4?loc=external&signature=ac68a73e7f65445f6c62a2e8ec703e4f329a59a56da101c0cdda120e8efa6876', 'X', '2022-07-05 13:34:24', '2022-05-23 05:54:37', '2022-07-05 13:34:24'),
(40, 'Sit ups', 'video', 9, 'https://player.vimeo.com/progressive_redirect/playback/712009421/rendition/1080p/file.mp4?loc=external&signature=e6658e0207571a6e7922f56dc09a44bff1807947e6028dbb33f1a1b83942ede0', 'https://player.vimeo.com/progressive_redirect/playback/712009421/rendition/1080p/file.mp4?loc=external&signature=e6658e0207571a6e7922f56dc09a44bff1807947e6028dbb33f1a1b83942ede0', 'X', '2022-07-05 13:34:27', '2022-05-23 05:55:59', '2022-07-05 13:34:27'),
(41, 'Skulderpress manualer', 'video', 11, 'https://player.vimeo.com/progressive_redirect/playback/712009303/rendition/1080p/file.mp4?loc=external&signature=0ff635611789b4f98687dd5687b82a8c795d091b392f4d1f64c0de47cf2172c0', 'https://player.vimeo.com/progressive_redirect/playback/712009303/rendition/1080p/file.mp4?loc=external&signature=0ff635611789b4f98687dd5687b82a8c795d091b392f4d1f64c0de47cf2172c0', 'X', '2022-07-05 13:34:30', '2022-05-23 05:57:37', '2022-07-05 13:34:30'),
(42, 'Liggende ring pull up', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712009199/rendition/1080p/file.mp4?loc=external&signature=1f6e6b0ddfd2e0edbabced614da34badd34cb9c0ff75dfd3a49b201a5a218803', 'https://player.vimeo.com/progressive_redirect/playback/712009199/rendition/1080p/file.mp4?loc=external&signature=1f6e6b0ddfd2e0edbabced614da34badd34cb9c0ff75dfd3a49b201a5a218803', 'X', '2022-07-05 13:34:33', '2022-05-23 06:00:16', '2022-07-05 13:34:33'),
(43, 'Ring face pull', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712009199/rendition/1080p/file.mp4?loc=external&signature=1f6e6b0ddfd2e0edbabced614da34badd34cb9c0ff75dfd3a49b201a5a218803', 'https://player.vimeo.com/progressive_redirect/playback/712009199/rendition/1080p/file.mp4?loc=external&signature=1f6e6b0ddfd2e0edbabced614da34badd34cb9c0ff75dfd3a49b201a5a218803', 'X', '2022-07-05 13:34:36', '2022-05-23 06:01:18', '2022-07-05 13:34:36'),
(44, 'Pull ups', 'video', 10, 'https://player.vimeo.com/progressive_redirect/playback/712009168/rendition/1080p/file.mp4?loc=external&signature=247efd225f0dd7726e1ec82d676e61fae4f97fa8d21b6f336949ab3770e5b842', 'https://player.vimeo.com/progressive_redirect/playback/712009168/rendition/1080p/file.mp4?loc=external&signature=247efd225f0dd7726e1ec82d676e61fae4f97fa8d21b6f336949ab3770e5b842', 'X', '2022-07-05 13:34:39', '2022-05-23 06:02:41', '2022-07-05 13:34:39'),
(45, 'Pull ups med bånd', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712009108/rendition/1080p/file.mp4?loc=external&signature=742f53f4db559ef99ab05e10b43348f399f395bb98e99f068fc87dc85273fdbf', 'https://player.vimeo.com/progressive_redirect/playback/712009108/rendition/1080p/file.mp4?loc=external&signature=742f53f4db559ef99ab05e10b43348f399f395bb98e99f068fc87dc85273fdbf', 'X', '2022-07-05 13:34:43', '2022-05-23 06:03:45', '2022-07-05 13:34:43'),
(46, 'Lat pull down', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712009051/rendition/1080p/file.mp4?loc=external&signature=24b50492fd062be1d17b90ae93f72b699cf3ee9899b0893d7c9360a6b98e15a4', 'https://player.vimeo.com/progressive_redirect/playback/712009051/rendition/1080p/file.mp4?loc=external&signature=24b50492fd062be1d17b90ae93f72b699cf3ee9899b0893d7c9360a6b98e15a4', 'X', '2022-07-05 13:34:46', '2022-05-23 06:22:12', '2022-07-05 13:34:46'),
(47, 'Lat pull down kabel', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712008979/rendition/1080p/file.mp4?loc=external&signature=99b9a98ae70d93b280d3f4526db7fa5cabe3408fcca2447d87264f5af5c937d6', 'https://player.vimeo.com/progressive_redirect/playback/712008979/rendition/1080p/file.mp4?loc=external&signature=99b9a98ae70d93b280d3f4526db7fa5cabe3408fcca2447d87264f5af5c937d6', 'X', '2022-07-05 13:34:50', '2022-05-23 06:24:05', '2022-07-05 13:34:50'),
(48, 'Lat pull down neutral grip', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712008616/rendition/1080p/file.mp4?loc=external&signature=f17eeb3fdf3fd6b549b3ec026ec37825337f1ab7218b7497d043c485ebfec4eb', 'https://player.vimeo.com/progressive_redirect/playback/712008616/rendition/1080p/file.mp4?loc=external&signature=f17eeb3fdf3fd6b549b3ec026ec37825337f1ab7218b7497d043c485ebfec4eb', 'X', '2022-07-05 13:34:54', '2022-05-23 06:26:17', '2022-07-05 13:34:54'),
(49, 'Bakside skuldre kabel', 'video', 10, 'https://player.vimeo.com/progressive_redirect/playback/712008590/rendition/1080p/file.mp4?loc=external&signature=738b1637eb9ba7e23b016a418257542e6e96c72782f060a21f6305bfde56d23b', 'https://player.vimeo.com/progressive_redirect/playback/712008590/rendition/1080p/file.mp4?loc=external&signature=738b1637eb9ba7e23b016a418257542e6e96c72782f060a21f6305bfde56d23b', 'X', '2022-07-05 13:34:59', '2022-05-23 06:30:38', '2022-07-05 13:34:59'),
(50, 'Cable fly', 'video', 6, 'https://player.vimeo.com/progressive_redirect/playback/712008551/rendition/1080p/file.mp4?loc=external&signature=8bef8c37a8dca65167711b11e2067843a8af07a36f87892fcd7208168dfc9897', 'https://player.vimeo.com/progressive_redirect/playback/712008551/rendition/1080p/file.mp4?loc=external&signature=8bef8c37a8dca65167711b11e2067843a8af07a36f87892fcd7208168dfc9897', 'X', '2022-07-05 13:35:02', '2022-05-23 06:32:28', '2022-07-05 13:35:02'),
(51, 'Kettlebell swing', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/712008572/rendition/1080p/file.mp4?loc=external&signature=b76d6720ccc598089b2bd36eeb929e698f66bec13533334cdfc1348dee9c8918', 'https://player.vimeo.com/progressive_redirect/playback/712008572/rendition/1080p/file.mp4?loc=external&signature=b76d6720ccc598089b2bd36eeb929e698f66bec13533334cdfc1348dee9c8918', 'X', '2022-07-05 13:35:05', '2022-05-23 06:36:22', '2022-07-05 13:35:05'),
(52, 'Hamstring curl liggende', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/712008528/rendition/1080p/file.mp4?loc=external&signature=415ac4f928e061e102cec4c4a759e2822bec57604d4f65f15bcf45cbf3af6593', 'https://player.vimeo.com/progressive_redirect/playback/712008528/rendition/1080p/file.mp4?loc=external&signature=415ac4f928e061e102cec4c4a759e2822bec57604d4f65f15bcf45cbf3af6593', 'X', '2022-07-05 13:35:10', '2022-05-23 06:37:30', '2022-07-05 13:35:10'),
(53, 'Hamstring curl sittende', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/712009474/rendition/1080p/file.mp4?loc=external&signature=f5cd710eefcf52391c183043c706d4bedb47463858fc6492d246b206ea037645', 'https://player.vimeo.com/progressive_redirect/playback/712009474/rendition/1080p/file.mp4?loc=external&signature=f5cd710eefcf52391c183043c706d4bedb47463858fc6492d246b206ea037645', 'X', '2022-07-05 13:35:13', '2022-05-23 06:39:53', '2022-07-05 13:35:13'),
(54, 'Glute ham raises', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/712008458/rendition/1080p/file.mp4?loc=external&signature=3d9b8c76999ca092ff449cb079ca5ba2682602c7793365fa005920753ad0c127', 'https://player.vimeo.com/progressive_redirect/playback/712008458/rendition/1080p/file.mp4?loc=external&signature=3d9b8c76999ca092ff449cb079ca5ba2682602c7793365fa005920753ad0c127', 'X', '2022-07-05 13:35:16', '2022-05-23 06:41:54', '2022-07-05 13:35:16'),
(55, 'Sykkel', 'video', 8, 'https://player.vimeo.com/progressive_redirect/playback/712007200/rendition/1080p/file.mp4?loc=external&signature=8ab8ede59350c2819aa7314d453df93dff9f2e4634cea6d20954c82c41e24e9c', 'https://player.vimeo.com/progressive_redirect/playback/712007200/rendition/1080p/file.mp4?loc=external&signature=8ab8ede59350c2819aa7314d453df93dff9f2e4634cea6d20954c82c41e24e9c', 'x', '2022-07-05 13:35:19', '2022-05-23 06:45:42', '2022-07-05 13:35:19'),
(56, 'Biceps curl', 'video', 12, 'https://player.vimeo.com/progressive_redirect/playback/712007164/rendition/1080p/file.mp4?loc=external&signature=2e01429839a9932afffe0fad4697dd5857192d34cff3ffffe3dddd1cbd007e16', 'https://player.vimeo.com/progressive_redirect/playback/712007164/rendition/1080p/file.mp4?loc=external&signature=2e01429839a9932afffe0fad4697dd5857192d34cff3ffffe3dddd1cbd007e16', 'X', '2022-07-05 13:35:22', '2022-05-23 06:47:58', '2022-07-05 13:35:22'),
(57, 'Bent over row', 'video', 10, 'https://player.vimeo.com/progressive_redirect/playback/712007132/rendition/1080p/file.mp4?loc=external&signature=47c73a3864086de134c96e9556240a73caab2f6a80b5ca85f9e0a13e8b8bed23', 'https://player.vimeo.com/progressive_redirect/playback/712007132/rendition/1080p/file.mp4?loc=external&signature=47c73a3864086de134c96e9556240a73caab2f6a80b5ca85f9e0a13e8b8bed23', 'X', '2022-07-05 13:35:26', '2022-05-23 06:49:32', '2022-07-05 13:35:26'),
(58, 'En fot strakmark med kneløft', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712007222/rendition/1080p/file.mp4?loc=external&signature=d70bb277aedb3f0ffe7f775f523d26b50aa689c90b2742a9096ca91789dff201', 'https://player.vimeo.com/progressive_redirect/playback/712007222/rendition/1080p/file.mp4?loc=external&signature=d70bb277aedb3f0ffe7f775f523d26b50aa689c90b2742a9096ca91789dff201', 'X', '2022-07-05 13:35:29', '2022-05-23 06:51:28', '2022-07-05 13:35:29'),
(59, 'Benpress', 'video', 4, 'https://player.vimeo.com/progressive_redirect/playback/712007088/rendition/1080p/file.mp4?loc=external&signature=6504d9d844f447d3c138ee0a29b438f05b0eec215b8d793320fb09e14e79a73d', 'https://player.vimeo.com/progressive_redirect/playback/712007088/rendition/1080p/file.mp4?loc=external&signature=6504d9d844f447d3c138ee0a29b438f05b0eec215b8d793320fb09e14e79a73d', 'X', '2022-07-05 13:35:32', '2022-05-23 06:52:01', '2022-07-05 13:35:32'),
(60, 'Assisted pull ups', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712007048/rendition/1080p/file.mp4?loc=external&signature=c1c31cae329f3b9c8e5cd35c40886fe095d553cb314232c11a494c2b3a6c63ea', 'https://player.vimeo.com/progressive_redirect/playback/712007048/rendition/1080p/file.mp4?loc=external&signature=c1c31cae329f3b9c8e5cd35c40886fe095d553cb314232c11a494c2b3a6c63ea', 'X', '2022-07-05 13:35:35', '2022-05-23 06:53:13', '2022-07-05 13:35:35'),
(61, 'Arnold skulderpress', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/712006905/rendition/1080p/file.mp4?loc=external&signature=e56ccaa7f74782ead391707d4031fcbf5a126235aec8a6cbe56602e1f3787611', 'https://player.vimeo.com/progressive_redirect/playback/712006905/rendition/1080p/file.mp4?loc=external&signature=e56ccaa7f74782ead391707d4031fcbf5a126235aec8a6cbe56602e1f3787611', 'X', '2022-07-05 13:36:05', '2022-05-23 06:55:15', '2022-07-05 13:36:05'),
(62, '3D mølle', 'video', 8, 'https://player.vimeo.com/progressive_redirect/playback/712006884/rendition/1080p/file.mp4?loc=external&signature=a9c8397f4eb71290430175c0311941855ef9347b02065a32bc597bbfa69091fd', 'https://player.vimeo.com/progressive_redirect/playback/712006884/rendition/1080p/file.mp4?loc=external&signature=a9c8397f4eb71290430175c0311941855ef9347b02065a32bc597bbfa69091fd', 'X', '2022-07-05 13:36:08', '2022-05-23 06:56:22', '2022-07-05 13:36:08'),
(63, 'Biceps curls manualer', 'video', 12, 'https://player.vimeo.com/progressive_redirect/playback/705721783/rendition/1080p/file.mp4?loc=external&signature=ce5b5936ac8ebb4ea3347e88346c6649835dff33577b3a6c78b24a8e6f105d7e', 'https://player.vimeo.com/progressive_redirect/playback/705721783/rendition/1080p/file.mp4?loc=external&signature=ce5b5936ac8ebb4ea3347e88346c6649835dff33577b3a6c78b24a8e6f105d7e', 'X', '2022-07-05 13:36:10', '2022-05-23 06:57:29', '2022-07-05 13:36:10'),
(64, 'Triceps pull down', 'video', 11, 'https://player.vimeo.com/progressive_redirect/playback/705801932/rendition/1080p/file.mp4?loc=external&signature=794c4a0e366da1e8891b0d843eca77c8e5bfc9a8b1a4de0592bc6d9961f824ac', 'https://player.vimeo.com/progressive_redirect/playback/705801932/rendition/1080p/file.mp4?loc=external&signature=794c4a0e366da1e8891b0d843eca77c8e5bfc9a8b1a4de0592bc6d9961f824ac', 'X', '2022-07-05 13:36:14', '2022-05-23 06:58:44', '2022-07-05 13:36:14'),
(65, 'Triceps extention', 'video', 11, 'https://player.vimeo.com/progressive_redirect/playback/705800619/rendition/1080p/file.mp4?loc=external&signature=7e0e0838401764a31bd299b8946566d3336b711eeb20e64b0dfaa055df86d3bf', 'https://player.vimeo.com/progressive_redirect/playback/705800619/rendition/1080p/file.mp4?loc=external&signature=7e0e0838401764a31bd299b8946566d3336b711eeb20e64b0dfaa055df86d3bf', 'X', '2022-07-05 13:36:37', '2022-05-23 07:00:43', '2022-07-05 13:36:37'),
(66, 'Rygghev', 'video', 10, 'https://player.vimeo.com/progressive_redirect/playback/705722463/rendition/1080p/file.mp4?loc=external&signature=46019c7c86f5597ab9b3d7b2332addc0e6aa23120b0b74e7dff22d34696bbb60', 'https://player.vimeo.com/progressive_redirect/playback/705722463/rendition/1080p/file.mp4?loc=external&signature=46019c7c86f5597ab9b3d7b2332addc0e6aa23120b0b74e7dff22d34696bbb60', 'X', '2022-07-05 13:36:39', '2022-05-23 07:02:15', '2022-07-05 13:36:39'),
(67, 'Maskinsittende', 'video', 7, 'https://player.vimeo.com/progressive_redirect/playback/705722305/rendition/1080p/file.mp4?loc=external&signature=888966740f87cb3e5c6a3dd3b949b434e244a7dd0460bfaa88ce765e2994d78f', 'https://player.vimeo.com/progressive_redirect/playback/705722305/rendition/1080p/file.mp4?loc=external&signature=888966740f87cb3e5c6a3dd3b949b434e244a7dd0460bfaa88ce765e2994d78f', 'X', '2022-07-05 13:36:42', '2022-05-23 07:03:49', '2022-07-05 13:36:42'),
(68, 'Sittende roing', 'video', 10, 'https://player.vimeo.com/progressive_redirect/playback/705722514/rendition/1080p/file.mp4?loc=external&signature=da94de80eb244731bb859914099a6ed3c90d336337e02795686be31303a1ca7a', 'https://player.vimeo.com/progressive_redirect/playback/705722514/rendition/1080p/file.mp4?loc=external&signature=da94de80eb244731bb859914099a6ed3c90d336337e02795686be31303a1ca7a', 'X', '2022-07-05 13:36:45', '2022-05-23 07:04:42', '2022-07-05 13:36:45'),
(69, 'Nedtrekk', 'video', 10, 'https://player.vimeo.com/progressive_redirect/playback/705722423/rendition/1080p/file.mp4?loc=external&signature=ee9c59e2d9846fb8e5e0c552e29759030d0357f7e080fd12ff7e88463f122f28', 'https://player.vimeo.com/progressive_redirect/playback/705722423/rendition/1080p/file.mp4?loc=external&signature=ee9c59e2d9846fb8e5e0c552e29759030d0357f7e080fd12ff7e88463f122f28', 'X', '2022-07-05 13:36:48', '2022-05-23 07:05:29', '2022-07-05 13:36:48'),
(70, 'Brystpress', 'video', 6, 'https://player.vimeo.com/progressive_redirect/playback/705722217/rendition/1080p/file.mp4?loc=external&signature=00ab9cf483ab83cedeaa1c9674c4a41756392f909b41b8b6a09b15339f8bb38c', 'https://player.vimeo.com/progressive_redirect/playback/705722217/rendition/1080p/file.mp4?loc=external&signature=00ab9cf483ab83cedeaa1c9674c4a41756392f909b41b8b6a09b15339f8bb38c', 'X', '2022-07-05 13:13:20', '2022-05-23 07:06:44', '2022-07-05 13:13:20'),
(71, 'sdasdasd', 'video', 7, 'sad', 'asd', NULL, '2022-07-05 13:13:10', '2022-06-20 10:28:56', '2022-07-05 13:13:10'),
(72, 'tests', 'video', 7, 'test', 'test', NULL, '2022-07-05 16:04:46', '2022-07-05 15:39:29', '2022-07-05 16:04:46'),
(73, 'tests', 'video', 4, 'dsre', 'sdee', NULL, '2022-07-08 20:50:06', '2022-07-08 20:49:02', '2022-07-08 20:50:06'),
(74, 'Benpress', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642968792/rendition/1080p/file.mp4?loc=external&signature=4fe540c08d14195a9fa850ac7e5a0d353bf84b2e088478e8fabc64a95fc0db84', 'https://player.vimeo.com/progressive_redirect/playback/642968792/rendition/1080p/file.mp4?loc=external&signature=4fe540c08d14195a9fa850ac7e5a0d353bf84b2e088478e8fabc64a95fc0db84', NULL, NULL, '2022-07-11 05:29:28', '2022-07-11 05:29:28'),
(75, 'Legcurl', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969288/rendition/1080p/file.mp4?loc=external&signature=a3c9ce116d37703f9e933f2ec9e595dd3b4468b04e2f0eff5d6b0d42aef7c783', 'https://player.vimeo.com/progressive_redirect/playback/642969288/rendition/1080p/file.mp4?loc=external&signature=a3c9ce116d37703f9e933f2ec9e595dd3b4468b04e2f0eff5d6b0d42aef7c783', NULL, NULL, '2022-07-11 05:39:29', '2022-07-11 05:39:29'),
(76, 'Biceps curl', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642968810/rendition/1080p/file.mp4?loc=external&signature=014fdee477eaa97ed4825362455cde5ba94e1087e3e4422be277b68b6a2b1ed8', 'https://player.vimeo.com/progressive_redirect/playback/642968810/rendition/1080p/file.mp4?loc=external&signature=014fdee477eaa97ed4825362455cde5ba94e1087e3e4422be277b68b6a2b1ed8', NULL, NULL, '2022-07-11 06:55:30', '2022-07-11 06:55:30'),
(77, 'Liggende brystpress med manualer', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642968850/rendition/1080p/file.mp4?loc=external&signature=1d5f19298cf1ac6578e8755be638335ebdd39fa5d0e369e14eb9528ff322b78c', 'https://player.vimeo.com/progressive_redirect/playback/642968850/rendition/1080p/file.mp4?loc=external&signature=1d5f19298cf1ac6578e8755be638335ebdd39fa5d0e369e14eb9528ff322b78c', NULL, NULL, '2022-07-11 07:01:06', '2022-07-11 07:01:06'),
(78, 'Brystpress Maskin', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642968869/rendition/1080p/file.mp4?loc=external&signature=7d2becda900d7026cad0e372098faeeb9a0fd8a56f365dd2fb1db5770f2e67cf', 'https://player.vimeo.com/progressive_redirect/playback/642968869/rendition/1080p/file.mp4?loc=external&signature=7d2becda900d7026cad0e372098faeeb9a0fd8a56f365dd2fb1db5770f2e67cf', NULL, NULL, '2022-07-11 07:07:13', '2022-07-11 07:07:13'),
(79, 'Ettbens Tåhev', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642968935/rendition/1080p/file.mp4?loc=external&signature=8ad0cad84ea4cd686b9c009617dda8730a4b297e738dfd50ae5ab5e77ece77b8', 'https://player.vimeo.com/progressive_redirect/playback/642968935/rendition/1080p/file.mp4?loc=external&signature=8ad0cad84ea4cd686b9c009617dda8730a4b297e738dfd50ae5ab5e77ece77b8', NULL, NULL, '2022-07-11 07:10:01', '2022-07-11 07:10:01'),
(80, 'Goodmornings', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642968976/rendition/1080p/file.mp4?loc=external&signature=3a56b9b7f821b2c45955bd500d020b394c64409d9baeea8fa209ed789b6a8787', 'https://player.vimeo.com/progressive_redirect/playback/642968976/rendition/1080p/file.mp4?loc=external&signature=3a56b9b7f821b2c45955bd500d020b394c64409d9baeea8fa209ed789b6a8787', NULL, NULL, '2022-07-11 07:12:23', '2022-08-08 04:44:31'),
(81, 'Stående Lyske', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969451/rendition/1080p/file.mp4?loc=external&signature=78e128197f33128445ad03b6a6409ebad093a08723098e7ef1eb39ba64189f71', 'https://player.vimeo.com/progressive_redirect/playback/642969451/rendition/1080p/file.mp4?loc=external&signature=78e128197f33128445ad03b6a6409ebad093a08723098e7ef1eb39ba64189f71', NULL, NULL, '2022-07-11 07:17:49', '2022-08-08 04:44:43'),
(82, 'Stående flies', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969435/rendition/1080p/file.mp4?loc=external&signature=90e63735d7c0ac30adfc63c4afc891d0e3a860727dcfac0ea399e99d275b6ec7', 'https://player.vimeo.com/progressive_redirect/playback/642969435/rendition/1080p/file.mp4?loc=external&signature=90e63735d7c0ac30adfc63c4afc891d0e3a860727dcfac0ea399e99d275b6ec7', NULL, NULL, '2022-07-11 07:19:45', '2022-08-08 04:44:55'),
(83, 'Tåhev', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969466/rendition/1080p/file.mp4?loc=external&signature=6d60ef5625200675fe1c58838d80ad5a36b4dc835cd274aa6e1c3ff1ff8683bf', 'https://player.vimeo.com/progressive_redirect/playback/642969466/rendition/1080p/file.mp4?loc=external&signature=6d60ef5625200675fe1c58838d80ad5a36b4dc835cd274aa6e1c3ff1ff8683bf', NULL, NULL, '2022-07-11 07:21:11', '2022-07-11 07:21:11'),
(84, 'Starfish', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969419/rendition/1080p/file.mp4?loc=external&signature=4c99aebe3b632936a2b19dca43edb56c254f4a62a911769a35e211e31090559e', 'https://player.vimeo.com/progressive_redirect/playback/642969419/rendition/1080p/file.mp4?loc=external&signature=4c99aebe3b632936a2b19dca43edb56c254f4a62a911769a35e211e31090559e', NULL, '2022-07-13 13:29:45', '2022-07-11 07:22:38', '2022-07-13 13:29:45'),
(85, 'Starfish', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969419/rendition/1080p/file.mp4?loc=external&signature=4c99aebe3b632936a2b19dca43edb56c254f4a62a911769a35e211e31090559e', 'https://player.vimeo.com/progressive_redirect/playback/642969419/rendition/1080p/file.mp4?loc=external&signature=4c99aebe3b632936a2b19dca43edb56c254f4a62a911769a35e211e31090559e', NULL, NULL, '2022-07-13 13:29:11', '2022-07-13 13:29:11'),
(86, 'Skulderpress maskin', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969405/rendition/1080p/file.mp4?loc=external&signature=57f154ed0e3bcbf8c0675090c581c74fdd8c95774d9a41da870a6df19954213d', 'https://player.vimeo.com/progressive_redirect/playback/642969405/rendition/1080p/file.mp4?loc=external&signature=57f154ed0e3bcbf8c0675090c581c74fdd8c95774d9a41da870a6df19954213d', NULL, NULL, '2022-07-13 13:31:08', '2022-07-13 13:31:08'),
(87, 'Sidebøying', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969385/rendition/1080p/file.mp4?loc=external&signature=1227036609e1a50e478842dc4956fe1bf2d657ba210ebf7cc1f9e5d7a602e63e', 'https://player.vimeo.com/progressive_redirect/playback/642969385/rendition/1080p/file.mp4?loc=external&signature=1227036609e1a50e478842dc4956fe1bf2d657ba210ebf7cc1f9e5d7a602e63e', NULL, '2022-08-08 04:46:38', '2022-07-13 13:33:13', '2022-08-08 04:46:38'),
(88, 'Rygghev', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969368/rendition/1080p/file.mp4?loc=external&signature=44d7a5f77e804893dff149ce5a0200aa766e5dd8f83076c9367b8a946c26e83f', 'https://player.vimeo.com/progressive_redirect/playback/642969368/rendition/1080p/file.mp4?loc=external&signature=44d7a5f77e804893dff149ce5a0200aa766e5dd8f83076c9367b8a946c26e83f', NULL, NULL, '2022-07-13 13:34:11', '2022-08-08 04:51:25'),
(89, 'Sittende roing', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969352/rendition/1080p/file.mp4?loc=external&signature=3158acc50521137eac78f29f9504293984ea249ae8db2587e9c4ea2c89131dbe', 'https://player.vimeo.com/progressive_redirect/playback/642969352/rendition/1080p/file.mp4?loc=external&signature=3158acc50521137eac78f29f9504293984ea249ae8db2587e9c4ea2c89131dbe', NULL, NULL, '2022-07-13 13:35:54', '2022-08-08 04:49:08'),
(90, 'Reverse Flies', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969327/rendition/1080p/file.mp4?loc=external&signature=757a85ee27316e9cd9f4d78c43b63aa98dd89eb52ff89653e2d794054bed6fc2', 'https://player.vimeo.com/progressive_redirect/playback/642969327/rendition/1080p/file.mp4?loc=external&signature=757a85ee27316e9cd9f4d78c43b63aa98dd89eb52ff89653e2d794054bed6fc2', NULL, NULL, '2022-07-13 13:37:04', '2022-07-13 13:37:04'),
(91, 'Magemaskin', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969317/rendition/1080p/file.mp4?loc=external&signature=b6215763fc6730ca08fd0bdda949391dc15cd1a15912816cfeceb647c776f639', 'https://player.vimeo.com/progressive_redirect/playback/642969317/rendition/1080p/file.mp4?loc=external&signature=b6215763fc6730ca08fd0bdda949391dc15cd1a15912816cfeceb647c776f639', NULL, NULL, '2022-07-13 13:37:58', '2022-07-13 13:37:58'),
(92, 'Markløft', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969302/rendition/1080p/file.mp4?loc=external&signature=4a81f0fd568680c6f9d1445dda58828eb9c69a4b78c753ba62fefd12eb7e679d', 'https://player.vimeo.com/progressive_redirect/playback/642969302/rendition/1080p/file.mp4?loc=external&signature=4a81f0fd568680c6f9d1445dda58828eb9c69a4b78c753ba62fefd12eb7e679d', NULL, NULL, '2022-07-13 13:39:24', '2022-07-13 13:39:24'),
(93, 'Legcurls', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969288/rendition/1080p/file.mp4?loc=external&signature=a3c9ce116d37703f9e933f2ec9e595dd3b4468b04e2f0eff5d6b0d42aef7c783', 'https://player.vimeo.com/progressive_redirect/playback/642969288/rendition/1080p/file.mp4?loc=external&signature=a3c9ce116d37703f9e933f2ec9e595dd3b4468b04e2f0eff5d6b0d42aef7c783', NULL, '2022-08-08 04:55:35', '2022-07-13 13:40:22', '2022-08-08 04:55:35'),
(94, 'Nedtrekk maskin', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969281/rendition/1080p/file.mp4?loc=external&signature=c00dde67243cedf4170f04bc42a6c3365d391d7596f90659ecdb441698807106', 'https://player.vimeo.com/progressive_redirect/playback/642969281/rendition/1080p/file.mp4?loc=external&signature=c00dde67243cedf4170f04bc42a6c3365d391d7596f90659ecdb441698807106', NULL, NULL, '2022-07-13 13:41:49', '2022-08-08 04:57:24'),
(95, 'Utfall sideveis', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642969267/rendition/1080p/file.mp4?loc=external&signature=6723119f17ba7a9f4dc6c52ce87222838892db4531ca16552b6880066576690c', 'https://player.vimeo.com/progressive_redirect/playback/642969267/rendition/1080p/file.mp4?loc=external&signature=6723119f17ba7a9f4dc6c52ce87222838892db4531ca16552b6880066576690c', NULL, NULL, '2022-07-13 13:43:19', '2022-08-08 04:58:51'),
(96, 'test', 'video', 15, 'tests', 'test', NULL, '2022-07-19 16:57:19', '2022-07-19 16:56:50', '2022-07-19 16:57:19'),
(97, 'Utfall kryds', 'video', 13, 'https://player.vimeo.com/external/642969251.hd.mp4?s=1e90eb1a82e6b2ad15e263e7fe17f3d8e8f42c63&profile_id=175', 'https://player.vimeo.com/external/642969251.hd.mp4?s=1e90eb1a82e6b2ad15e263e7fe17f3d8e8f42c63&profile_id=175', NULL, NULL, '2022-08-08 05:01:09', '2022-08-08 05:01:09'),
(98, 'Knebøy', 'video', 13, 'https://player.vimeo.com/external/642969242.hd.mp4?s=71f2d4cff08f7bb22a3fc38a3b3e3eff9419e790&profile_id=175', 'https://player.vimeo.com/external/642969242.hd.mp4?s=71f2d4cff08f7bb22a3fc38a3b3e3eff9419e790&profile_id=175', NULL, NULL, '2022-08-08 05:02:15', '2022-08-08 05:02:15'),
(99, 'Stående sideplanke', 'video', 13, 'https://player.vimeo.com/external/642969385.hd.mp4?s=b6eab4009194bb072d4a32a81706d85effe51dda&profile_id=175', 'https://player.vimeo.com/external/642969385.hd.mp4?s=b6eab4009194bb072d4a32a81706d85effe51dda&profile_id=175', NULL, NULL, '2022-08-08 05:05:51', '2022-08-08 05:05:51'),
(100, 'Brystpress', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/642968850/rendition/1080p/file.mp4?loc=external&signature=1d5f19298cf1ac6578e8755be638335ebdd39fa5d0e369e14eb9528ff322b78c', 'https://player.vimeo.com/progressive_redirect/playback/642968850/rendition/1080p/file.mp4?loc=external&signature=1d5f19298cf1ac6578e8755be638335ebdd39fa5d0e369e14eb9528ff322b78c', NULL, NULL, '2022-08-08 05:06:57', '2022-08-08 05:06:57'),
(101, 'Gang på tredemølle', 'video', 14, 'https://player.vimeo.com/external/642969192.hd.mp4?s=831824f4c7296025e3a8e77c9e8ea8785da2b0fc&profile_id=175', 'https://player.vimeo.com/external/642969192.hd.mp4?s=831824f4c7296025e3a8e77c9e8ea8785da2b0fc&profile_id=175', NULL, NULL, '2022-08-08 05:33:22', '2022-08-08 05:33:22'),
(102, 'Sykkel', 'video', 14, 'https://player.vimeo.com/external/642969157.hd.mp4?s=015afa0c58351cc0c2932be8474982743a17ca07&profile_id=175', 'https://player.vimeo.com/external/642969157.hd.mp4?s=015afa0c58351cc0c2932be8474982743a17ca07&profile_id=175', NULL, NULL, '2022-08-08 05:34:15', '2022-08-08 05:34:15'),
(103, 'Crosstrainer', 'video', 14, 'https://player.vimeo.com/external/642969145.hd.mp4?s=f47ef2abe75791c59eb9efcac1e33b352c62ee02&profile_id=175', 'https://player.vimeo.com/external/642969145.hd.mp4?s=f47ef2abe75791c59eb9efcac1e33b352c62ee02&profile_id=175', NULL, NULL, '2022-08-08 05:34:47', '2022-08-08 05:34:47'),
(104, 'Romaskin', 'video', 14, 'https://player.vimeo.com/external/642969342.hd.mp4?s=6b8c525541fef5829ae79e2d5e40c874669f7e7f&profile_id=175', 'https://player.vimeo.com/external/642969342.hd.mp4?s=6b8c525541fef5829ae79e2d5e40c874669f7e7f&profile_id=175', NULL, NULL, '2022-08-08 05:35:24', '2022-08-08 05:35:24'),
(105, 'Hangups', 'video', 13, 'https://player.vimeo.com/external/642969231.hd.mp4?s=e44920e7e583ad222cabe877f4ef614ccf684088&profile_id=175', 'https://player.vimeo.com/external/642969231.hd.mp4?s=e44920e7e583ad222cabe877f4ef614ccf684088&profile_id=175', NULL, NULL, '2022-08-15 04:41:46', '2022-08-15 04:41:46'),
(106, '0.1', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739988478/rendition/1080p/file.mp4?loc=external&signature=560c34544d3b21afb1f3d91c5d0e13a529be9ff97dae38bcffcb4dda5b8036a9', 'https://player.vimeo.com/progressive_redirect/playback/739988478/rendition/1080p/file.mp4?loc=external&signature=560c34544d3b21afb1f3d91c5d0e13a529be9ff97dae38bcffcb4dda5b8036a9', NULL, NULL, '2022-08-17 11:04:03', '2022-08-17 11:04:03'),
(107, '0.2', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739988249/rendition/1080p/file.mp4?loc=external&signature=5a883991e01b2495f7abcddc306985875e3ffb0d1d2e1f02d992617f39848799', 'https://player.vimeo.com/progressive_redirect/playback/739988249/rendition/1080p/file.mp4?loc=external&signature=5a883991e01b2495f7abcddc306985875e3ffb0d1d2e1f02d992617f39848799', NULL, NULL, '2022-08-17 11:04:47', '2022-08-17 11:04:47'),
(108, '0.3', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739988342/rendition/1080p/file.mp4?loc=external&signature=912f6d913856cd5d8b08432eea6c61ba855bf64a835d06169ddb280330ff0213', 'https://player.vimeo.com/progressive_redirect/playback/739988342/rendition/1080p/file.mp4?loc=external&signature=912f6d913856cd5d8b08432eea6c61ba855bf64a835d06169ddb280330ff0213', NULL, NULL, '2022-08-17 11:05:21', '2022-08-17 11:05:21'),
(109, '1.0', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739988580/rendition/1080p/file.mp4?loc=external&signature=0a7c83efd9b18b426e4df165643c3aa27a930917f6517abdd0a81d098a18b6e9', 'https://player.vimeo.com/progressive_redirect/playback/739988580/rendition/1080p/file.mp4?loc=external&signature=0a7c83efd9b18b426e4df165643c3aa27a930917f6517abdd0a81d098a18b6e9', NULL, NULL, '2022-08-17 11:05:58', '2022-08-17 11:05:58');
INSERT INTO `videos` (`id`, `name`, `type`, `exercise_category_id`, `video_sd`, `video_hd`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(110, '1.1', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739988661/rendition/1080p/file.mp4?loc=external&signature=55e8a4371bd0808b2c5b134b6ff5a5d7e0d97668fbb6854c8e71944626dba96d', 'https://player.vimeo.com/progressive_redirect/playback/739988661/rendition/1080p/file.mp4?loc=external&signature=55e8a4371bd0808b2c5b134b6ff5a5d7e0d97668fbb6854c8e71944626dba96d', NULL, NULL, '2022-08-17 11:06:55', '2022-08-17 11:06:55'),
(111, '2.0', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739988770/rendition/1080p/file.mp4?loc=external&signature=7d2b875442fcb67f24e039ac2f49737a110b7490148b3b9bcd3f9a614d0934e9', 'https://player.vimeo.com/progressive_redirect/playback/739988770/rendition/1080p/file.mp4?loc=external&signature=7d2b875442fcb67f24e039ac2f49737a110b7490148b3b9bcd3f9a614d0934e9', NULL, NULL, '2022-08-17 11:07:48', '2022-08-17 11:07:48'),
(112, '2.1', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739988816/rendition/1080p/file.mp4?loc=external&signature=c110abb7f02e574dc3efbe04b9889f607104ea8226b86be9d833e9e26cb02a12', 'https://player.vimeo.com/progressive_redirect/playback/739988816/rendition/1080p/file.mp4?loc=external&signature=c110abb7f02e574dc3efbe04b9889f607104ea8226b86be9d833e9e26cb02a12', NULL, NULL, '2022-08-17 11:08:51', '2022-08-17 11:08:51'),
(113, '3.0', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739988882/rendition/1080p/file.mp4?loc=external&signature=c1d724c3882dbb949739d258d85821cd5ef0ef015ef7748df7998a34d819e91e', 'https://player.vimeo.com/progressive_redirect/playback/739988882/rendition/1080p/file.mp4?loc=external&signature=c1d724c3882dbb949739d258d85821cd5ef0ef015ef7748df7998a34d819e91e', NULL, NULL, '2022-08-17 11:09:30', '2022-08-17 11:09:30'),
(114, '3.1', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739988921/rendition/1080p/file.mp4?loc=external&signature=a79e49c2b6cd80c0782c9b41b78c34355624634aeea4a7bff66ef74e61d2c681', 'https://player.vimeo.com/progressive_redirect/playback/739988921/rendition/1080p/file.mp4?loc=external&signature=a79e49c2b6cd80c0782c9b41b78c34355624634aeea4a7bff66ef74e61d2c681', NULL, NULL, '2022-08-17 11:10:08', '2022-08-17 11:10:08'),
(115, '4.0', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/740268580/rendition/1080p/file.mp4?loc=external&signature=6cc66c512282398c0041a027b089d5e0cec5703299de00279aa300583ce700a6', 'https://player.vimeo.com/progressive_redirect/playback/740268580/rendition/1080p/file.mp4?loc=external&signature=6cc66c512282398c0041a027b089d5e0cec5703299de00279aa300583ce700a6', NULL, NULL, '2022-08-17 11:11:02', '2022-08-17 11:11:02'),
(116, '4.1', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/740268621/rendition/1080p/file.mp4?loc=external&signature=1134709f1553df89c54bcd6fa4ff39328673dbb13081dc8d58b48a0a679d23f8', 'https://player.vimeo.com/progressive_redirect/playback/740268621/rendition/1080p/file.mp4?loc=external&signature=1134709f1553df89c54bcd6fa4ff39328673dbb13081dc8d58b48a0a679d23f8', NULL, NULL, '2022-08-17 11:11:51', '2022-08-17 11:11:51'),
(117, '5.0', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739989039/rendition/1080p/file.mp4?loc=external&signature=3071c57512393f3cafd2ebe8124daff24aa80b94cde29f423d49daf4af34e2da', 'https://player.vimeo.com/progressive_redirect/playback/739989039/rendition/1080p/file.mp4?loc=external&signature=3071c57512393f3cafd2ebe8124daff24aa80b94cde29f423d49daf4af34e2da', NULL, NULL, '2022-08-17 11:12:33', '2022-08-17 11:12:33'),
(118, '5.1', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739989099/rendition/1080p/file.mp4?loc=external&signature=278c76c22a645d1caf48f428599365cb3340e825f8353c6b2640e492d1290983', 'https://player.vimeo.com/progressive_redirect/playback/739989099/rendition/1080p/file.mp4?loc=external&signature=278c76c22a645d1caf48f428599365cb3340e825f8353c6b2640e492d1290983', NULL, NULL, '2022-08-17 11:13:28', '2022-08-17 11:13:28'),
(119, '6.0', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739989151/rendition/1080p/file.mp4?loc=external&signature=bca35b2a576f40f65fa166dc11586c6d6ec9a413913a61ce8110c2f3b818d1b5', 'https://player.vimeo.com/progressive_redirect/playback/739989151/rendition/1080p/file.mp4?loc=external&signature=bca35b2a576f40f65fa166dc11586c6d6ec9a413913a61ce8110c2f3b818d1b5', NULL, NULL, '2022-08-17 11:14:08', '2022-08-17 11:14:08'),
(120, '6.1', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/740268667/rendition/1080p/file.mp4?loc=external&signature=88aa20c8ec1bfa47a901e753b4de5d71897b72b31a2abc7edb49b60b7715283c', 'https://player.vimeo.com/progressive_redirect/playback/740268667/rendition/1080p/file.mp4?loc=external&signature=88aa20c8ec1bfa47a901e753b4de5d71897b72b31a2abc7edb49b60b7715283c', NULL, NULL, '2022-08-17 11:14:58', '2022-08-17 11:14:58'),
(121, '7.0', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739989232/rendition/1080p/file.mp4?loc=external&signature=29df39d825cba63b958f51d46dd27a77090a9b18e9b7697f6199326a07ea8da5', 'https://player.vimeo.com/progressive_redirect/playback/739989232/rendition/1080p/file.mp4?loc=external&signature=29df39d825cba63b958f51d46dd27a77090a9b18e9b7697f6199326a07ea8da5', NULL, NULL, '2022-08-17 11:17:10', '2022-08-17 11:17:10'),
(122, '7.1', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739989272/rendition/1080p/file.mp4?loc=external&signature=bcc66831caf0e13f4de45793614555290a13e2d5787895fe0abbf63276598ba5', 'https://player.vimeo.com/progressive_redirect/playback/739989272/rendition/1080p/file.mp4?loc=external&signature=bcc66831caf0e13f4de45793614555290a13e2d5787895fe0abbf63276598ba5', NULL, NULL, '2022-08-17 11:17:51', '2022-08-17 11:17:51'),
(123, '8.0', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739989299/rendition/1080p/file.mp4?loc=external&signature=068e892bc886dc8def7241bb92a39315ae05b6c6d57c10c61f382d32b28fa068', 'https://player.vimeo.com/progressive_redirect/playback/739989299/rendition/1080p/file.mp4?loc=external&signature=068e892bc886dc8def7241bb92a39315ae05b6c6d57c10c61f382d32b28fa068', NULL, NULL, '2022-08-17 11:18:30', '2022-08-17 11:18:30'),
(124, '8.1', 'video', 18, 'https://player.vimeo.com/progressive_redirect/playback/739989327/rendition/1080p/file.mp4?loc=external&signature=ab509c023a7173c8cf36794d1a905a2d41b2aab02a2c159a69bf27d0f6f73b7e', 'https://player.vimeo.com/progressive_redirect/playback/739989327/rendition/1080p/file.mp4?loc=external&signature=ab509c023a7173c8cf36794d1a905a2d41b2aab02a2c159a69bf27d0f6f73b7e', NULL, NULL, '2022-08-17 11:19:13', '2022-08-17 11:19:13'),
(125, 'Belt Squat', 'video', 19, 'https://player.vimeo.com/progressive_redirect/playback/745722286/rendition/1080p/file.mp4?loc=external&signature=05b9514fd5948de5ab3e0b17c1d3a210927c9186ed454f733d72dcc006738e31', 'https://player.vimeo.com/progressive_redirect/playback/745722286/rendition/1080p/file.mp4?loc=external&signature=05b9514fd5948de5ab3e0b17c1d3a210927c9186ed454f733d72dcc006738e31', NULL, NULL, '2022-09-02 09:56:04', '2022-09-02 09:56:04'),
(126, 'Benpress', 'video', 19, 'https://player.vimeo.com/progressive_redirect/playback/745722382/rendition/1080p/file.mp4?loc=external&signature=9bbe63cffadb39f7aaeb87796b6c1ad256cc1a6656608be3226110ef462bd030', 'https://player.vimeo.com/progressive_redirect/playback/745722382/rendition/1080p/file.mp4?loc=external&signature=9bbe63cffadb39f7aaeb87796b6c1ad256cc1a6656608be3226110ef462bd030', NULL, NULL, '2022-09-02 09:57:22', '2022-09-02 09:57:22'),
(127, 'Brystpress maskin', 'video', 19, 'https://player.vimeo.com/progressive_redirect/playback/745722329/rendition/1080p/file.mp4?loc=external&signature=0c818b511d0d54b497d13eee8b489590feb9536cdb4ca06217587383669fe189', 'https://player.vimeo.com/progressive_redirect/playback/745722329/rendition/1080p/file.mp4?loc=external&signature=0c818b511d0d54b497d13eee8b489590feb9536cdb4ca06217587383669fe189', NULL, NULL, '2022-09-02 09:58:30', '2022-09-02 09:58:30'),
(128, 'Standing Barbell Rows', 'video', 19, 'https://player.vimeo.com/progressive_redirect/playback/745722415/rendition/1080p/file.mp4?loc=external&signature=6e323bebdb6cf11bb7b31f5be95cc6626f1b7c09a1b9b9ad93941fa3536d759e', 'https://player.vimeo.com/progressive_redirect/playback/745722415/rendition/1080p/file.mp4?loc=external&signature=6e323bebdb6cf11bb7b31f5be95cc6626f1b7c09a1b9b9ad93941fa3536d759e', NULL, NULL, '2022-09-02 09:59:36', '2022-09-02 09:59:36'),
(129, 'Nedtrekk', 'video', 19, 'https://player.vimeo.com/progressive_redirect/playback/745722443/rendition/1080p/file.mp4?loc=external&signature=c07ef87032ca88e43abf1e9f45d6c41db4342bd5fe7d34c6a51dafe659aa9d54', 'https://player.vimeo.com/progressive_redirect/playback/745722443/rendition/1080p/file.mp4?loc=external&signature=c07ef87032ca88e43abf1e9f45d6c41db4342bd5fe7d34c6a51dafe659aa9d54', NULL, NULL, '2022-09-02 10:00:24', '2022-09-14 05:51:53'),
(130, 'Planke med rotation', 'video', 19, 'https://player.vimeo.com/progressive_redirect/playback/745722476/rendition/1080p/file.mp4?loc=external&signature=3e37e36ff6dfc10a32853ae1adb5fd0bf43c52c3efda578a9f5dffb6dfb6de39', 'https://player.vimeo.com/progressive_redirect/playback/745722476/rendition/1080p/file.mp4?loc=external&signature=3e37e36ff6dfc10a32853ae1adb5fd0bf43c52c3efda578a9f5dffb6dfb6de39', NULL, NULL, '2022-09-02 10:01:21', '2022-09-02 10:01:21'),
(131, 'Opvarmning', 'video', 20, 'https://player.vimeo.com/progressive_redirect/playback/746470380/rendition/1080p/file.mp4?loc=external&signature=c6a04e00895959ffa6253c32e9f1cea37b3d2c8997e6e17e7fb4709979edd9e5', 'https://player.vimeo.com/progressive_redirect/playback/746470380/rendition/1080p/file.mp4?loc=external&signature=c6a04e00895959ffa6253c32e9f1cea37b3d2c8997e6e17e7fb4709979edd9e5', NULL, NULL, '2022-09-05 06:51:06', '2022-09-05 06:51:06'),
(132, 'Ankelmobilitet', 'video', 20, 'https://player.vimeo.com/progressive_redirect/playback/746470196/rendition/1080p/file.mp4?loc=external&signature=4059429fd3f191861ed99d863d8c3b43890506d2e3044d0a7e90775ca3418ef4', 'https://player.vimeo.com/progressive_redirect/playback/746470196/rendition/1080p/file.mp4?loc=external&signature=4059429fd3f191861ed99d863d8c3b43890506d2e3044d0a7e90775ca3418ef4', NULL, NULL, '2022-09-05 06:52:10', '2022-09-05 06:52:10'),
(133, 'Hipflexor', 'video', 20, 'https://player.vimeo.com/progressive_redirect/playback/746470283/rendition/1080p/file.mp4?loc=external&signature=fb4e51a54262bdbc14226d089d1dbb5cccf9ee133b6a6108d32c851bcd33e6e6', 'https://player.vimeo.com/progressive_redirect/playback/746470283/rendition/1080p/file.mp4?loc=external&signature=fb4e51a54262bdbc14226d089d1dbb5cccf9ee133b6a6108d32c851bcd33e6e6', NULL, NULL, '2022-09-05 06:52:59', '2022-09-05 06:52:59'),
(134, 'Lyske', 'video', 20, 'https://player.vimeo.com/progressive_redirect/playback/746470311/rendition/1080p/file.mp4?loc=external&signature=56fc6f3d99c056ffaeb0a9a0ff9e8c0cb3ec458df6e264bea69d163e0aa1db5c', 'https://player.vimeo.com/progressive_redirect/playback/746470311/rendition/1080p/file.mp4?loc=external&signature=56fc6f3d99c056ffaeb0a9a0ff9e8c0cb3ec458df6e264bea69d163e0aa1db5c', NULL, '2022-09-05 07:07:05', '2022-09-05 06:53:45', '2022-09-05 07:07:05'),
(135, 'Lyske', 'video', 20, 'https://player.vimeo.com/progressive_redirect/playback/746470311/rendition/1080p/file.mp4?loc=external&signature=56fc6f3d99c056ffaeb0a9a0ff9e8c0cb3ec458df6e264bea69d163e0aa1db5c', 'https://player.vimeo.com/progressive_redirect/playback/746470311/rendition/1080p/file.mp4?loc=external&signature=56fc6f3d99c056ffaeb0a9a0ff9e8c0cb3ec458df6e264bea69d163e0aa1db5c', NULL, NULL, '2022-09-05 06:53:45', '2022-09-05 06:53:45'),
(136, 'Outofsynch', 'video', 20, 'https://player.vimeo.com/progressive_redirect/playback/746470411/rendition/1080p/file.mp4?loc=external&signature=6aee73a23a7297775b912a282686546c579501cd1509b19b9e84f28e1e01a875', 'https://player.vimeo.com/progressive_redirect/playback/746470411/rendition/1080p/file.mp4?loc=external&signature=6aee73a23a7297775b912a282686546c579501cd1509b19b9e84f28e1e01a875', NULL, NULL, '2022-09-05 06:54:38', '2022-09-05 06:54:38'),
(137, '10/10', 'video', 20, 'https://player.vimeo.com/progressive_redirect/playback/746470159/rendition/1080p/file.mp4?loc=external&signature=985b72322b844e61784f9e6b902b0864199bde5bdf12b2ee602b4ce4b487c13c', 'https://player.vimeo.com/progressive_redirect/playback/746470159/rendition/1080p/file.mp4?loc=external&signature=985b72322b844e61784f9e6b902b0864199bde5bdf12b2ee602b4ce4b487c13c', NULL, NULL, '2022-09-05 06:55:35', '2022-09-05 06:55:35'),
(138, 'Maxtest', 'video', 20, 'https://player.vimeo.com/progressive_redirect/playback/746470350/rendition/1080p/file.mp4?loc=external&signature=4f3a901fd2f19f0efc6cd4b38a4624365abb6957eb230b8a414113bb45b12674', 'https://player.vimeo.com/progressive_redirect/playback/746470350/rendition/1080p/file.mp4?loc=external&signature=4f3a901fd2f19f0efc6cd4b38a4624365abb6957eb230b8a414113bb45b12674', NULL, NULL, '2022-09-05 06:56:42', '2022-09-05 06:56:42'),
(139, 'Hamstringsmobilitet', 'video', 20, 'https://player.vimeo.com/progressive_redirect/playback/746470240/rendition/1080p/file.mp4?loc=external&signature=eb9562494e1369290e9eb1f17d5f7ee7528d5a975b8977a8bbcc8eedc4d84909', 'https://player.vimeo.com/progressive_redirect/playback/746470240/rendition/1080p/file.mp4?loc=external&signature=eb9562494e1369290e9eb1f17d5f7ee7528d5a975b8977a8bbcc8eedc4d84909', NULL, NULL, '2022-09-05 07:04:37', '2022-09-05 07:04:37'),
(140, 'Submaksimal test', 'video', 21, 'https://player.vimeo.com/progressive_redirect/playback/746486523/rendition/1080p/file.mp4?loc=external&signature=bb33273cc75cacf30ea5e6d2d96598ad011c2625157f7896fe184f36ca68b9d2', 'https://player.vimeo.com/progressive_redirect/playback/746486523/rendition/1080p/file.mp4?loc=external&signature=bb33273cc75cacf30ea5e6d2d96598ad011c2625157f7896fe184f36ca68b9d2', NULL, NULL, '2022-09-05 07:42:18', '2022-09-05 07:42:18'),
(141, 'Øvelse 1', 'video', 22, 'https://player.vimeo.com/progressive_redirect/playback/746470380/rendition/1080p/file.mp4?loc=external&signature=c6a04e00895959ffa6253c32e9f1cea37b3d2c8997e6e17e7fb4709979edd9e5', 'https://player.vimeo.com/progressive_redirect/playback/746470380/rendition/1080p/file.mp4?loc=external&signature=c6a04e00895959ffa6253c32e9f1cea37b3d2c8997e6e17e7fb4709979edd9e5', NULL, NULL, '2022-09-06 05:04:36', '2022-09-06 05:04:36'),
(142, 'Øvelse 2', 'video', 22, 'https://player.vimeo.com/progressive_redirect/playback/746759464/rendition/1080p/file.mp4?loc=external&signature=7ae8dc2617347c19a2fae240fcfdeee5788bc2f632cc89e6d48e7b4f563b1f4c', 'https://player.vimeo.com/progressive_redirect/playback/746759464/rendition/1080p/file.mp4?loc=external&signature=7ae8dc2617347c19a2fae240fcfdeee5788bc2f632cc89e6d48e7b4f563b1f4c', NULL, NULL, '2022-09-06 05:05:51', '2022-09-06 05:05:51'),
(143, 'Øvelse 3', 'video', 22, 'https://player.vimeo.com/progressive_redirect/playback/746759525/rendition/1080p/file.mp4?loc=external&signature=95a383c845fe46191b8626e26e413a98e2fe07778a87af45dccc0ff995d8dfff', 'https://player.vimeo.com/progressive_redirect/playback/746759525/rendition/1080p/file.mp4?loc=external&signature=95a383c845fe46191b8626e26e413a98e2fe07778a87af45dccc0ff995d8dfff', NULL, NULL, '2022-09-06 05:06:45', '2022-09-06 05:06:45'),
(144, 'Øvelse 4', 'video', 22, 'https://player.vimeo.com/progressive_redirect/playback/746759494/rendition/1080p/file.mp4?loc=external&signature=f06f187dcf015026e172e4e66cd43e7f50ae7a661a0dbe9e75158a11f812a8ab', 'https://player.vimeo.com/progressive_redirect/playback/746759494/rendition/1080p/file.mp4?loc=external&signature=f06f187dcf015026e172e4e66cd43e7f50ae7a661a0dbe9e75158a11f812a8ab', NULL, NULL, '2022-09-06 05:07:29', '2022-09-06 05:07:29'),
(145, 'Øvelse 5', 'video', 22, 'https://player.vimeo.com/progressive_redirect/playback/746759575/rendition/1080p/file.mp4?loc=external&signature=424a31bf4287bc2b679a1fce5ba0734f951e040da1fea42458056864be280190', 'https://player.vimeo.com/progressive_redirect/playback/746759575/rendition/1080p/file.mp4?loc=external&signature=424a31bf4287bc2b679a1fce5ba0734f951e040da1fea42458056864be280190', NULL, NULL, '2022-09-06 05:08:18', '2022-09-06 05:08:18'),
(146, 'Øvelse 6', 'video', 22, 'https://player.vimeo.com/progressive_redirect/playback/746759612/rendition/1080p/file.mp4?loc=external&signature=e6fe1dc1af6898ae3fc449d64da32df8abde99b647a86fa2e28a0e3196d04100', 'https://player.vimeo.com/progressive_redirect/playback/746759612/rendition/1080p/file.mp4?loc=external&signature=e6fe1dc1af6898ae3fc449d64da32df8abde99b647a86fa2e28a0e3196d04100', NULL, NULL, '2022-09-06 05:09:01', '2022-09-06 05:09:01'),
(147, 'Øvelse 7', 'video', 22, 'https://player.vimeo.com/progressive_redirect/playback/746759637/rendition/1080p/file.mp4?loc=external&signature=62404dc84a60a21f521508ea685f9d5cbfd651041a1c870f0837fecd86dfbd00', 'https://player.vimeo.com/progressive_redirect/playback/746759637/rendition/1080p/file.mp4?loc=external&signature=62404dc84a60a21f521508ea685f9d5cbfd651041a1c870f0837fecd86dfbd00', NULL, NULL, '2022-09-06 05:09:47', '2022-09-06 05:09:47'),
(148, 'Øvelse 8', 'video', 22, 'https://player.vimeo.com/progressive_redirect/playback/746759659/rendition/1080p/file.mp4?loc=external&signature=54861ab17c04905e39a62a5e6cd5498c7593599308cb4d96bc87f177f637013f', 'https://player.vimeo.com/progressive_redirect/playback/746759659/rendition/1080p/file.mp4?loc=external&signature=54861ab17c04905e39a62a5e6cd5498c7593599308cb4d96bc87f177f637013f', NULL, NULL, '2022-09-06 05:10:46', '2022-09-06 05:10:46'),
(149, '15/15 interval', 'video', 23, 'https://player.vimeo.com/progressive_redirect/playback/746759415/rendition/1080p/file.mp4?loc=external&signature=0e2e062e630ed775fd2feacb8225caa9f103ecfdabed3dcd910e64ff13772067', 'https://player.vimeo.com/progressive_redirect/playback/746759415/rendition/1080p/file.mp4?loc=external&signature=0e2e062e630ed775fd2feacb8225caa9f103ecfdabed3dcd910e64ff13772067', NULL, NULL, '2022-09-06 05:26:13', '2022-09-06 05:26:13'),
(150, 'Crosstrainer', 'video', 14, 'https://player.vimeo.com/progressive_redirect/playback/747552111/rendition/1080p/file.mp4?loc=external&signature=dca44d976332d0be6917c571377a49b957e9296f7dc2a756f842486bd63a6a7e', 'https://player.vimeo.com/progressive_redirect/playback/747552111/rendition/1080p/file.mp4?loc=external&signature=dca44d976332d0be6917c571377a49b957e9296f7dc2a756f842486bd63a6a7e', NULL, NULL, '2022-09-08 05:33:05', '2022-09-08 05:33:05'),
(151, 'Stakemaskin', 'video', 14, 'https://player.vimeo.com/progressive_redirect/playback/747552165/rendition/1080p/file.mp4?loc=external&signature=fbf01b0cef5b10a0bdf5119024ee2a29dfd3e8a66c0450beb19c1004b7be88fa', 'https://player.vimeo.com/progressive_redirect/playback/747552165/rendition/1080p/file.mp4?loc=external&signature=fbf01b0cef5b10a0bdf5119024ee2a29dfd3e8a66c0450beb19c1004b7be88fa', NULL, NULL, '2022-09-08 05:34:12', '2022-09-08 05:34:12'),
(152, 'Løbing', 'video', 14, 'https://player.vimeo.com/progressive_redirect/playback/747552138/rendition/1080p/file.mp4?loc=external&signature=253d06c57e22ae72522a2ced385d6bf3f3d0e95b914395a88e809db500f3461b', 'https://player.vimeo.com/progressive_redirect/playback/747552138/rendition/1080p/file.mp4?loc=external&signature=253d06c57e22ae72522a2ced385d6bf3f3d0e95b914395a88e809db500f3461b', NULL, NULL, '2022-09-08 05:35:06', '2022-09-08 05:35:06'),
(153, 'Trappemaskin', 'video', 14, 'https://player.vimeo.com/progressive_redirect/playback/747552192/rendition/1080p/file.mp4?loc=external&signature=997c4ddec1a13320d3249ceed16665b030e68aa128c45ed7834ae1e2619e7277', 'https://player.vimeo.com/progressive_redirect/playback/747552192/rendition/1080p/file.mp4?loc=external&signature=997c4ddec1a13320d3249ceed16665b030e68aa128c45ed7834ae1e2619e7277', NULL, NULL, '2022-09-08 05:37:19', '2022-09-08 05:37:19'),
(154, '20/40 interval', 'video', 23, 'https://player.vimeo.com/progressive_redirect/playback/746782919/rendition/1080p/file.mp4?loc=external&signature=35cde4230c70818aa04f4001deb5bb1bd52757f8c313caf127580faac8524f5b', 'https://player.vimeo.com/progressive_redirect/playback/746782919/rendition/1080p/file.mp4?loc=external&signature=35cde4230c70818aa04f4001deb5bb1bd52757f8c313caf127580faac8524f5b', NULL, NULL, '2022-09-08 07:17:33', '2022-09-08 07:17:52'),
(155, '15/30 interval', 'video', 23, 'https://player.vimeo.com/progressive_redirect/playback/746782867/rendition/1080p/file.mp4?loc=external&signature=03ac97894f432b45bdee4646fe8ecf1d0f184d52b36b60bdfa88384d4aaac082', 'https://player.vimeo.com/progressive_redirect/playback/746782867/rendition/1080p/file.mp4?loc=external&signature=03ac97894f432b45bdee4646fe8ecf1d0f184d52b36b60bdfa88384d4aaac082', NULL, NULL, '2022-09-08 07:18:56', '2022-09-08 07:18:56'),
(156, '10/20 interval', 'video', 23, 'https://player.vimeo.com/progressive_redirect/playback/746782816/rendition/1080p/file.mp4?loc=external&signature=d1a052477d90e5be3226306a71270e3471873ff7767a8d4c69211736ee92abbb', 'https://player.vimeo.com/progressive_redirect/playback/746782816/rendition/1080p/file.mp4?loc=external&signature=d1a052477d90e5be3226306a71270e3471873ff7767a8d4c69211736ee92abbb', NULL, NULL, '2022-09-08 07:20:13', '2022-09-08 07:20:13'),
(157, '90 sekunder', 'video', 23, 'https://player.vimeo.com/progressive_redirect/playback/748698534/rendition/720p/file.mp4?loc=external&signature=881d9023bb16d1d407a22bece7eb0984ae4d49b39a1bd8dc623d5798d23dffd5', 'https://player.vimeo.com/progressive_redirect/playback/748698534/rendition/720p/file.mp4?loc=external&signature=881d9023bb16d1d407a22bece7eb0984ae4d49b39a1bd8dc623d5798d23dffd5', NULL, NULL, '2022-09-12 07:02:27', '2022-09-12 07:02:27'),
(158, '17/13', 'video', 23, 'https://player.vimeo.com/progressive_redirect/playback/748698611/rendition/1080p/file.mp4?loc=external&signature=00636e6499cf78cf6269229f7c255d3f53c00dc27458b5a91a40273407af3568', 'https://player.vimeo.com/progressive_redirect/playback/748698611/rendition/1080p/file.mp4?loc=external&signature=00636e6499cf78cf6269229f7c255d3f53c00dc27458b5a91a40273407af3568', NULL, NULL, '2022-09-12 07:03:31', '2022-09-12 07:03:31'),
(159, '50/10', 'video', 23, 'https://player.vimeo.com/progressive_redirect/playback/748709910/rendition/720p/file.mp4?loc=external&signature=8604d715281576991120acecdac454644ab62e7066f41810cd829cf6fc58fcf7', 'https://player.vimeo.com/progressive_redirect/playback/748709910/rendition/720p/file.mp4?loc=external&signature=8604d715281576991120acecdac454644ab62e7066f41810cd829cf6fc58fcf7', NULL, NULL, '2022-09-12 07:41:04', '2022-09-12 07:41:04'),
(160, 'Bænkpres 10 Rep', 'video', 24, 'https://player.vimeo.com/progressive_redirect/playback/749048214/rendition/1080p/file.mp4?loc=external&signature=ce3a400955ec1bcaee0c93e9d995a12bdfac31178ac44849bd52319cea4843ab', 'https://player.vimeo.com/progressive_redirect/playback/749048214/rendition/1080p/file.mp4?loc=external&signature=ce3a400955ec1bcaee0c93e9d995a12bdfac31178ac44849bd52319cea4843ab', NULL, NULL, '2022-09-13 04:59:52', '2022-09-13 04:59:52'),
(161, 'Bænkpres 5 Rep', 'video', 24, 'https://player.vimeo.com/progressive_redirect/playback/749048186/rendition/1080p/file.mp4?loc=external&signature=2971322a7d39647c15b523d9f913e8111340785527b97eee4037d57d9c8f3758', 'https://player.vimeo.com/progressive_redirect/playback/749048186/rendition/1080p/file.mp4?loc=external&signature=2971322a7d39647c15b523d9f913e8111340785527b97eee4037d57d9c8f3758', NULL, NULL, '2022-09-13 05:00:42', '2022-09-13 05:00:42'),
(162, 'Bænkpres 1 Rep', 'video', 24, 'https://player.vimeo.com/progressive_redirect/playback/749048174/rendition/1080p/file.mp4?loc=external&signature=3c96606508afb7ce6ad98bbecc15d37311780b420de53c7806a226a1b3367d9c', 'https://player.vimeo.com/progressive_redirect/playback/749048174/rendition/1080p/file.mp4?loc=external&signature=3c96606508afb7ce6ad98bbecc15d37311780b420de53c7806a226a1b3367d9c', NULL, NULL, '2022-09-13 05:01:53', '2022-09-13 05:01:53'),
(163, 'Squat 10 Rep', 'video', 24, 'https://player.vimeo.com/progressive_redirect/playback/749048354/rendition/1080p/file.mp4?loc=external&signature=db49a8266127d743d37efe3b7e1d4220cf47b88245f843747dceae9509839b2c', 'https://player.vimeo.com/progressive_redirect/playback/749048354/rendition/1080p/file.mp4?loc=external&signature=db49a8266127d743d37efe3b7e1d4220cf47b88245f843747dceae9509839b2c', NULL, NULL, '2022-09-13 05:03:05', '2022-09-13 05:03:20'),
(164, 'Squat 5 Rep', 'video', 24, 'https://player.vimeo.com/progressive_redirect/playback/749048324/rendition/1080p/file.mp4?loc=external&signature=11590b7dd589db7edf02c92828871024edfedc9b7e4882bc5772808bf04ca3bf', 'https://player.vimeo.com/progressive_redirect/playback/749048324/rendition/1080p/file.mp4?loc=external&signature=11590b7dd589db7edf02c92828871024edfedc9b7e4882bc5772808bf04ca3bf', NULL, NULL, '2022-09-13 05:04:16', '2022-09-13 05:04:16'),
(165, 'Squat 1 Rep', 'video', 24, 'https://player.vimeo.com/progressive_redirect/playback/749048300/rendition/1080p/file.mp4?loc=external&signature=b79ed4742f4147f30a8469ec007ec24e1f66397dbeefd1bae1b0cc634ceb2dfb', 'https://player.vimeo.com/progressive_redirect/playback/749048300/rendition/1080p/file.mp4?loc=external&signature=b79ed4742f4147f30a8469ec007ec24e1f66397dbeefd1bae1b0cc634ceb2dfb', NULL, NULL, '2022-09-13 05:05:08', '2022-09-13 05:05:08'),
(166, 'Markløft 10 Rep', 'video', 24, 'https://player.vimeo.com/progressive_redirect/playback/749048278/rendition/1080p/file.mp4?loc=external&signature=c690bd277e88001ed93e2eca6ffe29e5074cc6a94d9e668828b31ff5b87225d1', 'https://player.vimeo.com/progressive_redirect/playback/749048278/rendition/1080p/file.mp4?loc=external&signature=c690bd277e88001ed93e2eca6ffe29e5074cc6a94d9e668828b31ff5b87225d1', NULL, NULL, '2022-09-13 05:06:02', '2022-09-13 05:06:02'),
(167, 'Markløft 5 Rep', 'video', 24, 'https://player.vimeo.com/progressive_redirect/playback/749048254/rendition/1080p/file.mp4?loc=external&signature=e5737f9898e18ba6c038acaccb3328a78c178ef79d50bc639565fd096f0c1be3', 'https://player.vimeo.com/progressive_redirect/playback/749048254/rendition/1080p/file.mp4?loc=external&signature=e5737f9898e18ba6c038acaccb3328a78c178ef79d50bc639565fd096f0c1be3', NULL, NULL, '2022-09-13 05:06:43', '2022-09-13 05:06:43'),
(168, 'Markløft 1 Rep', 'video', 24, 'https://player.vimeo.com/progressive_redirect/playback/749048238/rendition/1080p/file.mp4?loc=external&signature=34978a5b261d0b810494f6dbe5d86881ebe04f1dd2ce0bae1ba00230c38dcc3e', 'https://player.vimeo.com/progressive_redirect/playback/749048238/rendition/1080p/file.mp4?loc=external&signature=34978a5b261d0b810494f6dbe5d86881ebe04f1dd2ce0bae1ba00230c38dcc3e', NULL, NULL, '2022-09-13 05:07:43', '2022-09-13 05:07:43'),
(169, 'Backward skip', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749166891/rendition/1080p/file.mp4?loc=external&signature=37fbcc76a2e09222b1236c95606a59b3735a0bc4378063afc2fbe029a7c464eb', 'https://player.vimeo.com/progressive_redirect/playback/749166891/rendition/1080p/file.mp4?loc=external&signature=37fbcc76a2e09222b1236c95606a59b3735a0bc4378063afc2fbe029a7c464eb', NULL, NULL, '2022-09-14 04:59:14', '2022-09-14 04:59:14'),
(170, 'B-Skips', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749166948/rendition/1080p/file.mp4?loc=external&signature=2882846c8481e52ce56291b803aa07960500ac1bdbd030ea15822db05438e5ac', 'https://player.vimeo.com/progressive_redirect/playback/749166948/rendition/1080p/file.mp4?loc=external&signature=2882846c8481e52ce56291b803aa07960500ac1bdbd030ea15822db05438e5ac', NULL, NULL, '2022-09-14 05:00:00', '2022-09-14 05:00:00'),
(171, 'Carioca', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749166991/rendition/1080p/file.mp4?loc=external&signature=23f4c6213035a32c6d81457e14c101b7d1e18c9a042add0ca74c91ea634c5bd8', 'https://player.vimeo.com/progressive_redirect/playback/749166991/rendition/1080p/file.mp4?loc=external&signature=23f4c6213035a32c6d81457e14c101b7d1e18c9a042add0ca74c91ea634c5bd8', NULL, NULL, '2022-09-14 05:00:42', '2022-09-14 05:00:42'),
(172, 'Forward legswing', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749167022/rendition/1080p/file.mp4?loc=external&signature=09013babe5559c931229c9fafe494274cbe85bd5e2621edfd5d126cd06599d4f', 'https://player.vimeo.com/progressive_redirect/playback/749167022/rendition/1080p/file.mp4?loc=external&signature=09013babe5559c931229c9fafe494274cbe85bd5e2621edfd5d126cd06599d4f', NULL, NULL, '2022-09-14 05:01:32', '2022-09-14 05:01:32'),
(173, 'Forward skip', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749167073/rendition/1080p/file.mp4?loc=external&signature=064e80e229389cd7e82816dbeeaf924ba1e7a50c7d2bb9a25e9f6a66ba5a23c8', 'https://player.vimeo.com/progressive_redirect/playback/749167073/rendition/1080p/file.mp4?loc=external&signature=064e80e229389cd7e82816dbeeaf924ba1e7a50c7d2bb9a25e9f6a66ba5a23c8', NULL, NULL, '2022-09-14 05:03:06', '2022-09-14 05:03:06'),
(174, 'Hip Close', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749167099/rendition/1080p/file.mp4?loc=external&signature=9e09c24ddf03500f336e96c19b5eddb7418703a7ccf86e448a9b760230b20cbc', 'https://player.vimeo.com/progressive_redirect/playback/749167099/rendition/1080p/file.mp4?loc=external&signature=9e09c24ddf03500f336e96c19b5eddb7418703a7ccf86e448a9b760230b20cbc', NULL, NULL, '2022-09-14 05:03:55', '2022-09-14 05:03:55'),
(175, 'Hip opener', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749167152/rendition/1080p/file.mp4?loc=external&signature=675d85bf8ae76f9226d865b9b9c9f8c08aee891b39109d5a4bb5944c613e9a06', 'https://player.vimeo.com/progressive_redirect/playback/749167152/rendition/1080p/file.mp4?loc=external&signature=675d85bf8ae76f9226d865b9b9c9f8c08aee891b39109d5a4bb5944c613e9a06', NULL, NULL, '2022-09-14 05:04:42', '2022-09-14 05:04:42'),
(176, 'Sideshuffle', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749167197/rendition/1080p/file.mp4?loc=external&signature=65ad2af223d169d5c0c8d42ff9e2a512163e3a4c0095bf28d6613dfa7ac34182', 'https://player.vimeo.com/progressive_redirect/playback/749167197/rendition/1080p/file.mp4?loc=external&signature=65ad2af223d169d5c0c8d42ff9e2a512163e3a4c0095bf28d6613dfa7ac34182', NULL, NULL, '2022-09-14 05:05:23', '2022-09-14 05:05:23'),
(177, 'Lying hamstrings', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749443441/rendition/1080p/file.mp4?loc=external&signature=c0adaa4e3b19bbd31b91a48f25dec7e65750d4eb2a01c7405c4467934906a994', 'https://player.vimeo.com/progressive_redirect/playback/749443441/rendition/1080p/file.mp4?loc=external&signature=c0adaa4e3b19bbd31b91a48f25dec7e65750d4eb2a01c7405c4467934906a994', NULL, NULL, '2022-09-14 05:06:09', '2022-09-14 05:06:09'),
(178, 'Reverse Scorpions', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749443479/rendition/1080p/file.mp4?loc=external&signature=1b3786a334e7cd18118a3be2cbfdf8d405b228bd8f04e90c31de70215ddc10c5', 'https://player.vimeo.com/progressive_redirect/playback/749443479/rendition/1080p/file.mp4?loc=external&signature=1b3786a334e7cd18118a3be2cbfdf8d405b228bd8f04e90c31de70215ddc10c5', NULL, NULL, '2022-09-14 05:07:55', '2022-09-14 05:07:55'),
(179, 'Scorpions', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749443511/rendition/1080p/file.mp4?loc=external&signature=34d5aa28e660d09017d7cb87a265a114e39578c03ad6b5d86e03fcd8d516a09d', 'https://player.vimeo.com/progressive_redirect/playback/749443511/rendition/1080p/file.mp4?loc=external&signature=34d5aa28e660d09017d7cb87a265a114e39578c03ad6b5d86e03fcd8d516a09d', NULL, NULL, '2022-09-14 05:08:46', '2022-09-14 05:08:46'),
(180, 'Seated hipflexor', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749443543/rendition/1080p/file.mp4?loc=external&signature=0e9d61b72866e43b6e461bd1569a4964e934899e0e1d4c0dfeebaad99f27d96b', 'https://player.vimeo.com/progressive_redirect/playback/749443543/rendition/1080p/file.mp4?loc=external&signature=0e9d61b72866e43b6e461bd1569a4964e934899e0e1d4c0dfeebaad99f27d96b', NULL, NULL, '2022-09-14 05:09:26', '2022-09-14 05:09:26'),
(181, 'Seated hipopener', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/749443567/rendition/1080p/file.mp4?loc=external&signature=7cc9fd402ba6af572b75896d48d6afda0aa8c9e4268adf4e2627f26b919c0da8', 'https://player.vimeo.com/progressive_redirect/playback/749443567/rendition/1080p/file.mp4?loc=external&signature=7cc9fd402ba6af572b75896d48d6afda0aa8c9e4268adf4e2627f26b919c0da8', NULL, NULL, '2022-09-14 05:10:15', '2022-09-14 05:10:15'),
(182, 'Vægt og højde', 'video', 26, 'https://player.vimeo.com/progressive_redirect/playback/750494415/rendition/1080p/file.mp4?loc=external&signature=3dd33137a196be4c1aa7c758bf2769aab4b1b8bfb70cd6e38247b7636b686dab', 'https://player.vimeo.com/progressive_redirect/playback/750494415/rendition/1080p/file.mp4?loc=external&signature=3dd33137a196be4c1aa7c758bf2769aab4b1b8bfb70cd6e38247b7636b686dab', NULL, NULL, '2022-09-16 17:22:30', '2022-09-16 17:22:30'),
(183, 'Chess', 'video', 26, 'https://player.vimeo.com/progressive_redirect/playback/750493321/rendition/1080p/file.mp4?loc=external&signature=39b4d4d18b08ef44dee0af41d38864ab4dd3cd58722deb544529613712ff2b11', 'https://player.vimeo.com/progressive_redirect/playback/750493321/rendition/1080p/file.mp4?loc=external&signature=39b4d4d18b08ef44dee0af41d38864ab4dd3cd58722deb544529613712ff2b11', NULL, NULL, '2022-09-16 17:25:50', '2022-09-16 17:25:50'),
(184, 'Midaxillary', 'video', 26, 'https://player.vimeo.com/progressive_redirect/playback/750493437/rendition/1080p/file.mp4?loc=external&signature=5ceab8cb4966f0633d4ef962765f5345a218b49074833448b75a07188043c49f', 'https://player.vimeo.com/progressive_redirect/playback/750493437/rendition/1080p/file.mp4?loc=external&signature=5ceab8cb4966f0633d4ef962765f5345a218b49074833448b75a07188043c49f', NULL, NULL, '2022-09-16 17:27:05', '2022-09-16 17:27:05'),
(185, 'Triceps', 'video', 26, 'https://player.vimeo.com/progressive_redirect/playback/750494270/rendition/1080p/file.mp4?loc=external&signature=5d574743b33cc761482ef6fe42b6e22e56c894368e73b0adc8b6c12bdb66982f', 'https://player.vimeo.com/progressive_redirect/playback/750494270/rendition/1080p/file.mp4?loc=external&signature=5d574743b33cc761482ef6fe42b6e22e56c894368e73b0adc8b6c12bdb66982f', NULL, NULL, '2022-09-16 17:27:59', '2022-09-16 17:27:59'),
(186, 'Subscapular', 'video', 26, 'https://player.vimeo.com/progressive_redirect/playback/750493564/rendition/1080p/file.mp4?loc=external&signature=4db059eac96d2a5406e80b988e47bae0b1bc87e5ca1ae57f324fd89c5ee287e1', 'https://player.vimeo.com/progressive_redirect/playback/750493564/rendition/1080p/file.mp4?loc=external&signature=4db059eac96d2a5406e80b988e47bae0b1bc87e5ca1ae57f324fd89c5ee287e1', NULL, NULL, '2022-09-16 17:28:53', '2022-09-16 17:28:53'),
(187, 'Suprailiac', 'video', 26, 'https://player.vimeo.com/progressive_redirect/playback/750493843/rendition/1080p/file.mp4?loc=external&signature=2c65f31b956260438563b36c1b80a69f6bb2036f95ca32d5240fc726ed177c41', 'https://player.vimeo.com/progressive_redirect/playback/750493843/rendition/1080p/file.mp4?loc=external&signature=2c65f31b956260438563b36c1b80a69f6bb2036f95ca32d5240fc726ed177c41', NULL, NULL, '2022-09-16 17:34:19', '2022-09-16 17:34:19'),
(188, 'Abdominal', 'video', 26, 'https://player.vimeo.com/progressive_redirect/playback/750493267/rendition/1080p/file.mp4?loc=external&signature=84d22cb104cf4e31015deb0dfeb67f2fbff70f1cd290e4c8a57773eb0bb033d0', 'https://player.vimeo.com/progressive_redirect/playback/750493267/rendition/1080p/file.mp4?loc=external&signature=84d22cb104cf4e31015deb0dfeb67f2fbff70f1cd290e4c8a57773eb0bb033d0', NULL, NULL, '2022-09-16 17:35:02', '2022-09-16 17:35:02'),
(189, 'Thigh', 'video', 26, 'https://player.vimeo.com/progressive_redirect/playback/750493919/rendition/1080p/file.mp4?loc=external&signature=3374e5a6e3de0360f07dbd6787fd15045865954ec0f3f2af444236f84b48e169', 'https://player.vimeo.com/progressive_redirect/playback/750493919/rendition/1080p/file.mp4?loc=external&signature=3374e5a6e3de0360f07dbd6787fd15045865954ec0f3f2af444236f84b48e169', NULL, NULL, '2022-09-16 17:35:53', '2022-09-16 17:35:53'),
(190, 'Squat to stand', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750140650/rendition/1080p/file.mp4?loc=external&signature=0627711afecc5626d8ad1faf61168b96c9b8d928c10f3aaefb240c33e42b0bea', 'https://player.vimeo.com/progressive_redirect/playback/750140650/rendition/1080p/file.mp4?loc=external&signature=0627711afecc5626d8ad1faf61168b96c9b8d928c10f3aaefb240c33e42b0bea', NULL, NULL, '2022-09-18 03:44:24', '2022-09-18 03:44:24'),
(191, '1 arm quadruped row', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750140721/rendition/1080p/file.mp4?loc=external&signature=89577d09e6c2bf3becd76f48285b0ac8c97c83126ac3d08eb5bf7f3017145a6a', 'https://player.vimeo.com/progressive_redirect/playback/750140721/rendition/1080p/file.mp4?loc=external&signature=89577d09e6c2bf3becd76f48285b0ac8c97c83126ac3d08eb5bf7f3017145a6a', NULL, NULL, '2022-09-18 03:45:55', '2022-09-18 03:45:55'),
(192, 'Pogo jumps', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/750140952/rendition/1080p/file.mp4?loc=external&signature=3768f206474f34417bb20831759fea668b273e96891e44c564f775abaaa1b6db', 'https://player.vimeo.com/progressive_redirect/playback/750140952/rendition/1080p/file.mp4?loc=external&signature=3768f206474f34417bb20831759fea668b273e96891e44c564f775abaaa1b6db', NULL, NULL, '2022-09-18 03:48:18', '2022-09-18 03:48:18'),
(193, 'Tuck Jumps', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/750141032/rendition/1080p/file.mp4?loc=external&signature=772897f0d71de8993c431f81f32951a6673f17dfab6d05a4bc442359d1184f3a', 'https://player.vimeo.com/progressive_redirect/playback/750141032/rendition/1080p/file.mp4?loc=external&signature=772897f0d71de8993c431f81f32951a6673f17dfab6d05a4bc442359d1184f3a', NULL, NULL, '2022-09-18 03:50:30', '2022-09-18 03:50:30'),
(194, 'Sizzy Squat', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750141108/rendition/1080p/file.mp4?loc=external&signature=92242758ff962cde028bf29d362ee65d243d99664a3b45becf1c7279e204f113', 'https://player.vimeo.com/progressive_redirect/playback/750141108/rendition/1080p/file.mp4?loc=external&signature=92242758ff962cde028bf29d362ee65d243d99664a3b45becf1c7279e204f113', NULL, NULL, '2022-09-18 03:51:36', '2022-09-18 03:51:36'),
(195, 'Copenhagen Adductors', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750141426/rendition/1080p/file.mp4?loc=external&signature=24ce35d50b4602db2373e9b0a3ab7497c967f8d52efb805adacdff1d5265bd70', 'https://player.vimeo.com/progressive_redirect/playback/750141426/rendition/1080p/file.mp4?loc=external&signature=24ce35d50b4602db2373e9b0a3ab7497c967f8d52efb805adacdff1d5265bd70', NULL, NULL, '2022-09-18 03:52:43', '2022-09-18 03:52:43'),
(196, 'Flooted heal reverse lunges', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750141568/rendition/1080p/file.mp4?loc=external&signature=09cb58e790e82c2c9cda2ae0cd30bcdf5a99af2d0211b9bc55bbef7bf4205c48', 'https://player.vimeo.com/progressive_redirect/playback/750141568/rendition/1080p/file.mp4?loc=external&signature=09cb58e790e82c2c9cda2ae0cd30bcdf5a99af2d0211b9bc55bbef7bf4205c48', NULL, NULL, '2022-09-18 03:54:23', '2022-09-18 03:54:23'),
(197, 'One arm dumbell bench press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750141653/rendition/1080p/file.mp4?loc=external&signature=28da424139e7d640aab34a2ec5e9857b79f0b005e12ac1a68b775ccad9dd42a0', 'https://player.vimeo.com/progressive_redirect/playback/750141653/rendition/1080p/file.mp4?loc=external&signature=28da424139e7d640aab34a2ec5e9857b79f0b005e12ac1a68b775ccad9dd42a0', NULL, NULL, '2022-09-18 03:55:13', '2022-09-18 03:55:13'),
(198, 'Dumbell Bench press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750141702/rendition/1080p/file.mp4?loc=external&signature=28fbc63fde60a3c15b1d64d81d1132936dcf6a6b159dcd974322f73f58f8cf4c', 'https://player.vimeo.com/progressive_redirect/playback/750141702/rendition/1080p/file.mp4?loc=external&signature=28fbc63fde60a3c15b1d64d81d1132936dcf6a6b159dcd974322f73f58f8cf4c', NULL, NULL, '2022-09-18 03:56:22', '2022-09-18 03:56:22'),
(199, 'Dumbell alternative bench press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750141755/rendition/1080p/file.mp4?loc=external&signature=865e28c8c16c458f3c82c47ec3c525782c15dc31862c9b65de1c9680d20c11d2', 'https://player.vimeo.com/progressive_redirect/playback/750141755/rendition/1080p/file.mp4?loc=external&signature=865e28c8c16c458f3c82c47ec3c525782c15dc31862c9b65de1c9680d20c11d2', NULL, NULL, '2022-09-18 03:57:35', '2022-09-18 03:57:35'),
(200, 'Ankle isometric hold', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750141788/rendition/1080p/file.mp4?loc=external&signature=96ab1c1715f4e31fd4e3338dc7a1f7b133f10d61dbe6295a23d44ffa93668e2b', 'https://player.vimeo.com/progressive_redirect/playback/750141788/rendition/1080p/file.mp4?loc=external&signature=96ab1c1715f4e31fd4e3338dc7a1f7b133f10d61dbe6295a23d44ffa93668e2b', NULL, NULL, '2022-09-18 03:58:29', '2022-09-18 03:58:29'),
(201, 'Dribbles ankle', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750141877/rendition/1080p/file.mp4?loc=external&signature=d1e031842c9249bc5decbea73db8ac8528a29ce6053d9f9826e9484de850426f', 'https://player.vimeo.com/progressive_redirect/playback/750141877/rendition/1080p/file.mp4?loc=external&signature=d1e031842c9249bc5decbea73db8ac8528a29ce6053d9f9826e9484de850426f', NULL, NULL, '2022-09-18 04:00:24', '2022-09-18 04:00:24'),
(202, 'Cossack stretch', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750141928/rendition/1080p/file.mp4?loc=external&signature=3819f13316cc1e77f4784900635891e8c781a349667d0a1a2cd14d89fa71c4a5', 'https://player.vimeo.com/progressive_redirect/playback/750141928/rendition/1080p/file.mp4?loc=external&signature=3819f13316cc1e77f4784900635891e8c781a349667d0a1a2cd14d89fa71c4a5', NULL, NULL, '2022-09-18 04:01:26', '2022-09-18 04:01:26'),
(203, 'Glute ham raises', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750142001/rendition/1080p/file.mp4?loc=external&signature=0689c68f5747e585a74a2358f4e74442b4573c7690e7e3e61ee655a48308328d', 'https://player.vimeo.com/progressive_redirect/playback/750142001/rendition/1080p/file.mp4?loc=external&signature=0689c68f5747e585a74a2358f4e74442b4573c7690e7e3e61ee655a48308328d', NULL, NULL, '2022-09-18 04:02:31', '2022-09-18 04:02:31'),
(204, 'Hip flexor stretch', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750142312/rendition/1080p/file.mp4?loc=external&signature=76d31b4b1b8e57b0bd4b3cd9c688a38440871604c3b7c7820af368dbed4cfe5c', 'https://player.vimeo.com/progressive_redirect/playback/750142312/rendition/1080p/file.mp4?loc=external&signature=76d31b4b1b8e57b0bd4b3cd9c688a38440871604c3b7c7820af368dbed4cfe5c', NULL, NULL, '2022-09-18 04:03:23', '2022-09-18 04:03:23'),
(205, 'Dribbles knee', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750142387/rendition/1080p/file.mp4?loc=external&signature=9f4a509ddc297c8119317675073bf704a6b02a9ee05122bbb126657fd489e993', 'https://player.vimeo.com/progressive_redirect/playback/750142387/rendition/1080p/file.mp4?loc=external&signature=9f4a509ddc297c8119317675073bf704a6b02a9ee05122bbb126657fd489e993', NULL, NULL, '2022-09-18 04:04:16', '2022-09-18 04:04:16'),
(206, 'Leg bounds', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750142443/rendition/1080p/file.mp4?loc=external&signature=31bf7b2ae3a7c8bc6415d05e6b9326a63c4bf15d2f5bc6ae635a89af2fcc4b74', 'https://player.vimeo.com/progressive_redirect/playback/750142443/rendition/1080p/file.mp4?loc=external&signature=31bf7b2ae3a7c8bc6415d05e6b9326a63c4bf15d2f5bc6ae635a89af2fcc4b74', NULL, NULL, '2022-09-18 04:05:58', '2022-09-18 04:05:58'),
(207, 'Leg-skips', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750142469/rendition/1080p/file.mp4?loc=external&signature=b470cc2d578f3d12b26bc533149ba026119869858b610cf3419c493d795dce3c', 'https://player.vimeo.com/progressive_redirect/playback/750142469/rendition/1080p/file.mp4?loc=external&signature=b470cc2d578f3d12b26bc533149ba026119869858b610cf3419c493d795dce3c', NULL, NULL, '2022-09-18 04:06:57', '2022-09-18 04:06:57'),
(208, 'Dribbles mid-shin', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750142534/rendition/1080p/file.mp4?loc=external&signature=e578a5cdb760115afa28e6dc333ab660a04848aba91c3bbab61b7d3521b27ed2', 'https://player.vimeo.com/progressive_redirect/playback/750142534/rendition/1080p/file.mp4?loc=external&signature=e578a5cdb760115afa28e6dc333ab660a04848aba91c3bbab61b7d3521b27ed2', NULL, NULL, '2022-09-18 04:08:06', '2022-09-18 04:08:06'),
(209, 'Nordic hamstrings', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/750142594/rendition/1080p/file.mp4?loc=external&signature=4190b814e25f4454129a71dc5a645e26980a4704da127a232846766ae43c0f2c', 'https://player.vimeo.com/progressive_redirect/playback/750142594/rendition/1080p/file.mp4?loc=external&signature=4190b814e25f4454129a71dc5a645e26980a4704da127a232846766ae43c0f2c', NULL, NULL, '2022-09-18 04:08:50', '2022-09-18 04:08:50'),
(210, 'Overspeed jump', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/750142685/rendition/1080p/file.mp4?loc=external&signature=83c24993e348dc6d8b288c993ba50a246d2071f0182d4a322e7f10fe63f5093c', 'https://player.vimeo.com/progressive_redirect/playback/750142685/rendition/1080p/file.mp4?loc=external&signature=83c24993e348dc6d8b288c993ba50a246d2071f0182d4a322e7f10fe63f5093c', NULL, NULL, '2022-09-18 04:09:36', '2022-09-18 04:09:36'),
(211, 'Quadriceps strecht', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750142731/rendition/1080p/file.mp4?loc=external&signature=0235f5bee64d7f9132b77c38c958172ef37f5f6488a7056f39d1a7530c023257', 'https://player.vimeo.com/progressive_redirect/playback/750142731/rendition/1080p/file.mp4?loc=external&signature=0235f5bee64d7f9132b77c38c958172ef37f5f6488a7056f39d1a7530c023257', NULL, NULL, '2022-09-18 04:10:52', '2022-09-18 04:10:52'),
(212, 'T-Spine stretch', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/750142800/rendition/1080p/file.mp4?loc=external&signature=8372669ef442583b6bcc7e94ce90fd7aab2eae96a7f8997566ffef83d81f1b30', 'https://player.vimeo.com/progressive_redirect/playback/750142800/rendition/1080p/file.mp4?loc=external&signature=8372669ef442583b6bcc7e94ce90fd7aab2eae96a7f8997566ffef83d81f1b30', NULL, NULL, '2022-09-18 04:11:44', '2022-09-18 04:11:44'),
(213, 'Trap bar', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/757109853/rendition/1080p/file.mp4?loc=external&signature=2a668ef81e2b65fe892c3a68e78357930c282c97d3b7694e2cc26ac9f81ef3e5', 'https://player.vimeo.com/progressive_redirect/playback/757109853/rendition/1080p/file.mp4?loc=external&signature=2a668ef81e2b65fe892c3a68e78357930c282c97d3b7694e2cc26ac9f81ef3e5', NULL, NULL, '2022-10-06 08:28:19', '2022-10-06 08:28:19'),
(214, 'Trap-bar jump', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/757109896/rendition/1080p/file.mp4?loc=external&signature=70405f06d5d1ecde7bc6ccffaf610843a40c5ac73786b2e07e7a18e5e015f903', 'https://player.vimeo.com/progressive_redirect/playback/757109896/rendition/1080p/file.mp4?loc=external&signature=70405f06d5d1ecde7bc6ccffaf610843a40c5ac73786b2e07e7a18e5e015f903', NULL, NULL, '2022-10-06 08:29:52', '2022-10-06 08:29:52'),
(215, 'Half-kneeling Dumbell press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/757109571/rendition/1080p/file.mp4?loc=external&signature=751bc318e11e6359ca279ba837f9ac4391478dfe263cf39aae7717b519ec0026', 'https://player.vimeo.com/progressive_redirect/playback/757109571/rendition/1080p/file.mp4?loc=external&signature=751bc318e11e6359ca279ba837f9ac4391478dfe263cf39aae7717b519ec0026', NULL, NULL, '2022-10-06 08:31:19', '2022-10-06 08:31:19'),
(216, 'Chin-ups close grip', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/757109456/rendition/1080p/file.mp4?loc=external&signature=72d02957cd5aba489ac52cad3de8c4994e3154acc0277a68167b35d714339ff0', 'https://player.vimeo.com/progressive_redirect/playback/757109456/rendition/1080p/file.mp4?loc=external&signature=72d02957cd5aba489ac52cad3de8c4994e3154acc0277a68167b35d714339ff0', NULL, NULL, '2022-10-06 08:32:17', '2022-10-06 08:32:17'),
(217, 'Pisto Squat band assisted', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/757109774/rendition/1080p/file.mp4?loc=external&signature=975cd079a1f91043c5484ecc73c7a8d9c258b7b93b2b29319b85ba81e3e62013', 'https://player.vimeo.com/progressive_redirect/playback/757109774/rendition/1080p/file.mp4?loc=external&signature=975cd079a1f91043c5484ecc73c7a8d9c258b7b93b2b29319b85ba81e3e62013', NULL, NULL, '2022-10-06 08:33:46', '2022-10-06 08:33:46'),
(218, '1-leg romanian deadlift to dumbell snatch', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/757109189/rendition/1080p/file.mp4?loc=external&signature=7f3b2b31524f7b3fdfe2ea8daa1e50765a66de0139e5d6bf0137a29faafee7c1', 'https://player.vimeo.com/progressive_redirect/playback/757109189/rendition/1080p/file.mp4?loc=external&signature=7f3b2b31524f7b3fdfe2ea8daa1e50765a66de0139e5d6bf0137a29faafee7c1', NULL, NULL, '2022-10-06 08:34:58', '2022-10-06 08:34:58');
INSERT INTO `videos` (`id`, `name`, `type`, `exercise_category_id`, `video_sd`, `video_hd`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(219, 'Lateral leg swing', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/758987683/rendition/1080p/file.mp4?loc=external&signature=abb0c9c8a7c51b2fc373b7b0d4c1102ebac8440482d3dfda3b8a12c873876e1e', 'https://player.vimeo.com/progressive_redirect/playback/758987683/rendition/1080p/file.mp4?loc=external&signature=abb0c9c8a7c51b2fc373b7b0d4c1102ebac8440482d3dfda3b8a12c873876e1e', NULL, NULL, '2022-10-07 06:05:15', '2022-10-13 10:04:45'),
(220, 'Supine straight leg hamstring banded kickers', 'video', 29, 'https://player.vimeo.com/progressive_redirect/playback/757120025/rendition/1080p/file.mp4?loc=external&signature=d8f8c42d499fd52c4470ccde6c2013923b5c5ba4316f47aa2551b2fe1cdccaec', 'https://player.vimeo.com/progressive_redirect/playback/757120025/rendition/1080p/file.mp4?loc=external&signature=d8f8c42d499fd52c4470ccde6c2013923b5c5ba4316f47aa2551b2fe1cdccaec', NULL, NULL, '2022-10-07 06:11:56', '2022-10-07 06:11:56'),
(221, '1-leg vertical jump non-countermovement', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/757109324/rendition/1080p/file.mp4?loc=external&signature=5dcc4df0adc90c592999f090961693f022324b38612094b2093f61b90453dff3', 'https://player.vimeo.com/progressive_redirect/playback/757109324/rendition/1080p/file.mp4?loc=external&signature=5dcc4df0adc90c592999f090961693f022324b38612094b2093f61b90453dff3', NULL, NULL, '2022-10-07 06:15:50', '2022-10-07 06:15:50'),
(222, '1-leg vertical jump countermovement', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/757109263/rendition/1080p/file.mp4?loc=external&signature=a6b27730ebaa0a37ebf1f521a6a5b418d5a4668d3fbbd2f2126ed77d423fecf3', 'https://player.vimeo.com/progressive_redirect/playback/757109263/rendition/1080p/file.mp4?loc=external&signature=a6b27730ebaa0a37ebf1f521a6a5b418d5a4668d3fbbd2f2126ed77d423fecf3', NULL, NULL, '2022-10-07 06:16:53', '2022-10-07 06:16:53'),
(223, '1-leg vertical double contact jump', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/757109291/rendition/1080p/file.mp4?loc=external&signature=1b367aea510f6396c2f2c50571d92773e713f95e40163933d75fe9bb3ec23364', 'https://player.vimeo.com/progressive_redirect/playback/757109291/rendition/1080p/file.mp4?loc=external&signature=1b367aea510f6396c2f2c50571d92773e713f95e40163933d75fe9bb3ec23364', NULL, NULL, '2022-10-07 06:18:10', '2022-10-07 06:19:05'),
(224, '1-leg vertical jump double-contact on toes', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/757109683/rendition/1080p/file.mp4?loc=external&signature=b9e257ada73c5d9256dfa473acd4fe5874be4ca5dec340cbed45f1036867be23', 'https://player.vimeo.com/progressive_redirect/playback/757109683/rendition/1080p/file.mp4?loc=external&signature=b9e257ada73c5d9256dfa473acd4fe5874be4ca5dec340cbed45f1036867be23', NULL, NULL, '2022-10-07 06:20:23', '2022-10-07 06:20:23'),
(225, '1-leg vertical continues jump on toes', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/757109740/rendition/1080p/file.mp4?loc=external&signature=46033cc166669fde9ded71042c19bbdd94d1b2986e334387bf9a7d6c7ad1fc28', 'https://player.vimeo.com/progressive_redirect/playback/757109740/rendition/1080p/file.mp4?loc=external&signature=46033cc166669fde9ded71042c19bbdd94d1b2986e334387bf9a7d6c7ad1fc28', NULL, NULL, '2022-10-07 06:21:34', '2022-10-07 06:21:34'),
(226, '1-leg linear hurdle jump to 1-leg tuck jump (One post. jump and 5 ant. jumps).', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/757109637/rendition/1080p/file.mp4?loc=external&signature=e36f5ee2938dc0ab5f73de25864c4fdc2858dee41bff1463ff0e7cebc2b5d36a', 'https://player.vimeo.com/progressive_redirect/playback/757109637/rendition/1080p/file.mp4?loc=external&signature=e36f5ee2938dc0ab5f73de25864c4fdc2858dee41bff1463ff0e7cebc2b5d36a', NULL, NULL, '2022-10-07 06:23:29', '2022-10-07 06:23:29'),
(227, 'Ankle wiper', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/758650002/rendition/1080p/file.mp4?loc=external&signature=0c8be8e659886f47c4f440e2de552081f51b9f75a132c60c8a4f89443e49a7a3', 'https://player.vimeo.com/progressive_redirect/playback/758650002/rendition/1080p/file.mp4?loc=external&signature=0c8be8e659886f47c4f440e2de552081f51b9f75a132c60c8a4f89443e49a7a3', NULL, NULL, '2022-10-25 04:46:06', '2022-10-25 04:46:06'),
(228, 'Half-kneeling 45\' degree lunges', 'video', 25, 'https://player.vimeo.com/progressive_redirect/playback/758649586/rendition/1080p/file.mp4?loc=external&signature=de851d7174332b3f6d01029e9d406e25c50a1bc77595cf284e6cfdd5334b5b4d', 'https://player.vimeo.com/progressive_redirect/playback/758649586/rendition/1080p/file.mp4?loc=external&signature=de851d7174332b3f6d01029e9d406e25c50a1bc77595cf284e6cfdd5334b5b4d', NULL, NULL, '2022-10-25 05:09:48', '2022-10-25 05:09:48'),
(229, '2-Point stance first step+strike', 'video', 29, 'https://player.vimeo.com/progressive_redirect/playback/758649439/rendition/1080p/file.mp4?loc=external&signature=600edabca2ae22d7496c83f7f26d635ed14b991505f13e8e804b2be3a5a1a9b8', 'https://player.vimeo.com/progressive_redirect/playback/758649439/rendition/1080p/file.mp4?loc=external&signature=600edabca2ae22d7496c83f7f26d635ed14b991505f13e8e804b2be3a5a1a9b8', NULL, NULL, '2022-10-26 05:11:01', '2022-10-26 05:11:01'),
(230, 'B-Step over', 'video', 29, 'https://player.vimeo.com/progressive_redirect/playback/758987706/rendition/1080p/file.mp4?loc=external&signature=3bdaa086b4aa2d02e63fd8e5221891513c1969db251d1c00eea110da69e796b2', 'https://player.vimeo.com/progressive_redirect/playback/758987706/rendition/1080p/file.mp4?loc=external&signature=3bdaa086b4aa2d02e63fd8e5221891513c1969db251d1c00eea110da69e796b2', NULL, NULL, '2022-10-26 05:15:31', '2022-10-26 05:15:31'),
(231, 'Dumbell jump shrug (20 % BW)', 'video', 28, 'https://player.vimeo.com/progressive_redirect/playback/764058984/rendition/1080p/file.mp4?loc=external&signature=f9fa20f18a59b56205b284e9f9473d83753177d58595e5ed3347d4751ac2d8f3', 'https://player.vimeo.com/progressive_redirect/playback/764058984/rendition/1080p/file.mp4?loc=external&signature=f9fa20f18a59b56205b284e9f9473d83753177d58595e5ed3347d4751ac2d8f3', NULL, NULL, '2022-10-26 05:29:25', '2022-10-26 05:29:25'),
(232, 'Barbell push press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758987595/rendition/1080p/file.mp4?loc=external&signature=9c1e8e5ca680fc68c52e1c8b4faf36d92bc2960af3cfa05984878c3727f0ef78', 'https://player.vimeo.com/progressive_redirect/playback/758987595/rendition/1080p/file.mp4?loc=external&signature=9c1e8e5ca680fc68c52e1c8b4faf36d92bc2960af3cfa05984878c3727f0ef78', NULL, NULL, '2022-10-26 05:35:11', '2022-10-26 05:35:11'),
(233, 'Drop lunge from 10 cm', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758649471/rendition/1080p/file.mp4?loc=external&signature=d6190df659f8851b33b4f1d95dd391ef41c58b3f221d5d12bc57608f1bc19a69', 'https://player.vimeo.com/progressive_redirect/playback/758649471/rendition/1080p/file.mp4?loc=external&signature=d6190df659f8851b33b4f1d95dd391ef41c58b3f221d5d12bc57608f1bc19a69', NULL, NULL, '2022-10-26 05:40:20', '2022-10-26 05:40:20'),
(234, 'Chaos Push-Ups', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758650303/rendition/1080p/file.mp4?loc=external&signature=09577da41e5170ca13eeb9e29f05e60381bf90784ba5d4f814bf8091ed28df45', 'https://player.vimeo.com/progressive_redirect/playback/758650303/rendition/1080p/file.mp4?loc=external&signature=09577da41e5170ca13eeb9e29f05e60381bf90784ba5d4f814bf8091ed28df45', NULL, NULL, '2022-10-26 05:41:39', '2022-10-26 05:41:39'),
(235, 'Chaos Banded Pallof-Press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/757109374/rendition/1080p/file.mp4?loc=external&signature=6ddd8d4f2d88539cf77e66e9035edc00fabeaab433fccdbed375923f92809113', 'https://player.vimeo.com/progressive_redirect/playback/757109374/rendition/1080p/file.mp4?loc=external&signature=6ddd8d4f2d88539cf77e66e9035edc00fabeaab433fccdbed375923f92809113', NULL, NULL, '2022-10-26 05:43:40', '2022-10-26 05:43:40'),
(236, 'Russian twist', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/764082867/rendition/1080p/file.mp4?loc=external&signature=9e1cf31484240aec4f4dc1dd3f2ae10e9b4304893c696d91552257143a6a9a9d', 'https://player.vimeo.com/progressive_redirect/playback/764082867/rendition/1080p/file.mp4?loc=external&signature=9e1cf31484240aec4f4dc1dd3f2ae10e9b4304893c696d91552257143a6a9a9d', NULL, NULL, '2022-10-26 07:10:12', '2022-10-26 07:10:12'),
(237, 'Reverse flies maskine', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/764082839/rendition/1080p/file.mp4?loc=external&signature=7f2d7681cf1ee272698915b23581a418da48b1822141804c39f09173395c28a0', 'https://player.vimeo.com/progressive_redirect/playback/764082839/rendition/1080p/file.mp4?loc=external&signature=7f2d7681cf1ee272698915b23581a418da48b1822141804c39f09173395c28a0', NULL, NULL, '2022-10-26 07:11:03', '2022-10-26 07:11:03'),
(238, 'Brutalbænk Mavebøjning', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/764082800/rendition/1080p/file.mp4?loc=external&signature=9d0b4451e00beb5f819b44412b397fc77aacc969fefdced532df48b09802b3d8', 'https://player.vimeo.com/progressive_redirect/playback/764082800/rendition/1080p/file.mp4?loc=external&signature=9d0b4451e00beb5f819b44412b397fc77aacc969fefdced532df48b09802b3d8', NULL, NULL, '2022-10-26 07:12:13', '2022-10-26 07:12:13'),
(239, 'Flies Chess press maskine', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/764082767/rendition/1080p/file.mp4?loc=external&signature=eef35cb0da03f38de2b29198a574cd08b0f376ef365a39ad0dcc4670dccac6da', 'https://player.vimeo.com/progressive_redirect/playback/764082767/rendition/1080p/file.mp4?loc=external&signature=eef35cb0da03f38de2b29198a574cd08b0f376ef365a39ad0dcc4670dccac6da', NULL, NULL, '2022-10-26 07:13:09', '2022-10-26 07:13:09'),
(240, 'Dips', 'video', 13, 'https://player.vimeo.com/progressive_redirect/playback/764082737/rendition/1080p/file.mp4?loc=external&signature=a074e5632c96c5108744de5517fe1c3313f533603490fce9f3e0e7d4d492e1af', 'https://player.vimeo.com/progressive_redirect/playback/764082737/rendition/1080p/file.mp4?loc=external&signature=a074e5632c96c5108744de5517fe1c3313f533603490fce9f3e0e7d4d492e1af', NULL, NULL, '2022-10-26 07:13:53', '2022-10-26 07:13:53'),
(241, 'Figure-of-Eight Hop Test', 'video', 31, 'https://player.vimeo.com/progressive_redirect/playback/764073955/rendition/1080p/file.mp4?loc=external&signature=5fda874b79b5531c3b248ca6c7134b6fa5ea118b8ea961b1c344fa8779077091', 'https://player.vimeo.com/progressive_redirect/playback/764073955/rendition/1080p/file.mp4?loc=external&signature=5fda874b79b5531c3b248ca6c7134b6fa5ea118b8ea961b1c344fa8779077091', NULL, NULL, '2022-10-26 07:19:21', '2022-10-26 07:19:21'),
(242, 'Side-Hop test', 'video', 31, 'https://player.vimeo.com/progressive_redirect/playback/764074069/rendition/1080p/file.mp4?loc=external&signature=5fbd73551b063567a46e5dacada72d188b67f466b06914a88fe3f03a7005e8c1', 'https://player.vimeo.com/progressive_redirect/playback/764074069/rendition/1080p/file.mp4?loc=external&signature=5fbd73551b063567a46e5dacada72d188b67f466b06914a88fe3f03a7005e8c1', NULL, NULL, '2022-10-26 07:21:08', '2022-10-26 07:21:08'),
(243, '6-Meter Crossover Hop Test', 'video', 31, 'https://player.vimeo.com/progressive_redirect/playback/764073902/rendition/1080p/file.mp4?loc=external&signature=96c4285e80cd02f1c1dba5cfca08ac25f7444c6e38cd55743db63e3efb63b634', 'https://player.vimeo.com/progressive_redirect/playback/764073902/rendition/1080p/file.mp4?loc=external&signature=96c4285e80cd02f1c1dba5cfca08ac25f7444c6e38cd55743db63e3efb63b634', NULL, NULL, '2022-10-26 07:22:10', '2022-10-26 07:22:10'),
(244, 'A-March', 'video', 29, 'https://player.vimeo.com/progressive_redirect/playback/758649917/rendition/1080p/file.mp4?loc=external&signature=ebc5e8ea518c2caec168a97d7114fcebde0363ee25c029d7e33784dedb29e3a0', 'https://player.vimeo.com/progressive_redirect/playback/758649917/rendition/1080p/file.mp4?loc=external&signature=ebc5e8ea518c2caec168a97d7114fcebde0363ee25c029d7e33784dedb29e3a0', NULL, NULL, '2022-11-10 05:08:46', '2022-11-10 05:14:02'),
(245, 'A-Switch- Double Pause', 'video', 29, 'https://player.vimeo.com/progressive_redirect/playback/758650070/rendition/1080p/file.mp4?loc=external&signature=557292bebb6b243c36a52a5c31e92e897624a9825f1e2965a2e00dda138394d6', 'https://player.vimeo.com/progressive_redirect/playback/758650070/rendition/1080p/file.mp4?loc=external&signature=557292bebb6b243c36a52a5c31e92e897624a9825f1e2965a2e00dda138394d6', NULL, NULL, '2022-11-10 05:15:40', '2022-11-10 05:15:40'),
(246, 'Drop-jump', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758650452/rendition/1080p/file.mp4?loc=external&signature=787757f5b3b7bf69393f8da75b507fdbb6e88b4c5f68b2c7a66b4016708f4109', 'https://player.vimeo.com/progressive_redirect/playback/758650452/rendition/1080p/file.mp4?loc=external&signature=787757f5b3b7bf69393f8da75b507fdbb6e88b4c5f68b2c7a66b4016708f4109', NULL, NULL, '2022-11-10 05:17:00', '2022-11-10 05:17:00'),
(247, 'Landmine split stance 1arm press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758650711/rendition/1080p/file.mp4?loc=external&signature=a24c84358ca366ca630a2125ddd3e6dd0075959b09a0f83973fcd90c5f695a20', 'https://player.vimeo.com/progressive_redirect/playback/758650711/rendition/1080p/file.mp4?loc=external&signature=a24c84358ca366ca630a2125ddd3e6dd0075959b09a0f83973fcd90c5f695a20', NULL, NULL, '2022-11-10 05:18:32', '2022-11-10 05:18:32'),
(248, 'One arm dumbell row', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/759066821/rendition/1080p/file.mp4?loc=external&signature=5dd7000d9016c18c88da89e62aac083981c61861ebbecee1218a9c94921e76e5', 'https://player.vimeo.com/progressive_redirect/playback/759066821/rendition/1080p/file.mp4?loc=external&signature=5dd7000d9016c18c88da89e62aac083981c61861ebbecee1218a9c94921e76e5', NULL, NULL, '2022-11-10 05:20:43', '2022-11-10 05:20:43'),
(249, 'Glut bar lift', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758987763/rendition/1080p/file.mp4?loc=external&signature=4c642955b43176470341c954f861b9e3a4b6a4f4f9e2ed60b1721f29afdeb2f4', 'https://player.vimeo.com/progressive_redirect/playback/758987763/rendition/1080p/file.mp4?loc=external&signature=4c642955b43176470341c954f861b9e3a4b6a4f4f9e2ed60b1721f29afdeb2f4', NULL, NULL, '2022-11-10 05:22:39', '2022-11-10 05:22:39'),
(250, 'Z-sit overhead dumbell press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758650765/rendition/1080p/file.mp4?loc=external&signature=0c0bb97bad483f2a59aef7a543656a1c0bcdb6726faaaf7e5ee78dbbffb9adb7', 'https://player.vimeo.com/progressive_redirect/playback/758650765/rendition/1080p/file.mp4?loc=external&signature=0c0bb97bad483f2a59aef7a543656a1c0bcdb6726faaaf7e5ee78dbbffb9adb7', NULL, NULL, '2022-11-10 05:28:25', '2022-11-10 05:28:25'),
(251, 'TRX-Row', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758987744/rendition/1080p/file.mp4?loc=external&signature=7e4fd6850217769f495fff6bca469a1930fbb81d7878b42d55e54eda052f9ab2', 'https://player.vimeo.com/progressive_redirect/playback/758987744/rendition/1080p/file.mp4?loc=external&signature=7e4fd6850217769f495fff6bca469a1930fbb81d7878b42d55e54eda052f9ab2', NULL, NULL, '2022-11-11 04:36:02', '2022-11-11 04:36:02'),
(252, 'Straight leg one-leg hamstrings lift', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758650591/rendition/1080p/file.mp4?loc=external&signature=0e4c6483643c29bfc99fc3c98ed6519127a4c60229647297ee1bc013fa080a04', 'https://player.vimeo.com/progressive_redirect/playback/758650591/rendition/1080p/file.mp4?loc=external&signature=0e4c6483643c29bfc99fc3c98ed6519127a4c60229647297ee1bc013fa080a04', NULL, NULL, '2022-11-11 04:37:33', '2022-11-11 04:37:33'),
(253, '30`degree 1 dumbell press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758987799/rendition/1080p/file.mp4?loc=external&signature=77f34c617328c7ee23f6317fe330b0a390de16bd0e5e94bff31008d3ce59418b', 'https://player.vimeo.com/progressive_redirect/playback/758987799/rendition/1080p/file.mp4?loc=external&signature=77f34c617328c7ee23f6317fe330b0a390de16bd0e5e94bff31008d3ce59418b', NULL, NULL, '2022-11-17 13:06:29', '2022-11-17 13:06:29'),
(254, 'Land-One leg romanian deadlift', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758650660/rendition/1080p/file.mp4?loc=external&signature=299dad03378f3d49b7bc6aca931b1dd8af7a4be2ac5bf8f7cce3137461af70d1', 'https://player.vimeo.com/progressive_redirect/playback/758650660/rendition/1080p/file.mp4?loc=external&signature=299dad03378f3d49b7bc6aca931b1dd8af7a4be2ac5bf8f7cce3137461af70d1', NULL, NULL, '2022-11-17 13:07:55', '2022-11-17 13:07:55'),
(255, 'Landmine- Drop lunges to press', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758650489/rendition/1080p/file.mp4?loc=external&signature=c7097e6edeb013e3edc758c9cca7b7eff5f407d17bd3a84cd94084eef1f1b987', 'https://player.vimeo.com/progressive_redirect/playback/758650489/rendition/1080p/file.mp4?loc=external&signature=c7097e6edeb013e3edc758c9cca7b7eff5f407d17bd3a84cd94084eef1f1b987', NULL, NULL, '2022-11-17 13:09:40', '2022-11-17 13:09:40'),
(256, 'Swissball Groinplank', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758650552/rendition/1080p/file.mp4?loc=external&signature=8c149a0cf5cc05cfddf36e84cb15c7d329644dc31baac3f4e5bb02eb84a20715', 'https://player.vimeo.com/progressive_redirect/playback/758650552/rendition/1080p/file.mp4?loc=external&signature=8c149a0cf5cc05cfddf36e84cb15c7d329644dc31baac3f4e5bb02eb84a20715', NULL, NULL, '2022-11-17 13:12:31', '2022-11-17 13:12:31'),
(257, 'Front squat', 'video', 27, 'https://player.vimeo.com/progressive_redirect/playback/758650523/rendition/1080p/file.mp4?loc=external&signature=15bc690f14f542a01b1561f4797386be5968de1533dec33fae19d7be9550a8c9', 'https://player.vimeo.com/progressive_redirect/playback/758650523/rendition/1080p/file.mp4?loc=external&signature=15bc690f14f542a01b1561f4797386be5968de1533dec33fae19d7be9550a8c9', NULL, NULL, '2022-11-17 13:13:10', '2022-11-17 13:13:10'),
(258, 'Benpress', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772359735/rendition/1080p/file.mp4?loc=external&signature=3e3c7cd3be2039747bb17f88dcd71a54b645e4e690b7e27df03b0c0136a49a71', 'https://player.vimeo.com/progressive_redirect/playback/772359735/rendition/1080p/file.mp4?loc=external&signature=3e3c7cd3be2039747bb17f88dcd71a54b645e4e690b7e27df03b0c0136a49a71', NULL, NULL, '2022-11-18 08:23:30', '2022-11-18 08:23:30'),
(259, 'Brystpress', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772359782/rendition/1080p/file.mp4?loc=external&signature=bcefe35623c5244d987ee299975e710a5f41d3f53f16b87930b641bcd513ce49', 'https://player.vimeo.com/progressive_redirect/playback/772359782/rendition/1080p/file.mp4?loc=external&signature=bcefe35623c5244d987ee299975e710a5f41d3f53f16b87930b641bcd513ce49', NULL, NULL, '2022-11-18 08:24:14', '2022-11-18 08:24:14'),
(260, 'Calf raises', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772359821/rendition/1080p/file.mp4?loc=external&signature=77eace4fb289535b9294d9ea26f06042e34d923ad35582d1f7fa6d0976e68f9a', 'https://player.vimeo.com/progressive_redirect/playback/772359821/rendition/1080p/file.mp4?loc=external&signature=77eace4fb289535b9294d9ea26f06042e34d923ad35582d1f7fa6d0976e68f9a', NULL, NULL, '2022-11-18 08:24:54', '2022-11-18 08:24:54'),
(261, 'Legcurl', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772359859/rendition/1080p/file.mp4?loc=external&signature=f82c51656198d9795e12c096efdacc627097aea208bfc6a688bc142aeb74d4d4', 'https://player.vimeo.com/progressive_redirect/playback/772359859/rendition/1080p/file.mp4?loc=external&signature=f82c51656198d9795e12c096efdacc627097aea208bfc6a688bc142aeb74d4d4', NULL, NULL, '2022-11-18 08:25:43', '2022-11-18 08:25:43'),
(262, 'Legekstension', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772359905/rendition/1080p/file.mp4?loc=external&signature=89e99799728b933447fcd5b6264068797ce2ea7f9a9d3d13838dd18b268d3f90', 'https://player.vimeo.com/progressive_redirect/playback/772359905/rendition/1080p/file.mp4?loc=external&signature=89e99799728b933447fcd5b6264068797ce2ea7f9a9d3d13838dd18b268d3f90', NULL, NULL, '2022-11-18 08:27:39', '2022-11-18 08:27:39'),
(263, 'Mavebøjning', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772359936/rendition/1080p/file.mp4?loc=external&signature=258a06443c45c9d646ed415d5c3b2a839d6551113bf988b8bf38c093bdd66613', 'https://player.vimeo.com/progressive_redirect/playback/772359936/rendition/1080p/file.mp4?loc=external&signature=258a06443c45c9d646ed415d5c3b2a839d6551113bf988b8bf38c093bdd66613', NULL, NULL, '2022-11-18 08:28:21', '2022-11-18 08:28:21'),
(264, 'Nedtrekk', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772359964/rendition/1080p/file.mp4?loc=external&signature=98be9ddf9ebdbae4479f04c48759705c496a05b36848010910ae69aec8b7a77e', 'https://player.vimeo.com/progressive_redirect/playback/772359964/rendition/1080p/file.mp4?loc=external&signature=98be9ddf9ebdbae4479f04c48759705c496a05b36848010910ae69aec8b7a77e', NULL, NULL, '2022-11-18 08:29:00', '2022-11-18 08:29:00'),
(265, 'Romaskin', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772360020/rendition/1080p/file.mp4?loc=external&signature=a3db6c2f06de4c5d2321e206ad9dd9ee056cadcfa63fdadd21f529ed19f68595', 'https://player.vimeo.com/progressive_redirect/playback/772360020/rendition/1080p/file.mp4?loc=external&signature=a3db6c2f06de4c5d2321e206ad9dd9ee056cadcfa63fdadd21f529ed19f68595', NULL, NULL, '2022-11-18 08:29:42', '2022-11-18 08:29:42'),
(266, 'Ryggekstension', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772360098/rendition/1080p/file.mp4?loc=external&signature=ef2afe7700918126b1f54af3f4e57d626c509177c6cd90f64d50b3d22cb7d361', 'https://player.vimeo.com/progressive_redirect/playback/772360098/rendition/1080p/file.mp4?loc=external&signature=ef2afe7700918126b1f54af3f4e57d626c509177c6cd90f64d50b3d22cb7d361', NULL, NULL, '2022-11-18 08:30:30', '2022-11-18 08:30:30'),
(267, 'Siddende roing', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772360133/rendition/1080p/file.mp4?loc=external&signature=4d8108424e8165dab784e2f6203243f102bab1e887689d38c5e7f06491b0f6dc', 'https://player.vimeo.com/progressive_redirect/playback/772360133/rendition/1080p/file.mp4?loc=external&signature=4d8108424e8165dab784e2f6203243f102bab1e887689d38c5e7f06491b0f6dc', NULL, NULL, '2022-11-18 08:31:18', '2022-11-18 08:31:18'),
(268, 'Skulderpress', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772360159/rendition/1080p/file.mp4?loc=external&signature=d5b2b4db3427d365649263d086aa6afd242a232e22ebe859be8fc2bc18fb171d', 'https://player.vimeo.com/progressive_redirect/playback/772360159/rendition/1080p/file.mp4?loc=external&signature=d5b2b4db3427d365649263d086aa6afd242a232e22ebe859be8fc2bc18fb171d', NULL, NULL, '2022-11-18 08:31:55', '2022-11-18 08:31:55'),
(269, 'Stående flies', 'video', 32, 'https://player.vimeo.com/progressive_redirect/playback/772360192/rendition/1080p/file.mp4?loc=external&signature=1040540698fa6fae81a234e2751af16fc4f1e32b310cab73e3c9ad3828ba91b4', 'https://player.vimeo.com/progressive_redirect/playback/772360192/rendition/1080p/file.mp4?loc=external&signature=1040540698fa6fae81a234e2751af16fc4f1e32b310cab73e3c9ad3828ba91b4', NULL, NULL, '2022-11-18 08:32:36', '2022-11-18 08:32:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abilities_scope_index` (`scope`);

--
-- Indexes for table `anthropometrics`
--
ALTER TABLE `anthropometrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anthropometrics_user_id_foreign` (`user_id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`),
  ADD KEY `assigned_roles_scope_index` (`scope`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_workers`
--
ALTER TABLE `case_workers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `case_workers_email_unique` (`email`),
  ADD KEY `case_workers_user_id_foreign` (`user_id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coaches_user_id_foreign` (`user_id`);

--
-- Indexes for table `combine_subscription_plan_programs`
--
ALTER TABLE `combine_subscription_plan_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise_categories`
--
ALTER TABLE `exercise_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise_progress`
--
ALTER TABLE `exercise_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_progress_setup_program_id_foreign` (`setup_program_id`),
  ADD KEY `exercise_progress_user_id_foreign` (`user_id`);

--
-- Indexes for table `exercise_types`
--
ALTER TABLE `exercise_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footballs`
--
ALTER TABLE `footballs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footballs_user_id_foreign` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intensities`
--
ALTER TABLE `intensities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mm_centers`
--
ALTER TABLE `mm_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_subscriptions`
--
ALTER TABLE `my_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_subscriptions_slug_unique` (`slug`);

--
-- Indexes for table `pain_categories`
--
ALTER TABLE `pain_categories`
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
  ADD KEY `permissions_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `permissions_ability_id_index` (`ability_id`),
  ADD KEY `permissions_scope_index` (`scope`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_setups`
--
ALTER TABLE `program_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_setups_user_id_foreign` (`user_id`),
  ADD KEY `program_setups_exercise_category_id_foreign` (`exercise_category_id`),
  ADD KEY `program_setups_group_id_foreign` (`group_id`);

--
-- Indexes for table `program_with_videos`
--
ALTER TABLE `program_with_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_with_videos_video_id_foreign` (`video_id`),
  ADD KEY `program_with_videos_exercise_category_id_foreign` (`exercise_category_id`);

--
-- Indexes for table `pt_clipboards`
--
ALTER TABLE `pt_clipboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pt_clipboards_user_id_foreign` (`user_id`);

--
-- Indexes for table `pt_clipboard_logs`
--
ALTER TABLE `pt_clipboard_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_activities`
--
ALTER TABLE `register_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `register_activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`,`scope`),
  ADD KEY `roles_scope_index` (`scope`);

--
-- Indexes for table `setup_fixed_programs`
--
ALTER TABLE `setup_fixed_programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setup_fixed_programs_user_id_foreign` (`user_id`),
  ADD KEY `setup_fixed_programs_exercise_category_id_foreign` (`exercise_category_id`),
  ADD KEY `setup_fixed_programs_group_id_foreign` (`group_id`);

--
-- Indexes for table `setup_fixed_program_values`
--
ALTER TABLE `setup_fixed_program_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setup_fixed_program_values_setup_fixed_program_id_foreign` (`setup_fixed_program_id`),
  ADD KEY `setup_fixed_program_values_user_id_foreign` (`user_id`),
  ADD KEY `setup_fixed_program_values_program_with_video_id_foreign` (`program_with_video_id`);

--
-- Indexes for table `setup_programs`
--
ALTER TABLE `setup_programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setup_programs_register_program_id_foreign` (`register_program_id`),
  ADD KEY `setup_programs_user_id_foreign` (`user_id`),
  ADD KEY `setup_programs_program_with_video_id_foreign` (`program_with_video_id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statistics_user_id_foreign` (`user_id`);

--
-- Indexes for table `stats3d_screenings`
--
ALTER TABLE `stats3d_screenings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stats3d_screenings_user_id_foreign` (`user_id`);

--
-- Indexes for table `stats_questions`
--
ALTER TABLE `stats_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stats_questions_user_id_foreign` (`user_id`);

--
-- Indexes for table `stats_question_values`
--
ALTER TABLE `stats_question_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stats_question_values_stats_question_id_foreign` (`stats_question_id`);

--
-- Indexes for table `stats_testers`
--
ALTER TABLE `stats_testers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stats_testers_user_id_foreign` (`user_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_profession_id_foreign` (`profession_id`),
  ADD KEY `users_group_id_foreign` (`group_id`),
  ADD KEY `users_type_id_foreign` (`type_id`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_exercise_category_id_foreign` (`exercise_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anthropometrics`
--
ALTER TABLE `anthropometrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `case_workers`
--
ALTER TABLE `case_workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `combine_subscription_plan_programs`
--
ALTER TABLE `combine_subscription_plan_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1934;

--
-- AUTO_INCREMENT for table `exercise_categories`
--
ALTER TABLE `exercise_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `exercise_progress`
--
ALTER TABLE `exercise_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT for table `exercise_types`
--
ALTER TABLE `exercise_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footballs`
--
ALTER TABLE `footballs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `intensities`
--
ALTER TABLE `intensities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `mm_centers`
--
ALTER TABLE `mm_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `my_subscriptions`
--
ALTER TABLE `my_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pain_categories`
--
ALTER TABLE `pain_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professions`
--
ALTER TABLE `professions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `program_setups`
--
ALTER TABLE `program_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `program_with_videos`
--
ALTER TABLE `program_with_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `pt_clipboards`
--
ALTER TABLE `pt_clipboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pt_clipboard_logs`
--
ALTER TABLE `pt_clipboard_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `register_activities`
--
ALTER TABLE `register_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `setup_fixed_programs`
--
ALTER TABLE `setup_fixed_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `setup_fixed_program_values`
--
ALTER TABLE `setup_fixed_program_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `setup_programs`
--
ALTER TABLE `setup_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1470;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `stats3d_screenings`
--
ALTER TABLE `stats3d_screenings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stats_questions`
--
ALTER TABLE `stats_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stats_question_values`
--
ALTER TABLE `stats_question_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `stats_testers`
--
ALTER TABLE `stats_testers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anthropometrics`
--
ALTER TABLE `anthropometrics`
  ADD CONSTRAINT `anthropometrics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `case_workers`
--
ALTER TABLE `case_workers`
  ADD CONSTRAINT `case_workers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `coaches`
--
ALTER TABLE `coaches`
  ADD CONSTRAINT `coaches_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `exercise_progress`
--
ALTER TABLE `exercise_progress`
  ADD CONSTRAINT `exercise_progress_setup_program_id_foreign` FOREIGN KEY (`setup_program_id`) REFERENCES `setup_programs` (`id`),
  ADD CONSTRAINT `exercise_progress_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `footballs`
--
ALTER TABLE `footballs`
  ADD CONSTRAINT `footballs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `program_setups`
--
ALTER TABLE `program_setups`
  ADD CONSTRAINT `program_setups_exercise_category_id_foreign` FOREIGN KEY (`exercise_category_id`) REFERENCES `exercise_categories` (`id`),
  ADD CONSTRAINT `program_setups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `program_setups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `program_with_videos`
--
ALTER TABLE `program_with_videos`
  ADD CONSTRAINT `program_with_videos_exercise_category_id_foreign` FOREIGN KEY (`exercise_category_id`) REFERENCES `exercise_categories` (`id`),
  ADD CONSTRAINT `program_with_videos_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`);

--
-- Constraints for table `pt_clipboards`
--
ALTER TABLE `pt_clipboards`
  ADD CONSTRAINT `pt_clipboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `register_activities`
--
ALTER TABLE `register_activities`
  ADD CONSTRAINT `register_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `setup_fixed_programs`
--
ALTER TABLE `setup_fixed_programs`
  ADD CONSTRAINT `setup_fixed_programs_exercise_category_id_foreign` FOREIGN KEY (`exercise_category_id`) REFERENCES `exercise_categories` (`id`),
  ADD CONSTRAINT `setup_fixed_programs_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `setup_fixed_programs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `setup_fixed_program_values`
--
ALTER TABLE `setup_fixed_program_values`
  ADD CONSTRAINT `setup_fixed_program_values_program_with_video_id_foreign` FOREIGN KEY (`program_with_video_id`) REFERENCES `program_with_videos` (`id`),
  ADD CONSTRAINT `setup_fixed_program_values_setup_fixed_program_id_foreign` FOREIGN KEY (`setup_fixed_program_id`) REFERENCES `setup_fixed_programs` (`id`),
  ADD CONSTRAINT `setup_fixed_program_values_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `setup_programs`
--
ALTER TABLE `setup_programs`
  ADD CONSTRAINT `setup_programs_program_with_video_id_foreign` FOREIGN KEY (`program_with_video_id`) REFERENCES `program_with_videos` (`id`),
  ADD CONSTRAINT `setup_programs_register_program_id_foreign` FOREIGN KEY (`register_program_id`) REFERENCES `program_setups` (`id`),
  ADD CONSTRAINT `setup_programs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `statistics`
--
ALTER TABLE `statistics`
  ADD CONSTRAINT `statistics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stats3d_screenings`
--
ALTER TABLE `stats3d_screenings`
  ADD CONSTRAINT `stats3d_screenings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stats_questions`
--
ALTER TABLE `stats_questions`
  ADD CONSTRAINT `stats_questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stats_question_values`
--
ALTER TABLE `stats_question_values`
  ADD CONSTRAINT `stats_question_values_stats_question_id_foreign` FOREIGN KEY (`stats_question_id`) REFERENCES `stats_questions` (`id`);

--
-- Constraints for table `stats_testers`
--
ALTER TABLE `stats_testers`
  ADD CONSTRAINT `stats_testers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `users_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`),
  ADD CONSTRAINT `users_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `exercise_types` (`id`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_exercise_category_id_foreign` FOREIGN KEY (`exercise_category_id`) REFERENCES `exercise_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
