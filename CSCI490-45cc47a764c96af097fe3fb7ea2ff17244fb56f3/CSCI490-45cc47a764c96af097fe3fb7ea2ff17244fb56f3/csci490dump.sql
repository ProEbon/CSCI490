-- MySQL dump 10.13  Distrib 5.7.10, for Win64 (x86_64)
--
-- Host: localhost    Database: csci490
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kimbellot`
--

DROP TABLE IF EXISTS `kimbellot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kimbellot` (
  `parkingLotId` char(6) NOT NULL,
  `parkingSpotId` char(8) NOT NULL,
  `occupied` tinyint(1) DEFAULT NULL,
  `occupiedBy` int(7) DEFAULT NULL,
  `spaceType` char(12) NOT NULL,
  `timeElapsed` time DEFAULT NULL,
  `spotTimeLimit` int(6) DEFAULT NULL,
  `overTime` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`parkingLotId`,`parkingSpotId`),
  KEY `occupiedBy` (`occupiedBy`),
  CONSTRAINT `kimbellot_ibfk_1` FOREIGN KEY (`occupiedBy`) REFERENCES `user` (`ccuId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kimbellot`
--

LOCK TABLES `kimbellot` WRITE;
/*!40000 ALTER TABLE `kimbellot` DISABLE KEYS */;
INSERT INTO `kimbellot` VALUES ('kimbel','A01',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','A02',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','A03',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','A04',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','A05',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','A06',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A07',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A08',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A09',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A10',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A11',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A12',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A13',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A14',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A15',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','A16',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B01',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B02',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B03',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B04',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B05',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B06',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B07',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B08',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B09',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B10',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B11',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B12',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B13',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B14',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B15',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B16',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B17',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B18',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B19',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B20',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B21',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','B22',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C01',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C02',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C03',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C04',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C05',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C06',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C07',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C08',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C09',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C10',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C11',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C12',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C13',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C14',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C15',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C16',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C17',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C18',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C19',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C20',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C21',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','C22',NULL,NULL,'faculty',NULL,NULL,NULL),('kimbel','D01',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D02',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D03',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D04',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D05',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D06',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D07',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D08',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D09',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D10',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D11',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D12',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D13',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D14',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D15',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D16',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D17',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D18',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','D19',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E01',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E02',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E03',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E04',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E05',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E06',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E07',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E08',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E09',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E10',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E11',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E12',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E13',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E14',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E15',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E16',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E17',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E18',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','E19',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F01',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F02',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F03',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F04',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F05',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F06',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F07',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F08',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F09',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F10',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F11',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F12',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F13',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F14',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F15',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F16',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F17',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F18',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','F19',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G01',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G02',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G03',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G04',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','G05',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','G06',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','G07',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','G08',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','G09',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G10',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G11',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G12',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G13',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G14',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G15',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G16',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','G17',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','H01',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','H02',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','H03',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','H04',NULL,NULL,'handicap',NULL,NULL,NULL),('kimbel','H05',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','H06',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','H07',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','H08',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','H09',NULL,NULL,'commuter',NULL,NULL,NULL),('kimbel','H10',NULL,NULL,'commuter',NULL,NULL,NULL);
/*!40000 ALTER TABLE `kimbellot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Fname` char(25) NOT NULL,
  `Lname` char(25) NOT NULL,
  `Uname` char(25) NOT NULL,
  `ccuId` int(7) NOT NULL,
  `gradYear` int(4) NOT NULL,
  `stickerId` int(5) NOT NULL,
  `stickerType` char(10) NOT NULL,
  `preferedLotId` char(10) DEFAULT NULL,
  `password` char(50) NOT NULL,
  PRIMARY KEY (`ccuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Ebon','Moore-Martin','ebmoorem',1034638,2018,1,'Commuter',NULL,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-02 21:15:39
