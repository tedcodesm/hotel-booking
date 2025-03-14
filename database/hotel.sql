-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 11:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'waiting',
  `star_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `room_id`, `name`, `email`, `phone`, `status`, `star_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, '5', 'ted', 'user@gmail.com', NULL, 'waiting', '2024-07-17', '2024-07-18', '2024-07-17 06:53:08', '2024-07-17 06:53:08'),
(2, '5', 'bob', 'bob@gmail.com', NULL, 'waiting', '2024-07-23', '2024-07-25', '2024-07-22 05:50:11', '2024-07-22 05:50:11'),
(4, '5', 'babu', 'babu@gmail.com', NULL, 'waiting', '2024-07-30', '2024-07-31', '2024-07-23 15:32:29', '2024-07-23 15:32:29'),
(5, '4', 'user', 'user@gmail.com', NULL, 'waiting', '2024-08-01', '2024-08-07', '2024-07-30 09:01:08', '2024-07-30 09:01:08'),
(6, '4', 'user', 'user@gmail.com', NULL, 'waiting', '2024-08-28', '2024-08-30', '2024-07-31 06:57:18', '2024-07-31 06:57:18'),
(7, '14', 'user', 'user@gmail.com', NULL, 'waiting', '2024-08-08', '2024-08-09', '2024-08-08 14:59:06', '2024-08-08 14:59:06'),
(8, '14', 'user', 'user@gmail.com', NULL, 'waiting', '2024-08-29', '2024-08-30', '2024-08-08 15:07:16', '2024-08-08 15:07:16'),
(9, '4', 'user', 'user@gmail.com', NULL, 'waiting', '2024-11-28', '2024-11-29', '2024-09-05 03:49:41', '2024-09-05 03:49:41'),
(10, '4', 'user', 'user@gmail.com', NULL, 'waiting', '2024-10-05', '2024-10-06', '2024-09-05 03:50:30', '2024-09-05 03:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('0b5ed025495008a307f6b06dd1e4cce2', 'i:1;', 1726126728),
('0b5ed025495008a307f6b06dd1e4cce2:timer', 'i:1726126727;', 1726126727),
('babu@gmail.com|127.0.0.1', 'i:1;', 1723139808),
('babu@gmail.com|127.0.0.1:timer', 'i:1723139808;', 1723139808),
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1723137167),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1723137167;', 1723137167),
('e0d977918a739d38dd07ef7bac7b1b24', 'i:1;', 1723139807),
('e0d977918a739d38dd07ef7bac7b1b24:timer', 'i:1723139807;', 1723139807);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `gallaries`
--

CREATE TABLE `gallaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallaries`
--

INSERT INTO `gallaries` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '1722334330.jpg', '2024-07-30 07:12:10', '2024-07-30 07:12:10'),
(2, '1722334631.jpg', '2024-07-30 07:17:11', '2024-07-30 07:17:11'),
(4, '1722336104.jpeg', '2024-07-30 07:41:44', '2024-07-30 07:41:44'),
(5, '1722336130.jpeg', '2024-07-30 07:42:10', '2024-07-30 07:42:10'),
(6, '1722336152.jpeg', '2024-07-30 07:42:32', '2024-07-30 07:42:32'),
(7, '1722336201.jpg', '2024-07-30 07:43:22', '2024-07-30 07:43:22'),
(8, '1722336230.jpeg', '2024-07-30 07:43:50', '2024-07-30 07:43:50'),
(9, '1722336242.jpeg', '2024-07-30 07:44:02', '2024-07-30 07:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_11_181711_add_two_factor_columns_to_users_table', 1),
(5, '2024_07_11_181828_create_personal_access_tokens_table', 1),
(6, '2024_07_12_154919_create_rooms_table', 2),
(7, '2024_07_17_092125_create_bookings_table', 3),
(8, '2024_07_23_183559_add_status_field_to_bookings', 4),
(9, '2024_07_30_090333_create_gallaries_table', 5),
(10, '2024_07_30_183908_create_contacts_table', 6);

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
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `wifi` varchar(255) NOT NULL DEFAULT 'yes',
  `room_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_title`, `image`, `description`, `price`, `wifi`, `room_type`, `created_at`, `updated_at`) VALUES
