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
-- Table structure for table `tblthanhvien`
--

DROP TABLE IF EXISTS `tblthanhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblthanhvien` (
  `tblThanhvienID` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tblDiachiID` int DEFAULT NULL,
  `tblHotenID` int DEFAULT NULL,
  `vaitro` varchar(45) NOT NULL,
  PRIMARY KEY (`tblThanhvienID`),
  KEY `tblDiachiID` (`tblDiachiID`),
  KEY `tblHotenID` (`tblHotenID`),
  CONSTRAINT `tblthanhvien_ibfk_1` FOREIGN KEY (`tblDiachiID`) REFERENCES `tbldiachi` (`tblDiachiID`),
  CONSTRAINT `tblthanhvien_ibfk_2` FOREIGN KEY (`tblHotenID`) REFERENCES `tblhoten` (`tblHotenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblthanhvien`
--

LOCK TABLES `tblthanhvien` WRITE;
/*!40000 ALTER TABLE `tblthanhvien` DISABLE KEYS */;
INSERT INTO `tblthanhvien` VALUES (1,'chungpyo.caominh@mail.com','0384557551',NULL,'caominhchung','chung123',1,1,'quanli'),(2,'nguyenquanglinh@gmal.com','0342734777',NULL,'nguyenquanlinh','linh123',2,2,'letan'),(3,'daovantuyen@gmail.com','0347270055',NULL,'daovantuyen','tuyen123',3,3,'nvkho'),(4,'nguyenthidung@gmail.com','0373255565',NULL,'nguyenthidung','dung123',4,4,'kh'),(5,'hohieunghia@gmail.com','0852673839',NULL,'hohieunghia','nghia123',5,5,'kh'),(6,'nguyenhoanghiep@gmail.com','0949221502',NULL,'nguyenhoanghiep','hiep123',6,6,'kh');
/*!40000 ALTER TABLE `tblthanhvien` ENABLE KEYS */;
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
