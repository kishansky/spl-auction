-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 27, 2024 at 03:13 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u533246364_spl`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `amount` decimal(4,2) NOT NULL,
  `pre_team_id` int(11) DEFAULT NULL,
  `pre_amount` decimal(4,2) DEFAULT NULL,
  `is_sold` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`id`, `player_id`, `team_id`, `amount`, `pre_team_id`, `pre_amount`, `is_sold`, `status`) VALUES
(1, 38, 2, '16.00', NULL, NULL, 0, 0),
(2, 64, 5, '16.00', NULL, NULL, 0, 0),
(3, 65, 4, '16.00', NULL, NULL, 0, 0),
(4, 91, 3, '16.00', NULL, NULL, 0, 0),
(5, 93, 1, '16.00', NULL, NULL, 0, 0),
(6, 9, 5, '8.00', 5, '8.00', 1, 0),
(7, 33, 1, '4.80', 1, '4.80', 1, 0),
(8, 23, 4, '2.80', 4, '2.80', 1, 0),
(9, 48, 4, '2.20', 4, '2.20', 1, 0),
(10, 21, 5, '2.40', 5, '2.40', 1, 0),
(11, 71, 3, '3.60', 5, '3.30', 1, 0),
(12, 96, 5, '1.50', 3, '1.40', 1, 0),
(13, 60, 4, '5.40', 4, '5.40', 1, 0),
(14, 35, 1, '0.50', 1, '0.50', 1, 0),
(15, 69, 5, '0.50', 5, '0.50', 1, 0),
(16, 45, 3, '4.30', 3, '4.30', 1, 0),
(17, 15, 3, '6.00', 3, '6.00', 1, 0),
(18, 50, 5, '2.10', 5, '2.10', 1, 0),
(19, 87, 3, '6.20', 3, '6.20', 1, 0),
(20, 51, 5, '7.00', 5, '7.00', 1, 0),
(21, 67, 4, '1.10', 4, '1.10', 1, 0),
(22, 98, 5, '3.40', 5, '3.40', 1, 0),
(23, 108, 5, '4.10', 5, '4.10', 1, 0),
(24, 49, 1, '5.20', 1, '5.20', 1, 0),
(25, 31, 2, '0.20', 2, '0.20', 1, 0),
(26, 17, 3, '0.20', 2, '0.20', 1, 0),
(27, 112, 4, '7.20', 4, '7.20', 1, 0),
(28, 76, 1, '1.00', 4, '0.50', 1, 0),
(29, 97, 1, '1.60', 1, '1.60', 1, 0),
(30, 44, 4, '0.50', 4, '0.50', 2, 0),
(31, 27, 2, '0.50', 2, '0.50', 1, 0),
(32, 107, 1, '2.20', 1, '2.20', 1, 0),
(33, 10, 4, '3.40', 4, '3.40', 1, 0),
(34, 86, 4, '2.40', 4, '2.40', 1, 0),
(35, 73, 1, '2.10', 1, '2.10', 1, 0),
(36, 103, 3, '21.00', 3, '21.00', 1, 0),
(37, 42, 2, '28.20', 2, '28.20', 1, 0),
(38, 20, 2, '2.20', 2, '1.50', 1, 0),
(39, 74, 4, '3.10', 2, '1.50', 1, 0),
(40, 5, 1, '30.80', 1, '30.80', 1, 0),
(41, 68, 1, '5.80', 5, '6.00', 1, 0),
(42, 81, 4, '27.40', 5, '27.60', 1, 0),
(43, 47, 5, '18.00', 2, '17.40', 1, 0),
(44, 22, 5, '18.00', 5, '18.00', 1, 0),
(45, 43, 2, '7.60', 1, '7.40', 1, 0),
(46, 53, 5, '0.20', 2, '0.20', 1, 0),
(47, 37, 5, '0.20', 5, '0.20', 2, 0),
(48, 101, 5, '0.20', NULL, NULL, 0, 0),
(49, 70, 5, '0.30', 4, '0.20', 1, 0),
(50, 39, 1, '2.10', 1, '2.10', 1, 0),
(51, 28, 3, '0.20', 0, '0.20', 1, 0),
(52, 88, 3, '0.20', 0, '0.20', 1, 0),
(53, 75, 1, '0.20', NULL, NULL, 0, 0),
(54, 85, 4, '0.60', 2, '0.20', 1, 0),
(55, 18, 4, '0.30', 2, '0.20', 1, 0),
(56, 29, 2, '7.20', 2, '4.30', 1, 0),
(57, 46, 4, '13.00', 4, '13.00', 1, 0),
(58, 90, 3, '12.40', 3, '12.40', 1, 0),
(59, 82, 3, '18.00', 3, '18.00', 1, 0),
(60, 7, 1, '2.70', 1, '2.70', 1, 0),
(61, 36, 1, '1.60', 4, '1.50', 1, 0),
(62, 84, 2, '11.00', 2, '8.20', 1, 0),
(63, 105, 5, '2.40', 5, '2.30', 1, 0),
(64, 16, 1, '6.00', 1, '6.00', 1, 0),
(65, 19, 4, '2.40', 4, '2.00', 1, 0),
(66, 30, 4, '0.50', 4, '0.50', 1, 0),
(67, 40, 4, '0.50', NULL, NULL, 0, 0),
(68, 61, 2, '2.10', 2, '2.10', 1, 0),
(69, 72, 2, '1.00', 2, '1.00', 2, 0),
(70, 24, 5, '1.00', NULL, NULL, 0, 0),
(71, 63, 3, '1.00', 4, '1.00', 1, 0),
(72, 59, 2, '1.00', NULL, NULL, 0, 0),
(73, 92, 1, '1.00', 2, '1.00', 1, 0),
(74, 62, 2, '0.50', NULL, NULL, 0, 0),
(75, 34, 2, '0.50', 2, '0.50', 1, 0),
(76, 79, 2, '4.80', 4, '2.00', 1, 0),
(77, 106, 3, '0.50', 2, '0.50', 1, 0),
(78, 80, 5, '0.50', 2, '0.50', 1, 0),
(79, 11, 5, '0.50', NULL, NULL, 0, 0),
(80, 78, 2, '4.00', NULL, NULL, 0, 0),
(81, 6, 4, '0.50', 2, '0.50', 1, 0),
(82, 77, 5, '2.30', 4, '2.00', 1, 0),
(83, 14, 1, '0.70', NULL, NULL, 0, 0),
(84, 104, 1, '5.00', NULL, NULL, 0, 0),
(85, 13, 1, '5.00', 2, '2.00', 1, 0),
(86, 58, 2, '0.20', NULL, NULL, 0, 0),
(87, 83, 2, '0.30', NULL, NULL, 0, 0),
(88, 110, 3, '0.20', 2, '0.20', 1, 0),
(89, 109, 3, '0.20', 3, '0.20', 1, 0),
(90, 111, 4, '0.40', NULL, NULL, 0, 0),
(91, 102, 4, '1.00', 4, '1.00', 1, 0),
(92, 8, 2, '1.00', NULL, NULL, 0, 0),
(93, 26, 3, '1.00', 4, '1.00', 1, 0),
(94, 12, 5, '1.00', 5, '1.00', 1, 0),
(95, 66, 2, '1.40', NULL, NULL, 0, 0),
(96, 39, 1, '2.00', NULL, NULL, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `username`, `password`) VALUES
(1, 'msdhoni', 'eb2580a44b00239136a0863ea2ad1542');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `info`) VALUES
(1, 'Sachin Kumar Release by Sakra super king 2.00cr.');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `p_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `address` varchar(55) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `photo` varchar(55) NOT NULL,
  `f_adhar` varchar(55) NOT NULL,
  `b_adhar` varchar(55) NOT NULL,
  `role` int(1) NOT NULL,
  `style` int(1) NOT NULL,
  `islocal` tinyint(1) NOT NULL,
  `previous_team` int(1) DEFAULT NULL,
  `next_team` int(1) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 0,
  `base_price` decimal(4,2) NOT NULL,
  `round` int(11) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`p_id`, `name`, `address`, `email`, `phone`, `photo`, `f_adhar`, `b_adhar`, `role`, `style`, `islocal`, `previous_team`, `next_team`, `date`, `status`, `base_price`, `round`, `sold`) VALUES