(4, 'premium', '1721032670.jpeg', 'The main area of the room boasts a luxurious king-sized bed with a plush headboard, high-thread-count linens, and a selection of pillows to ensure a comfortable night\'s sleep. Nightstands on either side of the bed come equipped with modern lamps, USB charging ports, and an alarm clock. A stylish armchair and ottoman are positioned near the window, creating a cozy reading nook.', '200', 'yes', 'premium', '2024-07-15 05:37:50', '2024-07-31 11:24:20'),
(5, 'Small', '1721032945.jpeg', 'A large flat-screen television is mounted on the wall opposite the bed, offering a wide range of cable channels and on-demand movies. Below the TV, a sleek console holds a minibar stocked with snacks and beverages, as well as a coffee maker with complimentary coffee and tea supplies.', '300', 'yes', 'premium', '2024-07-15 05:42:25', '2024-07-31 11:25:50'),
(6, 'Regular room', '1721032981.jpg', 'Large windows provide natural light and offer stunning views of the cityscape, garden, or ocean, depending on the hotel\'s location. Blackout curtains are available for those who prefer a darker sleeping environment.', '400', 'yes', 'regular', '2024-07-15 05:43:01', '2024-07-31 11:26:47'),
(9, 'Tunnel', '1722585817.jpeg', 'The living room is a spacious and inviting area filled with natural light. A large, comfortable sofa sits in the center, adorned with colorful throw pillows. In front of the sofa, there\'s a sleek coffee table with a few art books and a vase of fresh flowers. The walls are decorated with tasteful artwork, and a plush rug covers the hardwood floor, adding warmth to the space. A modern entertainment center houses a flat-screen TV and a collection of books and decorative items. Near the window, a cozy reading nook with an armchair and a floor lamp creates a perfect spot to relax with a good book.', '300', 'yes', 'regular', '2024-08-02 05:03:37', '2024-08-02 05:03:37'),
(10, 'Rail', '1722585862.jpeg', 'The bedroom is a serene and peaceful retreat designed for relaxation. A king-sized bed with a luxurious upholstered headboard is the focal point of the room, dressed in high-quality linens and soft blankets. Nightstands on either side of the bed hold elegant lamps and personal items. A large window with blackout curtains ensures a restful night\'s sleep. Across from the bed, a dresser provides ample storage, and a large mirror adds a touch of elegance. A small seating area with a comfy chair and a side table offers a quiet place to unwind.', '500', 'yes', 'premium', '2024-08-02 05:04:22', '2024-08-02 05:04:22'),
(11, 'Ocean view', '1722585919.jpeg', 'The kitchen is a modern and functional space, perfect for both cooking and entertaining. Stainless steel appliances, including a refrigerator, oven, and dishwasher, complement the sleek, white cabinetry. A large island in the center provides additional counter space and seating, with stylish bar stools tucked underneath. The countertops are made of polished granite, and the backsplash features a mosaic of colorful tiles. Open shelves display a collection of cookbooks and decorative dishes, while a pantry offers plenty of storage for groceries. A large window over the sink allows for plenty of natural light.', '400', 'yes', 'premium', '2024-08-02 05:05:19', '2024-08-02 05:05:19'),
(12, 'perfect', '1722585979.jpg', 'The bathroom is a luxurious and spa-like retreat. The centerpiece is a deep soaking tub, perfect for relaxing after a long day. A separate glass-enclosed shower features multiple showerheads and elegant tilework. The vanity is topped with a marble countertop and dual sinks, with ample storage space below. Large mirrors and stylish lighting fixtures enhance the space. Plush towels and bathrobes are neatly folded and ready for use. The floor is covered with heated tiles, providing warmth and comfort.', '200', 'yes', 'regular', '2024-08-02 05:06:19', '2024-08-02 05:06:19'),
(13, 'kotan', '1722586081.jpeg', 'The office is a well-organized and productive space designed for efficiency. A large desk with a comfortable ergonomic chair sits near the window, providing a view and natural light. The desk is equipped with a computer, a lamp, and neatly arranged office supplies. Shelves and filing cabinets offer plenty of storage for documents and books. A bulletin board and whiteboard are mounted on the wall for notes and brainstorming sessions. A small seating area with a loveseat and coffee table creates a welcoming space for meetings or breaks.', '300', 'yes', 'regular', '2024-08-02 05:08:01', '2024-08-02 05:08:01'),
(14, 'Huge', '1722586141.jpeg', 'The dining room is a blend of elegance and comfort, designed for both intimate family meals and larger gatherings. At the center of the room, a long, polished wooden dining table is surrounded by upholstered chairs that invite guests to sit and stay awhile. Above the table, a stunning chandelier casts a warm, inviting glow. The walls are painted in a soft, neutral tone, accented by wainscoting and tasteful crown molding. One side of the room features a large window with sheer curtains, allowing natural light to fill the space during the day. A sideboard against the opposite wall offers additional storage for serving dishes and linens, topped with a decorative arrangement of candles and a stylish vase. Framed artwork and a strategically placed mirror add visual interest and depth to the room. A plush area rug under the table ties the elements together, creating a cohesive and welcoming atmosphere.', '500', 'yes', 'premium', '2024-08-02 05:09:01', '2024-08-02 05:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BYOey2jMdiW7mw3ti3XJsNKhEhuiomgR4XpO0qZe', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicDYzeE1mSlJiS05VRDFud2lveXZ5ZDF2UEtkbUNpUzZ6RXZwMDNPZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yb29tX2RldGFpbHMvMTMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1725866302),
('dhl1wau5QoVtWmg7mlY8s6BdV7cilrLJHPjmBWlo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnJNT3l3cUtJajM5N1dQc2JSdlM1Um92SjBpY1BkdUlvRUxPOUhFMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yb29tX2RldGFpbHMvMTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1727110487),
('S5QmPj9MpHiP8TuOHosGwbFqoPtraRjxa4hm22LZ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic1hpaEZBU1N2MFhjQ0JmZnQwTzVtM1ZwQlZPWXlCN1V0OWdCbzltWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1725520680),
('sO3RWsPofsS6ewl0ZSoGvkgQVM47IhMj62170Vmi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm56dVFKWlFHNVJBblpia0tQQ2tQVzJaQ1pPNk9WY0JmUDdoMUZaWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729241603),
('Wp5i1PWBsiC7mcCw59W1aA6elAXZey0XXBhiIPia', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMVNLeU5vOVlLR3FoRElMbUFSd3VmakZ3bGJ4aXU3VzkzYzVyNnVpWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yb29tX2RldGFpbHMvNSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1726126749);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0114520219', 'user', NULL, '$2y$12$W2S1gskuvFnI9PVehW6NI.AoywgsbGpcTzmZEhvsjVacdw1CUxdcG', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-11 16:07:14', '2024-07-11 16:07:14'),
(2, 'admin', 'admin@gmail.com', '01145202165', 'admin', NULL, '$2y$12$nv3.bIbdK/J6.w6bUh1dt.7J68jrP6t0H39pwXX2WNGkakXpS/Im6', NULL, NULL, NULL, 'bO5okJVcHPDX6WO02I2NVzFp31Odh94fZRoHXKgL5JiueKFCzVbrcVACSWbs', NULL, NULL, '2024-07-11 16:10:14', '2024-07-11 16:10:14'),
(3, 'user2', 'user2@gmail.com', '011452026', 'user', NULL, '$2y$12$LigxZX/CBxtt2qLlf8KYMOiXKCw21mQpelF9Pr5pdXoffiXaZ/bMy', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-12 06:01:36', '2024-07-12 06:01:36'),
(4, 'babu', 'babu@gmail.com', '01123232323', 'user', NULL, '$2y$12$g8gnH4qbtvI9pMTzldMOk.59xT8JmBN5P2N8yHK/i4Ci97bcdYHp2', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 15:27:40', '2024-07-23 15:27:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallaries`
--
ALTER TABLE `gallaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallaries`
--
ALTER TABLE `gallaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
