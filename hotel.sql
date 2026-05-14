-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2025 at 02:48 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

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
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add booking', 7, 'add_booking'),
(26, 'Can change booking', 7, 'change_booking'),
(27, 'Can delete booking', 7, 'delete_booking'),
(28, 'Can view booking', 7, 'view_booking'),
(29, 'Can add custom user', 8, 'add_customuser'),
(30, 'Can change custom user', 8, 'change_customuser'),
(31, 'Can delete custom user', 8, 'delete_customuser'),
(32, 'Can view custom user', 8, 'view_customuser');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$Llc9RbuP09urreqqIzrzCq$9HAPpIkQFQq8d98dN2XdTxc6pEXgWRAjLysTMLBOOLg=', '2025-03-08 02:45:46.675266', 1, 'vatsal', '', '', 'gajeravatsal12@gmail.com', 1, 1, '2025-03-06 14:27:31.616203'),
(10, 'pbkdf2_sha256$870000$gTizj2Vy6CznA9EVy1Wiff$jLnsdWMDPlX2ONKeiY7fN59NMEJm3YVT+UTh29A1EqI=', '2025-03-07 03:43:50.766942', 0, 'shivam1', 'Shivam', 'Gajera', 'srgajera4@gmail.com', 0, 1, '2025-03-07 03:43:36.260602'),
(11, 'pbkdf2_sha256$870000$LMKb14lMkqQ2M6zAMrWubE$ZkC/4etFkyOWNQbSbtBNrAeqi7BRsfmDm1SqBGNKbpI=', '2025-03-08 02:45:12.618660', 0, 'vatsal29', 'Vatsal', 'Gajera', 'vgajera2005@gmail.com', 0, 1, '2025-03-07 03:54:50.465456'),
(12, 'pbkdf2_sha256$870000$j4uWBbHpfTjL23I7LpcnUR$rEmyGaZk0YnNmdClPltgAJQshKSMkDJ40O27ImS5eIM=', '2025-03-07 04:03:39.364414', 0, 'yuvraj07', 'Yuvraj', 'Rabadiya', 'yuvraj@gmail.com', 0, 1, '2025-03-07 03:55:27.436820'),
(13, 'pbkdf2_sha256$870000$kcoNrgCZYp5nFsiPxrch0O$A7QYarkWUXb1pqEB0zphzLAulHX8q1Fq+UIxrFW4V3c=', '2025-03-07 04:05:42.381335', 0, 'kayum47', 'Kayum', 'Parmar', 'kayum47@gmail.com', 0, 1, '2025-03-07 03:55:40.605244'),
(14, 'pbkdf2_sha256$870000$AAVXhYUZRAxxz8M6vawIiX$Rn8o5pAO8B9MO3JKc0njXIwx3v2GfhPqLLIzXzpxUzY=', '2025-03-07 04:01:57.066810', 0, 'neil7', 'Neil', 'Ambaliya', 'neil2226@gmail.com', 0, 1, '2025-03-07 03:56:04.709537'),
(15, 'pbkdf2_sha256$870000$4H9Uv3645uJWz78YxOnNzr$2WYzxxYASc9LiyLnB8+xRW22gYPr1XyHBP4syaj/WNI=', '2025-03-07 04:04:59.121007', 0, 'sagar6', 'Sagar', 'Solanki', 'sagar6@gmail.com', 0, 1, '2025-03-07 03:56:37.121824'),
(16, 'pbkdf2_sha256$870000$XKLzXvM1GnscRFBAp9gckQ$+xItuoACB80j1tL2aDxgTk0vaBP1X4ujlWssUWFKpwo=', '2025-03-07 04:07:47.956034', 0, 'meat60', 'Meet', 'Vekariya', 'meetudon@gmail.com', 0, 1, '2025-03-07 03:57:55.100483'),
(17, 'pbkdf2_sha256$870000$aPHcnh9Sf92r0VkEq8ciIZ$aWZDg+Ps5BYhjoi4mpLTg+TjNGee8kcUWuHNPyVdhQc=', '2025-03-07 04:06:23.947489', 0, 'jay22', 'Jay', 'Varun', 'jayvarun@gmail.com', 0, 1, '2025-03-07 03:58:25.435542'),
(18, 'pbkdf2_sha256$870000$8kSVwCGG4DDfaB0qaMloDA$DVPmvNhykaY4O+xHHzPGr4cO54h0Ah8P0jEX38JautY=', '2025-03-07 04:09:16.673197', 0, 'gavo1', 'Gaurav', 'Devara', 'gavo@gmail.com', 0, 1, '2025-03-07 03:59:09.868177'),
(19, 'pbkdf2_sha256$870000$8cbu1XBYEUK8EM2iCJY7OD$OMD3pt6f58nN2SPwpF2kK0I/83PzPukVb1bw0NoU8NU=', '2025-03-07 04:08:30.193355', 0, 'mithudon', 'Meet', 'Mandaviya', 'meetudon11@gmail.com', 0, 1, '2025-03-07 04:01:30.825553'),
(20, 'pbkdf2_sha256$870000$0E9xWEtHcxiYkSLplbLMpJ$Rcwl70vCs7TeAcn+W2vjKhjJbfVKtQqFRZOke2SgS4U=', '2025-03-07 04:28:08.255071', 0, '6gun', 'Chhagan', 'Chhatri', '6gun@gmail.com', 0, 1, '2025-03-07 04:27:57.612178');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'HotelApp', 'booking'),
(8, 'HotelApp', 'customuser'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'HotelApp', '0001_initial', '2025-03-06 14:26:14.998564'),
(2, 'HotelApp', '0002_booking_is_paid_booking_status', '2025-03-06 14:26:15.125380'),
(3, 'contenttypes', '0001_initial', '2025-03-06 14:26:15.275234'),
(4, 'auth', '0001_initial', '2025-03-06 14:26:16.585529'),
(5, 'admin', '0001_initial', '2025-03-06 14:26:16.952104'),
(6, 'admin', '0002_logentry_remove_auto_add', '2025-03-06 14:26:16.969063'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-06 14:26:16.992993'),
(8, 'contenttypes', '0002_remove_content_type_name', '2025-03-06 14:26:17.172514'),
(9, 'auth', '0002_alter_permission_name_max_length', '2025-03-06 14:26:17.324109'),
(10, 'auth', '0003_alter_user_email_max_length', '2025-03-06 14:26:17.387940'),
(11, 'auth', '0004_alter_user_username_opts', '2025-03-06 14:26:17.404893'),
(12, 'auth', '0005_alter_user_last_login_null', '2025-03-06 14:26:17.542527'),
(13, 'auth', '0006_require_contenttypes_0002', '2025-03-06 14:26:17.547513'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2025-03-06 14:26:17.558481'),
(15, 'auth', '0008_alter_user_username_max_length', '2025-03-06 14:26:17.696114'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2025-03-06 14:26:17.840728'),
(17, 'auth', '0010_alter_group_name_max_length', '2025-03-06 14:26:17.886607'),
(18, 'auth', '0011_update_proxy_permissions', '2025-03-06 14:26:17.904555'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2025-03-06 14:26:18.052163'),
(20, 'sessions', '0001_initial', '2025-03-06 14:26:18.217720'),
(21, 'HotelApp', '0003_customuser', '2025-03-07 03:31:48.310342');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ezfo6t875mec1twe2ekqjyeenyusb2i5', '.eJxVjEEOwiAQRe_C2hBKaae4dO8ZyDDMSNVAUtqV8e7apAvd_vfef6mA25rD1ngJc1JnZdXpd4tIDy47SHcst6qplnWZo94VfdCmrzXx83K4fwcZW_7WPXkBA2iMOONkMtI7iYONNDI4A31HmIQJCQVwIOoYJuuAvUsYR6_eH_PfOL4:1tqOHY:SwRYue-TE3zk9p8Gtj1Jze_GN4Rng_03Ik3ATrISkGY', '2025-03-21 03:21:52.512895'),
('wojoue97o4x471lcipz4dhou1cmtix0i', '.eJxVjEsOwiAUAO_C2hA-fQVcuu8ZyIMHUjWQlHZlvLsh6UK3M5N5M4_HXvzR0-ZXYlcm2eWXBYzPVIegB9Z747HVfVsDHwk_bedLo_S6ne3foGAvY5s1AUwkMVipMkgjBKToAI1ShM4GcgknyHOEoA0IdNJF0HbGpCIh-3wB3A03_A:1tqkCA:GZsoS3pJSWYLi86Pdu4gpufIbwTBb6hp5fk_2XQbd-4', '2025-03-22 02:45:46.683317');

-- --------------------------------------------------------

--
-- Table structure for table `hotelapp_booking`
--

CREATE TABLE `hotelapp_booking` (
  `id` bigint NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `email_id` varchar(254) NOT NULL,
  `country` varchar(255) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotelapp_booking`
--

INSERT INTO `hotelapp_booking` (`id`, `first_name`, `last_name`, `gender`, `mobile_number`, `email_id`, `country`, `check_in`, `check_out`, `room_type`, `total_amount`, `is_paid`, `status`) VALUES
(3, 'Kayum', 'Parmar', 'Male', '9526985698', 'kayum47@gmail.com', 'India', '2025-03-15', '2025-03-25', 'Exclusive', 80000.00, 1, 'Accepted'),
(4, 'Shivam', 'Gajera', 'Male', '9016740922', 'srgajera4@gmail.com', 'India', '2025-03-16', '2025-03-26', 'Exclusive', 80000.00, 1, 'Accepted'),
(5, 'Neil', 'Ambaliya', 'Male', '1232123121', 'neil2226@gmail.com', 'India', '2025-03-09', '2025-03-27', 'Exclusive', 144000.00, 1, 'Accepted'),
(6, 'Vatsal', 'Gajera', 'Male', '9526985698', 'vgajera2005@gmail.com', 'India', '2025-03-23', '2025-03-26', 'Superior', 15000.00, 1, 'Accepted'),
(7, 'Yuvraj', 'Rabadiya', 'Male', '8866112311', 'yuvraj@gmail.com', 'India', '2025-03-08', '2025-03-28', 'Deluxe', 40000.00, 0, 'Accepted'),
(8, 'Sagar', 'Solanki', 'Male', '8866112311', 'sagar6@gmail.com', 'India', '2025-03-29', '2025-03-31', 'Luxury', 20000.00, 0, 'Pending'),
(10, 'Jay', 'Varun', 'Male', '2345678976', 'jayvarun@gmail.com', 'India', '2025-03-22', '2025-03-27', 'Superior', 25000.00, 0, 'Accepted'),
(12, 'Meet', 'Vekariya', 'Male', '0987654324', 'meetudon@gmail.com', 'India', '2025-03-21', '2025-03-26', 'Exclusive', 40000.00, 0, 'Accepted'),
(14, 'Gaurav', 'Devara', 'Male', '0987654356', 'gavo@gmail.com', 'India', '2025-03-22', '2025-03-27', 'Deluxe', 10000.00, 0, 'Pending'),
(16, 'Vatsal', 'Gajera', 'Male', '9723140922', 'vgajera2005@gmail.com', 'India', '2025-03-14', '2025-03-26', 'Exclusive', 96000.00, 0, 'Accepted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `hotelapp_booking`
--
ALTER TABLE `hotelapp_booking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `hotelapp_booking`
--
ALTER TABLE `hotelapp_booking`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
