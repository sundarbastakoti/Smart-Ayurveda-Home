-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 11:28 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayurhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `admin_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_address`) VALUES
(1, 'asmita', 'asmitapokharel525@gmail.com', '1234', 'butwal');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `pro_id` int(200) NOT NULL,
  `ip_add` int(200) NOT NULL,
  `qty` int(200) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(200) NOT NULL,
  `cat_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
(1, 'Food'),
(2, 'Medicine'),
(3, 'Spices'),
(4, 'Shop & Detergent'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `comment`) VALUES
(1, 'admin', 'admin@gmail.com', '	admin\r\n				');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_pass` varchar(200) NOT NULL,
  `customer_address` varchar(200) NOT NULL,
  `customer_phone` int(200) NOT NULL,
  `customer_image` varchar(200) NOT NULL,
  `customer_ip` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_address`, `customer_phone`, `customer_image`, `customer_ip`) VALUES
(11, 'asmita', 'asmitapokharel525@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Sainamaina-1,Barmachowk', 980787869, '', 0),
(12, 'pratima', 'pratima@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'butwal', 2147483647, '', 0),
(13, 'admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'butwal', 980787869, '', 0),
(14, 'sundar', 'sundar@gmail.com', '345e2cdf665a448de8d1cdaedd4f21fe', 'manigram', 2147483647, '', 0),
(15, 'sugam', 'sugam@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'sainamaina', 2147483647, '', 0),
(16, 'none', 'none@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'butwal', 2147483647, '', 0),
(17, 'nilam', 'nilam@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'butwal', 2147483647, 'consult.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(200) NOT NULL,
  `customer_id` int(200) NOT NULL,
  `due_amount` int(200) NOT NULL,
  `invoice_no` int(200) NOT NULL,
  `total_product` int(200) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `total_product`, `order_status`, `customer_email`) VALUES
(135, 11, 200, 159567171, 0, 'complet', 'asmitapokharel525@gmail.com'),
(136, 11, 350, 364189408, 0, 'pending', 'asmitapokharel525@gmail.com'),
(137, 11, 350, 580938673, 0, 'pending', 'asmitapokharel525@gmail.com'),
(138, 12, 350, 605762816, 0, 'pending', 'sila@gmail.com'),
(139, 11, 0, 763009775, 0, 'pending', 'asmitapokharel525@gmail.com'),
(140, 11, 0, 1627386839, 0, 'pending', 'asmitapokharel525@gmail.com'),
(141, 11, 0, 1393773689, 0, 'pending', 'asmitapokharel525@gmail.com'),
(142, 11, 0, 1205497835, 0, 'pending', 'asmitapokharel525@gmail.com'),
(143, 11, 0, 299544700, 0, 'pending', 'asmitapokharel525@gmail.com'),
(144, 11, 0, 472446532, 0, 'pending', 'asmitapokharel525@gmail.com'),
(145, 11, 0, 1558759876, 0, 'pending', 'asmitapokharel525@gmail.com'),
(146, 0, 0, 409796755, 0, 'pending', ''),
(147, 0, 0, 1564331846, 0, 'pending', ''),
(148, 0, 0, 410720830, 0, 'pending', ''),
(149, 11, 0, 1254694661, 0, 'pending', 'asmitapokharel525@gmail.com'),
(150, 0, 0, 1311452505, 0, 'pending', ''),
(151, 11, 0, 1656269085, 0, 'pending', 'asmitapokharel525@gmail.com'),
(152, 11, 0, 767247257, 0, 'pending', 'asmitapokharel525@gmail.com'),
(153, 0, 0, 1562229515, 0, 'pending', ''),
(154, 11, 0, 1554619254, 0, 'pending', 'asmitapokharel525@gmail.com'),
(155, 11, 0, 1243676601, 0, 'pending', 'asmitapokharel525@gmail.com'),
(156, 11, 750, 1990863714, 0, 'pending', 'asmitapokharel525@gmail.com'),
(157, 11, 550, 480426251, 0, 'pending', 'asmitapokharel525@gmail.com'),
(158, 9, 200, 1187506434, 0, 'pending', 'pratima@gmail.com'),
(159, 12, 800, 2011801078, 0, 'pending', 'sila@gmail.com'),
(160, 10, 200, 2012793649, 0, 'pending', 'sundar@gmail.com'),
(161, 11, 600, 247632733, 0, 'pending', 'asmitapokharel525@gmail.com'),
(162, 11, 940, 2003255894, 0, 'pending', 'asmitapokharel525@gmail.com'),
(163, 11, 170, 1074984575, 0, 'pending', 'asmitapokharel525@gmail.com'),
(164, 11, 600, 1951196571, 0, 'pending', 'asmitapokharel525@gmail.com'),
(165, 11, 200, 2027329525, 0, 'pending', 'asmitapokharel525@gmail.com'),
(166, 0, 550, 2002309239, 0, 'pending', ''),
(167, 11, 200, 51340128, 0, 'pending', 'asmitapokharel525@gmail.com'),
(168, 12, 200, 1762497425, 0, 'pending', 'sila@gmail.com'),
(169, 9, 1200, 1962984710, 0, 'pending', 'pratima@gmail.com'),
(170, 11, 150, 749640493, 0, 'pending', 'asmitapokharel525@gmail.com'),
(171, 11, 200, 309621797, 0, 'pending', 'asmitapokharel525@gmail.com'),
(172, 11, 600, 1947832607, 0, 'complet', 'asmitapokharel525@gmail.com'),
(173, 11, 200, 1480029339, 0, 'pending', 'asmitapokharel525@gmail.com'),
(174, 9, 250, 2045495966, 0, 'pending', 'pratima@gmail.com'),
(175, 9, 450, 597478207, 0, 'pending', 'pratima@gmail.com'),
(176, 11, 220, 1612152872, 0, 'pending', 'asmitapokharel525@gmail.com'),
(177, 11, 200, 765669534, 0, 'pending', 'asmitapokharel525@gmail.com'),
(178, 10, 200, 285387139, 0, 'pending', 'sundar@gmail.com'),
(179, 9, 300, 1683831077, 0, 'pending', 'pratima@gmail.com'),
(180, 11, 200, 883536978, 0, 'pending', 'asmitapokharel525@gmail.com'),
(181, 11, 0, 2063418629, 0, 'pending', 'asmitapokharel525@gmail.com'),
(182, 12, 1600, 1122740050, 0, 'pending', 'pratima@gmail.com'),
(183, 12, 500, 801196497, 0, 'pending', 'pratima@gmail.com'),
(184, 11, 570, 1861796943, 0, 'pending', 'asmitapokharel525@gmail.com'),
(185, 13, 1590, 385769108, 0, 'pending', 'admin@gmail.com'),
(186, 13, 500, 1556345346, 0, 'pending', 'admin@gmail.com'),
(187, 11, 870, 504032676, 0, 'pending', 'asmitapokharel525@gmail.com'),
(188, 11, 650, 322740486, 3, 'pending', 'asmitapokharel525@gmail.com'),
(189, 11, 500, 244191061, 2, 'pending', 'asmitapokharel525@gmail.com'),
(190, 12, 500, 1335022132, 2, 'pending', 'pratima@gmail.com'),
(191, 12, 350, 442340389, 2, 'pending', 'pratima@gmail.com'),
(192, 11, 20, 1907804420, 1, 'pending', 'asmitapokharel525@gmail.com'),
(193, 12, 500, 719891054, 2, 'complet', 'pratima@gmail.com'),
(194, 11, 300, 946451324, 2, 'pending', 'asmitapokharel525@gmail.com'),
(195, 11, 0, 1258371350, 2, 'pending', 'asmitapokharel525@gmail.com'),
(196, 11, 0, 1831172097, 2, 'pending', 'asmitapokharel525@gmail.com'),
(197, 11, 1450, 1799489031, 3, 'pending', 'asmitapokharel525@gmail.com'),
(198, 11, 500, 1966156415, 2, 'pending', 'asmitapokharel525@gmail.com'),
(199, 11, 460, 1305344406, 3, 'pending', 'asmitapokharel525@gmail.com'),
(200, 11, 1100, 1268918805, 2, 'pending', 'asmitapokharel525@gmail.com'),
(201, 12, 0, 1552624690, 2, 'pending', 'pratima@gmail.com'),
(202, 11, 570, 1850864296, 3, 'pending', 'asmitapokharel525@gmail.com'),
(203, 14, 450, 457982081, 2, 'pending', 'sundar@gmail.com'),
(204, 15, 920, 920624897, 3, 'complet', 'sugam@gmail.com'),
(205, 15, 300, 823763947, 1, 'pending', 'sugam@gmail.com'),
(206, 11, 0, 1806856498, 3, 'pending', 'asmitapokharel525@gmail.com'),
(207, 11, 2300, 922391690, 2, 'pending', 'asmitapokharel525@gmail.com'),
(208, 15, 1700, 1751117560, 2, 'pending', 'sugam@gmail.com'),
(209, 11, 170, 634111206, 2, 'pending', 'asmitapokharel525@gmail.com'),
(210, 11, 500, 1558822558, 2, 'pending', 'asmitapokharel525@gmail.com'),
(211, 0, 0, 24841554, 0, 'pending', ''),
(212, 11, 0, 1170572549, 0, 'pending', 'asmitapokharel525@gmail.com'),
(213, 17, 650, 649721279, 3, 'pending', 'nilam@gmail.com'),
(214, 17, 300, 723269705, 1, 'pending', 'nilam@gmail.com'),
(215, 17, 0, 1041844411, 0, 'pending', 'nilam@gmail.com'),
(216, 17, 0, 1645628101, 0, 'pending', 'nilam@gmail.com'),
(217, 17, 0, 909119524, 0, 'pending', 'nilam@gmail.com'),
(218, 17, 0, 915850086, 0, 'pending', 'nilam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(200) NOT NULL,
  `invoic_no` int(200) NOT NULL,
  `amount` int(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `ref_no` varchar(200) NOT NULL,
  `code` int(200) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `invoic_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 1278702007, 2000, 'payment_method', '1234', 1234, '2076-04-17'),
