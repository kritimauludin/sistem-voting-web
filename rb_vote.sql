-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 14 Okt 2023 pada 10.07
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rb_vote`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Change Role Astrid Bauch', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-01 23:48:10', '2021-12-01 23:48:10'),
(2, 'default', 'Change Role Astrid Bauch', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-01 23:48:20', '2021-12-01 23:48:20'),
(3, 'default', 'Change Role kriti mauludin', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-01 23:54:40', '2021-12-01 23:54:40'),
(4, 'default', 'Succesfully to login', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-02 19:48:15', '2021-12-02 19:48:15'),
(5, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-02 19:49:23', '2021-12-02 19:49:23'),
(6, 'default', 'Edited a post with title Uji Coba', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-02 19:52:09', '2021-12-02 19:52:09'),
(7, 'default', 'Deleted a post with title Uji Coba', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-02 19:52:25', '2021-12-02 19:52:25'),
(8, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-02 19:53:32', '2021-12-02 19:53:32'),
(9, 'default', 'User logout', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-02 20:02:05', '2021-12-02 20:02:05'),
(10, 'default', 'Succesfully to login', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-02 20:02:32', '2021-12-02 20:02:32'),
(11, 'default', 'Deleted a post with title uji', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-02 20:03:08', '2021-12-02 20:03:08'),
(12, 'default', 'User logout', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-02 20:03:18', '2021-12-02 20:03:18'),
(13, 'default', 'Succesfully to login', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-08 20:39:04', '2021-12-08 20:39:04'),
(14, 'default', 'User logout', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-08 21:19:41', '2021-12-08 21:19:41'),
(15, 'default', 'Change Role Rafly Maulana', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-10 00:10:17', '2021-12-10 00:10:17'),
(16, 'default', 'Change Role Ilham Adlani', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-10 00:10:49', '2021-12-10 00:10:49'),
(17, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 18, '[]', '2021-12-10 08:35:39', '2021-12-10 08:35:39'),
(18, 'default', 'Deleted a post with title Membuat Hello World Dengan Java', NULL, NULL, 'App\\Models\\User', 18, '[]', '2021-12-10 08:36:35', '2021-12-10 08:36:35'),
(19, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 18, '[]', '2021-12-10 08:39:17', '2021-12-10 08:39:17'),
(20, 'default', 'Deleted a post with title Hello World', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-10 18:01:15', '2021-12-10 18:01:15'),
(21, 'default', 'Deleted a post with title Koeman out!', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-10 18:06:45', '2021-12-10 18:06:45'),
(22, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 1, '[]', '2021-12-10 18:08:28', '2021-12-10 18:08:28'),
(23, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 18, '[]', '2021-12-10 18:09:45', '2021-12-10 18:09:45'),
(24, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 18, '[]', '2021-12-12 20:21:29', '2021-12-12 20:21:29'),
(25, 'default', 'Deleted a post with title Uji Coba', NULL, NULL, 'App\\Models\\User', 18, '[]', '2021-12-12 20:26:24', '2021-12-12 20:26:24'),
(26, 'default', 'Deleted a post with title Membuat Java', NULL, NULL, 'App\\Models\\User', 18, '[]', '2021-12-12 20:26:27', '2021-12-12 20:26:27'),
(27, 'default', 'Edited Your Profile ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-23 20:51:36', '2021-12-23 20:51:36'),
(28, 'default', 'Change Role Muhamad rafli', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-24 03:06:42', '2021-12-24 03:06:42'),
(29, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-24 06:52:02', '2021-12-24 06:52:02'),
(30, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-24 06:59:12', '2021-12-24 06:59:12'),
(31, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-24 07:04:34', '2021-12-24 07:04:34'),
(32, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-24 07:20:12', '2021-12-24 07:20:12'),
(33, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-24 07:26:08', '2021-12-24 07:26:08'),
(34, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-24 07:40:22', '2021-12-24 07:40:22'),
(35, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-26 08:15:24', '2021-12-26 08:15:24'),
(36, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-26 08:17:15', '2021-12-26 08:17:15'),
(37, 'default', 'Deleted a user suggestion', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-12-26 20:49:36', '2021-12-26 20:49:36'),
(38, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-12-26 20:55:49', '2021-12-26 20:55:49'),
(39, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-12-26 21:04:50', '2021-12-26 21:04:50'),
(40, 'default', 'Deleted a post with title hellow dunia', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-12-26 21:05:14', '2021-12-26 21:05:14'),
(41, 'default', 'Edited a post with title membuat hello world di android studio #java', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-12-26 21:08:41', '2021-12-26 21:08:41'),
(42, 'default', 'Edited a post with title membuat hello world di android studio #java', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-12-26 21:22:23', '2021-12-26 21:22:23'),
(43, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-29 06:09:28', '2021-12-29 06:09:28'),
(44, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2021-12-30 13:42:17', '2021-12-30 13:42:17'),
(45, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-01 22:02:45', '2022-01-01 22:02:45'),
(46, 'default', 'Edited a post with title Pengertian Software dan Contoh Software', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-01 22:03:23', '2022-01-01 22:03:23'),
(47, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-01 22:11:47', '2022-01-01 22:11:47'),
(48, 'default', 'Edited a post with title Pengertian Software, Fungsi dan Contoh Software Itu Sendiri', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-01 22:12:05', '2022-01-01 22:12:05'),
(49, 'default', 'Edited a post with title Pengertian Software, Fungsi dan Contoh Software Itu Sendiri', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-01 22:12:51', '2022-01-01 22:12:51'),
(50, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-01 22:17:24', '2022-01-01 22:17:24'),
(51, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-01 22:23:31', '2022-01-01 22:23:31'),
(52, 'default', 'Edited a post with title Manajemen File , Fungsi dan Manfaatnya', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-01 22:25:07', '2022-01-01 22:25:07'),
(53, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-01 22:33:37', '2022-01-01 22:33:37'),
(54, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-07 06:19:54', '2022-01-07 06:19:54'),
(55, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-07 06:28:57', '2022-01-07 06:28:57'),
(56, 'default', 'Edited a post with title Tutorial Menambahkan Outline Stroke Pada Teks Di Adobe Photoshop', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-07 07:01:45', '2022-01-07 07:01:45'),
(57, 'default', 'Edited a post with title Tutorial Menambahkan Outline Stroke Pada Teks Di Adobe Photoshop', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-07 07:03:27', '2022-01-07 07:03:27'),
(58, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-08 08:24:51', '2022-01-08 08:24:51'),
(59, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-08 09:01:35', '2022-01-08 09:01:35'),
(60, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-08 09:03:22', '2022-01-08 09:03:22'),
(61, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-08 09:06:30', '2022-01-08 09:06:30'),
(62, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-08 09:11:14', '2022-01-08 09:11:14'),
(63, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-08 09:11:55', '2022-01-08 09:11:55'),
(64, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-10 06:52:42', '2022-01-10 06:52:42'),
(65, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-10 06:54:57', '2022-01-10 06:54:57'),
(66, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-10 07:00:09', '2022-01-10 07:00:09'),
(67, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-10 07:13:05', '2022-01-10 07:13:05'),
(68, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 20, '[]', '2022-01-10 20:58:25', '2022-01-10 20:58:25'),
(69, 'default', 'Edited a post with title Cara Install Laravel 8  di windows 10', NULL, NULL, 'App\\Models\\User', 20, '[]', '2022-01-10 21:10:59', '2022-01-10 21:10:59'),
(70, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-12 06:58:27', '2022-01-12 06:58:27'),
(71, 'default', 'Edited a post with title Algoritma & Flowchart Merebus Mie Instan', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-13 12:29:16', '2022-01-13 12:29:16'),
(72, 'default', 'Edited a post with title Barcelona Resmi Mengumumkan Ferran Torres Sebagai Rekrutan Terbarunya', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-13 12:29:31', '2022-01-13 12:29:31'),
(73, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-14 09:12:52', '2022-01-14 09:12:52'),
(74, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:17:17', '2022-01-14 20:17:17'),
(75, 'default', 'Edited a post with title Tutorial Instal Xampp dengan mudah menggunakan sistem operasi windows', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:21:59', '2022-01-14 20:21:59'),
(76, 'default', 'Edited a post with title Tutorial Instal Xampp dengan mudah menggunakan sistem operasi windows', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:43:44', '2022-01-14 20:43:44'),
(77, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:46:06', '2022-01-14 20:46:06'),
(78, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:46:31', '2022-01-14 20:46:31'),
(79, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:46:39', '2022-01-14 20:46:39'),
(80, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:47:28', '2022-01-14 20:47:28'),
(81, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:47:29', '2022-01-14 20:47:29'),
(82, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:47:40', '2022-01-14 20:47:40'),
(83, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-14 20:47:53', '2022-01-14 20:47:53'),
(84, 'default', 'Change Role Ilham Adlani', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-15 07:16:08', '2022-01-15 07:16:08'),
(85, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-16 00:04:26', '2022-01-16 00:04:26'),
(86, 'default', 'Deleted a post with title 1. instalasi CodeIgniter 3 (Studi Kasus Pustaka Booking)', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-16 00:05:02', '2022-01-16 00:05:02'),
(87, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-16 00:10:40', '2022-01-16 00:10:40'),
(88, 'default', 'Deleted a post with title 1. instalasi CodeIgniter 3 (Studi Kasus Pustaka Booking)', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-16 00:11:16', '2022-01-16 00:11:16'),
(89, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-01-16 18:15:52', '2022-01-16 18:15:52'),
(90, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-17 19:26:28', '2022-01-17 19:26:28'),
(91, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-18 07:21:46', '2022-01-18 07:21:46'),
(92, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-19 08:38:43', '2022-01-19 08:38:43'),
(93, 'default', 'Edited a post with title Pengertian Hardware, Fungsi dan Contoh Hardware Itu Sendiri', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-19 08:40:37', '2022-01-19 08:40:37'),
(94, 'default', 'Edited a post with title Manajemen Perangkat I/O : Fungsi, Teknik Dan Komponennya', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-19 08:45:20', '2022-01-19 08:45:20'),
(95, 'default', 'Edited a post with title Manajemen Perangkat Input/Output : Fungsi, Teknik Dan Komponennya', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-19 08:53:49', '2022-01-19 08:53:49'),
(96, 'default', 'Edited a post with title Manajemen Perangkat Input/Output : Fungsi, Teknik Dan Komponennya', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-19 14:57:57', '2022-01-19 14:57:57'),
(97, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-20 08:14:43', '2022-01-20 08:14:43'),
(98, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-21 08:32:06', '2022-01-21 08:32:06'),
(99, 'default', 'Rekrut usernameAbdul Talif', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-21 08:34:31', '2022-01-21 08:34:31'),
(100, 'default', 'Edited a post with title ERD, Kardinalitas dan Normaliasasi Studi Kasus Rental Mobil', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-21 08:45:07', '2022-01-21 08:45:07'),
(101, 'default', 'Edited a post with title ERD, Kardinalitas dan Normaliasasi Studi Kasus Rental Mobil', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-21 08:46:07', '2022-01-21 08:46:07'),
(102, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-22 16:08:32', '2022-01-22 16:08:32'),
(103, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-23 18:21:49', '2022-01-23 18:21:49'),
(104, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-23 18:44:40', '2022-01-23 18:44:40'),
(105, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-24 06:51:19', '2022-01-24 06:51:19'),
(106, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-24 07:11:10', '2022-01-24 07:11:10'),
(107, 'default', 'Edited a post with title Manjaro Linux : Sejarah, Kelebihan Dan Kekurangannya', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-24 07:11:29', '2022-01-24 07:11:29'),
(108, 'default', 'Edited a post with title Cara Mudah Menginstal Manjaro Linux Di Virtual Box', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-25 07:49:29', '2022-01-25 07:49:29'),
(109, 'default', 'Rekrut usernameNaufal Hariz', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-25 10:04:14', '2022-01-25 10:04:14'),
(110, 'default', 'Rekrut usernameNaufal Hariz', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-25 12:47:24', '2022-01-25 12:47:24'),
(111, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-26 20:39:25', '2022-01-26 20:39:25'),
(112, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-27 06:20:16', '2022-01-27 06:20:16'),
(113, 'default', 'Edited a post with title Proses : Hal-Hal Yang Berkaitan Serta Kebutuhan Utama Pengendali Proses', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-29 20:59:18', '2022-01-29 20:59:18'),
(114, 'default', 'Edited a post with title Proses : Hal-Hal Yang Berkaitan Serta Kebutuhan Utama Pengendali Proses', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-29 21:00:30', '2022-01-29 21:00:30'),
(115, 'default', 'Edited Your Profile ', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-01-30 08:58:48', '2022-01-30 08:58:48'),
(116, 'default', 'Edited Your Profile ', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-01-30 08:59:07', '2022-01-30 08:59:07'),
(117, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-01-30 14:04:41', '2022-01-30 14:04:41'),
(118, 'default', 'Edited a post with title Perbedaan antara Adobe Illustrator dan Adobe Photoshop', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-01-30 14:07:51', '2022-01-30 14:07:51'),
(119, 'default', 'Edited a post with title Perbedaan antara Adobe Illustrator dan Adobe Photoshop', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-01-30 14:14:22', '2022-01-30 14:14:22'),
(120, 'default', 'Edited a post with title Perbedaan antara Adobe Illustrator dan Adobe Photoshop', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-01-30 14:19:18', '2022-01-30 14:19:18'),
(121, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-01-30 17:19:14', '2022-01-30 17:19:14'),
(122, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-02-02 19:53:36', '2022-02-02 19:53:36'),
(123, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 20, '[]', '2022-02-05 00:06:15', '2022-02-05 00:06:15'),
(124, 'default', 'Edited a post with title Operasi Perbandingan (Java)', NULL, NULL, 'App\\Models\\User', 20, '[]', '2022-02-05 00:17:30', '2022-02-05 00:17:30'),
(125, 'default', 'Edited a post with title Operasi Perbandingan (Java)', NULL, NULL, 'App\\Models\\User', 20, '[]', '2022-02-05 00:20:10', '2022-02-05 00:20:10'),
(126, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-02-06 07:57:59', '2022-02-06 07:57:59'),
(127, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-02-07 09:44:05', '2022-02-07 09:44:05'),
(128, 'default', 'Edited a post with title Interkoneksi Antar Komponen', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-02-07 09:45:31', '2022-02-07 09:45:31'),
(129, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-02-07 11:36:47', '2022-02-07 11:36:47'),
(130, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-02-13 15:15:01', '2022-02-13 15:15:01'),
(131, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-02-14 16:50:07', '2022-02-14 16:50:07'),
(132, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-02-15 06:46:35', '2022-02-15 06:46:35'),
(133, 'default', 'Edited a post with title Mencari Nilai Acak Dengan Bahasa Pemograman C++', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-02-15 06:49:26', '2022-02-15 06:49:26'),
(134, 'default', 'Edited Your Profile ', NULL, NULL, 'App\\Models\\User', 20, '[]', '2022-02-15 23:35:20', '2022-02-15 23:35:20'),
(135, 'default', 'Edited a post with title Sabotase Diri', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-02-21 05:57:13', '2022-02-21 05:57:13'),
(136, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-02-21 07:47:45', '2022-02-21 07:47:45'),
(137, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-03 07:31:54', '2022-03-03 07:31:54'),
(138, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-03 08:06:14', '2022-03-03 08:06:14'),
(139, 'default', 'Edited a post with title Metode Numerik : Hampiran dan Galat', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-03 08:06:43', '2022-03-03 08:06:43'),
(140, 'default', 'Edited a post with title Metode Numerik : Galat', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-03 08:07:17', '2022-03-03 08:07:17'),
(141, 'default', 'Edited a post with title Metode Numerik : Galat atau Error', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-03 08:11:27', '2022-03-03 08:11:27'),
(142, 'default', 'Edited a post with title Cara Mudah Mengetahui Windows Kamu, Menggunakan Basis Sistem 32  atau 64 bit', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-03 08:11:40', '2022-03-03 08:11:40'),
(143, 'default', 'Edited a post with title Mencari Nilai Acak Dengan Bahasa Pemograman C++', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-03 08:11:53', '2022-03-03 08:11:53'),
(144, 'default', 'Edited Your Profile ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-04 07:19:32', '2022-03-04 07:19:32'),
(145, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-04 07:59:58', '2022-03-04 07:59:58'),
(146, 'default', 'Edited a post with title Grafika Komputer : Implementasi Algoritma DDA', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-03-04 11:27:57', '2022-03-04 11:27:57'),
(147, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-06-15 06:48:04', '2022-06-15 06:48:04'),
(148, 'default', 'Edited a post with title Website Keren Yang Bisa Membantumu Dalam Membuat Mockup / Wireframes, Flowchart Dan Sebagainya', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-06-25 04:45:19', '2022-06-25 04:45:19'),
(149, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-08-21 14:17:10', '2022-08-21 14:17:10'),
(150, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-08-21 14:17:50', '2022-08-21 14:17:50'),
(151, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-08-21 14:19:11', '2022-08-21 14:19:11'),
(152, 'default', 'Created new post', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-08-22 16:36:38', '2022-08-22 16:36:38'),
(153, 'default', 'Edited a post with title Mengulas Musik : The Jansen - Banal Semakin Binal', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-08-22 16:38:32', '2022-08-22 16:38:32'),
(154, 'default', 'Edited a post with title Mengulas Musik : The Jansen - Banal Semakin Binal', NULL, NULL, 'App\\Models\\User', 21, '[]', '2022-08-23 09:02:40', '2022-08-23 09:02:40'),
(155, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-09-19 19:16:29', '2022-09-19 19:16:29'),
(156, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-09-19 19:17:41', '2022-09-19 19:17:41'),
(157, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-09-19 19:20:09', '2022-09-19 19:20:09'),
(158, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2022-09-19 19:21:31', '2022-09-19 19:21:31'),
(159, 'default', 'Edited a post with title Sabotase Diri', NULL, NULL, 'App\\Models\\User', 22, '[]', '2022-09-30 21:34:02', '2022-09-30 21:34:02'),
(160, 'default', 'Change Password', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:26:10', '2023-07-19 22:26:10'),
(161, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:48:51', '2023-07-19 22:48:51'),
(162, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:49:53', '2023-07-19 22:49:53'),
(163, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:50:43', '2023-07-19 22:50:43'),
(164, 'default', 'Edited a book with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:54:30', '2023-07-19 22:54:30'),
(165, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:56:08', '2023-07-19 22:56:08'),
(166, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:57:02', '2023-07-19 22:57:02'),
(167, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:57:48', '2023-07-19 22:57:48'),
(168, 'default', 'Edited a book with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:58:06', '2023-07-19 22:58:06'),
(169, 'default', 'Edited a book with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 22:58:28', '2023-07-19 22:58:28'),
(170, 'default', 'Edited a book with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 23:00:08', '2023-07-19 23:00:08'),
(171, 'default', 'Deleted a book with title Algoritma & Pemograman 1', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 23:00:17', '2023-07-19 23:00:17'),
(172, 'default', 'Deleted a book with title Algoritma & Pemograman Lanjut', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 23:00:21', '2023-07-19 23:00:21'),
(173, 'default', 'Edited a book with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 23:00:40', '2023-07-19 23:00:40'),
(174, 'default', 'Edited a book with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 23:01:46', '2023-07-19 23:01:46'),
(175, 'default', 'Edited a book with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 23:03:53', '2023-07-19 23:03:53'),
(176, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 23:08:43', '2023-07-19 23:08:43'),
(177, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 23:09:10', '2023-07-19 23:09:10'),
(178, 'default', 'Edited a book with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-19 23:18:25', '2023-07-19 23:18:25'),
(179, 'default', 'Edited a book with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-20 00:18:28', '2023-07-20 00:18:28'),
(180, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 21:06:55', '2023-07-23 21:06:55'),
(181, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 21:17:48', '2023-07-23 21:17:48'),
(182, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 21:43:59', '2023-07-23 21:43:59'),
(183, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 21:46:58', '2023-07-23 21:46:58'),
(184, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:01:17', '2023-07-23 22:01:17'),
(185, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:19:59', '2023-07-23 22:19:59'),
(186, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:32:20', '2023-07-23 22:32:20'),
(187, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:35:30', '2023-07-23 22:35:30'),
(188, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:36:52', '2023-07-23 22:36:52'),
(189, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:37:27', '2023-07-23 22:37:27'),
(190, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:38:26', '2023-07-23 22:38:26'),
(191, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:40:35', '2023-07-23 22:40:35'),
(192, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:47:11', '2023-07-23 22:47:11'),
(193, 'default', 'Edit a chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:48:11', '2023-07-23 22:48:11'),
(194, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:53:43', '2023-07-23 22:53:43'),
(195, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 22:56:17', '2023-07-23 22:56:17'),
(196, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 23:12:58', '2023-07-23 23:12:58'),
(197, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-23 23:16:47', '2023-07-23 23:16:47'),
(198, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-27 04:55:26', '2023-07-27 04:55:26'),
(199, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-27 04:55:39', '2023-07-27 04:55:39'),
(200, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-27 05:02:41', '2023-07-27 05:02:41'),
(201, 'default', 'Deleted a book with title Calon Bupati', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-27 05:08:42', '2023-07-27 05:08:42'),
(202, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-27 05:09:35', '2023-07-27 05:09:35'),
(203, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-27 05:11:20', '2023-07-27 05:11:20'),
(204, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-27 05:25:08', '2023-07-27 05:25:08'),
(205, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-27 05:27:22', '2023-07-27 05:27:22'),
(206, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-07-28 01:00:32', '2023-07-28 01:00:32'),
(207, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-08-21 01:45:40', '2023-08-21 01:45:40'),
(208, 'default', 'Created new title book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-08-21 01:46:50', '2023-08-21 01:46:50'),
(209, 'default', 'Created new chapter book', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-08-21 01:47:27', '2023-08-21 01:47:27'),
(210, 'default', 'Deleted a book with title Polling Walikota', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-08-31 09:51:04', '2023-08-31 09:51:04'),
(211, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-12 23:37:44', '2023-10-12 23:37:44'),
(212, 'default', 'submit a new category', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-12 23:38:50', '2023-10-12 23:38:50'),
(213, 'default', 'Created new title Polling', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 00:34:18', '2023-10-13 00:34:18'),
(214, 'default', 'Created new kandidat polling', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 01:00:34', '2023-10-13 01:00:34'),
(215, 'default', 'Created new kandidat polling', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 01:02:19', '2023-10-13 01:02:19'),
(216, 'default', 'Created new kandidat polling', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 23:17:19', '2023-10-13 23:17:19'),
(217, 'default', 'Edited a Polling with title ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 23:25:52', '2023-10-13 23:25:52'),
(218, 'default', 'Created new title Polling', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 23:26:53', '2023-10-13 23:26:53'),
(219, 'default', 'Deleted a Polling with title test', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 23:27:06', '2023-10-13 23:27:06'),
(220, 'default', 'Edit a kandidat polling', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 23:32:34', '2023-10-13 23:32:34'),
(221, 'default', 'Deleted a kandidat with title Prabowo Subiantoo', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 23:33:29', '2023-10-13 23:33:29'),
(222, 'default', 'Edited Your Profile ', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 23:35:39', '2023-10-13 23:35:39'),
(223, 'default', 'Change Password', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 23:37:48', '2023-10-13 23:37:48'),
(224, 'default', 'Change Password', NULL, NULL, 'App\\Models\\User', 19, '[]', '2023-10-13 23:38:05', '2023-10-13 23:38:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `kandidats`
--

CREATE TABLE `kandidats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `polling_id` bigint(20) UNSIGNED NOT NULL,
  `title_kandidat` varchar(255) NOT NULL,
  `chapter` int(11) NOT NULL DEFAULT 1,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `reader` int(11) DEFAULT NULL,
  `img_kandidat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kandidats`
