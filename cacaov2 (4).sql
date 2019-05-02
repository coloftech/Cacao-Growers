-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 07:53 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cacaov2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_public` int(1) NOT NULL,
  `unik_id` varchar(14) NOT NULL,
  `used` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mapping`
--

CREATE TABLE `mapping` (
  `crimeLat` varchar(50) NOT NULL,
  `crimeLong` varchar(50) NOT NULL,
  `crimeDate` date NOT NULL,
  `crimeLoc` varchar(50) NOT NULL,
  `crimeDesc` text NOT NULL,
  `crimeIcon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `msg_messages`
--

CREATE TABLE `msg_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `sender_id` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msg_participants`
--

CREATE TABLE `msg_participants` (
  `user_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msg_status`
--

CREATE TABLE `msg_status` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msg_threads`
--

CREATE TABLE `msg_threads` (
  `id` int(11) NOT NULL,
  `subject` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pestdisease`
--

CREATE TABLE `pestdisease` (
  `pestdisease_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `cover` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_publish` int(1) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `approved_by` int(11) NOT NULL,
  `date_publish` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `content`, `cover`, `date_added`, `is_publish`, `posted_by`, `approved_by`, `date_publish`) VALUES
(1, 'Since I\'ve Found', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,\r\n				          pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n				        </p>', '<img src=\"../assets/themes/Company/images/4.jpg\" class=\"img-responsive\" />', '2019-04-21 08:07:16', 0, 0, 0, '2019-04-21 08:16:36'),
(2, 'History of Nothing', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,\r\n				          pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n				        </p>', '<img src=\"../assets/themes/Company/images/4.jpg\" class=\"img-responsive\" />', '2019-04-21 08:07:16', 0, 0, 0, '2019-04-21 08:16:21'),
(3, 'I missed that something', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,\r\n				          pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n				        </p>', '<img src=\"../assets/themes/Company/images/4.jpg\" class=\"img-responsive\" />', '2019-04-21 08:07:16', 0, 0, 0, '2019-04-21 08:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `respondents`
--

CREATE TABLE `respondents` (
  `respondent_id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `age` int(3) NOT NULL,
  `civilstatus` varchar(25) NOT NULL,
  `education` varchar(25) NOT NULL,
  `familysize` int(3) NOT NULL,
  `annualincome` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `province` varchar(10) NOT NULL,
  `date_of_survey` datetime NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `date_last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `token` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents`
--

INSERT INTO `respondents` (`respondent_id`, `fname`, `lname`, `age`, `civilstatus`, `education`, `familysize`, `annualincome`, `address`, `barangay`, `city`, `city_name`, `province`, `date_of_survey`, `date_added`, `added_by`, `updated_by`, `date_last_updated`, `token`) VALUES
(1, 'Olimpio', 'Halasan', 42, 'Married', 'College Graduate', 3, '10,000 below', 'Rizal, Bilar, Bohol, Philippines', '21809', '818', 'Alburquerque', '', '2019-02-21 00:00:00', '2019-02-21 05:27:06', 1, 1, '2019-04-03 08:56:48', '244265ca47550a60ea1.17009853'),
(2, 'Leonida', 'Ancog', 62, ' Married', 'College Graduate', 5, '40,000 and above', 'Duwangon, Zamora, Bilar, Bohol, Philippines', '21815', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 05:41:26', 4, 4, '2019-03-20 01:33:52', ''),
(3, 'Rito', 'Dalagan', 60, 'Married', 'College Graduate', 5, '20,001 to 30,000', 'Zamora, Bilar, Bohol, Philippines', '21815', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 05:47:24', 4, 4, '2019-03-20 01:33:52', ''),
(4, 'Dennis', 'Balakid', 41, ' Single', 'College Graduate', 1, '10,001 to 20,000', 'Owac, Bilar, Bohol, Philippines', '21805', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 05:50:29', 4, 4, '2019-03-20 01:33:52', ''),
(5, 'Fe', 'Salamanca', 71, ' Married', 'College Graduate', 7, '40,000 and above', 'Zamora, Bilar, Bohol, Philippines', '21815', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 06:04:38', 4, 4, '2019-03-20 01:33:52', ''),
(6, 'Getutuane', 'Guadalupe', 41, ' Married', 'College Graduate', 6, '10,000 below', 'Campagao, Bilar, Bohol, Philippines', '21802', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 06:11:20', 4, 4, '2019-03-20 01:33:52', ''),
(7, 'Ma.terissa', 'Tagacanao', 35, ' Married', 'Elementary Graduate', 5, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 06:21:04', 4, 4, '2019-03-20 01:33:52', ''),
(8, 'Glecirio', 'Paluga', 59, ' Married', 'High School Level', 9, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 06:26:42', 4, 4, '2019-03-20 01:33:52', ''),
(9, 'Federico Laso', 'Delavega', 37, ' Married', 'High School Graduate', 4, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 06:37:07', 4, 4, '2019-03-20 01:33:52', ''),
(10, 'Helario', 'Lozano', 54, ' Married', 'High School Level', 5, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 06:44:06', 4, 4, '2019-03-20 01:33:52', ''),
(11, 'Regena', 'Garan', 48, 'Married', 'Post Graduate (MS, PhD)', 1, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', 'undefined', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 06:48:57', 4, 4, '2019-03-20 01:37:28', ''),
(12, 'Ebony', 'Gamelia', 69, ' Married', 'Elementary Graduate', 10, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 07:04:10', 4, 4, '2019-03-20 01:33:52', ''),
(13, 'Cresente', 'Igagamau', 47, ' Married', 'Elementary Level', 7, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 07:20:08', 4, 4, '2019-03-20 01:33:52', ''),
(14, 'Jesus', 'Ponce', 73, ' Married', 'Elementary Level', 7, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 07:48:43', 4, 4, '2019-03-20 01:33:52', ''),
(15, 'Maryjane', 'Oculam', 25, ' Married', 'High School Graduate', 5, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 08:02:37', 4, 4, '2019-03-20 01:33:52', ''),
(16, 'Rosita', 'Garan', 60, ' Married', 'Elementary Graduate', 13, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-21 00:00:00', '2019-02-21 08:06:49', 4, 4, '2019-03-20 01:33:52', ''),
(17, 'Nemesio', 'Gamila', 73, 'Married', 'Elementary Level', 4, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 02:06:22', 4, 4, '2019-03-20 01:33:52', ''),
(18, 'Richard', 'Oculam', 32, ' Single', 'Elementary Graduate', 5, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 02:31:35', 4, 4, '2019-03-20 01:33:52', ''),
(19, 'Rogelio', 'Egagamao', 65, ' Married', 'Elementary Level', 1, '10,001 to 20,000', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 02:46:15', 4, 4, '2019-03-20 01:33:52', ''),
(20, 'Avelio', 'Paluga', 74, 'Married', 'Elementary Graduate', 4, '10,001 to 20,000', 'Villa Suerte, Bilar, Bohol, Philippines', 'undefined', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 03:11:56', 4, 4, '2019-03-20 01:37:28', ''),
(21, 'Enena', 'Daing', 50, ' Married', 'Post Graduate (MS, PhD)', 7, '20,001 to 30,000', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 03:28:19', 4, 4, '2019-03-20 01:33:52', ''),
(23, 'Vina', 'Padron', 47, ' Married', 'High School Level', 14, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 06:12:19', 4, 4, '2019-03-20 01:33:52', ''),
(24, 'Orly', 'Egagamao', 29, ' Married', 'High School Graduate', 6, '10,001 to 20,000', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 06:16:22', 4, 4, '2019-03-20 01:33:52', ''),
(25, 'Oelia', 'Egagamao', 59, ' Married', 'Elementary Graduate', 7, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 06:19:52', 4, 4, '2019-03-20 01:33:52', ''),
(26, 'Estella', 'Dano', 51, ' Married', 'College Graduate', 6, '10,001 to 20,000', 'Campagao, Bilar, Bohol, Philippines', '21802', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 06:25:16', 4, 4, '2019-03-20 01:33:52', ''),
(27, 'Zenaida', 'Dalagan', 54, ' Married', 'Post Graduate (MS, PhD)', 5, '10,001 to 20,000', 'Campagao, Bilar, Bohol, Philippines', '21802', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 06:30:28', 4, 4, '2019-03-20 01:33:52', ''),
(28, 'Pableo', 'Pasagad', 63, ' Married', 'Elementary Level', 6, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-02-23 00:00:00', '2019-02-23 06:36:43', 4, 4, '2019-03-20 01:33:52', ''),
(29, 'Ernesto', 'Pailawan', 58, ' Widow/Widower', 'High School Graduate', 3, '20,001 to 30,000', 'Montesuerte, Carmen, Bohol, Philippines', '21920', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 06:53:22', 4, 4, '2019-03-20 01:33:52', ''),
(30, 'Rosario', 'Andoy', 69, ' Widow/Widower', 'College Graduate', 5, '30,001 to 40,000', 'Calatrava, Carmen, Bohol, Philippines', '21909', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 07:02:04', 4, 4, '2019-03-20 01:33:52', ''),
(31, 'Alfredo', 'Palapar', 47, ' Single', 'College Graduate', 1, '10,001 to 20,000', 'Poblacion Norte, Carmen, Bohol, Philippines', '21927', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 07:11:20', 4, 4, '2019-03-20 01:33:52', ''),
(32, 'Fernando', 'Cortes', 51, ' Married', 'High School Graduate', 7, '40,000 and above', 'Tagaonan, Poblacion Norte, Carmen, Bohol, Philippines', '21927', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 07:19:57', 4, 4, '2019-03-20 01:33:52', ''),
(33, 'Emilio', 'Agbon', 68, ' Married', 'Elementary Level', 7, '40,000 and above', 'Vallehermoso, Carmen, Bohol, Philippines', '21930', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 07:25:05', 4, 4, '2019-03-20 01:33:52', ''),
(34, 'Primina', 'Alboroto', 70, ' Widow/Widower', 'Elementary Graduate', 9, '10,000 below', 'La Salvacion, Carmen, Bohol, Philippines', '21916', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 07:41:47', 4, 4, '2019-03-20 01:33:52', ''),
(35, 'Nestor', 'Anino', 63, ' Married', 'Elementary Graduate', 7, '40,000 and above', 'Montevideo, Carmen, Bohol, Philippines', '21922', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 07:47:29', 4, 4, '2019-03-20 01:33:52', ''),
(36, 'Efren', 'Sarte', 61, ' Married', 'College Graduate', 6, '10,001 to 20,000', 'Vallehermoso, Carmen, Bohol, Philippines', '21930', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 07:52:56', 4, 4, '2019-03-20 01:33:52', ''),
(37, 'Victor', 'Agbon', 34, ' Married', 'College Graduate', 5, '40,000 and above', 'La Salvacion, Carmen, Bohol, Philippines', '21916', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 07:57:20', 4, 4, '2019-03-20 01:33:52', ''),
(38, 'Anatolio', 'Animpolos', 57, ' Married', 'College Graduate', 5, '40,000 and above', 'Nueva Vida Norte, Carmen, Bohol, Philippines', '21926', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 08:10:29', 4, 4, '2019-03-20 01:33:52', ''),
(39, 'Antonio', 'Omamalin', 59, ' Married', 'High School Graduate', 3, '10,001 to 20,000', 'Villafuerte, Carmen, Bohol, Philippines', '21932', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 08:15:53', 4, 4, '2019-03-20 01:33:52', ''),
(40, 'Warlita', 'Acut', 65, ' Widow/Widower', 'Elementary Level', 7, '10,000 below', 'Vallehermoso, Carmen, Bohol, Philippines', '21930', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 08:20:18', 4, 4, '2019-03-20 01:33:52', ''),
(41, 'Gonzalo', 'Galopido', 60, ' Married', 'Elementary Level', 7, '10,000 below', 'Nueva Vida Norte, Carmen, Bohol, Philippines', '21926', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 08:37:54', 4, 4, '2019-03-20 01:33:52', ''),
(42, 'Dionesia', 'Doblas', 54, ' Widow/Widower', 'High School Graduate', 3, '10,000 below', 'Calatrava, Carmen, Bohol, Philippines', '21909', '822', 'Carmen', '', '2019-02-23 00:00:00', '2019-02-23 08:42:06', 4, 4, '2019-03-20 01:33:52', ''),
(43, 'Teodoro', 'Lomod', 56, ' Married', 'College Graduate', 10, '10,001 to 20,000', 'Katipunan, Carmen, Bohol, Philippines', '21913', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 02:36:30', 4, 4, '2019-03-20 01:33:52', ''),
(44, 'Melquiades', 'Canda', 72, ' Married', 'High School Level', 8, '40,000 and above', 'Bicao, Carmen, Bohol, Philippines', '21906', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 02:46:06', 4, 4, '2019-03-20 01:33:52', ''),
(45, 'Fernando', 'Omega', 48, ' Married', 'College Graduate', 4, '40,000 and above', 'Katipunan, Carmen, Bohol, Philippines', '21913', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 02:50:45', 4, 4, '2019-03-20 01:33:52', ''),
(46, 'Jumawan', 'Quirino', 56, ' Married', 'High School Graduate', 8, '40,000 and above', 'Guadalupe, Carmen, Bohol, Philippines', '21912', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 02:55:29', 4, 4, '2019-03-20 01:33:52', ''),
(47, 'Francisco', 'Siarot', 54, ' Married', 'Elementary Graduate', 9, '30,001 to 40,000', 'Guadalupe, Carmen, Bohol, Philippines', '21912', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 03:00:26', 4, 4, '2019-03-20 01:33:52', ''),
(48, 'Fidela Carlos', 'Merto', 62, ' Widow/Widower', 'High School Level', 1, '10,000 below', 'Bicao, Carmen, Bohol, Philippines', '21906', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 03:19:42', 4, 4, '2019-03-20 01:33:52', ''),
(49, 'Aquilino', 'Maguiling', 56, ' Married', 'Elementary Graduate', 5, '10,000 below', 'Katipunan, Carmen, Bohol, Philippines', '21913', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 06:04:45', 4, 4, '2019-03-20 01:33:52', ''),
(50, 'Simplicio Alcoser', 'Dumagan', 62, ' Married', 'High School Graduate', 3, '10,001 to 20,000', 'Panagsagan, Guadalupe, Carmen, Bohol, Philippines', '21912', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 06:09:44', 4, 4, '2019-03-20 01:33:52', ''),
(51, 'Ernesto', 'Saludo', 64, ' Married', 'High School Level', 3, '10,000 below', 'La Paz, Carmen, Bohol, Philippines', '21915', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 06:13:53', 4, 4, '2019-03-20 01:33:52', ''),
(52, 'Espejo', 'Taciana', 67, ' Married', 'College Graduate', 1, '10,001 to 20,000', 'Poblacion Sur, Carmen, Bohol, Philippines', '21928', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 06:19:08', 4, 4, '2019-03-20 01:33:52', ''),
(53, 'Mario', 'Anagon', 54, ' Married', 'Elementary Graduate', 4, '10,001 to 20,000', 'Bicao, Carmen, Bohol, Philippines', '21906', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 06:24:04', 4, 4, '2019-03-20 01:33:52', ''),
(54, 'Inecensio', 'Entero', 62, ' Married', 'High School Graduate', 10, '10,001 to 20,000', 'Katipunan, Carmen, Bohol, Philippines', '21913', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 06:31:32', 4, 4, '2019-03-20 01:33:52', ''),
(55, 'Valeriano', 'Salesale', 48, ' Married', '6', 6, '10,000 below', 'Katipunan, Carmen, Bohol, Philippines', '21913', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-02-25 06:37:38', 4, 4, '2019-03-20 01:33:52', ''),
(57, 'Fabian', 'Boque', 56, ' Married', ' College Level', 6, '10,000 below', 'Abucayan Sur, Calape, Bohol, Philippines', '21852', '820', 'Calape', '', '2019-03-06 00:00:00', '2019-03-21 02:52:43', 1, 1, '2019-03-21 02:52:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `respondents_affiliation`
--

CREATE TABLE `respondents_affiliation` (
  `respondent_id` int(11) NOT NULL,
  `title_of_trainig` varchar(100) DEFAULT NULL,
  `date_conducted` date DEFAULT NULL,
  `venue` varchar(10) DEFAULT NULL,
  `sponsoring_agency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_affiliation`
--

INSERT INTO `respondents_affiliation` (`respondent_id`, `title_of_trainig`, `date_conducted`, `venue`, `sponsoring_agency`) VALUES
(1, '', '2019-02-21', '', ''),
(2, '', '2019-02-21', '', ''),
(3, '', '2019-02-21', '', ''),
(4, '', '2019-02-21', '', ''),
(5, '', '2019-02-21', '', ''),
(6, '', '2019-02-21', '', ''),
(8, '', '2019-02-21', '', ''),
(9, '', '2019-02-21', '', ''),
(10, 'Orientation & strategy of cacao farming', '2018-11-01', 'Barangay', 'Carmen'),
(11, 'Orientation & strategy of cacao farming', '2019-02-21', 'Barangay', 'Carmen'),
(12, '', '2019-02-21', '', ''),
(13, 'Orientation & strategy of cacao farming', '2018-11-05', 'Carmen, La', ''),
(14, 'Orientation & strategy of cacao farming', '2018-11-01', 'Barangay', ''),
(15, 'Orientation & strategy of cacao farming', '2018-11-01', 'Barangay', 'Carmen'),
(16, 'Orientation & strategy of cacao farming', '2018-11-01', 'Barangay H', 'Carmen'),
(17, '', '2019-02-23', '', ''),
(18, 'Orientation & Strategy of Cacao Farming', '2018-11-01', 'Barangay', 'Carmen'),
(19, 'Orientation & Strategy of Cacao Farming', '2018-11-01', 'Barangay', 'Carmen'),
(20, '', '2019-02-23', '', ''),
(21, '', '2018-11-05', 'Barangay', 'Carmen'),
(22, '', '2019-02-23', '', ''),
(23, '', '2019-02-23', '', ''),
(24, 'Orientation & Strategy of Cacao Farming', '2018-11-05', 'Barangay H', 'Carmen'),
(25, 'Orientation & Strategy of Cacao Farming', '2018-11-01', 'Barangay H', 'Carmen'),
(26, '', '2019-02-23', '', ''),
(27, '', '2019-02-23', '', ''),
(28, 'Orientation & Strategy of Cacao Farming', '2018-11-05', 'Barangay', 'Carmen'),
(29, 'Forgot the title', '2019-02-23', 'Montesuert', 'Farmer\'s Association'),
(30, '', '2019-02-23', '', ''),
(31, 'Keunemer/DTI Training', '2012-10-01', 'Pob. Norte', 'Kennemer'),
(32, 'Cacao Production', '2014-04-01', 'Pob. Norte', 'D.A'),
(33, 'Keunemer', '2011-01-01', 'Carmen', 'Keunemer'),
(34, 'Womens / Farmers Assoc.', '2015-09-07', 'Barangay H', 'Farmer\'s Association'),
(35, 'Cacao Growers', '2013-01-01', 'Pob. Norte', 'Cacao Growers Pro-Farm'),
(36, 'Keunemer', '2018-01-01', 'Bicao', 'Keunemer'),
(37, 'Keunemer', '2011-01-01', 'Carmen', 'Keunemer'),
(38, 'Resource Know ledge BS Forestry Graduate', '2019-02-23', '', ''),
(39, 'Orientation & Strategy of Cacao Farming', '2011-01-01', 'Pob. Norte', 'Kennemer'),
(40, '', '2019-02-23', '', ''),
(41, '', '2019-02-23', '', ''),
(42, 'Technique & Strategies', '2012-11-01', 'Bicao, Car', 'Kennemer'),
(43, 'Module 1 / Seminar', '2013-01-01', 'Pob. Norte', 'Kennemer'),
(44, 'Banghouse ramires', '2012-01-01', 'Bicao', ''),
(45, 'Coop Training DA Information', '2019-01-01', 'Carmen', 'DA'),
(46, 'GAP', '2018-01-01', 'DA-Carmen', 'GAP'),
(47, 'Forgot the title', '2012-04-01', 'Bicao', ''),
(48, 'Strategies & Techniques of Cacao Farming', '2012-01-01', 'Samahan na', 'Kennemer'),
(49, '', '2019-02-25', '', ''),
(50, 'Patubo ug pagatiman', '2018-01-01', 'Katipunan', 'Bohol Farms Food'),
(51, 'Cacao Production', '2016-07-24', 'La Paz Bar', 'DA'),
(52, 'Cacao Producer / Processing', '2018-01-01', 'Tagbilaran', 'DA'),
(53, 'About cacao farming', '2019-02-25', 'san juan', 'DA / Cebu'),
(54, '', '2019-02-25', '', ''),
(55, '', '2019-02-25', '', ''),
(57, '', '2019-03-21', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `respondents_farm_profile`
--

CREATE TABLE `respondents_farm_profile` (
  `farm_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `land_ownership` varchar(50) NOT NULL,
  `farm_size` varchar(50) NOT NULL,
  `no_of_trees` varchar(50) NOT NULL,
  `planting_distance` varchar(50) DEFAULT NULL,
  `farming_experience_production` varchar(50) NOT NULL,
  `farming_experience_production_organic` varchar(50) NOT NULL,
  `cacao_varieties` varchar(50) DEFAULT NULL,
  `cacao_clone_planted` varchar(100) NOT NULL,
  `cacao_clone_planted_others` varchar(100) DEFAULT NULL,
  `farming_category` varchar(50) NOT NULL,
  `farming_status` varchar(50) NOT NULL,
  `type_of_propagation` varchar(50) NOT NULL,
  `source_of_seeds` varchar(100) DEFAULT NULL,
  `source_of_seedlings` varchar(100) DEFAULT NULL,
  `source_of_scions` varchar(100) DEFAULT NULL,
  `source_of_stocks` varchar(100) DEFAULT NULL,
  `stablish_nursery` varchar(50) NOT NULL,
  `stablish_nursery_yes` varchar(100) DEFAULT NULL,
  `sell_seedling` varchar(50) NOT NULL,
  `sell_seedling_yes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_farm_profile`
--

INSERT INTO `respondents_farm_profile` (`farm_id`, `respondent_id`, `land_ownership`, `farm_size`, `no_of_trees`, `planting_distance`, `farming_experience_production`, `farming_experience_production_organic`, `cacao_varieties`, `cacao_clone_planted`, `cacao_clone_planted_others`, `farming_category`, `farming_status`, `type_of_propagation`, `source_of_seeds`, `source_of_seedlings`, `source_of_scions`, `source_of_stocks`, `stablish_nursery`, `stablish_nursery_yes`, `sell_seedling`, `sell_seedling_yes`) VALUES
(1, 1, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '2 x 2 m', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', '', 'Province', '', '', 'No', '', 'No', ''),
(2, 2, 'Owned (Inherited)', '0.5 ha below ', '31 - 40 tress', '3 x 3', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Rehabilitated', 'Asexual (e.g. grafted, budded)', '', '', 'PCA', '', 'No', '', 'No', ''),
(3, 4, 'Owned (Bought)', '0.5 ha below ', '10 - 20 trees  ', '2 x 2 m', '10 years below', '10 years below', 'Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Davao', '', '', 'No', '', 'No', ''),
(4, 5, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '3 x 3', '10 years below', '10 years below', 'Trinitario', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', '', '', '', '', '', 'No', '', 'No', ''),
(5, 6, 'Owned (Inherited)', '0.5 ha below ', '10 - 20 trees  ', '6 x 6', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation ', 'Sexual (e.g. seeds)', 'Ubay', '', '', '', 'No', '', 'No', ''),
(6, 7, 'Owned (Bought)', '0.5 ha below ', '41 - 50 trees', '2 x 2 m', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', '', '', 'Lapaz Carmen', '', '', 'No', '', 'No', ''),
(7, 8, 'Tenanted', '0.5 ha below ', '51 trees above ', '3 x 3', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(8, 9, 'Owned (Inherited)', '0.5 ha below ', '51 trees above ', '3 x 3', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen, Lapaz', '', '', 'No', '', 'No', ''),
(9, 10, 'Owned (Inherited)', '0.5 ha below ', '51 trees above ', '3 x 3', '10 years below', '10 years below', 'Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen, Lapaz', '', '', 'No', '', 'No', ''),
(10, 11, 'Owned (Inherited)', '0.5 - 1.0 ha ', '51 trees above ', '', '10 years below', '10 years below', 'Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(11, 12, 'Owned (Bought)', '0.5 ha below ', '10 - 20 trees  ', '', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Lapaz Carmen', '', '', 'No', '', 'No', ''),
(12, 13, 'Owned (Inherited)', '0.5 ha below ', '51 trees above ', '3 x 3', '10 years below', '10 years below', 'Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen, Lapaz', '', '', 'No', '', 'No', ''),
(13, 14, 'Owned (Inherited)', '0.5 ha below ', '51 trees above ', '3 x 3', '10 years below', '10 years below', '', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Lapaz Carmen', '', '', 'No', '', 'No', ''),
(14, 15, 'Owned (Inherited)', '0.5 ha below ', '21 - 30 trees  ', '2 x 2 m', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(15, 16, 'Owned (Inherited)', '0.5 ha below ', '51 trees above ', '3 x 3', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(16, 3, 'Owned (Inherited)', '1.6 - 2.0 ha', '51 trees above ', '3x3 m', '', '', 'Trinitario', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', '', 'MINDANAO', '', 'No', '', 'No', ''),
(17, 0, 'Owned (Bought)', '0.5 ha below', '10 - 20 trees', '', '10 years below', '10 years below', 'Trinitario', '', '', 'Backyard (below 50 trees planted)', 'No', 'Sexual (e.g. seeds)', '', '', '', '', '', '', 'No', ''),
(18, 18, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '2x2', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(19, 19, 'Owned (Inherited)', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen, Lapaz', '', '', 'No', '', 'No', ''),
(20, 21, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', '', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen, Lapaz', '', '', 'No', '', 'No', ''),
(21, 23, 'Owned (Inherited)', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(22, 24, 'Owned (Inherited)', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(23, 25, 'Tenanted', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(24, 26, 'Owned (Inherited)', '2.1 ha above ', '51 trees above ', '4x4', '10 years below', '10 years below', 'Trinitario', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', '', '', '', 'No', '', 'No', ''),
(25, 27, 'Owned (Bought)', '0.5 - 1.0 ha ', '51 trees above ', '4x4', '10 years below', '10 years below', 'Trinitario', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(26, 28, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', 'Trinitario', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen, Lapaz', '', '', 'No', '', 'No', ''),
(27, 29, 'Owned (Inherited)', '1.6 - 2.0 ha', '21 - 30 trees  ', '5x5', '41 years above ', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'Personal/Neighbors', '', '', '', 'No', '', 'No', ''),
(28, 30, 'Owned (Inherited)', '2.1 ha above ', '51 trees above ', '', '10 years below', '31-40 years', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(29, 31, 'Owned (Bought)', '0.5 - 1.0 ha ', '51 trees above ', '3x3', '10 years below', '10 years below', 'Criollio,Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Davao', '', '', 'No', '', 'No', ''),
(30, 32, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Mindanao', '', '', 'No', '', 'No', ''),
(31, 33, 'Owned (Inherited)', '0.5 ha below ', '41 - 50 trees', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Keunemer', '', '', 'No', '', 'No', ''),
(32, 34, 'Owned (Inherited)', '0.5 - 1.0 ha ', '51 trees above ', '2x2', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Rehabilitated', 'Asexual (e.g. grafted, budded)', '', 'Davao', '', '', 'Yes', '1/2', 'No', ''),
(33, 35, 'Owned (Bought)', '0.5 - 1.0 ha ', '51 trees above ', '3x3 / 4x4', '10 years below', '10 years below', 'Criollio,Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Davao', '', '', 'Yes', '2', 'No', ''),
(34, 36, 'Owned (Inherited)', '1.6 - 2.0 ha', '51 trees above ', '5x5', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Keunemer', '', '', 'No', '', 'No', ''),
(35, 37, 'Owned (Inherited)', '0.5 - 1.0 ha ', '51 trees above ', '5x6', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Keunemer', '', '', 'No', '', 'No', ''),
(36, 38, 'Owned (Bought)', '1.1 - 1.5 ha', '51 trees above ', '2x2', '11-20 years', '10 years below', 'Forastero,Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Malaysia', '', '', 'No', '', 'Yes', '25 php'),
(37, 39, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'Parents Farm', '', '', '', 'No', '', 'No', ''),
(38, 40, 'Owned (Bought)', '0.5 ha below ', '21 - 30 trees  ', '4x5', '21-30 years', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'own stock', '', '', '', 'No', '', 'No', ''),
(39, 41, 'Owned (Inherited)', '0.5 ha below ', '21 - 30 trees  ', '2x4', '10 years below', '11-20 years', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation ', 'Sexual (e.g. seeds)', 'own seed', '', '', '', 'No', '', 'No', ''),
(40, 42, 'Rented', '0.5 - 1.0 ha ', '51 trees above ', '3x3', '10 years below', '10 years below', 'Forastero', 'BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', '', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(41, 43, 'Tenanted', '0.5 ha below ', '51 trees above ', '3x3', '41 years above ', '10 years below', 'Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Mindanao', '', '', 'No', '', 'No', ''),
(42, 44, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '5x5', '11-20 years', '10 years below', 'Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Mindanao', '', '', 'No', '', 'No', ''),
(43, 45, 'Owned (Inherited)', '0.5 - 1.0 ha ', '51 trees above ', '3x3', '11-20 years', '10 years below', 'Trinitario', 'UF-18', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation ', 'Asexual (e.g. grafted, budded)', '', 'Davao, Mindanao', '', '', 'No', '', 'No', ''),
(44, 46, 'Owned (Bought)', '0.5 ha below ', '21 - 30 trees  ', '4x4', '10 years below', '10 years below', 'Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Mindanao', '', '', 'No', '', 'No', ''),
(45, 47, 'Owned (Bought)', '0.5 - 1.0 ha ', '51 trees above ', '', '10 years below', '10 years below', 'Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Bicao', '', '', 'No', '', 'No', ''),
(46, 48, 'Owned (Inherited)', '0.5 - 1.0 ha ', '51 trees above ', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', '500 - Davao 500 - Kennemer', '', '', 'No', '', 'No', ''),
(47, 49, 'Owned (Bought)', '0.5 - 1.0 ha ', '51 trees above ', '4x4', '10 years below', '10 years below', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(48, 50, 'Owned (Inherited)', '0.5 ha below ', '51 trees above ', '2x2', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(49, 51, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '2x2', '10 years below', '10 years below', 'Trinitario', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(50, 52, 'Owned (Inherited)', '0.5 - 1.0 ha ', '51 trees above ', '4x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA, Carmen', '', '', 'No', '', 'No', ''),
(51, 53, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(52, 54, 'Owned (Bought)', '0.5 ha below ', '51 trees above ', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Samahang Nayon / Kennemer', '', '', 'No', '', 'No', ''),
(53, 55, 'Owned (Bought)', '1.1 - 1.5 ha', '51 trees above ', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer', '', '', 'No', '', 'No', ''),
(54, 57, 'Owned (Inherited)', '0.5 ha below ', '21 - 30 trees  ', '3x4', '21-30 years', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation ', 'Sexual (e.g. seeds)', 'own', '', '', '', 'No', '', 'No', '');

-- --------------------------------------------------------

--
-- Table structure for table `respondents_marketing`
--

CREATE TABLE `respondents_marketing` (
  `marketing_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `product_sold_type` varchar(50) NOT NULL,
  `product_sold_type_others` varchar(50) DEFAULT NULL,
  `marketing_type` varchar(50) NOT NULL,
  `marketing_type_others` varchar(50) DEFAULT NULL,
  `market_destination` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_marketing`
--

INSERT INTO `respondents_marketing` (`marketing_id`, `respondent_id`, `product_sold_type`, `product_sold_type_others`, `marketing_type`, `marketing_type_others`, `market_destination`) VALUES
(0, 31, 'Tablea', '', 'Contract', '', ''),
(0, 34, 'Tablea', '', 'Contract', '', ''),
(0, 35, 'Fresh bean,Dried bean,Tablea', '', 'Contract', '', ''),
(0, 37, 'Fresh bean', '', 'Contract', '', ''),
(0, 38, 'Tablea', '', 'Contract', '', ''),
(0, 40, 'Dried bean', '', 'Retails', '', ''),
(0, 42, 'Tablea', '', 'Kunsomo', 'Kunsomo', ''),
(0, 44, '', '', 'Contract', '', ''),
(0, 45, 'Dried bean', '', 'Consume', 'Consume', ''),
(0, 47, 'Fresh bean', '', 'Contract', '', ''),
(0, 50, 'Dried bean,Tablea', '', 'Whole sale', '', 'Pob. Carmen'),
(0, 51, 'Tablea', '', 'Retails', '', 'Lapaz'),
(0, 52, '', '', 'Retails', '', 'Carmen'),
(0, 53, 'Tablea', '', 'Consume', 'Consume', ''),
(0, 54, 'Dried bean', '', 'Whole sale', '', 'Kenemer'),
(0, 55, 'Tablea', '', 'Retails', '', 'Katipunan'),
(0, 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `respondents_organizations`
--

CREATE TABLE `respondents_organizations` (
  `org_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `name_of_organization` varchar(100) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `years_in_membership` int(4) DEFAULT NULL,
  `projects_of_organization` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_organizations`
--

INSERT INTO `respondents_organizations` (`org_id`, `respondent_id`, `name_of_organization`, `position`, `years_in_membership`, `projects_of_organization`) VALUES
(1, 1, '', '', 0, ''),
(2, 2, '', '', 0, ''),
(3, 3, '', '', 0, ''),
(4, 4, '', '', 0, ''),
(5, 5, 'Zamora Farmers Org.', '', 5, 'Machinery'),
(6, 6, '', '', 0, ''),
(7, 7, 'Farmers asst.', 'members', 3, ''),
(8, 8, 'Farmers', 'members', 0, 'coconut'),
(9, 9, '', '', 0, ''),
(10, 10, '', '', 0, ''),
(11, 11, '', '', 0, ''),
(12, 12, 'Farmers Ass. / Vilfa', '', 2003, 'Rice Mill'),
(13, 13, 'Villa suerte farmers association', 'member', 3, 'ihaw ihaw ng baboy'),
(14, 1, '', '', 0, ''),
(15, 14, '', '', 0, ''),
(16, 1, '', '', 0, ''),
(17, 15, '', '', 0, ''),
(18, 16, '', '', 0, ''),
(19, 17, '', '', 0, ''),
(20, 1, '', '', 0, ''),
(21, 18, '', '', 0, ''),
(22, 19, 'Farmers', 'Member', 3, 'ihaw 2x'),
(23, 20, '', '', 0, ''),
(24, 1, 'Farmers', 'Member', 4, 'ihaw 2x'),
(25, 21, 'Farmers', 'Member', 3, 'ihaw 2x'),
(26, 22, '', '', 0, ''),
(27, 23, 'Farmer Asst.', 'Secretary', 2016, 'About Farming'),
(28, 24, 'Farmers', 'Member', 2018, 'Farming'),
(29, 25, 'Farmer Asst.', 'Member', 4, 'Ihaw ihaw baboy'),
(30, 26, '', '', 0, ''),
(31, 27, '', '', 0, ''),
(32, 28, '', '', 0, ''),
(33, 29, 'GAP', 'Member', 2, 'Planting Agricultural'),
(34, 30, '', '', 0, ''),
(35, 31, 'Cooperative', 'Member', 15, 'Lending/Production Loan/Agri-loan/Groceries'),
(36, 32, 'Samahang Nayon', 'Member', 5, 'Lending Money / Cash assistance / Grocery'),
(37, 33, '', '', 0, ''),
(38, 34, 'Womens / Farmers assoc.', 'Member', 9, 'Agricultural Projects Rice / Corn etc.'),
(39, 35, 'Cacao Growers', 'Member', 6, 'How to make chocolate'),
(40, 36, 'Keunemer', 'Member', 2, 'Cacao Farming'),
(41, 37, '', '', 0, ''),
(42, 38, '', '', 0, ''),
(43, 39, 'Samahan Nayon Multipurpose Cooperative', 'Member', 20, 'Farming'),
(44, 40, '', '', 0, ''),
(45, 41, '', '', 0, ''),
(46, 42, 'Samahan Nayon Multipurpose Cooperative', 'Member', 10, 'Farming'),
(47, 43, 'Cacao Growers Asso.', 'Member', 5, 'Cacao Processing'),
(48, 44, 'Samahang Nayon', 'Member', 20, 'Rice / Fertelizer loans'),
(49, 45, '', '', 0, ''),
(50, 46, '', '', 0, ''),
(51, 47, '', '', 0, ''),
(52, 48, 'Samahang Nayon Multipurpose Cooperative', 'Member', 10, 'Farming'),
(53, 49, '', '', 0, ''),
(54, 50, 'Samahan Nayon Multipurpose Cooperative', 'Member', 5, 'Farming'),
(55, 51, '', '', 0, ''),
(56, 52, '', '', 0, ''),
(57, 53, 'Samahang Nayon', 'Member', 2012, 'Ricemill / Organic Farming'),
(58, 54, '', '', 0, ''),
(59, 55, 'Carmen Coop / Samahang Nayon', 'Member', 2012, 'Organic Farming'),
(65, 57, '', '', 0, ''),
(66, 1, 'Farmers', '', 0, ''),
(67, 1, 'Farmers', '', 0, ''),
(68, 1, 'Farmers', '', 0, ''),
(69, 1, 'Farmers', '', 0, ''),
(70, 1, 'Farmers', '', 0, ''),
(71, 1, 'Farmers', '', 0, ''),
(72, 1, 'Farmers', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `respondents_pest_disease`
--

CREATE TABLE `respondents_pest_disease` (
  `pest_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `pest` varchar(150) NOT NULL,
  `pest_others` varchar(100) DEFAULT NULL,
  `pest_control_management` varchar(100) DEFAULT NULL,
  `pest_control_others` varchar(100) DEFAULT NULL,
  `pest_control_sanitation` varchar(100) DEFAULT NULL,
  `pest_control_chemical_control` varchar(100) DEFAULT NULL,
  `disease` varchar(100) DEFAULT NULL,
  `disease_others` varchar(100) DEFAULT NULL,
  `disease_control` varchar(100) NOT NULL,
  `disease_control_chemical` varchar(100) DEFAULT NULL,
  `disease_control_mechanical` varchar(100) DEFAULT NULL,
  `disease_control_pruning` varchar(100) DEFAULT NULL,
  `disease_control_others` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_pest_disease`
--

INSERT INTO `respondents_pest_disease` (`pest_id`, `respondent_id`, `pest`, `pest_others`, `pest_control_management`, `pest_control_others`, `pest_control_sanitation`, `pest_control_chemical_control`, `disease`, `disease_others`, `disease_control`, `disease_control_chemical`, `disease_control_mechanical`, `disease_control_pruning`, `disease_control_others`) VALUES
(1, 1, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(2, 2, 'Stem Borer ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(3, 4, 'Leaf Miner ,Stem Borer ', NULL, 'Spray', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(4, 5, 'Leaf Miner ,Stem Borer ', NULL, 'Sanitation, specify  ', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(5, 6, 'Stem Borer ', NULL, 'None', NULL, '', '', 'Dieback  ', '', 'None', '', NULL, NULL, NULL),
(6, 7, 'Leaf Miner ', NULL, 'lanit', NULL, '', 'lanit', '', '', '', '', NULL, NULL, NULL),
(7, 8, 'Leaf Miner ', NULL, 'lanit', NULL, '', 'lanit', '', '', '', '', NULL, NULL, NULL),
(8, 9, 'Leaf Miner ', NULL, 'lanit', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(9, 10, 'Leaf Miner ', NULL, 'lanit, bukwak', NULL, '', 'lanit, bukwak', '', '', '', '', NULL, NULL, NULL),
(10, 11, 'Leaf Miner ,gesprayhan (lanit)', NULL, 'lanit', NULL, '', 'lanit', '', '', '', '', NULL, NULL, NULL),
(11, 12, 'Leaf Miner ', NULL, 'lanit', NULL, '', 'lanit', '', '', '', '', NULL, NULL, NULL),
(12, 13, 'Leaf Miner ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(13, 14, 'Leaf Miner ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(14, 15, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(15, 16, 'Leaf Miner ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(16, 0, 'Cacao Pod Borer', NULL, 'Sleeving', NULL, '', '', 'Dieback', '', 'Chemical control', '', NULL, NULL, NULL),
(17, 18, 'Leaf Miner ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(18, 19, 'Leaf Miner ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(19, 21, 'Leaf Miner ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(20, 23, 'Leaf Miner ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(21, 24, 'Leaf Miner ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(22, 25, 'Leaf Miner ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(23, 26, 'Leaf Miner ', NULL, 'Spray', NULL, '', 'Spray', '', '', '', '', NULL, NULL, NULL),
(24, 27, 'Leaf Miner ,Stem Borer ', NULL, 'Pasagdan', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(25, 28, 'Leaf Miner ,Stem Borer ', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(26, 29, 'Stem Borer ', NULL, 'Hand Picking', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(27, 30, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(28, 31, 'Cacao Pod Borer  ,Mirid Bugs,Stem Borer ', NULL, 'Samok as dagat,Spray/Boswak', NULL, '', 'Spray/Boswak', 'Dieback  ,Black Pod Rot ', '', 'pruning and burning of infected plants/parts  ', '', NULL, NULL, NULL),
(29, 32, 'Cacao Pod Borer  ,Stem Borer ', NULL, 'Spray / Lanit', NULL, '', 'Spray / Lanit', 'Dieback  ,Black Pod Rot ', '', ',Spray', '', NULL, NULL, NULL),
(30, 33, 'Cacao Pod Borer  ,Stem Borer ', NULL, 'Spray', NULL, '', 'Spray', 'Dieback  ,Black Pod Rot ', '', 'pruning and burning of infected plants/parts  ', '', NULL, NULL, NULL),
(31, 34, 'Cacao Pod Borer  ,Stem Borer ', NULL, 'Spray Boswak', NULL, '', 'Spray Boswak', 'Dieback  ,Black Pod Rot ', '', 'Spray', 'Spray', NULL, NULL, NULL),
(32, 35, 'Cacao Pod Borer  ,Leaf Miner ,Stem Borer ', NULL, 'Spray / Calcium Boron', NULL, '', 'Spray / Calcium Boron', 'Dieback  ,Black Pod Rot ', '', 'Calcium Boron,pruning and burning of infected plants/parts  ', 'Calcium Boron', NULL, NULL, NULL),
(33, 36, 'Stem Borer ', NULL, 'Spray / Karate', NULL, '', 'Spray / Karate', '', '', '', '', NULL, NULL, NULL),
(34, 37, 'Stem Borer ', NULL, 'Spray / Karate', NULL, '', 'Spray / Karate', 'Dieback  ,Black Pod Rot ', '', 'pruning and burning of infected plants/parts  ', '', NULL, NULL, NULL),
(35, 38, 'Cacao Pod Borer  ,Cutworm ,Stem Borer ', NULL, 'Predator', NULL, '', '', 'Dieback  ,Black Pod Rot ', '', 'Biological Control', '', NULL, NULL, NULL),
(36, 39, 'Leaf Miner ,Stem Borer ,Aphids', NULL, 'Karate', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(37, 40, 'Cacao Pod Borer  ,Leaf Miner ,Aphids', NULL, '', NULL, '', '', 'Black Pod Rot ,Frosty Pod', '', '', '', NULL, NULL, NULL),
(38, 41, 'Leaf Miner ,Mirid Bugs,Stem Borer ', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(39, 42, 'Leaf Miner ,Mirid Bugs,Stem Borer ', NULL, '', NULL, '', '', 'Frosty Pod', '', 'Putos Cellophane', '', NULL, NULL, NULL),
(40, 43, 'Cacao Pod Borer  ', NULL, 'Hand Picking', NULL, '', '', 'Black Pod Rot ', '', 'Pasagdaan', '', NULL, NULL, NULL),
(41, 44, 'Cacao Pod Borer  ,Stem Borer ', NULL, 'Chemical Spray', NULL, '', 'Chemical Spray', 'Dieback  ,Black Pod Rot ', '', 'Spray', 'Spray', NULL, NULL, NULL),
(42, 45, 'Cacao Pod Borer  ,Stem Borer ', NULL, 'Yaramela / Growmore', NULL, '', 'Yaramela / Growmore', 'Dieback  ,Black Pod Rot ', '', 'Yaramela ', 'Yaramela ', NULL, NULL, NULL),
(43, 46, 'Cacao Pod Borer  ,Stem Borer ', NULL, 'Hand Picking', NULL, '', '', 'Dieback  ,Black Pod Rot ', '', 'Pasagdaan', '', NULL, NULL, NULL),
(44, 47, 'Cacao Pod Borer  ,Stem Borer ', NULL, 'Spray', NULL, '', 'Spray', 'Dieback  ', '', 'Spray', '', NULL, NULL, NULL),
(45, 48, 'Leaf Miner ,Stem Borer ', NULL, 'Karate, Die-10', NULL, '', 'Karate, Die-10', 'Dieback  ', '', 'Putos Cellophane', '', NULL, NULL, NULL),
(46, 49, 'Leaf Miner ,Stem Borer ', NULL, '', NULL, '', '', 'Dieback  ', '', '', '', NULL, NULL, NULL),
(47, 50, 'Leaf Miner ,Stem Borer ', NULL, '', NULL, '', '', 'Black Pod Rot ', '', '', '', NULL, NULL, NULL),
(48, 51, 'Stem Borer ', NULL, 'Karate', NULL, '', 'Karate', 'Black Pod Rot ', '', 'Pasagdaan', '', NULL, NULL, NULL),
(49, 52, 'Stem Borer ', NULL, 'Cuttinng ang Sanga', NULL, '', '', 'Black Pod Rot ,Bugtokon', 'Bugtokon', 'Kuhaon ang patay na bunga', '', NULL, NULL, NULL),
(50, 53, 'Leaf Miner ,Stem Borer ', NULL, 'Karate', NULL, '', '', 'tagsa ra ang gebogtok', 'tagsa ra ang gebogtok', 'Pasagdaan', '', NULL, NULL, NULL),
(51, 54, 'Stem Borer ', NULL, 'Karate', NULL, '', 'Karate', 'Dieback  ', '', 'Karate', 'Karate', NULL, NULL, NULL),
(52, 55, 'Leaf Miner ,Stem Borer ', NULL, 'Karate', NULL, '', 'Karate', 'Dieback  ', '', 'Karate, Pruning', 'Karate, Pruning', NULL, NULL, NULL),
(54, 57, 'Cutworm ,Stem Borer ,Aphids', NULL, '', NULL, '', '', 'Black Pod Rot ', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `respondents_post_harvest`
--

CREATE TABLE `respondents_post_harvest` (
  `harvet_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `pod_per_variety` varchar(25) DEFAULT NULL,
  `kg_produced_per_variety` varchar(25) DEFAULT NULL,
  `total_bean_production` varchar(25) NOT NULL,
  `cacao_pod_sorting` varchar(50) NOT NULL,
  `pod_processing` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_post_harvest`
--

INSERT INTO `respondents_post_harvest` (`harvet_id`, `respondent_id`, `pod_per_variety`, `kg_produced_per_variety`, `total_bean_production`, `cacao_pod_sorting`, `pod_processing`) VALUES
(1, 1, '', '', '', 'None', 'None'),
(2, 2, '', '', '', '0', '0'),
(3, 31, '', '80', '35', '0', '0'),
(4, 32, '10', '5', '5', '0', '0'),
(5, 33, '10', '4', '10', '0', '0'),
(6, 34, '5', '4', '10', '0', '0'),
(7, 35, '500', '60', '60', '0', '0'),
(8, 37, '10', '50', '100', '0', '0'),
(9, 38, '10', '5', '50', '0', '0'),
(10, 40, '3', '2', '5', '0', '0'),
(11, 41, '5', '5', '10', '0', '0'),
(12, 42, '5', '5', '10', '0', '0'),
(13, 43, '500', '1', '1', '0', '0'),
(14, 44, '100', '8', '8', '0', '0'),
(15, 45, '5', '5', '5', '0', '0'),
(16, 46, '5', '1.4', '', '0', '0'),
(17, 47, '1', '11', '11', '0', '0'),
(18, 48, '2', '0.5', '10', '0', '0'),
(19, 49, '2', '0.3', '5', '0', '0'),
(20, 50, '10', '5', '20', '0', '0'),
(21, 51, '5', '1.2', '1.2', '0', '0'),
(22, 52, '2', '6', '6', '0', '0'),
(23, 53, '5', '3', '3', '0', '0'),
(24, 54, '15', '20', '20', '0', '0'),
(25, 55, '5', '1', '', '0', '0'),
(26, 0, '', '', '', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `respondents_production_management`
--

CREATE TABLE `respondents_production_management` (
  `production_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `climate_factor_rainfall` varchar(100) DEFAULT NULL,
  `climate_factor_temperature` varchar(100) DEFAULT NULL,
  `climate_factor_elevation` varchar(100) DEFAULT NULL,
  `climate_factor_slope` varchar(100) DEFAULT NULL,
  `edaphic_factors_soil_type` varchar(100) DEFAULT NULL,
  `edaphic_factors_soil_depth` varchar(100) DEFAULT NULL,
  `edaphic_factors_soil_texture` varchar(100) DEFAULT NULL,
  `edaphic_factors_soil_structure` varchar(100) DEFAULT NULL,
  `cropping_system` varchar(100) NOT NULL,
  `cropping_system_others` varchar(100) DEFAULT NULL,
  `associated_crops` varchar(100) DEFAULT NULL,
  `associated_crops_peanut` varchar(100) DEFAULT NULL,
  `associated_crops_vegetables` varchar(100) DEFAULT NULL,
  `associated_crops_root_crops` varchar(100) DEFAULT NULL,
  `associated_crops_trees` varchar(100) DEFAULT NULL,
  `associated_crops_fruit_crops` varchar(100) DEFAULT NULL,
  `associated_crops_others` varchar(100) DEFAULT NULL,
  `fertilizer_applied` varchar(100) DEFAULT NULL,
  `if_organic` varchar(100) DEFAULT NULL,
  `if_inorganic` varchar(100) DEFAULT NULL,
  `fertilizer_application_frequency` varchar(100) DEFAULT NULL,
  `practice_pruning` int(3) NOT NULL,
  `practice_pruning_yes` varchar(100) DEFAULT NULL,
  `da_training` int(3) NOT NULL,
  `da_training_yes` varchar(100) DEFAULT NULL,
  `da_share_technology` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_production_management`
--

INSERT INTO `respondents_production_management` (`production_id`, `respondent_id`, `climate_factor_rainfall`, `climate_factor_temperature`, `climate_factor_elevation`, `climate_factor_slope`, `edaphic_factors_soil_type`, `edaphic_factors_soil_depth`, `edaphic_factors_soil_texture`, `edaphic_factors_soil_structure`, `cropping_system`, `cropping_system_others`, `associated_crops`, `associated_crops_peanut`, `associated_crops_vegetables`, `associated_crops_root_crops`, `associated_crops_trees`, `associated_crops_fruit_crops`, `associated_crops_others`, `fertilizer_applied`, `if_organic`, `if_inorganic`, `fertilizer_application_frequency`, `practice_pruning`, `practice_pruning_yes`, `da_training`, `da_training_yes`, `da_share_technology`) VALUES
(1, 1, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', 'mango', '', '', '', 'None', 0, '', 0, '', 0),
(2, 2, '', '', '', '', '', '', '', '', 'on,Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(3, 4, '', '9° 39\'59\" N 124° 76\" E High', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Corn,mahugany,caimito, dragon fruits', '', '', '', 'mahugany', 'caimito, dragon fruits', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(4, 5, '', '9° 43\'28\"N 124°6\'42 E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(5, 6, '', '9° 45\'7\"N 124°7\'1\" E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(6, 7, '', '9° 41\'53\"N 124° 10\'29\"E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,gemilina, mahugany,marang, mangga', '', '', '', 'gemilina, mahugany', 'marang, mangga', '', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(7, 8, '', '9° 42\'9\"N 12y° 10\'43\"E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,carnaba,tabacco', '', '', '', '', 'carnaba', 'tabacco', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(8, 9, '', '9° 41\'58\"N 124°10\'27\"E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(9, 10, '', '', '9° 41\'54\"N 12Y°10\'22\"E', '', '', '', '', '', 'on', '', '', '', '', '', '', '', '', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(10, 11, '', '', '9° 41\'59N 124° 10\'28\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(11, 12, '', '', '9° 41\'55\"N, 124°10\'24\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Boongon', '', '', '', '', 'Boongon', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(12, 13, '', '', '9° 42\'1\"N, 124°10\'38\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Vegestable, specify\r\n                              ,Camote,Tambis', '', '', 'Camote', '', 'Tambis', '', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(13, 14, '', '', '9°42\'10\"N 124°10\'35\"E', '9°42\'11\"N 124°10\'35 E', '', '', '', '', 'Inter-cropping', '', 'papaya,mahugany,marang, nangka', '', 'papaya', '', 'mahugany', 'marang, nangka', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(14, 15, '', '', '9041\'59\"N, 124°10\'21\"E', '', '', '', '', '', 'Inter-cropping', '', 'Banana,Camote', '', '', 'Camote', '', '', '', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(15, 16, '', '', '9° 41\'58\"N 124°10\'28\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(16, 18, '', '', '9°41\'58\"N, 124°10\'21\"E', '', '', '', '', '', 'Inter-cropping', '', 'Corn,Watermelon', '', '', '', '', '', 'Watermelon', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(17, 19, '', '', '4°42\'2\"N, 124°10\'38\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Manga, Lemon', '', '', '', '', 'Manga, Lemon', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(18, 21, '', '', '', '', '', '', '', '', 'Monocropping', '', '', '', '', '', '', '', '', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(19, 23, '', '', '9°42\'2\"N 124°10\'41\'E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Mahugany', '', '', '', 'Mahugany', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(20, 24, '', '', '9°42\'2\"N 124°10\'26E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Caimito', '', '', '', '', 'Caimito', '', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(21, 25, '', '', '9°42\'0\"N 124°10\'3Y\"E', '', '', '', '', '', 'Inter-cropping', '', 'Corn,Mahugany', '', '', '', 'Mahugany', '', '', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(22, 26, '', '', '', '', '', '', '', '', 'Monocropping,Inter-croppi', '', 'Coconut,Banana,Trees, specify \r\n                              ,Fruit crops, specify \r\n              ', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(23, 27, '', '', '9°43\'54\"N, 124°6\'42\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Camote', '', '', 'Camote', '', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(24, 28, '', '', '9°41\'58\"N, 124°10\'28\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(25, 29, '', '', '9°52\'27\"N 124°11\'36\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(26, 30, '', '', '9°54\'10\"N/124°9\'5\"E 259 msl', '', '', '', '', '', '', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(27, 31, '', '', '9°50\'39\"N/124°11\'43\"E 235msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(28, 32, '', '', '9°50\'34\"N / 124°11\'43\"E 235msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, 'DA', 0, 'Yearly', 0),
(29, 33, '', '', '9°47\'52\"N / 124° 13\'46\"E 304mls', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Tambis', '', '', '', 'Tambis', '', '', '1', NULL, NULL, '0', 0, 'private assistance', 0, 'once a year', 0),
(30, 34, '', '', '9°46\'51\"N / 124°13\'28\"E 337msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Tambis,Avocado', '', '', '', 'Tambis', 'Avocado', '', '1', NULL, NULL, '0', 0, 'DA', 0, 'Quarterly', 0),
(31, 35, '', '', '9°49\'30\"N / 124°11\'39\"E 251msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Mahugany,Papaya', '', '', '', 'Mahugany', 'Papaya', '', '1', NULL, NULL, '0', 0, 'DA', 0, 'Yearly', 0),
(32, 36, '', '', '9°47\'59\"N / 124°14\'27\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Avocado, Nangka, Guyabano', '', '', '', '', 'Avocado, Nangka, Guyabano', '', '1', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(33, 37, '', '', '9°47\'1\"N / 124°13\'24\"E 327msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Acacia, Mahugany,Papaya', '', '', '', 'Acacia, Mahugany', 'Papaya', '', '1', NULL, NULL, '0', 0, 'DA', 0, 'once a year', 0),
(34, 38, '', '', '9° 47\'54\"N - 124°11\'10\"E 6msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Papaya', '', '', '', '', 'Papaya', '', '1', NULL, NULL, '0', 0, 'private assistance', 0, 'Frequent', 0),
(35, 39, '', '', '9°53\'24\"N, 124°11\'41\"E 355msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana,Madre Cacao, Mahugany', '', '', '', 'Madre Cacao, Mahugany', '', '', '1', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(36, 40, '', '', '9°47\'4\"N, 124°14\'13\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Coffee,Lanzonez, Nangka', '', '', '', '', '', 'Lanzonez, Nangka', '1', NULL, NULL, '0', 0, 'own', 0, '', 0),
(37, 41, '', '', '9°47\'14\"N, 124°11\'11\"E 431msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(38, 42, '', '', '9°54\'24\"N, 124°8\'52\"E 308msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Nangka, Avocado,Boongon, Guyabano', '', '', '', 'Nangka, Avocado', '', 'Boongon, Guyabano', '0', NULL, NULL, '0', 0, '', 0, '', 0),
(39, 43, '', '', '9°50m22sN 124°13m 25s E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Guava / Bayabas', '', '', '', '', '', 'Guava / Bayabas', '0', NULL, NULL, '0', 0, 'private assistance', 0, 'once a year', 0),
(40, 44, '', '', '9°49\'16\"N 124°15\'4\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Caimito', '', '', '', 'Caimito', '', '', '0', NULL, NULL, '0', 0, 'DA', 0, 'twice a year', 0),
(41, 45, '', '', '9°50\'44\"N 124°13\'12\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '0', NULL, NULL, '0', 0, 'private assistance', 0, 'once a year', 0),
(42, 46, '', '', '9°47\'4\"N 124°12\'52\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', 0, 'private assistance, DA', 0, '', 0),
(43, 47, '', '', '9°49\'1\"N 124°12\'23\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Rambutan, Durian', '', '', '', '', '', 'Rambutan, Durian', '1', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(44, 48, '2', '', '9°8456°N, 124.2412°E', '', '', '', '', '', 'Inter-cropping', '', 'Banana,Gabi, Luya', '', '', 'Gabi, Luya', '', '', '', '0', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(45, 49, '', '', '9.83005°N, 124.21948°E', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', '', '', '', '0', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(46, 50, '', '', '9.80058°N, 124.22041°E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Mangga, Rambotan,Nangka', '', '', '', 'Mangga, Rambotan', '', 'Nangka', '0', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(47, 51, '', '', '9°49\'13\"N, 124°10\'25\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Rambutan', '', '', '', '', 'Rambutan', '', '1', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(48, 52, '', '', '9°48\'53\"N, 124°12\'30\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Mahugany', '', '', '', 'Mahugany', '', '', '0', NULL, NULL, '0', 0, 'DA', 0, '', 0),
(49, 53, '', '', '9°50\'52\"N, 124°14\"41\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Mahugany, Gemelina', '', '', '', 'Mahugany, Gemelina', '', '', '1', NULL, NULL, '0', 0, '', 0, '', 0),
(50, 54, '', '', 'Taas: 9°50\'19\"N, 124°13\'0\"E Ubos: 9°50\'18\"N, 124°1', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Rambutan', '', '', '', '', 'Rambutan', '', '0', NULL, NULL, '0', 0, 'private assistance', 0, '', 0),
(51, 55, '', '', 'Ubos: 9°50\'40\"N, 124°13\'15\"E Taas: 9°50\'39\"N, 124°', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', NULL, NULL, 'None', 0, 'private assistance', 0, '', 0),
(52, 57, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Banana,Tambis', '', '', '', 'Tambis', '', '', '0', NULL, NULL, '0', 0, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `settings_id` int(11) NOT NULL,
  `settings_name` varchar(100) NOT NULL,
  `settings_value` text NOT NULL,
  `settings_parent` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL,
  `position` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`settings_id`, `settings_name`, `settings_value`, `settings_parent`, `is_active`, `position`) VALUES
(1, 'section1', '  <section id=\"main-slider\" class=\"no-margin\">\r\n    <div class=\"carousel slide\">\r\n      <div class=\"carousel-inner\">\r\n        <div class=\"item active\" style=\"background-image: url(\r\n../public/images/cacao.jpg)\">\r\n          <div class=\"container\">\r\n            <div class=\"row slide-margin\">\r\n              <div class=\"col-sm-6\">\r\n                <div class=\"carousel-content\">\r\n                  <h3 class=\"animation animated-item-1\"><span>Welcome to</span> THE CACAO GROWERS</h3>\r\n                  <p class=\"animation animated-item-2\">The Bohol Cacao Integrated Information System Database sponsored by DOST 7.</p>\r\n                  <a class=\"btn-slide animation animated-item-3\" href=\"#\">Read More</a>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"col-sm-6 hidden-xs animation animated-item-4\">\r\n                <div class=\"slider-img\">\r\n                  <img src=\"<?=base_url(\'assets/themes\')?>/Company/images/slider/img3.png\" class=\"img-responsive hidden\">\r\n                </div>\r\n              </div>\r\n\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n', 'home', 1, 1),
(3, 'section2', '\r\n  <div class=\"feature\">\r\n    <div class=\"container\">\r\n      <div class=\"text-center\">\r\n<div class=\"col-md-4\">\r\n<div class=\"hi-icon-wrap hi-icon-effect wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\"><img src=\"../public/images/c-cacao.png\" />\r\n<h2>Criollo</h2>\r\n<p>Criollo a superior quality characterized by having generally elongated and highly ridged pods.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<div class=\"hi-icon-wrap hi-icon-effect wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\"><img src=\"../public/images/f-cacao.png\" />\r\n<h2>Forastero</h2>\r\n<p>Forastero is a high yielding cacao where its pods are thick-walled, hard and round which turn yellow when ripe.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<div class=\"hi-icon-wrap hi-icon-effect wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"900ms\"><img src=\"../public/images/t-cacao.png\" />\r\n<h2>Trinitario</h2>\r\n<p>The richest source of genetic variations for the improvement of cacao by hybridization..</p>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n</div>\r\n</div>', 'home', 1, 2),
(4, 'section3', '\r\n  <div class=\"about\">\r\n    <div class=\"container\">\r\n\r\n<div class=\"col-md-6 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\">\r\n        <h2>WHY CACAO?</h2>\r\n        <img src=\"https://chocolateclass.files.wordpress.com/2017/03/3_main_types_of_cocoa-01_large.jpg\" class=\"img-responsive\" />\r\n        <p>Cacao –Theobroma cacao L. - A rainforest tree now grown and domesticated in lower tropical humid climate near the equator in Central and South America, Africa, India, Indonesia, Sri Lanka, Malaysia and Philippines that need good fertile soils, sunlight and wind protection.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"col-md-6 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">\r\n        <h2>Template built with Twitter Bootstrap</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,\r\n          pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n            libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n          </p>\r\n          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n            libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque </p>\r\n      </div>\r\n\r\n\r\n</div>\r\n</div>', 'home', 1, 3),
(5, 'section4', 'This is news area not editable', 'home', 1, 4),
(6, 'section5', '\r\n  <section id=\"partner\">\r\n    <div class=\"container\"> <div class=\"center wow fadeInDown\">\r\n        <h2>Our Partners</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n      </div>\r\n\r\n      <div class=\"partners\">\r\n        <ul>\r\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\" src=\"../assets/themes/Company/images/partners/partner1.png\"></a></li>\r\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\" src=\"../assets/themes/Company/images/partners/partner2.png\"></a></li>\r\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"900ms\" src=\"../assets/themes/Company/images/partners/partner3.png\"></a></li>\r\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"1200ms\" src=\"../assets/themes/Company/images/partners/partner4.png\"></a></li>\r\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"1500ms\" src=\"../assets/themes/Company/images/partners/partner5.png\"></a></li>\r\n        </ul>\r\n      </div> </div>\r\n    <!--/.container-->\r\n  </section>\r\n  <!--/#partner-->', 'home', 1, 5),
(7, 'section6', '\r\n  <section id=\"conatcat-info\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n\r\n        <div class=\"col-sm-8\">\r\n          <div class=\"media contact-info wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">\r\n            <div class=\"pull-left\">\r\n              <i class=\"fa fa-phone\"></i>\r\n            </div>\r\n            <div class=\"media-body\">\r\n              <h2>Have a question or need a custom quote?</h2>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation +0123 456 70 80</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        </div>\r\n        </div>\r\n</section>', 'home', 1, 6),
(8, 'section1', '\r\n      <h3>Our company information</h3>\r\n      <hr>\r\n      <div class=\"col-md-7 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\">\r\n        <img src=\"../assets/themes/Company/images/7.jpg\" class=\"img-responsive\">\r\n        <h4>We Create, Design and Make it Real</h4>\r\n        <p>Nam tempor velit sed turpis imperdiet vestibulum. In mattis leo ut sapien euismod id feugiat mauris euismod. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus id nulla risus, vel tincidunt\r\n          turpis. Aliquam a nulla mi, placerat blandit eros. </p>\r\n        <p>In neque lectus, lobortis a varius a, hendrerit eget dolor. Fusce scelerisque, sem ut viverra sollicitudin, est turpis blandit lacus, in pretium lectus sapien at est. Integer pretium ipsum sit amet dui feugiat vitae dapibus odio eleifend.</p>\r\n      </div>\r\n      <div class=\"col-md-5 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">\r\n        <div class=\"skill\">\r\n          <h2>Our Skills</h2>\r\n          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n          <div class=\"progress-wrap\">\r\n            <h3>Graphic Design</h3>\r\n            <div class=\"progress\">\r\n              <div class=\"progress-bar  color1\" role=\"progressbar\" aria-valuenow=\"40\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 85%\">\r\n                <span class=\"bar-width\">85%</span>\r\n              </div>\r\n\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"progress-wrap\">\r\n            <h4>HTML</h4>\r\n            <div class=\"progress\">\r\n              <div class=\"progress-bar color2\" role=\"progressbar\" aria-valuenow=\"20\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 95%\">\r\n                <span class=\"bar-width\">95%</span>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"progress-wrap\">\r\n            <h4>CSS</h4>\r\n            <div class=\"progress\">\r\n              <div class=\"progress-bar color3\" role=\"progressbar\" aria-valuenow=\"60\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 80%\">\r\n                <span class=\"bar-width\">80%</span>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"progress-wrap\">\r\n            <h4>Wordpress</h4>\r\n            <div class=\"progress\">\r\n              <div class=\"progress-bar color4\" role=\"progressbar\" aria-valuenow=\"80\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 90%\">\r\n                <span class=\"bar-width\">90%</span>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>', 'about', 1, 1),
(9, 'section2', '<h3>Our Team</h3>       <div class=\"text-center\">         <div class=\"col-md-4 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\">           <img src=\"../assets/themes/Company/images/services/1.jpg\" alt=\"\">           <h4>John Doe</h4>           <p>Lorem ipsum dolor sit amet consectetur adipisicing eil sed deiusmod tempor</p>         </div>         <div class=\"col-md-4 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">           <img src=\"../assets/themes/Company/images/services/2.jpg\" alt=\"\">           <h4>John Doe</h4>           <p>Lorem ipsum dolor sit amet consectetur adipisicing eil sed deiusmod tempor</p>         </div>         <div class=\"col-md-4 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"900ms\">           <img src=\"../assets/themes/Company/images/services/3.jpg\" alt=\"\">           <h4>John Doe</h4>           <p>Lorem ipsum dolor sit amet consectetur adipisicing eil sed deiusmod tempor</p>         </div>       </div>', 'about', 1, 2),
(10, 'section1', '       <h3>Company Services</h3>       <hr>       <div class=\"col-md-6\">         <img src=\"../assets/themes/Company/images/4.jpg\" class=\"img-responsive\">         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,           pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque</p>       </div>        <div class=\"col-md-6\">         <div class=\"media\">           <ul>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-pencil\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Web Development</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-book\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Responsive Design</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-rocket\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Bootstrap Themes</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>           </ul>         </div>       </div>', 'services', 1, 1),
(11, 'section2', '       <div class=\"col-md-6\">         <div class=\"media\">           <ul>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-pencil\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Landing Page</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-book\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Training</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-rocket\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Logo Design</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>           </ul>         </div>       </div>        <div class=\"col-md-6\">         <img src=\"../assets/themes/Company/images/4.jpg\" class=\"img-responsive\">         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,           pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque</p>       </div>', 'services', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-14 11:21:38'),
(2, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-14 11:34:57'),
(3, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-14 14:06:28'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-18 08:27:48'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-18 18:51:30'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-19 08:30:17'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-19 17:43:31'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-20 08:56:14'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 08:09:52'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 11:25:27'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.105', 'Chrome 71.0.3578.99', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Android', '2019-03-21 11:48:34'),
(12, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 14:07:08'),
(13, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 15:36:44'),
(14, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 17:02:18'),
(15, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 17:12:52'),
(16, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-22 08:10:20'),
(17, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-22 14:43:43'),
(18, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-26 08:38:22'),
(19, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-26 10:48:48'),
(20, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.117', 'Chrome 71.0.3578.99', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Android', '2019-03-26 14:31:26'),
(21, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-27 09:37:49'),
(22, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-27 17:00:24'),
(23, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.100', 'Chrome 71.0.3578.99', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Android', '2019-03-27 20:19:19'),
(24, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-28 08:13:01'),
(25, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.100', 'Chrome 71.0.3578.99', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Android', '2019-03-28 17:09:17'),
(26, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-28 22:37:40'),
(27, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-29 10:28:40'),
(28, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-29 18:04:25'),
(29, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-29 21:12:55'),
(30, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-30 11:39:05'),
(31, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-30 17:33:12'),
(32, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-01 14:10:13'),
(33, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-01 16:54:54'),
(34, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-03 16:55:01'),
(35, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-08 08:04:52'),
(36, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-08 14:05:40'),
(37, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-15 08:49:18'),
(38, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-16 15:07:53'),
(39, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-16 15:52:50'),
(40, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-17 08:38:59'),
(41, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-18 17:08:39'),
(42, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-23 13:37:15'),
(43, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-24 08:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'letswrite14@gmail.com', '$2y$10$6NOKhXKiR2SAgpFF2WpCkuRgYKlSqFJaqM0NgIM3PT1gKHEM5/SM6', 'System Administrator', '09094573621', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visits`
--

CREATE TABLE `tbl_visits` (
  `visit_id` int(11) NOT NULL,
  `country` varchar(25) NOT NULL,
  `date_of_visit` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_visits`
--

INSERT INTO `tbl_visits` (`visit_id`, `country`, `date_of_visit`, `counter`) VALUES
(1, 'AU', '2019-03-04', 6),
(2, 'EC', '2019-03-05', 1),
(3, 'JP', '2019-03-05', 2),
(4, 'PH', '2019-03-05', 2),
(5, 'US', '2019-03-05', 1),
(6, 'AU', '2019-03-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE `user_activity` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `subject` text,
  `publisher_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expires_at` datetime NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_activity`
--

INSERT INTO `user_activity` (`activity_id`, `user_id`, `event`, `subject`, `publisher_id`, `created_at`, `expires_at`, `ip`) VALUES
(1, 1, 'logout', NULL, 0, '2019-03-14 11:31:37', '0000-00-00 00:00:00', '::1'),
(2, 1, 'login', NULL, 0, '2019-03-14 11:32:52', '0000-00-00 00:00:00', '::1'),
(3, 1, 'logout', NULL, 0, '2019-03-14 11:33:08', '0000-00-00 00:00:00', '::1'),
(4, 1, 'login', NULL, 0, '2019-03-14 11:33:10', '0000-00-00 00:00:00', '::1'),
(5, 1, 'respondentsAdd', 'Add basic information', 56, '2019-03-14 14:00:51', '0000-00-00 00:00:00', '::1'),
(6, 1, 'respondentsAdd', 'Add basic information', 57, '2019-03-14 14:02:50', '0000-00-00 00:00:00', '::1'),
(7, 1, 'respondentsAdd', 'Add basic information', 58, '2019-03-20 15:09:14', '0000-00-00 00:00:00', '::1'),
(8, 1, 'respondentsAdd', 'Add basic information', 59, '2019-03-20 15:19:15', '0000-00-00 00:00:00', '::1'),
(9, 1, 'respondentsAdd', 'Add basic information', 56, '2019-03-21 10:45:33', '0000-00-00 00:00:00', '::1'),
(10, 1, 'respondentsAdd', 'Add basic information', 57, '2019-03-21 10:52:43', '0000-00-00 00:00:00', '::1'),
(11, 1, 'respondentsAdd', 'Add basic information', 58, '2019-03-27 21:56:58', '0000-00-00 00:00:00', '192.168.0.200'),
(12, 1, 'respondentsAdd', 'Add basic information', 59, '2019-03-27 21:57:20', '0000-00-00 00:00:00', '192.168.0.200'),
(13, 1, 'respondentsAdd', 'Add basic information', 60, '2019-03-27 21:57:48', '0000-00-00 00:00:00', '192.168.0.200'),
(14, 1, 'respondentsAdd', 'Add basic information', 61, '2019-03-27 21:57:49', '0000-00-00 00:00:00', '192.168.0.200'),
(15, 1, 'respondentsAdd', 'Add basic information', 62, '2019-03-27 21:58:57', '0000-00-00 00:00:00', '192.168.0.200'),
(16, 1, 'respondentsAdd', 'Add basic information', 63, '2019-03-28 09:10:08', '0000-00-00 00:00:00', '192.168.0.200'),
(17, 1, 'respondentsAdd', 'Add basic information', 64, '2019-03-28 09:45:40', '0000-00-00 00:00:00', '192.168.0.200'),
(18, 1, 'respondentsAdd', 'Add basic information', 65, '2019-03-28 09:48:41', '0000-00-00 00:00:00', '192.168.0.200'),
(19, 1, 'respondentsAdd', 'Add basic information', 66, '2019-03-28 09:58:40', '0000-00-00 00:00:00', '192.168.0.200'),
(20, 1, 'respondentsAdd', 'Add basic information', 67, '2019-03-28 10:00:49', '0000-00-00 00:00:00', '192.168.0.200'),
(21, 1, 'respondentsAdd', 'Add basic information', 68, '2019-03-28 10:09:00', '0000-00-00 00:00:00', '192.168.0.200'),
(22, 1, 'respondentsAdd', 'Add basic information', 69, '2019-03-28 10:10:15', '0000-00-00 00:00:00', '192.168.0.200'),
(23, 1, 'respondentsAdd', 'Add basic information', 70, '2019-03-28 10:11:46', '0000-00-00 00:00:00', '192.168.0.200'),
(24, 1, 'respondentsAdd', 'Add basic information', 71, '2019-03-28 10:13:01', '0000-00-00 00:00:00', '192.168.0.200'),
(25, 1, 'respondentsAdd', 'Add basic information', 72, '2019-03-28 10:26:19', '0000-00-00 00:00:00', '192.168.0.200'),
(26, 1, 'respondentsAdd', 'Add basic information', 73, '2019-03-28 10:28:50', '0000-00-00 00:00:00', '192.168.0.200'),
(27, 1, 'respondentsAdd', 'Add basic information', 74, '2019-03-28 10:31:54', '0000-00-00 00:00:00', '192.168.0.200'),
(28, 1, 'respondentsAdd', 'Add basic information', 75, '2019-03-28 11:30:33', '0000-00-00 00:00:00', '192.168.0.200'),
(30, 1, 'respondentsAdd', 'Add basic information', 77, '2019-03-28 11:32:54', '0000-00-00 00:00:00', '192.168.0.200'),
(32, 1, 'respondentsAdd', 'Add basic information', 79, '2019-03-28 17:19:59', '0000-00-00 00:00:00', '192.168.0.200'),
(33, 1, 'respondentsAdd', 'Add basic information', 80, '2019-03-28 17:22:26', '0000-00-00 00:00:00', '192.168.0.200'),
(34, 1, 'respondentsAdd', 'Add basic information', 81, '2019-03-28 17:25:10', '0000-00-00 00:00:00', '192.168.0.200'),
(35, 1, 'respondentsAdd', 'Add basic information', 82, '2019-03-28 17:29:17', '0000-00-00 00:00:00', '192.168.0.200'),
(36, 1, 'respondentsAdd', 'Add basic information', 83, '2019-03-28 17:31:22', '0000-00-00 00:00:00', '192.168.0.200'),
(37, 1, 'respondentsAdd', 'Add basic information', 84, '2019-03-28 17:37:16', '0000-00-00 00:00:00', '192.168.0.100'),
(38, 1, 'respondentsAdd', 'Add basic information', 85, '2019-03-30 17:35:43', '0000-00-00 00:00:00', '192.168.0.200'),
(39, 1, 'respondentsAdd', 'Add basic information', 86, '2019-03-30 17:39:28', '0000-00-00 00:00:00', '192.168.0.200'),
(40, 1, 'respondentsAdd', 'Add basic information', 87, '2019-03-30 17:40:50', '0000-00-00 00:00:00', '192.168.0.200'),
(46, 1, 'respondentsAdd', 'Add basic information', 93, '2019-03-30 17:46:35', '0000-00-00 00:00:00', '192.168.0.200'),
(47, 1, 'respondentsAdd', 'Add basic information', 94, '2019-03-30 17:47:39', '0000-00-00 00:00:00', '192.168.0.200'),
(48, 1, 'respondentsAdd', 'Add basic information', 95, '2019-03-30 18:14:56', '0000-00-00 00:00:00', '192.168.0.200');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `msg_messages`
--
ALTER TABLE `msg_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg_participants`
--
ALTER TABLE `msg_participants`
  ADD PRIMARY KEY (`user_id`,`thread_id`);

--
-- Indexes for table `msg_status`
--
ALTER TABLE `msg_status`
  ADD PRIMARY KEY (`message_id`,`user_id`);

--
-- Indexes for table `msg_threads`
--
ALTER TABLE `msg_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pestdisease`
--
ALTER TABLE `pestdisease`
  ADD PRIMARY KEY (`pestdisease_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `respondents`
--
ALTER TABLE `respondents`
  ADD PRIMARY KEY (`respondent_id`);

--
-- Indexes for table `respondents_affiliation`
--
ALTER TABLE `respondents_affiliation`
  ADD PRIMARY KEY (`respondent_id`);

--
-- Indexes for table `respondents_farm_profile`
--
ALTER TABLE `respondents_farm_profile`
  ADD PRIMARY KEY (`farm_id`);

--
-- Indexes for table `respondents_organizations`
--
ALTER TABLE `respondents_organizations`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `respondents_pest_disease`
--
ALTER TABLE `respondents_pest_disease`
  ADD PRIMARY KEY (`pest_id`);

--
-- Indexes for table `respondents_post_harvest`
--
ALTER TABLE `respondents_post_harvest`
  ADD PRIMARY KEY (`harvet_id`);

--
-- Indexes for table `respondents_production_management`
--
ALTER TABLE `respondents_production_management`
  ADD PRIMARY KEY (`production_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_visits`
--
ALTER TABLE `tbl_visits`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indexes for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `msg_messages`
--
ALTER TABLE `msg_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `msg_threads`
--
ALTER TABLE `msg_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pestdisease`
--
ALTER TABLE `pestdisease`
  MODIFY `pestdisease_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `respondents`
--
ALTER TABLE `respondents`
  MODIFY `respondent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `respondents_farm_profile`
--
ALTER TABLE `respondents_farm_profile`
  MODIFY `farm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `respondents_organizations`
--
ALTER TABLE `respondents_organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `respondents_pest_disease`
--
ALTER TABLE `respondents_pest_disease`
  MODIFY `pest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `respondents_post_harvest`
--
ALTER TABLE `respondents_post_harvest`
  MODIFY `harvet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `respondents_production_management`
--
ALTER TABLE `respondents_production_management`
  MODIFY `production_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_visits`
--
ALTER TABLE `tbl_visits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
