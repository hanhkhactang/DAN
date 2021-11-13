-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: db2
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `chuc_nang` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'thuoc dau bung','chua da  day','uong truoc khi an'),(2,'thuoc dau dau','chua dau dau, dau than kinh','uong sau khi an'),(4,'kalixianua','tu sat','cuc doc 1 giot la chet');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `mess` varchar(45) DEFAULT 'False',
  `lichkham` datetime DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patient_user_idx` (`id_user`),
  CONSTRAINT `fk_id_iduser` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'nguyen tran cong lap','chomamkhung1@gmail.com',_binary '','',NULL,18),(2,'dao van nguyen','nguyen@gmail.com',_binary '','',NULL,19),(3,'tran dinh hai','hai@gmail.com',_binary '','',NULL,20),(8,'nguyen van a','abc@gmail.com',_binary '','123',NULL,21),(9,'123','conglap.nt@gmail.com',_binary '','123',NULL,18),(10,'123','conglap.nt@gmail.com',_binary '','1234',NULL,19),(11,'123','conglap.nt@gmail.com',_binary '','123',NULL,20),(12,'123','conglap.nt@gmail.com',_binary '','123',NULL,21),(13,'123','caothudkmm@gmail.com',_binary '','123','2021-10-01 09:54:00',18),(14,'123','conglap.nt@gmail.com',_binary '','123','2021-10-01 09:54:00',19),(15,'12355','caothudkmm@gmail.com',_binary '','123','2021-10-01 09:54:00',20),(23,'Thanh','dhthanhqa@gmail.com',_binary '','123','2021-10-01 09:54:00',21),(24,'123','conglap.nt@gmail.com',_binary '','1','2021-10-01 15:50:00',7);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phanca`
--

