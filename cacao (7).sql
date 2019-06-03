-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 01:59 AM
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
-- Database: `cacao`
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
(41, 'Gonzalo', 'Galopido', 60, 'Married', 'Elementary Level', 7, '10,000 below', 'Nueva Vida Norte, Carmen, Bohol, Philippines', '21926', '822', 'Alburquerque', '', '2019-02-23 00:00:00', '2019-02-23 08:37:54', 3, 3, '2019-05-03 00:52:01', '182065ccb90b1377376.19186159'),
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
(57, 'Fabian', 'Boque', 56, ' Married', ' College Level', 6, '10,000 below', 'Abucayan Sur, Calape, Bohol, Philippines', '21852', '820', 'Calape', '', '2019-03-06 00:00:00', '2019-03-21 02:52:43', 1, 1, '2019-03-21 02:52:43', ''),
(59, 'Brigada', 'Aceron', 53, 'Married', 'College Graduate', 2, '40,000 and above', 'Purok 9, Canjulao, Jagna, Bohol, Philippines', '22211', '835', 'Alburquerque', '', '2019-04-29 00:00:00', '2019-04-29 02:06:22', 3, 3, '2019-05-02 03:42:26', '46235cca6722d5d679.32621573'),
(60, 'Fidel', 'Quibol', 62, 'Married', 'Elementary Graduate', 2, '10,001 to 20,000', 'purok 3, Banlasan, Calape, Bohol, Philippines', '22395', '811', 'Calape', '', '2019-04-29 00:00:00', '2019-04-29 02:39:40', 3, 3, '2019-04-29 02:39:40', '231635cc663ec8dc3a9.97190571'),
(61, 'Nestor', 'Atacador', 73, 'Married', 'High School Level', 8, '10,001 to 20,000', 'Purok 2, Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-04-29 00:00:00', '2019-04-29 02:56:33', 3, 3, '2019-04-29 02:56:33', '299105cc667e1d95b03.90530731'),
(62, 'Francisco', 'Dumalaoron', 52, 'Married', 'College Graduate', 2, '10,000 below', 'Purok 2, Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-04-07 00:00:00', '2019-04-29 03:11:59', 3, 3, '2019-04-29 03:11:59', '159405cc66b7fea3146.74717432'),
(63, 'Saligumba', 'Godofredo', 61, 'Married', 'Elementary Graduate', 4, '10,000 below', 'Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-04-05 00:00:00', '2019-04-29 03:27:11', 3, 3, '2019-04-29 03:27:11', '21465cc66f0f9da086.78231719'),
(64, 'Marcelo', 'Cabug-os', 62, 'Married', 'Elementary Graduate', 2, '10,000 below', 'Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-03-07 00:00:00', '2019-04-29 03:35:47', 3, 3, '2019-04-29 03:35:47', '314085cc671139f0262.69103402'),
(65, 'Lino', 'Manigo', 52, 'Married', 'Elementary Graduate', 6, '10,000 below', 'Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-03-07 00:00:00', '2019-04-29 03:45:09', 3, 3, '2019-04-29 03:45:09', '186065cc673457baa52.56635310'),
(66, 'Bernardo', 'Bulala', 68, 'Married', 'High School Graduate', 9, '10,000 below', 'Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-03-05 00:00:00', '2019-04-29 03:54:56', 3, 3, '2019-04-29 03:54:56', '45725cc67590c3cf31.38435813'),
(67, 'Victor', 'Lopez', 59, 'Married', 'Elementary Graduate', 5, '10,000 below', 'Purok 2, Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-04-29 00:00:00', '2019-04-29 05:44:50', 3, 3, '2019-04-29 05:44:50', '168265cc68f52922b30.67508372'),
(68, 'Orilla', 'Cresente', 92, 'Single', 'High School Graduate', 15, '10,000 below', 'Abucayan Sur, Calape, Bohol, Philippines', '21852', '820', 'Calape', '', '2019-03-06 00:00:00', '2019-04-29 06:11:39', 3, 3, '2019-04-29 06:11:39', '144335cc6959b67e0f3.90563852'),
(69, 'Recardo', 'Remperas', 69, 'Widow/Widower', 'High School Level', 5, '10,000 below', 'Catmonan, Calape, Bohol, Philippines', '21862', '820', 'Calape', '', '2019-03-08 00:00:00', '2019-04-29 06:30:35', 3, 3, '2019-04-29 06:30:35', '165005cc69a0b076b08.11134738'),
(70, 'Banados', 'Apolinario', 59, 'Single', 'Elementary Graduate', 7, '10,000 below', 'Vallehermoso, Carmen, Bohol, Philippines', '21930', '822', 'Carmen', '', '2019-04-29 00:00:00', '2019-04-29 06:56:29', 3, 3, '2019-04-29 06:56:29', '199865cc6a01dc48357.46896025'),
(71, 'Jocelyn', 'Latras', 44, 'Married', 'Elementary Level', 6, '10,000 below', 'Camanaga, San miguel, Bohol, Philippines', '22533', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 07:12:48', 3, 3, '2019-04-29 07:12:48', '167035cc6a3f063a5f6.09187183'),
(72, 'Marcelina', 'Makabinta', 61, 'Single', 'Elementary Level', 3, '10,000 below', 'Cabangahan, San miguel, Bohol, Philippines', '22531', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 07:21:27', 3, 3, '2019-04-29 07:21:27', '162135cc6a5f7231776.36194763'),
(73, 'Procolo', 'Ausa', 69, 'Single', 'Elementary Level', 6, '10,000 below', 'Tomoc, San miguel, Bohol, Philippines', '22546', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 07:30:22', 3, 3, '2019-04-29 07:30:22', '128915cc6a80ecf6b20.80624255'),
(74, 'Isidro', 'Boncales', 59, 'Married', 'High School Level', 4, '10,000 below', 'Mahayag, San miguel, Bohol, Philippines', '22540', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 07:38:46', 3, 3, '2019-04-29 07:38:46', '316975cc6aa06194f25.65398716'),
(75, 'Lucas Jr.', 'Perticos', 68, 'Married', 'College Graduate', 4, '10,001 to 20,000', 'Mahayag, San miguel, Bohol, Philippines', '22540', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 07:44:09', 3, 3, '2019-04-29 07:44:09', '64555cc6ab49d8e5a3.90619747'),
(76, 'Zenon C.', 'Libaton', 56, 'Married', 'High School Graduate', 3, '10,001 to 20,000', 'Purok 3, Santo Niño, San miguel, Bohol, Philippines', '22545', '848', 'San miguel', '', '2018-04-29 00:00:00', '2019-04-29 07:54:33', 3, 3, '2019-04-29 07:54:33', '45635cc6adb937fd15.74712527'),
(77, 'Nekomediz', 'Boncales', 70, 'Married', 'Elementary Level', 3, '10,000 below', 'San Vicente, San miguel, Bohol, Philippines', '22544', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 07:58:19', 3, 3, '2019-04-29 07:58:19', '215135cc6ae9b9679a8.01654177'),
(78, 'Isidra', 'Auza', 75, 'Married', 'Elementary Graduate', 3, '10,000 below', 'Purok 5, Tomoc, San miguel, Bohol, Philippines', '22546', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 08:01:51', 3, 3, '2019-04-29 08:01:51', '307675cc6af6fd83006.52216416'),
(79, 'Loreto', 'Gallo', 61, 'Married', 'High School Level', 3, '10,000 below', 'Tomoc, San miguel, Bohol, Philippines', '22546', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 08:07:26', 3, 3, '2019-04-29 08:07:26', '101815cc6b0be95e780.46861038'),
(80, 'Marilyn', 'Canoy', 60, 'Married', 'College Graduate', 2, '10,000 below', 'Purok 4, Mahayag, San miguel, Bohol, Philippines', '22540', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 08:11:50', 3, 3, '2019-04-29 08:11:50', '266995cc6b1c6bae3b0.83435510'),
(81, 'Emilio', 'Bais', 59, 'Married', 'College Graduate', 4, '20,001 to 30,000', 'Purok 3, Cabangahan, San miguel, Bohol, Philippines', '22531', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 08:19:17', 3, 3, '2019-04-29 08:19:17', '309505cc6b385ea5558.20765628'),
(82, 'Alejandra', 'Leornas', 47, 'Married', 'College Graduate', 4, '20,001 to 30,000', 'Purok 4, Cabangahan, San miguel, Bohol, Philippines', '22531', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 08:40:24', 3, 3, '2019-04-29 08:40:24', '22605cc6b8789fd2b3.59549510'),
(83, 'Eufemio', 'Evardo', 60, 'Married', 'Elementary Graduate', 6, '10,000 below', 'Purok 6, Tomoc, San miguel, Bohol, Philippines', '22546', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 08:49:34', 3, 3, '2019-04-29 08:49:34', '157305cc6ba9ee54ec6.92476718'),
(84, 'Mario', 'Juaton', 61, 'Married', 'College Graduate', 6, '10,001 to 20,000', 'Purok 1, Camanaga, San miguel, Bohol, Philippines', '22533', '848', 'San miguel', '', '2019-04-29 00:00:00', '2019-04-29 08:58:14', 3, 3, '2019-04-29 08:58:14', '241285cc6bca685add9.95945927'),
(85, 'Eladio', 'Macalam', 75, 'Married', 'High School Level', 7, '10,000 below', 'Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-04-12 00:00:00', '2019-05-02 00:24:07', 3, 3, '2019-05-02 00:24:07', '305985cca38a7749938.63563826'),
(86, 'Artemio', 'Rana', 58, 'Married', 'Elementary Level', 6, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-03-21 00:00:00', '2019-05-02 00:35:32', 3, 3, '2019-05-02 00:35:32', '144525cca3b54ef6897.81453283'),
(87, 'Norberto', 'Salan', 56, 'Married', 'Elementary Graduate', 2, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 00:49:48', 3, 3, '2019-05-02 00:49:48', '15545cca3eac6cfc93.53214148'),
(88, 'Fermin', 'Ranesis', 55, 'Married', 'Elementary Graduate', 5, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 01:00:37', 3, 3, '2019-05-02 01:00:37', '265925cca4135ced985.65463186'),
(89, 'Gaudencio', 'Acera', 61, 'Married', 'Elementary Graduate', 3, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-02-03 00:00:00', '2019-05-02 01:08:04', 3, 3, '2019-05-02 01:08:04', '290225cca42f435abf3.29421482'),
(90, 'Margarita', 'Abcede', 69, 'Married', 'Elementary Graduate', 5, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-03-29 00:00:00', '2019-05-02 01:19:24', 3, 3, '2019-05-02 01:19:24', '87165cca459c7cc717.24616821'),
(91, 'Cipriano', 'Ranesis', 57, 'Married', 'Elementary Graduate', 5, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-03-20 00:00:00', '2019-05-02 01:38:42', 3, 3, '2019-05-02 01:38:42', '26515cca4a224587a4.97444981'),
(92, 'Guzman', 'Olaer', 48, 'Married', 'College Graduate', 3, '10,001 to 20,000', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-03-20 00:00:00', '2019-05-02 01:47:52', 3, 3, '2019-05-02 01:47:52', '50735cca4c48d22a44.84732697'),
(93, 'Ananias', 'Ednilan', 47, 'Married', 'Elementary Graduate', 2, '10,001 to 20,000', 'Purok 2, Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 01:57:09', 3, 3, '2019-05-02 01:57:09', '289835cca4e75b0d4e5.60216355'),
(94, 'Climaco', 'Ednilan', 52, 'Married', 'Elementary Graduate', 3, '10,001 to 20,000', 'Purok 2, Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:03:38', 3, 3, '2019-05-02 02:03:38', '71815cca4ffa5d0ce8.33369364'),
(95, 'Pedro', 'Ranesis', 50, 'Married', 'College Level', 4, '10,001 to 20,000', 'Purok 2, Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:11:06', 3, 3, '2019-05-02 02:11:06', '270915cca51ba729ed0.16469019'),
(96, 'Lamberto', 'Ranesis', 62, 'Married', 'High School Graduate', 4, '10,001 to 20,000', 'Purok 1, Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:19:32', 3, 3, '2019-05-02 02:19:32', '276575cca53b47d1d79.63098018'),
(97, 'Ruperto', 'Galia', 73, 'Married', 'High School Graduate', 4, '20,001 to 30,000', 'Purok 1, Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:25:47', 3, 3, '2019-05-02 02:25:47', '205275cca552be9f234.36732564'),
(98, 'Marciano', 'Sagosoy', 89, 'Married', 'College Graduate', 12, '10,001 to 20,000', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:33:08', 3, 3, '2019-05-02 02:33:08', '163255cca56e4b589e9.48241380'),
(99, 'Gabriel', 'Ranises', 53, 'Married', 'High School Graduate', 6, '10,001 to 20,000', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:38:44', 3, 3, '2019-05-02 02:38:44', '164595cca58349dc481.60362062'),
(100, 'Dionisio', 'Sagosoy', 73, 'Married', 'High School Graduate', 4, '20,001 to 30,000', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:44:23', 3, 3, '2019-05-02 02:44:23', '49295cca5987ca4395.56250198'),
(101, 'Bienvenido', 'Cacre', 48, 'Married', 'High School Graduate', 4, '10,001 to 20,000', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:49:43', 3, 3, '2019-05-02 02:49:43', '56715cca5ac7f03525.23685034'),
(102, 'Roel', 'Galagar', 47, 'Married', 'Elementary Graduate', 2, '10,001 to 20,000', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:53:21', 3, 3, '2019-05-02 02:53:21', '88295cca5ba1724458.01406650'),
(103, 'Juan', 'Galagar', 66, 'Single', 'Elementary Graduate', 7, '10,001 to 20,000', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 02:59:33', 3, 3, '2019-05-02 02:59:33', '280995cca5d15c2dd21.52498026'),
(104, 'Tomas Acera', 'Ranises', 70, 'Married', 'High School Level', 2, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-03-20 00:00:00', '2019-05-02 03:04:21', 3, 3, '2019-05-02 03:04:21', '270015cca5e35c83543.28593552'),
(105, 'Rolly', 'Visande', 58, 'Married', 'High School Graduate', 3, '10,001 to 20,000', 'Calabacita, Jagna, Bohol, Philippines', '22208', '835', 'Jagna', '', '2019-03-15 00:00:00', '2019-05-02 03:07:14', 3, 3, '2019-05-02 03:07:14', '89915cca5ee234e112.37343223'),
(106, 'Pedro', 'Ranis', 69, 'Married', 'Elementary Graduate', 7, '10,000 below', 'Boctol, Jagna, Bohol, Philippines', '22203', '835', 'Jagna', '', '2019-03-13 00:00:00', '2019-05-02 03:11:24', 3, 3, '2019-05-02 03:11:24', '92695cca5fdcb77455.40439845'),
(107, 'Erlinda', 'Tadena', 60, 'Married', 'College Graduate', 3, '10,000 below', 'Boctol, Jagna, Bohol, Philippines', '22203', '835', 'Jagna', '', '2019-03-13 00:00:00', '2019-05-02 03:16:54', 3, 3, '2019-05-02 03:16:54', '210515cca6126e5c085.54574289'),
(108, 'Loreta', 'Nalasa', 64, 'Married', 'Elementary Graduate', 4, '10,000 below', 'Boctol, Jagna, Bohol, Philippines', '22203', '835', 'Jagna', '', '2019-03-13 00:00:00', '2019-05-02 03:22:07', 3, 3, '2019-05-02 03:22:07', '201455cca625f51cd39.16983815'),
(109, 'Neri', 'Amolato', 60, 'Married', 'High School Graduate', 5, '10,001 to 20,000', 'Canjulao, Jagna, Bohol, Philippines', '22211', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 03:25:30', 3, 3, '2019-05-02 03:25:30', '222955cca632a22bd33.69124168'),
(110, 'Eduard Galido', 'Daguplo', 44, 'Single', 'College Graduate', 5, '10,001 to 20,000', 'Calabacita, Jagna, Bohol, Philippines', '22208', '835', 'Jagna', '', '2019-03-15 00:00:00', '2019-05-02 03:33:01', 3, 3, '2019-05-02 03:33:01', '94535cca64edc504d9.07206566'),
(111, 'Angelito', 'Nalasa', 43, 'Married', 'High School Graduate', 9, '10,000 below', 'Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-03-12 00:00:00', '2019-05-02 03:37:43', 3, 3, '2019-05-02 03:37:43', '198915cca6607e8ab97.16367552'),
(112, 'Luciano', 'Ranesis', 43, 'Married', 'High School Level', 3, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-03-19 00:00:00', '2019-05-02 05:25:15', 3, 3, '2019-05-02 05:25:15', '25375cca7f3bdaba19.30042494'),
(113, 'Wilfredo', 'Ranesis', 64, 'Married', 'College Graduate', 8, '10,001 to 20,000', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 05:30:16', 3, 3, '2019-05-02 05:30:16', '207515cca80687b0be4.62690685'),
(114, 'Subimino', 'Ranesis', 66, 'Single', 'High School Graduate', 8, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-03-20 00:00:00', '2019-05-02 05:37:29', 3, 3, '2019-05-02 05:37:29', '234615cca82192e9418.65878848'),
(115, 'Feliciano', 'Ranesis', 40, 'Married', 'College Level', 1, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-03-19 00:00:00', '2019-05-02 05:44:14', 3, 3, '2019-05-02 05:44:14', '284595cca83ae966cc7.36639645'),
(116, 'Danilo', 'Ranesis', 39, 'Married', 'High School Graduate', 4, '10,000 below', 'Canjulao, Jagna, Bohol, Philippines', '22211', '835', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 05:48:52', 3, 3, '2019-05-02 05:48:52', '33615cca84c403b042.48582961'),
(117, 'Marcosa', 'Hara', 66, 'Married', 'High School Graduate', 6, '40,000 and above', 'Purok 9, Canjulao, Jagna, Bohol, Philippines', '22395', '811', 'Jagna', '', '2019-05-02 00:00:00', '2019-05-02 05:54:51', 3, 3, '2019-05-02 05:54:51', '179535cca862ba96167.35964338'),
(118, 'Ficido', 'Sajol', 64, 'Married', 'High School Level', 2, '10,000 below', 'Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-03-12 00:00:00', '2019-05-02 06:05:20', 3, 3, '2019-05-02 06:05:20', '133195cca88a0cee059.13651776'),
(119, 'Lilia', 'Ada', 51, 'Married', 'College Level', 4, '10,001 to 20,000', 'Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-03-12 00:00:00', '2019-05-02 06:11:30', 3, 3, '2019-05-02 06:11:30', '90535cca8a128deb27.57990516'),
(120, 'Bartolome', 'Tadle', 73, 'Married', 'Elementary Graduate', 11, '10,001 to 20,000', 'Purok 7, Boctol, Jagna, Bohol, Philippines', '22203', '835', 'Jagna', '', '2019-03-13 00:00:00', '2019-05-02 06:20:03', 3, 3, '2019-05-02 06:20:03', '24675cca8c13c4de67.52852962'),
(121, 'Godofredo', 'Nalasa', 58, 'Married', 'Elementary Graduate', 7, '10,000 below', 'Purok 5, Boctol, Jagna, Bohol, Philippines', '22203', '835', 'Jagna', '', '2019-03-13 00:00:00', '2019-05-02 06:27:26', 3, 3, '2019-05-02 06:27:26', '62335cca8dce2e8ef4.55146093'),
(122, 'Eutimia', 'Penia', 52, 'Married', 'Elementary Graduate', 6, '10,000 below', 'Purok9, Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-03-12 00:00:00', '2019-05-02 06:33:17', 3, 3, '2019-05-02 06:33:17', '74235cca8f2d445671.77413537'),
(123, 'Hermie A.', 'Galambao', 60, 'Married', 'College Graduate', 6, '20,001 to 30,000', 'Purok4, Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-02-13 00:00:00', '2019-05-02 06:45:30', 3, 3, '2019-05-02 06:45:30', '248535cca920b0118d3.95811647'),
(124, 'Julian', 'Pagulon', 54, 'Married', 'High School Level', 11, '20,001 to 30,000', 'Calabacita, Jagna, Bohol, Philippines', '22208', '835', 'Jagna', '', '2019-02-15 00:00:00', '2019-05-02 07:07:54', 3, 3, '2019-05-02 07:07:54', '5175cca974abcddf2.41499072'),
(125, 'Elena', 'Galve', 63, 'Married', 'High School Level', 9, '10,000 below', 'Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-03-12 00:00:00', '2019-05-02 07:16:45', 3, 3, '2019-05-02 07:16:45', '277875cca995d9f8d24.54302051'),
(126, 'Daniel', 'Galve', 77, 'Married', 'Elementary Level', 9, '10,000 below', 'Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-03-12 00:00:00', '2019-05-02 07:21:50', 3, 3, '2019-05-02 07:21:50', '312705cca9a8e63a078.01308880'),
(127, 'Luciano', 'Ociones', 72, 'Married', 'Elementary Graduate', 5, '10,000 below', 'Kambongol, Boctol, Jagna, Bohol, Philippines', '22203', '835', 'Jagna', '', '2019-03-14 00:00:00', '2019-05-02 07:47:26', 3, 3, '2019-05-02 07:47:26', '30925ccaa08e2f30d0.81200140'),
(128, 'Bertoldo', 'Cagas', 63, 'Married', 'Elementary Graduate', 9, '10,000 below', 'Calabacita, Jagna, Bohol, Philippines', '22208', '835', 'Jagna', '', '2019-03-15 00:00:00', '2019-05-02 08:01:33', 3, 3, '2019-05-02 08:01:33', '47865ccaa3dde01f57.72017297'),
(129, 'Alberto', 'Sividan', 55, 'Married', 'College Level', 4, '10,000 below', 'Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-03-12 00:00:00', '2019-05-02 08:11:56', 3, 3, '2019-05-02 08:11:56', '218885ccaa64c3ebdd6.08511113'),
(130, 'Roel', 'Sajol', 43, 'Married', 'College Graduate', 5, '10,000 below', 'Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-03-12 00:00:00', '2019-05-02 08:18:17', 3, 3, '2019-05-02 08:18:17', '102385ccaa7c9d2ded1.48783554'),
(131, 'Alda', 'Jacob', 54, 'Married', 'Elementary Graduate', 6, '10,001 to 20,000', 'Guadalupe, Carmen, Bohol, Philippines', '21912', '822', 'Carmen', '', '2019-05-02 00:00:00', '2019-05-02 08:42:05', 3, 3, '2019-05-02 08:42:05', '179305ccaad5d31f834.47685383'),
(132, 'Refulle', 'Antero', 50, 'Married', 'College Graduate', 3, '30,001 to 40,000', 'Alegria, Carmen, Bohol, Philippines', '21905', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 00:46:05', 3, 3, '2019-05-03 00:46:05', '85385ccb8f4de1da82.99999720'),
(133, 'Jesus', 'Cagadas', 69, 'Married', 'Elementary Level', 4, '10,000 below', 'Montehermoso, Carmen, Bohol, Philippines', '21919', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 01:01:13', 3, 3, '2019-05-03 01:01:13', '228875ccb92d93bbee6.24046167'),
(134, 'Ethyl', 'Dumandan', 43, 'Married', 'High School Graduate', 4, '10,000 below', 'El Salvador, Carmen, Bohol, Philippines', '21911', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 01:08:19', 3, 3, '2019-05-03 01:08:19', '142695ccb948318cd75.37637055'),
(135, 'Dennis', 'Lague', 39, 'Married', 'High School Graduate', 4, '10,000 below', 'Katipunan, Carmen, Bohol, Philippines', '21913', '822', 'Carmen', '', '2019-02-25 00:00:00', '2019-05-03 01:19:03', 3, 3, '2019-05-03 01:19:03', '236805ccb97076c3870.12191353'),
(136, 'Ernesto M.', 'Palma', 65, 'Married', 'High School Graduate', 7, '10,001 to 20,000', 'Abaca, Carmen, Bohol, Philippines', '21905', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 01:22:57', 3, 3, '2019-05-03 01:22:57', '17905ccb97f1558715.91078946'),
(137, 'Juanito', 'Lim', 56, 'Married', 'College Graduate', 6, '40,000 and above', 'Poblacion Sur, Carmen, Bohol, Philippines', '21928', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 01:35:23', 3, 3, '2019-05-03 01:35:23', '115115ccb9adb7659d3.60627300'),
(138, 'Efren', 'Garcia', 64, 'Married', 'College Graduate', 3, '20,001 to 30,000', 'La Paz, Carmen, Bohol, Philippines', '21915', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 01:39:24', 3, 3, '2019-05-03 01:39:24', '221465ccb9bcc84c657.24557897'),
(139, 'Eduardo', 'Dag-um', 56, 'Married', 'College Level', 8, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 01:44:26', 3, 3, '2019-05-03 01:44:26', '178725ccb9cfa51d0b9.35065608'),
(140, 'Nelson', 'Cajote', 47, 'Married', 'Elementary Level', 6, '10,001 to 20,000', 'Katipunan, Carmen, Bohol, Philippines', '21913', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 01:48:37', 3, 3, '2019-05-03 01:48:37', '227345ccb9df5af82d1.48024421'),
(141, 'Robinson', 'So??ega', 56, 'Married', 'High School Graduate', 6, '10,000 below', 'Buenavista, Carmen, Bohol, Philippines', '21907', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 02:14:11', 3, 3, '2019-05-03 02:14:11', '52335ccba3f36e1149.00845081'),
(142, 'Joey', 'Baquiano', 28, 'Single', 'College Graduate', 3, '10,001 to 20,000', 'Vallehermoso, Carmen, Bohol, Philippines', '21930', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 02:49:39', 3, 3, '2019-05-03 02:49:39', '288195ccbac43e40973.11143792'),
(143, 'Neria', 'Alfafara', 53, 'Married', 'College Graduate', 1, '10,000 below', 'Purok 5, Santa Catalina, Sagbayan (borja), Bohol, Philippines', '22514', '846', 'Sagbayan (borja)', '', '2019-02-27 00:00:00', '2019-05-03 02:52:03', 3, 3, '2019-05-03 02:52:03', '145505ccbacd3a685f9.23442781'),
(144, 'Charlie', 'Nuyad', 36, 'Married', 'College Level', 5, '10,001 to 20,000', 'San Antonio, Sagbayan (borja), Bohol, Philippines', '22508', '846', 'Sagbayan (borja)', '', '2019-02-27 00:00:00', '2019-05-03 03:01:22', 3, 3, '2019-05-03 03:01:22', '17095ccbaf022342d5.67861849'),
(145, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:06:35', 3, 3, '2019-05-03 03:06:35', '87725ccbb03be9a168.28173768'),
(146, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:06:38', 3, 3, '2019-05-03 03:06:38', '325575ccbb03eb9d1c1.55263605'),
(147, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:06:48', 3, 3, '2019-05-03 03:06:48', '31705ccbb0486c4297.55010071'),
(148, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:06:54', 3, 3, '2019-05-03 03:06:54', '209795ccbb04e3d15b4.85865146'),
(149, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:06:59', 3, 3, '2019-05-03 03:06:59', '78565ccbb053118006.58067914'),
(150, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:07:01', 3, 3, '2019-05-03 03:07:01', '248735ccbb0557187f6.24677550'),
(151, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:07:02', 3, 3, '2019-05-03 03:07:02', '32465ccbb05603b025.58562724'),
(152, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:07:02', 3, 3, '2019-05-03 03:07:02', '259715ccbb0563140c1.66321376'),
(153, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:07:02', 3, 3, '2019-05-03 03:07:02', '276965ccbb05659ab53.56355192'),
(154, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:07:02', 3, 3, '2019-05-03 03:07:02', '247455ccbb0568226a6.11686706'),
(155, 'Dominador', 'Saure', 45, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-03 00:00:00', '2019-05-03 03:07:10', 3, 3, '2019-05-03 03:07:10', '220625ccbb05e7f5c34.21594904'),
(156, 'Rosano', 'Rocamora', 49, 'Married', 'College Graduate', 5, '10,001 to 20,000', 'Mantalongon, Sagbayan (borja), Bohol, Philippines', '22504', '846', 'Sagbayan (borja)', '', '2019-02-26 00:00:00', '2019-05-03 03:08:33', 3, 3, '2019-05-03 03:08:33', '70045ccbb0b10f4ae6.67548259'),
(157, 'Norberta', 'Delpino', 63, 'Married', 'College Graduate', 4, '10,001 to 20,000', 'Calangahan, Sagbayan (borja), Bohol, Philippines', '22493', '846', 'Sagbayan (borja)', '', '2019-03-01 00:00:00', '2019-05-03 03:14:07', 3, 3, '2019-05-03 03:14:07', '31695ccbb1ff781ff9.86259065'),
(158, 'Peticio Lumagud', 'Torrentira', 54, 'Married', 'High School Level', 3, '10,001 to 20,000', 'Dagnawan, Sagbayan (borja), Bohol, Philippines', '22497', '846', 'Sagbayan (borja)', '', '2019-05-03 00:00:00', '2019-05-03 03:22:26', 3, 3, '2019-05-03 03:22:26', '100425ccbb3f2230c79.03737370'),
(159, 'Peticio Lumagud', 'Torrentira', 54, 'Married', 'High School Level', 3, '10,001 to 20,000', 'Dagnawan, Sagbayan (borja), Bohol, Philippines', '22497', '846', 'Sagbayan (borja)', '', '2019-05-03 00:00:00', '2019-05-03 03:22:26', 3, 3, '2019-05-03 03:22:26', '10955ccbb3f23b78d1.20409827'),
(160, 'Bernardo', 'Karaan', 73, 'Single', 'College Graduate', 3, '40,000 and above', 'Purok 6, San Juan, Sierra bullones, Bohol, Philippines', '22579', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 03:39:52', 3, 3, '2019-05-03 03:39:52', '283265ccbb808b98889.12757061'),
(161, 'Rubin', 'Espina', 49, 'Married', 'College Level', 3, '10,000 below', 'Salvador, Sierra bullones, Bohol, Philippines', '22575', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 03:46:19', 3, 3, '2019-05-03 03:46:19', '192615ccbb98b45dcd5.47425340'),
(162, 'Jeovanni', 'Buyan', 32, 'Married', 'College Level', 3, '10,000 below', 'Bugsoc, Sierra bullones, Bohol, Philippines', '22562', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 03:52:58', 3, 3, '2019-05-03 03:52:58', '93475ccbbb1ac0beb2.06201530'),
(163, 'Lornza', 'Enad', 79, 'Widow/Widower', 'Elementary Graduate', 1, '10,000 below', 'San Isidro, Sagbayan (borja), Bohol, Philippines', '22509', '846', 'Sagbayan (borja)', '', '2019-02-26 00:00:00', '2019-05-03 05:38:26', 3, 3, '2019-05-03 05:38:26', '41825ccbd3d21074e1.54169573'),
(164, 'Sabina', 'Mumar', 57, 'Married', 'High School Graduate', 9, '10,000 below', 'Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 05:43:03', 3, 3, '2019-05-03 05:43:03', '110535ccbd4e7f402d1.54371952'),
(165, 'Elzear S.', 'Bolivar', 69, 'Married', 'College Graduate', 4, '10,001 to 20,000', 'Canmaya Diot, Sagbayan (borja), Bohol, Philippines', '22496', '846', 'Sagbayan (borja)', '', '2019-05-03 00:00:00', '2019-05-03 05:50:51', 3, 3, '2019-05-03 05:50:51', '174445ccbd6bb4004f4.38366036'),
(166, 'Ceferina Cutanda', 'Quisto', 45, 'Married', 'High School Graduate', 7, '10,000 below', 'Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 05:52:09', 3, 3, '2019-05-03 05:52:09', '87485ccbd70999edb0.53554772'),
(167, 'Tirso', 'Virtudazo', 64, 'Single', 'High School Graduate', 4, '10,001 to 20,000', 'purok 2, Magsaysay, Sierra bullones, Bohol, Philippines', '22571', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 05:54:09', 3, 3, '2019-05-03 05:54:09', '47465ccbd781ac6047.64845864'),
(168, 'Andres', 'Da-an', 82, 'Single', 'High School Graduate', 6, '10,000 below', 'Abaca, San miguel, Bohol, Philippines', '22529', '848', 'Alburquerque', '', '2019-05-03 00:00:00', '2019-05-03 05:57:16', 3, 3, '2019-05-08 05:52:00', '326265cd26e80cfa065.08108423'),
(169, 'Crispin', 'Roluma', 56, 'Married', 'College Graduate', 5, '40,000 and above', 'Purok 4, Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-05-03 00:00:00', '2019-05-03 05:58:18', 3, 3, '2019-05-03 05:58:18', '197985ccbd87ace2034.24180712'),
(170, 'Jose', 'Gamayon', 57, 'Married', 'High School Level', 4, '10,001 to 20,000', 'Bayongan, San miguel, Bohol, Philippines', '22529', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 06:01:00', 3, 3, '2019-05-03 06:01:00', '155015ccbd91c9f0874.15506888'),
(171, 'Lucia', 'Geraga', 69, 'Single', 'College Graduate', 1, '10,000 below', 'Purok 2, Calangahan, Sagbayan (borja), Bohol, Philippines', '22493', '846', 'Sagbayan (borja)', '', '2019-03-01 00:00:00', '2019-05-03 06:01:18', 3, 3, '2019-05-03 06:01:18', '159555ccbd92ed6a741.89349893'),
(172, 'Francis', 'Marcilino', 59, 'Married', 'High School Graduate', 6, '10,000 below', 'Purok 3, Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 06:07:15', 3, 3, '2019-05-03 06:07:15', '27565ccbda9308a764.36023311'),
(173, 'Glecirio', 'Cruza', 77, 'Married', 'Elementary Level', 3, '10,001 to 20,000', 'Catmonan, Calape, Bohol, Philippines', '21862', '820', 'Calape', '', '2019-03-08 00:00:00', '2019-05-03 06:07:28', 3, 3, '2019-05-03 06:07:28', '268505ccbdaa0668212.65267833'),
(174, 'Lino', 'Sampoton', 62, 'Widow/Widower', 'College Level', 1, '10,001 to 20,000', 'Canmaya Diot, Sagbayan (borja), Bohol, Philippines', '22496', '846', 'Sagbayan (borja)', '', '2019-05-03 00:00:00', '2019-05-03 06:07:59', 3, 3, '2019-05-03 06:07:59', '38885ccbdabf04e880.17785900'),
(175, 'Armando', 'Nues', 55, 'Married', 'High School Level', 5, '10,000 below', 'Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 06:12:07', 3, 3, '2019-05-03 06:12:07', '240515ccbdbb72d5228.94757761'),
(176, 'Glenn Ryan', 'Curambao', 26, 'Married', 'High School Graduate', 4, '10,000 below', 'Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-03-07 00:00:00', '2019-05-03 06:13:30', 3, 3, '2019-05-03 06:13:30', '197535ccbdc0aa0d649.12976241'),
(177, 'Jacquilen', 'Ilandag', 33, 'Married', 'Elementary Level', 4, '10,000 below', 'Purok 2, Salvador, Sierra bullones, Bohol, Philippines', '22575', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 06:14:13', 3, 3, '2019-05-03 06:14:13', '237255ccbdc352271a2.60940432'),
(178, 'Gloria', 'Lopez', 54, 'Single', 'College Graduate', 4, '20,001 to 30,000', 'San Isidro, Sagbayan (borja), Bohol, Philippines', '22509', '846', 'Sagbayan (borja)', '', '2019-02-26 00:00:00', '2019-05-03 06:14:21', 3, 3, '2019-05-03 06:14:21', '261915ccbdc3d1c7405.43324872'),
(179, 'Lucy Quisto', 'Wahing', 53, 'Married', 'High School Level', 5, '10,001 to 20,000', 'Purok 2, Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 06:17:14', 3, 3, '2019-05-03 06:17:14', '111235ccbdcea31a7b5.94305004'),
(180, 'Bernardino', 'Bulaso', 72, 'Married', 'College Graduate', 1, '10,001 to 20,000', 'Ulbujan, Calape, Bohol, Philippines', '21883', '820', 'Calape', '', '2019-03-06 00:00:00', '2019-05-03 06:20:01', 3, 3, '2019-05-03 06:20:01', '58015ccbdd91bdfa78.59679369'),
(181, 'Helen', 'Polinar', 46, 'Married', 'High School Graduate', 4, '20,001 to 30,000', 'Sagbayan Sur, Sagbayan (borja), Bohol, Philippines', '22506', '846', 'Sagbayan (borja)', '', '2019-05-03 00:00:00', '2019-05-03 06:23:46', 3, 3, '2019-05-03 06:23:46', '125905ccbde72edcfd0.32757402'),
(182, 'Elvis', 'Arnado', 47, 'Married', 'High School Graduate', 7, '10,000 below', 'Purok 6, Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 06:24:18', 3, 3, '2019-05-03 06:24:18', '282525ccbde926aea74.78007003'),
(183, 'Sotera', 'Cemine', 62, 'Married', 'High School Level', 2, '10,000 below', 'Mandaug, Calape, Bohol, Philippines', '21874', '820', 'Calape', '', '2019-03-07 00:00:00', '2019-05-03 06:27:32', 3, 3, '2019-05-03 06:27:32', '48375ccbdf547117c7.61992762'),
(184, 'Denver', 'Compassion', 30, 'Single', 'College Graduate', 1, '10,000 below', 'Calangahan, Sagbayan (borja), Bohol, Philippines', '22493', '846', 'Sagbayan (borja)', '', '2019-02-28 00:00:00', '2019-05-03 06:29:11', 3, 3, '2019-05-03 06:29:11', '128585ccbdfb7cd4178.89863870'),
(185, 'Warren', 'Rasubusa', 49, 'Married', 'Post Graduate (MS, PhD)', 9, '10,000 below', 'Danicop, Sierra bullones, Bohol, Philippines', '22566', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 06:32:23', 3, 3, '2019-05-03 06:32:23', '317135ccbe077eab803.23537109'),
(186, 'Ananiaz', 'Nuez', 55, 'Married', 'College Graduate', 6, '20,001 to 30,000', 'Purok 3, Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 06:34:35', 3, 3, '2019-05-03 06:34:35', '163275ccbe0fb2984c2.11847571'),
(190, 'Jose', 'Orsos', 54, 'Married', 'College Graduate', 7, '20,001 to 30,000', 'Purok 3, Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 06:40:22', 3, 3, '2019-05-03 06:40:22', '271555ccbe25645f5e4.90793302'),
(191, 'Tirso', 'Asumbrado', 63, 'Married', 'Elementary Graduate', 8, '10,001 to 20,000', 'Purok 2, Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-05-03 00:00:00', '2019-05-03 06:45:07', 3, 3, '2019-05-03 06:45:07', '114065ccbe373f05460.67836312'),
(192, 'Christopher', 'Dumalaoron', 27, 'Married', 'High School Graduate', 3, '10,000 below', 'Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-03-07 00:00:00', '2019-05-03 06:50:09', 3, 3, '2019-05-03 06:50:09', '186205ccbe4a10a2291.20476769'),
(193, 'Damacina', 'Diana', 56, 'Married', 'Elementary Graduate', 6, '10,000 below', 'Purok 3, Bayongan, San miguel, Bohol, Philippines', '22529', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 06:50:56', 3, 3, '2019-05-03 06:50:56', '9225ccbe4d0bdb004.63098241'),
(194, 'Estelita', 'Engbino', 52, 'Married', 'College Graduate', 2, '10,001 to 20,000', 'Purok 5, Salvador, Sierra bullones, Bohol, Philippines', '22575', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 06:51:15', 3, 3, '2019-05-03 06:51:15', '134805ccbe4e3d5e648.05245322'),
(225, 'Rogelio', 'Pugosa', 70, 'Married', 'High School Graduate', 9, '10,000 below', 'Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-03-05 00:00:00', '2019-05-03 06:55:41', 3, 3, '2019-05-03 06:55:41', '80175ccbe5edba8ef2.99252240'),
(228, 'Grace', 'Laganipa', 39, 'Married', 'College Level', 5, '10,000 below', 'Dusita, Sierra bullones, Bohol, Philippines', '22567', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 06:59:54', 3, 3, '2019-05-03 06:59:54', '143425ccbe6eae3aa42.55640802'),
(229, 'Lucia', 'Fernandez', 58, 'Married', 'Elementary Level', 2, '10,000 below', 'San Vicente, San miguel, Bohol, Philippines', '22544', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:01:22', 3, 3, '2019-05-03 07:01:22', '76515ccbe742b6ab18.53769671'),
(230, 'Tiburcio Sr.', 'Tinaja', 65, 'Married', 'Elementary Graduate', 3, '10,000 below', 'Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-03-05 00:00:00', '2019-05-03 07:04:15', 3, 3, '2019-05-03 07:04:15', '262655ccbe7ef2e25e4.17700573');
INSERT INTO `respondents` (`respondent_id`, `fname`, `lname`, `age`, `civilstatus`, `education`, `familysize`, `annualincome`, `address`, `barangay`, `city`, `city_name`, `province`, `date_of_survey`, `date_added`, `added_by`, `updated_by`, `date_last_updated`, `token`) VALUES
(231, 'Raul', 'Amores', 45, 'Married', 'College Graduate', 6, '40,000 and above', 'Canmano, Sagbayan (borja), Bohol, Philippines', '22494', '846', 'Sagbayan (borja)', '', '2019-02-26 00:00:00', '2019-05-03 07:04:33', 3, 3, '2019-05-03 07:04:33', '136315ccbe8015b6ed6.26258886'),
(242, 'Raquel', 'Buslon', 54, 'Widow/Widower', 'College Graduate', 5, '10,001 to 20,000', 'Salvador, Sierra bullones, Bohol, Philippines', '22575', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 07:07:43', 3, 3, '2019-05-03 07:07:43', '112935ccbe8bfafcb06.62649944'),
(243, 'Felipa', 'Arcales', 40, 'Married', 'College Level', 6, '10,000 below', 'Purok 6, Tomoc, San miguel, Bohol, Philippines', '22546', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:10:08', 3, 3, '2019-05-03 07:10:08', '93125ccbe95081e5e5.78489463'),
(244, 'Cesar', 'Borja', 69, 'Married', 'College Graduate', 5, '10,001 to 20,000', 'San Isidro, Sagbayan (borja), Bohol, Philippines', '22509', '846', 'Sagbayan (borja)', '', '2019-02-26 00:00:00', '2019-05-03 07:10:32', 3, 3, '2019-05-03 07:10:32', '168625ccbe968d4f092.71321376'),
(245, 'Rufino', 'Buladaco', 70, 'Married', 'College Level', 4, '20,001 to 30,000', 'Catmonan, Calape, Bohol, Philippines', '21862', '820', 'Calape', '', '2019-05-03 00:00:00', '2019-05-03 07:12:45', 3, 3, '2019-05-03 07:12:45', '98685ccbe9ed699dc8.88911901'),
(246, 'Florencio', 'Virtudazo', 66, 'Married', 'High School Level', 5, '10,000 below', 'Magsaysay, Sierra bullones, Bohol, Philippines', '22571', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 07:15:53', 3, 3, '2019-05-03 07:15:53', '25425ccbeaa96d0a81.53282307'),
(251, 'Dionisio', 'Rulona', 58, 'Single', 'Elementary Graduate', 6, '10,001 to 20,000', 'Purok 3, Tultugan, Calape, Bohol, Philippines', '21882', '820', 'Calape', '', '2019-05-03 00:00:00', '2019-05-03 07:18:55', 3, 3, '2019-05-03 07:18:55', '257715ccbeb5f6da9f4.38191634'),
(252, 'Eduardo', 'Lanurias', 65, 'Married', 'College Graduate', 5, '10,001 to 20,000', 'Santa Catalina, Sagbayan (borja), Bohol, Philippines', '22514', '846', 'Sagbayan (borja)', '', '2019-02-27 00:00:00', '2019-05-03 07:19:20', 3, 3, '2019-05-03 07:19:20', '165565ccbeb78bbb8b2.49492335'),
(253, 'Elioteria', 'Bonior', 79, 'Married', 'Elementary Graduate', 4, '20,001 to 30,000', 'Purok 6, Poblacion, San miguel, Bohol, Philippines', '22541', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:19:45', 3, 3, '2019-05-03 07:19:45', '126675ccbeb914848a6.34528156'),
(254, 'Cleofe', 'Bais', 59, 'Married', 'College Graduate', 4, '20,001 to 30,000', 'Purok 3, Cabangahan, San miguel, Bohol, Philippines', '22531', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:23:15', 3, 3, '2019-05-03 07:23:15', '177475ccbec633b9e78.64953974'),
(255, 'Cresente', 'Orilla', 92, 'Married', 'Elementary Graduate', 15, '10,000 below', 'Abucayan Sur, Calape, Bohol, Philippines', '21852', '820', 'Calape', '', '2019-03-06 00:00:00', '2019-05-03 07:25:01', 3, 3, '2019-05-03 07:25:01', '102495ccbeccda99d18.18083280'),
(256, 'Ricardo', 'Remperas', 69, 'Widow/Widower', 'High School Level', 5, '10,000 below', 'Catmonan, Calape, Bohol, Philippines', '21862', '820', 'Calape', '', '2019-03-08 00:00:00', '2019-05-03 07:32:19', 3, 3, '2019-05-03 07:32:19', '202565ccbee83262529.57475423'),
(257, 'Remy D.', 'Sienes', 47, 'Married', 'Elementary Graduate', 3, '10,000 below', 'Bayongan, San miguel, Bohol, Philippines', '22529', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:38:29', 3, 3, '2019-05-03 07:38:29', '217475ccbeff5868515.33578491'),
(258, 'Domingo', 'Nineria', 57, 'Married', 'College Graduate', 5, '40,000 and above', 'Purok 1, Bugang, San miguel, Bohol, Philippines', '22395', '811', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:42:57', 3, 3, '2019-05-03 07:42:57', '80565ccbf101b44a00.72269032'),
(259, 'Ronel Cajes', 'Nuera', 30, 'Married', 'College Graduate', 4, '10,000 below', 'Purok 5, Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:46:06', 3, 3, '2019-05-03 07:46:06', '158775ccbf1be154b30.43607181'),
(260, 'Delia', 'Cambangay', 50, 'Married', 'High School Level', 4, '10,000 below', 'Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:47:24', 3, 3, '2019-05-03 07:47:24', '21875ccbf20c300678.91781164'),
(261, 'Godofredo', 'Saligumba', 61, 'Single', 'Elementary Graduate', 4, '10,000 below', 'Banlasan, Calape, Bohol, Philippines', '21853', '820', 'Calape', '', '2019-03-05 00:00:00', '2019-05-03 07:48:41', 3, 3, '2019-05-03 07:48:41', '136975ccbf2592b02e0.44187120'),
(262, 'Nicasio', 'Macabenta', 47, 'Married', 'High School Level', 4, '10,000 below', 'Purok 2, Dusita, Sierra bullones, Bohol, Philippines', '22567', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 07:49:16', 3, 3, '2019-05-03 07:49:16', '185815ccbf27cc33f07.99608963'),
(263, 'Joel', 'Galosino', 68, 'Single', 'High School Graduate', 7, '10,000 below', 'Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:50:06', 3, 3, '2019-05-03 07:50:06', '184685ccbf2aeea66b1.83268840'),
(264, 'Gellermo', 'Nuez', 30, 'Married', 'College Graduate', 4, '10,000 below', 'Purok 5, Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:53:29', 3, 3, '2019-05-03 07:53:29', '170405ccbf379290021.75174693'),
(265, 'Alprebita', 'Boncales', 60, 'Married', 'College Graduate', 7, '10,001 to 20,000', 'Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:55:20', 3, 3, '2019-05-03 07:55:20', '265055ccbf3e867dc08.09475134'),
(266, 'Edna', 'Baluca', 60, 'Single', 'Elementary Graduate', 8, '10,000 below', 'Bugang, San miguel, Bohol, Philippines', '22530', '848', 'San miguel', '', '2019-05-03 00:00:00', '2019-05-03 07:57:09', 3, 3, '2019-05-03 07:57:09', '306395ccbf455222033.00242737'),
(267, 'Nilo', 'Sarong', 43, 'Married', 'College Graduate', 6, '20,001 to 30,000', 'Bugsoc, Sierra bullones, Bohol, Philippines', '22562', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 07:58:09', 3, 3, '2019-05-03 07:58:09', '290775ccbf491856470.24632466'),
(268, 'Marisa', 'Bustamante', 39, 'Married', 'High School Graduate', 3, '10,000 below', 'Purok 2, San Jose, Sierra bullones, Bohol, Philippines', '22578', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 08:03:58', 3, 3, '2019-05-03 08:03:58', '143565ccbf5eebf24d1.20061393'),
(269, 'Pedro', 'Escatron', 76, 'Married', 'High School Level', 2, '10,000 below', 'Purok 1-B, Bugsoc, Sierra bullones, Bohol, Philippines', '22562', '850', 'Sierra bullones', '', '2019-05-03 00:00:00', '2019-05-03 08:05:09', 3, 3, '2019-05-03 08:05:09', '78585ccbf635b2c2f8.42305433'),
(270, 'Ronnie', 'Coscos', 49, 'Married', 'College Graduate', 8, '40,000 and above', 'San Vicente, Dagohoy, Bohol, Philippines', '22014', '827', 'Dagohoy', '', '2019-05-03 00:00:00', '2019-05-03 08:35:38', 3, 3, '2019-05-03 08:35:38', '46255ccbfd5a480767.83302952'),
(451, 'Tenio', 'Gaudencio', 58, 'Married', 'Elementary Level', 6, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-08 00:00:00', '2019-05-08 05:47:38', 3, 3, '2019-05-08 05:47:38', '60525cd26d7a16a9f5.61449552'),
(610, 'Felipa', 'Cortes', 38, 'Married', 'College Graduate', 6, '20,001 to 30,000', 'Ubojan, Sagbayan (borja), Bohol, Philippines', '22516', '846', 'Sagbayan (borja)', '', '2019-05-08 00:00:00', '2019-05-08 06:26:39', 3, 3, '2019-05-08 06:26:39', '239945cd2769fb78c41.86479113'),
(611, 'Antonio', 'Belara', 79, 'Married', 'Elementary Graduate', 7, '10,001 to 20,000', 'Purok 3, Boctol, Jagna, Bohol, Philippines', '22203', '835', 'Jagna', '', '2019-03-14 00:00:00', '2019-05-08 06:32:06', 3, 3, '2019-05-08 06:32:06', '206515cd277e6d43649.59973741'),
(618, 'Pelagia', 'Lacar', 74, 'Married', 'Elementary Graduate', 7, '10,001 to 20,000', 'Purok 6, Ilaya, Boctol, Jagna, Bohol, Philippines', '22203', '835', 'Jagna', '', '2019-03-13 00:00:00', '2019-05-08 06:40:24', 3, 3, '2019-05-08 06:40:24', '327225cd279d8bdf0f7.80933961'),
(619, 'Dick', 'Lasdose', 68, 'Married', 'College Level', 7, '20,001 to 30,000', 'Purok 3, Mayana, Jagna, Bohol, Philippines', '22224', '835', 'Jagna', '', '2019-03-12 00:00:00', '2019-05-08 06:46:38', 3, 3, '2019-05-08 06:46:38', '117455cd27b4e3a81e4.68809369'),
(706, 'Felix', 'Malrinan', 42, 'Married', 'High School Level', 4, '10,001 to 20,000', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-03-20 00:00:00', '2019-05-08 07:29:32', 3, 3, '2019-05-08 07:29:32', '225535cd2855c77ef10.12114187'),
(707, 'Julian', 'Asombrado', 60, 'Single', 'High School Level', 5, '10,001 to 20,000', 'Purok 1, Banlasan, Calape, Bohol, Philippines', '22395', '811', 'Calape', '', '2019-03-05 00:00:00', '2019-05-08 07:34:05', 3, 3, '2019-05-08 07:34:05', '273745cd2866d7cc2d5.86963780'),
(708, 'Saturnina', 'Ranesis', 76, 'Widow/Widower', 'Elementary Graduate', 4, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-08 00:00:00', '2019-05-08 07:40:23', 3, 3, '2019-05-08 07:40:23', '74025cd287e7b1f4c8.31535481'),
(709, 'Angelbert', 'Macalam', 30, 'Married', 'College Graduate', 3, '10,001 to 20,000', 'Purok 2, Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-08 00:00:00', '2019-05-08 07:40:43', 3, 3, '2019-05-08 07:40:43', '139445cd287fb40cae4.90616246'),
(710, 'Pedro', 'Rangas', 79, 'Married', 'High School Graduate', 3, '10,000 below', 'Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-08 00:00:00', '2019-05-08 07:50:48', 3, 3, '2019-05-08 07:50:48', '41095cd28a5820daa5.28335502'),
(711, 'Honoria', 'Genita', 72, 'Married', 'High School Level', 4, '10,001 to 20,000', 'Purok 2, Santo Niño, San miguel, Bohol, Philippines', '22545', '848', 'San miguel', '', '2019-05-08 00:00:00', '2019-05-08 07:59:13', 3, 3, '2019-05-08 07:59:13', '25975cd28c5202f3d8.60094847'),
(712, 'Clinia', 'Unajan', 76, 'Married', 'Post Graduate (MS, PhD)', 6, '10,000 below', 'Poblacion Sur, Carmen, Bohol, Philippines', '21928', '822', 'Carmen', '', '2019-05-08 00:00:00', '2019-05-08 08:04:58', 3, 3, '2019-05-08 08:04:58', '270785cd28daa2ad843.93027848'),
(713, 'Manuel', 'Tabaranza', 66, 'Married', 'College Graduate', 6, '20,001 to 30,000', 'San Vicente, San miguel, Bohol, Philippines', '22544', '848', 'San miguel', '', '2019-05-08 00:00:00', '2019-05-08 08:07:19', 3, 3, '2019-05-08 08:07:19', '53005cd28e37c476b3.28958401'),
(714, 'Glecerio', 'Paluga', 59, 'Married', 'High School Level', 9, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-05-08 00:00:00', '2019-05-08 08:17:00', 3, 3, '2019-05-08 08:17:00', '184645cd2907cc76fb4.47311726'),
(715, 'Franklin', 'Bague', 57, 'Married', 'College Graduate', 5, '40,000 and above', 'Katipunan, Carmen, Bohol, Philippines', '21913', '822', 'Carmen', '', '2019-05-08 00:00:00', '2019-05-08 08:19:55', 3, 3, '2019-05-08 08:19:55', '132535cd2912bbc0371.66918185'),
(716, 'Delia', 'Egagamao', 59, 'Married', 'Elementary Graduate', 7, '10,000 below', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-05-08 00:00:00', '2019-05-08 08:24:22', 3, 3, '2019-05-08 08:24:22', '275505cd29236759023.54458648'),
(717, 'Teresita', 'Salan', 52, 'Married', 'High School Level', 8, '10,001 to 20,000', 'Purok 1, Odiong, Jagna, Bohol, Philippines', '22227', '835', 'Jagna', '', '2019-05-08 00:00:00', '2019-05-08 08:38:16', 3, 3, '2019-05-08 08:38:16', '4515cd29578675f75.43160165'),
(718, 'Corita', 'Lacar', 75, 'Widow/Widower', 'Elementary Graduate', 2, '10,000 below', 'Boctol, Jagna, Bohol, Philippines', '22395', '811', 'Jagna', '', '2019-03-13 00:00:00', '2019-05-08 08:42:29', 3, 3, '2019-05-08 08:42:29', '68465cd296756c14f5.95071322'),
(719, 'Ma. Terissa', 'Tagacanao', 35, 'Married', 'Elementary Graduate', 5, '40,000 and above', 'Villa Suerte, Bilar, Bohol, Philippines', '21813', '818', 'Bilar', '', '2019-05-08 00:00:00', '2019-05-08 08:50:59', 3, 3, '2019-05-08 08:50:59', '310035cd29873310d22.16738686'),
(720, 'Mesiona', 'Rodrigo', 42, 'Married', 'College Graduate', 5, '10,001 to 20,000', 'Nueva Fuerza, Carmen, Bohol, Philippines', '21923', '822', 'Carmen', '', '2019-05-09 00:00:00', '2019-05-09 00:07:04', 3, 3, '2019-05-09 00:07:04', '59065cd36f28c6b153.09398357'),
(721, 'Lydia', 'Salas', 74, 'Married', 'Post Graduate (MS, PhD)', 3, '40,000 and above', 'Purok 3, San Jose, Sierra bullones, Bohol, Philippines', '22578', '850', 'Sierra bullones', '', '2019-05-09 00:00:00', '2019-05-09 00:15:13', 3, 3, '2019-05-09 00:15:13', '121855cd371116fd2b0.75473892');

-- --------------------------------------------------------

--
-- Table structure for table `respondents_affiliation`
--

CREATE TABLE `respondents_affiliation` (
  `respondent_id` int(11) NOT NULL,
  `title_of_trainig` varchar(100) DEFAULT NULL,
  `date_conducted` varchar(20) DEFAULT NULL,
  `venue` varchar(10) DEFAULT NULL,
  `sponsoring_agency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_affiliation`
--

INSERT INTO `respondents_affiliation` (`respondent_id`, `title_of_trainig`, `date_conducted`, `venue`, `sponsoring_agency`) VALUES
(1, 'None', '2019-02-21', '', 'None'),
(2, 'None', '2019-02-21', '', 'None'),
(3, 'None', '2019-02-21', '', 'None'),
(4, 'None', '2019-02-21', '', 'None'),
(5, 'None', '2019-02-21', '', 'None'),
(6, 'None', '2019-02-21', '', 'None'),
(8, 'None', '2019-02-21', '', 'None'),
(9, 'None', '2019-02-21', '', 'None'),
(10, 'Orientation & strategy of cacao farming', '2018-11-01', 'Barangay', 'Carmen'),
(11, 'Orientation & strategy of cacao farming', '2019-02-21', 'Barangay', 'Carmen'),
(12, 'None', '2019-02-21', '', 'None'),
(13, 'None', '2018-11-05', 'Carmen, La', 'None'),
(14, 'None', '2018-11-01', 'Barangay', 'None'),
(15, 'Orientation & strategy of cacao farming', '2018-11-01', 'Barangay', 'Carmen'),
(16, 'Orientation & strategy of cacao farming', '2018-11-01', 'Barangay H', 'Carmen'),
(17, 'None', '2019-02-23', '', 'None'),
(18, 'Orientation & Strategy of Cacao Farming', '2018-11-01', 'Barangay', 'Carmen'),
(19, 'Orientation & Strategy of Cacao Farming', '2018-11-01', 'Barangay', 'Carmen'),
(20, 'None', '2019-02-23', '', 'None'),
(21, 'None', '2018-11-05', 'Barangay', 'None'),
(22, 'None', '2019-02-23', '', 'None'),
(23, 'None', '2019-02-23', '', 'None'),
(24, 'Orientation & Strategy of Cacao Farming', '2018-11-05', 'Barangay H', 'Carmen'),
(25, 'Orientation & Strategy of Cacao Farming', '2018-11-01', 'Barangay H', 'Carmen'),
(26, 'None', '2019-02-23', '', 'None'),
(27, 'None', '2019-02-23', '', 'None'),
(28, 'Orientation & Strategy of Cacao Farming', '2018-11-05', 'Barangay', 'Carmen'),
(29, 'Forgot the title', '2019-02-23', 'Montesuert', 'Farmer\'s Association'),
(30, 'None', '2019-02-23', '', 'None'),
(31, 'Keunemer/DTI Training', '2012-10-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(32, 'Cacao Production', '2014-04-01', 'Pob. Norte', 'Department of Agriculture'),
(33, 'Keunemer', '2011-01-01', 'Carmen', 'Kennemer Foods International, Inc - Bohol Center'),
(34, 'Womens / Farmers Assoc.', '2015-09-07', 'Barangay H', 'Farmer\'s Association'),
(35, 'Cacao Growers', '2013-01-01', 'Pob. Norte', 'Cacao Growers Pro-Farm'),
(36, 'Keunemer', '2018-01-01', 'Bicao', 'Kennemer Foods International, Inc - Bohol Center'),
(37, 'Keunemer', '2011-01-01', 'Carmen', 'Kennemer Foods International, Inc - Bohol Center'),
(38, 'None', '2019-02-23', '', 'None'),
(39, 'Orientation & Strategy of Cacao Farming', '2011-01-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(40, 'None', '2019-02-23', '', 'None'),
(41, 'None', '2019-02-23', '', 'None'),
(42, 'Technique & Strategies', '2012-11-01', 'Bicao, Car', 'Kennemer Foods International, Inc - Bohol Center'),
(43, 'Module 1 / Seminar', '2013-01-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(44, 'None', '2012-01-01', 'Bicao', 'None'),
(45, 'Coop Training DA Information', '2019-01-01', 'Carmen', 'Department of Agriculture'),
(46, 'GAP', '2018-01-01', 'DA-Carmen', 'GAP'),
(47, 'None', '2012-04-01', 'Bicao', 'None'),
(48, 'Strategies & Techniques of Cacao Farming', '2012-01-01', 'Samahan na', 'Kennemer Foods International, Inc - Bohol Center'),
(49, 'None', '2019-02-25', '', 'None'),
(50, 'Patubo ug pagatiman', '2018-01-01', 'Katipunan', 'Bohol Farms Food'),
(51, 'Cacao Production', '2016-07-24', 'La Paz Bar', 'Department of Agriculture'),
(52, 'Cacao Producer / Processing', '2018-01-01', 'Tagbilaran', 'Department of Agriculture'),
(53, 'About cacao farming', '2019-02-25', 'san juan', 'Department of Agriculture'),
(54, 'None', '2019-02-25', '', 'None'),
(55, 'None', '2019-02-25', '', 'None'),
(57, 'None', '2019-03-21', '', 'None'),
(69, 'Cacao Production', '0000-00-00', 'Catmonan', 'Kennemer Foods International, Inc - Bohol Center'),
(70, 'Orientation and Technique of Cacao Farming', '2011-10-01', 'Katipunan ', 'Kennemer Foods International, Inc - Bohol Center'),
(71, 'Orientation of Cacao Farming', '0000-00-00', 'Garcia, Sa', 'Department of Agriculture'),
(74, 'Cacao Production', '0000-00-00', 'Neuva Veda', 'PCA'),
(77, 'Cacao Orientation', '0000-00-00', 'Brgy. Hall', 'Department of Agriculture'),
(80, 'DA', '0000-00-00', 'San Miguel', 'Department of Agriculture'),
(81, 'DA', '0000-00-00', 'San Miguel', 'Department of Agriculture'),
(82, 'D.A', '0000-00-00', 'San Miguel', 'Department of Agriculture'),
(83, 'D.A', '0000-00-00', 'Tomoc', 'Department of Agriculture'),
(84, 'D.A', '0000-00-00', 'San Miguel', 'Department of Agriculture'),
(86, 'Orientation and Technique of Cacao Farming', '2019-01-03', 'Barangay H', 'PCA'),
(87, 'Orientation and Technique of Cacao Farming', '2019-01-03', 'Barangay H', 'PCA'),
(88, 'Orientation and Technique of Cacao Farming', '2017-03-01', 'Barangay H', 'PCA'),
(89, 'Orientation and Technique of Cacao Farming', '2016-01-03', 'Barangay H', 'PCA'),
(90, 'Orientation and Technique of Cacao Farming', '2016-03-01', 'Barangay H', 'PCA'),
(91, 'Orientation of Cacao Farming', '2016-03-01', 'Odiong Brg', 'PCA'),
(92, 'Orientation of Cacao Farming', '2019-03-01', 'Odiong Brg', 'PCA'),
(93, 'None', '2015-01-01', 'Odiong Brg', 'None'),
(94, 'OSVAWA', '2015-01-01', 'Odiong Brg', 'OSVAWA'),
(95, 'SMALL FARMERS', '0000-00-00', 'Odiong Brg', 'SMALL FARMERS'),
(96, 'OSVAWA', '2015-01-01', 'Odiong Brg', 'OSVAWA'),
(97, 'DA', '2018-01-01', 'Jagna', 'Department of Agriculture'),
(98, 'OSVAWA', '2015-01-01', 'Barangay H', 'OSVAWA'),
(100, 'OSVAWA', '2015-01-01', 'Barangay H', 'OSVAWA'),
(101, 'OSVAWA', '2015-01-01', 'Barangay H', 'OSVAWA'),
(102, 'OSVAWA', '2015-01-01', 'Barangay H', 'OSVAWA'),
(103, 'OSVAWA', '2015-01-01', 'Barangay H', 'OSVAWA'),
(104, 'Orientation and Technique of Cacao Farming', '2016-03-01', 'Barangay H', 'PCA'),
(106, 'Orientation and Technique of Cacao Farming', '2017-10-01', 'Barangay H', 'Department of Agriculture'),
(107, 'Cacao Production', '2016-01-01', 'DA Jagna', 'Department of Agriculture'),
(108, 'Orientation of Cacao Farming', '2016-01-01', 'DA Jagna', 'Department of Agriculture'),
(110, 'Orientation and Technique of Cacao Farming', '2018-10-01', 'Municipal ', 'Department of Agriculture'),
(113, 'OSVAWA', '2015-01-01', 'Barangay H', 'OSVAWA'),
(114, 'Orientation and Technique of Cacao Farming', '2015-09-01', 'Davao Orie', 'Department of Agriculture'),
(118, 'Orientation and Technique of Cacao Farming', '2014-01-01', 'DA Office ', 'Department of Agriculture'),
(119, 'Cacao Grafting', '2015-01-01', 'Mayana', 'Department of Agriculture'),
(120, 'DA', '2013-01-01', 'Boctol', 'Department of Agriculture'),
(121, 'BOVEGA', '2016-01-01', 'Mayana', 'BOVEGA'),
(123, 'DA', '0206-01-01', 'Mayana', 'Department of Agriculture'),
(124, 'DA', '2017-01-01', 'Jagna', 'Department of Agriculture'),
(125, 'Orientation and Technique of Cacao Farming', '2014-01-01', 'DA Office ', 'Department of Agriculture'),
(127, 'contour farming of cacao and pag-atiman ug pag-control sa peste', '1987-01-01', 'Barangay H', 'Department of Agriculture'),
(128, 'Preparation, prunning, fertilization process on Cacao farming and seeds fermentation of cacao farmin', '2018-01-10', 'Goyo hall', 'Department of Agriculture'),
(129, 'Orientation and Technique of Cacao Farming', '2014-01-01', 'D.A Office', 'Department of Agriculture'),
(131, 'Caca Production', '2011-01-01', 'Poblacion ', 'Kennemer Foods International, Inc - Bohol Center'),
(133, 'Cacao Production/Pruning', '0000-00-00', 'Katipunan', 'Kennemer Foods International, Inc - Bohol Center'),
(134, 'Cacao Production / Pruning', '2014-01-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(135, 'Orientation and Technique of Cacao Farming', '2012-11-04', 'Bicao, Car', 'Kennemer Foods International, Inc - Bohol Center'),
(136, 'Orientation and Techniques', '2012-11-01', 'Bicao', 'Kennemer Foods International, Inc - Bohol Center'),
(137, 'Samahang Nayon', '2012-01-01', 'Pob. Sur', 'Samahang Nayon'),
(138, 'Orientation and Technique of Cacao Farming', '2008-01-01', '', 'Kennemer Foods International, Inc - Bohol Center'),
(139, 'Cacao Production', '2016-01-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(140, 'Technique and Strategies in Cacao Farming', '2010-01-01', 'Office CSN', 'Kennemer Foods International, Inc - Bohol Center'),
(143, 'Cacao Production', '2017-01', 'Clarin', 'Coop sa Clarin'),
(145, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(146, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(147, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(148, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(149, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(150, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(151, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(152, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(153, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(154, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(155, 'Cacao Production', '2014-01', 'Pob. Norte', 'Kennemer Foods International, Inc - Bohol Center'),
(158, 'Orientation and Strategies of Cacao Farming', '2012-11', 'UFTDI Trai', 'Kennemer Foods International, Inc - Bohol Center'),
(159, 'Orientation and Strategies of Cacao Farming', '2012-11', 'UFTDI Trai', 'Kennemer Foods International, Inc - Bohol Center'),
(160, 'kenemer, D.A Cacao masteral', '2019-03', 'Tagbilaran', 'DTI'),
(165, 'Orientation and Technique of Cacao Farming', '2008-01', 'LGU', 'LGU'),
(171, 'None', '', 'None', 'None'),
(173, 'Cacao Production', '01-01-2015', 'Catmonan C', 'Kennemer Foods International, Inc - Bohol Center'),
(179, 'Cacao and Ube Farming', '2019-01', 'Barangay', 'Department of Agriculture'),
(182, 'None', '', '', 'None'),
(186, 'Bugang Farmers Association', '', 'Barangay B', 'Department of Agriculture'),
(190, 'D.A. Cacao and Ube', '2012-01', 'Masanao', 'Department of Agriculture'),
(193, 'Farmers Association', '', 'San Miguel', 'Department of Agriculture'),
(194, 'D.A', '2019-04', 'Carmen', 'Department of Agriculture'),
(231, 'Cacao Productivity Enhancement Training', '2017-08', 'DOST Build', 'DOST'),
(243, 'D.A.', '2017-01', 'Tomoc', 'Department of Agriculture'),
(252, 'About Cacao Farming', '2019-02', 'DOST Build', 'DOST'),
(254, 'D.A.', '2017-01', 'San Miguel', 'Department of Agriculture'),
(256, 'Cacao Production', '2014-01-01', 'Catmonan', 'Kennemer Foods International, Inc - Bohol Center'),
(258, 'D.A.', '', 'San Miguel', 'Department of Agriculture'),
(267, 'Davao Agriculture Integrated Farming', '2006-01', 'Davao', 'SWCM NGO'),
(268, 'Preparation on Cacao Farming', '2017-01', 'Tagbilaran', 'DOST');

-- --------------------------------------------------------

--
-- Table structure for table `respondents_farm_profile`
--

CREATE TABLE `respondents_farm_profile` (
  `farm_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `land_ownership` varchar(100) DEFAULT NULL,
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
(39, 41, 'Owned (Inherited)', '0.5 ha below', '21 - 30 trees', '2x4', '11-20 years', '11-20 years', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'own seed', '', '', '', 'No', '', 'No', ''),
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
(54, 57, 'Owned (Inherited)', '0.5 ha below ', '21 - 30 trees  ', '3x4', '21-30 years', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation ', 'Sexual (e.g. seeds)', 'own', '', '', '', 'No', '', 'No', ''),
(56, 59, 'Owned (Bought)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(57, 60, 'Owned (Inherited)', '0.5 - 1.0 ha', '21 - 30 trees', '5x5', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'Davao', '', '', '', 'No', '', 'No', ''),
(58, 61, 'Owned (Inherited)', '0.5 - 1.0 ha', '10 - 20 trees', '3x3', '21-30 years', 'None', 'Forastero,Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', '', 'Tubigon', '', '', 'No', '', 'No', ''),
(59, 62, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Own', '', '', '', 'No', '', 'No', ''),
(60, 63, 'Owned (Inherited)', '0.5 ha below', '41 - 50 trees', '3x3', '11-20 years', 'None', 'Forastero', 'UF-18', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Own', '', '', '', 'No', '', 'No', ''),
(61, 64, 'Owned (Bought)', '0.5 ha below', '51 trees above', '', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(62, 65, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '4x4', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', '', 'D.A', '', '', 'No', '', 'No', ''),
(63, 66, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '11-20 years', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Owned', '', '', '', 'No', '', 'No', ''),
(64, 67, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '2x2', '41 years above', 'None', 'Forastero,Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Inharited', '', '', '', 'No', '', 'No', ''),
(65, 68, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '', '31-40 years', '31-40 years', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'owned', '', '', '', 'No', '', 'No', ''),
(66, 69, 'Owned (Inherited)', '0.5 ha below', '41 - 50 trees', '', '10 years below', 'None', 'Forastero,Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(67, 70, 'Owned (Bought)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer', '', '', 'No', '', 'No', ''),
(68, 71, 'Owned (Inherited)', '0.5 ha below', '31 - 40 tress', '4x3', '10 years below', 'None', 'Trinitario', 'UF-18,BR-25', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA San Miguel', '', '', 'No', '', 'No', ''),
(69, 72, 'Owned (Inherited)', '0.5 ha below', '31 - 40 tress', '', '10 years below', '10 years below', 'Trinitario', 'UF-18,BR-25', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'Owned', '', '', '', 'No', '', 'No', ''),
(70, 73, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA San Miguel', '', '', 'No', '', 'No', ''),
(71, 74, 'Tenanted', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(72, 75, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(73, 76, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,Others', 'Brazil', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Sierra Bollunes', '', '', 'No', '', 'No', ''),
(74, 77, 'Owned (Inherited)', '0.5 ha below', '31 - 40 tress', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(75, 78, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '4x4', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazil', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA San Miguel', '', '', 'No', '', 'No', ''),
(76, 79, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero,Trinitario', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DENR', '', '', 'No', '', 'No', ''),
(77, 80, 'Tenanted', '0.5 ha below', '51 trees above', '4x4', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(78, 81, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Mindanao', '', '', 'No', '', 'No', ''),
(79, 82, 'Tenanted', '1.6 - 2.0 ha', '51 trees above', '3x3', '11-20 years', '11-20 years', 'Forastero', 'K-1', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', 'D.A', 'D.A', '', '', 'Yes', '1X1', 'No', ''),
(80, 83, 'Tenanted', '0.5 - 1.0 ha', '51 trees above', '5x5', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(81, 84, 'Tenanted', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(82, 85, 'Tenanted', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(83, 86, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(84, 87, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(85, 88, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA, DA', '', '', 'No', '', 'No', ''),
(86, 89, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'PCA, DA', '', '', 'No', '', 'No', ''),
(87, 90, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'w10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA, DA', '', '', 'No', '', 'No', ''),
(88, 91, 'Owned (Inherited)', '1.1 - 1.5 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(89, 92, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA, DA', '', '', 'No', '', 'No', ''),
(90, 93, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', 'W10', 'Plantation (more than 50 trees planted)', 'Rehabilitated', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(91, 94, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(92, 95, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(93, 96, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(94, 97, 'Owned (Inherited)', '1.6 - 2.0 ha', '51 trees above', '4x4', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(95, 98, 'Tenanted', '1.1 - 1.5 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(96, 99, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '2.5x2.5', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(97, 100, 'Owned (Inherited)', '1.6 - 2.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', '', 'Mindanao, DA', '', '', '', 'No', '', 'No', ''),
(98, 101, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'PCA', '', '', '', 'No', '', 'No', ''),
(99, 102, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', 'PCA', 'PCA', '', '', 'No', '', 'No', ''),
(100, 103, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', 'PCA', 'PCA', '', '', 'No', '', 'No', ''),
(101, 104, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(102, 105, 'Owned (Inherited)', '1.1 - 1.5 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(103, 106, 'Owned (Bought)', '0.5 ha below', '51 trees above', '2x3', '10 years below', 'None', 'Forastero', 'BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(104, 107, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(105, 108, 'Owned (Inherited)', '0.5 ha below', '31 - 40 tress', '2x2', '10 years below', 'None', 'Forastero', 'BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'DA Jagna', '', '', 'No', '', 'No', ''),
(106, 109, 'Owned (Bought)', '0.5 - 1.0 ha', '31 - 40 tress', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(107, 110, 'Owned (Bought)', '1.6 - 2.0 ha', '51 trees above', '2x2', '10 years below', 'None', 'Forastero', 'BR-25,Others', 'Brazilian', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', 'Own', 'DA', '', '', 'No', '', 'No', ''),
(108, 111, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'DA, Midanao', '', '', 'No', '', 'No', ''),
(109, 112, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(110, 113, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', '', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', '', 'DA', '', '', '', 'No', '', 'No', ''),
(111, 114, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '2x2', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(112, 115, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '2x2', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(113, 116, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(114, 117, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '2x2', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(115, 118, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '2x2', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(116, 119, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(117, 120, 'Owned (Bought)', '0.5 ha below', '31 - 40 tress', '4x4', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(118, 121, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(119, 122, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '4x4', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', 'Pilar', 'Pilar', '', '', 'No', '', 'No', ''),
(120, 123, 'Owned (Inherited)', '1.6 - 2.0 ha', '51 trees above', '2x3', '31-40 years', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'DA Mindanao', '', '', '', 'No', '', 'No', ''),
(121, 124, 'Owned (Bought)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(122, 125, 'Owned (Inherited)', '0.5 ha below', '21 - 30 trees', '2x2', '10 years below', '10 years below', 'Forastero', '', 'Brazilian', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(123, 126, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(124, 127, 'Owned (Bought)', '0.5 ha below', '21 - 30 trees', '', '21-30 years', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Backyard (below 50 trees planted)', 'Rehabilitated', 'Sexual (e.g. seeds)', 'Davao', '', '', '', 'No', '', 'No', ''),
(125, 128, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(126, 129, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '2x2', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', '', 'D.A', '', '', 'No', '', 'No', ''),
(127, 130, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(128, 131, 'Tenanted', '1.6 - 2.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer', '', '', 'No', '', 'No', ''),
(129, 132, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '2x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(130, 133, 'Owned (Inherited)', '1.1 - 1.5 ha', '51 trees above', '', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(131, 134, 'Tenanted', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(132, 135, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '2x2', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(133, 136, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '2x2', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(134, 137, 'Owned (Bought)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Davao', '', '', 'No', '', 'No', ''),
(135, 138, 'Owned (Bought)', '2.1 ha above', '51 trees above', '', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(136, 139, 'Tenanted', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(137, 140, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(138, 141, NULL, '0.5 - 1.0 ha', '51 trees above', '', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(139, 142, 'Owned (Bought)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer', '', '', 'No', '', 'No', ''),
(140, 143, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '21-30 years', 'None', 'Forastero,Trinitario', '', '', 'Plantation (more than 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Owned', '', '', '', 'No', '', 'No', ''),
(141, 144, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'Palit ra sa Carmen', '', '', '', 'No', '', 'No', ''),
(142, 145, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(143, 146, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(144, 147, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(145, 148, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(146, 149, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(147, 150, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(148, 151, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(149, 152, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(150, 153, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(151, 154, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(152, 155, NULL, '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kenemer (Davao)', '', '', 'No', '', 'No', ''),
(153, 156, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(154, 157, 'Tenanted', '0.5 ha below', '51 trees above', '4x4', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'Owned', '', '', '', 'No', '', 'No', ''),
(155, 158, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(156, 159, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(157, 160, 'Owned (Inherited)', '2.1 ha above', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero,Trinitario', 'UF-18,BR-25,K-9,Others', 'W10, PBC123', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', 'Private', 'Davao', 'Private', '', 'No', '', 'No', ''),
(158, 161, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A Sierra Bullones', '', '', 'No', '', 'No', ''),
(159, 162, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '', '10 years below', '10 years below', 'Forastero,Trinitario', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A Sierra Bullones', '', '', 'No', '', 'No', ''),
(160, 163, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero,Trinitario', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'DA', '', '', '', 'No', '', 'No', ''),
(161, 164, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '3x2', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(162, 165, 'Owned (Bought),Owned (Inherited)', '0.5 ha below', '51 trees above', '3X3', '10 years below', 'None', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'LGU', '', '', 'No', '', 'No', ''),
(163, 166, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Private', '', '', 'No', '', 'No', ''),
(164, 167, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(165, 168, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '4x4', '31-40 years', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'La Suerte', '', '', '', 'No', '', 'No', ''),
(166, 169, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation', '', 'Mindanao', '', '', '', 'No', '', 'No', ''),
(167, 170, 'Mortgage', '0.5 ha below', '51 trees above', '4x4', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(168, 171, 'Tenanted', '1.1 - 1.5 ha', '10 - 20 trees', '6x6', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'Private', '', '', '', 'No', '', 'No', ''),
(169, 172, 'Owned (Inherited)', '0.5 ha below', '41 - 50 trees', '4x4', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(170, 173, 'Owned (Inherited)', '0.5 ha below', '21 - 30 trees', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(171, 174, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '11-20 years', 'None', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', 'LGU', 'Kennemer', '', '', 'No', '', 'No', ''),
(172, 175, 'Owned (Inherited)', '0.5 ha below', '41 - 50 trees', '3x3', '10 years below', '10 years below', 'Trinitario', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'Owned', '', '', '', 'No', '', 'No', ''),
(173, 176, 'Owned (Bought),Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '2x2', '10 years below', 'None', 'Trinitario', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', 'Own', 'DA', '', '', 'No', '', 'No', ''),
(174, 177, 'Owned (Inherited)', '0.5 ha below', '41 - 50 trees', '3x3', '10 years below', '10 years below', '', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(175, 178, 'Owned (Inherited)', '1.1 - 1.5 ha', '51 trees above', '2x2', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(176, 179, 'Owned (Bought)', '0.5 ha below', '10 - 20 trees', '3x3', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(177, 180, 'Undefined', '0.5 ha below', '21 - 30 trees', '2x2', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(178, 181, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '4x5', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(179, 182, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(180, 183, 'Owned (Bought),Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '2x2', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Own', '', '', '', 'No', '', 'No', ''),
(181, 184, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '2x2', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(182, 185, 'Tenanted', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(183, 186, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '', '11-20 years', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(184, 190, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(185, 191, 'Owned (Bought),Owned (Inherited)', '0.5 ha below', '21 - 30 trees', '4x4', '21-30 years', '21-30 years', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', '', 'Neigbhors', '', '', '', 'No', '', 'No', ''),
(186, 192, 'Owned (Bought),Tenanted', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', '');
INSERT INTO `respondents_farm_profile` (`farm_id`, `respondent_id`, `land_ownership`, `farm_size`, `no_of_trees`, `planting_distance`, `farming_experience_production`, `farming_experience_production_organic`, `cacao_varieties`, `cacao_clone_planted`, `cacao_clone_planted_others`, `farming_category`, `farming_status`, `type_of_propagation`, `source_of_seeds`, `source_of_seedlings`, `source_of_scions`, `source_of_stocks`, `stablish_nursery`, `stablish_nursery_yes`, `sell_seedling`, `sell_seedling_yes`) VALUES
(187, 193, 'Mortgage', '0.5 ha below', '21 - 30 trees', '2x2', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(188, 194, 'Tenanted', '1.1 - 1.5 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(189, 225, 'Owned (Bought),Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '2x2', '10 years below', 'None', 'Forastero', 'Others', 'Brazilian', 'Plantation (more than 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Own', '', '', '', 'No', '', 'No', ''),
(190, 228, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A Sierra Bullones', '', '', 'No', '', 'No', ''),
(191, 229, 'Tenanted', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Trinidad', '', '', 'No', '', 'No', ''),
(192, 230, 'Owned (Bought),Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(193, 231, 'Owned (Bought)', '2.1 ha above', '51 trees above', '4x4', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Ubay and Sagbayan', '', '', 'No', '', 'No', ''),
(194, 242, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(195, 243, 'Owned (Bought)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(196, 244, 'Owned (Bought)', '0.5 - 1.0 ha', '41 - 50 trees', '3x3', '11-20 years', '11-20 years', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Rehabilitated', 'Sexual (e.g. seeds)', 'Owned', '', '', '', 'No', '', 'No', ''),
(197, 245, 'Owned (Bought),Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '4x4', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen, Kennemer', '', '', 'No', '', 'No', ''),
(198, 246, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(199, 251, 'Owned (Bought),Tenanted', '0.5 ha below', '41 - 50 trees', '2x2', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Rehabilitated', 'Asexual (e.g. grafted, budded)', 'Own', '', '', '', 'No', '', 'No', ''),
(200, 252, 'Owned (Bought),Owned (Inherited)', '2.1 ha above', '51 trees above', '3x3', '10 years below', 'None', 'Criollio', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Clarin', '', '', 'Yes', '50', 'No', ''),
(201, 253, 'Owned (Inherited)', '0.5 ha below', '21 - 30 trees', '3x4', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', '', 'Private', '', '', 'No', '', 'No', ''),
(202, 254, 'Owned (Bought),Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Mindanao', '', '', 'No', '', 'No', ''),
(203, 255, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '4x3', '31-40 years', '31-40 years', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Own', '', '', '', 'No', '', 'No', ''),
(204, 256, 'Owned (Inherited)', '0.5 ha below', '41 - 50 trees', '3x3', '10 years below', 'None', 'Forastero,Trinitario', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(205, 257, 'Tenanted', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(206, 258, 'Owned (Bought)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(207, 259, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', 'Brazilian', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(208, 260, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '3x3', '10 years below', '10 years below', 'Forastero', 'BR-25,Others', 'Brazilian', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(209, 261, 'Owned (Inherited)', '0.5 ha below', '41 - 50 trees', '3x3', '11-20 years', 'None', 'Forastero', 'UF-18', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Own', '', '', '', 'No', '', 'No', ''),
(210, 262, 'Owned (Inherited)', '0.5 - 1.0 ha', '41 - 50 trees', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A', '', '', 'No', '', 'No', ''),
(211, 263, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(212, 264, 'Owned (Inherited)', '0.5 ha below', '41 - 50 trees', '2x2', '10 years below', 'None', 'Forastero', 'Others', 'Braziilan', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(213, 265, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(214, 266, 'Owned (Inherited)', '0.5 ha below', '21 - 30 trees', '3x3', '10 years below', 'None', 'Forastero', 'UF-18', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(215, 267, 'Owned (Bought)', '1.6 - 2.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'D.A, Bicao', '', '', 'Yes', '4x8', 'No', ''),
(216, 268, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Trinitario', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', '', 'Private', '', '', 'No', '', 'No', ''),
(217, 269, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '3x3', '10 years below', '10 years below', 'Forastero', 'Others', 'Brazilian', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Department of Agriculture', '', '', 'No', '', 'No', ''),
(218, 270, 'Owned (Inherited)', '1.6 - 2.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Kennemer', '', '', 'No', '', 'No', ''),
(399, 451, 'Owned (Inherited),Tenanted', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(558, 610, 'Owned (Inherited)', '2.1 ha above', '51 trees above', '3x3', '10 years below', '10 years below', 'Criollio,Trinitario', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'UF18 Davao', '', '', '', 'Yes', '20x20 / 20x18', 'Yes', '200'),
(559, 611, 'Owned (Bought),Owned (Inherited)', '0.5 ha below', '21 - 30 trees', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', 'Davao', 'Davao', '', '', 'No', '', 'No', ''),
(566, 618, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '5x5', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Davao', '', '', 'No', '', 'No', ''),
(567, 619, 'Owned (Bought)', '2.1 ha above', '10 - 20 trees', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(654, 706, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '2x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(655, 707, 'Owned (Bought)', '0.5 - 1.0 ha', '51 trees above', '4x4', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', '', '', '', 'No', '', 'No', ''),
(656, 708, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds)', '', 'PCA, DA', '', '', 'No', '', 'No', ''),
(657, 709, 'Owned (Inherited)', '2.1 ha above', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(658, 710, 'Owned (Inherited)', '0.5 ha below', '51 trees above', '2x2', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25,Others', 'N10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(659, 711, 'Owned (Bought)', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Sexual (e.g. seeds),Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(660, 712, 'Owned (Bought),Owned (Inherited)', '2.1 ha above', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Bicao', '', '', 'No', '', 'No', ''),
(661, 713, 'Owned (Bought)', '1.1 - 1.5 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', '', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'DA', '', '', 'No', '', 'No', ''),
(662, 714, 'Tenanted', '0.5 ha below', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(663, 715, 'Owned (Bought)', '1.1 - 1.5 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Mindanao', '', '', 'No', '', 'No', ''),
(664, 716, 'Tenanted', '0.5 ha below', '41 - 50 trees', '3x3', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Carmen', '', '', 'No', '', 'No', ''),
(665, 717, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', '10 years below', 'Forastero', 'UF-18,BR-25,Others', 'W10', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'PCA', '', '', 'No', '', 'No', ''),
(666, 718, 'Owned (Inherited)', '0.5 ha below', '10 - 20 trees', '6x6', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Inherited without rehabilitation', 'Sexual (e.g. seeds)', 'Owned', '', '', '', 'No', '', 'No', ''),
(667, 719, 'Owned (Bought)', '0.5 ha below', '41 - 50 trees', '2x2', '10 years below', 'None', 'Forastero', '', '', 'Backyard (below 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Lapaz, Carmen', '', '', 'No', '', 'No', ''),
(668, 720, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Davao (Kennemer)', '', '', 'No', '', 'No', ''),
(669, 721, 'Owned (Inherited)', '0.5 - 1.0 ha', '51 trees above', '3x3', '10 years below', 'None', 'Forastero', 'UF-18,BR-25', '', 'Plantation (more than 50 trees planted)', 'Newly established', 'Asexual (e.g. grafted, budded)', '', 'Private', '', '', 'No', '', 'No', '');

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
(0, 1, '', '', '', '', ''),
(0, 59, '', '', '', '', ''),
(0, 60, 'Tablea,Others', 'Personal consume', 'Others', 'Personal consume', ''),
(0, 61, 'Dried bean,Tablea', '', 'Contract', '', 'Tagbilaran'),
(0, 62, 'Tablea', '', '', '', 'Comprador'),
(0, 63, 'Tablea', '', 'Others', 'Kunsomo', ''),
(0, 64, '', '', '', '', ''),
(0, 65, '', '', '', '', ''),
(0, 66, 'Dried bean', '', 'Whole sale', '', 'Calape'),
(0, 67, 'Tablea', '', 'Others', 'Personal consume', ''),
(0, 68, 'Tablea', '', '', 'Personal Cosume', 'Calapi Market'),
(0, 69, 'Tablea', '', 'Others', 'Personal Cosume', ''),
(0, 70, 'Fresh bean,Tablea', '', 'Retails', '', 'Carmen Public Market'),
(0, 71, '', '', '', '', ''),
(0, 72, '', '', '', '', ''),
(0, 73, '', '', '', '', ''),
(0, 74, '', '', '', '', ''),
(0, 75, '', '', '', '', ''),
(0, 76, '', '', '', '', ''),
(0, 77, '', '', '', '', ''),
(0, 78, '', '', '', '', ''),
(0, 79, 'Tablea', '', 'Others', 'Personal Consume', ''),
(0, 80, '', '', '', '', ''),
(0, 81, 'Dried bean', '', 'Contract', '', 'Ubay'),
(0, 82, 'Dried bean,Tablea', '', 'Contract', '', 'San Miguel Area'),
(0, 83, '', '', '', '', ''),
(0, 84, '', '', '', '', ''),
(0, 85, '', '', '', '', ''),
(0, 86, '', '', '', '', ''),
(0, 87, 'Tablea', '', 'Others', 'Konsumo', ''),
(0, 88, '', '', '', '', ''),
(0, 89, '', '', '', '', ''),
(0, 90, 'Tablea', '', 'Retails', '', 'Odiong'),
(0, 91, 'Fresh bean', '', 'Whole sale', '', 'Canjulao, Jagna, Bohol'),
(0, 92, '', '', '', '', ''),
(0, 93, '', '', '', '', ''),
(0, 94, '', '', '', '', ''),
(0, 95, '', '', '', '', ''),
(0, 96, 'Dried bean,Tablea', '', 'Contract', '', 'Jagna'),
(0, 97, '', '', '', '', ''),
(0, 98, '', '', '', '', ''),
(0, 99, '', '', '', '', ''),
(0, 100, '', '', '', '', ''),
(0, 101, '', '', '', '', ''),
(0, 102, '', '', '', '', ''),
(0, 103, 'Tablea', '', 'Contract', '', 'Jagna'),
(0, 104, '', '', '', '', ''),
(0, 105, '', '', '', '', ''),
(0, 106, '', '', '', '', ''),
(0, 107, '', '', '', '', ''),
(0, 108, '', '', '', '', ''),
(0, 109, '', '', '', '', ''),
(0, 110, '', '', '', '', ''),
(0, 111, '', '', '', '', ''),
(0, 112, '', '', '', '', ''),
(0, 113, '', '', '', '', ''),
(0, 114, '', '', '', '', ''),
(0, 115, '', '', '', '', ''),
(0, 116, '', '', '', '', ''),
(0, 117, '', '', '', '', ''),
(0, 118, '', '', '', '', ''),
(0, 119, '', '', '', '', ''),
(0, 120, '', '', '', '', ''),
(0, 121, '', '', '', '', ''),
(0, 122, '', '', '', '', ''),
(0, 123, '', '', '', '', ''),
(0, 124, '', '', '', '', ''),
(0, 125, '', '', '', '', ''),
(0, 126, '', '', '', '', ''),
(0, 127, 'Tablea', '', 'Retails', '', 'Boctol area'),
(0, 128, '', '', '', '', ''),
(0, 129, '', '', '', '', ''),
(0, 130, '', '', '', '', ''),
(0, 131, 'Dried bean', '', 'Whole sale', '', 'Tagbilaran, City'),
(0, 132, 'Dried bean', '', '', '', ''),
(0, 41, '', '', '', '', ''),
(0, 133, 'Tablea', '', '', '', ''),
(0, 134, 'Tablea', '', 'Retails', '', 'Sari-Sari Store'),
(0, 135, '', '', '', '', ''),
(0, 136, 'Fresh bean,Dried bean', '', 'Retails', '', 'Public Market'),
(0, 137, '', '', '', '', ''),
(0, 138, 'Fresh bean', '', 'Retails,Whole sale', '', 'Sagbayan, Bohol Farms Food'),
(0, 139, 'Dried bean', '', 'Whole sale', '', 'Carmen'),
(0, 140, 'Dried bean,Tablea', '', 'Retails', '', 'Silingan'),
(0, 141, '', '', '', '', ''),
(0, 142, 'Tablea', '', '', '', ''),
(0, 143, 'Dried bean', '', 'Whole sale', '', 'Sagbayan Market'),
(0, 144, '', '', '', '', ''),
(0, 145, 'Tablea', '', '', '', ''),
(0, 146, 'Tablea', '', '', '', ''),
(0, 147, 'Tablea', '', '', '', ''),
(0, 148, 'Tablea', '', '', '', ''),
(0, 149, 'Tablea', '', '', '', ''),
(0, 150, 'Tablea', '', '', '', ''),
(0, 151, 'Tablea', '', '', '', ''),
(0, 152, 'Tablea', '', '', '', ''),
(0, 153, 'Tablea', '', '', '', ''),
(0, 154, 'Tablea', '', '', '', ''),
(0, 155, 'Tablea', '', '', '', ''),
(0, 156, '', '', '', '', ''),
(0, 157, '', '', '', '', ''),
(0, 158, '', '', '', '', ''),
(0, 159, '', '', '', '', ''),
(0, 160, 'Fresh bean,Dried bean,Tablea', '', 'Whole sale', '', 'Dala Rich'),
(0, 161, '', '', '', '', ''),
(0, 162, '', '', '', '', ''),
(0, 163, 'Tablea', '', 'Retails', '', 'Sari-Sari Store (Silingan)'),
(0, 164, '', '', '', '', ''),
(0, 165, '', '', '', '', ''),
(0, 166, '', '', '', '', ''),
(0, 167, '', '', '', '', ''),
(0, 168, '', '', '', '', ''),
(0, 169, '', '', '', '', ''),
(0, 170, '', '', '', '', ''),
(0, 171, '', '', '', '', ''),
(0, 172, '', '', '', '', ''),
(0, 173, '', '', '', '', ''),
(0, 174, '', '', '', '', ''),
(0, 175, 'Tablea', '', 'Retails', '', 'San Miguel'),
(0, 176, '', '', '', '', ''),
(0, 177, '', '', '', '', ''),
(0, 178, '', '', '', '', ''),
(0, 179, '', '', '', '', ''),
(0, 180, '', '', '', '', ''),
(0, 181, 'Tablea', '', 'Contract', '', 'Neighborhood'),
(0, 182, '', '', '', '', ''),
(0, 183, 'Tablea', '', 'Retails', '', 'Neighborhood'),
(0, 184, '', '', '', '', ''),
(0, 185, '', '', '', '', ''),
(0, 186, '', '', '', '', ''),
(0, 190, '', '', '', '', ''),
(0, 191, '', '', '', '', ''),
(0, 192, '', '', '', '', ''),
(0, 193, '', '', '', '', ''),
(0, 194, 'Dried bean,Tablea', '', 'Contract', '', 'Area within Siera Bullones'),
(0, 225, 'Dried bean', '', 'Whole sale', '', 'Banlasan'),
(0, 228, '', '', '', '', ''),
(0, 229, '', '', '', '', ''),
(0, 230, '', '', '', '', ''),
(0, 231, '', '', '', '', ''),
(0, 242, '', '', '', '', ''),
(0, 243, '', '', '', '', ''),
(0, 244, '', '', '', '', ''),
(0, 245, '', '', '', '', ''),
(0, 246, '', '', '', '', ''),
(0, 251, '', '', '', '', ''),
(0, 252, '', '', '', '', ''),
(0, 253, 'Dried bean,Tablea', '', 'Contract', '', 'San Miguel'),
(0, 254, 'Dried bean', '', 'Contract', '', 'Ubay'),
(0, 255, 'Tablea', '', 'Retails', '', 'Calape Market'),
(0, 256, '', '', '', '', ''),
(0, 257, '', '', '', '', ''),
(0, 258, '', '', '', '', ''),
(0, 259, '', '', '', '', ''),
(0, 260, '', '', '', '', ''),
(0, 261, '', '', '', '', ''),
(0, 262, '', '', '', '', ''),
(0, 263, '', '', '', '', ''),
(0, 264, '', '', '', '', ''),
(0, 265, '', '', '', '', ''),
(0, 266, '', '', '', '', ''),
(0, 267, '', '', '', '', ''),
(0, 268, '', '', '', '', ''),
(0, 269, '', '', '', '', ''),
(0, 270, 'Tablea', '', 'Contract', '', 'Dagohoy, Friends, Neighbors'),
(0, 451, '', '', '', '', ''),
(0, 610, 'Tablea', '', 'Contract', '', 'Local and Texas (friend abroad)'),
(0, 611, '', '', '', '', ''),
(0, 618, '', '', '', '', ''),
(0, 619, 'Tablea', '', 'Contract', '', 'Mayana'),
(0, 706, '', '', '', '', ''),
(0, 707, '', '', '', '', ''),
(0, 708, '', '', '', '', ''),
(0, 709, '', '', '', '', ''),
(0, 710, '', '', '', '', ''),
(0, 711, '', '', '', '', ''),
(0, 712, 'Tablea', '', 'Contract', '', 'Carmen, Bohol'),
(0, 713, '', '', '', '', ''),
(0, 714, '', '', '', '', ''),
(0, 715, 'Tablea', '', 'Contract', '', 'Carmen'),
(0, 716, '', '', '', '', ''),
(0, 717, '', '', '', '', ''),
(0, 718, 'Tablea', '', 'Others', 'Konsumo', 'Boctol'),
(0, 719, '', '', '', '', ''),
(0, 720, 'Tablea', '', 'Retails', '', 'Carmen Area'),
(0, 721, '', '', '', '', '');

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
(1, 1, 'None', '', 0, ''),
(2, 2, 'None', '', 0, ''),
(3, 3, 'None', '', 0, ''),
(4, 4, 'None', '', 0, ''),
(5, 5, 'Zamora Farmers Org.', '', 5, 'Machinery'),
(6, 6, 'None', '', 0, ''),
(7, 7, 'Farmers asst.', 'members', 3, ''),
(8, 8, 'Farmers', 'members', 0, 'coconut'),
(9, 9, 'None', '', 0, ''),
(10, 10, 'None', '', 0, ''),
(11, 11, 'None', '', 0, ''),
(12, 12, 'Farmers Ass. / Vilfa', '', 2003, 'Rice Mill'),
(13, 13, 'Villa suerte farmers association', 'member', 3, 'ihaw ihaw ng baboy'),
(14, 1, 'None', '', 0, ''),
(15, 14, 'None', '', 0, ''),
(16, 1, 'None', '', 0, ''),
(17, 15, 'None', '', 0, ''),
(18, 16, 'None', '', 0, ''),
(19, 17, 'None', '', 0, ''),
(20, 1, 'None', '', 0, ''),
(21, 18, 'None', '', 0, ''),
(22, 19, 'Farmers', 'Member', 3, 'ihaw 2x'),
(23, 20, 'None', '', 0, ''),
(24, 1, 'Farmers', 'Member', 4, 'ihaw 2x'),
(25, 21, 'Farmers', 'Member', 3, 'ihaw 2x'),
(26, 22, 'None', '', 0, ''),
(27, 23, 'Farmer Asst.', 'Secretary', 2016, 'About Farming'),
(28, 24, 'Farmers', 'Member', 2018, 'Farming'),
(29, 25, 'Farmer Asst.', 'Member', 4, 'Ihaw ihaw baboy'),
(30, 26, 'None', '', 0, ''),
(31, 27, 'None', '', 0, ''),
(32, 28, 'None', '', 0, ''),
(33, 29, 'GAP', 'Member', 2, 'Planting Agricultural'),
(34, 30, 'None', '', 0, ''),
(35, 31, 'Cooperative', 'Member', 15, 'Lending/Production Loan/Agri-loan/Groceries'),
(36, 32, 'Samahang Nayon', 'Member', 5, 'Lending Money / Cash assistance / Grocery'),
(37, 33, 'None', '', 0, ''),
(38, 34, 'Womens / Farmers assoc.', 'Member', 9, 'Agricultural Projects Rice / Corn etc.'),
(39, 35, 'Cacao Growers', 'Member', 6, 'How to make chocolate'),
(40, 36, 'Keunemer', 'Member', 2, 'Cacao Farming'),
(41, 37, 'None', '', 0, ''),
(42, 38, 'None', '', 0, ''),
(43, 39, 'Samahan Nayon Multipurpose Cooperative', 'Member', 20, 'Farming'),
(44, 40, 'None', '', 0, ''),
(45, 41, 'None', '', 0, ''),
(46, 42, 'Samahan Nayon Multipurpose Cooperative', 'Member', 10, 'Farming'),
(47, 43, 'Cacao Growers Asso.', 'Member', 5, 'Cacao Processing'),
(48, 44, 'Samahang Nayon', 'Member', 20, 'Rice / Fertelizer loans'),
(49, 45, 'None', '', 0, ''),
(50, 46, 'None', '', 0, ''),
(51, 47, 'None', '', 0, ''),
(52, 48, 'Samahang Nayon Multipurpose Cooperative', 'Member', 10, 'Farming'),
(53, 49, 'None', '', 0, ''),
(54, 50, 'Samahan Nayon Multipurpose Cooperative', 'Member', 5, 'Farming'),
(55, 51, 'None', '', 0, ''),
(56, 52, 'None', '', 0, ''),
(57, 53, 'Samahang Nayon', 'Member', 2012, 'Ricemill / Organic Farming'),
(58, 54, 'None', '', 0, ''),
(59, 55, 'Carmen Coop / Samahang Nayon', 'Member', 2012, 'Organic Farming'),
(65, 57, 'None', '', 0, ''),
(66, 1, 'Farmers', '', 0, ''),
(67, 1, 'Farmers', '', 0, ''),
(68, 1, 'Farmers', '', 0, ''),
(69, 1, 'Farmers', '', 0, ''),
(70, 1, 'Farmers', '', 0, ''),
(71, 1, 'Farmers', '', 0, ''),
(72, 1, 'Farmers', '', 0, ''),
(73, 60, 'Farmers Association', 'member', 8, ''),
(74, 61, 'Farmers Association', 'member', 8, ''),
(75, 67, 'Farmers Association', 'member', 5, 'Loans'),
(76, 70, 'Samaghan Nayon Multipurpose Cooperative', 'member', 30, 'Farming'),
(77, 74, 'Mahayag Farmers', 'Member', 2011, ''),
(78, 79, 'Farmer Association', 'Vice President', 1990, 'Farming'),
(79, 80, 'Mahayag Farmers Association', 'Member', 2, 'Agriculture'),
(80, 82, 'Farmers Association', 'Member', 20, 'agriculture'),
(81, 84, 'Camanaga Farmers Association', 'Member', 2, 'Agriculture'),
(82, 86, 'OSVAWA', 'Member', 2015, 'Cacao, Banana'),
(83, 87, 'OSVAWA', 'Member', 2015, 'Cacao, Banana'),
(84, 88, 'OSVAWA', 'Member', 2015, 'Cacao, Banana'),
(85, 89, 'OSVAWA', 'Member', 3, 'Cacao, Banana, Coconut'),
(86, 90, 'OSVAWA', 'Member', 3, 'Cacao, Banana'),
(87, 91, 'OSVAWA', 'Member', 4, 'Cacao, Banana, Coconut'),
(88, 92, 'OSVAWA', 'Adviser', 5, 'Cacao, Banana, Coconut'),
(89, 93, 'OSVAWA', 'Member', 0, ''),
(90, 94, 'OSVAWA', 'Member', 5, 'Vegetables, Rice'),
(91, 95, 'Small Farmers', 'Member', 0, ''),
(92, 96, 'OSVAWA', 'Member', 3, 'Vegetables, Rice'),
(93, 98, 'OSVAWA', 'Member', 3, 'Vegetables, Rice'),
(94, 99, 'OSVAWA', 'Member', 0, 'Vegetables, Rice'),
(95, 100, 'OSVAWA', 'Member', 5, 'Vegetables, Rice'),
(96, 102, 'OSVAWA', 'Member', 5, 'Vegetables, Rice'),
(97, 103, 'OSVAWA', 'Member', 5, 'Vegetables, Rice'),
(98, 104, 'OSVAWA', 'Member', 5, 'Cacao, Banana, Coconut'),
(99, 107, 'Boctol Vegetable Grower Association (BOVEGA)', 'Vice President', 3, 'Agricultural and Vegetable Farming'),
(100, 108, 'Boctol Vegetable Grower Association (BOVEGA)', 'Member', 4, 'Farming Cacao, Banan, Vegetables'),
(101, 110, 'Calabacita Coconut Small Farmers', 'President', 10, 'Farming'),
(102, 112, 'OSVAWA', 'Member', 5, 'Cacao, Banana, Coconut'),
(103, 113, 'OSVAWA', 'Member', 5, 'Vegetables, Rice'),
(104, 114, 'Odoing Skilled Vegetable Workers Association (OSVAWA)', 'President', 5, 'Cacao, Banana, Coconut, Vegetable'),
(105, 116, 'Odoing Skilled Vegetable Workers Association (OSVAWA)', 'Member', 3, 'Cacao, Banana, Coconut'),
(106, 118, 'Mayana Cut Flower Vegetable Growers Association', 'President', 8, 'Farming'),
(107, 118, 'Comfratuity Of Mayana Small Farmers Association', 'PRO', 10, 'Tree Planting'),
(108, 119, 'COMAS FARMA', 'Treasurer', 4, ''),
(109, 121, 'BOVEGA', 'Member', 3, ''),
(110, 123, 'MASFA', 'Member', 8, 'Banana Export'),
(111, 125, 'MACVEGA', 'Member', 8, 'Farming'),
(112, 127, 'BOVEGA boctol vegetable Growers Association', 'Member', 1, 'Squash, Pechay, Cacao and Onion'),
(113, 128, 'Calabacita Coconut Small Farmers', 'Member', 10, 'Farming'),
(114, 129, 'COMAS FARMA', 'Member', 4, 'Farming'),
(115, 133, 'Samahan Nayon', 'Member', 2015, ''),
(116, 134, 'Samahang Nayon Cooperative', 'Member', 2014, 'Cacao Farming'),
(117, 135, 'Samahang Nayon Cooperative', 'Member', 7, 'Farming'),
(118, 136, 'Samahang Nayon Multipurpose-Cooperative', 'Member', 9, 'Farming'),
(119, 139, 'Samahang Nayon', 'Member', 2014, 'Patanom ug Cacao'),
(120, 140, 'Carmen Samahang Nayon Coop', 'Member', 8, 'Farming'),
(121, 141, 'COOPERTIVE', 'Member', 2, 'Agriculture'),
(122, 145, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(123, 146, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(124, 147, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(125, 148, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(126, 149, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(127, 150, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(128, 151, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(129, 152, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(130, 153, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(131, 154, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(132, 155, 'Farmers/Samahang Nayon Cooperative', 'Member', 2013, 'Loans/cacao'),
(133, 158, 'DASFA', 'Member', 10, 'Farming'),
(134, 158, 'UFTDI', 'Member', 15, 'Farming Fruit Tree'),
(135, 159, 'DASFA', 'Member', 10, 'Farming'),
(136, 159, 'UFTDI', 'Member', 15, 'Farming Fruit Tree'),
(137, 160, 'Cacao de sikwate', 'Member', 10, 'Cacao'),
(138, 164, 'Farmer Organization', 'Member', 9, 'Cacao'),
(139, 166, 'Bugang Farmers Association', 'Member', 1, ''),
(140, 169, 'Farmers Association', 'Member', 9, 'Cash Assistance'),
(141, 171, 'None', 'None', 0, 'none'),
(142, 179, 'Bugang Farmers Association', 'Member', 10, 'Farming Cacao, Vegetable, Coconut'),
(143, 181, 'Cacao Growers Wold Vision', 'Member', 15, 'School Assistance, Scholarship, Livelihoods'),
(144, 182, 'Cooperative', 'Member', 2, ''),
(145, 186, 'Coconut Farmers', 'Member', 20, ''),
(146, 186, 'Bugang Farmers Association', 'Member', 16, ''),
(147, 193, 'Farmers Association', 'Member', 6, 'Agriculture'),
(328, 451, 'OVAWA', 'Member', 2015, 'Cacao, Banana, Coconut'),
(497, 610, 'Plantacion De Sikuate', 'Member', 1, 'Promoting Criollio Variety'),
(521, 706, 'OSVAWA', 'Member', 5, 'Cacao, Coconut, Coffee and Vegetable Farming'),
(522, 709, 'OSVAWA', 'Member', 5, 'Vegetables, Rice, Coconut, Coffee'),
(523, 710, 'OSVAWA', 'Member', 5, 'Cacao farming, coconut farming coffee and vegetables'),
(524, 712, 'Kenemer Roods', 'Member', 4, 'Cacao'),
(525, 715, 'Samahang Nayon', 'Member', 4, 'Cacao, Rice Field'),
(526, 716, 'Farmer\'s Association', 'Member', 4, 'Farming'),
(527, 717, 'OSVAWA', 'Member', 5, 'Vegetable and Rice'),
(528, 719, 'Farmer\'s Association', 'Member', 4, '');

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
(38, 41, 'Leaf Miner,Mirid Bugs,Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
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
(54, 57, 'Cutworm ,Stem Borer ,Aphids', NULL, '', NULL, '', '', 'Black Pod Rot ', '', '', '', NULL, NULL, NULL),
(56, 59, 'Cacao Pod Borer', NULL, 'Sanitation', NULL, 'Pruning', '', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(57, 60, 'Cacao Pod Borer', NULL, 'Others', NULL, '', '', 'Dieback', '', 'Others', '', NULL, NULL, NULL),
(58, 61, 'Cacao Pod Borer', NULL, 'Chemical control', NULL, '', 'spray Karate', 'Black Pod Rot', '', 'Chemical control', '', NULL, NULL, NULL),
(59, 62, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(60, 63, 'Stem Borer', NULL, 'Others', NULL, '', '', 'Frosty Pod', '', 'Others', '', NULL, NULL, NULL),
(61, 64, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(62, 65, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(63, 66, 'Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(64, 67, 'Cacao Pod Borer', NULL, 'Others', NULL, '', '', 'Black Pod Rot', '', 'Others', '', NULL, NULL, NULL),
(65, 68, 'Stem Borer', NULL, 'Others', NULL, '', '', 'Frosty Pod', '', 'Others', '', NULL, NULL, NULL),
(66, 69, '', NULL, '', NULL, '', '', 'Black Pod Rot', '', '', '', NULL, NULL, NULL),
(67, 70, 'Leaf Miner', NULL, '', NULL, '', '', 'Black Pod Rot,Frosty Pod', '', 'Chemical control', 'Karate, Sabon', NULL, NULL, NULL),
(68, 71, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(69, 72, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(70, 73, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(71, 74, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(72, 75, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(73, 76, 'Leaf Miner', NULL, '', NULL, '', '', '', '', 'Chemical control', '', NULL, NULL, NULL),
(74, 77, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(75, 78, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(76, 79, 'Leaf Miner', NULL, '', NULL, '', '', 'Frosty Pod', '', 'Others', '', NULL, NULL, NULL),
(77, 80, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(78, 81, 'Leaf Miner', NULL, '', NULL, '', '', 'Dieback,Black Pod Rot', '', '', '', NULL, NULL, NULL),
(79, 82, 'Stem Borer', NULL, 'Sanitation', NULL, 'DA-OB / Haling', '', 'Black Pod Rot,Frosty Pod', '', 'Chemical control', 'Spray', NULL, NULL, NULL),
(80, 83, 'Others', NULL, 'Others', NULL, '', '', '', '', 'Others', '', NULL, NULL, NULL),
(81, 84, 'Leaf Miner', NULL, 'Others', NULL, '', '', 'Others', '', 'Others', '', NULL, NULL, NULL),
(82, 85, 'Stem Borer', NULL, 'Others', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(83, 86, 'Leaf Miner', NULL, 'Others', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(84, 87, 'Leaf Miner,Stem Borer', NULL, 'Others', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(85, 88, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(86, 89, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(87, 90, 'Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(88, 91, 'Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(89, 92, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(90, 93, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(91, 94, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(92, 95, 'Leaf Miner', NULL, 'Sanitation', NULL, 'Haling', '', '', '', '', '', NULL, NULL, NULL),
(93, 96, 'Cacao Pod Borer,Leaf Miner', NULL, 'Others', NULL, '', '', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts,Others', '', NULL, NULL, NULL),
(94, 97, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(95, 98, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(96, 99, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(97, 100, 'Cacao Pod Borer,Leaf Miner', NULL, '', NULL, '', '', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(98, 101, 'Cacao Pod Borer', NULL, 'Sanitation', NULL, 'Pruning', '', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(99, 102, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(100, 103, 'Stem Borer', NULL, 'Sanitation', NULL, 'Cutting', '', 'Black Pod Rot', '', 'Others', '', NULL, NULL, NULL),
(101, 104, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(102, 105, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(103, 106, 'Leaf Miner,Mirid Bugs,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(104, 107, 'Stem Borer', NULL, 'Others', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(105, 108, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(106, 109, '', NULL, '', NULL, '', '', 'Black Pod Rot', '', '', '', NULL, NULL, NULL),
(107, 110, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', 'Chemical control', 'Karate', NULL, NULL, NULL),
(108, 111, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(109, 112, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(110, 113, 'Cacao Pod Borer,Leaf Miner', NULL, 'Sanitation', NULL, 'Pruning', '', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(111, 114, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', 'Others', '', NULL, NULL, NULL),
(112, 115, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(113, 116, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(114, 117, '', NULL, '', NULL, '', '', 'Black Pod Rot', '', '', '', NULL, NULL, NULL),
(115, 118, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', 'Black Pod Rot,Frosty Pod', '', '', '', NULL, NULL, NULL),
(116, 119, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(117, 120, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(118, 121, 'Cacao Pod Borer', NULL, '', NULL, '', 'Spray', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts', 'Spray', NULL, NULL, NULL),
(119, 122, 'Cacao Pod Borer', NULL, '', NULL, '', 'Spray', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts', 'Spray', NULL, NULL, NULL),
(120, 123, 'Cacao Pod Borer', NULL, '', NULL, '', '', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts', 'Spray', NULL, NULL, NULL),
(121, 124, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(122, 125, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(123, 126, 'Stem Borer', NULL, '', NULL, 'Cutting', '', '', '', '', '', NULL, NULL, NULL),
(124, 127, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', 'Black Pod Rot,Frosty Pod', '', 'Others', '', NULL, NULL, NULL),
(125, 128, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(126, 129, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', 'Black Pod Rot,Frosty Pod', '', '', '', NULL, NULL, NULL),
(127, 130, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(128, 131, 'Stem Borer', NULL, 'Sanitation,Chemical control', NULL, 'Cutting', 'Insecticide', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts,Others', '', NULL, NULL, NULL),
(129, 132, 'Leaf Miner,Mirid Bugs,Stem Borer', NULL, 'Others', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(130, 133, 'Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod,Others', 'Bansalo / Bugtok', 'Mechanical control', '', NULL, NULL, NULL),
(131, 134, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', 'Karate', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(132, 135, 'Leaf Miner,Stem Borer,Aphids', NULL, 'Others', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(133, 136, 'Leaf Miner,Mirid Bugs,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(134, 137, 'Cacao Pod Borer,Leaf Miner', NULL, 'Hand Picking', NULL, '', '', 'Dieback,Black Pod Rot', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(135, 138, 'Cacao Pod Borer,Leaf Miner,Stem Borer', NULL, '', NULL, '', '', 'Dieback', '', '', '', NULL, NULL, NULL),
(136, 139, 'Stem Borer', NULL, 'Others', NULL, '', '', 'Others', 'Bansalo', '', '', NULL, NULL, NULL),
(137, 140, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', 'Spray, Lanit', 'Dieback,Black Pod Rot', '', '', '', NULL, NULL, NULL),
(138, 141, 'Leaf Miner', NULL, 'Chemical control', NULL, '', '', 'Black Pod Rot', '', 'Chemical control,Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(139, 142, '', NULL, '', NULL, '', '', 'Black Pod Rot', '', 'Chemical control', 'Karate', NULL, NULL, NULL),
(140, 143, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', 'Black Pod Rot,Others', 'Buntok', '', '', NULL, NULL, NULL),
(141, 144, 'Stem Borer', NULL, '', NULL, '', '', 'Black Pod Rot', '', '', '', NULL, NULL, NULL),
(142, 145, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(143, 146, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(144, 147, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(145, 148, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(146, 149, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(147, 150, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(148, 151, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(149, 152, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(150, 153, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(151, 154, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(152, 155, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Others', 'Bansalo/bogtokon', 'Others', '', NULL, NULL, NULL),
(153, 156, 'Leaf Miner,Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', '', '', '', '', NULL, NULL, NULL),
(154, 157, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(155, 158, 'Stem Borer,Aphids', NULL, '', NULL, '', '', 'Frosty Pod', '', 'Others', '', NULL, NULL, NULL),
(156, 159, 'Stem Borer,Aphids', NULL, '', NULL, '', '', 'Frosty Pod', '', 'Others', '', NULL, NULL, NULL),
(157, 160, 'Leaf Miner,Stem Borer,Others', NULL, 'Sanitation', NULL, '', '', 'Black Pod Rot,Vascular Streak Disease,Frosty Pod', '', 'Pruning and burning of infected plants/parts,Others', '', NULL, NULL, NULL),
(158, 161, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(159, 162, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(160, 163, 'Leaf Miner,Stem Borer,Aphids', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(161, 164, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(162, 165, 'Leaf Miner,Cutworm,Stem Borer,Aphids', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(163, 166, 'Stem Borer', NULL, '', NULL, '', 'Spray', '', '', '', '', NULL, NULL, NULL),
(164, 167, 'Leaf Miner', NULL, '', NULL, '', '', 'Black Pod Rot,Frosty Pod', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(165, 168, 'Leaf Miner', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(166, 169, 'Cacao Pod Borer', NULL, '', NULL, '', '', 'Dieback,Black Pod Rot', '', '', '', NULL, NULL, NULL),
(167, 170, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(168, 171, 'Leaf Miner', NULL, 'Chemical control', NULL, '', 'Spray', '', '', '', '', NULL, NULL, NULL),
(169, 172, 'Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(170, 173, '', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(171, 174, 'Cacao Pod Borer,Mirid Bugs,Cutworm,Aphids', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(172, 175, 'Leaf Miner', NULL, 'Others', NULL, '', '', 'Frosty Pod', '', 'Mechanical control', '', NULL, NULL, NULL),
(173, 176, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(174, 177, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(175, 178, 'Cacao Pod Borer', NULL, '', NULL, '', '', 'Dieback,Black Pod Rot', '', '', '', NULL, NULL, NULL),
(176, 179, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(177, 180, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(178, 181, 'Cacao Pod Borer,Stem Borer', NULL, '', NULL, '', '', 'Black Pod Rot', '', '', '', NULL, NULL, NULL),
(179, 182, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(180, 183, 'Leaf Miner', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(181, 184, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(182, 185, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(183, 186, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(184, 190, 'Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(185, 191, 'Mealy Bugs', NULL, 'Chemical control', NULL, '', 'Spray', 'Black Pod Rot', '', 'Chemical control', 'Spray', NULL, NULL, NULL),
(186, 192, 'Leaf Miner,Stem Borer,Aphids', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(187, 193, 'Leaf Miner', NULL, '', NULL, '', 'Spray', '', '', '', '', NULL, NULL, NULL),
(188, 194, 'Leaf Miner,Stem Borer', NULL, 'Sanitation', NULL, 'Bali-on ang sanga', '', 'Black Pod Rot', '', '', '', NULL, NULL, NULL),
(189, 225, 'Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(190, 228, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(191, 229, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(192, 230, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(193, 231, 'Stem Borer', NULL, 'Hand Picking', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(194, 242, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(195, 243, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(196, 244, 'Leaf Miner,Stem Borer', NULL, 'Others', NULL, '', '', 'Frosty Pod', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(197, 245, 'Stem Borer', NULL, 'Hand Picking', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(198, 246, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(199, 251, 'Cacao Pod Borer,Aphids', NULL, 'Others', NULL, '', '', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(200, 252, 'Stem Borer', NULL, 'Chemical control', NULL, '', 'Karate', 'Black Pod Rot', '', 'Chemical control', 'Karate', NULL, NULL, NULL),
(201, 253, 'Stem Borer', NULL, 'Sanitation', NULL, 'Paasohan', '', 'Frosty Pod', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(202, 254, 'Leaf Miner', NULL, '', NULL, '', '', 'Dieback,Black Pod Rot', '', '', '', NULL, NULL, NULL),
(203, 255, 'Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(204, 256, '', NULL, '', NULL, '', '', 'Black Pod Rot', '', '', '', NULL, NULL, NULL),
(205, 257, 'Leaf Miner', NULL, 'Chemical control', NULL, '', 'Parapest - D', '', '', '', '', NULL, NULL, NULL),
(206, 258, 'Leaf Mineran', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(207, 259, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(208, 260, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(209, 261, 'Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(210, 262, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(211, 263, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(212, 264, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(213, 265, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(214, 266, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(215, 267, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(216, 268, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(217, 269, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(218, 270, 'Cacao Pod Borer', NULL, '', NULL, '', '', 'Black Pod Rot,Vascular Streak Disease', '', '', '', NULL, NULL, NULL),
(399, 451, '', NULL, '', NULL, '', '', 'Frosty Pod', '', 'Others', '', NULL, NULL, NULL),
(558, 610, 'Leaf Miner', NULL, 'Hand Picking', NULL, '', '', 'Vascular Streak Disease', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(559, 611, 'Cacao Pod Borer', NULL, 'Sanitation', NULL, '', '', 'Black Pod Rot', '', 'Pruning and burning of infected plants/parts', '', NULL, NULL, NULL),
(566, 618, 'Cacao Pod Borer', NULL, '', NULL, '', '', 'Black Pod Rot', '', '', '', NULL, NULL, NULL),
(567, 619, 'Cacao Pod Borer', NULL, '', NULL, '', '', 'Dieback,Black Pod Rot', '', '', '', NULL, NULL, NULL),
(654, 706, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(655, 707, 'Stem Borer', NULL, 'Hand Picking', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(656, 708, '', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(657, 709, '', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(658, 710, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(659, 711, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(660, 712, 'Stem Borer', NULL, 'Chemical control', NULL, '', '', 'Dieback,Black Pod Rot', '', 'Others', '', NULL, NULL, NULL),
(661, 713, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(662, 714, 'Leaf Miner', NULL, 'Chemical control', NULL, '', 'Lanit', '', '', '', '', NULL, NULL, NULL),
(663, 715, 'Cacao Pod Borer,Stem Borer', NULL, '', NULL, '', '', 'Dieback,Black Pod Rot', '', '', '', NULL, NULL, NULL),
(664, 716, 'Leaf Miner', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(665, 717, 'Leaf Miner', NULL, 'Sanitation', NULL, '', '', '', '', '', '', NULL, NULL, NULL),
(666, 718, 'Stem Borer', NULL, '', NULL, '', '', 'Frosty Pod', '', '', '', NULL, NULL, NULL),
(667, 719, 'Leaf Miner', NULL, 'Chemical control', NULL, '', 'Lanit', '', '', '', '', NULL, NULL, NULL),
(668, 720, 'Stem Borer', NULL, 'Others', NULL, '', '', 'Others', 'Bansalo, Bugtok', '', '', NULL, NULL, NULL),
(669, 721, 'Leaf Miner,Stem Borer', NULL, '', NULL, '', '', '', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `respondents_post_harvest`
--

CREATE TABLE `respondents_post_harvest` (
  `harvet_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `pod_per_variety` varchar(25) DEFAULT NULL,
  `kg_produced_per_variety` varchar(25) DEFAULT NULL,
  `total_bean_production` varchar(25) DEFAULT NULL,
  `cacao_pod_sorting` varchar(50) DEFAULT NULL,
  `pod_processing` varchar(150) DEFAULT NULL,
  `pod_breaking` varchar(10) DEFAULT NULL,
  `bean_processing` varchar(10) DEFAULT NULL,
  `bean_sorting` varchar(10) DEFAULT NULL,
  `bean_roasting` varchar(10) DEFAULT NULL,
  `winnowing` varchar(10) DEFAULT NULL,
  `grinding` varchar(10) DEFAULT NULL,
  `cacao_pod_processing` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_post_harvest`
--

INSERT INTO `respondents_post_harvest` (`harvet_id`, `respondent_id`, `pod_per_variety`, `kg_produced_per_variety`, `total_bean_production`, `cacao_pod_sorting`, `pod_processing`, `pod_breaking`, `bean_processing`, `bean_sorting`, `bean_roasting`, `winnowing`, `grinding`, `cacao_pod_processing`) VALUES
(1, 1, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, '', '', '', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 31, '', '80', '35', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 32, '10', '5', '5', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 33, '10', '4', '10', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 34, '5', '4', '10', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 35, '500', '60', '60', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 37, '10', '50', '100', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 38, '10', '5', '50', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 40, '3', '2', '5', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 41, '5', '5', '10', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 42, '5', '5', '10', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 43, '500', '1', '1', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 44, '100', '8', '8', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 45, '5', '5', '5', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 46, '5', '1.4', '', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 47, '1', '11', '11', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 48, '2', '0.5', '10', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 49, '2', '0.3', '5', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 50, '10', '5', '20', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 51, '5', '1.2', '1.2', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 52, '2', '6', '6', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 53, '5', '3', '3', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 54, '15', '20', '20', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 55, '5', '1', '', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 0, '', '', '', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 59, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 60, '1.5', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 61, '', '6', '36', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 62, '', '', '16', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 63, '', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 64, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 65, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 66, '', '1', '10', 'None', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 67, '', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 68, '2', '1', '5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 69, '', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 70, '5', '4', '15', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 71, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 72, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 73, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 74, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 75, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 76, '20-50 pcs', '', '4-7 kg', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 77, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 78, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 79, '', '', '6 kg', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 80, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 81, '', '', '2 kg', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 82, '', '', '10 Kg', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 83, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 84, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 85, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 86, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 87, '', '', '2 kg', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 88, '', '', '1 kg', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 89, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 90, '', '', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 91, '', '', '25', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 92, '', '', '2kg', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 93, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 94, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 95, '', '', '5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 96, '', '', '2', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 97, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 98, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 99, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 100, '', '', '8', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 101, '', '', '1', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 102, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 103, '5-10', '', '2', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 104, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 105, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 106, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 107, '', '', '1', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 108, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 109, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 110, '1-2', '0.1 - 0.3', '3-5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 111, 'less than 10', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 112, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 113, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 114, '1-2', '0.1 - 0.3', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 115, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 116, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 117, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 118, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 119, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 120, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 121, '', '', '7', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 122, '', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 123, '', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 124, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 125, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 126, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 127, '5 to 8 pcs', '0.2 - 0.5 kg', '10 to 15 kg', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 128, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 129, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 130, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 131, '1 to 4 Pods per tree', '1', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 132, '2-3', '3-5', '5-10', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 133, '1-5', '1', '4-5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 134, '1-5', '1-3', '5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 135, '1-3', '.3-.6', '5-8', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 136, '3-5', '5-8', '10-15', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 137, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 138, '2-3', '5.1', '5-10', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 139, '3', '1', '6-10', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 140, '1-3', '1', '3-5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 141, '', '10 kg', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 142, '1-10', '1-5', '10', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 143, '1-2', '1', '4', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 144, '', '', '2', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 145, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 146, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 147, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 148, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 149, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 150, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 151, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 152, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 153, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 154, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 155, '3', '1', '3', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 156, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 157, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 158, '1-3', '0.3-0.4', '0.5-1', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 159, '1-3', '0.3-0.4', '0.5-1', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 160, '', '', '77', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 161, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 162, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 163, '3-5', '0.2-0.3', '5-8', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 164, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 165, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 166, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 167, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 168, '', '', '', 'Manual', '', '', '', '', '', '', '', ''),
(137, 169, '1 sack', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 170, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 171, '10', '0.2-0.3', '2', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 172, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 173, '1-2', '1 below', '2', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 174, '1-3', '0.3-0.4', '3-5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 175, '', '', '5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 176, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 177, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 178, '100', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 179, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 180, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 181, '150', '', '', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 182, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 183, '3-5', '0.3 - 0.5', '5-10', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 184, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 185, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 186, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 190, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 191, '1/2 small sack', '', '8', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 192, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 193, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 194, '', '', '6', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 225, '1-3', '1 below', '4', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 228, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 229, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 230, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 231, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 242, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 243, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 244, '5', '1', '10', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 245, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 246, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 251, '1-2', '5', '5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 252, '', '', '1-2', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 253, '', '', '5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 254, '', '', '2', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 255, '1-3', '1 below', '5', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 256, '1-2', '5', '2', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 257, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 258, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 259, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 260, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 261, '1-3', '1', '6', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 262, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 263, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 264, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 265, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 266, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 267, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 268, '5', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 269, '', '', '', 'None', 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 270, '', '', '11', 'Manual', 'Manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 451, '', '', '2', 'Manual', 'Pod Breaking,Bean Processing,Bean Sorting/Grading,', 'Manual', 'Manual', 'Manual', 'Manual', 'Manual', 'Mechanical', ''),
(191, 610, '', '6', '6', 'Manual', 'Pod Breaking,Bean Processing,Bean Sorting/Grading,', 'Manual', 'Manual', 'Manual', 'Manual', 'Manual', 'Mechanical', 'Composting'),
(192, 611, '', '', '6', 'Manual', 'Pod Breaking,Bean Processing,Bean Sorting/Grading,', 'Manual', 'Manual', 'Manual', 'Manual', 'Manual', 'Mechanical', 'Composting'),
(193, 618, '', '', '18', 'Manual', 'Pod Breaking,Bean Processing,Bean Sorting/Grading,', 'Manual', 'Manual', 'Manual', 'Manual', 'Manual', 'Mechanical', 'Composting'),
(194, 619, '200', '', '', 'Manual', 'Pod Breaking,Bean Processing,Bean Sorting/Grading,', 'Manual', 'Manual', 'Manual', 'Manual', 'Manual', 'Mechanical', 'Composting'),
(195, 706, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(196, 707, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(197, 708, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(198, 709, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(199, 710, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(200, 711, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(201, 712, '500', '30', '30', 'Manual', 'Pod Breaking,Bean Sorting/Grading,Bean Roasting,Wi', 'Manual', '', 'Manual', 'Manual', 'Manual', 'Mechanical', 'Composting'),
(202, 713, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(203, 714, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(204, 715, '', '', '25', 'Manual', 'Pod Breaking,Bean Processing,Bean Sorting/Grading,', 'Manual', 'Manual', 'Manual', 'Manual', 'Manual', 'Mechanical', 'Composting'),
(205, 716, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(206, 717, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(207, 718, '', '', '5', 'Manual', 'Pod Breaking,Bean Processing,Bean Sorting/Grading,', 'Manual', 'Manual', 'Manual', 'Manual', 'Manual', 'Mechanical', 'Composting'),
(208, 719, '', '', '', 'None', NULL, '', '', '', '', '', '', ''),
(209, 720, '', '', '20', 'Manual', 'Pod Breaking,Bean Processing,Bean Sorting/Grading,', 'Manual', 'Manual', 'Manual', 'Manual', 'Manual', 'Mechanical', 'Composting'),
(210, 721, '', '', '', 'None', NULL, '', '', '', '', '', '', '');

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
  `practice_pruning` varchar(3) NOT NULL,
  `practice_pruning_yes` varchar(100) DEFAULT NULL,
  `da_training` varchar(3) NOT NULL,
  `da_training_yes` varchar(100) DEFAULT NULL,
  `da_share_technology` varchar(3) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respondents_production_management`
--

INSERT INTO `respondents_production_management` (`production_id`, `respondent_id`, `climate_factor_rainfall`, `climate_factor_temperature`, `climate_factor_elevation`, `climate_factor_slope`, `edaphic_factors_soil_type`, `edaphic_factors_soil_depth`, `edaphic_factors_soil_texture`, `edaphic_factors_soil_structure`, `cropping_system`, `cropping_system_others`, `associated_crops`, `associated_crops_peanut`, `associated_crops_vegetables`, `associated_crops_root_crops`, `associated_crops_trees`, `associated_crops_fruit_crops`, `associated_crops_others`, `fertilizer_applied`, `if_organic`, `if_inorganic`, `fertilizer_application_frequency`, `practice_pruning`, `practice_pruning_yes`, `da_training`, `da_training_yes`, `da_share_technology`, `latitude`, `longitude`) VALUES
(1, 1, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', 'mango', '', '', '', 'None', '0', '', '0', '', '0', '', ''),
(2, 2, '', '', '', '', '', '', '', '', 'on,Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(3, 4, '', '9° 39\'59\" N 124° 76\" E High', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Corn,mahugany,caimito, dragon fruits', '', '', '', 'mahugany', 'caimito, dragon fruits', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(4, 5, '', '9° 43\'28\"N 124°6\'42 E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(5, 6, '', '9° 45\'7\"N 124°7\'1\" E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(6, 7, '', '9° 41\'53\"N 124° 10\'29\"E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,gemilina, mahugany,marang, mangga', '', '', '', 'gemilina, mahugany', 'marang, mangga', '', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(7, 8, '', '9° 42\'9\"N 12y° 10\'43\"E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,carnaba,tabacco', '', '', '', '', 'carnaba', 'tabacco', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(8, 9, '', '9° 41\'58\"N 124°10\'27\"E', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(9, 10, '', '', '9° 41\'54\"N 12Y°10\'22\"E', '', '', '', '', '', 'on', '', '', '', '', '', '', '', '', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(10, 11, '', '', '9° 41\'59N 124° 10\'28\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(11, 12, '', '', '9° 41\'55\"N, 124°10\'24\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Boongon', '', '', '', '', 'Boongon', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(12, 13, '', '', '9° 42\'1\"N, 124°10\'38\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Vegestable, specify\r\n                              ,Camote,Tambis', '', '', 'Camote', '', 'Tambis', '', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(13, 14, '', '', '9°42\'10\"N 124°10\'35\"E', '9°42\'11\"N 124°10\'35 E', '', '', '', '', 'Inter-cropping', '', 'papaya,mahugany,marang, nangka', '', 'papaya', '', 'mahugany', 'marang, nangka', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(14, 15, '', '', '9041\'59\"N, 124°10\'21\"E', '', '', '', '', '', 'Inter-cropping', '', 'Banana,Camote', '', '', 'Camote', '', '', '', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(15, 16, '', '', '9° 41\'58\"N 124°10\'28\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(16, 18, '', '', '9°41\'58\"N, 124°10\'21\"E', '', '', '', '', '', 'Inter-cropping', '', 'Corn,Watermelon', '', '', '', '', '', 'Watermelon', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(17, 19, '', '', '4°42\'2\"N, 124°10\'38\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Manga, Lemon', '', '', '', '', 'Manga, Lemon', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(18, 21, '', '', '', '', '', '', '', '', 'Monocropping', '', '', '', '', '', '', '', '', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(19, 23, '', '', '9°42\'2\"N 124°10\'41\'E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Mahugany', '', '', '', 'Mahugany', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(20, 24, '', '', '9°42\'2\"N 124°10\'26E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Caimito', '', '', '', '', 'Caimito', '', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(21, 25, '', '', '9°42\'0\"N 124°10\'3Y\"E', '', '', '', '', '', 'Inter-cropping', '', 'Corn,Mahugany', '', '', '', 'Mahugany', '', '', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(22, 26, '', '', '', '', '', '', '', '', 'Monocropping,Inter-croppi', '', 'Coconut,Banana,Trees, specify \r\n                              ,Fruit crops, specify \r\n              ', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(23, 27, '', '', '9°43\'54\"N, 124°6\'42\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Camote', '', '', 'Camote', '', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(24, 28, '', '', '9°41\'58\"N, 124°10\'28\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(25, 29, '', '', '9°52\'27\"N 124°11\'36\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(26, 30, '', '', '9°54\'10\"N/124°9\'5\"E 259 msl', '', '', '', '', '', '', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(27, 31, '', '', '9°50\'39\"N/124°11\'43\"E 235msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(28, 32, '', '', '9°50\'34\"N / 124°11\'43\"E 235msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', 'DA', '0', 'Yearly', '0', '', ''),
(29, 33, '', '', '9°47\'52\"N / 124° 13\'46\"E 304mls', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Tambis', '', '', '', 'Tambis', '', '', '1', NULL, NULL, '0', '0', 'private assistance', '0', 'once a year', '0', '', ''),
(30, 34, '', '', '9°46\'51\"N / 124°13\'28\"E 337msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Tambis,Avocado', '', '', '', 'Tambis', 'Avocado', '', '1', NULL, NULL, '0', '0', 'DA', '0', 'Quarterly', '0', '', ''),
(31, 35, '', '', '9°49\'30\"N / 124°11\'39\"E 251msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Mahugany,Papaya', '', '', '', 'Mahugany', 'Papaya', '', '1', NULL, NULL, '0', '0', 'DA', '0', 'Yearly', '0', '', ''),
(32, 36, '', '', '9°47\'59\"N / 124°14\'27\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Avocado, Nangka, Guyabano', '', '', '', '', 'Avocado, Nangka, Guyabano', '', '1', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(33, 37, '', '', '9°47\'1\"N / 124°13\'24\"E 327msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Acacia, Mahugany,Papaya', '', '', '', 'Acacia, Mahugany', 'Papaya', '', '1', NULL, NULL, '0', '0', 'DA', '0', 'once a year', '0', '', ''),
(34, 38, '', '', '9° 47\'54\"N - 124°11\'10\"E 6msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Papaya', '', '', '', '', 'Papaya', '', '1', NULL, NULL, '0', '0', 'private assistance', '0', 'Frequent', '0', '', ''),
(35, 39, '', '', '9°53\'24\"N, 124°11\'41\"E 355msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana,Madre Cacao, Mahugany', '', '', '', 'Madre Cacao, Mahugany', '', '', '1', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(36, 40, '', '', '9°47\'4\"N, 124°14\'13\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Coffee,Lanzonez, Nangka', '', '', '', '', '', 'Lanzonez, Nangka', '1', NULL, NULL, '0', '0', 'own', '0', '', '0', '', ''),
(37, 41, '', '', '431 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', '', '', '', 'None', '0', '', '0', '', '0', '9º47\'14\"N', '124º11\'11\"E'),
(38, 42, '', '', '9°54\'24\"N, 124°8\'52\"E 308msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Nangka, Avocado,Boongon, Guyabano', '', '', '', 'Nangka, Avocado', '', 'Boongon, Guyabano', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(39, 43, '', '', '9°50m22sN 124°13m 25s E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Guava / Bayabas', '', '', '', '', '', 'Guava / Bayabas', '0', NULL, NULL, '0', '0', 'private assistance', '0', 'once a year', '0', '', ''),
(40, 44, '', '', '9°49\'16\"N 124°15\'4\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Caimito', '', '', '', 'Caimito', '', '', '0', NULL, NULL, '0', '0', 'DA', '0', 'twice a year', '0', '', ''),
(41, 45, '', '', '9°50\'44\"N 124°13\'12\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '0', NULL, NULL, '0', '0', 'private assistance', '0', 'once a year', '0', '', ''),
(42, 46, '', '', '9°47\'4\"N 124°12\'52\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '1', NULL, NULL, '0', '0', 'private assistance, DA', '0', '', '0', '', ''),
(43, 47, '', '', '9°49\'1\"N 124°12\'23\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Rambutan, Durian', '', '', '', '', '', 'Rambutan, Durian', '1', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(44, 48, '2', '', '9°8456°N, 124.2412°E', '', '', '', '', '', 'Inter-cropping', '', 'Banana,Gabi, Luya', '', '', 'Gabi, Luya', '', '', '', '0', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(45, 49, '', '', '9.83005°N, 124.21948°E', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', '', '', '', '0', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(46, 50, '', '', '9.80058°N, 124.22041°E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Mangga, Rambotan,Nangka', '', '', '', 'Mangga, Rambotan', '', 'Nangka', '0', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(47, 51, '', '', '9°49\'13\"N, 124°10\'25\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Rambutan', '', '', '', '', 'Rambutan', '', '1', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(48, 52, '', '', '9°48\'53\"N, 124°12\'30\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Mahugany', '', '', '', 'Mahugany', '', '', '0', NULL, NULL, '0', '0', 'DA', '0', '', '0', '', ''),
(49, 53, '', '', '9°50\'52\"N, 124°14\"41\"E', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Mahugany, Gemelina', '', '', '', 'Mahugany, Gemelina', '', '', '1', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(50, 54, '', '', 'Taas: 9°50\'19\"N, 124°13\'0\"E Ubos: 9°50\'18\"N, 124°1', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Rambutan', '', '', '', '', 'Rambutan', '', '0', NULL, NULL, '0', '0', 'private assistance', '0', '', '0', '', ''),
(51, 55, '', '', 'Ubos: 9°50\'40\"N, 124°13\'15\"E Taas: 9°50\'39\"N, 124°', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', NULL, NULL, 'None', '0', 'private assistance', '0', '', '0', '', ''),
(52, 57, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Banana,Tambis', '', '', '', 'Tambis', '', '', '0', NULL, NULL, '0', '0', '', '0', '', '0', '', ''),
(53, 59, '', '', '106 msl', '', '', '', '', '', '', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', 'Private Assistance', '0', '', '0', '9º39\'23\"N', '124º21\'16\"E'),
(54, 60, '', '', '76msi', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Bananag', '', '', '', '', '', '', '', '', '', NULL, '0', 'Private assistance', '0', '', '0', '9º53\'32\"N', '123º56\'28\"E'),
(55, 61, '', '', '80msi', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Cofee', '', '', '', '', '', '', '', '', '', 'None', '0', 'Private assistance', '0', '', '0', '9º53\'35\"N', '123º56\'23\"E'),
(56, 62, '', '', '25msi', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', '', '0', '', '0', '9º53\'32\"N', '124º55\'57\"E'),
(57, 63, '', '', '250msi', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', 'Private assistance', '0', '', '0', '9º53\'15\"N', '123º56\'49\"E'),
(58, 64, '', '', '279', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', 'Pechay', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º53\'5\"N', '123º56\'0\"E'),
(59, 65, '', '', '245msi', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º53\'13\"N', '123º55\'58\"E'),
(60, 66, '', '', '149msi', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/complete/putas', 'every 3 months', '0', 'Private assistance', '0', '', '0', '9º53\'35\"N', '123º56\'7\"E'),
(61, 67, '', '', '73msi', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', '', '', '', 'None', '0', 'Private assistance', '0', '', '0', '9º53\'50\"N', '123º56\'13\"E'),
(62, 68, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', 'Magogany', 'Mangga, Santol', '', 'Organic', 'Tae Baka, Dagami', '', 'every 6 months', '0', '', '0', '', '0', '9º54\'18\"N', '123º54\'26\"E'),
(63, 69, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'urea, 14-14, Potash', 'yearly application', '0', 'Private Assistance', '0', '', '0', '9º52\'56\"N', '123º53\'6\"E'),
(64, 70, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic,Inorganic fertilizer', 'Animal Manure', '14-14-14 Complete, 14-46 Comercial', 'None', '0', '', '0', 'Kenemer', '0', '9.77815ºN', '124.23391ºE'),
(65, 71, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Gemilina, Mangga', '', '', '', '', '', 'None', '0', '', '0', '', '0', '9º58\'0\"N', '124º1930\"E'),
(66, 72, '', '', '86 msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', 'Lemonsito', '', '', 'Organic', 'Latang Dagami', '', 'every 6 months', '0', '', '0', '', '0', '10º0\'22\"N', '124º20\'18\"E'),
(67, 73, '', '', '225 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', 'Gemilina', '', '', 'Inorganic fertilizer', '', 'ATLAS', 'yearly application', '0', '', '0', '', '0', '9º58\'40\"N', '124º16\'48\"E'),
(68, 74, '', '151 msl', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete Fertilizer', 'yearly application', '0', '', '0', '', '0', '9º56\'51\"N', '124º19\'5\"E'),
(69, 75, '', '', '172 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º56\'52\"N', '124º19\'22\"E'),
(70, 76, '', '', '196 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Composting', '', 'every 6 months', '0', '', '0', '', '0', '9º56\'12\"N', '124º20\'26\"E'),
(71, 77, '', '', '90 m', '', '', '', '', '', 'Monocropping', '', '', '', '', '', '', '', '', 'Organic', 'Dagami', '', 'every 6 months', '0', '', '0', '', '0', '9º58\'42\"N', '124º21\'6\"E'),
(72, 78, '', '', '219 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Cofee', '', '', '', '', '', '', '', '', '', 'None', '0', '', '0', '', '0', '9º58\'41\"N', '124º16\'47\"E'),
(73, 79, '', '', '249 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Mangga', '', '', 'Inorganic fertilizer', '', 'ATLAS', 'yearly application', '0', 'Private Assistance', '0', '', '0', '9º58\'46\"N', '124º16\'27\"E'),
(74, 80, '', '', '206 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Dagami', '', 'every 6 months', '0', 'Department of Agriculture', '0', 'Twice a Year', '0', '9º55\'45\"N', '124º19\'39\"E'),
(75, 81, '', '', '114 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Mangga', '', '', 'Organic', 'Animal Manure', '', 'yearly application', '0', 'Department of Agriculture', '0', 'Twice a Year', '0', '9º59\'40\"N', '124º19\'27\"E'),
(76, 82, '', '', '97msi', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Mangga', '', '', 'Organic', 'Tae kanding / Uhot', '', 'yearly application', '0', 'D.A', '0', 'Twice a Year', '0', '10º0\'11\"N', '124º19\'51\"E'),
(77, 83, '', '', '185msi', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', 'D.A', '0', '', '0', '9º59\'31\"N', '124º16\'49\"E'),
(78, 84, '', '', '193msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', 'Mangga', '', '', 'Inorganic fertilizer', '', 'complete', 'every 3 months', '0', 'Private assistance', '0', '', '0', '9º57\'38\"N', '124º19\'39\"E'),
(79, 85, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Gemilina', '', '', '', '', '', 'None', '0', '', '0', '', '0', '9º43\'43\"N', '124º21\'18\"E'),
(80, 86, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', 'Lansones', '', '', 'Inorganic fertilizer', '', '14-14', 'yearly application', '0', 'PCA', '0', 'Yearly', '0', '9º41\'48\"N', '124º21\'20\"E'),
(81, 87, '', '', '299 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic,Inorganic fertilizer', 'Vermi', 'Atlas, VREA, Photas', 'every 6 months', '0', 'PCA', '0', 'Yearly', '0', '9º41\'42\"N', '124º21\'15\"E'),
(82, 88, '', '', '318 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14, Complete Fertilizer', 'yearly application', '0', 'PCA', '0', 'Yearly', '0', '9º41\'48\"N', '124º21\'23\"E'),
(83, 89, '', '', '318 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'urea, 14-14', 'yearly application', '0', 'DA', '0', 'Yearly', '0', '9º41\'31\"N', '124º20\'54\"E'),
(84, 90, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Gemilina, Mahogany', '', '', 'Inorganic fertilizer', '', 'Urea, 14-14', 'None', '0', '', '0', 'Yearly', '0', '9º41\'27\"N', '124º21\'2\"E'),
(85, 91, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', 'Taro', '', '', '', 'Organic,Inorganic fertilizer', 'Vermi', 'Urea, 14-14', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º41\'45\"N', '124º20\'55\"E'),
(86, 92, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic,Inorganic fertilizer', 'Vermi', 'Urea, 14-14', 'every 6 months', '0', 'Private Assistance', '0', 'Yearly', '0', '9º41\'35\"N', '124º20\'48\"E'),
(87, 93, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Tambis', '', '', 'Organic,Inorganic fertilizer', 'Animal Manure', 'Complete, 14-14', 'yearly application', '0', 'Private Assistance', '0', 'Every 4 months', '0', '9º41\'47\"N', '124º21\'22\"E'),
(88, 94, '', '', '298 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete, 14-14', 'yearly application', '0', 'DA', '0', 'Every 4 months', '0', '9º41\'42\"N', '124º21\'15\"E'),
(89, 95, '', '', '266 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete, 14-14', 'yearly application', '0', 'Private Assistance', '0', 'Every 4 months', '0', '9º41\'49\"N', '124º21\'1\"E'),
(90, 96, '', '', '250 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Potas', '', 'every 6 months', '0', 'DA, Private', '0', 'Every 3 months', '0', '9º41\'46\"N', '124º21\'29\"E'),
(91, 97, '', '', '242 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14x14x14', 'every 6 months', '0', 'DA', '0', 'Every 4 months', '0', '9º41\'33\"N', '124º21\'27\"E'),
(92, 98, '', '', '253 msl', '', '', '', '', '', '', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Potas', '', 'every 6 months', '0', 'DA', '0', 'Every 3 months', '0', '9º41\'40\"N', '124º21\'29\"E'),
(93, 99, '', '', '258 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', 'Private Assistance', '0', 'Every 4 months', '0', '9º41\'41\"N', '124º21\'1\"E'),
(94, 100, '', '', '335 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Nangka', '', '', 'Inorganic fertilizer', '', '14, Potas', 'yearly application', '0', 'Private Assistance', '0', 'Every 4 months', '0', '9º41\'50\"N', '124º21\'19\"E'),
(95, 101, '', '', '322 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', 'Private Assistance', '0', 'Every 4 months', '0', '9º41\'37\"N', '124º21\'19\"E'),
(96, 102, '', '', '328 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', 'Private Assistance', '0', 'Every 4 months', '0', '9º41\'51\"N', '124º21\'16\"E'),
(97, 103, '', '', '307 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', 'DA', '0', 'Every 4 months', '0', '9º41\'34\"N', '124º21\'9\"E'),
(98, 104, '', '', '306 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º41\'48\"N', '124º21\'16\"E'),
(99, 105, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Vermi', '', 'yearly application', '0', '', '0', '', '0', '', ''),
(100, 106, '', '', '395 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', 'Avocado', '', '', 'Inorganic fertilizer', '', 'Futas, Urea, Philposh', 'yearly application', '0', '', '0', '', '0', '9º42\'56\"N', '124º21\'29\"E'),
(101, 107, '', '', '397 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea', 'yearly application', '0', '', '0', 'Yearly', '0', '9º42\'57\"N', '124º21\'30\"E'),
(102, 108, '', '', '467 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Molave, Mahogany', '', '', 'Inorganic fertilizer', '', 'Atlas, 14-14-14, Futas, Philphose', 'every 6 months', '0', 'DA', '0', '', '0', '9º42\'45\"N', '124º21\'7\"E'),
(103, 109, '', '', '129 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', 'Gabi', '', '', '', '', '', '', 'None', '0', 'DA', '0', 'Every 4 months', '0', '9º39\'23\"N', '124º21\'16\"E'),
(104, 110, '', '', '540 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14, Humus Plus', 'every 3 months', '0', 'Private Assistance (Internet)', '0', '', '0', '9º43\'46\"N', '124º18\'9\"E'),
(105, 111, '', '', '721 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Ipil-Ipil, Mahogany', 'Papaya', '', '', '', '', 'None', '0', 'Private Assistance', '0', 'Yearly', '0', '9º44\'16\"N', '124º20\'4\"E'),
(106, 112, '', '', '328 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Vemane', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º41\'41\"N', '124º21\'4\"E'),
(107, 113, '', '', '258 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Rambutan, Nangka', '', 'Lansones, Boongon', 'Inorganic fertilizer', '', '14-14-14', 'every 6 months', '0', 'DA', '0', 'Every 4 months', '0', '9º41\'46\"N', '124º21\'16\"E'),
(108, 114, '', '', '316 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic,Inorganic fertilizer', 'Verme', '14-14-14', 'yearly application', '0', 'DA', '0', '', '0', '9º41\'46\"N', '124º21\'19\"E'),
(109, 115, '', '', '312 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Cofee,Corn', '', '', 'Gabi, Camote', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º41\'24\"N', '124º21\'18\"E'),
(110, 116, '', '', '324 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º41\'42\"N', '124º21\'17\"E'),
(111, 117, '', '', '146 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Bananag', '', '', '', '', '', '', '', '', '', 'None', '0', '', '0', '', '0', '9º39\'22\"N', '124º21\'18\"E'),
(112, 118, '', '', '543 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Animal Manure', '', 'every 6 months', '0', 'DA', '0', 'Once a Year', '0', '9º43\'37\"N', '124º21\'4\"E'),
(113, 119, '', '', '535 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', 'Yearly', '0', '9º43\'45\"N', '124º21\'0\"E'),
(114, 120, '', '', '473 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', 'Gabi', '', '', '', '', '', '', 'None', '0', 'DA', '0', 'Once a Year', '0', '9º43\'41\"N', '124º21\'15\"E'),
(115, 121, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Forgot the Name', '', 'every 6 months', '0', 'Private Assistance', '0', 'Once a Year', '0', '9º42\'44\"N', '124º21\'7\"E'),
(116, 122, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Abuno', 'every 6 months', '0', 'DA', '0', 'Twice a Year', '0', '', ''),
(117, 123, '', '', '644 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', 'gabi', '', '', '', '', '', '', 'None', '0', 'DA', '0', 'Twice a Month', '0', '9º44\'21\"N', '124º20\'30\"E'),
(118, 124, '', '', '460 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Hinubigan', '', 'yearly application', '0', 'Private Assistance', '0', '', '0', '9º43\'21\"N', '124º17\'48\"E'),
(119, 125, '', '', '511 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Mahogany', 'Lansones', '', 'Organic', 'Composting', '', 'yearly application', '0', '', '0', '', '0', '9º43\'42\"N', '124º21\'4\"E'),
(120, 126, '', '', '545 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', 'Taro', 'Mahogany', '', '', '', '', '', 'None', '0', '', '0', '', '0', '9º43\'36\"N', '124º21\'5\"E'),
(121, 127, '', '', '326 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Mahogany, Yemane', '', '', 'Organic', 'Composting', '', 'every 6 months', '0', 'Private Assistance', '0', 'since 1982 (yearly)', '0', '9º42\'23\"N', '124º21\'39\"E'),
(122, 128, '', '', '479 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Karnaba, Rambotan, Durian', '', 'Inorganic fertilizer', '', 'Urea', 'yearly application', '0', '', '0', '', '0', '9º43\'16\"N', '124º17\'36\"E'),
(123, 129, '', '', '535 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Yemane, Ipil-ipil, Tugas', '', '', 'Organic', 'Composting', '', 'yearly application', '0', '', '0', '', '0', '9º44\'2\"N', '124º21\'3\"E'),
(124, 130, '', '', '525 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Chicken dung', '', 'yearly application', '0', '', '0', '', '0', '9º43\'37\"N', '124º21\'10\"E'),
(125, 131, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Rambutan and Durian', '', 'Organic', 'Chicken dung', '', 'every 6 months', '0', 'Private Assistance', '0', 'Yearly', '0', '9º48\'28\"N', '124º12\'39\"E'),
(126, 132, '', '', '309 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', 'Marang', '', 'Inorganic fertilizer', '', 'Complete, Commercial', 'every 6 months', '0', '', '0', '', '0', '9º51\'24\"N', '124º8\'39\"E'),
(127, 133, '', '', '370 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Kaimeto', '', 'Inorganic fertilizer', '', 'Atlas', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º46\'4\"N', '124º13\'29\"E'),
(128, 134, '', '', '191 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Gemilina', '', '', 'Inorganic fertilizer', '', '14-14, Putos', 'yearly application', '0', 'Kennemer', '0', 'Yearly', '0', '9º51\'24\"N', '124º16\'9\"E'),
(129, 135, '', '', '270 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-46 Commercial / 14-14-14 Complete Fertilizer', 'yearly application', '0', '', '0', '', '0', '9º49\'53\"N', '164º13\'39\"E'),
(130, 136, '', '', '308 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete, 14-14-14', 'yearly application', '0', '', '0', '', '0', '9º51\'12\"N', '124º8\'29\"E'),
(131, 137, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Mangga', 'Kamunggay', 'Organic', 'Vermi / Potasium', '', 'yearly application', '0', 'Private Assistance', '0', '', '0', '9º49\'23\"N', '124º11\'23\"E'),
(132, 138, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Mangga, Dragon Fruit', '', 'Organic', 'Vermi', '', 'yearly application', '0', '', '0', '', '0', '', ''),
(133, 139, '', '', '278 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Yara', 'yearly application', '0', 'Kennemer', '0', '', '0', '', ''),
(134, 140, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '16-20 / 2-Fert', 'yearly application', '0', 'Kennemer', '0', '', '0', '', ''),
(135, 141, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Growmore', 'Monthly', '0', 'DA', '0', '', '0', '', ''),
(136, 142, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Molave and Madre de cacao', '', '', 'Organic,Inorganic fertilizer', 'Vermi', 'Atlas', 'yearly application', '0', 'Private Assistance', '0', '', '0', '9º47\'28\"N', '124º48\'20\"E'),
(137, 143, '', '', '354 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', 'Private Assistance', '0', '', '0', '9º52\'21\"N', '124º4\'37\"E'),
(138, 144, '', '', '326 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'ATLAS, UREA', 'every 6 months', '0', '', '0', '', '0', '9º53\'59\"N', '9º4\'16\"E'),
(139, 145, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(140, 146, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(141, 147, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(142, 148, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(143, 149, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(144, 150, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(145, 151, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(146, 152, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(147, 153, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(148, 154, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(149, 155, '', '', '282 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea/Yamara', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º50\'47\"N', '124º9\'49\"E'),
(150, 156, '', '', '306 msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea, Philpus', 'every 6 months', '0', '', '0', '', '0', '9º56\'5\"N', '9º7\'10\"E'),
(151, 157, '', '', '287 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Animal Manure (Baboy)', '', 'yearly application', '0', '', '0', '', '0', '9º54\'34\"N', '9º3\'44\"E'),
(152, 158, '', '', '278 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Composting, Rice Hall', '', 'yearly application', '0', '', '0', '', '0', '9º57\'5\"N', '9º6\'55\"E'),
(153, 159, '', '', '278 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Composting, Rice Hall', '', 'yearly application', '0', '', '0', '', '0', '9º57\'5\"N', '9º6\'55\"E'),
(154, 160, '', '', '280 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Bermicast', '', 'every 9 months', '0', 'Private Assistance', '0', '5 times a year', '0', '9º48\'22\"N', '124º16\'7\"E'),
(155, 161, '', '', '259 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'urea/Atlas', 'every 6 months', '0', '', '0', '', '0', '9º48\'30\"N', '124º16\'49\"E'),
(156, 162, '', '', '367 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º46\'16\"N', '124º15\'42\"E'),
(157, 163, '', '', '310 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', 'Organic', 'Composting', '', 'yearly application', '0', '', '0', '', '0', '9º55\'17\"N', '9º7\'12\"E'),
(158, 164, '', '', '80 msl', '', '', '', '', '', 'Inter-cropping', '', '', '', '', '', 'Gemilina', 'Mangga', '', 'Organic', 'Dagaming Lata', '', 'yearly application', '0', '', '0', '', '0', '10º1\'18\"N', '124º22\'33\"E'),
(159, 165, '', '', '310 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete', 'yearly application', '0', '', '0', '', '0', '9º56\'13\"N', '9º5\'40\"E'),
(160, 166, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Rice Hull / Animal Manure', '', 'yearly application', '0', 'Department of Agriculture', '0', '4 Times a Year', '0', '', ''),
(161, 167, '', '', '480 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Avocado and Lanzones', '', '', '', '', 'None', '0', 'Private Assistance', '0', '', '0', '9º46\'34\"N', '124º18\'2\"E'),
(162, 168, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', 'No', '', 'No', 'Monthly', 'No', '', ''),
(163, 169, '', '', '143 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Ipil-Ipil', '', '', '', '', '', 'None', '0', 'Private Assistance', '0', '', '0', '9º53\'16\"N', '123º56\'16\"E'),
(164, 170, '', '', '103 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', 'Mangga', '', 'Organic', 'Dagaming Lata', '', 'yearly application', '0', 'Department of Agriculture', '0', 'Monthly', '0', '9º58\'6\"N', '124º22\'27\"E'),
(165, 171, '', '', '284 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Chicken Dung', '', 'yearly application', '0', 'Private Assistance', '0', '', '0', '9º54\'34\"N', '9º3\'45\"E'),
(166, 172, '', '', '14.6 meter', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete', 'every 6 months', '0', 'Department of Agriculture', '0', '4 Times a Year', '0', '10º0\'43\"N', '124º22\'29\"E'),
(167, 173, '', '', '92 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14, Potash', 'every 6 months', '0', '', '0', 'Yearly', '0', '9º52\'53\"N', '123º53\'4\"E'),
(168, 174, '', '', '306 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete', 'yearly application', '0', '', '0', '', '0', '9º56\'15\"N', '9º5\'36\"E'),
(169, 175, '', '', '89 m', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Gemilina', '', '', 'Organic', 'Vermi', '', 'yearly application', '0', 'Private Assistance', '0', '', '0', '10º0\'47\"N', '124º22\'31\"E'),
(170, 176, '', '', '222 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Molave', '', '', 'Inorganic fertilizer', '', '14-14-14', 'Monthly', '0', '', '0', '', '0', '9º53\'25\"N', '123º55\'53\"E'),
(171, 177, '', '', '201 msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', 'Mahogany', '', '', '', '', '', 'None', '0', 'Private Assistance', '0', '', '0', '9º48\'24\"N', '124º15\'33\"E'),
(172, 178, '', '', '320 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Chicken Dung', '', 'yearly application', '0', 'DA', '0', 'Yearly', '0', '9º55\'19\"N', '9º7\'17\"E'),
(173, 179, '', '', '32 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Mangga', '', 'Organic', 'Dagami', '', 'every 6 months', '0', '', '0', 'Once a Year', '0', '10º0\'30\"N', '124º22\'44\"E'),
(174, 180, '', '', '74 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic,Inorganic fertilizer', 'Composting', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º52\'57\"N', '123º52\'11\"E'),
(175, 181, '', '', '306 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Jackfruit', 'Tambis', 'Organic', 'Chicken Dung', '', 'Monthly', '0', 'Private Assistance', '0', '', '0', '9º53\'46\"N', '9º5\'3\"E'),
(176, 182, '', '', '33.7 meters', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14', 'yearly application', '0', 'Department of Agriculture', '0', '4 Times a Year', '0', '10º1\'15\"N', '124º22\'55\"E'),
(177, 183, '', '', '144 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', 'Organic', 'Composting', '', 'Monthly', '0', '', '0', '', '0', '9º53\'32\"N', '123º56\'0\"N'),
(178, 184, '', '', '300 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Abono', 'yearly application', '0', 'DA', '0', 'Yearly', '0', '9º54\'32\"N', '9º3\'11\"E'),
(179, 185, '', '', '396 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic,Inorganic fertilizer', 'Vermi', 'Complete', 'every 6 months', '0', '', '0', '', '0', '9º45\'56\"N', '124º17\'53\"E'),
(180, 186, '', '', '32.9 meters', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea, Complete', 'every 3 months', '0', 'Department of Agriculture', '0', 'Twice a Year', '0', '10º0\'40\"N', '124º22\'31\"E'),
(181, 190, '', '', '89 msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '16-20', 'yearly application', '0', 'Department of Agriculture', '0', '4 Times a Year', '0', '10º0\'42\"N', '124º22\'38\"E'),
(182, 191, '', '', '66 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana,Cofee', '', '', '', '', '', '', 'Organic', 'Goat and Chicken Dung', '', 'yearly application', '0', 'Private Assistance', '0', '', '0', '9º53\'52\"N', '123º56\'16\"E'),
(183, 192, '', '', '272 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', '0', '', '0', '', '0', '9º53\'10\"N', '123º56\'2\"E'),
(184, 193, '', '', '109 msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', '', '', '', '', '', '', 'None', '0', 'Department of Agriculture', '0', 'Monthly', '0', '9º58\'2\"N', '124º22\'4\"E'),
(185, 194, '', '', '250 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Gemilina', '', '', 'Organic', 'Guwano', '', 'every 3 months', '0', 'D.A', '0', 'Twice a Year', '0', '9º48\'30\"N', '124º16\'31\"E'),
(186, 225, '', '', '208 msl', '', '', '', '', '', '', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', 'Private Assistance', '0', '', '0', '9º53\'26\"N', '123º56\'1\"E'),
(187, 228, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Latang Dagami', '', 'yearly application', '0', '', '0', '', '0', '', ''),
(188, 229, '', '', '94 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete', 'every 6 months', '0', '', '0', '', '0', '9º58\'50\"N', '124º21\'18\"E'),
(189, 230, '', '', '210 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14, Sulphite', 'yearly application', '0', '', '0', '', '0', '9º53\'25\"N', '123º56\'0\"E'),
(190, 231, '', '', '286 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', 'DA', '0', 'Yearly', '0', '9º54\'2\"N', '9º7\'25\"E'),
(191, 242, '', '', '264 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'complete', 'Monthly', '0', '', '0', '', '0', '9º48\'42\"N', '124º16\'37\"E'),
(192, 243, '', '', '207m', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete', 'Monthly', '0', 'Department of Agriculture', '0', '', '0', '9º59\'8\"N', '124º17\'0\"E'),
(193, 244, '', '', '329 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Vermi', '', 'yearly application', '0', 'Private Assistance', '0', '', '0', '9º55\'6\"N', '9º7\'13\"E'),
(194, 245, '', '', '78 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea, Potas', 'yearly application', '0', 'Private Assistance', '0', '', '0', '9º53\'13\"N', '123º53\'0\"E'),
(195, 246, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete', 'yearly application', '0', '', '0', '', '0', '', ''),
(196, 251, '', '', '77 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', '', '', '', 'None', '0', 'DA', '0', 'Every 3 months', '0', '9º52\'13\"N', '123º51\'39\"E'),
(197, 252, '', '', '334 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14, ATLAS, Urea', 'every 6 months', '0', 'Private Assistance', '0', 'Yearly', '0', '9º52\'45\"N', '9º4\'50\"E'),
(198, 253, '', '', '99 msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', '', 'Nangka', '', '', '', '', 'None', '0', 'Private Assistance', '0', '', '0', '9º59\'52\"N', '124º20\'35\"E'),
(199, 254, '', '', '114 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Mangga', '', 'Organic', 'Animal Manure', '', 'yearly application', '0', 'Department of Agriculture', '0', 'Twice a Year', '0', '9º59\'40\"N', '124º19\'27\"E'),
(200, 255, '', '', '78 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', 'Mahogany', 'Manga, Santol', '', 'Organic', 'Tae Baka, Dagami', '', 'every 6 months', '0', '', '0', '', '0', '9º54\'18\"N', '9º54\'26\"E'),
(201, 256, '', '', '84 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14, Potash, Urea', 'yearly application', '0', 'Private Assistance', '0', 'semi-annual', '0', '9º52\'56\"N', '123º53\'6\"E'),
(202, 257, '', '', '142 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Ipil-ipil', '', '', 'Organic', 'Tae sa Baboy', '', 'every 6 months', '0', '', '0', '', '0', '9º57\'6\"N', '124º21\'57\"E'),
(203, 258, '', '', '42.8 meters', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'every 6 months', '0', 'Department of Agriculture', '0', '4 Times a Year', '0', '10º0\'27\"N', '124º23\'1\"E'),
(204, 259, '', '', '78 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Mangga', '', 'Inorganic fertilizer', '', '14-14-14', 'every 6 months', '0', '', '0', '', '0', '10º1\'28\"N', '124º22\'41\"E'),
(205, 260, '', '', '90 msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', '', '', '', 'Organic,Inorganic fertilizer', 'Animal Manure', 'Prodiver', 'yearly application', '0', '', '0', '', '0', '10º0\'46\"N', '124º22\'35\"E'),
(206, 261, '', '', '250 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', 'Private Assistance', '0', '', '0', '9º53\'15\"N', '123º56\'49\"E'),
(207, 262, '', '', '543 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', '0', '', '0', '', '0', '9º46\'37\"N', '124º18\'41\"E'),
(208, 263, '', '', '82 msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', '', 'Mangga', '', 'Inorganic fertilizer', '', 'Urea', 'yearly application', '0', '', '0', '', '0', '10º0\'37\"N', '124º22\'20\"E'),
(209, 264, '', '', '84 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Mangga', '', 'Inorganic fertilizer', '', '14-14-14', 'every 6 months', '0', '', '0', '', '0', '10º1\'25\"N', '124º1\'25\"E'),
(210, 265, '', '', '83 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Complete', 'yearly application', '0', '', '0', '', '0', '10º0\'40\"N', '124º0\'40\"E'),
(211, 266, '', '', '89 msl', '', '', '', '', '', 'Inter-cropping', '', 'Banana', '', '', '', 'Tugas', 'Nangka', '', 'Inorganic fertilizer', '', 'Philphus', 'yearly application', '0', '', '0', '', '0', '10º0\'43\"N', '124º22\'28\"E'),
(212, 267, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Mangga', '', 'Organic', 'Animal Manure', '', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '', ''),
(213, 268, '', '', '276 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', 'Bamboo', 'Mangga', '', 'Inorganic fertilizer', '', 'Potas/Urea', 'every 3 months', '0', 'Private Assistance', '0', '', '0', '9º47\'53\"N', '124º16\'29\"E'),
(214, 269, '', '', '309 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Composting Animal Manure', '', 'yearly application', '0', '', '0', '', '0', '9º47\'4\"N', '124º15\'13\"E'),
(215, 270, '', '', '191 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic,Inorganic fertilizer', 'Chicken Dung', 'Abono', 'every 6 months', '0', 'Private Assistance', '0', '', '0', '9º52\'50\"N', '124º15\'56\"E'),
(396, 451, '', '', '320 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Urea, Complete Fertilizer', 'yearly application', 'Yes', 'Private', 'Yes', 'Yearly', 'Yes', '9º41\'50\"N', '9º21\'19\"E'),
(555, 610, '', '', '281 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'NFTS / JADAM Japan', '', 'Others', 'Yes', 'Private', 'No', '', 'No', '9º53\'31\"N', '124º5\'41\"E');
INSERT INTO `respondents_production_management` (`production_id`, `respondent_id`, `climate_factor_rainfall`, `climate_factor_temperature`, `climate_factor_elevation`, `climate_factor_slope`, `edaphic_factors_soil_type`, `edaphic_factors_soil_depth`, `edaphic_factors_soil_texture`, `edaphic_factors_soil_structure`, `cropping_system`, `cropping_system_others`, `associated_crops`, `associated_crops_peanut`, `associated_crops_vegetables`, `associated_crops_root_crops`, `associated_crops_trees`, `associated_crops_fruit_crops`, `associated_crops_others`, `fertilizer_applied`, `if_organic`, `if_inorganic`, `fertilizer_application_frequency`, `practice_pruning`, `practice_pruning_yes`, `da_training`, `da_training_yes`, `da_share_technology`, `latitude`, `longitude`) VALUES
(556, 611, '', '', '247 msl', '', '', '', '', '', '', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'every 6 months', 'Yes', 'Private', 'Yes', 'Yearly', 'Yes', '9º42\'42\"N', '124º21\'45\"E'),
(563, 618, '', '', '339 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', 'Yes', 'DA', 'Yes', 'Twice a year', 'Yes', '9º42\'51\"N', '124º21\'24\"E'),
(564, 619, '', '', '697 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', 'Tubog', '', '', 'Organic', 'Chicken Dung', '', 'every 3 months', 'Yes', 'DA', 'Yes', 'Twice a year', 'Yes', '9º44\'31\"N', '124º20\'29\"E'),
(651, 706, '', '', '270 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', 'No', '', 'No', '', 'No', '9º41\'28\"N', '124º21\'25\"E'),
(652, 707, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'UREA', 'yearly application', 'Yes', 'Private', 'No', '', 'No', '', ''),
(653, 708, '', '', '309 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'complete fertilizer', 'yearly application', 'Yes', 'Private', 'Yes', 'Yearly', 'Yes', '9º41\'43\"N', '124º21\'16\"E'),
(654, 709, '', '', '286 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', '', 'None', 'Yes', 'Private', 'Yes', '3 Times a Year', 'Yes', '9º41\'52\"N', '124º21\'19\"E'),
(655, 710, '', '', '292 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', '', '', 'Complete fertilizer', 'yearly application', 'No', '', 'No', '', 'Yes', '9º41\'39\"N', '124º21\'25\"E'),
(656, 711, '', '', '194 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Pinya', 'Madre Cacao', '', '', '', 'None', 'Yes', 'DA', 'Yes', 'Once a Year', 'Yes', '9º56\'1\"N', '124º20\'20\"N'),
(657, 712, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Papaya', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', 'Yes', 'Private', 'No', '', 'No', '9º50\'19\"N', '124º12\'38\"E'),
(658, 713, '', '', '46.2', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', 'Ite, Tahop', '', 'every 6 months', 'No', '', 'No', '', 'No', '9º58\'53\"N', '124º21\'17\"E'),
(659, 714, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Guavano', 'Tabacco', 'Inorganic fertilizer', '', '14-46', 'every 6 months', 'No', '', 'No', '', 'No', '9º42\'9\"N', '124º10\'43\"E'),
(660, 715, '', '', '267 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Organic', '', '', 'every 3 months', 'Yes', 'DA', 'Yes', 'Yearly', 'Yes', '9º50\'18\"N', '124º15\'13\"E'),
(661, 716, '', '', '', '', '', '', '', '', 'Inter-cropping', '', '', '', '', '', 'Mahogany', '', '', 'Inorganic fertilizer', '', '14-46', 'every 6 months', 'No', '', 'No', '', 'No', '9º42\'0\"N', '124º10\'34\"E'),
(662, 717, '', '', '279 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', 'Yes', 'DA', 'Yes', '3 times', 'Yes', '9º41\'20\"N', '124º21\'30\"E'),
(663, 718, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Bananag', '', '', '', '', '', '', '', '', '', 'None', 'Yes', 'Private', 'No', '', 'No', '', ''),
(664, 719, '', '', '', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', 'Gemilina, Mahogany', 'Marang, Mangga', '', 'Inorganic fertilizer', '', '14-46', 'yearly application', 'No', '', 'No', '', 'No', '9º41\'53\"N', '124º10\'29\"N'),
(665, 720, '', '', '342 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', '', '', 'Inorganic fertilizer', '', 'Banatira (14-5-20)', 'every 6 months', 'Yes', 'Private', 'No', '', 'No', '9º51\'19\"N', '124º9\'54\"E'),
(666, 721, '', '', '289 msl', '', '', '', '', '', 'Inter-cropping', '', 'Coconut,Banana', '', '', '', '', 'Guava', '', 'Inorganic fertilizer', '', '14-14-14', 'yearly application', 'Yes', 'DA', 'Yes', 'Twice a year', 'Yes', '9º47\'54\"N', '124º16\'21\"E');

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
  `position` int(2) NOT NULL,
  `date_last_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`settings_id`, `settings_name`, `settings_value`, `settings_parent`, `is_active`, `position`, `date_last_updated`) VALUES
(1, 'section1', '&lt;section id=&quot;main-slider&quot; class=&quot;no-margin&quot;&gt;\r\n    &lt;div class=&quot;carousel slide&quot;&gt;\r\n      &lt;div class=&quot;carousel-inner&quot;&gt;\r\n        &lt;div class=&quot;item active&quot; style=&quot;background-image: url(\r\n../public/images/cacao.jpg)&quot;&gt;\r\n          &lt;div class=&quot;container&quot;&gt;\r\n            &lt;div class=&quot;row slide-margin&quot;&gt;\r\n              &lt;div class=&quot;col-sm-6&quot;&gt;\r\n                &lt;div class=&quot;carousel-content&quot;&gt;\r\n                  &lt;h3 class=&quot;animation animated-item-1&quot;&gt;CACAO GROWERS DIRECTORY&lt;/h3&gt;\r\n                  &lt;p class=&quot;animation animated-item-2&quot;&gt;Bohol Cacao Industry Information System (BCIIS)&lt;/p&gt;\r\n                  &lt;a class=&quot;btn-slide animation animated-item-3&quot; href=&quot;#&quot;&gt;Read More&lt;/a&gt;\r\n                &lt;/div&gt;\r\n              &lt;/div&gt;\r\n\r\n              &lt;div class=&quot;col-sm-6 hidden-xs animation animated-item-4&quot;&gt;\r\n                &lt;div class=&quot;slider-img&quot;&gt;\r\n                  &lt;img src=&quot;../assets/themes/Company/images/slider/img3.png&quot; class=&quot;img-responsive hidden&quot;&gt;\r\n                &lt;/div&gt;\r\n              &lt;/div&gt;\r\n\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n      &lt;/div&gt;\r\n    &lt;/div&gt;\r\n  &lt;/section&gt;', 'home', 1, 1, '0000-00-00 00:00:00'),
(3, 'section2', '&lt;div class=&quot;feature&quot;&gt;\r\n    &lt;div class=&quot;container&quot;&gt;\r\n      &lt;div class=&quot;text-center&quot;&gt;\r\n&lt;div class=&quot;col-md-4&quot;&gt;\r\n&lt;div class=&quot;hi-icon-wrap hi-icon-effect wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;300ms&quot;&gt;&lt;img src=&quot;../public/images/c-cacao.png&quot; /&gt;\r\n&lt;h2&gt;Criollo&lt;/h2&gt;\r\n&lt;p&gt;Criollo a superior quality characterized by having generally elongated and highly ridged pods.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-md-4&quot;&gt;\r\n&lt;div class=&quot;hi-icon-wrap hi-icon-effect wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;600ms&quot;&gt;&lt;img src=&quot;../public/images/f-cacao.png&quot; /&gt;\r\n&lt;h2&gt;Forastero&lt;/h2&gt;\r\n&lt;p&gt;Forastero is a high yielding cacao where its pods are thick-walled, hard and round which turn yellow when ripe.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-md-4&quot;&gt;\r\n&lt;div class=&quot;hi-icon-wrap hi-icon-effect wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;900ms&quot;&gt;&lt;img src=&quot;../public/images/t-cacao.png&quot; /&gt;\r\n&lt;h2&gt;Trinitario&lt;/h2&gt;\r\n&lt;p&gt;The richest source of genetic variations for the improvement of cacao by hybridization..&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 'home', 1, 2, '0000-00-00 00:00:00'),
(4, 'section3', '  &lt;div class=&quot;about&quot;&gt;\n    &lt;div class=&quot;container&quot;&gt;\n\n&lt;div class=&quot;col-md-6 wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;300ms&quot;&gt;\n        &lt;h2&gt;WHY CACAO?&lt;/h2&gt;\n        &lt;img src=&quot;https://chocolateclass.files.wordpress.com/2017/03/3_main_types_of_cocoa-01_large.jpg&quot; class=&quot;img-responsive&quot;&gt;\n        &lt;p&gt;Cacao &ndash;Theobroma cacao L. - A rainforest tree now grown and domesticated in lower tropical humid climate near the equator in Central and South America, Africa, India, Indonesia, Sri Lanka, Malaysia and Philippines that need good fertile soils, sunlight and wind protection.\n        &lt;/p&gt;\n      &lt;/div&gt;\n\n      &lt;div class=&quot;col-md-6 wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;600ms&quot;&gt;\n\n&lt;p&gt;&bull; Inclusive Growth: 90 % are small farm holdings,  more jobs and Livelihood opportunities, promotes countryside development;&lt;/p&gt;\n&lt;p&gt;&bull; Poverty Alleviation:  Harvest every 2 weeks, better income augmentation;&lt;/p&gt;\n&lt;p&gt;&bull; Suitable for intercropping; no need for new areas;&lt;/p&gt;\n&lt;p&gt;&bull; Cacao Price: Less prone to severe fluctuation; High price during peak season;&lt;/p&gt;\n&lt;p&gt;&bull; Market Driven; Strong domestic &amp;amp; export market demand; &lt;/p&gt;\n&lt;p&gt;&bull; Good for Rehab Program: 18 months gestation period;&lt;/p&gt;\n&lt;p&gt;&bull; Cacao Price: Less prone to severe fluctuation; High price during peak season; &lt;/p&gt;\n&lt;p&gt;&bull; Presence of Support Program from Gov&rsquo;t. i.e., DENR, PCA&rsquo;s Kaanib, DA-HVCC, DOST, DAR , DTI, LBP, SBC.&lt;/p&gt;\n\n&lt;/div&gt;\n&lt;/div&gt;&lt;/div&gt;', 'home', 1, 3, '2019-05-17 17:46:01'),
(5, 'section4', 'This is news area not editable', 'home', 1, 4, '0000-00-00 00:00:00'),
(6, 'section5', '&lt;section id=&quot;partner&quot;&gt;\r\n    &lt;div class=&quot;container&quot;&gt; &lt;div class=&quot;center wow fadeInDown&quot;&gt;\r\n        &lt;h2&gt;Our Partners&lt;/h2&gt;\r\n        &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut &lt;br&gt; et dolore magna aliqua. Ut enim ad minim veniam&lt;/p&gt;\r\n      &lt;/div&gt;\r\n\r\n      &lt;div class=&quot;partners&quot;&gt;\r\n        &lt;ul&gt;\r\n          &lt;li&gt; &lt;a href=&quot;#&quot;&gt;&lt;img class=&quot;img-responsive wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;300ms&quot; src=&quot;../assets/themes/Company/images/partners/partner1.png&quot;&gt;&lt;/a&gt;&lt;/li&gt;\r\n          &lt;li&gt; &lt;a href=&quot;#&quot;&gt;&lt;img class=&quot;img-responsive wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;600ms&quot; src=&quot;../assets/themes/Company/images/partners/partner2.png&quot;&gt;&lt;/a&gt;&lt;/li&gt;\r\n          &lt;li&gt; &lt;a href=&quot;#&quot;&gt;&lt;img class=&quot;img-responsive wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;900ms&quot; src=&quot;../assets/themes/Company/images/partners/partner3.png&quot;&gt;&lt;/a&gt;&lt;/li&gt;\r\n          &lt;li&gt; &lt;a href=&quot;#&quot;&gt;&lt;img class=&quot;img-responsive wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;1200ms&quot; src=&quot;../assets/themes/Company/images/partners/partner4.png&quot;&gt;&lt;/a&gt;&lt;/li&gt;\r\n          &lt;li&gt; &lt;a href=&quot;#&quot;&gt;&lt;img class=&quot;img-responsive wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;1500ms&quot; src=&quot;../assets/themes/Company/images/partners/partner5.png&quot;&gt;&lt;/a&gt;&lt;/li&gt;\r\n        &lt;/ul&gt;\r\n      &lt;/div&gt; &lt;/div&gt;\r\n    &lt;!--/.container--&gt;\r\n  &lt;/section&gt;\r\n  &lt;!--/#partner--&gt;', 'home', 1, 5, '0000-00-00 00:00:00'),
(7, 'section6', '\n  <section id=\"conatcat-info\">\n    <div class=\"container\">\n      <div class=\"row\">\n\n        <div class=\"col-sm-8\">\n          <div class=\"media contact-info wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">\n            <div class=\"pull-left\">\n              <i class=\"fa fa-phone\"></i>\n            </div>\n            <div class=\"media-body\">\n              <h2 style=\"color:dodgerblue;\">Have a question or need a custom quote?</h2>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation  0123 456 70 80</p>\n            </div>\n          </div>\n        </div>\n        </div>\n        </div>\n</section>', 'home', 1, 6, '0000-00-00 00:00:00'),
(8, 'section1', '&lt;div class=&quot;aboutus&quot;&gt;\n&lt;div class=&quot;container&quot;&gt;\n      &lt;h3&gt;Our company information&lt;/h3&gt;\n      &lt;hr&gt;\n      &lt;div class=&quot;col-md-7 wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;300ms&quot;&gt;\n        &lt;img src=&quot;../assets/themes/Company/images/7.jpg&quot; class=&quot;img-responsive&quot;&gt;\n        &lt;h4&gt;We Create, Design and Make it Real&lt;/h4&gt;\n        &lt;p&gt;Nam tempor velit sed turpis imperdiet vestibulum. In mattis leo ut sapien euismod id feugiat mauris euismod. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus id nulla risus, vel tincidunt\n          turpis. Aliquam a nulla mi, placerat blandit eros. &lt;/p&gt;\n        &lt;p&gt;In neque lectus, lobortis a varius a, hendrerit eget dolor. Fusce scelerisque, sem ut viverra sollicitudin, est turpis blandit lacus, in pretium lectus sapien at est. Integer pretium ipsum sit amet dui feugiat vitae dapibus odio eleifend.&lt;/p&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;col-md-5 wow fadeInDown&quot; data-wow-duration=&quot;1000ms&quot; data-wow-delay=&quot;600ms&quot;&gt;\n        &lt;div class=&quot;skill&quot;&gt;\n          &lt;h2&gt;Our Skills&lt;/h2&gt;\n          &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&lt;/p&gt;\n\n          &lt;div class=&quot;progress-wrap&quot;&gt;\n            &lt;h3&gt;Graphic Design&lt;/h3&gt;\n            &lt;div class=&quot;progress&quot;&gt;\n              &lt;div class=&quot;progress-bar  color1&quot; role=&quot;progressbar&quot; aria-valuenow=&quot;40&quot; aria-valuemin=&quot;0&quot; aria-valuemax=&quot;100&quot; style=&quot;width: 85%&quot;&gt;\n                &lt;span class=&quot;bar-width&quot;&gt;85%&lt;/span&gt;\n              &lt;/div&gt;\n\n            &lt;/div&gt;\n          &lt;/div&gt;\n\n          &lt;div class=&quot;progress-wrap&quot;&gt;\n            &lt;h4&gt;HTML&lt;/h4&gt;\n            &lt;div class=&quot;progress&quot;&gt;\n              &lt;div class=&quot;progress-bar color2&quot; role=&quot;progressbar&quot; aria-valuenow=&quot;20&quot; aria-valuemin=&quot;0&quot; aria-valuemax=&quot;100&quot; style=&quot;width: 95%&quot;&gt;\n                &lt;span class=&quot;bar-width&quot;&gt;95%&lt;/span&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n\n          &lt;div class=&quot;progress-wrap&quot;&gt;\n            &lt;h4&gt;CSS&lt;/h4&gt;\n            &lt;div class=&quot;progress&quot;&gt;\n              &lt;div class=&quot;progress-bar color3&quot; role=&quot;progressbar&quot; aria-valuenow=&quot;60&quot; aria-valuemin=&quot;0&quot; aria-valuemax=&quot;100&quot; style=&quot;width: 80%&quot;&gt;\n                &lt;span class=&quot;bar-width&quot;&gt;80%&lt;/span&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n\n          &lt;div class=&quot;progress-wrap&quot;&gt;\n            &lt;h4&gt;Wordpress&lt;/h4&gt;\n            &lt;div class=&quot;progress&quot;&gt;\n              &lt;div class=&quot;progress-bar color4&quot; role=&quot;progressbar&quot; aria-valuenow=&quot;80&quot; aria-valuemin=&quot;0&quot; aria-valuemax=&quot;100&quot; style=&quot;width: 90%&quot;&gt;\n                &lt;span class=&quot;bar-width&quot;&gt;90%&lt;/span&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n\n&lt;/div&gt;\n&lt;/div&gt;', 'about', 1, 1, '0000-00-00 00:00:00'),
(9, 'section2', '<div class=\"our-team\">\n<div class=\"container\">\n<h3>Our Team</h3>       <div class=\"text-center\">         <div class=\"col-md-4 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\">           <img src=\"../assets/themes/Company/images/services/1.jpg\" alt=\"\">           <h4>John Doe</h4>           <p>Lorem ipsum dolor sit amet consectetur adipisicing eil sed deiusmod tempor</p>         </div>         <div class=\"col-md-4 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">           <img src=\"../assets/themes/Company/images/services/2.jpg\" alt=\"\">           <h4>John Doe</h4>           <p>Lorem ipsum dolor sit amet consectetur adipisicing eil sed deiusmod tempor</p>         </div>         <div class=\"col-md-4 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"900ms\">           <img src=\"../assets/themes/Company/images/services/3.jpg\" alt=\"\">           <h4>John Doe</h4>           <p>Lorem ipsum dolor sit amet consectetur adipisicing eil sed deiusmod tempor</p>         </div>       </div>\n</div>\n</div>', 'about', 1, 2, '0000-00-00 00:00:00'),
(10, 'section1', '      <div class=\"services\"><div class=\"container\">\n <h3>Company Services</h3>       <hr>       <div class=\"col-md-6\">         <img src=\"../assets/themes/Company/images/4.jpg\" class=\"img-responsive\">         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,           pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque</p>       </div>        <div class=\"col-md-6\">         <div class=\"media\">           <ul>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-pencil\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Web Development</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-book\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Responsive Design</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-rocket\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Bootstrap Themes</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>           </ul>         </div>       </div>\n</div>\n</div>', 'services', 1, 1, '0000-00-00 00:00:00'),
(11, 'section2', '       <div class=\"sub-services\">\n<div class=\"container\">\n<div class=\"col-md-6\">         <div class=\"media\">           <ul>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-pencil\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Landing Page</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-book\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Training</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-rocket\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Logo Design</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>           </ul>         </div>       </div>        <div class=\"col-md-6\">         <img src=\"../assets/themes/Company/images/4.jpg\" class=\"img-responsive\">         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,           pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque</p>       </div>\n</div>\n</div>', 'services', 1, 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `survey_masterlist`
--

CREATE TABLE `survey_masterlist` (
  `masterlist_id` int(11) NOT NULL,
  `town_name` varchar(100) NOT NULL,
  `town_code` int(11) NOT NULL,
  `no_of_farmer` int(11) NOT NULL,
  `no_of_actual_farmer` int(11) NOT NULL,
  `year` int(4) NOT NULL DEFAULT '2019',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_masterlist`
--

INSERT INTO `survey_masterlist` (`masterlist_id`, `town_name`, `town_code`, `no_of_farmer`, `no_of_actual_farmer`, `year`, `status`) VALUES
(1, 'Carmen', 822, 78, 0, 2019, 0),
(2, 'Dagohoy', 827, 2, 0, 2019, 0),
(3, 'Sierra bullones', 850, 39, 0, 2019, 0),
(4, 'Jagna', 835, 188, 0, 2019, 0),
(5, 'San miguel', 848, 254, 0, 2019, 0),
(6, 'Calape', 820, 229, 0, 2019, 0),
(7, 'Bilar', 818, 31, 0, 2019, 0),
(8, 'Sagbayan (borja)', 846, 26, 0, 2019, 0);

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
(43, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-24 08:42:58'),
(44, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-29 09:29:39'),
(45, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-29 09:31:04'),
(46, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-29 09:32:28'),
(47, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-29 09:38:29'),
(48, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-30 14:37:17'),
(49, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-02 08:15:40'),
(50, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-03 08:33:33'),
(51, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.102', 'Chrome 71.0.3578.99', 'Mozilla/5.0 (Linux; Android 6.0; Flare S5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Android', '2019-05-03 10:35:02'),
(52, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.101', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-05-03 10:39:04'),
(53, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.101', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-05-03 13:29:55'),
(54, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Firefox 66.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 'Windows 10', '2019-05-03 13:30:39'),
(55, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.105', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-05-03 13:33:26'),
(56, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.101', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-05-03 14:58:01'),
(57, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.101', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-05-03 15:20:46'),
(58, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Chrome 74.0.3729.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'Windows 10', '2019-05-06 09:12:03'),
(59, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Firefox 60.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0', 'Windows 10', '2019-05-06 10:38:37'),
(60, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-06 10:53:43'),
(61, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-06 11:06:32'),
(62, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Chrome 74.0.3729.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'Windows 10', '2019-05-06 13:36:32'),
(63, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Chrome 74.0.3729.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'Windows 10', '2019-05-06 13:42:08'),
(64, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Firefox 60.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0', 'Windows 10', '2019-05-06 13:58:19'),
(65, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Firefox 60.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0', 'Windows 10', '2019-05-06 14:24:45'),
(66, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-07 09:02:59'),
(67, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-07 11:31:42'),
(68, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-07 11:39:59'),
(69, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-08 09:28:20'),
(70, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-08 13:26:50'),
(71, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.103', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-05-08 13:37:01'),
(72, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Firefox 60.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0', 'Windows 10', '2019-05-08 13:56:50'),
(73, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-08 14:09:44'),
(74, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '192.168.1.104', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-09 07:59:52'),
(75, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-05-09 08:31:18'),
(76, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-09 10:40:34'),
(77, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-09 15:18:03'),
(78, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-10 14:35:55'),
(79, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-16 11:51:45'),
(80, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-17 12:32:17'),
(81, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-17 17:43:54');

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
(48, 1, 'respondentsAdd', 'Add basic information', 95, '2019-03-30 18:14:56', '0000-00-00 00:00:00', '192.168.0.200'),
(50, 3, 'respondentsAdd', 'Add basic information', 59, '2019-04-29 10:06:22', '0000-00-00 00:00:00', '127.0.0.1'),
(51, 3, 'respondentsAdd', 'Add basic information', 60, '2019-04-29 10:39:40', '0000-00-00 00:00:00', '127.0.0.1'),
(52, 3, 'respondentsAdd', 'Add basic information', 61, '2019-04-29 10:56:33', '0000-00-00 00:00:00', '127.0.0.1'),
(53, 3, 'respondentsAdd', 'Add basic information', 62, '2019-04-29 11:11:59', '0000-00-00 00:00:00', '127.0.0.1'),
(54, 3, 'respondentsAdd', 'Add basic information', 63, '2019-04-29 11:27:11', '0000-00-00 00:00:00', '127.0.0.1'),
(55, 3, 'respondentsAdd', 'Add basic information', 64, '2019-04-29 11:35:47', '0000-00-00 00:00:00', '127.0.0.1'),
(56, 3, 'respondentsAdd', 'Add basic information', 65, '2019-04-29 11:45:09', '0000-00-00 00:00:00', '127.0.0.1'),
(57, 3, 'respondentsAdd', 'Add basic information', 66, '2019-04-29 11:54:56', '0000-00-00 00:00:00', '127.0.0.1'),
(58, 3, 'respondentsAdd', 'Add basic information', 67, '2019-04-29 13:44:50', '0000-00-00 00:00:00', '127.0.0.1'),
(59, 3, 'respondentsAdd', 'Add basic information', 68, '2019-04-29 14:11:39', '0000-00-00 00:00:00', '127.0.0.1'),
(60, 3, 'respondentsAdd', 'Add basic information', 69, '2019-04-29 14:30:35', '0000-00-00 00:00:00', '127.0.0.1'),
(61, 3, 'respondentsAdd', 'Add basic information', 70, '2019-04-29 14:56:29', '0000-00-00 00:00:00', '127.0.0.1'),
(62, 3, 'respondentsAdd', 'Add basic information', 71, '2019-04-29 15:12:48', '0000-00-00 00:00:00', '127.0.0.1'),
(63, 3, 'respondentsAdd', 'Add basic information', 72, '2019-04-29 15:21:27', '0000-00-00 00:00:00', '127.0.0.1'),
(64, 3, 'respondentsAdd', 'Add basic information', 73, '2019-04-29 15:30:22', '0000-00-00 00:00:00', '127.0.0.1'),
(65, 3, 'respondentsAdd', 'Add basic information', 74, '2019-04-29 15:38:46', '0000-00-00 00:00:00', '127.0.0.1'),
(66, 3, 'respondentsAdd', 'Add basic information', 75, '2019-04-29 15:44:09', '0000-00-00 00:00:00', '127.0.0.1'),
(67, 3, 'respondentsAdd', 'Add basic information', 76, '2019-04-29 15:54:33', '0000-00-00 00:00:00', '127.0.0.1'),
(68, 3, 'respondentsAdd', 'Add basic information', 77, '2019-04-29 15:58:19', '0000-00-00 00:00:00', '127.0.0.1'),
(69, 3, 'respondentsAdd', 'Add basic information', 78, '2019-04-29 16:01:51', '0000-00-00 00:00:00', '127.0.0.1'),
(70, 3, 'respondentsAdd', 'Add basic information', 79, '2019-04-29 16:07:26', '0000-00-00 00:00:00', '127.0.0.1'),
(71, 3, 'respondentsAdd', 'Add basic information', 80, '2019-04-29 16:11:50', '0000-00-00 00:00:00', '127.0.0.1'),
(72, 3, 'respondentsAdd', 'Add basic information', 81, '2019-04-29 16:19:17', '0000-00-00 00:00:00', '127.0.0.1'),
(73, 3, 'respondentsAdd', 'Add basic information', 82, '2019-04-29 16:40:24', '0000-00-00 00:00:00', '127.0.0.1'),
(74, 3, 'respondentsAdd', 'Add basic information', 83, '2019-04-29 16:49:34', '0000-00-00 00:00:00', '127.0.0.1'),
(75, 3, 'respondentsAdd', 'Add basic information', 84, '2019-04-29 16:58:14', '0000-00-00 00:00:00', '127.0.0.1'),
(76, 3, 'respondentsAdd', 'Add basic information', 85, '2019-05-02 08:24:07', '0000-00-00 00:00:00', '127.0.0.1'),
(77, 3, 'respondentsAdd', 'Add basic information', 86, '2019-05-02 08:35:32', '0000-00-00 00:00:00', '127.0.0.1'),
(78, 3, 'respondentsAdd', 'Add basic information', 87, '2019-05-02 08:49:48', '0000-00-00 00:00:00', '127.0.0.1'),
(79, 3, 'respondentsAdd', 'Add basic information', 88, '2019-05-02 09:00:37', '0000-00-00 00:00:00', '127.0.0.1'),
(80, 3, 'respondentsAdd', 'Add basic information', 89, '2019-05-02 09:08:04', '0000-00-00 00:00:00', '127.0.0.1'),
(81, 3, 'respondentsAdd', 'Add basic information', 90, '2019-05-02 09:19:24', '0000-00-00 00:00:00', '127.0.0.1'),
(82, 3, 'respondentsAdd', 'Add basic information', 91, '2019-05-02 09:38:42', '0000-00-00 00:00:00', '127.0.0.1'),
(83, 3, 'respondentsAdd', 'Add basic information', 92, '2019-05-02 09:47:52', '0000-00-00 00:00:00', '127.0.0.1'),
(84, 3, 'respondentsAdd', 'Add basic information', 93, '2019-05-02 09:57:09', '0000-00-00 00:00:00', '127.0.0.1'),
(85, 3, 'respondentsAdd', 'Add basic information', 94, '2019-05-02 10:03:38', '0000-00-00 00:00:00', '127.0.0.1'),
(86, 3, 'respondentsAdd', 'Add basic information', 95, '2019-05-02 10:11:06', '0000-00-00 00:00:00', '127.0.0.1'),
(87, 3, 'respondentsAdd', 'Add basic information', 96, '2019-05-02 10:19:32', '0000-00-00 00:00:00', '127.0.0.1'),
(88, 3, 'respondentsAdd', 'Add basic information', 97, '2019-05-02 10:25:47', '0000-00-00 00:00:00', '127.0.0.1'),
(89, 3, 'respondentsAdd', 'Add basic information', 98, '2019-05-02 10:33:08', '0000-00-00 00:00:00', '127.0.0.1'),
(90, 3, 'respondentsAdd', 'Add basic information', 99, '2019-05-02 10:38:44', '0000-00-00 00:00:00', '127.0.0.1'),
(91, 3, 'respondentsAdd', 'Add basic information', 100, '2019-05-02 10:44:23', '0000-00-00 00:00:00', '127.0.0.1'),
(92, 3, 'respondentsAdd', 'Add basic information', 101, '2019-05-02 10:49:43', '0000-00-00 00:00:00', '127.0.0.1'),
(93, 3, 'respondentsAdd', 'Add basic information', 102, '2019-05-02 10:53:21', '0000-00-00 00:00:00', '127.0.0.1'),
(94, 3, 'respondentsAdd', 'Add basic information', 103, '2019-05-02 10:59:33', '0000-00-00 00:00:00', '127.0.0.1'),
(95, 3, 'respondentsAdd', 'Add basic information', 104, '2019-05-02 11:04:21', '0000-00-00 00:00:00', '127.0.0.1'),
(96, 3, 'respondentsAdd', 'Add basic information', 105, '2019-05-02 11:07:14', '0000-00-00 00:00:00', '127.0.0.1'),
(97, 3, 'respondentsAdd', 'Add basic information', 106, '2019-05-02 11:11:24', '0000-00-00 00:00:00', '127.0.0.1'),
(98, 3, 'respondentsAdd', 'Add basic information', 107, '2019-05-02 11:16:54', '0000-00-00 00:00:00', '127.0.0.1'),
(99, 3, 'respondentsAdd', 'Add basic information', 108, '2019-05-02 11:22:07', '0000-00-00 00:00:00', '127.0.0.1'),
(100, 3, 'respondentsAdd', 'Add basic information', 109, '2019-05-02 11:25:30', '0000-00-00 00:00:00', '127.0.0.1'),
(101, 3, 'respondentsAdd', 'Add basic information', 110, '2019-05-02 11:33:01', '0000-00-00 00:00:00', '127.0.0.1'),
(102, 3, 'respondentsAdd', 'Add basic information', 111, '2019-05-02 11:37:43', '0000-00-00 00:00:00', '127.0.0.1'),
(103, 3, 'respondentsAdd', 'Add basic information', 112, '2019-05-02 13:25:15', '0000-00-00 00:00:00', '127.0.0.1'),
(104, 3, 'respondentsAdd', 'Add basic information', 113, '2019-05-02 13:30:16', '0000-00-00 00:00:00', '127.0.0.1'),
(105, 3, 'respondentsAdd', 'Add basic information', 114, '2019-05-02 13:37:29', '0000-00-00 00:00:00', '127.0.0.1'),
(106, 3, 'respondentsAdd', 'Add basic information', 115, '2019-05-02 13:44:14', '0000-00-00 00:00:00', '127.0.0.1'),
(107, 3, 'respondentsAdd', 'Add basic information', 116, '2019-05-02 13:48:52', '0000-00-00 00:00:00', '127.0.0.1'),
(108, 3, 'respondentsAdd', 'Add basic information', 117, '2019-05-02 13:54:51', '0000-00-00 00:00:00', '127.0.0.1'),
(109, 3, 'respondentsAdd', 'Add basic information', 118, '2019-05-02 14:05:20', '0000-00-00 00:00:00', '127.0.0.1'),
(110, 3, 'respondentsAdd', 'Add basic information', 119, '2019-05-02 14:11:30', '0000-00-00 00:00:00', '127.0.0.1'),
(111, 3, 'respondentsAdd', 'Add basic information', 120, '2019-05-02 14:20:03', '0000-00-00 00:00:00', '127.0.0.1'),
(112, 3, 'respondentsAdd', 'Add basic information', 121, '2019-05-02 14:27:26', '0000-00-00 00:00:00', '127.0.0.1'),
(113, 3, 'respondentsAdd', 'Add basic information', 122, '2019-05-02 14:33:17', '0000-00-00 00:00:00', '127.0.0.1'),
(114, 3, 'respondentsAdd', 'Add basic information', 123, '2019-05-02 14:45:31', '0000-00-00 00:00:00', '127.0.0.1'),
(115, 3, 'respondentsAdd', 'Add basic information', 124, '2019-05-02 15:07:55', '0000-00-00 00:00:00', '127.0.0.1'),
(116, 3, 'respondentsAdd', 'Add basic information', 125, '2019-05-02 15:16:45', '0000-00-00 00:00:00', '127.0.0.1'),
(117, 3, 'respondentsAdd', 'Add basic information', 126, '2019-05-02 15:21:50', '0000-00-00 00:00:00', '127.0.0.1'),
(118, 3, 'respondentsAdd', 'Add basic information', 127, '2019-05-02 15:47:26', '0000-00-00 00:00:00', '127.0.0.1'),
(119, 3, 'respondentsAdd', 'Add basic information', 128, '2019-05-02 16:01:33', '0000-00-00 00:00:00', '127.0.0.1'),
(120, 3, 'respondentsAdd', 'Add basic information', 129, '2019-05-02 16:11:56', '0000-00-00 00:00:00', '127.0.0.1'),
(121, 3, 'respondentsAdd', 'Add basic information', 130, '2019-05-02 16:18:17', '0000-00-00 00:00:00', '127.0.0.1'),
(122, 3, 'respondentsAdd', 'Add basic information', 131, '2019-05-02 16:42:05', '0000-00-00 00:00:00', '127.0.0.1'),
(123, 3, 'respondentsAdd', 'Add basic information', 132, '2019-05-03 08:46:05', '0000-00-00 00:00:00', '127.0.0.1'),
(124, 3, 'respondentsAdd', 'Add basic information', 133, '2019-05-03 09:01:13', '0000-00-00 00:00:00', '127.0.0.1'),
(125, 3, 'respondentsAdd', 'Add basic information', 134, '2019-05-03 09:08:19', '0000-00-00 00:00:00', '127.0.0.1'),
(126, 3, 'respondentsAdd', 'Add basic information', 135, '2019-05-03 09:19:03', '0000-00-00 00:00:00', '127.0.0.1'),
(127, 3, 'respondentsAdd', 'Add basic information', 136, '2019-05-03 09:22:57', '0000-00-00 00:00:00', '127.0.0.1'),
(128, 3, 'respondentsAdd', 'Add basic information', 137, '2019-05-03 09:35:23', '0000-00-00 00:00:00', '127.0.0.1'),
(129, 3, 'respondentsAdd', 'Add basic information', 138, '2019-05-03 09:39:24', '0000-00-00 00:00:00', '127.0.0.1'),
(130, 3, 'respondentsAdd', 'Add basic information', 139, '2019-05-03 09:44:26', '0000-00-00 00:00:00', '127.0.0.1'),
(131, 3, 'respondentsAdd', 'Add basic information', 140, '2019-05-03 09:48:37', '0000-00-00 00:00:00', '127.0.0.1'),
(132, 3, 'respondentsAdd', 'Add basic information', 141, '2019-05-03 10:14:11', '0000-00-00 00:00:00', '127.0.0.1'),
(133, 3, 'respondentsAdd', 'Add basic information', 142, '2019-05-03 10:49:39', '0000-00-00 00:00:00', '127.0.0.1'),
(134, 3, 'respondentsAdd', 'Add basic information', 143, '2019-05-03 10:52:03', '0000-00-00 00:00:00', '192.168.1.101'),
(135, 3, 'respondentsAdd', 'Add basic information', 144, '2019-05-03 11:01:22', '0000-00-00 00:00:00', '192.168.1.101'),
(136, 3, 'respondentsAdd', 'Add basic information', 145, '2019-05-03 11:06:35', '0000-00-00 00:00:00', '127.0.0.1'),
(137, 3, 'respondentsAdd', 'Add basic information', 146, '2019-05-03 11:06:38', '0000-00-00 00:00:00', '127.0.0.1'),
(138, 3, 'respondentsAdd', 'Add basic information', 147, '2019-05-03 11:06:48', '0000-00-00 00:00:00', '127.0.0.1'),
(139, 3, 'respondentsAdd', 'Add basic information', 148, '2019-05-03 11:06:54', '0000-00-00 00:00:00', '127.0.0.1'),
(140, 3, 'respondentsAdd', 'Add basic information', 149, '2019-05-03 11:06:59', '0000-00-00 00:00:00', '127.0.0.1'),
(141, 3, 'respondentsAdd', 'Add basic information', 150, '2019-05-03 11:07:01', '0000-00-00 00:00:00', '127.0.0.1'),
(142, 3, 'respondentsAdd', 'Add basic information', 151, '2019-05-03 11:07:02', '0000-00-00 00:00:00', '127.0.0.1'),
(143, 3, 'respondentsAdd', 'Add basic information', 152, '2019-05-03 11:07:02', '0000-00-00 00:00:00', '127.0.0.1'),
(144, 3, 'respondentsAdd', 'Add basic information', 153, '2019-05-03 11:07:02', '0000-00-00 00:00:00', '127.0.0.1'),
(145, 3, 'respondentsAdd', 'Add basic information', 154, '2019-05-03 11:07:02', '0000-00-00 00:00:00', '127.0.0.1'),
(146, 3, 'respondentsAdd', 'Add basic information', 155, '2019-05-03 11:07:10', '0000-00-00 00:00:00', '127.0.0.1'),
(147, 3, 'respondentsAdd', 'Add basic information', 156, '2019-05-03 11:08:33', '0000-00-00 00:00:00', '192.168.1.101'),
(148, 3, 'respondentsAdd', 'Add basic information', 157, '2019-05-03 11:14:07', '0000-00-00 00:00:00', '192.168.1.101'),
(149, 3, 'respondentsAdd', 'Add basic information', 158, '2019-05-03 11:22:26', '0000-00-00 00:00:00', '192.168.1.101'),
(150, 3, 'respondentsAdd', 'Add basic information', 159, '2019-05-03 11:22:26', '0000-00-00 00:00:00', '192.168.1.101'),
(151, 3, 'respondentsAdd', 'Add basic information', 160, '2019-05-03 11:39:52', '0000-00-00 00:00:00', '127.0.0.1'),
(152, 3, 'respondentsAdd', 'Add basic information', 161, '2019-05-03 11:46:19', '0000-00-00 00:00:00', '127.0.0.1'),
(153, 3, 'respondentsAdd', 'Add basic information', 162, '2019-05-03 11:52:58', '0000-00-00 00:00:00', '127.0.0.1'),
(154, 3, 'respondentsAdd', 'Add basic information', 163, '2019-05-03 13:38:26', '0000-00-00 00:00:00', '192.168.1.101'),
(155, 3, 'respondentsAdd', 'Add basic information', 164, '2019-05-03 13:43:03', '0000-00-00 00:00:00', '192.168.1.105'),
(156, 3, 'respondentsAdd', 'Add basic information', 165, '2019-05-03 13:50:51', '0000-00-00 00:00:00', '192.168.1.101'),
(157, 3, 'respondentsAdd', 'Add basic information', 166, '2019-05-03 13:52:09', '0000-00-00 00:00:00', '192.168.1.105'),
(158, 3, 'respondentsAdd', 'Add basic information', 167, '2019-05-03 13:54:09', '0000-00-00 00:00:00', '127.0.0.1'),
(159, 3, 'respondentsAdd', 'Add basic information', 168, '2019-05-03 13:57:16', '0000-00-00 00:00:00', '192.168.1.105'),
(160, 3, 'respondentsAdd', 'Add basic information', 169, '2019-05-03 13:58:18', '0000-00-00 00:00:00', '192.168.1.104'),
(161, 3, 'respondentsAdd', 'Add basic information', 170, '2019-05-03 14:01:00', '0000-00-00 00:00:00', '192.168.1.105'),
(162, 3, 'respondentsAdd', 'Add basic information', 171, '2019-05-03 14:01:18', '0000-00-00 00:00:00', '192.168.1.101'),
(163, 3, 'respondentsAdd', 'Add basic information', 172, '2019-05-03 14:07:15', '0000-00-00 00:00:00', '192.168.1.105'),
(164, 3, 'respondentsAdd', 'Add basic information', 173, '2019-05-03 14:07:28', '0000-00-00 00:00:00', '192.168.1.104'),
(165, 3, 'respondentsAdd', 'Add basic information', 174, '2019-05-03 14:07:59', '0000-00-00 00:00:00', '192.168.1.101'),
(166, 3, 'respondentsAdd', 'Add basic information', 175, '2019-05-03 14:12:07', '0000-00-00 00:00:00', '192.168.1.105'),
(167, 3, 'respondentsAdd', 'Add basic information', 176, '2019-05-03 14:13:30', '0000-00-00 00:00:00', '192.168.1.104'),
(168, 3, 'respondentsAdd', 'Add basic information', 177, '2019-05-03 14:14:13', '0000-00-00 00:00:00', '127.0.0.1'),
(169, 3, 'respondentsAdd', 'Add basic information', 178, '2019-05-03 14:14:21', '0000-00-00 00:00:00', '192.168.1.101'),
(170, 3, 'respondentsAdd', 'Add basic information', 179, '2019-05-03 14:17:14', '0000-00-00 00:00:00', '192.168.1.105'),
(171, 3, 'respondentsAdd', 'Add basic information', 180, '2019-05-03 14:20:01', '0000-00-00 00:00:00', '192.168.1.104'),
(172, 3, 'respondentsAdd', 'Add basic information', 181, '2019-05-03 14:23:46', '0000-00-00 00:00:00', '192.168.1.101'),
(173, 3, 'respondentsAdd', 'Add basic information', 182, '2019-05-03 14:24:18', '0000-00-00 00:00:00', '192.168.1.105'),
(174, 3, 'respondentsAdd', 'Add basic information', 183, '2019-05-03 14:27:32', '0000-00-00 00:00:00', '192.168.1.104'),
(175, 3, 'respondentsAdd', 'Add basic information', 184, '2019-05-03 14:29:11', '0000-00-00 00:00:00', '192.168.1.101'),
(176, 3, 'respondentsAdd', 'Add basic information', 185, '2019-05-03 14:32:23', '0000-00-00 00:00:00', '127.0.0.1'),
(177, 3, 'respondentsAdd', 'Add basic information', 186, '2019-05-03 14:34:35', '0000-00-00 00:00:00', '192.168.1.105'),
(181, 3, 'respondentsAdd', 'Add basic information', 190, '2019-05-03 14:40:22', '0000-00-00 00:00:00', '192.168.1.105'),
(182, 3, 'respondentsAdd', 'Add basic information', 191, '2019-05-03 14:45:07', '0000-00-00 00:00:00', '192.168.1.104'),
(183, 3, 'respondentsAdd', 'Add basic information', 192, '2019-05-03 14:50:09', '0000-00-00 00:00:00', '192.168.1.104'),
(184, 3, 'respondentsAdd', 'Add basic information', 193, '2019-05-03 14:50:56', '0000-00-00 00:00:00', '192.168.1.105'),
(185, 3, 'respondentsAdd', 'Add basic information', 194, '2019-05-03 14:51:15', '0000-00-00 00:00:00', '127.0.0.1'),
(216, 3, 'respondentsAdd', 'Add basic information', 225, '2019-05-03 14:55:41', '0000-00-00 00:00:00', '192.168.1.104'),
(219, 3, 'respondentsAdd', 'Add basic information', 228, '2019-05-03 14:59:54', '0000-00-00 00:00:00', '127.0.0.1'),
(220, 3, 'respondentsAdd', 'Add basic information', 229, '2019-05-03 15:01:22', '0000-00-00 00:00:00', '192.168.1.105'),
(221, 3, 'respondentsAdd', 'Add basic information', 230, '2019-05-03 15:04:15', '0000-00-00 00:00:00', '192.168.1.104'),
(222, 3, 'respondentsAdd', 'Add basic information', 231, '2019-05-03 15:04:33', '0000-00-00 00:00:00', '192.168.1.101'),
(233, 3, 'respondentsAdd', 'Add basic information', 242, '2019-05-03 15:07:43', '0000-00-00 00:00:00', '127.0.0.1'),
(234, 3, 'respondentsAdd', 'Add basic information', 243, '2019-05-03 15:10:08', '0000-00-00 00:00:00', '192.168.1.105'),
(235, 3, 'respondentsAdd', 'Add basic information', 244, '2019-05-03 15:10:32', '0000-00-00 00:00:00', '192.168.1.101'),
(236, 3, 'respondentsAdd', 'Add basic information', 245, '2019-05-03 15:12:45', '0000-00-00 00:00:00', '192.168.1.104'),
(237, 3, 'respondentsAdd', 'Add basic information', 246, '2019-05-03 15:15:53', '0000-00-00 00:00:00', '127.0.0.1'),
(242, 3, 'respondentsAdd', 'Add basic information', 251, '2019-05-03 15:18:55', '0000-00-00 00:00:00', '192.168.1.104'),
(243, 3, 'respondentsAdd', 'Add basic information', 252, '2019-05-03 15:19:20', '0000-00-00 00:00:00', '192.168.1.101'),
(244, 3, 'respondentsAdd', 'Add basic information', 253, '2019-05-03 15:19:45', '0000-00-00 00:00:00', '192.168.1.105'),
(245, 3, 'respondentsAdd', 'Add basic information', 254, '2019-05-03 15:23:15', '0000-00-00 00:00:00', '192.168.1.105'),
(246, 3, 'respondentsAdd', 'Add basic information', 255, '2019-05-03 15:25:01', '0000-00-00 00:00:00', '192.168.1.104'),
(247, 3, 'respondentsAdd', 'Add basic information', 256, '2019-05-03 15:32:19', '0000-00-00 00:00:00', '192.168.1.104'),
(248, 3, 'respondentsAdd', 'Add basic information', 257, '2019-05-03 15:38:29', '0000-00-00 00:00:00', '192.168.1.105'),
(249, 3, 'respondentsAdd', 'Add basic information', 258, '2019-05-03 15:42:57', '0000-00-00 00:00:00', '192.168.1.105'),
(250, 3, 'respondentsAdd', 'Add basic information', 259, '2019-05-03 15:46:06', '0000-00-00 00:00:00', '192.168.1.101'),
(251, 3, 'respondentsAdd', 'Add basic information', 260, '2019-05-03 15:47:24', '0000-00-00 00:00:00', '192.168.1.105'),
(252, 3, 'respondentsAdd', 'Add basic information', 261, '2019-05-03 15:48:41', '0000-00-00 00:00:00', '192.168.1.104'),
(253, 3, 'respondentsAdd', 'Add basic information', 262, '2019-05-03 15:49:16', '0000-00-00 00:00:00', '127.0.0.1'),
(254, 3, 'respondentsAdd', 'Add basic information', 263, '2019-05-03 15:50:06', '0000-00-00 00:00:00', '192.168.1.105'),
(255, 3, 'respondentsAdd', 'Add basic information', 264, '2019-05-03 15:53:29', '0000-00-00 00:00:00', '192.168.1.101'),
(256, 3, 'respondentsAdd', 'Add basic information', 265, '2019-05-03 15:55:20', '0000-00-00 00:00:00', '192.168.1.105'),
(257, 3, 'respondentsAdd', 'Add basic information', 266, '2019-05-03 15:57:09', '0000-00-00 00:00:00', '192.168.1.105'),
(258, 3, 'respondentsAdd', 'Add basic information', 267, '2019-05-03 15:58:09', '0000-00-00 00:00:00', '127.0.0.1'),
(259, 3, 'respondentsAdd', 'Add basic information', 268, '2019-05-03 16:03:58', '0000-00-00 00:00:00', '127.0.0.1'),
(260, 3, 'respondentsAdd', 'Add basic information', 269, '2019-05-03 16:05:09', '0000-00-00 00:00:00', '192.168.1.105'),
(261, 3, 'respondentsAdd', 'Add basic information', 270, '2019-05-03 16:35:38', '0000-00-00 00:00:00', '127.0.0.1'),
(442, 3, 'respondentsAdd', 'Add basic information', 451, '2019-05-08 13:47:38', '0000-00-00 00:00:00', '192.168.1.103'),
(601, 3, 'respondentsAdd', 'Add basic information', 610, '2019-05-08 14:26:39', '0000-00-00 00:00:00', '192.168.1.104'),
(602, 3, 'respondentsAdd', 'Add basic information', 611, '2019-05-08 14:32:06', '0000-00-00 00:00:00', '192.168.1.104'),
(609, 3, 'respondentsAdd', 'Add basic information', 618, '2019-05-08 14:40:24', '0000-00-00 00:00:00', '192.168.1.104'),
(610, 3, 'respondentsAdd', 'Add basic information', 619, '2019-05-08 14:46:38', '0000-00-00 00:00:00', '192.168.1.104'),
(697, 3, 'respondentsAdd', 'Add basic information', 706, '2019-05-08 15:29:32', '0000-00-00 00:00:00', '192.168.1.104'),
(698, 3, 'respondentsAdd', 'Add basic information', 707, '2019-05-08 15:34:05', '0000-00-00 00:00:00', '192.168.1.101'),
(699, 3, 'respondentsAdd', 'Add basic information', 708, '2019-05-08 15:40:23', '0000-00-00 00:00:00', '192.168.1.104'),
(700, 3, 'respondentsAdd', 'Add basic information', 709, '2019-05-08 15:40:43', '0000-00-00 00:00:00', '192.168.1.101'),
(701, 3, 'respondentsAdd', 'Add basic information', 710, '2019-05-08 15:50:48', '0000-00-00 00:00:00', '192.168.1.104'),
(702, 3, 'respondentsAdd', 'Add basic information', 711, '2019-05-08 15:59:14', '0000-00-00 00:00:00', '192.168.1.101'),
(703, 3, 'respondentsAdd', 'Add basic information', 712, '2019-05-08 16:04:58', '0000-00-00 00:00:00', '192.168.1.104'),
(704, 3, 'respondentsAdd', 'Add basic information', 713, '2019-05-08 16:07:19', '0000-00-00 00:00:00', '192.168.1.101'),
(705, 3, 'respondentsAdd', 'Add basic information', 714, '2019-05-08 16:17:00', '0000-00-00 00:00:00', '192.168.1.101'),
(706, 3, 'respondentsAdd', 'Add basic information', 715, '2019-05-08 16:19:55', '0000-00-00 00:00:00', '192.168.1.104'),
(707, 3, 'respondentsAdd', 'Add basic information', 716, '2019-05-08 16:24:22', '0000-00-00 00:00:00', '192.168.1.101'),
(708, 3, 'respondentsAdd', 'Add basic information', 717, '2019-05-08 16:38:16', '0000-00-00 00:00:00', '192.168.1.104'),
(709, 3, 'respondentsAdd', 'Add basic information', 718, '2019-05-08 16:42:29', '0000-00-00 00:00:00', '192.168.1.101'),
(710, 3, 'respondentsAdd', 'Add basic information', 719, '2019-05-08 16:50:59', '0000-00-00 00:00:00', '192.168.1.101'),
(711, 3, 'respondentsAdd', 'Add basic information', 720, '2019-05-09 08:07:04', '0000-00-00 00:00:00', '192.168.1.104'),
(712, 3, 'respondentsAdd', 'Add basic information', 721, '2019-05-09 08:15:13', '0000-00-00 00:00:00', '192.168.1.104');

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
-- Indexes for table `survey_masterlist`
--
ALTER TABLE `survey_masterlist`
  ADD PRIMARY KEY (`masterlist_id`);

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
  MODIFY `respondent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;

--
-- AUTO_INCREMENT for table `respondents_farm_profile`
--
ALTER TABLE `respondents_farm_profile`
  MODIFY `farm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `respondents_organizations`
--
ALTER TABLE `respondents_organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- AUTO_INCREMENT for table `respondents_pest_disease`
--
ALTER TABLE `respondents_pest_disease`
  MODIFY `pest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `respondents_post_harvest`
--
ALTER TABLE `respondents_post_harvest`
  MODIFY `harvet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `respondents_production_management`
--
ALTER TABLE `respondents_production_management`
  MODIFY `production_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=667;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `survey_masterlist`
--
ALTER TABLE `survey_masterlist`
  MODIFY `masterlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

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
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=713;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
