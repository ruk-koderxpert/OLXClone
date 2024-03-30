-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 01:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olx`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add item', 7, 'add_item'),
(26, 'Can change item', 7, 'change_item'),
(27, 'Can delete item', 7, 'delete_item'),
(28, 'Can view item', 7, 'view_item'),
(29, 'Can add contact', 8, 'add_contact'),
(30, 'Can change contact', 8, 'change_contact'),
(31, 'Can delete contact', 8, 'delete_contact'),
(32, 'Can view contact', 8, 'view_contact');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$XKHhZzA4ly4dFQuFMMkcok$lfwDJ+IIxfSrBl/bDivr9aiCS3wOO7fTXamKKlg5o4I=', '2022-02-10 14:43:09.995316', 0, 'abcd', 'abcd', 'abcd', 'abcd@gmail.com', 0, 1, '2022-02-08 15:22:13.318337'),
(3, 'pbkdf2_sha256$260000$T4LRbIf5unGHBMNpg0o68K$1DgCDK3KtA6Q8nVz4NsmaTjogopCjPPvHu5D/VJDf48=', '2022-03-09 02:40:41.368460', 0, 'sujil', 'sujil', 'ponkiya', 'sujil@gmail.com', 0, 1, '2022-02-20 06:53:56.726750'),
(6, 'pbkdf2_sha256$260000$yrhPD7z3UXj1RS0Iou8tYU$I8eWnJZ67xREzINPSG/hB5Cko//xYAxNaBmyCx71uWg=', '2022-03-14 04:16:53.525070', 1, 'abcdefg', '', '', 'abcdefg@gmail.com', 1, 1, '2022-03-07 12:52:36.873650'),
(7, 'pbkdf2_sha256$260000$PYCgYa7lLT3CEIDjMLltPD$ZOkgXONZIjdWbyEJRFnxHPS4E+H/wdNonEqoKg61EkQ=', '2022-03-19 04:31:42.610037', 0, 'jaivin', 'Jaivin', 'Domadiya', 'jaivindomadiya@gmail.com', 0, 1, '2022-03-07 12:55:12.737213');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-03-07 12:54:10.571363', '2', 'jaivin', 3, '', 4, 6),
(2, '2022-03-14 03:32:38.043572', '4', 'Item object (4)', 3, '', 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'navigation', 'contact'),
(7, 'seller', 'item'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-08 15:20:28.339631'),
(2, 'auth', '0001_initial', '2022-02-08 15:20:37.073767'),
(3, 'admin', '0001_initial', '2022-02-08 15:20:39.315568'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-08 15:20:39.368080'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-08 15:20:39.418309'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-08 15:20:40.225910'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-08 15:20:40.976947'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-08 15:20:41.126920'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-08 15:20:41.206352'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-08 15:20:42.059178'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-08 15:20:42.123891'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-08 15:20:42.184900'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-08 15:20:42.297756'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-08 15:20:42.409642'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-08 15:20:42.561819'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-08 15:20:42.636574'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-08 15:20:42.826481'),
(18, 'navigation', '0001_initial', '2022-02-08 15:20:43.086691'),
(19, 'seller', '0001_initial', '2022-02-08 15:20:43.392260'),
(20, 'seller', '0002_item_city', '2022-02-08 15:20:43.575797'),
(21, 'seller', '0003_auto_20210311_2209', '2022-02-08 15:20:43.738025'),
(22, 'seller', '0004_auto_20210311_2225', '2022-02-08 15:20:44.113002'),
(23, 'seller', '0005_auto_20210331_1803', '2022-02-08 15:20:47.922873'),
(24, 'seller', '0006_auto_20210331_1804', '2022-02-08 15:20:48.158334'),
(25, 'seller', '0007_auto_20210331_1808', '2022-02-08 15:20:49.521780'),
(26, 'seller', '0008_auto_20210331_1817', '2022-02-08 15:20:51.560216'),
(27, 'sessions', '0001_initial', '2022-02-08 15:20:52.376609');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rg1ihi0xebficneah2jr8tjf58lrtm05', '.eJxVjDsOwyAQBe9CHSFg-aZM7zOghcXBSYQlY1dR7h4huUjaNzPvzSIee41HL1tciF2ZYpffLWF-ljYAPbDdV57Xtm9L4kPhJ-18Wqm8bqf7d1Cx11ErYS3CrEp2YBQUQV55maxIGn3yIegZfNDCIKHzybhcpCQLBMIq6djnC83XNw8:1nLgKV:7oRMNVLaj2Elj9nVYEYjjn_0VtbfgVjGtYajm6P9vA8', '2022-03-06 07:08:23.900838'),
('vr6uvpau9a92arruymvv5y2t95jlz52j', '.eJxVjMEOwiAQRP-FsyEL2AU8eu83kIVFqRpISnsy_rtt0oNe5jDvzbxFoHUpYe15DhOLi7Di9NtFSs9cd8APqvcmU6vLPEW5K_KgXY6N8-t6uH8HhXrZ1pnZRoPew5Aynw061Ki1JnCYCAAYbh7UloTolYqOwWUTk7PGkR_E5wvVYjdD:1nVQkg:fz-gu07Le6GcXyUqUHxpP9sZacH-KlT574NDz1Ava98', '2022-04-02 04:31:42.731009'),
('y2cva5aejxg0crrwre87zbuaxxq4diov', '.eJxVjE0OwiAYBe_C2hAoFIhL956BfD8gVQNJaVeNd7dNutDtm5m3iQjrUuLa0xwnFlfhxOV3Q6BXqgfgJ9RHk9TqMk8oD0WetMt74_S-ne7fQYFe9pooGDCDdtng4CCjQT96R3kMPitICpRKmjTsBqOyygabGdAhWWbW4vMF-Y04zw:1nTc8b:mStvTEP7yrEqp7TdGu0JkEjU6gAnFuUTLMkZ4R47Rhk', '2022-03-28 04:16:53.624429');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_contact`
--

