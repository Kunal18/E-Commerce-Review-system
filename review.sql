-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2017 at 02:26 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `review`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `aid` int(10) NOT NULL,
  `aname` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`aid`, `aname`, `password`) VALUES
(1, 'kunal', '123456'),
(2, 'aatish', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `pid` int(10) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `descr` varchar(150) NOT NULL,
  `cost` float NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`pid`, `pname`, `type`, `brand`, `descr`, `cost`, `image`) VALUES
(1, 'canoneos700d', 'camera', 'canon', 'dslr', 12000, 'ceos700d.jpg'),
(26, 'canoneos800d', 'camera', 'canon', 'dslr1', 12001, 'ceos800d.jpg'),
(28, 'ceos1300d', 'camera', 'canon', 'dslr', 1200, 'ceos1300d.jpg'),
(30, 'nd3300', 'camera', 'nikon', 'dslr3', 1500, 'nd3300.jpg'),
(32, 'galaxys8', 'mobile', 'samsung', 's8', 15000, 'galaxys8.jpg'),
(34, 'le1', 'mobile', 'leeco', 'le1', 15000, 'le1.jpg'),
(36, 'lenovok6', 'mobile', 'lenovo', 'k6', 15000, 'lenovok6.jpg'),
(38, 'honor8', 'mobile', 'honor', 'h8', 15001, 'honor8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `rid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `review` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`rid`, `uid`, `pid`, `review`) VALUES
(0, 0, 0, ''),
(0, 0, 26, ''),
(0, 0, 26, ''),
(0, 0, 0, 'sdadsdasdaads'),
(0, 0, 0, 'asdasdasdas'),
(0, 0, 0, 'kunaal'),
(0, 0, 1, ''),
(0, 0, 0, 'hjdsjhdjxklsdsd'),
(1, 1, 1, 'canoneos700d'),
(0, 0, 1, ''),
(0, 0, 0, 'ghfhgfgfthgnfj'),
(0, 0, 0, 'ghfhgfgfthgnfj'),
(0, 0, 1, ''),
(0, 0, 0, 'fisdiufsids'),
(0, 0, 0, 'fsijdsiudsids'),
(0, 1, 1, ''),
(0, 1, 0, 'aaatish dvd'),
(0, 1, 0, 'aaatish dvd'),
(0, 1, 1, ''),
(0, 1, 0, 'jdkjdskjdsds'),
(0, 1, 28, ''),
(0, 1, 0, 'kaju katli'),
(0, 1, 28, ''),
(0, 1, 28, ''),
(0, 1, 26, 'ilu'),
(0, 1, 32, 'thanku'),
(0, 1, 32, 'thanku'),
(0, 1, 32, 'thanku'),
(0, 1, 32, 'thanku'),
(0, 1, 32, 'thanku'),
(0, 1, 32, 'thanku'),
(0, 1, 32, 'xuiqwgdui'),
(0, 1, 26, 'clehropfhr'),
(0, 1, 26, 'clehropfhr'),
(0, 1, 26, 'clehropfhr'),
(0, 1, 26, 'clehropfhr'),
(0, 1, 26, 'clehropfhr'),
(0, 1, 26, 'clehropfhr'),
(0, 1, 0, ''),
(0, 1, 32, 'kkkkkk'),
(0, 1, 34, 'kkkkk'),
(0, 1, 34, 'lllllll'),
(0, 1, 34, 'hvytdrserztcvb'),
(0, 1, 38, 'thank you for internship');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `uname`, `uemail`, `password`) VALUES
(1, 'kunal', 'a@g.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
