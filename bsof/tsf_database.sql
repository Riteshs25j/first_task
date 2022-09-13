-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2022 at 10:18 AM
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
-- Database: `tsf_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Balance` int(10) NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Email`, `Phone`, `Balance`) VALUES
(1, 'Ritesh Gore', 'riteshgore123@gmail.com', '9458214598', 70003),
(2, 'kiran kinge', 'kirankinge@gmail.com', '8855449902', 7909),
(3, 'omkar kshirsagar', 'omkar.kshirsagar@gmail.com', '918785451', 8028),
(4, 'parag panzade', 'paragpanzade@gmail.com', '9988556471', 8652),
(5, 'mrudul narkhade', 'mrudulnarkhade2@gmail.com', '7021564785', 4505),
(6, 'lokesh dake', 'lokeshdake@gmail.com', '8855449621', 8142),
(7, 'aditya pawar', 'adityapawar@gmail.com', '8975262556', 8100),
(8, 'mayur gawade', 'mayurgawade@gmail.com', '8459723165', 8361),
(9, 'Jayant chakala', 'jayantchakala@gmail.com', '8457965478', 500),
(10, 'sharad prajapati', 'sharadprajapati@gmail.com', '9876589123', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sno` int(5) NOT NULL,
  `Name1` varchar(30) NOT NULL,
  `Name2` varchar(30) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Sno`, `Name1`, `Name2`, `Amount`, `Time`) VALUES
(1, 'kiran kinge', 'Ritesh Gore', 10, '2022-09-10 05:20:47'),
(2, 'parag panzadr', 'Ritesh Gore', 850, '2022-09-10 05:29:23'),
(3, 'omkar kshirsagar', 'Ritesh Gore', 770, '2022-09-10 05:29:23'),
(4, 'prasad kshirsagar', 'Ritesh Gore', 1000, '2022-09-10 05:29:23'),
(5, 'kiran kinge', 'mrudul narkhade', 540, '2022-09-10 05:29:23'),
(6, 'kiran kinge', 'parag panzade', 952, '2022-09-10 05:29:23'),
(7, 'mayur gawade', 'Ritesh Gore', 958, '2022-09-10 05:29:23'),
(8, 'lokesh dake', 'Ritesh Gore', 900, '2022-09-10 05:29:23'),
(9, 'mrudul narkhade', 'lokesh dake', 800, '2022-09-10 05:29:23'),
(10, 'omkar kshirsagar', 'lokesh dake', 1000, '2022-09-10 05:29:23'),
(19, 'kiran kinge', 'mrudul narkhade', 5, '2022-09-11 05:13:13'),
(18, 'omkar kshirsagar', 'parag panzade', 52, '2022-09-11 05:12:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Sno` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
