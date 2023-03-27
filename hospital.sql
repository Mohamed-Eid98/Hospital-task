-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 06:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `speciality_id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `speciality_id`, `day`, `time_from`, `time_to`) VALUES
(1, 1, 'Saturday', '12:00:00', '03:00:00'),
(2, 2, 'Sunday', '02:00:00', '05:00:00'),
(3, 3, 'Monday', '01:00:00', '04:00:00'),
(4, 1, 'Saturday', '05:00:00', '09:00:00'),
(5, 2, 'Sunday', '06:00:00', '09:00:00'),
(6, 5, 'Monday', '01:00:00', '04:00:00'),
(7, 2, 'Saturday', '03:00:00', '06:00:00'),
(8, 2, 'Saturday', '05:00:00', '09:00:00'),
(9, 1, 'Tuesday', '12:00:00', '03:00:00'),
(10, 1, 'Tuesday', '05:00:00', '09:00:00'),
(11, 1, 'Thursday', '12:00:00', '03:00:00'),
(12, 1, 'Thursday', '05:00:00', '09:00:00'),
(13, 2, 'Wednesday', '02:00:00', '05:00:00'),
(14, 2, 'Wednesday', '06:00:00', '09:00:00'),
(15, 2, 'Friday', '02:00:00', '05:00:00'),
(16, 2, 'Friday', '06:00:00', '09:00:00'),
(17, 2, 'Saturday', '12:00:00', '03:00:00'),
(18, 2, 'Saturday', '05:00:00', '09:00:00'),
(19, 2, 'Tuesday', '12:00:00', '03:00:00'),
(20, 2, 'Tuesday', '05:00:00', '09:00:00'),
(21, 2, 'Thursday', '12:00:00', '03:00:00'),
(22, 2, 'Thursday', '05:00:00', '09:00:00'),
(23, 4, 'Sunday', '02:00:00', '05:00:00'),
(24, 4, 'Sunday', '06:00:00', '09:00:00'),
(25, 4, 'Saturday', '03:00:00', '06:00:00'),
(26, 4, 'Saturday', '05:00:00', '09:00:00'),
(27, 4, 'Tuesday', '05:00:00', '09:00:00'),
(28, 4, 'Thursday', '12:00:00', '03:00:00'),
(29, 3, 'Saturday', '12:00:00', '03:00:00'),
(30, 3, 'Saturday', '05:00:00', '09:00:00'),
(31, 3, 'Tuesday', '12:00:00', '03:00:00'),
(32, 3, 'Tuesday', '05:00:00', '09:00:00'),
(33, 3, 'Thursday', '12:00:00', '03:00:00'),
(34, 3, 'Thursday', '05:00:00', '09:00:00'),
(35, 5, 'Tuesday', '05:00:00', '09:00:00'),
(36, 5, 'Thursday', '12:00:00', '03:00:00'),
(37, 5, 'Thursday', '05:00:00', '09:00:00'),
(38, 5, 'Sunday', '02:00:00', '05:00:00'),
(39, 5, 'Sunday', '06:00:00', '09:00:00'),
(40, 5, 'Saturday', '03:00:00', '06:00:00'),
(41, 6, 'Friday', '04:00:00', '09:00:00'),
(42, 6, 'Friday', '04:00:00', '07:00:00'),
(43, 6, 'Monday', '04:00:00', '07:00:00'),
(44, 6, 'Tuesday', '04:00:00', '07:00:00'),
(45, 6, 'Tuesday', '04:00:00', '07:00:00'),
(46, 6, 'Wednesday', '04:00:00', '07:00:00'),
(47, 7, 'Friday', '05:00:00', '09:00:00'),
(48, 7, 'Tuesday', '05:00:00', '09:00:00'),
(49, 8, 'Saturday', '12:00:00', '09:00:00'),
(50, 8, 'Sunday', '12:00:00', '09:00:00'),
(51, 8, 'Tuesday', '12:00:00', '09:00:00'),
(52, 8, 'Wednesday', '12:00:00', '09:00:00'),
(53, 8, 'Thursday', '12:00:00', '09:00:00'),
(54, 8, 'Friday', '12:00:00', '09:00:00');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `appointment_id`, `created_at`, `updated_at`) VALUES
(1, 2, 47, '2023-03-25 21:39:01', '2023-03-27 01:59:49'),
(2, 2, 31, '2023-03-25 21:39:37', '2023-03-27 02:02:13'),
(3, 4, 2, '2023-03-26 13:16:46', '2023-03-26 13:16:46'),
(4, 3, 5, '2023-03-26 13:50:23', '2023-03-26 13:50:23'),
(6, 2, 2, '2023-03-26 13:50:23', '2023-03-26 13:50:23'),
(8, 4, 1, '2023-03-26 21:44:49', '2023-03-26 21:44:49'),
(9, 3, 4, '2023-03-26 21:50:47', '2023-03-26 21:50:47'),
(10, 2, 10, '2023-03-27 00:29:20', '2023-03-27 00:29:20'),
(11, 1, 54, '2023-03-27 01:55:59', '2023-03-27 01:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `speciality`
--

CREATE TABLE `speciality` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `speciality`
--

INSERT INTO `speciality` (`id`, `name`) VALUES
(1, 'General practice'),
(2, 'Pediatrics'),
(3, 'Radiology'),
(4, 'Ophthalmology'),
(5, 'Sports medicine and rehabilitation'),
(6, 'Oncology'),
(7, 'Dermatology'),
(8, 'Emergency Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, 1, '$2y$10$mXdzS08hKTko8gG8fgeS5OHBZyURvYkzAvv7tMPLjyuLTHEACYeAq', NULL, NULL, NULL),
(2, 'user', 'user@gmail.com', NULL, 0, '$2y$10$mXdzS08hKTko8gG8fgeS5OHBZyURvYkzAvv7tMPLjyuLTHEACYeAq', NULL, NULL, NULL),
(3, 'Ahmed', 'm.eid.saad401@gmail.com', NULL, 0, '$2y$10$CruhjKETapKdD/VQDphvFO0heTrZBNkwZWCeF.ycDfCf7Mk59RPuu', NULL, '2023-03-26 13:34:13', '2023-03-26 13:34:13'),
(4, 'Mohamed', 'mohamed@gmail.com', NULL, 0, '$2y$10$CruhjKETapKdD/VQDphvFO0heTrZBNkwZWCeF.ycDfCf7Mk59RPuu', NULL, '2023-03-26 13:34:13', '2023-03-26 13:34:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_ibfk_1` (`speciality_id`);

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
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `reservations_ibfk_2` (`user_id`);

--
-- Indexes for table `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `speciality`
--
ALTER TABLE `speciality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
