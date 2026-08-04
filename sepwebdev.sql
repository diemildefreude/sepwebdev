-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql107.infinityfree.com
-- Generation Time: Aug 04, 2026 at 01:43 PM
-- Server version: 11.4.12-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_37393024_sepwebdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(9, '2024_09_18_105237_add_timestamps_to_post_table_newnew', 2),
(14, '0001_01_01_000000_create_users_table', 3),
(15, '0001_01_01_000001_create_cache_table', 3),
(16, '0001_01_01_000002_create_jobs_table', 3),
(17, '2024_09_16_165939_create_posts_table', 3);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `live_url` varchar(255) NOT NULL,
  `code_url` varchar(255) NOT NULL,
  `tech_stack` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `live_url`, `code_url`, `tech_stack`, `features`, `desktop_img`, `laptop_img`, `tablet_img`, `phone_img`, `created_at`, `updated_at`) VALUES
(2, 'stephaneperez.net', 'my own artist website', 'https://stephaneperez.net', 'https://github.com/diemildefreude/sepSite', '[\"vanilla html, css & js\",\"php, phpMailer\",\"mySql\"]', '[\"bio, contact form and archives of events, performances and interactive art\",\"simple, sleek design\",\"photo carousels made in vanilla css & js\"]', 'images/uploaded//YHv3zQnbx3R1AgmKgJRyhDSXzGlpDfn1W3IfjGYx.webp', 'images/uploaded//gwIbgsLnXs8o30BjHDOzP2s4xCYBEp4hNZY35xVc.webp', 'images/uploaded//r6z7zjTM97DwkiZXPXDIayXfCXwXBG47oQOcK9Mf.webp', 'images/uploaded//epk3gUbd3fUn5ktVYsrVn24UZmbQ4rN8ykgn4BXC.webp', '2024-09-18 23:18:45', '2025-02-08 11:48:44'),
(3, 'lvpart.com', 'art archive for lourdes perez', 'https://lvpart.com', 'https://github.com/diemildefreude/lvpSite', '[\"wordpress content management\",\"vanilla html, css & js\",\"php\",\"mySql\"]', '[\"straightforward archive-format\",\"original theme using the wordpress framework\",\"dynamic front page shows a random selection of paintings with fast, asynchronous image-loading\"]', 'images/uploaded//ZBecGiMOlBEUcur2wZ08Nx6It8MBkrwIk6RFMgVP.webp', 'images/uploaded//CIVgJu6eRoHfSdnFJNTax2uO1k6wBELjt6hV0k8e.webp', 'images/uploaded//7O7sBdnagjAO5Xhq58RoW8N8isUJA7HBrbxpBG97.webp', 'images/uploaded//0m1ofxjrnXZs8Kkf8pv1M44VLvHa0nJYhCg0zdv4.webp', '2024-09-24 00:37:49', '2024-09-24 02:42:52'),
(4, 'faces', 'memory sculpture', 'https://somanyfaces.in', 'https://github.com/diemildefreude/faces', '[\"three.js\",\"face-api.js\",\"node package manager\",\"php\",\"mySql\"]', '[\"dynamic 3D space with movement controls for the camera\",\"structure changes based on user movement\",\"some faces have audio which is directional based on their position relative to the camera\",\"users can add their own face and voice to the work with their device\\u2019s camera and microphone\"]', 'images/uploaded//vuwHMGcDmcZHPjGjKv3peFQSEHVWVw1D75pJPOVM.webp', 'images/uploaded//rEK3SvrqoB6jYL0eHpd3GCxAU5UTjevutAhhJkCT.webp', 'images/uploaded//XnVwLNphZCsPHxnzSOx0gWFU4pm4sGhISj4VIFj4.webp', 'images/uploaded//JgOKuHdbEssMMeZswMj79PeTeDAV7zAPmDTjEsZI.webp', '2024-09-24 02:35:14', '2025-02-08 21:49:39'),
(5, 'sepweb.dev', 'this portfolio site', 'https://sepweb.dev', 'https://github.com/diemildefreude/sepWebDev', '[\"laravel\",\"npm + vite\",\"php\",\"mySql\"]', '[\"procedurally generated canvas lines for hero and background\",\"comprehensive project summaries\",\"admin portal for creating and editing project pages\",\"colorful, performative, and intuitive UI\"]', 'images/uploaded//BbSZEdQMcYgjIMWeuGWRpFxjvU7ASSZLQZR95GWm.webp', 'images/uploaded//bVZ1Zxd1v1gHtT3uwqYf2fJdTnWoVz1qAOVGBvtl.webp', 'images/uploaded//4pGjFMqszEXIpX5hjgeu0QMNXgE4G673aii2nVCx.webp', 'images/uploaded//ehn5a7vC7bFAs1WeUzBsqQwjIVBaWnr5tBarbsIS.webp', '2024-09-27 14:55:48', '2024-09-27 14:58:27'),
(11, 'show me the world', 'interactive train ride', 'https://sepweb.dev/showmetheworld/', 'https://github.com/diemildefreude/showmetheworld', '[\"three.js\",\"web speech api\",\"bing search api\",\"web audio api\",\"npm + vite\"]', '[\"users say words causing different images to appear\",\"random elements can lead to surprises in the output\",\"multiple language support, togglable at runtime\",\"procedural audio changes the sound together with the train\'s speed and is different every time\",\"compatible with edge and chrome on windows 11\"]', 'images/uploaded/67a754cee2ea0.webp', 'images/uploaded/67a754cee9a44.webp', 'images/uploaded/67a754cee9d34.webp', 'images/uploaded/67a754cee9fbf.webp', '2025-02-08 15:57:50', '2025-02-08 21:49:10'),
(12, 'meerkat-girl.tokyo', 'portfolio for artist miaki 美', 'https://meerkat-girl.tokyo/', 'https://github.com/diemildefreude/meerkat-girl.tokyo', '[\"php\",\"laravel\",\"Imagick\",\"quilljs\",\"vanilla css + js\",\"mysql\"]', '[\"retro-website-style design\",\"custom CMS with categories for artworks\",\"drag & drop images and give them alts\",\"add a YouTube link for main video and get a preview\",\"quilljs used for wysiwyg text+image editor\",\"auto-resizing of images\",\"JA and EN dual-language\"]', 'images/uploaded/680b7465a4987.webp', 'images/uploaded/680b7465aa55d.webp', 'images/uploaded/680b7465aa7c5.webp', 'images/uploaded/680b7465aa9da.webp', '2025-04-25 14:39:17', '2025-05-12 08:26:22');

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
('0CqqSgtYVSfjyKzsxrFJaBUibrW8T8L3FKXjNttm', NULL, '17.246.19.251', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialVkR2NRejJRa0ZoWURITjg5bXJ3aUptbEpCT0kzRVc0Y0Z6d2ZZRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldi8/aT0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785634847),
('6LhKYuKGzex20N09T89S1enW1in28pbtAA2RNGGh', NULL, '66.249.73.66', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.7871.186 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHFTUDZlNlF1czFqR0l5YmM4WjVuck82d3o0dmxlM3R3a095S01VdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9zZXB3ZWIuZGV2L3Byb2plY3Qvc3RlcGhhbmVwZXJlei5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1785589006),
('9B98zrwaRxdRUuxGd8FZe6uhv4ITfxpevwIxHFfU', NULL, '66.249.74.165', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2I5dVBBT1VaTkJWVlNEVEVZVGFXck9odURURWNZNEMxS2V2QXVCOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785584695),
('cGasFGthcWOJISzyDCHGiwINzf06jqe88AtgloZs', NULL, '66.249.74.162', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1N4WkVrV0Y2ZWd3M21aOWJXT3UxSVl3QXMwcXpTZDhBYnpwUHc4aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785429869),
('cP1TlKSVQu2QXvUL16x8GLcQNF8WVpsFgrSaIvK4', NULL, '66.249.73.73', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.7871.128 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialpZOFFBRlVJamV0RXB0R1lBNmp6Tm9HUUE4NTFCTEFVVUg5T0tGRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785249542),
('E6mxfDz40PrHrFdUbJD71c3KdTIGdZIQFiWqoC4s', NULL, '183.134.40.82', 'Mozilla/5.0 (Linux; Android 7.1.1; OPPO R11s Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/48.0.2564.116 Mobile Safari/537.36 T7/10.7 baiduboxapp/10.7.0.10 (Baidu; P1 7.1.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHFPdUtJclN2V0o5aEJSUW92UmxsZWFJYklxZ25IY09pWDE4eUl0VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785096061),
('fORZ6VnFVB59nLVUQyCNTH7BZS2w0Zh3FUXE4f3t', NULL, '66.249.73.72', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTdhMURQd2toODl4SHA3bTY1bEpycGlwODMyOEVtQlV4Y2dJM3RIRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785827855),
('GfmmXZj2P0FkOuSCa4GMevll2dvKQVNOsWbCd34X', NULL, '66.249.73.65', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.7871.128 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEtSWmg5TDMybXgyRzhqczhGcThEbXVZZnIwUGJKOFhFWEVkalJhSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785333601),
('gRKdZm6hAMLT122oLq09wzkTnkrOZngGCP8Ycz1J', NULL, '73.46.205.28', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXdQVjc0ajJ5OWN0dUNvTXlva01JRDdpYjNYdEFEVXlBQVJNWGF4RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785515105),
('Hx90xhDOcqd26lkGDwuIXWchH3MFQTX1amo1bUn4', NULL, '2804:14c:bf59:82af:2830:4297:ce77:33d6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3VHNmdkZGpCdG5qTjZaNnpqVVBMdm9DUWM2dmZQbjBlMTcxVXZiRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9zZXB3ZWIuZGV2Lz9pPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1785500392),
('HY2LKD6IFpC1QY9QWtW0UFd1BXdaqN2mxxMQom00', NULL, '2409:4080:9587:b0b9:6094:15ea:fcd1:7413', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidURSTWNOSVZ0SlZUdDRLbTdKRmRFTVp0cUp6WjlON1ZxNXVLTmZzViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785426925),
('IX2eyq0IjdN4ea7q4f5ngDZ069fuksjhrjHR75GJ', NULL, '174.92.182.89', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEEzMXM1RERHYTVUQWFveWt4d2dGaWl4Y281OFZVWjFFNTN3MGdxYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9zZXB3ZWIuZGV2Lz9pPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1785221042),
('JiTA4Y081byHTyRrjsZe6EJ8roIyGPREmj1t0AMF', NULL, '73.46.205.28', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE1KVG9aNU13T3E1emYyZE93a3ZaV3dxSnlwMzgxcVlrWkJlWFN6VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785506473),
('jTDQ738QkOj5vQhWfnaG2HdqfRdOCp74ybc1YNE6', NULL, '2001:41d0:203:79f::', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1Nsdm5ScTBDcHl0Q2F2M09JendoYm9VampneHBZNEprRGhTRm5uMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9zZXB3ZWIuZGV2Lz9pPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1785692787),
('kAE2NTJ6VhoqWKlDwXujRvBSuPGbuUOtTsxdskaF', NULL, '157.55.39.57', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDVKOFk0ZTRrOTRtSnFtdVFLYmVValFlSkI0ZXdHTnBpMFBjakpVUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785576314),
('l3BJkLhHScmPhsZIwx9zLMqX4a9EQFbuV13dax15', NULL, '66.249.74.164', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDhCWVF2Z1BGNGh0WVN4aDNpNzd1YjZXTTNZMkFLQ3c4aU1tZFZ1eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785584695),
('MiNaLCXKRVavzLUPRbSoOAnGkqwgUMKZm6X83vhH', NULL, '107.115.227.19', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFRlOHphVU9RMHliSU11YTlrT2FyajBPUDRoRndiS0hIZERqVXhHNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9zZXB3ZWIuZGV2L3Byb2plY3QvbWVlcmthdC1naXJsLnRva3lvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785440530),
('mRRcEDH1SWwSY8MtlRSNFzCSeTx2lk30USde8cZl', NULL, '40.77.167.30', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1RZRjlrMWRJbTlzV2k0dGhibERoVk53YjdzeVF1SDR5cVBISW1sNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785322622),
('mXly31SMIiuR8Nk9rM8BClnhSt9rK5spKDn3dTod', NULL, '38.60.166.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU03NkdyRnNrWWV0aFhYZHlha3dNQWdDWEE3bXp3Q1JvdXRWNjFyMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9zZXB3ZWIuZGV2Lz9pPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1785487653),
('NCrrAPHIXLoaQPHL0IelEeoM4XSmOCkupMOADImD', NULL, '52.167.144.214', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFpOOHh0ZlRmUWRQQVFSM2NFNUJFMzBwWDNSQTBmcmhzNjdqU25ndCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785097610),
('ptv0egcPebn2qjGvTueEJa7jXwLpORMPLVPfI99z', NULL, '66.249.73.66', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.7871.186 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3J2QlEzNVRXbk1WV2tTRHpRMDFEZzRucFNHa0xSU2NGcGc1WFA4QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785821290),
('qoTWJUb2Bjr6Rc7BRcDMuqOy8hcRVduVEVjdAtKs', NULL, '66.249.74.163', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.7871.186 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1dsQmxTVGZ2eVB5WFdmdEZieDdHM3c1RUJuRjZ4QTV1enpxYlJydSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785429717),
('r18E18RdZTuA7jGLb9FAADEt4UM36DDz2i6h5ZC5', NULL, '66.249.73.73', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1JSUFlpYkpISm1kMHg1RUhuVWVPNFNBdDhWV2lHNUsycE1wUjB4YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785827856),
('rdf5jdsUq9bCk1PckpCMVP1e20jjko5CSH8IZt8Q', NULL, '73.46.205.28', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzByMnRlZXVhQzVzSWZXdXRaSmRwWHFpS29ycWpINTRQcHFWYzRSbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785515105),
('t51PgbRrH3AEjzE0bf8oj38ArOgGBzXxaTIwkFBh', NULL, '66.249.73.71', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzFRdjZub3lmeTM2b2JwUE8zRVdGYlNVWHc1aVFsWmJEOWVQVlhpYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785249574),
('TyZHfbxQVuvruV2GZzBGj17fOG2S2Wvi6fa65BiB', NULL, '17.241.227.96', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejIwVXBDbnR4OTZsdlZsMUFoZDdKOVYxYVNhSzJ5dmFwb3g2bE1iRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9zZXB3ZWIuZGV2L3Byb2plY3Qvc2hvdyUyMG1lJTIwdGhlJTIwd29ybGQ/aT0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785691555),
('uIKCDX04Z3hwClfXALesxCaNiyAmdP7bOFlcsq5f', NULL, '66.249.74.163', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXVJRGdxTWxJZjFTa2FPRWxjQURMNkRoM0pkRHY4OWUxVlgwcVlGQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785429868),
('VGDPST55UD9M1a84QJGhZfZ1ztXgGFl0LQi3hJ10', NULL, '66.249.73.72', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.7871.186 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE5RM09SUXdTT3NTQ0JwdVJKb2xQQnViQmJmN3dxTlpTbzl5c1lwMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785825790),
('w9OLflT7jWAcInxidmJ95CMcrk50tt4HAb5rx96C', NULL, '34.96.52.107', 'Python/3.11 aiohttp/3.13.5', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3dQMFdJQVJWM2ZrYUNFazk1QTZkR2JnRnd3V2hwbTYzUGEzYXZ3VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785505387),
('YHjrVB01ZIkTatP8pEHEYe3MVqRFjWOVz7dpli5y', NULL, '66.249.74.164', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.7871.186 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHFwYmFiaDlWMzVKekxnU2Y2alZNNVhXOFhXTk1wVXBBN1UxVnlscSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly93d3cuc2Vwd2ViLmRldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1785584504),
('yZgnUa8d3Nm8VBrRfjbt8V0rKuGtNhWTS4BG06Ym', NULL, '66.249.73.71', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVU2ZldwdmNHd2xyenBHY3FFOWhLakpSeUlVcjV0dlBqNVNsVlVqOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9zZXB3ZWIuZGV2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1785249574);

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
(1, 'sep', 's.elliot.perez@gmail.com', NULL, '$2y$12$FwH71APyj2HW4SWcbbdvou1FyHJ1pqS/8bJr6/jHdMDYOD0K4qQL2', NULL, '2024-09-18 04:25:06', '2024-09-18 04:25:06');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
