-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 01:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iscvs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(40) NOT NULL,
  `user` varchar(40) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `type`, `user`, `pass`, `photo`) VALUES
(1, 'PACBOG', 'main', 'admin', 'password', 'Photo_download.png');

-- --------------------------------------------------------

--
-- Table structure for table `adviser`
--

CREATE TABLE `adviser` (
  `adv_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` text NOT NULL,
  `scope_section` int(11) NOT NULL,
  `scope_course` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date_registered` datetime DEFAULT NULL,
  `changepass` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adviser`
--

INSERT INTO `adviser` (`adv_id`, `lastname`, `firstname`, `middlename`, `email`, `photo`, `scope_section`, `scope_course`, `password`, `date_registered`, `changepass`, `status`) VALUES
(52, 'adviser', 'a-only', 'g', 'Adviser-A@wmsu.edu.ph', 'acmaccountCAMLIAN14_WMSU.jpg', 4, 1, 'jiezzer', '2021-11-07 14:42:20', 1, 1),
(53, 'Camlian', 'Jiezel', '', 'camlianjiezel@gmail.com', '', 2, 1, 'CamlianJiezel14', '2021-11-18 12:37:21', 1, 1),
(54, 'Mouse', 'Mickey', '', 'camlianjiezel@gmail.com', '', 3, 2, 'Mouse', '2021-11-26 14:16:21', 1, 1),
(55, 'John', 'Dan', '', 'bg201803286@wmsu.edu.ph', '', 3, 1, 'John', '2021-11-26 14:40:20', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `cid` int(11) NOT NULL,
  `sv_id` varchar(100) NOT NULL,
  `votes` int(11) DEFAULT NULL,
  `voters` mediumtext DEFAULT NULL,
  `pos_id` int(11) NOT NULL,
  `advocacy` varchar(5000) DEFAULT NULL,
  `date_registered` datetime NOT NULL,
  `election_id` int(11) NOT NULL,
  `partylist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`cid`, `sv_id`, `votes`, `voters`, `pos_id`, `advocacy`, `date_registered`, `election_id`, `partylist`) VALUES
(175, '704', 3, '721,22,14,', 127, '\r\n              ', '2022-03-21 22:22:03', 1, 1),
(176, '696', 5, '722,696,720,534,18,', 127, '\r\n              ', '2022-03-21 22:22:11', 1, 1),
(177, '722', 5, '722,696,22,14,18,', 128, '\r\n              ', '2022-03-21 22:22:24', 1, 1),
(178, '14', 3, '721,720,534,', 128, '\r\n              ', '2022-03-21 22:22:30', 1, 1),
(179, '22', 5, '696,22,14,534,18,', 129, '\r\n              ', '2022-03-21 22:22:36', 1, 1),
(180, '18', 4, '696,721,720,14,', 129, '\r\n              ', '2022-03-21 22:22:42', 1, 1),
(181, '721', 5, '722,721,720,22,18,', 129, '\r\n              ', '2022-03-21 22:22:48', 1, 1),
(182, '534', 8, '722,696,721,720,22,14,534,18,', 130, '\r\n              ', '2022-03-21 22:22:53', 1, 1),
(183, '19', 3, '696,721,14,', 130, '\r\n              ', '2022-03-21 22:22:59', 1, 1),
(184, '720', 4, '722,720,22,18,', 130, 'To lead. ', '2022-03-21 22:23:18', 1, 1),
(185, '754', 9, '756,757,751,752,761,763,753,760,758,', 131, 'Tara laban!', '2022-03-22 11:27:29', 39, 1),
(186, '753', 2, '759,754,', 131, 'Pak na Pak!', '2022-03-22 11:27:43', 39, 1),
(187, '757', 9, '759,756,751,752,754,761,763,753,758,', 132, 'Okay G!', '2022-03-22 11:27:55', 39, 1),
(188, '752', 3, '757,766,760,', 132, 'Tra ML!', '2022-03-22 11:28:10', 39, 1),
(189, '755', 3, '752,753,758,', 133, 'G!', '2022-03-22 11:28:23', 39, 1),
(190, '751', 11, '759,756,757,751,752,754,761,763,753,760,758,', 133, 'Dotes na dotes!', '2022-03-22 11:28:36', 39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `course`) VALUES
(1, 'BSIT'),
(2, 'BSCS');

-- --------------------------------------------------------

--
-- Table structure for table `election_sched`
--

CREATE TABLE `election_sched` (
  `election_id` int(11) NOT NULL,
  `semester` varchar(40) NOT NULL,
  `year` year(4) NOT NULL,
  `title` varchar(50) NOT NULL,
  `eventstart` datetime DEFAULT NULL,
  `eventend` datetime DEFAULT NULL,
  `date-modified` datetime NOT NULL,
  `voterlogin` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `result` int(11) NOT NULL,
  `notification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `election_sched`
--

INSERT INTO `election_sched` (`election_id`, `semester`, `year`, `title`, `eventstart`, `eventend`, `date-modified`, `voterlogin`, `status`, `result`, `notification`) VALUES
(1, '1', 2021, 'ICS Local election', '2022-03-22 08:09:00', '2022-03-22 09:09:00', '2021-06-19 20:25:51', 'enabled', 'inactive', 1, 2),
(39, '2', 2022, 'New Election: The CCS Rising\r\n               ', '2022-03-22 11:29:00', '2022-05-11 11:40:00', '2022-03-22 09:34:29', 'enabled', 'inactive', 1, 0),
(40, '1', 2022, 'test                 \r\n               ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-03-22 14:21:42', 'enabled', 'active', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `partylist`
--

CREATE TABLE `partylist` (
  `party_id` int(11) NOT NULL,
  `partylist` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL,
  `election_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partylist`
--

INSERT INTO `partylist` (`party_id`, `partylist`, `date_created`, `election_id`) VALUES
(1, 'Independent', '2021-10-10 23:01:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `pos_id` int(11) NOT NULL,
  `pos_name` varchar(50) NOT NULL,
  `pos_noofwinner` int(11) NOT NULL,
  `pos_maxcandidate` int(11) NOT NULL,
  `maxvote` int(11) NOT NULL,
  `date_registered` datetime NOT NULL,
  `election_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pos_id`, `pos_name`, `pos_noofwinner`, `pos_maxcandidate`, `maxvote`, `date_registered`, `election_id`) VALUES
(127, 'Mayor', 1, 2, 1, '2022-03-21 22:20:37', 1),
(128, 'Vice Mayor', 1, 2, 1, '2022-03-21 22:21:03', 1),
(129, 'IT Councilor', 2, 3, 2, '2022-03-21 22:21:26', 1),
(130, 'CS Councilor', 2, 3, 2, '2022-03-21 22:21:44', 1),
(131, 'Mayor', 1, 2, 1, '2022-03-22 11:24:27', 39),
(132, 'Vice Mayor', 1, 2, 1, '2022-03-22 11:24:32', 39),
(133, 'Senator', 2, 2, 2, '2022-03-22 11:26:53', 39);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `sec_id` int(11) NOT NULL,
  `section` varchar(50) NOT NULL,
  `date_registered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`sec_id`, `section`, `date_registered`) VALUES
(7, 'A', '2021-09-21 17:49:43'),
(11, 'B', '2021-09-21 17:50:51'),
(13, 'C', '2021-09-21 17:51:03'),
(16, 'D', '2021-10-19 10:59:05');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(11) NOT NULL,
  `sv_id` varchar(100) NOT NULL,
  `name` varchar(40) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `middle_name` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `course` varchar(40) NOT NULL,
  `year` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `date_registered` datetime NOT NULL,
  `logintype` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `election_id` int(11) NOT NULL,
  `voted` int(50) NOT NULL,
  `con` int(11) NOT NULL,
  `isverified` int(11) NOT NULL,
  `toupdate` int(11) NOT NULL,
  `logincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `sv_id`, `name`, `surname`, `middle_name`, `gender`, `course`, `year`, `section`, `date_registered`, `logintype`, `email`, `password`, `photo`, `election_id`, `voted`, `con`, `isverified`, `toupdate`, `logincode`) VALUES
(751, 'sn201303420', 'Jaydee', 'Ballaho', '', 'male', '2', 1, 7, '2022-03-22 11:15:55', 'personal', 'sn201303420@wmsu.edu.ph', 'Jaydee87', NULL, 39, 1, 0, 1, 1, 3426),
(752, 'gt201900442', 'Munawer', 'Timbang', 'Samsul', 'male', '2', 3, 11, '2022-03-22 11:22:10', 'personal', 'gt201900442@wmsu.edu.ph', '!Munawerpogi1111', '968Photo_inbound3225391824349652858.jpg', 39, 1, 0, 1, 1, 3960),
(753, 'gt201900489', 'JETHRO', 'GUERRERO', 'ASTILLERO', 'male', '2', 3, 11, '2022-03-22 11:23:15', 'personal', 'gt201900489@wmsu.edu.ph', '110100ItsME', NULL, 39, 1, 0, 1, 1, 8458),
(754, 'gt201900487', 'Joylyn', 'Cubile ', 'Montebon ', 'female', '2', 3, 11, '2022-03-22 11:23:29', 'personal', 'gt201900487@wmsu.edu.ph', 'Joy-7h0*', NULL, 39, 1, 0, 1, 1, 5332),
(755, 'gt201900457', 'Alnasib', 'Munari', 'Hamjain', 'male', '2', 3, 11, '2022-03-22 11:23:44', 'personal', 'gt201900457@wmsu.edu.ph', 'Apipmunari1', NULL, 39, 0, 0, 1, 1, 7058),
(756, 'gt201900640', 'Zeena', 'Marquez', '', 'female', '2', 3, 11, '2022-03-22 11:24:00', 'personal', 'gt201900640@wmsu.edu.ph', 'Zeen_0816', NULL, 39, 1, 0, 1, 1, 6202),
(757, 'sm201600101', 'Ckeanu Richer', 'Locson', 'Quezon', 'male', '2', 3, 11, '2022-03-22 11:24:04', 'personal', 'sm201600101@wmsu.edu.ph', 'Ckeanu.locson12', NULL, 39, 1, 0, 1, 1, 4042),
(758, 'sc00533', 'Carvie', 'Adam', 'Delos Reyes', 'female', '2', 3, 11, '2022-03-22 11:27:49', 'personal', 'sc00533@wmsu.edu.ph', '@Carvzkatechanchi925', '936Photo_inbound3977705089063514129.jpg', 39, 1, 0, 1, 1, 5248),
(759, 'bg201802362', 'Iza Jean', 'Abad', 'Awid', 'female', '2', 3, 11, '2022-03-22 11:28:26', 'personal', 'bg201802362@wmsu.edu.ph', '@Zangigurl7', NULL, 39, 1, 0, 1, 1, 2153),
(760, 'lc201700195', 'Jhoemer', 'Muyco', 'Sionomio', 'male', '2', 3, 7, '2022-03-22 11:29:58', 'personal', 'lc201700195@wmsu.edu.ph', 'Lollipop987.', NULL, 39, 1, 0, 1, 1, 6815),
(761, 'gt201900860', 'Erickson Daniel', 'Cabalida', 'Pido', 'male', '2', 3, 11, '2022-03-22 11:30:24', 'personal', 'gt201900860@wmsu.edu.ph', 'WMSU<smcpfe>123', NULL, 39, 1, 0, 1, 1, 7259),
(762, 'gt201900215', 'Rex John', 'Laurente', 'Galvez', 'male', '2', 3, 7, '2022-03-22 11:32:02', 'personal', 'gt201900215@wmsu.edu.ph', 'Boom1531', NULL, 39, 0, 0, 1, 1, 1259),
(763, 'lc201700492', 'Jessa', 'Francisco', 'Manico', 'female', '2', 3, 7, '2022-03-22 11:32:36', 'personal', 'lc201700492@wmsu.edu.ph', 'Francisco03', '479Photo_inbound6327434140564747930.jpg', 39, 1, 0, 1, 1, 1838),
(764, 'gt201900175', 'Rica Jean ', 'Mayormita', 'Villasor', 'female', '2', 3, 7, '2022-03-22 11:33:45', 'personal', 'gt201900175@wmsu.edu.ph', 'Memyselfandi_99', '380Photo_IMG_20211120_181234_958.jpg', 39, 0, 0, 1, 1, 6852),
(765, 'gt201900880', 'Mary Mae', 'Erasga', 'Medallo', 'female', '2', 3, 11, '2022-03-22 11:34:50', 'personal', 'gt201900880@wmsu.edu.ph', 'eabocott', NULL, 39, 0, 1, 1, 1, 0),
(766, 'gt201900347', 'Thirdy', 'Francis', 'None', 'male', '2', 3, 11, '2022-03-22 11:35:38', 'personal', 'gt201900347@wmsu.edu.ph', 'Th09975679496', NULL, 39, 1, 0, 1, 1, 6167),
(767, 'gt201900381', 'Melriss', 'Estrada', 'Apostol ', 'female', '2', 3, 7, '2022-03-22 11:36:43', 'personal', 'gt201900381@wmsu.edu.ph', 'Melriss18', '477Photo_inbound4499317028116094220.webp', 39, 0, 0, 1, 1, 5913),
(768, 'gt201900020', 'Jeus', 'Golero', 'Gacuma', 'male', '2', 3, 7, '2022-03-22 11:37:41', 'personal', 'gt201900020@wmsu.edu.ph', 'GnitovCCS71@', NULL, 39, 0, 0, 1, 1, 5624),
(769, 'gt201901244', 'Norton van ian', 'Lim', 'Tan', 'male', '2', 3, 7, '2022-03-22 11:42:02', 'personal', 'gt201901244@wmsu.edu.ph', 'NortonLim24', NULL, 39, 0, 0, 0, 1, 1772),
(770, 'gt201900353', 'Aaron Christian', 'Melano', 'De Leon ', 'male', '2', 3, 7, '2022-03-22 11:44:19', 'personal', 'gt201900353@wmsu.edu.ph', 'Sanaminatozaki2001', NULL, 39, 0, 0, 0, 1, 2088),
(771, 'sl201500824', 'Chris jonathan', 'Tulabot', 'Hipolito', 'female', '2', 3, 7, '2022-03-22 11:46:14', 'personal', 'sl201500824@wmsu.edu.ph', 'Akotocchris112414!', NULL, 39, 0, 0, 0, 1, 3845),
(772, 'gt201900496', 'Angel', 'Ramillano', 'Maglinte', 'male', '2', 3, 7, '2022-03-22 11:51:36', 'personal', 'gt201900496@wmsu.edu.ph', 'Aa123456', NULL, 39, 0, 0, 0, 1, 6115),
(773, 'bg201803286', 'Jiezel', 'Camlian', 'Alforque', 'female', '1', 4, 7, '2022-03-22 11:55:00', 'personal', 'bg201803286@wmsu.edu.ph', 'Camlian14_WMSU', NULL, 39, 0, 0, 0, 1, 4714),
(774, 'Gt201900423', 'Danny Mae', 'Egido', 'Oximar', 'female', '2', 3, 11, '2022-03-22 11:59:34', 'personal', 'Gt201900423@wmsu.edu.ph', 'diamonD_2020', NULL, 39, 0, 0, 0, 1, 6889),
(775, 'sm201600163', 'Sherica', 'Jaafar', 'Ibrahim', 'female', '1', 4, 7, '2022-03-22 12:14:50', 'personal', 'sm201600163@wmsu.edu.ph', 'Testing123', NULL, 39, 0, 0, 0, 1, 7659),
(776, 'sm201600747', 'REENJAY MAGAAN.', 'CAIMOR', 'm', 'male', '1', 1, 7, '2022-03-22 13:04:15', 'personal', 'sm201600747@wmsu.edu.ph', 'Reenjay17', NULL, 39, 0, 0, 0, 1, 7407);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `tempid` int(11) NOT NULL,
  `ipaddress` varchar(500) NOT NULL,
  `code` varchar(100) NOT NULL,
  `date-visited` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`tempid`, `ipaddress`, `code`, `date-visited`) VALUES
(80, '::1', '35ax8xev', '2021-09-19 12:30:40'),
(81, '2001:4455:538:2900:fc9c:3907:f164:7219', '', '2021-10-30 12:27:29'),
(82, '35.246.65.127', '', '2021-10-30 19:41:33'),
(83, '2001:4455:538:2900:34b7:c552:7327:81b5', '', '2021-10-31 12:36:29'),
(84, '103.234.68.155', '', '2021-10-31 12:46:25'),
(85, '103.234.68.172', '', '2021-10-31 12:47:49'),
(86, '159.65.244.189', '', '2021-10-31 13:54:18'),
(87, '54.225.109.156', '', '2021-11-03 17:16:29'),
(88, '49.149.70.149', '', '2021-11-06 21:24:55'),
(89, '195.146.37.241', '', '2021-11-09 14:50:23'),
(90, '175.176.87.39', '', '2021-11-09 14:53:39'),
(91, '49.149.70.231', '', '2021-11-09 16:37:51'),
(92, '34.254.163.74', '', '2021-11-09 17:29:10'),
(93, '175.176.87.7', 'xdny38i2', '2021-11-09 18:49:09'),
(94, '176.53.216.35', '', '2021-11-10 01:49:46'),
(95, '175.176.83.204', '', '2021-11-10 02:03:10'),
(96, '176.53.223.9', '', '2021-11-10 10:24:08'),
(97, '45.90.60.11', '', '2021-11-11 01:46:11'),
(98, '176.53.218.71', '', '2021-11-11 10:25:39'),
(99, '3.137.201.16', '', '2021-11-16 00:28:04'),
(100, '35.159.0.39', '', '2021-11-16 00:35:48'),
(101, '175.176.87.0', '', '2021-11-16 09:37:59'),
(102, '175.176.87.37', '', '2021-11-16 20:11:50'),
(103, '202.90.152.69', '', '2021-11-16 20:46:34'),
(104, '175.176.87.5', '', '2021-11-17 22:03:29'),
(105, '45.128.160.157', '', '2021-11-18 01:02:51'),
(106, '95.108.213.54', '', '2021-11-18 08:16:11'),
(107, '5.255.253.180', '', '2021-11-18 08:16:33'),
(108, '175.176.87.58', '', '2021-11-18 12:26:43'),
(109, '175.176.87.19', '', '2021-11-19 16:17:25'),
(110, '93.159.230.88', '', '2021-11-19 16:19:07'),
(111, '77.74.177.119', '', '2021-11-19 16:34:47'),
(112, '93.159.230.89', '', '2021-11-19 16:56:38'),
(113, '34.86.35.4', '', '2021-11-19 23:06:45'),
(114, '175.176.87.38', '', '2021-11-23 09:09:18'),
(115, '34.86.35.13', '', '2021-11-24 03:57:09'),
(116, '175.176.87.10', 'gi0ysx8g', '2021-11-25 09:02:14'),
(117, '202.90.152.68', '', '2021-11-25 10:42:31'),
(118, '172.58.40.164', '', '2021-11-25 10:43:23'),
(119, '49.149.70.235', '', '2021-11-25 17:10:54'),
(120, '110.54.250.81', 'rhb3ftd4', '2021-11-26 14:07:50'),
(121, '34.77.162.22', '', '2021-11-27 12:43:32'),
(122, '175.176.87.12', '', '2021-11-27 21:03:28'),
(123, '49.149.66.251', '', '2021-11-28 15:52:37'),
(124, '163.172.180.25', '', '2021-12-02 04:51:30'),
(125, '64.225.26.116', '', '2021-12-03 01:27:18'),
(126, '51.15.195.246', '', '2021-12-04 05:24:43'),
(127, '87.250.224.150', '', '2021-12-04 16:45:40'),
(128, '49.149.77.60', 'uko84bvm', '2022-03-21 17:56:50'),
(129, '49.149.186.16', '', '2022-03-21 18:04:49'),
(130, '175.176.81.46', '2y8xg0kf', '2022-03-21 18:05:00'),
(131, '173.252.95.9', '', '2022-03-21 18:15:06'),
(132, '173.252.95.116', '', '2022-03-21 18:15:07'),
(133, '49.149.64.229', '', '2022-03-21 18:18:53'),
(134, '180.190.77.143', 'axgfticw', '2022-03-21 18:25:39'),
(135, '45.124.58.4', '', '2022-03-21 18:28:34'),
(136, '203.177.59.200', '', '2022-03-21 18:28:34'),
(137, '173.252.95.24', '', '2022-03-21 19:10:00'),
(138, '110.54.185.133', '4ca6td0s', '2022-03-21 19:14:11'),
(139, '175.176.83.10', 'm26rv5v8', '2022-03-21 20:16:30'),
(140, '49.149.70.239', 'kba6pi2r', '2022-03-21 21:49:24'),
(141, '180.194.50.162', '6osevpys', '2022-03-21 22:12:12'),
(142, '110.54.250.37', '', '2022-03-21 23:59:12'),
(143, '49.149.105.114', '', '2022-03-22 00:14:53'),
(144, '49.149.68.183', '', '2022-03-22 00:16:08'),
(145, '167.71.191.1', '', '2022-03-22 01:14:05'),
(146, '203.118.245.37', '', '2022-03-22 02:22:08'),
(147, '110.54.204.175', '', '2022-03-22 07:02:50'),
(148, '49.149.66.76', '', '2022-03-22 07:44:40'),
(149, '49.149.70.147', '', '2022-03-22 08:10:09'),
(150, '130.105.83.216', 'z6b7268o', '2022-03-22 11:10:39'),
(151, '180.194.55.78', '', '2022-03-22 11:19:50'),
(152, '210.185.171.175', 'dix2uejh', '2022-03-22 11:20:30'),
(153, '175.176.81.117', 'ne5cu3ed', '2022-03-22 11:21:07'),
(154, '49.146.44.184', 'fetfakbw', '2022-03-22 11:21:17'),
(155, '49.146.36.199', 'bqhqna0h', '2022-03-22 11:22:13'),
(156, '210.185.188.136', 'y882umvf', '2022-03-22 11:22:25'),
(157, '210.185.185.238', 'pntao0ub', '2022-03-22 11:22:26'),
(158, '180.191.81.144', '5cnnfd4n', '2022-03-22 11:22:36'),
(159, '110.54.206.129', 'eb504xax', '2022-03-22 11:23:03'),
(160, '49.149.25.108', 'edev6puy', '2022-03-22 11:24:16'),
(161, '110.54.170.150', 'mwi7itxc', '2022-03-22 11:24:51'),
(162, '180.194.34.149', 'qtfn5cz4', '2022-03-22 11:25:25'),
(163, '110.54.227.209', '3jd2e2s2', '2022-03-22 11:27:21'),
(164, '175.176.82.247', 'zw6tes8k', '2022-03-22 11:27:23'),
(165, '49.149.78.204', 'cimydkvu', '2022-03-22 11:28:34'),
(166, '49.149.11.119', '7gvcf5jj', '2022-03-22 11:28:50'),
(167, '110.54.227.146', 'd3nyyewc', '2022-03-22 11:29:20'),
(168, '175.176.82.253', 'hbcmuzs7', '2022-03-22 11:32:08'),
(169, '49.149.73.249', 'rjk6ky6s', '2022-03-22 11:33:32'),
(170, '49.149.233.166', 'if8ncntf', '2022-03-22 11:33:56'),
(171, '175.176.87.31', 'q6hih6rz', '2022-03-22 11:35:17'),
(172, '110.54.226.74', '', '2022-03-22 11:36:00'),
(173, '110.54.168.62', '', '2022-03-22 11:36:30'),
(174, '209.146.16.4', '', '2022-03-22 11:36:42'),
(175, '180.194.122.238', '5fngxv3x', '2022-03-22 11:42:39'),
(176, '1.37.81.64', 'ngppt6b2', '2022-03-22 11:44:53'),
(177, '175.176.81.201', 'zrfkf4cv', '2022-03-22 11:50:32'),
(178, '49.149.102.158', 'm004r83v', '2022-03-22 11:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `temp_votes`
--

CREATE TABLE `temp_votes` (
  `tmpvote_id` int(11) NOT NULL,
  `sv_id` int(11) NOT NULL,
  `posid` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `vote` int(11) DEFAULT NULL,
  `voters` mediumtext DEFAULT NULL,
  `advocacy` longtext NOT NULL,
  `partylist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp_votes`
--

INSERT INTO `temp_votes` (`tmpvote_id`, `sv_id`, `posid`, `election_id`, `vote`, `voters`, `advocacy`, `partylist`) VALUES
(168, 704, 127, 1, 6, '721,721,22,22,14,14,', '\r\n              ', 1),
(169, 696, 127, 1, 8, '722,696,720,720,534,534,18,18,', '\r\n              ', 1),
(170, 722, 128, 1, 6, '722,696,696,22,14,18,', '\r\n              ', 1),
(171, 14, 128, 1, 4, '721,720,534,534,', '\r\n              ', 1),
(172, 22, 129, 1, 8, '696,22,14,14,534,534,18,18,', '\r\n              ', 1),
(173, 18, 129, 1, 5, '696,720,721,14,14,', '\r\n              ', 1),
(174, 721, 129, 1, 7, '722,722,720,721,22,18,18,', '\r\n              ', 1),
(175, 534, 130, 1, 13, '722,722,696,720,721,22,22,14,14,534,534,18,18,', '\r\n              ', 1),
(176, 19, 130, 1, 4, '696,696,721,14,', '\r\n              ', 1),
(177, 720, 130, 1, 6, '722,722,720,22,18,18,', 'To lead. ', 1),
(178, 754, 131, 39, 17, '756,756,752,752,757,751,751,761,763,763,753,753,760,758,758,767,767,', 'Tara laban!', 1),
(179, 753, 131, 39, 4, '759,759,754,754,', 'Pak na Pak!', 1),
(180, 757, 132, 39, 12, '759,756,752,752,751,751,761,754,753,763,758,758,', 'Okay G!', 1),
(181, 752, 132, 39, 5, '760,757,757,766,767,', 'Tra ML!', 1),
(182, 755, 133, 39, 4, '752,753,753,758,', 'G!', 1),
(183, 751, 133, 39, 15, '760,760,759,759,756,757,752,752,751,761,754,763,753,758,', 'Dotes na dotes!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `yearid` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`yearid`, `year`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `adviser`
--
ALTER TABLE `adviser`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `election_sched`
--
ALTER TABLE `election_sched`
  ADD PRIMARY KEY (`election_id`);

--
-- Indexes for table `partylist`
--
ALTER TABLE `partylist`
  ADD PRIMARY KEY (`party_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sec_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `temp_votes`
--
ALTER TABLE `temp_votes`
  ADD PRIMARY KEY (`tmpvote_id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`yearid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adviser`
--
ALTER TABLE `adviser`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `election_sched`
--
ALTER TABLE `election_sched`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `partylist`
--
ALTER TABLE `partylist`
  MODIFY `party_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `sec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=777;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `temp_votes`
--
ALTER TABLE `temp_votes`
  MODIFY `tmpvote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `yearid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
