-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2017 at 05:38 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ricdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` int(11) UNSIGNED NOT NULL,
  `car_no` varchar(200) NOT NULL,
  `cantact` int(200) NOT NULL,
  `hospital_id` int(100) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`id`, `car_no`, `cantact`, `hospital_id`, `location_id`) VALUES
(1, 'ktm-18727', 0, NULL, NULL),
(2, 'jnk-3766', 98374755, NULL, NULL),
(3, 'dhm-23232', 980873727, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `specialist` varchar(200) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `contact` int(20) NOT NULL,
  `h_id` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `name`, `specialist`, `degree`, `contact`, `h_id`) VALUES
(1, 'Bijay Kr. Yadav', 'Surgeon', 'MBBS', 1987430393, NULL),
(2, 'DKM', 'general', 'MBBS', 989898, NULL),
(3, 'RKS', 'jj', 'mb', 3939, NULL),
(4, 'MD', 'jj', 'jjj', 9889, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointment`
--

CREATE TABLE `doctor_appointment` (
  `id` int(11) UNSIGNED NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_appointment`
--

INSERT INTO `doctor_appointment` (`id`, `start_time`, `end_time`, `doctor_id`, `hospital_id`) VALUES
(1, '2017-08-17 05:23:02.000000', '2017-08-16 16:44:44.000000', NULL, NULL),
(2, '2017-08-17 03:33:33.000000', '2017-08-09 16:44:04.000000', NULL, NULL),
(3, '2017-08-17 03:33:33.000000', '2017-08-09 16:44:04.000000', NULL, NULL),
(4, '2017-08-17 03:33:33.000000', '2017-08-09 16:44:04.000000', NULL, NULL),
(5, '2017-08-09 04:54:04.000000', '2017-08-16 15:22:02.000000', NULL, NULL),
(6, '2017-08-17 04:33:33.000000', '2017-01-31 14:23:03.000000', NULL, NULL),
(7, '2017-08-15 03:33:33.000000', '2017-08-15 16:44:44.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` enum('University','Collage','High School','Primary School','Kindergarten','Mass Media','Open Education','Training Center','Public Library','Bookshop') NOT NULL,
  `contact` int(20) NOT NULL,
  `information` varchar(500) NOT NULL,
  `url` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `govoffice`
--

CREATE TABLE `govoffice` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(600) DEFAULT NULL,
  `contact` int(20) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `location_id` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `govoffice`
--

INSERT INTO `govoffice` (`id`, `type`, `contact`, `details`, `image`, `url`, `location_id`, `created_at`, `updated_at`) VALUES
(8, 'm', 55, 'dd', 'ofimages.jpg', 'jj', NULL, '2017-08-25 14:37:15', '2017-08-25 14:37:15'),
(9, 'aa', 333, 'fdd', 'Aayush.jpg', 'dfdd', NULL, '2017-08-25 14:42:59', '2017-08-25 14:42:59'),
(10, 'kk', 9889, 'hhhggh', '20376110_1454248111307134_3025402446522494489_n.jpg', 'ggg', NULL, '2017-08-27 03:54:07', '2017-08-27 03:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` int(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `contact`, `url`, `details`, `location_id`) VALUES
(4, 'KMC', 1887430393, 'www.kmc.com', 'Khulna Bangladesh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_has_doctor`
--

CREATE TABLE `hospital_has_doctor` (
  `id` int(11) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_cafe_restaurant`
--

CREATE TABLE `hotel_cafe_restaurant` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` enum('Hotel','Cafeteria','Restaurant','Casino','Bar') NOT NULL,
  `cost_level` enum('High','Medium','Low','Fare') NOT NULL,
  `contact` int(20) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `url` varchar(50) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `country_code` int(11) NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_region` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `country_code`, `country`, `city_region`, `zip`, `created_at`, `updated_at`) VALUES
(1, 88, 'Bangladesh', 'Khulna', 9208, '2017-08-25 05:09:32', '2017-08-25 05:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `location_id` int(11) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(3, '2017_03_25_200337_create_locations_table', 1),
(4, '2017_09_02_073629_create_registers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(600) NOT NULL,
  `type` varchar(128) DEFAULT NULL,
  `url` varchar(500) NOT NULL,
  `photo` varchar(600) DEFAULT NULL,
  `visit_count` bigint(191) NOT NULL DEFAULT '0',
  `created_at` varchar(191) DEFAULT NULL,
  `updated_at` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `name`, `type`, `url`, `photo`, `visit_count`, `created_at`, `updated_at`) VALUES
(3, 'Prothom Alo', 'Bangla', 'http://www.prothom-alo.com', 'prothomAlo.png', 19, '2017-05-22 20:42:05', '2017-09-05 14:38:06'),
(6, 'BdNews24.com', 'Bangla', 'http://bangla.bdnews24.com', 'banglanews.png', 15, '2017-07-15 17:12:09', '2017-08-09 04:30:19'),
(7, 'BD24live.com', 'Bangla', 'http://www.bd24live.com', 'bd24live.jpg', 0, '2017-07-17 17:01:11', '2017-07-17 17:01:11'),
(8, 'Ittefaq', 'Bangla', 'http://www.ittefaq.com.bd/', 'ittefaq.jpg', 0, '2017-07-18 05:08:02', '2017-07-18 05:08:02'),
(10, 'Samakal', 'Bangla', 'http://www.24livenewspaper.com/site/?url=bangla.samakal.net/', 'samakal.jpg', 0, '2017-07-18 05:35:22', '2017-07-18 05:35:22'),
(11, 'Kalerkanto', 'Bangla', 'http://www.kalerkantho.com', 'kalerkantho.png', 0, '2017-08-01 05:13:27', '2017-08-01 05:13:27'),
(12, 'Bangladesh Pratidin', 'Bangla', 'http://www.bd-pratidin.com', 'main_logo (1).gif', 0, '2017-08-01 05:21:17', '2017-08-01 05:21:17'),
(13, 'Daily Inquilab', 'Bangla', 'https://www.dailyinqilab.com', 'inqualib.png', 0, '2017-08-01 05:24:48', '2017-08-01 05:24:48'),
(14, 'Daily Mnabkantha', 'Bangla', 'http://www.manobkantha.com', 'Manabkantha.png', 0, '2017-08-01 05:28:23', '2017-08-01 05:28:23'),
(15, 'Alokito bangla', 'Bangla', 'http://www.alokitobangladesh.com', 'ALOKITO BANGLA.png', 0, '2017-08-01 05:34:04', '2017-08-01 05:34:04'),
(16, 'Dalily Nayadiganto', 'Bangla', 'http://www.dailynayadiganta.com', 'nayadiganto.png', 0, '2017-08-01 05:39:53', '2017-08-01 05:39:53'),
(17, 'Bonikbarta', 'Bangla', 'http://bonikbarta.net/bangla', 'bonik barta.png', 1, '2017-08-01 05:45:35', '2017-08-06 04:06:39'),
(18, 'Daly Jugantor', 'Bangla', 'http://www.jugantor.com', 'Jugantor.jpg', 0, '2017-08-01 05:48:47', '2017-08-01 05:48:47'),
(19, 'Daily Bhorerdak', 'Bangla', 'http://bhorer-dak.com', 'Daily Bhorerdak.jpg', 0, '2017-08-01 05:53:06', '2017-08-01 05:53:06'),
(20, 'Daily Sangram', 'Bangla', 'http://www.dailysangram.com', 'Daily Songram.jpg', 0, '2017-08-01 06:20:05', '2017-08-01 06:20:05'),
(21, 'Daily Maabjamin', 'Bangla', 'http://www.mzamin.com', 'Daily Manobjamin.png', 1, '2017-08-01 06:26:01', '2017-08-06 04:06:45'),
(22, 'Gonokantho', 'Bangla', 'http://www.gonokantho.com/', 'gonokontho.jpg', 0, '2017-08-01 06:37:58', '2017-08-01 06:37:58'),
(23, 'OneNews', 'National', 'http://www.1newsbd.com/', 'onenews.png', 0, '2017-08-04 12:42:22', '2017-08-04 12:42:22'),
(24, 'abnews24', 'National', 'http://www.abnews24.com/', 'abnews.jpg', 3, '2017-08-04 12:43:29', '2017-08-06 03:08:37'),
(25, 'abnews24bd', 'National', 'http://www.abnews24bd.com/', 'abnews.jpg', 1, '2017-08-04 12:45:48', '2017-08-06 02:26:24'),
(26, 'Abnworld', 'National', 'http://abnworld.com/', 'abnworld.jpg', 1, '2017-08-04 12:50:52', '2017-08-06 02:26:26'),
(27, 'Arthosuchak', 'National', 'http://www.arthosuchak.com', 'aurthosuchoke.jpg', 2, '2017-08-04 12:57:38', '2017-08-19 09:54:18'),
(28, 'Bangla-barta', 'National', 'http://bangla-barta.com/', 'bangalbarta.gif', 2, '2017-08-04 13:00:09', '2017-08-19 09:54:22'),
(29, 'Banglainsider', 'National', 'http://www.banglainsider.com/', 'banglainsider.jpg', 4, '2017-08-04 13:04:15', '2017-08-06 03:37:00'),
(30, 'Bangla.24livenewspaper.', 'National', 'http://www.bangla.24livenewspaper.com/', 'newspaper.png', 3, '2017-08-04 13:12:25', '2017-08-06 03:11:42'),
(31, 'Anandabazar', NULL, 'http://www.anandabazar.com/', 'anand.jpg', 1, '2017-08-04 13:16:26', '2017-08-06 02:32:55'),
(32, 'Priyo', 'International', 'https://www.priyo.com/', 'Priyo.jpg', 4, '2017-08-04 13:21:57', '2017-08-09 04:45:05'),
(33, 'Jagonews24', 'International', 'https://www.jagonews24.com/', 'jago-news.jpg', 2, '2017-08-04 13:25:56', '2017-08-06 03:23:37'),
(34, 'techtunes', 'Technology', 'http://www.techtunes.com.bd/', 'techtunes.png', 1, '2017-08-04 13:38:12', '2017-08-06 02:39:01'),
(35, 'Tunerpage', 'Technology', 'http://tunerpage.com/', 'tunerpage.png', 1, '2017-08-04 13:40:29', '2017-08-06 02:39:04'),
(38, 'The Daily Star', 'English', 'http://www.thedailystar.net', 'Daily Star.jpg', 0, '2017-08-06 04:11:58', '2017-08-06 04:11:58'),
(39, 'The Daily Sun', 'English', 'http://www.daily-sun.com', 'Daily Sun.jpg', 0, '2017-08-06 04:12:56', '2017-08-06 04:12:56'),
(40, 'The Financial Express', 'English', 'http://www.thefinancialexpress-bd.com', 'Financial Express.jpg', 0, '2017-08-06 04:21:39', '2017-08-06 04:21:39'),
(41, 'The New Age', 'English', 'http://newagebd.net', 'The New Age.jpg', 2, '2017-08-06 04:22:44', '2017-08-09 04:39:37'),
(42, 'The Daily Observer', 'English', 'http://www.observerbd.com/', 'The Daily Observer.jpg', 1, '2017-08-06 04:27:49', '2017-08-06 04:33:01'),
(43, 'The New Nation', 'English', 'http://www.thedailynewnation.com', 'The New Nation.jpg', 0, '2017-08-06 04:31:50', '2017-08-06 04:31:50'),
(44, 'DAWN', 'INTERNATIONAL', 'https://www.dawn.com/newspaper/international', 'DAWNnewspaper.jpg', 0, '2017-08-06 04:45:25', '2017-08-06 04:45:25'),
(45, 'The Telegraph', 'International', 'http://www.telegraph.co.uk', 'telegram.jpg', 0, '2017-08-06 05:02:51', '2017-08-06 05:02:51'),
(46, 'The New York Times', 'Internatioal', 'https://www.nytimes.com', 'newyork.jpg', 0, '2017-08-06 05:06:46', '2017-08-06 05:06:46'),
(47, 'The NewYourk Times', 'International', 'https://www.nytimes.com', 'newyork.jpg', 0, '2017-08-06 05:09:06', '2017-08-06 05:09:06'),
(48, 'The Gurdian', 'International', 'https://www.theguardian.com/uk', 'Guardian.jpg', 0, '2017-08-06 05:25:05', '2017-08-06 05:25:05'),
(49, 'The Daily Mail', 'International', 'http://www.dailymail.co.ukhome', 'daily mail.jpg', 0, '2017-08-06 05:28:20', '2017-08-06 05:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `non_gov_org`
--

CREATE TABLE `non_gov_org` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(600) DEFAULT NULL,
  `contact` int(20) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ajay Kumar Yadav', 'ajau43@gmail.com', '1504518191.jpg', '$2y$10$aRXvKA/8ZOHjwKkbeylhzuNbUrwk2Zgur0wIe3N7ydV4Il7O2Q5Xi', 'FGIngi6lyL4YTibZYOEtdkKYBqEIHwYmaS6cBbYNmllnIdyHykiKY4JprqhI', '2017-09-02 09:23:31', '2017-09-04 03:43:12'),
(2, 'Bijay Kumar Yadav', 'bijayinfo@gmail.com', '1504518357.jpg', '$2y$10$GalvUcxH9L4SoG5y7xNLeuGbqXfzkrh.OwrUiTU1OuJHzC3d5Rfju', 'qbEKuKLJHroFik8g4ZFKx1yICdejEV7fohNPbQUdgpmtstzzoX01nuNP5V3o', '2017-09-03 17:49:29', '2017-09-04 03:45:57'),
(3, 'Binayak Ray', 'binayakinfo@gmail.com', '1504622913.png', '$2y$10$EdhzaxMpJkdXy6GZHBAJ7.MX1Q3RxsTYX8E6YqFMJOa722shsI6Py', NULL, '2017-09-05 08:46:57', '2017-09-05 08:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `travels_tours`
--

CREATE TABLE `travels_tours` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` enum('Rent a care','Tourism Organization','Bus Stoppage') NOT NULL,
  `contact` int(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `url` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`);

--
-- Indexes for table `doctor_appointment`
--
ALTER TABLE `doctor_appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`,`hospital_id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `govoffice`
--
ALTER TABLE `govoffice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `hospital_has_doctor`
--
ALTER TABLE `hospital_has_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `hospital_id` (`hospital_id`),
  ADD KEY `doctor_id_2` (`doctor_id`);

--
-- Indexes for table `hotel_cafe_restaurant`
--
ALTER TABLE `hotel_cafe_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `locations_zip_unique` (`zip`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `register_users`
--
ALTER TABLE `register_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `register_users_email_unique` (`email`);

--
-- Indexes for table `travels_tours`
--
ALTER TABLE `travels_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `doctor_appointment`
--
ALTER TABLE `doctor_appointment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `govoffice`
--
ALTER TABLE `govoffice`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hospital_has_doctor`
--
ALTER TABLE `hospital_has_doctor`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hotel_cafe_restaurant`
--
ALTER TABLE `hotel_cafe_restaurant`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `market`
--
ALTER TABLE `market`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `non_gov_org`
--
ALTER TABLE `non_gov_org`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `travels_tours`
--
ALTER TABLE `travels_tours`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD CONSTRAINT `ambulance_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_appointment`
--
ALTER TABLE `doctor_appointment`
  ADD CONSTRAINT `doctor_appointment_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_appointment_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`docid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD CONSTRAINT `hospitals_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hospital_has_doctor`
--
ALTER TABLE `hospital_has_doctor`
  ADD CONSTRAINT `hospital_has_doctor_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_has_doctor_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`docid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel_cafe_restaurant`
--
ALTER TABLE `hotel_cafe_restaurant`
  ADD CONSTRAINT `hotel_cafe_restaurant_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `market`
--
ALTER TABLE `market`
  ADD CONSTRAINT `market_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `travels_tours`
--
ALTER TABLE `travels_tours`
  ADD CONSTRAINT `travels_tours_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
