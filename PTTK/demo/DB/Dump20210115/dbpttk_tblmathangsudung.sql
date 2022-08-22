-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: dbpttk
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblmathangsudung`
--

DROP TABLE IF EXISTS `tblmathangsudung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmathangsudung` (
  `tblMathangsudungID` int NOT NULL,
  `soluongsudung` float DEFAULT NULL,
  `tblTkdoanhthuID` int DEFAULT NULL,
  `tblCheckincheckoutID` int DEFAULT NULL,
  PRIMARY KEY (`tblMathangsudungID`),
  KEY `tblTkdoanhthuID` (`tblTkdoanhthuID`),
  KEY `tblCheckincheckoutID` (`tblCheckincheckoutID`),
  CONSTRAINT `tblmathangsudung_ibfk_1` FOREIGN KEY (`tblTkdoanhthuID`) REFERENCES `tbltkdoanhthu` (`tblTkdoanhthuID`),
  CONSTRAINT `tblmathangsudung_ibfk_2` FOREIGN KEY (`tblCheckincheckoutID`) REFERENCES `tblcheckincheckout` (`tblCheckincheckoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmathangsudung`
--

LOCK TABLES `tblmathangsudung` WRITE;
/*!40000 ALTER TABLE `tblmathangsudung` DISABLE KEYS */;
INSERT INTO `tblmathangsudung` VALUES (1,NULL,NULL,1),(2,NULL,NULL,2),(3,NULL,NULL,3),(4,NULL,NULL,4),(5,NULL,NULL,5),(6,NULL,NULL,6),(7,NULL,NULL,7),(8,NULL,NULL,8);
/*!40000 ALTER TABLE `tblmathangsudung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-15 13:56:51