DROP TABLE IF EXISTS `phanca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phanca` (
  `thu` int NOT NULL,
  `id_doctor` int DEFAULT NULL,
  `id_nurse` int DEFAULT NULL,
  PRIMARY KEY (`thu`),
  KEY `fk_iddoctor_iduser_idx` (`id_doctor`),
  KEY `fk_idnurse_iduser_idx` (`id_nurse`),
  CONSTRAINT `fk_iddoctor_iduser` FOREIGN KEY (`id_doctor`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_idnurse_iduser` FOREIGN KEY (`id_nurse`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phanca`
--

LOCK TABLES `phanca` WRITE;
/*!40000 ALTER TABLE `phanca` DISABLE KEYS */;
INSERT INTO `phanca` VALUES (2,19,20),(3,19,20),(4,19,20),(5,19,20),(6,19,20),(7,18,25),(8,19,20);
/*!40000 ALTER TABLE `phanca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_doctor` int NOT NULL,
  `id_patient` int NOT NULL,
  `ngaykham` datetime DEFAULT NULL,
  `chuandoan` varchar(100) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `lichuongthuoc` varchar(45) DEFAULT NULL,
  `loikhuyen` varchar(45) DEFAULT NULL,
  `tienkham` int DEFAULT '200000',
  `xacnhanyta` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `fk_idbacsy_iduser_idx1` (`id_patient`),
  KEY `fk_idbacsy_iduser_idx` (`id_doctor`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (1,1,1,NULL,NULL,_binary '\0',NULL,NULL,200000,_binary ''),(5,18,20,NULL,'a',_binary '\0',NULL,NULL,200000,_binary ''),(6,18,21,NULL,'123',_binary '\0',NULL,NULL,200000,_binary '\0'),(7,18,21,NULL,'123',_binary '\0',NULL,NULL,200000,_binary '\0'),(8,18,6,NULL,'1',_binary '\0',NULL,NULL,200000,_binary '\0'),(9,18,6,NULL,'1',_binary '\0',NULL,NULL,200000,_binary '\0'),(10,18,6,NULL,'1',_binary '\0','1','1',200000,_binary '\0'),(11,18,6,NULL,'ung thu',_binary '\0','1','a',200000,_binary '\0'),(12,18,7,'2021-11-12 00:00:00','123',_binary '','1','1',200000,_binary ''),(13,18,7,'2021-11-12 00:00:00','1',_binary '','1','1',200000,_binary ''),(33,18,0,NULL,'ungthu',_binary '\0','1','1',200000,_binary '\0'),(34,18,0,NULL,NULL,_binary '\0',NULL,NULL,200000,_binary '\0'),(35,18,0,NULL,NULL,_binary '\0',NULL,NULL,200000,_binary '\0'),(36,18,0,NULL,NULL,_binary '\0',NULL,NULL,200000,_binary '\0'),(37,18,0,NULL,NULL,_binary '\0',NULL,NULL,200000,_binary '\0'),(38,18,0,NULL,NULL,_binary '\0',NULL,NULL,200000,_binary '\0'),(39,18,18,'2021-11-12 00:00:00','123',_binary '','1','1',200000,_binary '\0'),(40,18,18,'2021-11-12 00:00:00','1',_binary '\0','1','1',200000,_binary '\0'),(41,18,0,NULL,NULL,_binary '\0',NULL,NULL,200000,_binary '\0');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptiondetails`
--

DROP TABLE IF EXISTS `prescriptiondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptiondetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idbenhan` int DEFAULT NULL,
  `idmedicine` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptiondetails`
--

LOCK TABLES `prescriptiondetails` WRITE;
/*!40000 ALTER TABLE `prescriptiondetails` DISABLE KEYS */;
INSERT INTO `prescriptiondetails` VALUES (1,1,1,1),(2,1,1,2),(3,1,1,2),(4,1,1,2),(5,1,1,2),(6,1,1,2),(7,1,1,2),(8,1,1,1),(9,1,1,1),(10,1,1,1),(11,12,1,4),(12,12,2,3),(13,12,1,1),(14,12,1,1),(15,12,2,1),(16,13,4,2),(17,13,1,1),(18,13,2,1),(19,13,4,1),(20,39,1,2),(21,39,2,2);
/*!40000 ALTER TABLE `prescriptiondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tam`
--

DROP TABLE IF EXISTS `tam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tam` (
  `tam` int NOT NULL,
  PRIMARY KEY (`tam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tam`
--

LOCK TABLES `tam` WRITE;
/*!40000 ALTER TABLE `tam` DISABLE KEYS */;
/*!40000 ALTER TABLE `tam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` bit(1) DEFAULT b'1',
  `user_role` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'Thanh','Duong','thanh.d@gmail.com',NULL,'dhthanh','$2a$10$6p2W8LRBt2a.h5HDJk074.UpCBwrycs165xZLRxUYx0m/nw0XacTO',_binary '\0','ROLE_ADMIN',NULL,NULL,'https://res.cloudinary.com/conglap123/image/upload/v1635405108/lfg6612mpa9qt7ivaaqm.png'),(7,'Thanh','Duong','dhthanhqa@gmail.com','0984461461','thanhduong','$2a$10$RL0rTJd2ThLmCzYHMhz9aOBBZfA8ybYpa3Ugl9ds.Pkb8AjtSHWua',_binary '','ROLE_USER',NULL,NULL,NULL),(8,'Doremon','Mr','mon@gmail.com','1111111111','doremon','$2a$10$qv8SsUwRnp/YhPWTPqdgp.MXJ01hcW4ji6wKvP6.qkWWx1ZxhqxyG',_binary '','ROLE_USER',NULL,NULL,NULL),(18,'cong lap','nguyen tran','conglap.nt@gmail.com',NULL,'conglap','$2a$10$0tgygn0yG6lE0J4.cJvBLu6x9/YSGaSO8ChtA3nTRgpOQbwrEioFy',_binary '\0','ROLE_DOCTOR','215496969','binh dinh ',NULL),(19,'cong lap','nguyen tran','chomamkhung@gmail.com',NULL,'conglapnt','$2a$10$4Ltylob61O0XNzAXdwExcuv1M5Omri7zO7/eaSmlsTYJ3JinsusJm',_binary '\0','ROLE_DOCTOR',NULL,NULL,NULL),(20,'A','Tran Thi','acd@gmail.com',NULL,'tranthia','$2a$10$fFWbox6PyPc2CoLoIghtOO.RS0Hl0tp/JKlsY5xaT06RHeZMgRwdK',_binary '\0','ROLE_NURSE','12','',NULL),(21,'123','aa','conglap.nt@gmail.com',NULL,'tranthia1','$2a$10$goRTWcYO/3L2SUwY0GNFeODnXmYVHU3Fv1zfZ4nOWsMBhqRtAQqCW',_binary '','ROLE_USER','1111111111','1',NULL),(22,'123','aa','conglap.nt@gmail.com',NULL,'tranthia12','$2a$10$CW.8Ig2h2QvaeokRhjzx4unt.NVyl9sigeEtqctjwB/0TN90ETWk6',_binary '','ROLE_USER','1111111111','1',NULL),(23,'123','aa','conglap.nt@gmail.com',NULL,'tranthia121','$2a$10$.jwmjqqjf6vXmS9w/n0xbewmiis1aIeiH/CM5AM9cB7ZaQVje2OCa',_binary '','ROLE_USER','1111111111','1',NULL),(25,'nguyen','1','123@gmail.com',NULL,'tranthia1123','$2a$10$lex.UWwXTPQROA8iAMznvukfb6.xTM7Ba48ZpDnFiklp06YHoAeJC',_binary '','ROLE_NURSE','111111',NULL,NULL),(26,'123','123','nguyen@gmail.com','1111111111','dhthanh','$2a$10$Y6nL32ZiZut/W121rqKpOuCfsdtGbQk3f5SVqrKjEENc/EcpIhWfW',_binary '','ROLE_USER','11111111','123','https://res.cloudinary.com/conglap123/image/upload/v1635405108/lfg6612mpa9qt7ivaaqm.png'),(27,'Ky','Nguyen Quoc','s277beautiful@gmail.com','0382327768','kingj','$2a$10$u2.6Znwt2SrMXmORK3CdhOflT/NK1K2m88RNopgQ3LkzPxHLkwXSW',_binary '\0','ROLE_ADMIN','215496969','binh dinh',NULL);
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

-- Dump completed on 2021-11-13 10:17:22
