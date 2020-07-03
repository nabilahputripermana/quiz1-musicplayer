-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 01:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbquiznabila`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_06_26_044022_create_tb_artist_table', 1),
(5, '2020_06_26_051142_create_tb_album_table', 1),
(6, '2020_06_26_055517_create_tb_track_table', 1),
(7, '2020_06_26_064032_create_tb_played_table', 1);

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
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_artist_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`id`, `album_name`, `album_artist_id`, `created_at`, `updated_at`) VALUES
(8, 'Kita', 1, '2020-07-03 06:32:11', '2020-07-03 06:32:11'),
(13, 'Kini', 2, '2020-07-03 06:32:11', '2020-07-03 00:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `tb_artist`
--

CREATE TABLE `tb_artist` (
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `artist_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_artist`
--

INSERT INTO `tb_artist` (`artist_id`, `artist_name`, `created_at`, `updated_at`) VALUES
(1, 'ROSSA', '2020-07-02 11:45:24', '2020-07-02 23:26:22'),
(2, 'ISYANA', '2020-07-02 11:45:24', '2020-07-02 11:45:24'),
(4, 'Setia Band', '2020-07-02 11:45:24', '2020-07-02 11:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_played`
--

CREATE TABLE `tb_played` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `played_artist_id` bigint(20) UNSIGNED NOT NULL,
  `played_album_id` bigint(20) UNSIGNED NOT NULL,
  `played_track_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_played`
--

INSERT INTO `tb_played` (`id`, `played_artist_id`, `played_album_id`, `played_track_id`, `created_at`, `updated_at`) VALUES
(123, 1, 8, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 2, 13, 4, '2020-07-03 07:23:37', '2020-07-03 07:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_track`
--

CREATE TABLE `tb_track` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `track_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `track_artist_id` bigint(20) UNSIGNED NOT NULL,
  `track_album_id` bigint(20) UNSIGNED NOT NULL,
  `track_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_track`
--

INSERT INTO `tb_track` (`id`, `track_name`, `track_artist_id`, `track_album_id`, `track_time`, `created_at`, `updated_at`) VALUES
(2, 'Indah', 1, 8, '03:00', '2020-07-03 06:33:08', '2020-07-03 06:33:08'),
(4, 'Kasih', 2, 13, '03:00', '2020-07-03 06:33:08', '2020-07-03 06:33:08');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nabila', 'nabila@gmail.com', NULL, '$2y$10$HZ4689qAUWWuG/DNFXEY8OFHECmoJn1X4MtcGf1tZzt3ziP9fICF6', NULL, '2020-07-02 11:44:49', '2020-07-02 11:44:49'),
(2, 'nabila', 'nab@gmail.com', NULL, '$2y$10$cfezsRcf00KbHc3mZOjZnuTBpS879ZDsY/7VmDHjsN4Uu9/4QjSfG', NULL, '2020-07-02 23:23:37', '2020-07-02 23:23:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_album_album_artist_id_foreign` (`album_artist_id`);

--
-- Indexes for table `tb_artist`
--
ALTER TABLE `tb_artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `tb_played`
--
ALTER TABLE `tb_played`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_played_played_artist_id_foreign` (`played_artist_id`),
  ADD KEY `tb_played_played_album_id_foreign` (`played_album_id`),
  ADD KEY `tb_played_played_track_id_foreign` (`played_track_id`);

--
-- Indexes for table `tb_track`
--
ALTER TABLE `tb_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_track_track_artist_id_foreign` (`track_artist_id`),
  ADD KEY `tb_track_track_album_id_foreign` (`track_album_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tb_artist`
--
ALTER TABLE `tb_artist`
  MODIFY `artist_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_played`
--
ALTER TABLE `tb_played`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `tb_track`
--
ALTER TABLE `tb_track`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD CONSTRAINT `tb_album_album_artist_id_foreign` FOREIGN KEY (`album_artist_id`) REFERENCES `tb_artist` (`artist_id`);

--
-- Constraints for table `tb_played`
--
ALTER TABLE `tb_played`
  ADD CONSTRAINT `tb_played_played_album_id_foreign` FOREIGN KEY (`played_album_id`) REFERENCES `tb_album` (`id`),
  ADD CONSTRAINT `tb_played_played_artist_id_foreign` FOREIGN KEY (`played_artist_id`) REFERENCES `tb_artist` (`artist_id`),
  ADD CONSTRAINT `tb_played_played_track_id_foreign` FOREIGN KEY (`played_track_id`) REFERENCES `tb_track` (`id`);

--
-- Constraints for table `tb_track`
--
ALTER TABLE `tb_track`
  ADD CONSTRAINT `tb_track_track_album_id_foreign` FOREIGN KEY (`track_album_id`) REFERENCES `tb_album` (`id`),
  ADD CONSTRAINT `tb_track_track_artist_id_foreign` FOREIGN KEY (`track_artist_id`) REFERENCES `tb_artist` (`artist_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
