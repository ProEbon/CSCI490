-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 01, 2016 at 02:38 PM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DatabaseNamePending`
--

-- --------------------------------------------------------

--
-- Table structure for table `kimbelLot`
--

CREATE TABLE `kimbelLot` (
  `parkingLotId` char(6) NOT NULL,
  `parkingSpotId` char(8) NOT NULL,
  `occupied` tinyint(1) DEFAULT NULL,
  `occupiedBy` int(7) DEFAULT NULL,
  `spaceType` char(12) NOT NULL,
  `timeElapsed` time DEFAULT NULL,
  `spotTimeLimit` int(6) DEFAULT NULL,
  `overTime` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kimbelLot`
--

INSERT INTO `kimbelLot` (`parkingLotId`, `parkingSpotId`, `occupied`, `occupiedBy`, `spaceType`, `timeElapsed`, `spotTimeLimit`, `overTime`) VALUES
('kimbel', 'A01', NULL, NULL, 'handicap', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `Fname` char(25) NOT NULL,
  `Lname` char(25) NOT NULL,
  `Uname` char(25) NOT NULL,
  `ccuId` int(7) NOT NULL,
  `gradYear` int(4) NOT NULL,
  `stickerId` int(5) NOT NULL,
  `stickerType` char(10) NOT NULL,
  `preferedLotId` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`Fname`, `Lname`, `Uname`, `ccuId`, `gradYear`, `stickerId`, `stickerType`, `preferedLotId`) VALUES
('Ebon', 'Moore-Martin', 'ebmoorem', 1034638, 2018, 1, 'Commuter', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kimbelLot`
--
ALTER TABLE `kimbelLot`
  ADD PRIMARY KEY (`parkingLotId`,`parkingSpotId`),
  ADD KEY `occupiedBy` (`occupiedBy`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ccuId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kimbelLot`
--
ALTER TABLE `kimbelLot`
  ADD CONSTRAINT `kimbellot_ibfk_1` FOREIGN KEY (`occupiedBy`) REFERENCES `User` (`ccuId`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
