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
-- Table structure for table `tblmathang`
--

DROP TABLE IF EXISTS `tblmathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmathang` (
  `tblMathangID` int NOT NULL,
  `tenmathang` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `giaban` float DEFAULT NULL,
  `gianhap` float DEFAULT NULL,
  `nhacungcap` varchar(255) DEFAULT NULL,
  `nhanhieu` varchar(255) DEFAULT NULL,
  `tblMathangsudungID` int DEFAULT NULL,
  PRIMARY KEY (`tblMathangID`),
  KEY `tblMathangsudungID` (`tblMathangsudungID`),
  CONSTRAINT `tblmathang_ibfk_1` FOREIGN KEY (`tblMathangsudungID`) REFERENCES `tblmathangsudung` (`tblMathangsudungID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmathang`
--

LOCK TABLES `tblmathang` WRITE;
/*!40000 ALTER TABLE `tblmathang` DISABLE KEYS */;
INSERT INTO `tblmathang` VALUES (1,'oke babe','OK',30000,20000,'abc','OK',NULL),(2,'acbxyz','1212',10000,7000,'Ga Muuuu','Adidasssssss',2),(3,'Thach rau cau','TRV',25000,15000,'Boganic','Long Hai',3),(4,'Banh trung thu','BTT',15000,80000,'Guciiiiiiiiiiiii','Bao Hung',4),(5,'Miranda soda kem','MSDK',10000,7200,'Nam Hai','Pink',5),(6,'Miranda mau cam','MMC',10000,7200,'Nam Hai','Clock',6),(7,'Miranda chua nghi ra','MCNR',15000,12000,'Paper','Nam Hai',7),(8,'Nuoc loccc','VN01',6000,3500,'Clock','Nam Hai',8),(9,'abcccc','vcac',15000,5000,'qet','Nam Hai',8),(10,'vhvcahvc','jacjad',15000,6000,'adgh','Nam Hai',7),(11,'jbk','848ad',15100,1540,'bnv','Nam Hai',8),(12,'adghjs','bca120',600000,6000,'Nam Hai','Adidas',NULL);
/*!40000 ALTER TABLE `tblmathang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-15 13:56:52
