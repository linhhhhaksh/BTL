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
-- Table structure for table `tblhoadonthanhtoan`
--

DROP TABLE IF EXISTS `tblhoadonthanhtoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhoadonthanhtoan` (
  `tblHoadonthanhtoanID` int NOT NULL,
  `tongtien` float DEFAULT NULL,
  `tblThanhvienID` int DEFAULT NULL,
  `tblTkdoanhthuID` int DEFAULT NULL,
  PRIMARY KEY (`tblHoadonthanhtoanID`),
  KEY `tblThanhvienID` (`tblThanhvienID`),
  KEY `tblTkdoanhthuID` (`tblTkdoanhthuID`),
  CONSTRAINT `tblhoadonthanhtoan_ibfk_1` FOREIGN KEY (`tblThanhvienID`) REFERENCES `tblkhachhang` (`tblThanhvienID`),
  CONSTRAINT `tblhoadonthanhtoan_ibfk_2` FOREIGN KEY (`tblThanhvienID`) REFERENCES `tblletan` (`tblThanhvienID`),
  CONSTRAINT `tblhoadonthanhtoan_ibfk_3` FOREIGN KEY (`tblTkdoanhthuID`) REFERENCES `tbltkdoanhthu` (`tblTkdoanhthuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhoadonthanhtoan`
--

LOCK TABLES `tblhoadonthanhtoan` WRITE;
/*!40000 ALTER TABLE `tblhoadonthanhtoan` DISABLE KEYS */;
INSERT INTO `tblhoadonthanhtoan` VALUES (1,NULL,NULL,1),(2,NULL,NULL,1),(3,NULL,NULL,2),(4,NULL,NULL,3),(5,NULL,NULL,4),(6,NULL,NULL,2),(7,NULL,NULL,3),(8,NULL,NULL,3);
/*!40000 ALTER TABLE `tblhoadonthanhtoan` ENABLE KEYS */;
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
