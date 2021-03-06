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
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'Paracetamol','Thuốc giảm đau đầu hay hạ sốt','Liều tổng cộng cao có thể dẫn đến ngộ độc.'),(2,'Aspirin','Dùng chữa đau nhức xương khớp ','Người có bệnh thận mạn tính hay loét bao tử nên hỏi ý kiến bác sĩ trước khi dùng.'),(3,'Diphenhydramine','Giảm triệu chứng ngứa và dị ứng','Tất cả các thuốc này đều có thể gây nhức đầu, mệt mỏi, và khó chịu bao tử.'),(4,'Omeprazole','Thuốc giảm đau bao tử, kháng acid','Bạn có thể mua các thuốc giảm acid hay kháng acid ở nhà thuốc để dùng tạm, uống vào vài giờ sau mới bắt đầu có tác dụng.'),(5,'Bismuth subsalicylate.','Thuốc ngủ','Lưu ý nếu bị mất ngủ lâu dài, cân gặp bác sĩ ngay vì những nguy hiểm xảy ra biến chứng như đột quỵ, trụy tim, trầm cảm, hay các bệnh tiêu hóa khác.');
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
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `mess` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'False',
  `lichkham` datetime DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_patient_user_idx` (`id_user`),
  CONSTRAINT `fk_id_iduser` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'nguyen tran cong lap','chomamkhung1@gmail.com',_binary '','',NULL,13),(2,'dao van nguyen','nguyen@gmail.com',_binary '','',NULL,14),(3,'tran dinh hai','hai@gmail.com',_binary '','',NULL,15),(9,'123','conglap.nt@gmail.com',_binary '\0','123',NULL,13),(10,'123','conglap.nt@gmail.com',_binary '\0','1234',NULL,14),(11,'123','conglap.nt@gmail.com',_binary '\0','123',NULL,15);
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
INSERT INTO `phanca` VALUES (2,8,10),(3,8,11),(4,9,12),(5,7,12),(6,8,10),(7,9,11),(8,7,12);
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
  `chuandoan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `lichuongthuoc` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `loikhuyen` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tienkham` int DEFAULT '200000',
  `xacnhanyta` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `fk_idbacsy_iduser_idx1` (`id_patient`),
  KEY `fk_idbacsy_iduser_idx` (`id_doctor`),
  CONSTRAINT `fk_pres_user` FOREIGN KEY (`id_doctor`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_prse_doctor` FOREIGN KEY (`id_patient`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (1,7,13,NULL,'ung thu',_binary '\0','1 ngày 1 viên','Nên ăn ngon ngon vào',200000,_binary ''),(5,8,13,'2021-11-12 00:00:00','a',_binary '\0','1 ngày 1 viên','Nên ngủ sớm',200000,_binary ''),(6,9,13,'2021-11-12 00:00:00','ung thu',_binary '\0','1 ngày 1 viên','Nên ăn ngon ngon vào',200000,_binary '\0'),(7,7,14,'2021-11-12 00:00:00','123',_binary '\0','1 ngày 1 viên','Nên ngủ sớm',200000,_binary '\0'),(8,8,14,'2021-11-12 00:00:00','ung thu',_binary '\0','1 ngày 1 viên','Nên ngủ sớmNên ngủ sớm',200000,_binary '\0'),(42,7,15,'2021-11-14 00:00:00','Ung thÆ° sáº¯p cháº¿t',_binary '','2 ngÃ y 1 viÃªn','Än ngon ngon vÃ o',200000,_binary '\0'),(43,9,15,'2021-11-14 00:00:00','ung thu',_binary '\0','ung thu','ung thu',200000,_binary '\0'),(45,7,15,'2021-11-14 00:00:00','ung thu',_binary '\0','2 ngÃ y 1 viÃªn','1',200000,_binary '\0'),(46,7,15,'2021-11-14 00:00:00','Ung thÆ°',_binary '\0','1 ngÃ y 1 viÃªn','uong vao buoi snag',200000,_binary '\0');
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
  PRIMARY KEY (`id`),
  KEY `fk_detail_pres_idx` (`idbenhan`),
  KEY `fk_detail_medicine_idx` (`idmedicine`),
  CONSTRAINT `fk_detail_medicine` FOREIGN KEY (`idmedicine`) REFERENCES `medicine` (`id`),
  CONSTRAINT `fk_detail_pres` FOREIGN KEY (`idbenhan`) REFERENCES `prescription` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptiondetails`
--

LOCK TABLES `prescriptiondetails` WRITE;
/*!40000 ALTER TABLE `prescriptiondetails` DISABLE KEYS */;
INSERT INTO `prescriptiondetails` VALUES (1,1,1,1),(2,5,1,2),(3,7,1,2),(4,6,1,2),(5,8,1,2),(6,1,2,2),(7,5,2,2),(8,6,2,1),(9,7,2,1),(10,8,2,1),(11,1,3,4),(12,5,3,3),(13,6,3,1),(14,7,3,1),(15,8,3,1),(16,1,4,2),(17,5,4,1),(18,6,4,1),(19,7,4,1),(20,8,5,2),(21,1,5,2),(22,42,1,2),(23,42,2,2),(24,42,3,2),(25,42,4,2),(26,42,5,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'Thành','Duong','thanh.d@gmail.com',NULL,'admin','$2a$10$6p2W8LRBt2a.h5HDJk074.UpCBwrycs165xZLRxUYx0m/nw0XacTO',_binary '\0','ROLE_ADMIN',NULL,NULL,'https://res.cloudinary.com/conglap123/image/upload/v1635405108/lfg6612mpa9qt7ivaaqm.png'),(7,'Lập','nguyen tran','conglap.nt@gmail.com',NULL,'doctor1','$2a$10$0tgygn0yG6lE0J4.cJvBLu6x9/YSGaSO8ChtA3nTRgpOQbwrEioFy',_binary '\0','ROLE_DOCTOR','215496969','binh dinh ',NULL),(8,'Khoa','nguyen tran','chomamkhung@gmail.com',NULL,'doctor2','$2a$10$4Ltylob61O0XNzAXdwExcuv1M5Omri7zO7/eaSmlsTYJ3JinsusJm',_binary '\0','ROLE_DOCTOR',NULL,NULL,NULL),(9,'Nguyên','Tran Thi','acd@gmail.com',NULL,'doctor3','$2a$10$fFWbox6PyPc2CoLoIghtOO.RS0Hl0tp/JKlsY5xaT06RHeZMgRwdK',_binary '\0','ROLE_DOCTOR','12','',NULL),(10,'Yến','aa','conglap.nt@gmail.com',NULL,'nurse1','$2a$10$goRTWcYO/3L2SUwY0GNFeODnXmYVHU3Fv1zfZ4nOWsMBhqRtAQqCW',_binary '','ROLE_NURSE','1111111111','1',NULL),(11,'Uyên','aa','conglap.nt@gmail.com',NULL,'nurse2','$2a$10$CW.8Ig2h2QvaeokRhjzx4unt.NVyl9sigeEtqctjwB/0TN90ETWk6',_binary '','ROLE_NURSE','1111111111','1',NULL),(12,'Bình','aa','conglap.nt@gmail.com',NULL,'nurse3','$2a$10$.jwmjqqjf6vXmS9w/n0xbewmiis1aIeiH/CM5AM9cB7ZaQVje2OCa',_binary '','ROLE_NURSE','1111111111','1',NULL),(13,'Hằng','123','nguyen@gmail.com','1111111111','user1','$2a$10$.jwmjqqjf6vXmS9w/n0xbewmiis1aIeiH/CM5AM9cB7ZaQVje2OCa',_binary '\0','ROLE_USER','11111111','123','https://res.cloudinary.com/conglap123/image/upload/v1635405108/lfg6612mpa9qt7ivaaqm.png'),(14,'minh','123','nguyen@gmail.com',NULL,'user2','$2a$10$.jwmjqqjf6vXmS9w/n0xbewmiis1aIeiH/CM5AM9cB7ZaQVje2OCa',_binary '','ROLE_USER',NULL,NULL,NULL),(15,'Cầm','1123','nguyen@gmail.com',NULL,'user3','$2a$10$.jwmjqqjf6vXmS9w/n0xbewmiis1aIeiH/CM5AM9cB7ZaQVje2OCa',_binary '','ROLE_USER',NULL,NULL,NULL);
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

-- Dump completed on 2021-11-14 14:29:45
