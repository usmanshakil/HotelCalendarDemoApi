-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2021 at 03:02 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dexterod_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `htl_rooms`
--

CREATE TABLE `htl_rooms` (
  `roomId` int(11) NOT NULL,
  `roomName` varchar(200) NOT NULL,
  `roomImageUrl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `htl_rooms`
--

INSERT INTO `htl_rooms` (`roomId`, `roomName`, `roomImageUrl`) VALUES
(1, 'Premium', 'http://dexterodes.com/hotel_api/imgs/1.jpg'),
(2, 'Gold', 'http://dexterodes.com/hotel_api/imgs/2.jpg'),
(3, 'Platinum', 'http://dexterodes.com/hotel_api/imgs/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roomdata`
--

CREATE TABLE `roomdata` (
  `cellId` int(200) NOT NULL,
  `roomId` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `price` varchar(200) NOT NULL DEFAULT '500',
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomdata`
--

INSERT INTO `roomdata` (`cellId`, `roomId`, `booking_date`, `price`, `status`) VALUES
(1, 1, '2021-05-01', '33', 'Booked'),
(2, 1, '2021-05-02', '111', 'Available'),
(3, 1, '2021-05-03', '11', 'Available'),
(4, 1, '2021-05-04', '31', 'Available'),
(5, 1, '2021-05-05', '505', 'Booked'),
(6, 1, '2021-05-06', '504', 'Available'),
(7, 1, '2021-05-07', '200', 'Available'),
(8, 1, '2021-05-08', '508', 'Booked'),
(9, 1, '2021-05-09', '555', 'Booked'),
(10, 1, '2021-05-10', '500', 'Available'),
(11, 1, '2021-05-11', '500', 'Available'),
(12, 1, '2021-05-12', '500', 'Available'),
(13, 1, '2021-05-13', '500', 'Available'),
(14, 1, '2021-05-14', '500', 'Available'),
(15, 1, '2021-05-15', '500', 'Available'),
(16, 1, '2021-05-16', '500', 'Available'),
(17, 1, '2021-05-17', '500', 'Available'),
(18, 1, '2021-05-18', '500', 'Available'),
(19, 1, '2021-05-19', '500', 'Available'),
(20, 1, '2021-05-20', '500', 'Available'),
(21, 1, '2021-05-21', '500', 'Available'),
(22, 1, '2021-05-22', '500', 'Available'),
(23, 1, '2021-05-23', '500', 'Available'),
(24, 1, '2021-05-24', '500', 'Available'),
(25, 1, '2021-05-25', '500', 'Available'),
(26, 1, '2021-05-26', '500', 'Available'),
(27, 1, '2021-05-27', '500', 'Available'),
(28, 1, '2021-05-28', '500', 'Available'),
(29, 1, '2021-05-29', '500', 'Available'),
(30, 1, '2021-05-30', '500', 'Available'),
(31, 2, '2021-05-01', '500', 'Available'),
(32, 2, '2021-05-02', '500', 'Available'),
(33, 2, '2021-05-03', '5566', 'Booked'),
(34, 2, '2021-05-04', '222', 'Booked'),
(35, 2, '2021-05-05', '500', 'Available'),
(36, 2, '2021-05-06', '78', 'Booked'),
(37, 2, '2021-05-07', '77', 'Booked'),
(38, 2, '2021-05-08', '500', 'Available'),
(39, 2, '2021-05-09', '500', 'Available'),
(40, 2, '2021-05-10', '500', 'Available'),
(41, 2, '2021-05-11', '500', 'Available'),
(42, 2, '2021-05-12', '500', 'Available'),
(43, 2, '2021-05-13', '500', 'Available'),
(44, 2, '2021-05-14', '500', 'Available'),
(45, 2, '2021-05-15', '500', 'Available'),
(46, 2, '2021-05-16', '500', 'Available'),
(47, 2, '2021-05-17', '500', 'Available'),
(48, 2, '2021-05-18', '500', 'Available'),
(49, 2, '2021-05-19', '500', 'Available'),
(50, 2, '2021-05-20', '500', 'Available'),
(51, 2, '2021-05-21', '500', 'Available'),
(52, 2, '2021-05-22', '500', 'Available'),
(53, 2, '2021-05-23', '500', 'Available'),
(54, 2, '2021-05-24', '500', 'Available'),
(55, 2, '2021-05-25', '500', 'Available'),
(56, 2, '2021-05-26', '500', 'Available'),
(57, 2, '2021-05-27', '500', 'Available'),
(58, 2, '2021-05-28', '500', 'Available'),
(59, 2, '2021-05-29', '500', 'Available'),
(60, 2, '2021-05-30', '500', 'Available'),
(61, 3, '2021-05-01', '500', 'Available'),
(62, 3, '2021-05-02', '555', 'Booked'),
(63, 3, '2021-05-03', '500', 'Available'),
(64, 3, '2021-05-04', '500', 'Available'),
(65, 3, '2021-05-05', '500', 'Available'),
(66, 3, '2021-05-06', '500', 'Available'),
(67, 3, '2021-05-07', '501', 'Available'),
(68, 3, '2021-05-08', '500', 'Available'),
(69, 3, '2021-05-09', '500', 'Available'),
(70, 3, '2021-05-10', '500', 'Booked'),
(71, 3, '2021-05-11', '500', 'Available'),
(72, 3, '2021-05-12', '500', 'Available'),
(73, 3, '2021-05-13', '500', 'Available'),
(74, 3, '2021-05-14', '500', 'Available'),
(75, 3, '2021-05-15', '500', 'Available'),
(76, 3, '2021-05-16', '500', 'Available'),
(77, 3, '2021-05-17', '500', 'Available'),
(78, 3, '2021-05-18', '500', 'Available'),
(79, 3, '2021-05-19', '500', 'Available'),
(80, 3, '2021-05-20', '500', 'Available'),
(81, 3, '2021-05-21', '500', 'Available'),
(82, 3, '2021-05-22', '500', 'Available'),
(83, 3, '2021-05-23', '500', 'Available'),
(84, 3, '2021-05-24', '500', 'Available'),
(85, 3, '2021-05-25', '500', 'Available'),
(86, 3, '2021-05-26', '500', 'Available'),
(87, 3, '2021-05-27', '500', 'Available'),
(88, 3, '2021-05-28', '500', 'Available'),
(89, 3, '2021-05-29', '500', 'Available'),
(90, 3, '2021-05-30', '500', 'Available'),
(91, 2147483647, '2021-05-01', '500', 'Available'),
(92, 2147483647, '2021-05-02', '500', 'Available'),
(93, 2147483647, '2021-05-03', '500', 'Available'),
(94, 2147483647, '2021-05-04', '500', 'Available'),
(95, 2147483647, '2021-05-05', '500', 'Available'),
(96, 2147483647, '2021-05-06', '500', 'Available'),
(97, 2147483647, '2021-05-07', '500', 'Available'),
(98, 2147483647, '2021-05-08', '500', 'Available'),
(99, 2147483647, '2021-05-09', '500', 'Available'),
(100, 2147483647, '2021-05-10', '500', 'Available'),
(101, 2147483647, '2021-05-11', '500', 'Available'),
(102, 2147483647, '2021-05-12', '500', 'Available'),
(103, 2147483647, '2021-05-13', '500', 'Available'),
(104, 2147483647, '2021-05-14', '500', 'Available'),
(105, 2147483647, '2021-05-15', '500', 'Available'),
(106, 2147483647, '2021-05-16', '500', 'Available'),
(107, 2147483647, '2021-05-17', '500', 'Available'),
(108, 2147483647, '2021-05-18', '500', 'Available'),
(109, 2147483647, '2021-05-19', '500', 'Available'),
(110, 2147483647, '2021-05-20', '500', 'Available'),
(111, 2147483647, '2021-05-21', '500', 'Available'),
(112, 2147483647, '2021-05-22', '500', 'Available'),
(113, 2147483647, '2021-05-23', '500', 'Available'),
(114, 2147483647, '2021-05-24', '500', 'Available'),
(115, 2147483647, '2021-05-25', '500', 'Available'),
(116, 2147483647, '2021-05-26', '500', 'Available'),
(117, 2147483647, '2021-05-27', '500', 'Available'),
(118, 2147483647, '2021-05-28', '500', 'Available'),
(119, 2147483647, '2021-05-29', '500', 'Available'),
(120, 2147483647, '2021-05-30', '500', 'Available'),
(121, 2147483647, '2021-05-01', '500', 'Available'),
(122, 2147483647, '2021-05-02', '500', 'Available'),
(123, 2147483647, '2021-05-03', '500', 'Available'),
(124, 2147483647, '2021-05-04', '500', 'Available'),
(125, 2147483647, '2021-05-05', '500', 'Available'),
(126, 2147483647, '2021-05-06', '500', 'Available'),
(127, 2147483647, '2021-05-07', '500', 'Available'),
(128, 2147483647, '2021-05-08', '500', 'Available'),
(129, 2147483647, '2021-05-09', '500', 'Available'),
(130, 2147483647, '2021-05-10', '500', 'Available'),
(131, 2147483647, '2021-05-11', '500', 'Available'),
(132, 2147483647, '2021-05-12', '500', 'Available'),
(133, 2147483647, '2021-05-13', '500', 'Available'),
(134, 2147483647, '2021-05-14', '500', 'Available'),
(135, 2147483647, '2021-05-15', '500', 'Available'),
(136, 2147483647, '2021-05-16', '500', 'Available'),
(137, 2147483647, '2021-05-17', '500', 'Available'),
(138, 2147483647, '2021-05-18', '500', 'Available'),
(139, 2147483647, '2021-05-19', '500', 'Available'),
(140, 2147483647, '2021-05-20', '500', 'Available'),
(141, 2147483647, '2021-05-21', '500', 'Available'),
(142, 2147483647, '2021-05-22', '500', 'Available'),
(143, 2147483647, '2021-05-23', '500', 'Available'),
(144, 2147483647, '2021-05-24', '500', 'Available'),
(145, 2147483647, '2021-05-25', '500', 'Available'),
(146, 2147483647, '2021-05-26', '500', 'Available'),
(147, 2147483647, '2021-05-27', '500', 'Available'),
(148, 2147483647, '2021-05-28', '500', 'Available'),
(149, 2147483647, '2021-05-29', '500', 'Available'),
(150, 2147483647, '2021-05-30', '500', 'Available'),
(151, 2147483647, '2021-05-01', '500', 'Available'),
(152, 2147483647, '2021-05-02', '500', 'Available'),
(153, 2147483647, '2021-05-03', '500', 'Available'),
(154, 2147483647, '2021-05-04', '500', 'Available'),
(155, 2147483647, '2021-05-05', '500', 'Available'),
(156, 2147483647, '2021-05-06', '500', 'Available'),
(157, 2147483647, '2021-05-07', '500', 'Available'),
(158, 2147483647, '2021-05-08', '500', 'Available'),
(159, 2147483647, '2021-05-09', '500', 'Available'),
(160, 2147483647, '2021-05-10', '500', 'Available'),
(161, 2147483647, '2021-05-11', '500', 'Available'),
(162, 2147483647, '2021-05-12', '500', 'Available'),
(163, 2147483647, '2021-05-13', '500', 'Available'),
(164, 2147483647, '2021-05-14', '500', 'Available'),
(165, 2147483647, '2021-05-15', '500', 'Available'),
(166, 2147483647, '2021-05-16', '500', 'Available'),
(167, 2147483647, '2021-05-17', '500', 'Available'),
(168, 2147483647, '2021-05-18', '500', 'Available'),
(169, 2147483647, '2021-05-19', '500', 'Available'),
(170, 2147483647, '2021-05-20', '500', 'Available'),
(171, 2147483647, '2021-05-21', '500', 'Available'),
(172, 2147483647, '2021-05-22', '500', 'Available'),
(173, 2147483647, '2021-05-23', '500', 'Available'),
(174, 2147483647, '2021-05-24', '500', 'Available'),
(175, 2147483647, '2021-05-25', '500', 'Available'),
(176, 2147483647, '2021-05-26', '500', 'Available'),
(177, 2147483647, '2021-05-27', '500', 'Available'),
(178, 2147483647, '2021-05-28', '500', 'Available'),
(179, 2147483647, '2021-05-29', '500', 'Available'),
(180, 2147483647, '2021-05-30', '500', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `htl_rooms`
--
ALTER TABLE `htl_rooms`
  ADD PRIMARY KEY (`roomId`);

--
-- Indexes for table `roomdata`
--
ALTER TABLE `roomdata`
  ADD PRIMARY KEY (`cellId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `htl_rooms`
--
ALTER TABLE `htl_rooms`
  MODIFY `roomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roomdata`
--
ALTER TABLE `roomdata`
  MODIFY `cellId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
