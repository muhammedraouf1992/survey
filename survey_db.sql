-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2023 at 03:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey_db`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'main', 'd67e6bc99be3977f4c848b01c0b6715addea14dbad3d212a892f6cf3ed8b61c1', '[\"*\"]', NULL, NULL, '2023-08-27 09:22:58', '2023-08-27 09:22:58'),
(2, 'App\\Models\\User', 4, 'main', '63682987e322c7aed8cf01e461b3de7c2039b2cf07e54ee417fa84849b2c16ff', '[\"*\"]', NULL, NULL, '2023-08-27 09:31:01', '2023-08-27 09:31:01'),
(3, 'App\\Models\\User', 5, 'main', '133ab03a20423761dec8fbc919e7697d2b67397046f0cd868973072b1fffc0dc', '[\"*\"]', NULL, NULL, '2023-08-27 09:38:12', '2023-08-27 09:38:12'),
(4, 'App\\Models\\User', 6, 'main', '321ecbfdb749d0c08b2f5b31024e4fefc364394259c394582dfab8530506697a', '[\"*\"]', NULL, NULL, '2023-08-27 09:39:31', '2023-08-27 09:39:31'),
(5, 'App\\Models\\User', 5, 'main', '82e578a6accfa8bd9935abfa6e482fa35ba275d8bca13cc169017b9da3cc89c1', '[\"*\"]', NULL, NULL, '2023-08-27 10:27:14', '2023-08-27 10:27:14'),
(6, 'App\\Models\\User', 5, 'main', '25ba710b82ccc59f29c4dfeb486fd0fec9983a1dc538ebf6093e42a9459ac106', '[\"*\"]', NULL, NULL, '2023-08-27 10:27:35', '2023-08-27 10:27:35'),
(7, 'App\\Models\\User', 5, 'main', '7e27edd4d4f20435e77ac31ea189c579096a01cefd88865a6dff0f45b6b6f615', '[\"*\"]', NULL, NULL, '2023-08-27 10:28:31', '2023-08-27 10:28:31'),
(8, 'App\\Models\\User', 5, 'main', '9c3e8a96b859561c84f39e6798d00a0f48649e54ba9de09ed3f5918935575cf1', '[\"*\"]', NULL, NULL, '2023-08-27 10:30:58', '2023-08-27 10:30:58'),
(9, 'App\\Models\\User', 5, 'main', '42c1762d4885ff29d62822aa98fc49730fc03fa5e24fc5032612a30744c7cc3b', '[\"*\"]', NULL, NULL, '2023-08-27 10:42:22', '2023-08-27 10:42:22'),
(10, 'App\\Models\\User', 5, 'main', 'e47fb54ff2e3e5d6d1b888bb5862e765216fab95e599efb22e67d878c84a503c', '[\"*\"]', NULL, NULL, '2023-08-27 10:42:41', '2023-08-27 10:42:41'),
(12, 'App\\Models\\User', 5, 'main', '4b82a2b31de4603715ef43c3ed4962f041bc71bb56004b66793f57b1e02fcc94', '[\"*\"]', NULL, NULL, '2023-08-27 10:48:58', '2023-08-27 10:48:58'),
(13, 'App\\Models\\User', 5, 'main', '5560b4f3c2fbc5b30639bbed347898a3d433411af82482bee1aa25069e13f705', '[\"*\"]', NULL, NULL, '2023-08-27 10:49:33', '2023-08-27 10:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'muhammed', 'muhammedraouf92@gmail.com', NULL, '$2y$10$o7pymLhJulO1EGu9TIaHsuVQZWK7xg.N2Cbv6Rr4S7vBybCnG0N0e', NULL, '2023-08-27 09:38:12', '2023-08-27 09:38:12'),
(6, 'admin', 'admin@gmail.com', NULL, '$2y$10$FP7inubMrGh/cYeoLJmKlOEIIy0gDZ560U1.1DAoNN2r0Y/fVjk4a', NULL, '2023-08-27 09:39:31', '2023-08-27 09:39:31');

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
