-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 12:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `likies`
--

-- --------------------------------------------------------

--
-- Table structure for table `create_by`
--

CREATE TABLE `create_by` (
  `E_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `C_name` varchar(10) NOT NULL,
  `E_creator` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `create_in`
--

CREATE TABLE `create_in` (
  `E_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `C_name` varchar(10) NOT NULL,
  `E_year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `entertainment`
--

CREATE TABLE `entertainment` (
  `E_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `E_name` varchar(100) NOT NULL,
  `C_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `U_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `U_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `E_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `E_date` date NOT NULL,
  `E_detail` varchar(500) DEFAULT NULL,
  `E_pic` varchar(500) DEFAULT NULL,
  `E_rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `create_by`
--
ALTER TABLE `create_by`
  ADD PRIMARY KEY (`E_ID`);

--
-- Indexes for table `create_in`
--
ALTER TABLE `create_in`
  ADD PRIMARY KEY (`E_ID`);

--
-- Indexes for table `entertainment`
--
ALTER TABLE `entertainment`
  ADD PRIMARY KEY (`E_ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`U_ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`U_ID`,`E_ID`),
  ADD KEY `E_ID` (`E_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entertainment`
--
ALTER TABLE `entertainment`
  MODIFY `E_ID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `U_ID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `create_by`
--
ALTER TABLE `create_by`
  ADD CONSTRAINT `create_by_ibfk_1` FOREIGN KEY (`E_ID`) REFERENCES `entertainment` (`E_ID`);

--
-- Constraints for table `create_in`
--
ALTER TABLE `create_in`
  ADD CONSTRAINT `create_in_ibfk_1` FOREIGN KEY (`E_ID`) REFERENCES `entertainment` (`E_ID`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`U_ID`) REFERENCES `member` (`U_ID`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`E_ID`) REFERENCES `entertainment` (`E_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