(2, 297238347, 2000, 'payment_method', '123', 123456, '2076-04-17'),
(3, 1234, 2000, 'payment_method', '1234', 1234, '2019-08-03'),
(4, 0, 0, 'payment_method', '', 0, ''),
(5, 1278702007, 2000, 'payment_method', '1234', 1234, '2019-08-06'),
(6, 1278702007, 2000, 'payment_method', '1234', 1234, '2019-08-06'),
(7, 1278702007, 2000, 'payment_method', '1234', 1234, '2019-08-06'),
(8, 1947832607, 2000, 'payment_method', '1234', 12, '2019-08-06'),
(9, 0, 0, 'payment_method', '', 0, ''),
(10, 159567171, 2000, 'payment_method', '123', 1234, '2019-08-06'),
(11, 1234, 2000, 'payment_method', '1234', 1234, '2019-08-06'),
(12, 1234, 2000, 'payment_method', '1234', 1234, '2019-08-06'),
(13, 719891054, 2000, 'payment_method', '1234', 123, '2019-08-07'),
(14, 920624897, 920, 'payment_method', '123', 123, '2019-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `pending_order`
--

CREATE TABLE `pending_order` (
  `order_id` int(200) NOT NULL,
  `customer_id` int(200) NOT NULL,
  `invoice_no` int(200) NOT NULL,
  `product_id` int(200) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_order`
--

INSERT INTO `pending_order` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `order_status`, `customer_email`) VALUES
(188, 11, 322740486, 4, 'pending', 'asmitapokharel525@gmail.com'),
(189, 11, 244191061, 4, 'pending', 'asmitapokharel525@gmail.com'),
(190, 12, 1335022132, 4, 'pending', 'pratima@gmail.com'),
(191, 12, 442340389, 3, 'pending', 'pratima@gmail.com'),
(192, 11, 1907804420, 6, 'pending', 'asmitapokharel525@gmail.com'),
(193, 12, 719891054, 4, 'pending', 'pratima@gmail.com'),
(194, 11, 946451324, 4, 'pending', 'asmitapokharel525@gmail.com'),
(195, 11, 1258371350, 10, 'pending', 'asmitapokharel525@gmail.com'),
(196, 11, 1831172097, 10, 'pending', 'asmitapokharel525@gmail.com'),
(197, 11, 1799489031, 4, 'pending', 'asmitapokharel525@gmail.com'),
(198, 11, 1966156415, 4, 'pending', 'asmitapokharel525@gmail.com'),
(199, 11, 1305344406, 6, 'pending', 'asmitapokharel525@gmail.com'),
(200, 11, 1268918805, 4, 'pending', 'asmitapokharel525@gmail.com'),
(201, 12, 1552624690, 4, 'pending', 'pratima@gmail.com'),
(202, 11, 1850864296, 7, 'pending', 'asmitapokharel525@gmail.com'),
(203, 14, 457982081, 4, 'pending', 'sundar@gmail.com'),
(204, 15, 920624897, 11, 'pending', 'sugam@gmail.com'),
(205, 15, 823763947, 4, 'pending', 'sugam@gmail.com'),
(206, 11, 1806856498, 5, 'pending', 'asmitapokharel525@gmail.com'),
(207, 11, 922391690, 4, 'pending', 'asmitapokharel525@gmail.com'),
(208, 15, 1751117560, 8, 'pending', 'sugam@gmail.com'),
(209, 11, 634111206, 6, 'pending', 'asmitapokharel525@gmail.com'),
(210, 11, 1558822558, 4, 'pending', 'asmitapokharel525@gmail.com'),
(211, 0, 24841554, 0, 'pending', ''),
(212, 11, 1170572549, 0, 'pending', 'asmitapokharel525@gmail.com'),
(213, 17, 649721279, 4, 'pending', 'nilam@gmail.com'),
(214, 17, 723269705, 4, 'pending', 'nilam@gmail.com'),
(215, 17, 1041844411, 0, 'pending', 'nilam@gmail.com'),
(216, 17, 1645628101, 0, 'pending', 'nilam@gmail.com'),
(217, 17, 909119524, 0, 'pending', 'nilam@gmail.com'),
(218, 17, 915850086, 0, 'pending', 'nilam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(200) NOT NULL,
  `category_id` int(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_desc` varchar(200) NOT NULL,
  `product_price` int(200) NOT NULL,
  `product_img` varchar(200) NOT NULL,
  `product_keyword` varchar(200) NOT NULL,
  `disease` varchar(250) NOT NULL,
  `product_ratting` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `product_desc`, `product_price`, `product_img`, `product_keyword`, `disease`, `product_ratting`) VALUES
(2, 4, 'Facewash', 'facewash is used to remove the oil, pimples,or any darkness', 150, 'Face wash1.jpeg', 'facewash,Facewash,Face,Wash', 'skin, face', 1),
(3, 4, 'Facewash', 'facewash', 200, 'Face Wash.jpg', 'facewash,Facewash,Face,Wash', '', 0),
(4, 1, 'Honey', 'Honey', 300, 'h1.jpg', 'honey, food', '', 0),
(5, 1, 'Tulsi Chiya', 'Tulsi Chiya', 140, 'tulsi chiya.jpg', 'Tulsi Chiya', '', 0),
(6, 1, 'Noodle', 'Noodle', 20, 'noodles.jpg', 'Noodle', '', 0),
(7, 2, 'Mood on oil', 'Mood on oil', 220, 'Mood-on-Oil.jpg', 'Mood on oil', '', 7),
(8, 2, 'Cofta', 'cofta', 100, 'cofta.jpg', 'cofta', '', 9),
(9, 2, 'Livertonic', 'livertonic', 170, 'livertonic.jpg', 'livertonic , medicine', '', 6),
(11, 1, 'coffee', 'coffee', 200, 'tea.jpg', 'coffee, cold drink', 'head ache', 0);

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE `recommendation` (
  `id` int(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `ratting` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommendation`
--

INSERT INTO `recommendation` (`id`, `product_name`, `ratting`) VALUES
(49, 'coffee', 0),
(50, 'coffee', 0),
(51, 'coffee', 0),
(52, 'Jeevan Sakti', 1),
(53, 'Facewash', 1),
(54, 'Facewash', 1),
(55, 'Livertonic', 6),
(56, 'Jeevan Sakti', 1),
(57, 'Facewash', 1),
(58, 'coffee', 5),
(59, 'Livertonic', 6),
(60, 'Jeevan Sakti', 1),
(61, 'Mood on oil', 6),
(62, 'Jeevan Sakti', 1),
(63, 'Cofta', 4),
(64, 'Jeevan Sakti', 1),
(65, 'coffee', 8),
(66, 'Jeevan Sakti', 1),
(67, 'Jeevan Sakti', 1),
(68, 'Jeevan Sakti', 1),
(69, 'Jeevan Sakti', 1),
(70, 'Honey', 5),
(71, 'Honey', 5),
(72, 'Honey', 5),
(73, 'Honey', 5),
(74, 'Honey', 5),
(75, 'Honey', 5),
(76, 'Honey', 5),
(77, 'Honey', 5),
(78, 'Jeevan Sakti', 1),
(79, 'Jeevan Sakti', 1),
(80, 'Jeevan Sakti', 1),
(81, 'Jeevan Sakti', 1),
(82, 'Jeevan Sakti', 1),
(83, 'Jeevan Sakti', 1),
(84, 'Jeevan Sakti', 1),
(85, 'Jeevan Sakti', 1),
(86, 'Jeevan Sakti', 1),
(87, 'Jeevan Sakti', 1),
(88, 'Jeevan Sakti', 1),
(89, 'Jeevan Sakti', 1),
(90, 'Jeevan Sakti', 1),
(91, 'Jeevan Sakti', 1),
(92, 'Jeevan Sakti', 1),
(93, 'Jeevan Sakti', 1),
(94, 'Jeevan Sakti', 1),
(95, 'Jeevan Sakti', 1),
(96, 'Jeevan Sakti', 1),
(97, 'Jeevan Sakti', 1),
(98, 'Jeevan Sakti', 1),
(99, 'Jeevan Sakti', 1),
(100, 'Jeevan Sakti', 1),
(101, 'Jeevan Sakti', 1),
(102, 'Jeevan Sakti', 1),
(103, 'Jeevan Sakti', 1),
(104, 'Jeevan Sakti', 1),
(105, 'Jeevan Sakti', 1),
(106, 'Jeevan Sakti', 1),
(107, 'Jeevan Sakti', 1),
(108, 'Jeevan Sakti', 1),
(109, 'Jeevan Sakti', 0),
(110, 'Jeevan Sakti', 0),
(111, 'Jeevan Sakti', 0),
(112, 'Jeevan Sakti', 0),
(113, 'Jeevan Sakti', 0),
(114, 'Jeevan Sakti', 0),
(115, 'Jeevan Sakti', 0),
(116, 'Jeevan Sakti', 0),
(117, 'Jeevan Sakti', 0),
(118, 'Jeevan Sakti', 0),
(119, 'Jeevan Sakti', 0),
(120, 'Jeevan Sakti', 0),
(121, 'Jeevan Sakti', 0),
(122, 'Jeevan Sakti', 0),
(123, 'Jeevan Sakti', 0),
(124, 'Jeevan Sakti', 0),
(125, 'Jeevan Sakti', 0),
(126, 'Jeevan Sakti', 0),
(127, 'Jeevan Sakti', 0),
(128, 'Jeevan Sakti', 0),
(129, 'Jeevan Sakti', 0),
(130, 'Jeevan Sakti', 0),
(131, 'Jeevan Sakti', 0),
(132, 'Jeevan Sakti', 0),
(133, 'Jeevan Sakti', 0),
(134, 'Jeevan Sakti', 0),
(135, 'Jeevan Sakti', 0),
(136, 'Jeevan Sakti', 0),
(137, 'Jeevan Sakti', 0),
(138, 'Jeevan Sakti', 0),
(139, 'Jeevan Sakti', 0),
(140, 'Jeevan Sakti', 0),
(141, 'Jeevan Sakti', 0),
(142, 'Jeevan Sakti', 0),
(143, 'Jeevan Sakti', 0),
(144, 'Jeevan Sakti', 0),
(145, 'Jeevan Sakti', 0),
(146, 'Jeevan Sakti', 0),
(147, 'Jeevan Sakti', 0),
(148, 'Noodle', 0),
(149, 'Jeevan Sakti', 0),
(150, 'Jeevan Sakti', 0),
(151, 'Jeevan Sakti', 0),
(152, 'Jeevan Sakti', 0),
(153, 'Jeevan Sakti', 0),
(154, 'Jeevan Sakti', 0),
(155, 'coffee', 0),
(156, 'Jeevan Sakti', 0),
(157, 'Jeevan Sakti', 0),
(158, 'Jeevan Sakti', 0),
(159, 'coffee', 0),
(160, 'coffee', 0),
(161, 'coffee', 2),
(162, 'coffee', 2),
(163, 'coffee', 2),
(164, 'coffee', 2),
(165, 'Jeevan Sakti', 1),
(166, 'Honey', 6),
(167, 'Jeevan Sakti', 1),
(168, 'Honey', 6),
(169, 'Jeevan Sakti', 1),
(170, 'Jeevan Sakti', 1),
(171, 'Jeevan Sakti', 1),
(172, 'Jeevan Sakti', 1),
(173, 'coffee', 2),
(174, 'coffee', 2),
(175, 'coffee', 2),
(176, 'Jeevan Sakti', 1),
(177, 'Jeevan Sakti', 1),
(178, 'Jeevan Sakti', 1),
(179, 'Jeevan Sakti', 1),
(180, 'Jeevan Sakti', 1),
(181, 'Jeevan Sakti', 1),
(182, 'Facewash', 0),
(183, 'Noodle', 4),
(184, 'Jeevan Sakti', 1),
(185, 'Noodle', 4),
(186, 'Honey', 6),
(187, 'Jeevan Sakti', 1),
(188, 'Jeevan Sakti', 1),
(189, 'Noodle', 4),
(190, 'Jeevan Sakti', 1),
(191, 'Noodle', 4),
(192, 'Jeevan Sakti', 1),
(193, 'Noodle', 4),
(194, 'Jeevan Sakti', 1),
(195, 'Honey', 6),
(196, 'Jeevan Sakti', 1),
(197, 'Noodle', 4),
(198, 'Honey', 6),
(199, 'Jeevan Sakti', 1),
(200, 'Noodle', 4),
(201, 'Noodle', 4),
(202, 'Jeevan Sakti', 1),
(203, 'Noodle', 4),
(204, 'Noodle', 0),
(205, 'Noodle', 0),
(206, 'Noodle', 0),
(207, 'Noodle', 0),
(208, 'Noodle', 0),
(209, 'Noodle', 0),
(210, 'Noodle', 0),
(211, 'Noodle', 0),
(212, 'Noodle', 0),
(213, 'Noodle', 0),
(214, 'Noodle', 0),
(215, 'Noodle', 0),
(216, 'Noodle', 0),
(217, 'Noodle', 0),
(218, 'Noodle', 0),
(219, 'Noodle', 0),
(220, 'Noodle', 0),
(221, 'Noodle', 0),
(222, 'Noodle', 0),
(223, 'Noodle', 0),
(224, 'Noodle', 0),
(225, 'Noodle', 0),
(226, 'Honey', 6),
(227, 'Mood on oil', 7),
(228, 'Noodle', 0),
(229, 'Noodle', 0),
(230, 'Noodle', 0),
(231, 'Noodle', 0),
(232, 'coffee', 0),
(233, 'Noodle', 0),
(234, 'coffee', 0),
(235, 'Honey', 6),
(236, 'Honey', 6),
(237, 'Honey', 6),
(238, 'coffee', 0),
(239, 'Noodle', 0),
(240, 'Noodle', 0),
(241, 'Noodle', 0),
(242, 'Noodle', 0),
(243, 'Noodle', 0),
(244, 'Noodle', 0),
(245, 'Noodle', 0),
(246, 'Noodle', 0),
(247, 'Noodle', 0),
(248, 'Noodle', 0),
(249, 'Noodle', 0),
(250, 'Noodle', 0),
(251, 'Noodle', 0),
(252, 'Noodle', 0),
(253, 'Noodle', 0),
(254, 'Noodle', 0),
(255, 'Noodle', 0),
(256, 'Noodle', 0),
(257, 'Noodle', 0),
(258, 'Noodle', 0),
(259, 'Noodle', 0),
(260, 'Noodle', 0),
(261, 'Noodle', 0),
(262, 'Noodle', 0),
(263, 'Noodle', 0),
(264, 'Noodle', 0),
(265, 'Noodle', 0),
(266, 'Noodle', 0),
(267, 'Noodle', 0),
(268, 'Noodle', 0),
(269, 'Noodle', 0),
(270, 'Noodle', 0),
(271, 'Livertonic', 0),
(272, 'coffee', 0),
(273, 'coffee', 0),
(274, 'Honey', 0),
(275, 'Honey', 0),
(276, 'coffee', 0),
(277, 'coffee', 0),
(278, 'coffee', 0),
(279, 'coffee', 0),
(280, 'coffee', 0),
(281, 'coffee', 0),
(282, 'coffee', 0),
(283, 'coffee', 0),
(284, 'coffee', 0),
(285, 'Noodle', 0),
(286, 'Honey', 0),
(287, 'Mood on oil', 0),
(288, 'coffee', 0),
(289, 'coffee', 0),
(290, 'coffee', 0),
(291, 'coffee', 0),
(292, 'coffee', 0),
(293, 'coffee', 0),
(294, 'coffee', 0),
(295, 'coffee', 0),
(296, 'coffee', 0),
(297, 'coffee', 0),
(298, 'coffee', 0),
(299, 'coffee', 0),
(300, 'coffee', 0),
(301, 'coffee', 0),
(302, 'coffee', 0),
(303, 'coffee', 0),
(304, 'coffee', 0),
(305, 'coffee', 0),
(306, 'coffee', 0),
(307, 'coffee', 0),
(308, 'coffee', 0),
(309, 'coffee', 0),
(310, 'coffee', 0),
(311, 'coffee', 0),
(312, 'coffee', 0),
(313, 'coffee', 0),
(314, 'coffee', 0),
(315, 'coffee', 0),
(316, 'coffee', 0),
(317, 'coffee', 0),
(318, 'coffee', 0),
(319, 'coffee', 0),
(320, 'coffee', 0),
(321, 'coffee', 0),
(322, 'coffee', 0),
(323, 'coffee', 0),
(324, 'coffee', 0),
(325, 'coffee', 0),
(326, 'Noodle', 0),
(327, 'coffee', 0),
(328, 'coffee', 0),
(329, 'coffee', 0),
(330, 'coffee', 0),
(331, 'coffee', 0),
(332, 'coffee', 0),
(333, 'coffee', 0),
(334, 'coffee', 0),
(335, 'coffee', 0),
(336, 'coffee', 0),
(337, 'coffee', 0),
(338, 'coffee', 0),
(339, 'coffee', 0),
(340, 'coffee', 0),
(341, 'coffee', 0),
(342, 'coffee', 0),
(343, 'coffee', 0),
(344, 'coffee', 0),
(345, 'coffee', 0),
(346, 'coffee', 0),
(347, 'coffee', 0),
(348, 'coffee', 0),
(349, 'coffee', 0),
(350, 'coffee', 0),
(351, 'coffee', 0),
(352, 'coffee', 0),
(353, 'coffee', 0),
(354, 'coffee', 0),
(355, 'coffee', 0),
(356, 'coffee', 0),
(357, 'Facewash', 0),
(358, 'Livertonic', 0),
(359, 'Cofta', 0),
(360, 'coffee', 0),
(361, 'coffee', 0),
(362, 'Noodle', 0),
(363, 'coffee', 0),
(364, 'coffee', 0),
(365, 'coffee', 0),
(366, 'coffee', 0),
(367, 'coffee', 0),
(368, 'coffee', 0),
(369, 'coffee', 0),
(370, 'coffee', 0),
(371, 'coffee', 0),
(372, 'coffee', 0),
(373, 'coffee', 0),
(374, 'coffee', 0),
(375, 'coffee', 0),
(376, 'coffee', 0),
(377, 'coffee', 0),
(378, 'coffee', 0),
(379, 'coffee', 0),
(380, 'coffee', 0),
(381, 'coffee', 0),
(382, 'coffee', 0),
(383, 'coffee', 0),
(384, 'coffee', 0),
(385, 'coffee', 0),
(386, 'coffee', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_order`
--
ALTER TABLE `pending_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `pro_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pending_order`
--
ALTER TABLE `pending_order`
  MODIFY `order_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `recommendation`
--
ALTER TABLE `recommendation`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
