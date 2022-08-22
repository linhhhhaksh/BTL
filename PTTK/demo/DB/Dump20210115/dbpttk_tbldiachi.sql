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
-- Table structure for table `tbldiachi`
--

DROP TABLE IF EXISTS `tbldiachi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldiachi` (
  `tblDiachiID` int NOT NULL,
  `sonha` varchar(255) DEFAULT NULL,
  `toanha` varchar(255) DEFAULT NULL,
  `xompho` varchar(255) DEFAULT NULL,
  `phoxa` varchar(255) DEFAULT NULL,
  `quanhuyen` varchar(255) DEFAULT NULL,
  `tinhthanh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tblDiachiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldiachi`
--

LOCK TABLES `tbldiachi` WRITE;
/*!40000 ALTER TABLE `tbldiachi` DISABLE KEYS */;
INSERT INTO `tbldiachi` VALUES (1,'210','A1','Dinh Thon','My Dinh 1','Nam Tu Liem','Ha Noi'),(2,'33','G2','Me Tri','My Dinh 1','Nam Tu Liem','Ha Noi'),(3,'11','S2','Nguyen Van Troi','Mo Lao','Ha Dong','Ha Noi'),(4,'111','A1','Li Thai To','Tran Hung Dao','Hai Ba Trung','Ha Noi'),(5,'123','D1','Mac Thai To','ABC','Cau Giay','Ha Noi'),(6,'230','G5','Nguyen Hue','XYZ','Ha Dong','Ha Noi');
/*!40000 ALTER TABLE `tbldiachi` ENABLE KEYS */;
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
