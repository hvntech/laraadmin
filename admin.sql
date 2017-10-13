-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2017 at 12:33 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 2, 0, 'Home Category', 'fa-book', 'category', '2017-09-21 23:17:40', '2017-09-21 23:17:40'),
(9, 0, 8, 'Scheduling', 'fa-clock-o', 'scheduling', '2017-09-29 03:07:09', '2017-09-29 03:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(518, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:03:53', '2017-10-02 00:03:53'),
(519, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-10-02 00:07:01', '2017-10-02 00:07:01'),
(520, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:07:04', '2017-10-02 00:07:04'),
(521, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:08:23', '2017-10-02 00:08:23'),
(522, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:08:33', '2017-10-02 00:08:33'),
(523, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:09:02', '2017-10-02 00:09:02'),
(524, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:09:11', '2017-10-02 00:09:11'),
(525, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:09:51', '2017-10-02 00:09:51'),
(526, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"name\":\"order\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2017-10-02 00:09:54', '2017-10-02 00:09:54'),
(527, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:09:56', '2017-10-02 00:09:56'),
(528, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"name\":\"order\",\"value\":\"2\",\"pk\":\"1\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2017-10-02 00:10:00', '2017-10-02 00:10:00'),
(529, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:10:01', '2017-10-02 00:10:01'),
(530, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:12:18', '2017-10-02 00:12:18'),
(531, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_method\":\"PUT\"}', '2017-10-02 00:12:20', '2017-10-02 00:12:20'),
(532, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_method\":\"PUT\"}', '2017-10-02 00:12:21', '2017-10-02 00:12:21'),
(533, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_method\":\"PUT\"}', '2017-10-02 00:12:23', '2017-10-02 00:12:23'),
(534, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:12:25', '2017-10-02 00:12:25'),
(535, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:12:28', '2017-10-02 00:12:28'),
(536, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:13:59', '2017-10-02 00:13:59'),
(537, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:24:29', '2017-10-02 00:24:29'),
(538, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:25:00', '2017-10-02 00:25:00'),
(539, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:25:19', '2017-10-02 00:25:19'),
(540, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:25:39', '2017-10-02 00:25:39'),
(541, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:25:46', '2017-10-02 00:25:46'),
(542, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:26:02', '2017-10-02 00:26:02'),
(543, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:28:07', '2017-10-02 00:28:07'),
(544, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:28:22', '2017-10-02 00:28:22'),
(545, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:28:37', '2017-10-02 00:28:37'),
(546, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:28:57', '2017-10-02 00:28:57'),
(547, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:29:12', '2017-10-02 00:29:12'),
(548, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:29:25', '2017-10-02 00:29:25'),
(549, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:29:33', '2017-10-02 00:29:33'),
(550, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:29:43', '2017-10-02 00:29:43'),
(551, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:30:08', '2017-10-02 00:30:08'),
(552, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:31:47', '2017-10-02 00:31:47'),
(553, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:32:21', '2017-10-02 00:32:21'),
(554, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:32:24', '2017-10-02 00:32:24'),
(555, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Post posst hay hay Post posst hay hay Post posst hay hay\",\"order\":\"2\",\"created_at\":\"2017-09-22 05:19:53\",\"updated_at\":\"2017-10-02 07:10:00\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.dev:8086\\/admin\\/category\"}', '2017-10-02 00:32:37', '2017-10-02 00:32:37'),
(556, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2017-10-02 00:32:37', '2017-10-02 00:32:37'),
(557, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Post posst hay hay Post posst hay hay\",\"order\":\"2\",\"created_at\":\"2017-09-22 05:19:53\",\"updated_at\":\"2017-10-02 07:10:00\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_method\":\"PUT\"}', '2017-10-02 00:32:51', '2017-10-02 00:32:51'),
(558, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:32:51', '2017-10-02 00:32:51'),
(559, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:33:21', '2017-10-02 00:33:21'),
(560, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:33:38', '2017-10-02 00:33:38'),
(561, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:39:34', '2017-10-02 00:39:34'),
(562, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:40:03', '2017-10-02 00:40:03'),
(563, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:40:26', '2017-10-02 00:40:26'),
(564, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:40:28', '2017-10-02 00:40:28'),
(565, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:41:00', '2017-10-02 00:41:00'),
(566, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:41:47', '2017-10-02 00:41:47'),
(567, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:42:07', '2017-10-02 00:42:07'),
(568, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:42:10', '2017-10-02 00:42:10'),
(569, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:42:12', '2017-10-02 00:42:12'),
(570, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:42:18', '2017-10-02 00:42:18'),
(571, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:42:48', '2017-10-02 00:42:48'),
(572, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:42:49', '2017-10-02 00:42:49'),
(573, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:43:11', '2017-10-02 00:43:11'),
(574, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:44:14', '2017-10-02 00:44:14'),
(575, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"order\":\"on\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_method\":\"PUT\"}', '2017-10-02 00:44:16', '2017-10-02 00:44:16'),
(576, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"order\":\"off\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_method\":\"PUT\"}', '2017-10-02 00:44:18', '2017-10-02 00:44:18'),
(577, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:45:35', '2017-10-02 00:45:35'),
(578, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:45:37', '2017-10-02 00:45:37'),
(579, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2017-10-02 00:46:12', '2017-10-02 00:46:12'),
(580, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Post posst hay hay Post posst hay hay\",\"order\":\"1\",\"created_at\":\"2017-09-22 05:19:53\",\"updated_at\":\"2017-10-02 07:44:18\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.dev:8086\\/admin\\/category\"}', '2017-10-02 00:46:18', '2017-10-02 00:46:18'),
(581, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:46:18', '2017-10-02 00:46:18'),
(582, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:46:25', '2017-10-02 00:46:25'),
(583, 1, 'admin/category/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Post posst hay hay Post posst hay hay\",\"order\":\"2\",\"created_at\":\"2017-09-22 05:19:53\",\"updated_at\":\"2017-10-02 07:46:18\",\"_token\":\"s0PxThpUvVVzSo9ZyDoiYbeerCeXWH6hUReYClll\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/admin.dev:8086\\/admin\\/category\"}', '2017-10-02 00:46:27', '2017-10-02 00:46:27'),
(584, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:46:27', '2017-10-02 00:46:27'),
(585, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:49:29', '2017-10-02 00:49:29'),
(586, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:49:29', '2017-10-02 00:49:29'),
(587, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:51:21', '2017-10-02 00:51:21'),
(588, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:51:23', '2017-10-02 00:51:23'),
(589, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2017-10-02 00:51:23', '2017-10-02 00:51:23'),
(590, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:51:50', '2017-10-02 00:51:50'),
(591, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2017-10-02 00:52:07', '2017-10-02 00:52:07'),
(592, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2017-10-02 00:52:16', '2017-10-02 00:52:16'),
(593, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-10-02 00:56:51', '2017-10-02 00:56:51'),
(594, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-10-03 03:32:20', '2017-10-03 03:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', '', '/auth/setting', NULL, '2017-09-21 21:22:25'),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Scheduling', 'ext.scheduling', NULL, '/scheduling*', '2017-09-29 03:07:09', '2017-09-29 03:07:09'),
(7, 'category', 'category.create', 'GET,POST', '/category', '2017-10-01 20:43:28', '2017-10-01 20:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2017-09-21 02:31:07', '2017-09-21 02:31:07'),
(2, 'Users', 'users', '2017-10-01 20:44:16', '2017-10-01 20:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$36cA3Kki1hzHC9yDYECyVetc7t6HZseaBZh1CHQxvyC9MS89pw/Rq', 'Administrator1', 'images/huuthangdlap9476_EVON.jpg', NULL, '2017-09-21 02:31:07', '2017-09-22 00:17:22'),
(2, 'demo', '$2y$10$YfIr5jJrzifM9e/MOhcFW.Lg.jySuzoV0ybXRumPA4V7ipyN90ls6', 'demo1', NULL, 'o5jiM0wC08PTiM8lFaPyaX0R7Yg15LvD1MOcYrEDZ43FsopTVeMIpHd7zWQT', '2017-10-01 20:44:55', '2017-10-01 20:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 4, NULL, NULL),
(2, 2, NULL, NULL),
(2, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2017-09-21 02:25:17', '2017-09-21 02:25:17'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2017-09-21 02:25:17', '2017-09-21 02:25:17'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2017-09-21 02:25:17', '2017-09-21 02:25:17'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2017-09-21 02:25:17', '2017-09-21 02:25:17'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2017-09-21 02:25:17', '2017-09-21 02:25:17'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2017-09-21 02:25:17', '2017-09-21 02:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `demo_categories`
--

CREATE TABLE `demo_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `demo_categories`
--

INSERT INTO `demo_categories` (`id`, `parent_id`, `order`, `title`, `created_at`, `updated_at`) VALUES
(1, 0, 2, 'Post posst hay hay Post posst hay hay', '2017-09-21 22:19:53', '2017-10-02 00:46:27'),
(2, 0, 223, 'sddfsdf', '2017-09-21 22:20:14', '2017-09-21 23:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-09-21 02:25:18', '2017-09-21 02:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 10, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 11, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.database.index', NULL),
(11, 1, 'Compass', '/admin/compass', '_self', 'voyager-compass', NULL, 8, 12, '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL, NULL),
(12, 1, 'Hooks', '/admin/hooks', '_self', 'voyager-hook', NULL, 8, 13, '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL, NULL),
(13, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2017-09-21 02:25:18', '2017-09-21 02:25:18', 'voyager.settings.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(22, '2017_08_05_000000_add_group_to_settings_table', 1),
(23, '2017_11_04_000000_alter_post_nullable_fields_table', 1),
(24, '2016_01_04_173148_create_admin_tables', 2),
(25, '2017_10_03_020817_prepare_users_table_for_social_authentication', 3),
(26, '2017_10_03_020958_create_linked_social_accounts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(2, 'browse_database', NULL, '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(3, 'browse_media', NULL, '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(4, 'browse_compass', NULL, '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(5, 'browse_menus', 'menus', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(6, 'read_menus', 'menus', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(7, 'edit_menus', 'menus', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(8, 'add_menus', 'menus', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(9, 'delete_menus', 'menus', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(10, 'browse_pages', 'pages', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(11, 'read_pages', 'pages', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(12, 'edit_pages', 'pages', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(13, 'add_pages', 'pages', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(14, 'delete_pages', 'pages', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(15, 'browse_roles', 'roles', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(16, 'read_roles', 'roles', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(17, 'edit_roles', 'roles', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(18, 'add_roles', 'roles', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(19, 'delete_roles', 'roles', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(20, 'browse_users', 'users', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(21, 'read_users', 'users', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(22, 'edit_users', 'users', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(23, 'add_users', 'users', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(24, 'delete_users', 'users', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(25, 'browse_posts', 'posts', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(26, 'read_posts', 'posts', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(27, 'edit_posts', 'posts', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(28, 'add_posts', 'posts', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(29, 'delete_posts', 'posts', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(30, 'browse_categories', 'categories', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(31, 'read_categories', 'categories', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(32, 'edit_categories', 'categories', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(33, 'add_categories', 'categories', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(34, 'delete_categories', 'categories', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(35, 'browse_settings', 'settings', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(36, 'read_settings', 'settings', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(37, 'edit_settings', 'settings', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(38, 'add_settings', 'settings', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL),
(39, 'delete_settings', 'settings', '2017-09-21 02:25:18', '2017-09-21 02:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-09-21 02:25:18', '2017-09-21 02:25:18'),
(2, 'user', 'Normal User', '2017-09-21 02:25:18', '2017-09-21 02:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `provider_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `user_id`, `provider_name`, `provider_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'google', '108940214867383943112', '2017-10-03 03:13:54', '2017-10-03 03:13:54'),
(2, 3, 'google', '103456838850809440018', '2017-10-03 03:27:42', '2017-10-03 03:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'amdin', 'admin@gmail.com', 'users/September2017/bt_keep.png', '$2y$10$QfcEA8uI298Wfn8O8MZdtO8sCENm0e3nYbUl.VrWgCHsxB6hnlF4S', 'iv4e6mr9cOsdVoeOaBkrGYNf0dZmKuQZeFz7APanTwvepFwoOFqhBef1fiAZ', '2017-09-21 02:26:50', '2017-09-21 02:28:39'),
(2, 2, 'HUY vu van', 'messihuy@gmail.com', 'users/default.png', NULL, '236d00Q2AIapZgzAmBB4vFdvQ5U0zPP46i7hNKWUSb1atSII3DBuyGLrBpFI', '2017-10-03 03:13:54', '2017-10-03 03:13:54'),
(3, 2, 'LTT Vu Van Huy', 'huyvv@lifetimetech.vn', 'users/default.png', NULL, 'Q09V1RCFsVMmzU8DEH0XJGU5nI9gFzFkcePm17j4hanpD1IYjIyyVQJdAsZU', '2017-10-03 03:27:42', '2017-10-03 03:27:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `demo_categories`
--
ALTER TABLE `demo_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `linked_social_accounts_provider_id_unique` (`provider_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;
--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `demo_categories`
--
ALTER TABLE `demo_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
