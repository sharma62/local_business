-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 09:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local_business`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CNUM` int(11) NOT NULL,
  `CNAME` varchar(15) NOT NULL,
  `CITY` varchar(10) NOT NULL,
  `RATTING` int(10) NOT NULL,
  `SNUM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CNUM`, `CNAME`, `CITY`, `RATTING`, `SNUM`) VALUES
(2001, 'Harsh ', 'london', 100, 1001),
(2002, 'Gita', 'Rome', 200, 1003),
(2003, 'Lalita', 'surat', 200, 1002),
(2004, 'Govind', 'Bombay', 300, 1002),
(2006, 'Chirag', 'london', 100, 1001),
(2007, 'Partik', 'Rome', 100, 1004),
(2008, 'Chinmay', 'Surat', 300, 1007);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ONUM` int(11) NOT NULL,
  `AMOUNT` float NOT NULL,
  `ODATE` date NOT NULL,
  `CNUM` int(10) NOT NULL,
  `SNUM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ONUM`, `AMOUNT`, `ODATE`, `CNUM`, `SNUM`) VALUES
(3001, 18.69, '1997-03-10', 2008, 1007),
(3002, 1900.1, '1997-03-10', 2007, 1004),
(3003, 767.19, '1997-03-10', 2001, 1001),
(3005, 5160.45, '1997-03-10', 2003, 1002),
(3006, 1098.16, '1997-03-10', 2008, 1007),
(3007, 75.75, '1997-04-10', 2004, 1002),
(3008, 4723, '1997-05-10', 2006, 1001),
(3009, 1713.23, '1997-04-10', 2002, 1003),
(3010, 1309.95, '1997-06-10', 2004, 1002),
(3011, 9891.88, '1997-06-10', 2006, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `SNUM` int(11) NOT NULL,
  `SNAME` varchar(15) NOT NULL,
  `CITY` varchar(10) NOT NULL,
  `COMMISSION` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`SNUM`, `SNAME`, `CITY`, `COMMISSION`) VALUES
(1001, 'piyush', 'london', '12'),
(1002, 'sejal', 'surat', '13'),
(1003, 'Anand', 'new delhi', '10'),
(1004, 'miti', 'london', '11'),
(1007, 'Rajesh', 'Baroda', '15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CNUM`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ONUM`);

--
-- Indexes for table `salesman`
--
ALTER TABLE `salesman`
  ADD PRIMARY KEY (`SNUM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CNUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20072;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ONUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3012;

--
-- AUTO_INCREMENT for table `salesman`
--
ALTER TABLE `salesman`
  MODIFY `SNUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