--

INSERT INTO `kandidats` (`id`, `polling_id`, `title_kandidat`, `chapter`, `slug`, `body`, `reader`, `img_kandidat`, `created_at`, `updated_at`) VALUES
(2, 1, 'Anies Baswedan', 1, 'anies-baswedan', '<p>uji coba</p>', 10, 'img/cover-kandidat/N1Q25ZyvynTz47Tt72UEIQYGzrgLMZCqTvZWd7GV.jpg', '2023-10-13 23:17:19', '2023-10-14 01:03:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_02_141609_create_posts_table', 1),
(5, '2021_08_04_123549_create_categories_table', 1),
(6, '2021_09_25_130917_create_roles_table', 1),
(7, '2021_09_26_140803_create_table_ads', 1),
(8, '2021_10_14_052908_create_activity_log_table', 2),
(9, '2021_10_16_064644_create_table_category_ads', 3),
(10, '2021_10_20_120811_create_book_chapters_table', 4),
(11, '2021_10_20_120829_create_books_table', 4),
(12, '2021_10_26_075734_create_user_data', 5),
(14, '2021_11_08_075815_create_table_user_suggestions', 6),
(15, '2014_10_12_200000_add_two_factor_columns_to_users_table', 7),
(16, '2023_08_01_035903_create_votes_table', 7),
(17, '2023_10_13_064442_create_pollings_table', 8),
(18, '2023_10_13_065314_create_kandidats_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pollings`
--

CREATE TABLE `pollings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_polling` varchar(255) NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt_polling` text NOT NULL,
  `reader` int(11) DEFAULT NULL,
  `img_cover_polling` varchar(255) NOT NULL,
  `status` int(100) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pollings`
--

INSERT INTO `pollings` (`id`, `title_polling`, `author_id`, `slug`, `excerpt_polling`, `reader`, `img_cover_polling`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Polling Pemilu 2024', 19, 'polling-pemilu-2024', 'test', NULL, 'img/cover-polling/UZj0g2K9bqO5YAGcd45LA3huxZhL3FZBlU3k8IPh.webp', 1, '2023-10-13 00:34:18', '2023-10-13 23:25:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Web Developer', '2021-09-27 06:37:16', '2021-12-26 08:27:59'),
(2, 'Penulis Arahin', '2021-09-27 06:37:16', '2021-10-26 07:46:23'),
(3, 'Public Relation', '2021-11-07 20:55:05', '2021-11-07 20:55:05'),
(4, 'UI/UX Designer', '2021-11-07 20:55:52', '2021-11-07 20:55:52'),
(5, 'Voters', '2021-09-27 06:37:16', '2023-07-23 21:23:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(19, 'Indah Dwi', 'indah', 'indahdwi18@gmail.com', '2021-12-23 20:33:00', '$2y$10$BHctpqrbm8LmNZGGW.Wnresx6/v0dZ4K12MmnxOBrjZtm4Wrbq2pa', NULL, NULL, 1, NULL, '2021-12-23 20:31:45', '2023-10-13 23:38:05'),
(29, 'Indah Voters', 'ddnvote', 'indahvoters@gmail.com', '2023-07-26 23:21:53', '$2y$10$h62HyDH/hWBaijgPtJ9WfeTiYffpC35DPjP.6HWZ89Vo5.XGMlfxu', NULL, NULL, 5, NULL, '2023-07-26 23:21:25', '2023-07-26 23:21:53'),
(30, 'Indah', 'indahddn', 'indah11@gmail.com', '2023-07-28 00:34:06', '$2y$10$jr/74NrEsuU..S9uwzDsteUhF25ZmREjQ7ohea3eSFg5xKJ.x7abS', NULL, NULL, 5, NULL, '2023-07-28 00:33:17', '2023-07-28 00:34:06'),
(33, 'ddn', 'ddn', 'ddn12@gmail.com', NULL, '$2y$10$xrj74eK4xPGJ7vrgOJHE8.RCtCxpy0vssiFm5vZ.MSt87IKeWi5C2', NULL, NULL, 5, NULL, '2023-08-02 21:12:21', '2023-08-02 21:12:21'),
(34, 'indah dwi', 'ddnindah', 'indahdwi11@gmail.com', '2023-08-04 00:44:37', '$2y$10$jmOyb7K0NtqBh2D1X99/9u7HSdJWvnuKVsMtZodFWvVMgt5dcaxum', NULL, NULL, 5, NULL, '2023-08-04 00:23:54', '2023-08-04 00:44:37'),
(35, 'indah', 'indahhhdw', 'indahdwi17@gmail.com', NULL, '$2y$10$JyqqCxO.9X197P07fMZho.dYklVfhXg2w.YKlhb00iSm6SEf/5X.e', NULL, NULL, 5, NULL, '2023-08-04 00:46:39', '2023-08-04 00:46:39'),
(37, 'indah dwi', 'indahd', 'indahdwii11@gmail.com', '2023-08-21 00:00:13', '$2y$10$RHZ.aEeNQzUzz1ON009sSuf3C5iDlnPbfSn.ZtXvY9dwJ0N0ZiHiS', NULL, NULL, 5, NULL, '2023-08-20 23:59:40', '2023-08-21 00:00:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_data`
--

CREATE TABLE `user_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `img_profile` varchar(255) DEFAULT 'img/user-profile/default.svg',
  `about_yourself` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_data`
--

INSERT INTO `user_data` (`id`, `user_id`, `address`, `phone_number`, `img_profile`, `about_yourself`, `hobby`, `website`, `github`, `twitter`, `instagram`, `facebook`, `created_at`, `updated_at`) VALUES
(18, 19, NULL, '083811641671', 'img/user-profile/2rfBNNR3iQuzVzadiiErqG0aS5oVjdypEum2WdAP.png', 'Berkerja Keraslah', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 20:33:00', '2023-10-13 23:35:39'),
(29, 34, NULL, NULL, 'img/user-profile/default.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-04 00:44:38', '2023-08-04 00:44:38'),
(30, 36, NULL, NULL, 'img/user-profile/default.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-20 07:37:23', '2023-08-20 07:37:23'),
(31, 37, NULL, NULL, 'img/user-profile/default.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-21 00:00:13', '2023-08-21 00:00:13'),
(32, 29, NULL, NULL, 'img/user-profile/default.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-21 01:48:26', '2023-08-21 01:48:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_suggestions`
--

CREATE TABLE `user_suggestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_suggestions`
--

INSERT INTO `user_suggestions` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Willie P.', 'adi@ndmails.com', 'Design Work', 'Just wanted to ask if you would be interested in getting external help with graphic design? We do all design work like banners, advertisements, photo edits, logos, flyers, etc. for a fixed monthly fee.\r\n\r\nWe don\'t charge for each task. What kind of work do you need on a regular basis? Let me know and I\'ll share my portfolio with you.', '2022-01-25 14:50:58', '2022-01-25 14:50:58'),
(3, 'Laurel', 'laurel.rose65@hotmail.com', 'Laurel Rose', 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashiondaily.online\r\n\r\nKind Regards, \r\n\r\nLaurel\r\nOcumps', '2022-03-21 00:14:08', '2022-03-21 00:14:08'),
(4, 'John', 'john.cleburne@outlook.com', 'PawSafer™ Ocumps', 'Hi \r\n \r\nPawSafer™ Can Safely Trim Your Dog\'S Nails In No Time From Home.\r\n\r\nGet it while it\'s still 50% OFF + FREE Shipping\r\n\r\nBuy here: https://pawsafer.shop\r\n \r\nKind Regards, \r\n \r\nJohn', '2022-03-22 04:37:49', '2022-03-22 04:37:49'),
(5, 'Rod', 'pittman.rod@msn.com', 'ocumps.com', 'The ultimate smashing machine! Grinding Coffee Beans, Nuts & Spices in seconds.\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nOrder here: https://aromaonline.store\r\n\r\nThanks and Best Regards,\r\n\r\nRod\r\nOcumps', '2022-03-24 03:02:38', '2022-03-24 03:02:38'),
(6, 'Reginald', 'info@ocumps.com', 'Lead For ocumps.com', 'Hey \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: https://caredogbest.com\r\n \r\nHave a great time, \r\n \r\nReginald\r\nOcumps', '2022-03-25 10:43:42', '2022-03-25 10:43:42'),
(7, 'Orlando', 'critchfield.orlando49@yahoo.com', 'Ocumps', 'Hey \r\n\r\nAre you Scrambling while opening Jars, Bottles, and Cans?\r\n\r\nThis Jar Opener Takes The Strain & Frustration Out Of Opening Jars & Bottles!  Never Struggle with opening a jar again!\r\n\r\nClick Now & GET 50% OFF → https://kitchenopener.biz\r\n\r\nSincerely, \r\nOrlando', '2022-03-27 09:47:19', '2022-03-27 09:47:19'),
(8, 'Jackson', 'jackson.ferro62@gmail.com', 'Ocumps', 'Morning\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: https://thepodiatrist.shop\r\n\r\nMany Thanks,\r\n\r\nJackson', '2022-04-02 19:59:52', '2022-04-02 19:59:52'),
(9, 'Clayton', 'clayton.theriault62@gmail.com', 'Clayton Theriault', 'New Multifunction Waterproof Backpack\r\n\r\nThe best ever SUPER Backpack: Drop-proof/Scratch-resistant/USB Charging/Large capacity storage\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://thebackpack.sale\r\n\r\nSincerely, \r\n\r\nClayton', '2022-04-06 07:58:58', '2022-04-06 07:58:58'),
(10, 'Homer', 'info@christyco.com', 'Ocumps', 'World\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\n\r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: https://hineck.online\r\n\r\nKind Regards,\r\n\r\nHomer\r\nOcumps', '2022-04-27 18:45:26', '2022-04-27 18:45:26'),
(11, 'Jorge', 'commandcentre@infotracktelematics.com', 'Lead For ocumps.com', 'Good day \r\n\r\nDon\'t you hate carrying a big bulky backpack when you are only going out for the day? This high quality shoulder bag solves that problem. \r\nCarry enough without bogging yourself down! Perfect for that fishing trip or day hike!\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashionbag.sale\r\n\r\nBest regards, \r\n\r\nJorge', '2022-05-02 12:16:41', '2022-05-02 12:16:41'),
(12, 'Alba', 'contact@windsorfeedscrews.com', 'Ocumps', 'Hi there \r\n \r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED \r\n\r\nBuy now: https://thawking.store\r\n \r\nSincerely, \r\n \r\nAlba', '2022-05-06 11:04:01', '2022-05-06 11:04:01'),
(13, 'Cleveland', 'ballaratwest@bunnings.com.au', 'Ocumps', 'Hi there, \r\n\r\nI hope you\'re doing well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nBange is perfect for students, professionals and travelers. The backpacks and sling bags feature a built-in USB charging port, making it easy to charge your devices on the go.  Also they are waterproof and anti-theft design, making it ideal for carrying your valuables.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: https://bangeonline.shop\r\n\r\nSincerely,\r\n\r\nCleveland', '2022-05-14 17:06:33', '2022-05-14 17:06:33'),
(14, 'Lakeisha', 'info@bilzersebc.be', 'Ocumps', 'Good Morning \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF: https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nHave a great time, \r\n\r\nLakeisha', '2022-05-18 16:51:41', '2022-05-18 16:51:41'),
(15, 'Gay', 'dusty@peterscreekbaptist.com', 'Ocumps', 'Hey \r\n\r\nI understand that you are looking for ways to improve your posture and contribute to a healthy lifestyle. I think our product, Medico Postura™ Body Posture Corrector, can be of great help.\r\n\r\nMedico Postura™ helps improve your posture INSTANTLY. It is an easy-to-use device that you can wear at home, work, or even when you are sleeping.\r\n\r\nIt is made of lightweight and breathable fabric, making it comfortable to wear all day long.\r\n\r\nGet it today while it\'s still 60% OFF: https://medicopostura.com   \r\n\r\nFREE Shipping - TODAY ONLY!\r\n\r\nThank You, \r\n\r\nGay', '2022-05-25 06:01:35', '2022-05-25 06:01:35'),
(16, 'Alannah', 'jbazz@trans-progressive.com', 'Ocumps', 'Hello there,\r\n\r\nIf you are one of the sufferers of the common problems nails have, then you are in luck! Our Toenail Clippers is here to help. It has a specially designed clip that can help those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, and thickened nails.\r\n\r\nWe are confident that our Toenail Clippers will provide you with the results you are looking for.\r\n\r\nGet yours today with 60% OFF: https://thepodiatrist.shop\r\n\r\nSincerely,\r\n\r\nAlannah', '2022-05-30 06:12:57', '2022-05-30 06:12:57'),
(17, 'Inez', 'chelsea@laurelcountyhomecoming.com', 'Inez Kittredge', 'EASE YOUR PAIN IN 10 MINUTES EFFORTLESSLY\r\n\r\nBe Free from Neck Pain\r\nTry NeckFlexer & Relieve Neck Pain Effortlessly In 10 Min!\r\nSave 50% OFF + FREE Worldwide Shipping\r\n\r\nShop Now: neckflexer.online\r\n\r\nInez \r\nOcumps', '2022-06-03 17:35:21', '2022-06-03 17:35:21'),
(18, 'Jana', 'info@wagonwheelresortlakenorfork.com', 'Ocumps', 'Hello there,\r\n\r\nI hope you\'re well. I am excited to tell you about our Full Body Resistance Band Kit that can help you get an amazing workout without having to go to the gym.\r\nThis is the best and cheapest athletic gear on the market. You can do a full body workout from the comfort of your home.\r\n\r\nI believe that this product can help you reach your fitness goals. \r\n\r\nSave 50% OFF + FREE Worldwide Shipping\r\nShop Now: https://ametathletics.sale\r\n\r\nBest, \r\n\r\nJana', '2022-06-09 09:43:10', '2022-06-09 09:43:10'),
(19, 'Ken', 'simon@aviationglobal.com', 'Ocumps', 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashiondaily.shop\r\n\r\nThanks and Best Regards, \r\n\r\nKen\r\nOcumps', '2022-06-16 03:33:40', '2022-06-16 03:33:40'),
(20, 'Nathan', 'info@essentialelectricok.com', 'Ocumps', 'Get The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes! It\'s perfect for beach, picnic, camping or hiking.\r\n\r\nAct Now And Receive A Special Discount For Our Magic Mat!\r\n\r\nGet Yours Here:  https://magicmat.biz\r\n\r\nTo your success, \r\n \r\nNathan\r\nOcumps', '2022-06-21 20:53:04', '2022-06-21 20:53:04'),
(21, 'Shavonne', 'mail@blaechfezza.de', 'Lead For ocumps.com', 'Good Morning \r\n\r\nThe New Powerful LED Flashlight is The Perfect Flashlight For Any Situation!\r\n\r\nThe 3,000 Lumens & Adjustable Zoom gives you the wide field of view and brightness other flashlights don’t have.\r\n\r\n50% OFF + Free Shipping!  Get it Now:https://linternaonline.shop\r\n\r\nKind Regards, \r\n\r\nShavonne', '2022-06-27 17:05:51', '2022-06-27 17:05:51'),
(22, 'Genesis', 'lindsay.kessler@compass.com', 'your next order', 'New Multifunction Waterproof Backpack\r\n\r\nThe best ever SUPER Backpack: Drop-proof/Scratch-resistant/USB Charging/Large capacity storage\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://thebackpack.sale\r\n\r\nBest Wishes, \r\n\r\nGenesis', '2022-07-05 12:35:40', '2022-07-05 12:35:40'),
(23, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'Instead, congrats', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with ocumps.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out ocumps.com.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=ocumps.com', '2022-07-13 15:51:04', '2022-07-13 15:51:04'),
(24, 'Alison', 'info@perfonova.com', 'Ocumps', 'Hello there \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF:   caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nCheers, \r\n\r\nAlison', '2022-07-14 12:48:59', '2022-07-14 12:48:59'),
(25, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Try this, get more leads', 'Hi, my name is Eric and I’m betting you’d like your website ocumps.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at ocumps.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://boostleadgeneration.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-07-22 09:38:26', '2022-07-22 09:38:26'),
(26, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website ocumps.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-07-27 17:40:18', '2022-07-27 17:40:18'),
(27, 'Florrie', 'david-may@nextra.com', 'Ocumps', 'Hello there \r\n\r\nDo you have time to brush your dog\'s teeth every day?\r\n\r\nLet your dog clean his own teeth with our dog dental care brushing stick. Made of eco-friendly natural rubber, this toothbrush is sturdy. The soft design is safe for your dogs\' gums and helps to clean their teeth and protect them from oral diseases and dental decay. \r\n\r\nAct Now And Receive A Special Discount!\r\n\r\nClick here: https://dogcare.center\r\n\r\nBest, \r\n \r\nFlorrie', '2022-07-28 12:40:07', '2022-07-28 12:40:07'),
(28, 'Alana', 'info@dijaworld.com', 'Ocumps', 'Hello there \r\n\r\nI understand that you are looking for ways to improve your posture and contribute to a healthy lifestyle. I think our product, Medico Postura™ Body Posture Corrector, can be of great help.\r\n\r\nMedico Postura™ helps improve your posture INSTANTLY. It is an easy-to-use device that you can wear at home, work, or even when you are sleeping.\r\n\r\nIt is made of lightweight and breathable fabric, making it comfortable to wear all day long.\r\n\r\nGet it today while it\'s still 60% OFF: https://medicopostura.com   \r\n\r\nFREE Shipping - TODAY ONLY!\r\n\r\nThe Best, \r\n\r\nAlana', '2022-07-31 07:41:59', '2022-07-31 07:41:59'),
(29, 'Gladis', 'send_trash@hohloware.com', 'Best Offer For ocumps.com', 'Morning,\r\n\r\nHave you ever wanted to change the color of your swim shorts without having to buy a new pair? With our new swim shorts, you can do just that!\r\n\r\nOur swim shorts are made with a special material that allows you to change the color of the shorts with just a few drops of water. So, if you\'re ever in the mood for a new color, you can just change it yourself! They are AMAZING!  It could be a great addition to your summer line-up.\r\n\r\nGet yours today with 50% OFF: https://myshorts.shop\r\n\r\nFREE Shipping - TODAY ONLY!\r\n\r\nThank You, \r\n\r\nGladis', '2022-08-05 06:36:54', '2022-08-05 06:36:54'),
(30, 'Jennifer', 'termin@kinderaerzte-guenzburg.de', 'Ocumps', 'Hi, \r\n\r\nI hope you\'re doing well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nThe bags are waterproof and anti-theft, and have a built-in USB cable that can recharge your phone while you\'re on the go.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: https://bangeonline.shop\r\n\r\nEnjoy,\r\n\r\nJennifer', '2022-08-09 18:03:13', '2022-08-09 18:03:13'),
(31, 'Thurman', 'info@turkishmaps.com', 'Ocumps', 'Hi \r\n\r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time.\r\n\r\nBuy now: https://thawking.store\r\n\r\nBest Wishes, \r\n\r\nThurman', '2022-08-24 03:25:14', '2022-08-24 03:25:14'),
(32, 'Thelma', 'info@rtpdatasol.com', 'Ocumps', 'Hey there,\r\n\r\nIf you are one of the sufferers of the common problems nails have, then you are in luck! Our Toenail Clippers is here to help. It has a specially designed clip that can help those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, and thickened nails.\r\n\r\nWe are confident that our Toenail Clippers will provide you with the results you are looking for.\r\n\r\nGet yours today with 60% OFF: https://thepodiatrist.shop\r\n\r\nTo your success,\r\n\r\nThelma', '2022-09-02 04:02:51', '2022-09-02 04:02:51'),
(33, 'Brigida', 'mm@systematicaims.com', 'Ocumps', 'Hi \r\n \r\nIs your dog\'s nails getting too long? If you\'re tired of going to the vet or groomer to get them trimmed, why not try PawSafer™? \r\nWith PawSafer™, you can trim your dog\'s nails from the comfort of your own home, and it only takes a few minutes!\r\n\r\nPawSafer™ is the safest and most convenient way to trim your dog\'s nails, and it\'s very affordable. \r\n\r\nGet it while it\'s still 50% OFF + FREE Shipping\r\n\r\nBuy here: https://pawsafer.sale\r\n \r\nThe Best, \r\n \r\nBrigida', '2022-09-05 01:18:09', '2022-09-05 01:18:09'),
(34, 'Bruno', 'moehrl@zilkens.com', 'Lead For ocumps.com', 'Hey there \r\n\r\nDon\'t you hate carrying a big bulky backpack when you are only going out for the day? Our hiking and trekking shoulder bag is perfect for day hikes and outdoor activities. It\'s comfortable, lightweight, and has plenty of room for all your essentials.\r\n\r\nWe\'re confident that you\'ll love our shoulder bag, and we\'re offering a special discount for our first 20 customers.\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashionbag.sale\r\n\r\nThank You, \r\n\r\nBruno', '2022-09-10 23:50:43', '2022-09-10 23:50:43'),
(35, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website ocumps.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-09-16 16:55:02', '2022-09-16 16:55:02'),
(36, 'Ona', 'elisabethsperling@mac.com', 'Ocumps', 'Hi,\r\n\r\nDo you ever worry about your belongings when you travel? I know I do.  Our Sling Bags are drop-proof, anti-theft, scratch-resistant, and come with a USB charging port. They\'re perfect for keeping your belongings safe when you\'re on the go.\r\n\r\nI think these would make an excellent addition to your travel gear. I\'m confident you\'ll love them as much as I do.\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashiondaily.shop\r\n\r\nKind Regards, \r\nOna', '2022-09-17 03:00:12', '2022-09-17 03:00:12'),
(37, 'Hilario', 'datenschutz@bfz.de', 'Concerning ocumps.com', 'New Multifunction Waterproof Backpack\r\n\r\nThe best ever SUPER Backpack: Drop-proof/Scratch-resistant/USB Charging/Large capacity storage\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://thebackpack.sale\r\n\r\nMany Thanks, \r\n\r\nHilario', '2022-09-28 12:19:44', '2022-09-28 12:19:44'),
(38, 'Frieda Dolling', 'hacker@statisticadeiredditi.ch', 'Your Site Has Been Hacked', 'Your Site Has Been Hacked\r\n\r\nPLEASE FORWARD THIS EMAIL TO SOMEONE IN YOUR COMPANY WHO IS ALLOWED TO MAKE IMPORTANT DECISIONS!\r\n\r\nWe have hacked your website http://www.ocumps.com and extracted your databases.\r\n\r\nHow did this happen?\r\n\r\nOur team has found a vulnerability within your site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract your entire database and move the information to an offshore server.\r\n\r\nWhat does this mean?\r\n\r\nWe will systematically go through a series of steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails found they will be e-mailed that their information has been sold or leaked and your http://www.ocumps.com was at fault thusly damaging your reputation and having angry customers/associates with whatever angry customers/associates do. Lastly any links that you have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index our targets.\r\n\r\nHow do I stop this?\r\n\r\nWe are willing to refrain from destroying your site’s reputation for a small fee. The current fee is $2500 in bitcoins (BTC).\r\n\r\nPlease send the bitcoin to the following Bitcoin address (Copy and paste as it is case sensitive): \r\n\r\nbc1qmghwkrrxlh62k4r530lgfxucum65087ya00wvz\r\n\r\n Once you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 7 days after receiving this e-mail or the database leak, e-mails dispatched, and de-index of your site WILL start!\r\n\r\nHow do I get Bitcoins?\r\n\r\nYou can easily buy bitcoins via several websites or even offline from a Bitcoin-ATM. \r\n\r\nWhat if I don’t pay?\r\n\r\nIf you decide not to pay, we will start the attack at the indicated date and uphold it until you do, there’s no counter measure to this, you will only end up wasting more money trying to find a solution. We will completely destroy your reputation amongst google and your customers.\r\n\r\nThis is not a hoax, do not reply to this email, don’t try to reason or negotiate, we will not read any replies. Once you have paid we will stop what we were doing and you will never hear from us again!\r\n\r\nPlease note that Bitcoin is anonymous and no one will find out that you have complied.', '2022-09-30 22:22:13', '2022-09-30 22:22:13'),
(39, 'Luca', 'd.nowak@systemygps.pl', 'Concerning ocumps.com', 'Hi there!\r\n\r\nI understand that you are looking for ways to improve your posture and contribute to a healthy lifestyle. I think our product, Medico Postura™ Body Posture Corrector, can be of great help.\r\n\r\nMedico Postura™ helps improve your posture INSTANTLY. It is an easy-to-use device that you can wear at home, work, or even when you are sleeping.\r\n\r\nIt is made of lightweight and breathable fabric, making it comfortable to wear all day long.\r\n\r\nGet it today while it\'s still 60% OFF: https://medicopostura.com   \r\n\r\nFREE Shipping - TODAY ONLY!\r\n\r\nMany Thanks, \r\n\r\nLuca', '2022-10-04 08:33:55', '2022-10-04 08:33:55'),
(40, 'Beulah', 'contact@obituarysingapore.com.sg', 'Ocumps', 'Hi there \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF: https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nBest regards, \r\n\r\nBeulah', '2022-10-11 16:17:26', '2022-10-11 16:17:26'),
(41, 'Wally Combes', 'no-reply@studio-maad.fr', 'Your Databases Has Been Hacked', 'PLEASE FoRWARD THiS EMAiL T0 SoME0NE iN YoUR CoMPANY WHo iS ALL0WED To MAKE iMPoRTANT DECiSi0NS!\r\n\r\nWe have hacked your website http://www.ocumps.com and extracted y0ur databases.\r\n\r\nHow did this happen?\r\n\r\nour team has f0und a vulnerability within y0ur site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract y0ur entire database and move the information t0 an 0ffsh0re server.\r\n\r\nWhat d0es this mean?\r\n\r\nWe will systematically g0 through a series of steps 0f t0tally damaging your reputation. First y0ur database will be leaked 0r s0ld to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails f0und they will be e-mailed that their information has been sold 0r leaked and y0ur site http://www.ocumps.com was at fault thusly damaging y0ur reputati0n and having angry cust0mers/ass0ciates with whatever angry cust0mers/ass0ciates do. Lastly any links that y0u have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index 0ur targets.\r\n\r\nHow d0 i stop this?\r\n\r\nWe are willing t0 refrain fr0m destroying y0ur site’s reputati0n for a small fee. The current fee is $3000 in bitc0ins (BTC).\r\n\r\nPlease send the bitc0in t0 the following Bitc0in address (Make sure t0 c0py and paste): \r\n\r\n33tqoHKVZV9ArhiQ5JABwEYMBknRtsKKv6\r\n\r\n once you have paid we will aut0matically get inf0rmed that it was y0ur payment. Please n0te that y0u have t0 make payment within 5 days after receiving this e-mail 0r the database leak, e-mails dispatched, and de-index 0f your site WiLL start!\r\n\r\nH0w do i get Bitc0ins?\r\n\r\nY0u can easily buy bitc0ins via several websites or even 0ffline fr0m a Bitc0in-ATM. \r\n\r\nWhat if i d0n’t pay?\r\n\r\nif y0u decide n0t to pay, we will start the attack at the indicated date and uphold it until y0u d0, there’s n0 c0unter measure t0 this, y0u will only end up wasting m0re money trying t0 find a solution. We will c0mpletely destr0y y0ur reputation amongst g00gle and your cust0mers.\r\n\r\nThis is n0t a h0ax, do n0t reply to this email, don’t try to reas0n or negotiate, we will not read any replies. once y0u have paid we will stop what we were doing and you will never hear fr0m us again!\r\n\r\nPlease note that Bitcoin is anonym0us and no one will find 0ut that you have complied.', '2022-10-12 10:37:33', '2022-10-12 10:37:33'),
(42, 'Clarence', 'tomas.bydzovsky@antakerix.cz', 'Ocumps', 'World\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: https://hineck.shop\r\n\r\nMany Thanks,\r\n\r\nClarence\r\nOcumps', '2022-10-26 13:21:02', '2022-10-26 13:21:02'),
(43, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Your site – more leads?', 'Hey, this is Eric and I ran across ocumps.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-10-26 21:21:54', '2022-10-26 21:21:54'),
(44, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my name’s Eric and I just ran across your website at ocumps.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-10-30 13:57:32', '2022-10-30 13:57:32'),
(45, 'Yolanda', 'alternanza.scuola@emergency.it', 'Lead For ocumps.com', 'Good Morning \r\n \r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED \r\n\r\nBuy now: https://thawking.store\r\n \r\nThe Best, \r\n \r\nYolanda', '2022-11-04 02:06:54', '2022-11-04 02:06:54'),
(46, 'Serena', 'info@hih-ostalb.de', 'Ocumps', 'Hey there, \r\n\r\nI hope you\'re doing well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nBange is perfect for students, professionals and travelers. The backpacks and sling bags feature a built-in USB charging port, making it easy to charge your devices on the go.  Also they are waterproof and anti-theft design, making it ideal for carrying your valuables.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: https://bangeshop.com\r\n\r\nAll the best,\r\n\r\nSerena', '2022-11-12 11:12:39', '2022-11-12 11:12:39'),
(47, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Your site – more leads?', 'Hey, this is Eric and I ran across ocumps.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-11-19 04:29:21', '2022-11-19 04:29:21'),
(48, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Strike when the iron’s hot', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found ocumps.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://boostleadgeneration.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-11-19 18:30:16', '2022-11-19 18:30:16'),
(49, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Why not TALK with your leads?', 'My name’s Eric and I just found your site ocumps.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://boostleadgeneration.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-11-20 18:19:41', '2022-11-20 18:19:41'),
(50, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website ocumps.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-11-21 11:49:39', '2022-11-21 11:49:39'),
(51, 'Madison', 'info@cibiyafarm.com', 'Ocumps', 'New Multifunction Waterproof Backpack\r\n\r\nThe best ever SUPER Backpack: Drop-proof/Scratch-resistant/USB Charging/Large capacity storage\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://thebackpack.co\r\n\r\nCheers, \r\n\r\nMadison', '2022-11-21 17:15:37', '2022-11-21 17:15:37'),
(52, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my name’s Eric and I just ran across your website at ocumps.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-11-21 20:02:07', '2022-11-21 20:02:07');
INSERT INTO `user_suggestions` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(53, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'There they go…', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at ocumps.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-11-24 00:44:41', '2022-11-24 00:44:41'),
(54, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Try this, get more leads', 'Hi, my name is Eric and I’m betting you’d like your website ocumps.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at ocumps.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://boostleadgeneration.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-11-25 07:28:44', '2022-11-25 07:28:44'),
(55, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my name’s Eric and I just ran across your website at ocumps.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-11-30 05:38:13', '2022-11-30 05:38:13'),
(56, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Why not TALK with your leads?', 'My name’s Eric and I just found your site ocumps.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://boostleadgeneration.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-12-01 11:48:17', '2022-12-01 11:48:17'),
(57, 'Sherita', 'support@horonwatches.com', 'Ocumps', 'World\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: https://hineck.shop\r\n\r\nTo your success,\r\n\r\nSherita\r\nOcumps', '2022-12-01 20:47:29', '2022-12-01 20:47:29'),
(58, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Try this, get more leads', 'Hi, my name is Eric and I’m betting you’d like your website ocumps.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at ocumps.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://boostleadgeneration.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-12-07 17:45:01', '2022-12-07 17:45:01'),
(59, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my name’s Eric and I just ran across your website at ocumps.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-12-07 22:54:51', '2022-12-07 22:54:51'),
(60, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'instead, congrats', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with ocumps.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out ocumps.com.\r\n\r\nCLICK HERE http://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-12-08 08:38:01', '2022-12-08 08:38:01'),
(61, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Your site – more leads?', 'Hey, this is Eric and I ran across ocumps.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-12-08 13:07:06', '2022-12-08 13:07:06'),
(62, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website ocumps.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-12-08 14:52:33', '2022-12-08 14:52:33'),
(63, 'Winifred', 'info@ampleyheartstonecapital.com', 'Winifred Cecilia', 'Hey \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF:  https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nThank You, \r\n\r\nWinifred', '2022-12-10 04:06:52', '2022-12-10 04:06:52'),
(64, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Strike when the iron’s hot', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found ocumps.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://boostleadgeneration.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-12-10 15:43:39', '2022-12-10 15:43:39'),
(65, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website ocumps.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=ocumps.com', '2022-12-11 03:51:51', '2022-12-11 03:51:51'),
(66, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'There they go…', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at ocumps.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-12-12 05:36:24', '2022-12-12 05:36:24'),
(67, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Cool website!', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - ocumps.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across ocumps.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=ocumps.com', '2022-12-18 00:44:12', '2022-12-18 00:44:12'),
(68, 'Jerrold', 'info@ocumps.com', 'Jerrold Glenelg', 'Hi,\r\n\r\nDo you ever worry about your belongings when you travel? I know I do.  Our Sling Bags are drop-proof, anti-theft, scratch-resistant, and come with a USB charging port. They\'re perfect for keeping your belongings safe when you\'re on the go.\r\n\r\nI think these would make an excellent addition to your travel gear. I\'m confident you\'ll love them as much as I do.\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashiondaily.shop\r\n\r\nSincerely, \r\n\r\nJerrold', '2022-12-18 21:10:37', '2022-12-18 21:10:37'),
(69, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Try this, get more leads', 'Hi, my name is Eric and I’m betting you’d like your website ocumps.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at ocumps.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://jumboleadmagnet.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=ocumps.com', '2022-12-19 05:54:44', '2022-12-19 05:54:44'),
(70, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Instead, congrats', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with ocumps.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out ocumps.com.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=ocumps.com', '2022-12-19 12:16:39', '2022-12-19 12:16:39'),
(71, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'There they go…', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at ocumps.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=ocumps.com', '2022-12-19 20:35:07', '2022-12-19 20:35:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `polling_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `post_id`, `polling_id`, `created_at`, `updated_at`) VALUES
(2, 29, 2, 1, '2023-10-14 01:03:14', '2023-10-14 01:03:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kandidats`
--
ALTER TABLE `kandidats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kandidats_slug_unique` (`slug`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pollings`
--
ALTER TABLE `pollings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pollings_slug_unique` (`slug`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_suggestions`
--
ALTER TABLE `user_suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kandidats`
--
ALTER TABLE `kandidats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pollings`
--
ALTER TABLE `pollings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `user_suggestions`
--
ALTER TABLE `user_suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