(5, 'Ajit Raina ', 'Mairwa tola sakra', 'ajitraina05@gmail.com', 8809167977, '1704072973-448.jpg', '1704072973-201.jpg', '1704072973-532.jpg', 2, 2, 0, 4, 4, '2024-01-01 01:36:13', 1, '2.00', 1, 1),
(6, 'Jadeja', 'Nawkatola ', 'mobilehello284@gmail.com', 9955696275, '1704074602-229.jpg', '1704074602-191.jpg', '1704074602-175.jpg', 3, 1, 0, 2, 2, '2024-01-01 02:03:22', 1, '0.50', 12, 1),
(7, 'AMAN KOHLI', 'VILLAGE INDARWA POST RATASIA KOTHI DISTRICT DEORIA UP', 'aman274703@gmail.com', 9129380324, '1707714079-245.jpg', '1704077430-937.jpg', '1704077430-246.jpg', 3, 1, 1, 0, 3, '2024-01-01 02:50:30', 0, '2.00', 2, 1),
(8, 'Rakesh kumar', 'Mairwa tola sakra', 'guptarakeshkumar38@gmail.com', 9199112292, '1704083260-310.jpg', '1704083260-243.jpg', '1704083260-984.jpg', 1, 1, 0, 4, 1, '2024-01-01 04:27:40', 0, '1.00', 8, 1),
(9, 'Gautam Kumar', 'Mairwa tola sakra', 'sonumw11@gmail.com', 6200306314, '1704085218-945.jpg', '1704085218-163.jpg', '1704085218-206.jpg', 1, 1, 0, 4, 4, '2024-01-01 05:00:18', 1, '1.00', 7, 1),
(10, 'Krishna', 'Mairwa tola sakra', 'skrishnakumar474@gmail.com', 8618515678, '1704085397-427.jpg', '1704085397-754.jpg', '1704085397-974.jpg', 2, 1, 0, 4, 1, '2024-01-01 05:03:17', 0, '0.20', 14, 1),
(11, 'ANOOP KUMAR ', 'Mairwa tola sakara ', 'anoopkr9931@gmail.com', 9661351315, '1704092834-771.jpg', '1704092834-453.jpg', '1704092834-731.jpg', 2, 1, 0, 3, 3, '2024-01-01 07:07:14', 0, '0.50', 12, 1),
(12, 'Abhishek yadav ', 'Basopatti ', 'ay3711285@gmail.com', 9569107843, '1704118527-307.jpg', '1704118527-401.jpg', '1704118527-535.jpg', 1, 1, 1, 0, 4, '2024-01-01 14:15:27', 1, '1.00', 8, 1),
(13, 'Monu mental', 'Mairwa', 'monu736604@gmail.com', 9955599882, '1704166461-598.jpg', '1704166461-576.jpg', '1704166461-323.jpg', 4, 1, 0, 1, 1, '2024-01-02 03:34:21', 0, '2.00', 3, 1),
(14, 'Sk Gandhi ', 'Mairwa Tola Sakra', 'skgandhi10807@gmail.com', 8709307331, '1704267067-364.jpg', '1704267067-266.jpg', '1704267067-500.jpg', 1, 1, 0, 1, 1, '2024-01-03 07:31:07', 0, '0.50', 12, 1),
(15, 'Aman maddeshiya', 'Nai bazar mairwa', 'amanmaddeshiya880@gmail.com', 8804405601, '1704269805-602.jpg', '1704269805-296.jpg', '1704269805-386.jpg', 1, 1, 0, 3, 2, '2024-01-03 08:16:45', 1, '1.50', 6, 1),
(16, 'Bittu maddheshiya ', 'Mawka tola mairwa ', 'bittumaddheshiye@gmail.com', 6201624044, '1704270216-259.jpg', '1704270216-149.jpg', '1704270216-82.jpg', 3, 1, 0, 0, 5, '2024-01-03 08:23:36', 0, '1.50', 5, 1),
(17, 'Ankit', 'Chafwa kala', 'ay8760593@gmail.com', 9369904459, '1704274226-770.jpg', '1704274226-359.jpg', '1704274226-449.jpg', 2, 2, 1, 0, 1, '2024-01-03 09:30:26', 0, '0.20', 14, 1),
(18, 'Rohit Rai ', 'Nawkatola, Mairwa ', 'rohitr8277@gmail.com', 9661422369, '1707568445-852.jpg', '1704293249-196.jpg', '1704293249-993.jpg', 2, 1, 0, 0, 3, '2024-01-03 14:47:29', 1, '0.20', 15, 1),
(19, 'Pradeep Kumar ', 'Bauliya pandey ', 'pradeepkumar7081686457@gmail.com', 6386947475, '1704346230-624.jpg', '1704346230-566.jpg', '1704346230-967.jpg', 2, 1, 1, 0, 4, '2024-01-04 05:30:30', 1, '2.00', 2, 1),
(20, 'Aditya Kumar Giri ', 'Bargaon ', 'adityakumar785682@gmail.com', 7856821836, '1706628033-188.jpg', '1704358665-462.jpg', '1704358665-854.jpg', 2, 1, 1, 1, 1, '2024-01-04 08:57:45', 1, '1.50', 4, 1),
(21, 'SANDEEP RAKAK', 'NAWKA TOLA ', 'sandeepkumarrajak1989@gmail.com', 9708920238, '1704423516-234.jpg', '1704423516-286.jpg', '1704423516-58.jpg', 2, 1, 0, 2, 2, '2024-01-05 02:58:36', 1, '1.00', 7, 1),
(22, 'Satyendra Kumar ', 'Banakata ', 'sksgkp8512@gmail.com', 9792608279, '1704426845-237.jpg', '1704426845-391.jpg', '1704426845-510.jpg', 3, 1, 1, 2, 1, '2024-01-05 03:54:05', 0, '2.00', 1, 1),
(23, 'Bittu Kumar ', 'Chitrasen banakata ', 'bittushah0018@gmail.com', 8528577672, '1704431726-722.jpg', '1704431726-496.jpg', '1704431726-208.jpg', 2, 1, 1, 4, 1, '2024-01-05 05:15:26', 1, '1.00', 7, 1),
(24, 'ABHISHEK KUMAR ', 'bargaon', 'abhishekkr746298@gmail.com', 9199274812, '1704435226-114.jpg', '1704435226-356.jpg', '1704435226-759.jpg', 2, 2, 1, 2, 3, '2024-01-05 06:13:46', 1, '1.00', 9, 1),
(25, 'ABHISHEK KOHLI', 'Siwan ', 'abhishekkumar@gmail.com', 7763832515, '1704435714-931.jpg', '1704435714-248.jpg', '1704435714-333.jpg', 2, 1, 0, 0, 2, '2024-01-05 06:21:54', 0, '0.20', 0, 0),
(26, 'Sujit kumar ', 'Chitrasen banakat', 'sksujit8292@gmail.com', 6204200858, '1704447478-886.jpg', '1704447478-120.jpg', '1704447478-887.jpg', 2, 2, 1, 4, 4, '2024-01-05 09:37:58', 1, '1.00', 8, 1),
(27, 'Vishwa kumar ', 'Chitrasen banakata ', 'vishalkrkumar231@gmail.com', 9112556766, '1704454637-232.jpg', '1704454637-648.jpg', '1704454637-753.jpg', 2, 2, 1, 2, 2, '2024-01-05 11:37:17', 1, '0.50', 10, 1),
(28, 'ANKIT KUMAR YADAV ', 'ViLL+POST=BARGAON', 'ankitkry8413@gmail.com', 9572164137, '1704509989-599.jpg', '1704509989-391.jpg', '1704509989-560.jpg', 4, 1, 1, 0, 3, '2024-01-06 02:59:49', 1, '0.20', 16, 1),
(29, 'Kundan singh', 'Maidaniya', 'kundan07gkp@gmail.com', 9170226221, '1704524827-483.jpg', '1704524827-426.jpg', '1704524827-616.jpg', 2, 1, 1, 0, 2, '2024-01-06 07:07:07', 1, '2.00', 2, 1),
(30, 'Pappu kumar', 'Sundarpar Gwal', 'pappu720230@gmail.com', 9682226877, '1706962897-585.jpg', '1704533935-242.jpg', '1704533935-372.jpg', 1, 1, 1, 0, 3, '2024-01-06 09:38:55', 1, '0.50', 11, 1),
(31, 'ANJANI BIND', 'Trilokpur nahara aurai bhadohi 221301', 'bindomkumar83@gmail.com', 6307200837, '1704553635-672.jpg', '1704553635-227.jpg', '1704553635-483.jpg', 2, 1, 1, 0, 3, '2024-01-06 15:07:15', 0, '0.20', 17, 1),
(32, 'Rohit kumar', 'Inguri saray ', 'rohitkumarprasad323@gmail.com', 8957272516, '1704592880-565.jpg', '1704592880-899.jpg', '1704592880-91.jpg', 4, 2, 1, 0, 1, '2024-01-07 02:01:20', 0, '0.20', 20, 0),
(33, 'Pawan  Kumar ', 'Medniya ', 'pawankumarsahni1234h@gmail.com', 8969756848, '1704599460-556.jpg', '1704599460-82.jpg', '1704599460-410.jpg', 1, 1, 1, 3, 3, '2024-01-07 03:51:00', 1, '1.00', 7, 1),
(34, 'Amarjeet kumar ', 'Medniya ', 'amarjeetkumar81773@gmail.com', 7461975642, '1704681480-638.jpg', '1704681480-312.jpg', '1704681480-902.jpg', 1, 1, 1, 1, 1, '2024-01-08 02:38:00', 1, '0.50', 11, 1),
(35, 'Abhishek Kumar ', 'Chitrasen banakata ', 'abhishek9931566280.@gmail.com', 6392397390, '1704686982-652.jpg', '1704686982-68.jpg', '1704686982-803.jpg', 1, 1, 1, 1, 1, '2024-01-08 04:09:42', 1, '0.50', 13, 1),
(36, 'Abhijeet Kumar (BITTU YADAV)', 'Village+ post : Bargoan,, police station: Mairwa ', 'rajabhi1051@gmail.com', 7091531966, '1704806873-839.jpg', '1704806873-895.jpg', '1704806873-404.jpg', 4, 1, 1, 0, 2, '2024-01-09 13:27:53', 1, '1.50', 5, 1),
(37, 'Vikash Kumar shah', 'Chitrasen banakata ', 'vikashkumarmw96@gmail.com', 9569298276, '1704817325-727.jpg', '1704817325-48.jpg', '1704817325-938.jpg', 1, 1, 1, 1, 1, '2024-01-09 16:22:05', 1, '0.20', 16, 2),
(38, 'Akshay kumar (C)', 'Sakara', 'akshay.com7800@gmail.com', 8294552749, '1704945836-85.jpg', '1704945836-522.jpg', '1704945836-764.jpg', 2, 1, 0, 2, 2, '2024-01-11 04:03:56', 1, '2.00', 22, 3),
(39, 'Sachin Kumar ', 'Mairwa tola sakra ', 'sachinkumarsingh3322@gmail.com', 8789208743, '1705059645-583.jpg', '1705059645-406.jpg', '1705059645-262.jpg', 1, 1, 0, 4, 4, '2024-01-12 11:40:45', 1, '0.20', 15, 1),
(40, 'Rana', 'Maidhniya', 'ranaprataps906@gmail.com', 8252148487, '1705077953-549.jpg', '1705077953-799.jpg', '1705077953-990.jpg', 2, 1, 1, 1, 1, '2024-01-12 16:45:53', 0, '0.50', 11, 2),
(41, 'Vikash Kumar ', 'Pukhrera ', 'mohanraja744@gmail.com', 7905045561, '1705226004-316.jpg', '1705226004-580.jpg', '1705226004-674.jpg', 1, 1, 0, 5, 1, '2024-01-14 09:53:24', 0, '0.20', 0, 0),
(42, 'Sujeet singh', 'Vill babhanauli PS mairwa dis siwan', 'sujeetsingh05051994@gmail.com', 9934091316, '1705293363-314.jpg', '1705293363-94.jpg', '1705293363-616.jpg', 2, 1, 1, 0, 2, '2024-01-15 04:36:03', 0, '2.00', 1, 1),
(43, 'RAJKUMAAR RAO', 'Village gwal', 'rajk558078@gmail.com', 9523686987, '1705304608-142.jpg', '1705304608-879.jpg', '1705304608-774.jpg', 4, 1, 1, 1, 3, '2024-01-15 07:43:28', 1, '1.50', 4, 1),
(44, 'Mansingh Yadav', 'Bargaon,Mairwa', 'yadavmansingh153@gmail.com', 6201772647, '1705408779-519.jpg', '1705408779-4.jpg', '1705408779-877.jpg', 2, 1, 1, 1, 1, '2024-01-16 12:39:39', 1, '0.50', 10, 2),
(45, 'Sunny yadav', 'Vill+post=Bargaon,siwan,Bihar', 'sunnykumaryadav9508@gmail.com', 8292604219, '1705415880-498.jpg', '1705415880-849.jpg', '1705415880-403.jpg', 1, 1, 1, 2, 2, '2024-01-16 14:38:00', 1, '1.50', 6, 1),
(46, 'PAVAN KUMAR SINGH', 'Mairwa tola sakra', 'poojakumari7061648983@gmail.com', 7061648983, '1707723714-653.jpg', '1705553938-88.jpg', '1705553938-176.jpg', 2, 1, 0, 0, 2, '2024-01-18 04:58:58', 0, '2.00', 2, 1),
(47, 'Anubhav Kumar ', 'Motichhapr mairwa ', 'anuabhi474@gmail.com', 9508363031, '1705751610-681.jpg', '1705751610-575.jpg', '1705751610-780.jpg', 2, 1, 0, 1, 1, '2024-01-20 11:53:30', 0, '2.00', 1, 1),
(48, 'Gyanendra Mishra', 'Sundarpar mishrauli', 'gyanendramishra053@gmail.com', 9795146824, '1705833832-221.jpg', '1705833832-465.jpg', '1705833832-815.jpg', 2, 1, 1, 0, 3, '2024-01-21 10:43:52', 0, '0.50', 13, 1),
(49, 'Jay Maxwell ', 'Nawkatola', 'jaykumaryadavmaxwell@gmail.com', 8797355057, '1705838588-4.jpg', '1705838588-561.jpg', '1705838588-371.jpg', 2, 1, 0, 0, 1, '2024-01-21 12:03:08', 1, '1.50', 6, 1),
(50, 'Nikhil Kumar ', 'Bhopatpura mairwa ', 'nikhilkumarmw@gmail.com', 8825126452, '1705915726-542.jpg', '1705915726-414.jpg', '1705915726-618.jpg', 2, 1, 1, 3, 3, '2024-01-22 09:28:48', 1, '1.50', 6, 1),
(51, 'Chandrabhan Kumar ', 'Mairwa tola sakra ', 'chandrabhank1503@gmail.com', 7250414010, '1705994818-79.jpg', '1705994818-930.jpg', '1705994818-615.jpg', 2, 1, 0, 0, 1, '2024-01-23 07:26:58', 0, '0.20', 17, 1),
(53, 'Vicky chaurasiya ', 'Sakra ', 'vickychaurasiya221@gmail.com', 8804223301, '1705996788-992.jpg', '1705996788-902.jpg', '1705996788-230.jpg', 1, 1, 0, 2, 2, '2024-01-23 07:59:48', 0, '0.20', 15, 1),
(54, 'Dhananjay patel', 'Nawkatola', 'pateldhananjay33@gmail.com', 9771211938, '1705997607-350.jpg', '1705997607-767.jpg', '1705997607-775.jpg', 2, 1, 0, 3, 3, '2024-01-23 08:13:27', 0, '0.20', 0, 0),
(56, 'Munna Kumar ', 'Vill. Navkatola mairwa ', 'munnakumar1121998@gmail.com', 8292113666, '1706004393-737.jpg', '1706004393-413.jpg', '1706004393-119.jpg', 2, 1, 0, 1, 1, '2024-01-23 10:06:33', 0, '0.20', 20, 0),
(57, 'Nitish Rana ', 'Mairwa tola sakra ', 'nnnnnrrrr77@gmail.com', 9199913476, '1706011008-556.jpg', '1706011008-151.jpg', '1706011008-253.jpg', 2, 1, 0, 4, 4, '2024-01-23 11:56:48', 1, '2.00', 20, 0),
(58, 'rahul gupta', 'station chowk mairwa', 'rahulgupta56555@gmail.com', 7033211611, '1706017788-312.jpg', '1706017788-560.jpg', '1706017788-621.jpg', 1, 1, 0, 2, 2, '2024-01-23 13:49:48', 0, '0.20', 18, 1),
(59, 'Vishal Kumar ', 'Mairwa tola sakra', 'vishalmw1234@gmail.com', 6200641565, '1706040277-846.jpg', '1706040277-975.jpg', '1706040277-974.jpg', 1, 1, 0, 5, 5, '2024-01-23 20:04:37', 0, '1.00', 9, 1),
(60, 'AARIF ANSARI ', 'Vill dasnarhiya', 'arifansarid1234@gmail.com', 6306757318, '1706081036-634.jpg', '1706081036-167.jpg', '1706081036-876.jpg', 3, 2, 1, 0, 3, '2024-01-24 07:23:56', 0, '0.50', 13, 1),
(61, 'Divyanshu Raj', 'Pran Garhi, Mairwa', 'divyanshuraj11b7964@gmail.com', 7762976043, '1706087460-835.jpg', '1706087460-784.jpg', '1706087460-44.jpg', 2, 1, 0, 0, 1, '2024-01-24 09:11:00', 0, '1.00', 9, 1),
(62, 'Nitish maddheshiya', 'Nai bazar mairwa', 'nitishmaddheshiya52@gmail.com', 6201533219, '1706108868-11.jpg', '1706108868-926.jpg', '1706108868-631.jpg', 1, 1, 0, 0, 1, '2024-01-24 15:07:48', 0, '0.50', 11, 1),
(63, 'Vivek Kumar Singh ', 'Maidniya', 'vks0009129@gmail.com', 9129439352, '1706157077-485.jpg', '1706157077-978.jpg', '1706157077-721.jpg', 3, 1, 1, 0, 1, '2024-01-25 04:31:17', 1, '1.00', 9, 1),
(64, 'Sawan (C)', 'Sakara', 'sharvanmw12@gmail.com', 7632083318, '1706160244-607.jpg', '1706160244-583.jpg', '1706160244-441.jpg', 2, 2, 0, 0, 1, '2024-01-25 05:24:04', 0, '2.00', 22, 3),
(65, 'Rohit maxx (C)', 'Sakara', 'rkhero8651@gmail.com', 8651576609, '1706160636-984.jpg', '1706160636-941.jpg', '1706160636-975.jpg', 2, 1, 0, 0, 4, '2024-01-25 05:30:36', 0, '2.00', 22, 3),
(66, 'Dhananjay Kumar ', 'Mairwa tola sakra ', 'kdhannjay2@gmail.com', 9162874539, '1706160898-541.jpg', '1706160898-850.jpg', '1706160898-984.jpg', 3, 1, 0, 4, 4, '2024-01-25 05:34:58', 0, '1.00', 8, 1),
(67, 'Mukesh kuamr', 'Mairwa tola sakra', 'mukeshkumarbabu54321@gmail.com', 7482942318, '1706161154-892.jpg', '1706161154-867.jpg', '1706161154-611.jpg', 1, 1, 0, 1, 1, '2024-01-25 05:39:14', 0, '0.20', 17, 1),
(68, 'BIRENDRA TIWARI ', 'At  vill  bhatwaliya pandey ', 'birendratiwari77@gmail.com', 9473669972, '1706161738-700.jpg', '1706161738-21.jpg', '1706161738-991.jpg', 4, 1, 1, 0, 2, '2024-01-25 05:48:58', 1, '1.50', 4, 1),
(69, 'Bharat bhuwal', 'Badgaon ', 'bgond7995@gmail.com', 8235056910, '1706164653-84.jpg', '1706164653-275.jpg', '1706164653-119.jpg', 1, 1, 1, 0, 3, '2024-01-25 06:37:33', 1, '0.50', 13, 1),
(70, 'Anshu kumar', 'Motichhpar mairwa', 'anshuk2047@gmail.com', 9304518397, '1706173360-460.jpg', '1706173360-804.jpg', '1706173360-678.jpg', 1, 1, 0, 4, 4, '2024-01-25 09:02:40', 1, '0.20', 15, 1),
(71, 'Ashish', 'Mairwa', 'yesiamashishranjan@gmail.com', 7488449344, '1706174888-837.jpg', '1706174888-582.jpg', '1706174888-355.jpg', 2, 1, 0, 3, 3, '2024-01-25 09:28:08', 1, '1.00', 7, 1),
(72, 'AMLESH KUMAR GIRI', 'Vill bargaon', 'amleshgiri356@gmail.com', 9692063766, '1706175241-570.jpg', '1706175241-853.jpg', '1706175241-199.jpg', 2, 1, 1, 0, 4, '2024-01-25 09:34:01', 1, '1.00', 9, 2),
(73, 'MANISH KUMAR', 'MOTICHHAPAR MAIRWA', 'vikashkumae2012@gmail.com', 8092268652, '1706196268-872.jpg', '1706196268-631.jpg', '1706196268-839.jpg', 2, 1, 0, 0, 1, '2024-01-25 15:24:28', 1, '0.50', 10, 1),
(74, 'Rajan Kumar', 'Mairwa tola sakra', 'rajankumarmw0123@gmail.com', 9016247303, '1706204568-152.jpg', '1706204568-73.jpg', '1706204568-560.jpg', 2, 1, 0, 0, 3, '2024-01-25 17:42:48', 1, '1.50', 4, 1),
(75, 'Aditya Kumar', 'Sakra Mairwa ', 'a85773355@gmail.com', 8577000549, '1706237404-506.jpg', '1706237404-933.jpg', '1706237404-439.jpg', 3, 1, 0, 1, 1, '2024-01-26 02:50:04', 1, '0.20', 15, 1),
(76, 'Golu Kumar ', 'Nawkatola ', 'goluabd1717@gmail.com', 7632859917, '1706248595-572.jpg', '1706248595-689.jpg', '1706248595-770.jpg', 1, 1, 0, 5, 5, '2024-01-26 05:56:35', 0, '0.50', 10, 1),
(77, 'Shubham Singh rajput ', 'Barkha manjhe ', 'shubhamsinghrajput685@gmail.com', 7322851647, '1706253624-329.jpg', '1706253624-406.jpg', '1706253624-562.jpg', 2, 1, 1, 0, 1, '2024-01-26 07:20:24', 0, '2.00', 3, 1),
(78, 'Hritik kumar ', 'Sakra', 'khritik843@gmail.com', 9523844374, '1706259973-382.jpg', '1706259973-858.jpg', '1706259973-64.jpg', 2, 1, 0, 3, 3, '2024-01-26 09:06:13', 0, '2.00', 3, 1),
(79, 'Upendra Kumar ', 'Mairwa tola sakra', 'uk77531@gmail.com', 7050259222, '1706263908-69.jpg', '1706263908-520.jpg', '1706263908-488.jpg', 2, 1, 0, 0, 1, '2024-01-26 10:11:48', 0, '2.00', 3, 1),
(80, 'Kushal Kumar', 'Mairwa tola sakra', 'kishan6436@gmail.com', 6287350189, '1706266467-746.jpg', '1706266467-15.jpg', '1706266467-46.jpg', 2, 1, 0, 0, 4, '2024-01-26 10:54:27', 0, '0.50', 12, 1),
(81, 'Gill ', 'Mairwa tola sakra', 'kgill77n@gmail.com', 7050998004, '1707719880-91.jpg', '1706271856-113.jpg', '1706271856-895.jpg', 2, 1, 0, 2, 2, '2024-01-26 12:24:16', 0, '2.00', 1, 1),
(82, 'Raja Kumar Mishra ', 'Nawkatola ', 'rajamishra54754@gmail.com', 9065119649, '1706275146-796.jpg', '1706275146-351.jpg', '1706275146-250.jpg', 3, 2, 0, 3, 3, '2024-01-26 13:19:06', 1, '2.00', 2, 1),
(83, 'Shivam dekock ', 'Mairwa tola sakra ', 'shivampathak0133@gmail.com', 8969626798, '1706277094-713.jpg', '1706277094-949.jpg', '1706277094-730.jpg', 1, 1, 0, 3, 3, '2024-01-26 13:51:34', 0, '0.20', 18, 1),
(84, 'Nitesh Kumar', 'Nimiyatola', 'niteshmwshah763489@gmail.com', 9801319368, '1706278619-165.jpg', '1706278619-389.jpg', '1706278619-680.jpg', 4, 1, 0, 2, 2, '2024-01-26 14:16:59', 0, '1.50', 5, 1),
(85, 'Sumit Kumar', 'Nimiyatola', 'tenalikumar97@gmail.com', 8340657163, '1706281259-749.jpg', '1706281259-911.jpg', '1706281259-94.jpg', 1, 2, 0, 0, 1, '2024-01-26 15:00:59', 0, '0.20', 16, 1),
(86, 'Pappu singh', 'Maidaniya', 'kundan572000@gmail.com', 7352500757, '1706281890-346.jpg', '1706281890-720.jpg', '1706281890-724.jpg', 3, 1, 1, 0, 1, '2024-01-26 15:11:30', 0, '0.50', 10, 1),
(87, 'Siddu ', 'Mairwa ', 'ali0000cr7@gmail.com', 9661718120, '1706282818-473.jpg', '1706282818-601.jpg', '1706282818-558.jpg', 1, 1, 0, 5, 5, '2024-01-26 15:26:58', 0, '1.50', 6, 1),
(88, 'Sahid Pathan', 'Motichhpar Mairwa', 'shahidkhanmw555@gmail.com', 7461087079, '1706283061-826.jpg', '1706283061-945.jpg', '1706283061-372.jpg', 1, 1, 0, 4, 5, '2024-01-26 15:31:01', 1, '0.20', 16, 1),
(89, 'Rahul Kumar ', 'Naukatola ', 'rahulkrgupta92031@gmail.com', 7209068942, '1706283521-658.jpg', '1706283521-538.jpg', '1706283521-190.jpg', 2, 1, 0, 1, 1, '2024-01-26 15:38:41', 0, '2.00', 20, 0),
(90, 'Rohit Kumar Gupta ', 'Naukatola ', 'bkrohitkumar09@gamai.com', 6200586004, '1706284115-502.jpg', '1706284115-954.jpg', '1706284115-614.jpg', 3, 1, 0, 3, 3, '2024-01-26 15:48:35', 0, '1.50', 5, 1),
(91, 'Dheeraj Patel (C)', 'Naukatola ', 'pateldheeraj434@gmail.com', 8603944460, '1706286740-751.jpg', '1706286740-774.jpg', '1706286740-820.jpg', 1, 1, 0, 0, 3, '2024-01-26 16:32:20', 0, '2.00', 22, 3),
(92, 'Abhishek Kumar ', 'Mairwa Tola sakra ', 'abhishek.com78000@gmail.com', 8083942102, '1706328097-919.jpg', '1706328097-175.jpg', '1706328097-160.jpg', 1, 1, 0, 0, 4, '2024-01-27 04:01:37', 0, '0.50', 11, 1),
(93, 'Sonu Summer Vera (C)', 'Mairwa tola sakra', 'abhayavi1902@gmail.com', 9638807702, '1706433155-897.jpg', '1706433155-248.jpg', '1706433155-434.jpg', 1, 1, 0, 1, 1, '2024-01-28 09:12:35', 0, '2.00', 22, 3),
(94, 'Aditya kumar ', 'Sakra', 'adityak@gamil.com', 7050998004, '1706513160-441.jpg', '1706513160-408.jpg', '1706513160-893.jpg', 1, 2, 0, 1, 1, '2024-01-29 07:26:00', 0, '0.20', 0, 0),
(95, 'Alok kumar paswan', 'Mahadewa, siwan', 'alokpaswan99738@gmail.com', 9973822291, '1706714731-642.jpg', '1706714731-969.jpg', '1706714732-863.jpg', 2, 1, 0, 0, 1, '2024-01-31 15:25:32', 0, '0.50', 0, 0),
(96, 'KHURSHED ANSARI', 'Vill+ post= BARGAON', 'khurshedansari5432@gmail.com', 9162689873, '1706767627-43.jpg', '1706767627-772.jpg', '1706767627-337.jpg', 2, 1, 1, 0, 5, '2024-02-01 06:07:07', 1, '0.50', 13, 1),
(97, 'Dipu Pandey', 'Babnawali', 'deppupandey1612@gmail.com', 8340584706, '1706805276-139.jpg', '1706805276-22.jpg', '1706805276-41.jpg', 1, 1, 1, 0, 5, '2024-02-01 16:34:36', 0, '0.20', 14, 1),
(98, 'Ayush Singh', 'Mairwa (Block) ', 'ayushsinghmw18@gmail.com', 8936826631, '1706848940-339.jpg', '1706848940-937.jpg', '1706848940-88.jpg', 1, 1, 0, 1, 3, '2024-02-02 04:42:20', 1, '0.20', 17, 1),
(99, 'Shubham kumar', 'Pakri mor siwan bihar', 'kumarshubham943494@gmail.com', 8092437838, '1706886502-674.jpg', '1706886502-24.jpg', '1706886502-183.jpg', 1, 1, 0, 0, 1, '2024-02-02 15:08:22', 0, '0.50', 0, 0),
(100, 'Abhinandan tiwari', 'Motichhapr mairea', 'abhinandan8412@gmail.com', 7004153840, '1707132230-208.jpg', '1707132230-790.jpg', '1707132230-307.jpg', 1, 1, 0, 2, 3, '2024-02-05 11:23:50', 0, '0.20', 0, 0),
(101, 'Niranjan engine ', 'Sakra ', 'niranjank841239@gmail.com', 7739641299, '1707213240-479.jpg', '1707213240-28.jpg', '1707213240-866.jpg', 1, 1, 0, 4, 4, '2024-02-06 09:54:00', 1, '0.20', 16, 1),
(102, 'Shubham panday ', 'Mairwa ', 'shubhampandey4141@gmail.com', 7800870007, '1707590940-945.jpg', '1707590940-782.jpg', '1707590940-292.jpg', 2, 1, 0, 0, 1, '2024-02-10 18:49:00', 1, '1.00', 8, 1),
(103, 'Aniket Chaudhary', 'Doan', 'aniketyadav36056@gmail.com', 8540000911, '1707715196-737.jpg', '1707715196-877.jpg', '1707715196-675.jpg', 3, 2, 1, 4, 4, '2024-02-12 05:19:56', 0, '1.50', 4, 1),
(104, 'Aakash Singh', 'Doan', 'aakashsingh@gmai.com', 7973354058, '1707715484-445.jpg', '1707715484-226.jpg', '1707715484-182.jpg', 3, 1, 1, 5, 5, '2024-02-12 05:24:44', 0, '2.00', 3, 1),
(105, 'Pradhuman Kumar ', 'Sakra', 'pksingh123@gmail.com', 70912, '1707716197-658.jpg', '1707716197-58.jpg', '1707716197-238.jpg', 3, 1, 0, 5, 3, '2024-02-12 05:36:37', 0, '1.50', 5, 1),
(106, 'Rohit mahil ', 'Sakra ', 'rohitmahil123@gmail.com', 7294113879, '1707717475-401.jpg', '1707717475-493.jpg', '1707717475-497.jpg', 2, 1, 0, 1, 1, '2024-02-12 05:57:55', 0, '0.50', 12, 1),
(107, 'Priyanshu Kumar ', 'Sakra', 'priyanshu131@gmail.com', 8229853697, '1707717867-274.jpg', '1707717867-738.jpg', '1707717867-431.jpg', 1, 1, 0, 1, 1, '2024-02-12 06:04:27', 0, '0.20', 14, 1),
(108, 'Brijesh Kumar ', 'Sakra', 'brijesh123@gmail.com', 87094, '1707721304-850.jpg', '1707721193-372.jpg', '1707721193-290.jpg', 3, 1, 0, 0, 1, '2024-02-12 06:59:53', 0, '0.20', 17, 1),
(109, 'Piyush Kumar ', 'Sakra ', 'piyushkm12@gmail.com', 8809167977, '1707721353-28.jpg', '1707721353-604.jpg', '1707721353-433.jpg', 1, 1, 0, 2, 2, '2024-02-12 07:02:33', 0, '0.20', 18, 1),
(110, 'Pawan Kumar ', 'Naukatola ', 'pawanku123@gmail.com', 8809167977, '1707721575-531.jpg', '1707721575-922.jpg', '1707721575-756.jpg', 1, 1, 0, 1, 1, '2024-02-12 07:06:15', 0, '0.20', 18, 1),
(111, 'Rajan lalka', 'Sakra ', 'rajanlalka12@gmail.com', 8809167977, '1707723987-650.jpg', '1707723987-715.jpg', '1707723987-342.jpg', 2, 1, 0, 1, 1, '2024-02-12 07:46:27', 0, '0.20', 18, 1),
(112, 'Abhishek Kumar Gupta', 'chanht nahikhi', 'Abhiinuu1437@gmail.com', 9262272456, 'abhi.jpg', 'dd.jpg', 'dd.jpg', 2, 1, 0, 1, 1, '2024-02-13 10:58:56', 0, '0.20', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `players_auction`
--

CREATE TABLE `players_auction` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `bid_amount` decimal(4,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` int(11) DEFAULT NULL,
  `sold` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players_auction`
--

INSERT INTO `players_auction` (`id`, `team_id`, `player_id`, `bid_amount`, `created_at`, `updated_at`, `deleted_at`, `sold`) VALUES
(1, 2, 38, '16.00', '2024-02-12 13:22:36', '2024-02-12 13:22:36', NULL, 3),
(2, 5, 64, '16.00', '2024-02-12 13:25:50', '2024-02-12 13:25:50', NULL, 3),
(3, 4, 65, '16.00', '2024-02-12 13:27:03', '2024-02-12 13:27:03', NULL, 3),
(4, 3, 91, '16.00', '2024-02-12 13:27:56', '2024-02-12 13:27:56', NULL, 3),
(5, 1, 93, '16.00', '2024-02-12 13:28:40', '2024-02-12 13:28:40', NULL, 3),
(6, 5, 9, '8.00', '2024-02-14 10:49:00', '2024-02-14 10:49:00', NULL, 1),
(7, 1, 33, '4.80', '2024-02-14 10:57:44', '2024-02-14 10:57:44', NULL, 1),
(8, 4, 23, '2.80', '2024-02-14 11:03:46', '2024-02-14 11:03:46', NULL, 1),
(9, 4, 48, '2.20', '2024-02-14 11:07:55', '2024-02-14 11:07:55', NULL, 1),
(10, 5, 21, '2.40', '2024-02-14 11:10:27', '2024-02-14 11:10:27', NULL, 1),
(11, 3, 71, '3.60', '2024-02-14 11:13:51', '2024-02-14 11:13:51', NULL, 1),
(12, 5, 96, '1.50', '2024-02-14 11:16:42', '2024-02-14 11:16:42', NULL, 1),
(13, 4, 60, '5.40', '2024-02-14 11:23:19', '2024-02-14 11:23:19', NULL, 1),
(14, 1, 35, '0.50', '2024-02-14 11:25:14', '2024-02-14 11:25:14', NULL, 1),
(15, 5, 69, '0.50', '2024-02-14 11:26:57', '2024-02-14 11:26:57', NULL, 1),
(16, 3, 45, '4.30', '2024-02-14 11:38:31', '2024-02-14 11:38:31', NULL, 1),
(17, 3, 15, '6.00', '2024-02-14 11:48:23', '2024-02-14 11:48:23', NULL, 1),
(18, 5, 50, '2.10', '2024-02-14 11:51:33', '2024-02-14 11:51:33', NULL, 1),
(19, 3, 87, '6.20', '2024-02-14 11:54:50', '2024-02-14 11:54:50', NULL, 1),
(20, 5, 51, '7.00', '2024-02-14 12:01:12', '2024-02-14 12:01:12', NULL, 1),
(21, 4, 67, '1.10', '2024-02-14 12:03:52', '2024-02-14 12:03:52', NULL, 1),
(22, 5, 98, '3.40', '2024-02-14 12:07:11', '2024-02-14 12:07:11', NULL, 1),
(23, 5, 108, '4.10', '2024-02-14 12:09:57', '2024-02-14 12:09:57', NULL, 1),
(24, 1, 49, '5.20', '2024-02-14 12:12:32', '2024-02-14 12:12:32', NULL, 1),
(25, 2, 31, '0.20', '2024-02-14 12:14:14', '2024-02-14 12:14:14', NULL, 1),
(26, 0, 17, '0.20', '2024-02-14 12:17:35', '2024-02-14 12:17:35', NULL, 2),
(27, 4, 112, '7.20', '2024-02-14 12:24:25', '2024-02-14 12:24:25', NULL, 1),
(28, 1, 76, '1.00', '2024-02-14 12:25:42', '2024-02-14 12:25:42', NULL, 1),
(29, 1, 97, '1.60', '2024-02-14 12:27:41', '2024-02-14 12:27:41', NULL, 1),
(30, 0, 44, '0.50', '2024-02-14 12:28:26', '2024-02-14 12:28:26', NULL, 2),
(31, 2, 27, '0.50', '2024-02-14 12:29:27', '2024-02-14 12:29:27', NULL, 1),
(32, 1, 107, '2.20', '2024-02-14 12:32:10', '2024-02-14 12:32:10', NULL, 1),
(33, 4, 10, '3.40', '2024-02-14 12:35:24', '2024-02-14 12:35:24', NULL, 1),
(34, 4, 86, '2.40', '2024-02-14 12:36:49', '2024-02-14 12:36:49', NULL, 1),
(35, 1, 73, '2.10', '2024-02-14 12:38:36', '2024-02-14 12:38:36', NULL, 1),
(36, 3, 103, '21.00', '2024-02-14 12:45:29', '2024-02-14 12:45:29', NULL, 1),
(37, 2, 42, '28.20', '2024-02-14 12:54:45', '2024-02-14 12:54:45', NULL, 1),
(38, 2, 20, '2.20', '2024-02-14 12:57:07', '2024-02-14 12:57:07', NULL, 1),
(39, 4, 74, '3.10', '2024-02-14 12:59:04', '2024-02-14 12:59:04', NULL, 1),
(40, 1, 5, '30.80', '2024-02-14 13:08:29', '2024-02-14 13:08:29', NULL, 1),
(41, 1, 68, '5.80', '2024-02-14 13:12:31', '2024-02-14 13:12:31', NULL, 1),
(42, 4, 81, '27.40', '2024-02-14 13:17:47', '2024-02-14 13:17:47', NULL, 1),
(43, 5, 47, '18.00', '2024-02-14 13:23:15', '2024-02-14 13:23:15', NULL, 1),
(44, 5, 22, '18.00', '2024-02-14 13:26:43', '2024-02-14 13:26:43', NULL, 1),
(45, 2, 43, '7.60', '2024-02-14 13:35:27', '2024-02-14 13:35:27', NULL, 1),
(46, 5, 53, '0.20', '2024-02-14 13:37:15', '2024-02-14 13:37:15', NULL, 1),
(47, 0, 37, '0.20', '2024-02-14 13:38:22', '2024-02-14 13:38:22', NULL, 2),
(48, 5, 101, '0.20', '2024-02-14 13:39:19', '2024-02-14 13:39:19', NULL, 1),
(49, 5, 70, '0.30', '2024-02-14 13:40:22', '2024-02-14 13:40:22', NULL, 1),
(51, 0, 28, '0.20', '2024-02-14 13:43:40', '2024-02-14 13:43:40', NULL, 2),
(52, 0, 88, '0.20', '2024-02-14 13:44:02', '2024-02-14 13:44:02', NULL, 2),
(53, 1, 75, '0.20', '2024-02-14 13:44:35', '2024-02-14 13:44:35', NULL, 1),
(54, 4, 85, '0.60', '2024-02-14 13:45:46', '2024-02-14 13:45:46', NULL, 1),
(55, 4, 18, '0.30', '2024-02-14 13:47:05', '2024-02-14 13:47:05', NULL, 1),
(56, 2, 29, '7.20', '2024-02-14 13:49:19', '2024-02-14 13:49:19', NULL, 1),
(57, 4, 46, '13.00', '2024-02-14 13:54:37', '2024-02-14 13:54:37', NULL, 1),
(58, 3, 90, '12.40', '2024-02-14 13:57:44', '2024-02-14 13:57:44', NULL, 1),
(59, 3, 82, '18.00', '2024-02-14 14:00:06', '2024-02-14 14:00:06', NULL, 1),
(60, 1, 7, '2.70', '2024-02-14 14:03:15', '2024-02-14 14:03:15', NULL, 1),
(61, 1, 36, '1.60', '2024-02-14 14:04:46', '2024-02-14 14:04:46', NULL, 1),
(62, 2, 84, '11.00', '2024-02-14 14:07:29', '2024-02-14 14:07:29', NULL, 1),
(63, 5, 105, '2.30', '2024-02-14 14:09:00', '2024-02-14 14:09:00', NULL, 1),
(64, 1, 16, '6.00', '2024-02-14 14:14:52', '2024-02-14 14:14:52', NULL, 1),
(65, 4, 19, '2.40', '2024-02-14 14:16:16', '2024-02-14 14:16:16', NULL, 1),
(66, 0, 30, '0.50', '2024-02-14 14:18:15', '2024-02-14 14:18:15', NULL, 2),
(67, 0, 40, '0.50', '2024-02-14 14:18:41', '2024-02-14 14:18:41', NULL, 2),
(68, 2, 61, '2.10', '2024-02-14 14:19:45', '2024-02-14 14:19:45', NULL, 1),
(69, 0, 72, '1.00', '2024-02-14 14:20:37', '2024-02-14 14:20:37', NULL, 2),
(70, 5, 24, '1.00', '2024-02-14 14:21:11', '2024-02-14 14:21:11', NULL, 1),
(71, 3, 63, '1.00', '2024-02-14 14:22:29', '2024-02-14 14:22:29', NULL, 1),
(72, 2, 59, '1.00', '2024-02-14 14:23:16', '2024-02-14 14:23:16', NULL, 1),
(73, 1, 92, '1.00', '2024-02-14 14:24:28', '2024-02-14 14:24:28', NULL, 1),
(74, 2, 62, '0.50', '2024-02-14 14:25:12', '2024-02-14 14:25:12', NULL, 1),
(75, 0, 34, '0.50', '2024-02-14 14:25:44', '2024-02-14 14:25:44', NULL, 2),
(76, 2, 79, '4.80', '2024-02-14 14:28:08', '2024-02-14 14:28:08', NULL, 1),
(77, 0, 106, '0.50', '2024-02-14 14:29:09', '2024-02-14 14:29:09', NULL, 2),
(78, 5, 80, '0.50', '2024-02-14 14:29:48', '2024-02-14 14:29:48', NULL, 1),
(79, 1, 11, '0.50', '2024-02-14 14:30:22', '2024-02-14 14:30:22', NULL, 1),
(80, 2, 78, '4.00', '2024-02-14 14:33:14', '2024-02-14 14:33:14', NULL, 1),
(81, 0, 6, '0.50', '2024-02-14 14:33:57', '2024-02-14 14:33:57', NULL, 2),
(82, 5, 77, '2.30', '2024-02-14 14:34:58', '2024-02-14 14:34:58', NULL, 1),
(83, 1, 14, '0.70', '2024-02-14 14:35:49', '2024-02-14 14:35:49', NULL, 1),
(84, 1, 104, '5.00', '2024-02-14 14:36:25', '2024-02-14 14:36:25', NULL, 1),
(85, 1, 13, '5.00', '2024-02-14 14:37:23', '2024-02-14 14:37:23', NULL, 1),
(86, 2, 58, '0.20', '2024-02-14 14:38:46', '2024-02-14 14:38:46', NULL, 1),
(87, 2, 83, '0.30', '2024-02-14 14:39:56', '2024-02-14 14:39:56', NULL, 1),
(88, 3, 110, '0.20', '2024-02-14 14:40:49', '2024-02-14 14:40:49', NULL, 1),
(89, 0, 109, '0.20', '2024-02-14 14:41:19', '2024-02-14 14:41:19', NULL, 2),
(90, 4, 111, '0.40', '2024-02-14 14:41:50', '2024-02-14 14:41:50', NULL, 1),
(91, 4, 102, '1.00', '2024-02-14 14:42:48', '2024-02-14 14:42:48', NULL, 1),
(92, 2, 8, '1.00', '2024-02-14 14:43:15', '2024-02-14 14:43:15', NULL, 1),
(93, 0, 26, '1.00', '2024-02-14 14:44:17', '2024-02-14 14:44:17', NULL, 2),
(94, 5, 12, '1.00', '2024-02-14 14:44:45', '2024-02-14 14:44:45', NULL, 1),
(95, 2, 66, '1.40', '2024-02-14 14:45:45', '2024-02-14 14:45:45', NULL, 1),
(96, 4, 30, '0.50', '2024-02-14 14:49:31', '2024-02-14 14:49:31', NULL, 1),
(97, 4, 6, '0.50', '2024-02-14 14:50:10', '2024-02-14 14:50:10', NULL, 1),
(98, 2, 34, '0.50', '2024-02-14 14:51:05', '2024-02-14 14:51:05', NULL, 1),
(99, 3, 17, '0.10', '2024-02-14 14:52:35', '2024-02-14 14:52:35', NULL, 1),
(100, 3, 88, '0.10', '2024-02-14 14:57:37', '2024-02-14 14:57:37', NULL, 1),
(101, 3, 26, '0.50', '2024-02-14 14:59:18', '2024-02-14 14:59:18', NULL, 1),
(102, 3, 28, '0.20', '2024-02-14 15:00:10', '2024-02-14 15:00:10', NULL, 1),
(103, 3, 109, '0.20', '2024-02-14 15:00:20', '2024-02-14 15:00:20', NULL, 1),
(104, 3, 106, '0.20', '2024-02-14 15:01:08', '2024-02-14 15:01:08', NULL, 1),
(106, 1, 39, '2.00', '2024-02-27 03:12:06', '2024-02-27 03:12:06', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spl_team`
--

CREATE TABLE `spl_team` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `purse` decimal(4,2) NOT NULL,
  `purse_left` decimal(4,2) NOT NULL,
  `local` int(11) NOT NULL,
  `overseas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spl_team`
--

INSERT INTO `spl_team` (`id`, `name`, `purse`, `purse_left`, `local`, `overseas`) VALUES
(1, 'Sakra Super Kings', '90.00', '2.30', 13, 7),
(2, 'Sakra Pink Panther', '90.00', '1.30', 11, 7),
(3, 'Sakra Titans', '90.00', '0.50', 10, 6),
(4, 'Sakra Dolphins', '90.00', '0.30', 12, 6),
(5, 'Royal Challengers ', '90.00', '1.10', 12, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `players_auction`
--
ALTER TABLE `players_auction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spl_team`
--
ALTER TABLE `spl_team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action`
--
ALTER TABLE `action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `players_auction`
--
ALTER TABLE `players_auction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `spl_team`
--
ALTER TABLE `spl_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
