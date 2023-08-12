-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 04:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `credit` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `ctitle`, `ccode`, `semester`, `credit`, `created_at`, `updated_at`) VALUES
(1, 'Basic Accounting', 'ACC 101(V3)', 1, 3.00, '2022-11-10 08:55:35', '2022-11-10 08:55:35'),
(2, 'Introduction to Computer System ‎', 'CSE 110(V3)', 1, 2.00, '2022-11-10 08:57:48', '2022-11-10 08:57:48'),
(3, 'Introduction to Computer System ‎(‎Laboratory‎)', 'CSE 110(V3)', 1, 2.00, '2022-11-10 08:58:15', '2022-11-10 08:58:15'),
(4, 'Electrical Circuits I', 'EEE 101(V3)', 1, 3.00, '2022-11-10 08:58:38', '2022-11-10 08:58:38'),
(5, 'Electrical Circuits I Laboratory', 'EEE 102(V3)', 1, 1.50, '2022-11-10 08:59:06', '2022-11-10 08:59:06'),
(6, 'General English', 'ENG 101(V3)', 1, 3.00, '2022-11-10 08:59:33', '2022-11-10 08:59:33'),
(7, 'Engineering Mathematics I', 'MAT 105(V3)', 1, 3.00, '2022-11-10 09:00:02', '2022-11-10 09:00:02'),
(8, 'Mechanical Engineering Drawing ‎& ‎CAD ‎(‎Laboratory‎)', 'ME 102(V3)', 1, 1.00, '2022-11-10 09:01:02', '2022-11-10 09:01:02'),
(9, 'Engineering Physics I', 'PHY 101(V3)', 1, 3.00, '2022-11-10 09:01:29', '2022-11-10 09:01:29'),
(10, 'Discrete Mathematics', 'CSE 103(V3)', 2, 3.00, '2022-11-10 09:02:36', '2022-11-10 09:02:36'),
(11, 'Structured Programming', 'CSE 111(V3)', 2, 2.00, '2022-11-10 09:03:03', '2022-11-10 09:03:03'),
(12, 'Structured Programming Laboratory', 'CSE 112(V3)', 2, 2.00, '2022-11-10 09:03:33', '2022-11-10 09:03:33'),
(13, 'Electronics I', 'EEE 211(V3)', 2, 3.00, '2022-11-10 09:04:01', '2022-11-10 09:04:01'),
(14, 'Electronics I Laboratory', 'EEE 212(V3)', 2, 1.50, '2022-11-10 09:04:29', '2022-11-10 09:04:29'),
(15, 'Developing English Skills', 'ENG 103(V3)', 2, 2.00, '2022-11-10 09:05:01', '2022-11-10 09:05:01'),
(16, 'Engineering Mathematics II', 'MAT 107(V3)', 2, 3.00, '2022-11-10 09:05:27', '2022-11-10 09:05:27'),
(17, 'Engineering Physics II', 'PHY 103(V3)', 2, 3.00, '2022-11-10 09:05:56', '2022-11-10 09:05:56'),
(18, 'Object Oriented Programming', 'CSE 211(V3)', 3, 3.00, '2022-11-10 09:09:36', '2022-11-10 09:09:36'),
(19, 'Object Oriented Programming Laboratory', 'CSE 212(V3)', 3, 1.50, '2022-11-10 09:09:57', '2022-11-10 09:09:57'),
(20, 'Data Structure', 'CSE 221(V3)', 3, 3.00, '2022-11-10 09:10:29', '2022-11-10 09:10:29'),
(21, 'Data Structure Laboratory', 'CSE 222(V3)', 3, 1.50, '2022-11-10 09:10:48', '2022-11-10 09:10:48'),
(22, 'Basic Economics', 'ECO 201(V3)', 3, 3.00, '2022-11-10 09:11:14', '2022-11-10 09:11:14'),
(23, 'Digital Electronics', 'EEE 311(V3)', 3, 3.00, '2022-11-10 09:11:41', '2022-11-10 09:11:41'),
(24, 'Engineering Mathematics III', 'MAT 201(V3)', 3, 3.00, '2022-11-10 09:12:03', '2022-11-10 09:12:03'),
(25, 'Algorithm Design And Analysis', 'CSE 225(V3)', 4, 3.00, '2022-11-11 06:56:46', '2022-11-11 06:56:46'),
(26, '‎Algorithm Design And Analysis Laboratory', 'CSE 226(V3)', 4, 1.00, '2022-11-11 06:57:33', '2022-11-11 06:57:33'),
(27, 'Database Management System', 'CSE 237(V3)', 4, 3.00, '2022-11-11 06:57:56', '2022-11-11 06:57:56'),
(28, 'Database Management System Laboratory', 'CSE 238(V3)', 4, 1.50, '2022-11-11 06:58:27', '2022-11-11 06:58:27'),
(29, 'Signals & Systems', 'EEE 201(V3)', 4, 3.00, '2022-11-11 06:58:56', '2022-11-11 06:58:56'),
(30, 'Signals & Systems Laboratory', 'EEE 202(V3)', 4, 1.00, '2022-11-11 06:59:29', '2022-11-11 06:59:29'),
(31, 'Engineering Mathematics IV', 'MAT 203(V3)', 4, 3.00, '2022-11-11 06:59:56', '2022-11-11 06:59:56'),
(32, 'Industrial & Business Management', 'MGT 203(V3)', 4, 3.00, '2022-11-11 07:00:31', '2022-11-11 07:00:31'),
(33, 'Computational Methods for Engineering Problems ‎', 'CSE 301(V3)', 5, 3.00, '2022-11-11 07:01:12', '2022-11-11 07:01:12'),
(34, 'Communication Engineering', 'EEE 309(V3)', 5, 3.00, '2022-11-11 07:01:42', '2022-11-11 07:01:42'),
(35, 'Communication Engineering Laboratory', 'EEE 310(V3)', 5, 1.50, '2022-11-11 07:02:26', '2022-11-11 07:02:26'),
(36, 'Microprocessors & Microcontrollers', 'EEE 371(V3)', 5, 3.00, '2022-11-11 07:03:45', '2022-11-11 07:03:45'),
(37, '‎Microprocessors ‎& ‎Microcontrollers Laboratory', 'EEE 372(V3)', 5, 1.50, '2022-11-11 07:04:08', '2022-11-11 07:04:08'),
(38, 'Organizational Behavior', 'MGT 251(V3)', 5, 3.00, '2022-11-11 07:04:42', '2022-11-11 07:04:42'),
(39, 'Computational Methods for Engineering Problems ‎ Laboratory', 'CSE 302(V3)', 5, 1.00, '2022-11-11 07:05:57', '2022-11-11 07:05:57'),
(40, 'Software Engineering ‎& ‎Information System Design', 'CSE 305(V3)', 5, 4.00, '2022-11-11 07:06:43', '2022-11-11 07:06:43'),
(41, 'Software Engineering ‎& ‎Information System Design ‎ Laboratory', 'CSE 306(V3)', 5, 1.50, '2022-11-11 07:07:15', '2022-11-11 07:07:15'),
(42, 'Artificial Intelligence', 'CSE 317(V3)', 6, 3.00, '2022-11-11 07:08:46', '2022-11-11 07:08:46'),
(43, 'Artificial Intelligence Laboratory', 'CSE 318(V3)', 6, 1.50, '2022-11-11 07:09:16', '2022-11-11 07:09:16'),
(44, 'Operating Systems', 'CSE 333(V3)', 6, 3.00, '2022-11-11 07:10:45', '2022-11-11 07:10:45'),
(45, 'Operating Systems Laboratory', 'CSE 334(V3)', 6, 1.50, '2022-11-11 07:11:32', '2022-11-11 07:11:32'),
(46, 'Computer Organization & Architecture', 'CSE 337(V3)', 6, 3.00, '2022-11-11 07:11:55', '2022-11-11 07:11:55'),
(47, 'Software Development', 'CSE 338(V3)', 6, 2.00, '2022-11-11 07:12:22', '2022-11-11 07:12:22'),
(48, 'Data Communication', 'CSE 364(V3)', 6, 3.00, '2022-11-11 07:12:56', '2022-11-11 07:12:56'),
(49, 'Computer Network', 'CSE 367(V3)', 6, 3.00, '2022-11-11 07:13:20', '2022-11-11 07:13:20'),
(50, 'Computer Network Laboratory', 'CSE 368(V3)', 6, 1.50, '2022-11-11 07:13:43', '2022-11-11 07:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester` int(11) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `semester`, `student_id`, `course_id`, `type`, `session_id`, `created_at`, `updated_at`) VALUES
(43, 3, 7, 4, 'regular', 7, '2022-11-11 07:47:52', '2022-11-11 07:47:52'),
(44, 3, 7, 10, 'regular', 7, '2022-11-11 07:47:53', '2022-11-11 07:47:53'),
(45, 3, 7, 11, 'recourse', 7, '2022-11-11 07:47:53', '2022-11-11 07:47:53'),
(46, 3, 7, 18, 'regular', 7, '2022-11-11 07:47:53', '2022-11-11 07:47:53'),
(47, 3, 7, 19, 'regular', 7, '2022-11-11 07:47:53', '2022-11-11 07:47:53'),
(48, 3, 7, 20, 'regular', 7, '2022-11-11 07:47:53', '2022-11-11 07:47:53'),
(49, 3, 7, 21, 'regular', 7, '2022-11-11 07:47:53', '2022-11-11 07:47:53'),
(50, 3, 7, 22, 'regular', 7, '2022-11-11 07:47:53', '2022-11-11 07:47:53'),
(51, 3, 6, 6, 'recourse', 7, '2022-11-11 07:50:12', '2022-11-11 07:50:12'),
(52, 3, 6, 10, 'regular', 7, '2022-11-11 07:50:12', '2022-11-11 07:50:12'),
(53, 3, 6, 11, 'regular', 7, '2022-11-11 07:50:12', '2022-11-11 07:50:12'),
(54, 3, 6, 13, 'Retake', 7, '2022-11-11 07:50:12', '2022-11-11 07:50:12'),
(55, 3, 6, 18, 'regular', 7, '2022-11-11 07:50:12', '2022-11-11 07:50:12'),
(56, 3, 6, 19, 'regular', 7, '2022-11-11 07:50:12', '2022-11-11 07:50:12'),
(57, 3, 6, 20, 'regular', 7, '2022-11-11 07:50:12', '2022-11-11 07:50:12'),
(58, 3, 6, 21, 'regular', 7, '2022-11-11 07:50:12', '2022-11-11 07:50:12'),
(59, 3, 5, 4, 'Retake', 7, '2022-11-11 07:52:29', '2022-11-11 07:52:29'),
(60, 3, 5, 6, 'regular', 7, '2022-11-11 07:52:29', '2022-11-11 07:52:29'),
(61, 3, 5, 11, 'recourse', 7, '2022-11-11 07:52:29', '2022-11-11 07:52:29'),
(62, 3, 5, 17, 'regular', 7, '2022-11-11 07:52:29', '2022-11-11 07:52:29'),
(63, 3, 5, 18, 'recourse', 7, '2022-11-11 07:52:29', '2022-11-11 07:52:29'),
(64, 3, 5, 19, 'recourse', 7, '2022-11-11 07:52:29', '2022-11-11 07:52:29'),
(65, 3, 5, 20, 'recourse', 7, '2022-11-11 07:52:29', '2022-11-11 07:52:29'),
(66, 3, 5, 21, 'recourse', 7, '2022-11-11 07:52:30', '2022-11-11 07:52:30'),
(67, 6, 4, 1, 'regular', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(68, 6, 4, 4, 'regular', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(69, 6, 4, 6, 'regular', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(70, 6, 4, 9, 'regular', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(71, 6, 4, 10, 'regular', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(72, 6, 4, 11, 'regular', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(73, 6, 4, 18, 'recourse', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(74, 6, 4, 19, 'recourse', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(75, 6, 4, 42, 'regular', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(76, 6, 4, 44, 'recourse', 7, '2022-11-11 07:53:48', '2022-11-11 07:53:48'),
(77, 6, 3, 1, 'regular', 7, '2022-11-11 07:56:32', '2022-11-11 07:56:32'),
(78, 6, 3, 4, 'regular', 7, '2022-11-11 07:56:32', '2022-11-11 07:56:32'),
(79, 6, 3, 6, 'regular', 7, '2022-11-11 07:56:32', '2022-11-11 07:56:32'),
(80, 6, 3, 9, 'regular', 7, '2022-11-11 07:56:32', '2022-11-11 07:56:32'),
(81, 6, 3, 10, 'regular', 7, '2022-11-11 07:56:33', '2022-11-11 07:56:33'),
(82, 6, 3, 11, 'regular', 7, '2022-11-11 07:56:33', '2022-11-11 07:56:33'),
(83, 6, 3, 18, 'regular', 7, '2022-11-11 07:56:33', '2022-11-11 07:56:33'),
(84, 6, 3, 19, 'recourse', 7, '2022-11-11 07:56:33', '2022-11-11 07:56:33'),
(85, 6, 3, 42, 'recourse', 7, '2022-11-11 07:56:33', '2022-11-11 07:56:33'),
(86, 6, 3, 43, 'regular', 7, '2022-11-11 07:56:33', '2022-11-11 07:56:33'),
(87, 3, 3, 1, 'regular', 8, '2022-11-11 21:52:03', '2022-11-11 21:52:03'),
(88, 3, 3, 2, 'regular', 8, '2022-11-11 21:52:03', '2022-11-11 21:52:03'),
(89, 3, 3, 15, 'regular', 8, '2022-11-11 21:52:03', '2022-11-11 21:52:03'),
(90, 3, 3, 16, 'regular', 8, '2022-11-11 21:52:03', '2022-11-11 21:52:03'),
(91, 3, 3, 17, 'regular', 8, '2022-11-11 21:52:03', '2022-11-11 21:52:03'),
(92, 3, 3, 18, 'regular', 8, '2022-11-11 21:52:03', '2022-11-11 21:52:03'),
(93, 3, 3, 19, 'regular', 8, '2022-11-11 21:52:04', '2022-11-11 21:52:04'),
(94, 3, 3, 20, 'regular', 8, '2022-11-11 21:52:04', '2022-11-11 21:52:04'),
(95, 3, 4, 1, 'regular', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(96, 3, 4, 4, 'recourse', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(97, 3, 4, 8, 'regular', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(98, 3, 4, 9, 'regular', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(99, 3, 4, 15, 'recourse', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(100, 3, 4, 16, 'regular', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(101, 3, 4, 17, 'regular', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(102, 3, 4, 20, 'Retake', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(103, 3, 4, 21, 'Retake', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(104, 3, 4, 24, 'regular', 8, '2022-11-11 21:56:24', '2022-11-11 21:56:24'),
(105, 3, 5, 1, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(106, 3, 5, 2, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(107, 3, 5, 4, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(108, 3, 5, 8, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(109, 3, 5, 9, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(110, 3, 5, 15, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(111, 3, 5, 16, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(112, 3, 5, 17, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(113, 3, 5, 18, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(114, 3, 5, 19, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(115, 3, 5, 20, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(116, 3, 5, 21, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(117, 3, 5, 24, 'regular', 8, '2022-11-11 22:19:04', '2022-11-11 22:19:04'),
(118, 3, 6, 1, 'regular', 8, '2022-11-11 22:23:53', '2022-11-11 22:23:53'),
(119, 3, 6, 4, 'regular', 8, '2022-11-11 22:23:54', '2022-11-11 22:23:54'),
(120, 3, 6, 8, 'regular', 8, '2022-11-11 22:23:54', '2022-11-11 22:23:54'),
(121, 3, 6, 9, 'regular', 8, '2022-11-11 22:23:54', '2022-11-11 22:23:54'),
(122, 3, 6, 15, 'regular', 8, '2022-11-11 22:23:54', '2022-11-11 22:23:54'),
(123, 3, 6, 16, 'regular', 8, '2022-11-11 22:23:54', '2022-11-11 22:23:54'),
(124, 3, 6, 17, 'regular', 8, '2022-11-11 22:23:54', '2022-11-11 22:23:54'),
(125, 3, 6, 18, 'regular', 8, '2022-11-11 22:23:54', '2022-11-11 22:23:54'),
(126, 3, 6, 19, 'regular', 8, '2022-11-11 22:23:54', '2022-11-11 22:23:54'),
(127, 3, 6, 20, 'regular', 8, '2022-11-11 22:23:54', '2022-11-11 22:23:54'),
(128, 5, 7, 1, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(129, 5, 7, 2, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(130, 5, 7, 15, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(131, 5, 7, 16, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(132, 5, 7, 17, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(133, 5, 7, 18, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(134, 5, 7, 19, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(135, 5, 7, 20, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(136, 5, 7, 21, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(137, 5, 7, 24, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(138, 5, 7, 33, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(139, 5, 7, 34, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(140, 5, 7, 35, 'regular', 8, '2022-11-11 22:27:54', '2022-11-11 22:27:54'),
(141, 5, 8, 1, 'regular', 8, '2022-11-11 22:35:21', '2022-11-11 22:35:21'),
(142, 5, 8, 4, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(143, 5, 8, 8, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(144, 5, 8, 9, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(145, 5, 8, 14, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(146, 5, 8, 15, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(147, 5, 8, 16, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(148, 5, 8, 17, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(149, 5, 8, 18, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(150, 5, 8, 19, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(151, 5, 8, 20, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(152, 5, 8, 21, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(153, 5, 8, 24, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(154, 5, 8, 34, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(155, 5, 8, 35, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22'),
(156, 5, 8, 36, 'regular', 8, '2022-11-11 22:35:22', '2022-11-11 22:35:22');

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
(5, '2022_10_08_160431_create_user_models_table', 1),
(6, '2022_11_02_043623_create_courses_table', 1),
(7, '2022_11_10_134934_create_user_sessions_table', 1),
(8, '2022_11_10_140419_create_offered__subjects_table', 1),
(9, '2022_11_10_140443_create_enrollments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offered__subjects`
--

CREATE TABLE `offered__subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offered__subjects`
--

INSERT INTO `offered__subjects` (`id`, `session_id`, `course_id`, `created_at`, `updated_at`) VALUES
(90, 7, 1, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(91, 7, 2, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(92, 7, 3, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(93, 7, 4, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(94, 7, 5, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(95, 7, 6, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(96, 7, 7, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(97, 7, 8, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(98, 7, 9, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(99, 7, 10, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(100, 7, 11, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(101, 7, 12, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(102, 7, 13, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(103, 7, 14, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(104, 7, 15, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(105, 7, 16, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(106, 7, 17, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(107, 7, 18, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(108, 7, 19, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(109, 7, 20, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(110, 7, 21, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(111, 7, 22, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(112, 7, 23, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(113, 7, 24, '2022-11-11 07:45:48', '2022-11-11 07:45:48'),
(114, 7, 25, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(115, 7, 26, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(116, 7, 27, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(117, 7, 28, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(118, 7, 29, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(119, 7, 30, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(120, 7, 31, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(121, 7, 32, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(122, 7, 33, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(123, 7, 34, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(124, 7, 35, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(125, 7, 36, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(126, 7, 37, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(127, 7, 38, '2022-11-11 07:45:49', '2022-11-11 07:45:49'),
(128, 7, 39, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(129, 7, 40, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(130, 7, 41, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(131, 7, 42, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(132, 7, 43, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(133, 7, 44, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(134, 7, 45, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(135, 7, 46, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(136, 7, 47, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(137, 7, 48, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(138, 7, 49, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(139, 7, 50, '2022-11-11 07:45:50', '2022-11-11 07:45:50'),
(140, 8, 1, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(141, 8, 2, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(142, 8, 3, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(143, 8, 4, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(144, 8, 5, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(145, 8, 6, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(146, 8, 7, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(147, 8, 8, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(148, 8, 9, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(149, 8, 10, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(150, 8, 11, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(151, 8, 12, '2022-11-11 21:48:57', '2022-11-11 21:48:57'),
(152, 8, 13, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(153, 8, 14, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(154, 8, 15, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(155, 8, 16, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(156, 8, 17, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(157, 8, 18, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(158, 8, 19, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(159, 8, 20, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(160, 8, 21, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(161, 8, 22, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(162, 8, 23, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(163, 8, 24, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(164, 8, 25, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(165, 8, 26, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(166, 8, 27, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(167, 8, 28, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(168, 8, 29, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(169, 8, 30, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(170, 8, 31, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(171, 8, 32, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(172, 8, 33, '2022-11-11 21:48:58', '2022-11-11 21:48:58'),
(173, 8, 34, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(174, 8, 35, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(175, 8, 36, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(176, 8, 37, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(177, 8, 38, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(178, 8, 39, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(179, 8, 40, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(180, 8, 41, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(181, 8, 42, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(182, 8, 43, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(183, 8, 44, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(184, 8, 45, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(185, 8, 46, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(186, 8, 47, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(187, 8, 48, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(188, 8, 49, '2022-11-11 21:48:59', '2022-11-11 21:48:59'),
(189, 8, 50, '2022-11-11 21:48:59', '2022-11-11 21:48:59');

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `user_models`
--

CREATE TABLE `user_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_models`
--

INSERT INTO `user_models` (`id`, `stu_id`, `fullname`, `email`, `dob`, `address`, `filename`, `password`, `gender`, `role`, `isactive`, `created_at`, `updated_at`) VALUES
(1, 1803510201725, 'Rajesh Pal', 'ajoypal.raj@gmail.com', '1999-12-25', 'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.', '1668089587594d1eeb-f364-48a5-9d4b-bda3cf34e414.jfif', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'admin', 0, '2022-11-10 08:13:07', '2022-11-10 08:13:07'),
(2, 1803510201726, 'Eimu Barua', 'eimubarua39@gmail.com', '2022-11-11', 'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.', '1668091653594d1eeb-f364-48a5-9d4b-bda3cf34e414.jfif', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'student', 0, '2022-11-10 08:47:34', '2022-11-10 08:47:34'),
(3, 1803510201727, 'Md. Shohan', 'shohan@gmail.com', '2022-10-31', 'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.', '1668149015download (4).jfif', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'student', 0, '2022-11-11 00:43:35', '2022-11-11 00:43:35'),
(4, 1803510201728, 'Rifon Chakma', 'rifon@gmail.com', '2022-11-23', 'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.', '1668149080download (8).jfif', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'student', 0, '2022-11-11 00:44:40', '2022-11-11 00:44:40'),
(5, 1803510201729, 'Ayman', 'ayman@gmail.com', '2022-11-22', 'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.', '1668149239download (7).jfif', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'student', 0, '2022-11-11 00:47:19', '2022-11-11 00:47:19'),
(6, 1803510201730, 'log in', 'log@gmail.com', '2022-11-24', 'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.', '1668174198download (5).jfif', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'student', 0, '2022-11-11 07:43:18', '2022-11-11 07:43:18'),
(7, 1803510201731, 'josh dey', 'josh@gmail.com', '2022-11-29', 'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.', '1668174272download (8).jfif', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'student', 0, '2022-11-11 07:44:32', '2022-11-11 07:44:32'),
(8, 1803510201732, 'Green ra', 'green@gmail.com', '2022-11-17', 'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.', '1668227392314352743_1581797388946147_3479298378803366619_n.jpg', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'student', 0, '2022-11-11 22:29:52', '2022-11-11 22:29:52'),
(9, 1803510201733, 'jatin', 'jatin@gmail.com', '2022-11-25', 'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.', '1668228036314352743_1581797388946147_3479298378803366619_n.jpg', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'student', 0, '2022-11-11 22:40:37', '2022-11-11 22:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `session`, `created_at`, `updated_at`) VALUES
(7, 'fall-2005', '2022-11-11 06:54:38', '2022-11-11 06:54:38'),
(8, 'spring-2005', '2022-11-11 21:47:51', '2022-11-11 21:47:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollments_student_id_index` (`student_id`),
  ADD KEY `enrollments_course_id_index` (`course_id`),
  ADD KEY `enrollments_session_id_index` (`session_id`);

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
-- Indexes for table `offered__subjects`
--
ALTER TABLE `offered__subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offered__subjects_session_id_index` (`session_id`),
  ADD KEY `offered__subjects_course_id_index` (`course_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_models`
--
ALTER TABLE `user_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `offered__subjects`
--
ALTER TABLE `offered__subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_models`
--
ALTER TABLE `user_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `user_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `user_models` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offered__subjects`
--
ALTER TABLE `offered__subjects`
  ADD CONSTRAINT `offered__subjects_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offered__subjects_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `user_sessions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