CREATE TABLE `navigation_contact` (
  `sno` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `timeStamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seller_item`
--

CREATE TABLE `seller_item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `model_year` varchar(4) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `seller_id_id` int(11) NOT NULL,
  `mo_no` varchar(10) NOT NULL,
  `date` datetime(6) NOT NULL,
  `city` varchar(15) NOT NULL,
  `area` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL
) ;

--
-- Dumping data for table `seller_item`
--

INSERT INTO `seller_item` (`id`, `item_name`, `price`, `model_year`, `photo`, `description`, `seller_id_id`, `mo_no`, `date`, `city`, `area`, `category`) VALUES
(1, 'Honda Shine', 65000, '2018', 'itemImage/1.jfif', 'Model Year = 2018\r\nKM = 12000', 1, '1234567899', '2022-02-08 15:25:30.644227', 'junagadh', 'Vadal', 'bike'),
(2, 'Hundai Verna', 1050000, '2019', 'itemImage/download.jfif', 'Verna S Plus 1.5 VTVT\r\n₹ 9.73 Lakh\r\n1497 cc, Petrol, Manual, 17.7 kmpl', 1, '1234567899', '2022-02-10 14:45:54.612636', 'ahmedabad', 'SG Hiway', 'car'),
(3, 'Swift', 350000, '2018', 'itemImage/capture-a220.jpg', 'Maruti Swift is a 5 seater Hatchback available in a price range of Rs. 5.90 - 8.77 Lakh*. It is available in 9 variants, a 1197 cc, BS6 and 2 transmission options: Manual & Automatic. Other key specifications of the Swift include a kerb weight of 875-905 and boot space of 268 Liters.', 1, '5403154303', '2022-02-16 03:31:50.446007', 'surat', 'Varacha', 'car'),
(5, 'hp', 20000, '2019', 'itemImage/download_8FitACY.jfif', 'hp laptop', 6, '1234567890', '2022-03-14 03:34:09.101980', 'junagadh', 'Vadal', 'laptop');

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
-- Indexes for table `navigation_contact`
--
ALTER TABLE `navigation_contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `seller_item`
--
ALTER TABLE `seller_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_item_seller_id_id_31cb2a8a` (`seller_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `navigation_contact`
--
ALTER TABLE `navigation_contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_item`
--
ALTER TABLE `seller_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for table `seller_item`
--
ALTER TABLE `seller_item`
  ADD CONSTRAINT `seller_item_seller_id_id_31cb2a8a_fk_auth_user_id` FOREIGN KEY (`seller_id_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
