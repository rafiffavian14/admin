-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 07:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `layanan_administrasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BKN', NULL, NULL),
(2, 'SI ASN', NULL, NULL),
(3, 'KEMENTRIAN', NULL, NULL),
(4, 'GUNADARMA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pertek`
--

CREATE TABLE `jenis_pertek` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_pertek`
--

INSERT INTO `jenis_pertek` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pindah Instansi', NULL, NULL),
(2, 'Peremajaan', NULL, NULL),
(3, 'Pensiun', NULL, NULL),
(4, 'Pengadaan', NULL, NULL),
(5, 'Kenaikan Pangkat', NULL, NULL),
(6, 'JF Utama', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_sk`
--

CREATE TABLE `jenis_sk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_sk`
--

INSERT INTO `jenis_sk` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'satu', NULL, NULL),
(2, 'dua', NULL, NULL),
(3, 'tiga', NULL, NULL),
(4, 'empat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manajemen_layanan`
--

CREATE TABLE `manajemen_layanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `daftar_layanan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prosedur` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manajemen_layanan`
--

INSERT INTO `manajemen_layanan` (`id`, `daftar_layanan`, `prosedur`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'asnupdate', '12345 update', 'ktm-eka-1616914700.jpg', '2021-03-27 09:42:58', '2021-03-27 23:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `manajemen_pertek`
--

CREATE TABLE `manajemen_pertek` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jenis_pertek` bigint(20) UNSIGNED DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `jrxml` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_versi` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manajemen_pertek`
--

INSERT INTO `manajemen_pertek` (`id`, `id_jenis_pertek`, `deskripsi`, `jrxml`, `json`, `tanggal_versi`, `created_at`, `updated_at`) VALUES
(1, 2, 'dfsdffsdfsd', 'sertif-finalis-1616838968.pdf', 'sk-eka-1616838968.pdf', '2021-03-27', '2021-03-27 02:56:08', '2021-03-27 02:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `manajemen_template`
--

CREATE TABLE `manajemen_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_instansi` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jenis_sk` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manajemen_template`
--

INSERT INTO `manajemen_template` (`id`, `id_instansi`, `file`, `id_jenis_sk`, `created_at`, `updated_at`) VALUES
(1, 2, 'Rafif Favian_92320018-1616145898.pdf', 2, '2021-03-19 02:24:58', '2021-03-20 09:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `manajemen_tte`
--

CREATE TABLE `manajemen_tte` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posisi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spesimen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paraf_pi` int(11) NOT NULL DEFAULT '0',
  `paraf_kp` int(11) NOT NULL DEFAULT '0',
  `paraf_peremajaan` int(11) NOT NULL DEFAULT '0',
  `ttd_pi` int(11) NOT NULL DEFAULT '0',
  `ttd_kp` int(11) NOT NULL DEFAULT '0',
  `ttd_peremajaan` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manajemen_tte`
--

INSERT INTO `manajemen_tte` (`id`, `posisi`, `spesimen`, `nik`, `nama`, `nip`, `paraf_pi`, `paraf_kp`, `paraf_peremajaan`, `ttd_pi`, `ttd_kp`, `ttd_peremajaan`, `created_at`, `updated_at`) VALUES
(1, 'sadashih', 'dsa', 'das', 'adas', 'dadsa', 1, 1, 0, 0, 1, 1, '2021-03-19 02:37:28', '2021-03-19 02:37:28'),
(2, 'sadashih', 'dsa', 'das', 'adas', 'dadsa', 1, 1, 0, 0, 1, 1, '2021-03-19 05:55:44', '2021-03-21 17:14:49'),
(3, 'asdsa', 'asda', 'aaaa', 'aaaa', 'aaaa', 1, 0, 0, 1, 0, 0, '2021-03-19 22:09:19', '2021-03-19 22:09:19'),
(15, 'das', 'asda', 'ad', 'asda', 'asda', 0, 0, 0, 0, 0, 0, '2021-03-20 04:46:45', '2021-03-20 04:46:45'),
(16, 'haha', 'hahasda', 'ssa', 'sasa', 'asa', 1, 1, 1, 0, 0, 0, '2021-03-20 04:53:21', '2021-03-20 04:53:21'),
(17, 'sda', 'sdas', 'sda', 'das', 'sdas', 0, 1, 0, 0, 0, 0, '2021-03-20 05:42:49', '2021-03-20 05:42:49'),
(18, 'test', 'test', 'test', 'tet', 'test', 1, 0, 1, 0, 0, 0, '2021-03-20 05:50:16', '2021-03-20 05:50:16'),
(19, 'gaga', 'gaga', 'gaga', 'gaga', 'gaga', 1, 0, 1, 1, 1, 0, '2021-03-20 06:11:24', '2021-03-20 06:11:24'),
(20, 'rafa', 'rafi', 'rafa', 'rafi', 'raga', 0, 1, 0, 1, 0, 0, '2021-03-20 06:41:24', '2021-03-20 06:41:24'),
(21, 'yaya', 'ayay', 'yaya', 'ayay', 'yay', 1, 0, 0, 1, 0, 0, '2021-03-20 08:32:51', '2021-03-20 08:32:51'),
(22, 'sdas', 'asda', 'adsa', 'sda', 'sada', 0, 0, 1, 0, 0, 1, '2021-03-21 16:57:34', '2021-03-21 16:57:34'),
(23, 'sds', 'fff', 'fff', 'ff', 'ff', 0, 1, 0, 1, 0, 0, '2021-03-21 16:59:38', '2021-03-21 16:59:38'),
(25, 'da', 'sds', 'sd', 'sd', 'sd', 0, 0, 1, 0, 0, 1, '2021-03-28 03:07:35', '2021-03-28 03:07:35'),
(26, 'dsa', 'dsa', 'dsa', 'dsa', 'das', 0, 1, 0, 0, 1, 0, '2021-03-28 03:16:39', '2021-03-28 03:16:39'),
(27, 'dsa', 'das', 'sd', 'sd', 'sd', 1, 0, 0, 1, 0, 0, '2021-03-28 03:18:02', '2021-03-28 03:18:02'),
(28, 'rako', 'rako', 'rako', 'rakor', '12345', 1, 0, 0, 0, 1, 0, '2021-03-28 03:19:07', '2021-03-28 03:19:07'),
(29, 'reza', 'sadsa', '12345', '12345', '43434', 0, 0, 0, 0, 1, 0, '2021-03-28 03:43:45', '2021-03-28 03:43:45'),
(30, 'xx', 'xx', 'xx', 'xx', 'xx', 0, 0, 0, 0, 1, 0, '2021-03-28 03:44:40', '2021-03-28 03:44:40'),
(31, 'tt', 'tttt', 'ttt', 'ttt', 'tt', 1, 1, 1, 1, 1, 1, '2021-03-28 03:47:05', '2021-03-28 03:47:05'),
(32, 'jj', 'jj', 'jj', 'jj', 'jj', 0, 1, 0, 0, 1, 0, '2021-03-28 03:47:27', '2021-03-28 03:47:27'),
(33, 'pp', 'pp', 'pp', 'pp', 'pp', 0, 0, 0, 0, 0, 0, '2021-03-28 03:47:51', '2021-03-28 03:47:51'),
(34, 'sad', 'ads', 'ds', 'ds', 'ds', 1, 1, 0, 0, 1, 0, '2021-03-28 03:59:38', '2021-03-28 03:59:38'),
(35, 'pp', 'pp', 'pp', 'pp', 'pp', 0, 0, 0, 0, 1, 0, '2021-03-28 04:00:41', '2021-03-28 04:00:41'),
(36, 'das', 'sad', 'da', 'dsa', 'dsa', 0, 1, 0, 0, 0, 0, '2021-03-28 04:16:00', '2021-03-28 06:26:51');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_01_122819_add_column_to_users_table', 1),
(5, '2021_03_01_135233_create_manajemen_layanan_table', 1),
(6, '2021_03_01_214155_create_manajemen_tte_table', 1),
(7, '2021_03_01_214323_create_instansi_table', 1),
(8, '2021_03_01_214340_create_jenis_sk_table', 1),
(9, '2021_03_01_214409_create_manajemen_template_table', 1),
(10, '2021_03_02_104639_update_gambar_to_photo_field_table', 1),
(11, '2021_03_14_084341_create_jenis_pertek_table', 1),
(12, '2021_03_14_084352_create_manajemen_pertek_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fariz', 'fariz_sarmag', 'fariz@gmail.com', NULL, '$2y$10$Abmb.4Za7zBTZFEP8lHKyO8Qk.f338enYCue9sI7XbRr2d1llgK5m', 'tc9ACSHBqsB5blWJsJUWcCrwhwha2ON7JfmxraZBfAAyVjbDTD', '2021-03-19 02:24:07', '2021-03-19 02:24:07');

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
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_pertek`
--
ALTER TABLE `jenis_pertek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_sk`
--
ALTER TABLE `jenis_sk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manajemen_layanan`
--
ALTER TABLE `manajemen_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manajemen_pertek`
--
ALTER TABLE `manajemen_pertek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manajemen_template`
--
ALTER TABLE `manajemen_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manajemen_tte`
--
ALTER TABLE `manajemen_tte`
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
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis_pertek`
--
ALTER TABLE `jenis_pertek`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jenis_sk`
--
ALTER TABLE `jenis_sk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manajemen_layanan`
--
ALTER TABLE `manajemen_layanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manajemen_pertek`
--
ALTER TABLE `manajemen_pertek`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manajemen_template`
--
ALTER TABLE `manajemen_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manajemen_tte`
--
ALTER TABLE `manajemen_tte`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
