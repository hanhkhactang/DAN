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
-- Table structure for table `benhan`
--

DROP TABLE IF EXISTS `benhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benhan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_doctor` int DEFAULT NULL,
  `id_patient` int DEFAULT NULL,
  `ngaykham` datetime DEFAULT NULL,
  `chuandoan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benhan`
--

LOCK TABLES `benhan` WRITE;
/*!40000 ALTER TABLE `benhan` DISABLE KEYS */;
INSERT INTO `benhan` VALUES (1,21,18,'2021-10-01 09:54:00','Ung thu');
/*!40000 ALTER TABLE `benhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Điện thoại thông minh',NULL),(2,'Máy tính bảng',NULL),(3,'Máy tính xách tay',NULL),(4,'MOBILE','DIEN THOAI DI DONG');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `cmnd` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Nguy&#7877;n Tr&#7847;n Công','L&#7853;p','',NULL,NULL,NULL),(2,'Nguy&#7877;n Tr&#7847;n Công','L&#7853;p','chomamkhung1@gmail.com',NULL,NULL,NULL),(7,'aa','vv','abc@gmail.com','012312312','812712','HCM'),(8,'Nguy&#7877;n Tr&#7847;n Công','bahsd','0366565511@gmail.com',NULL,NULL,NULL),(10,'aa','b','mmm@gmail.com',NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `unit_price` decimal(10,0) DEFAULT '0',
  `num` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ORDERDETAIL_ORDER_idx` (`order_id`),
  KEY `FK_ORDERDETAIL_PRODUCT_idx` (`product_id`),
  CONSTRAINT `FK_ORDERDETAIL_ORDER` FOREIGN KEY (`order_id`) REFERENCES `sale_order` (`id`),
  CONSTRAINT `FK_ORDERDETAIL_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (5,4,1,12500000,'1'),(6,4,2,21000000,'1'),(7,4,3,17000000,'1'),(8,5,1,12500000,'1'),(9,5,3,17000000,'1'),(10,5,7,10540000,'1'),(11,6,2,21000000,'1'),(12,7,5,18600000,'1'),(13,7,6,12990000,'3'),(14,8,1,12500000,'1'),(15,8,2,21000000,'2'),(16,8,3,17000000,'1'),(17,9,1,12500000,'1'),(18,9,2,21000000,'2'),(19,10,4,28000000,'1'),(20,10,5,18600000,'5'),(21,11,1,12500000,'2'),(22,11,2,21000000,'2'),(23,11,3,17000000,'1'),(24,13,2,0,'0'),(25,13,1,0,'0');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'nguyen tran cong lap','chomamkhung1@gmail.com',_binary '','',NULL,6),(2,'dao van nguyen','nguyen@gmail.com',_binary '','',NULL,6),(3,'tran dinh hai','hai@gmail.com',_binary '','',NULL,6),(8,'nguyen van a','abc@gmail.com',_binary '','123',NULL,6),(9,'123','conglap.nt@gmail.com',_binary '','123',NULL,6),(10,'123','conglap.nt@gmail.com',_binary '','1234',NULL,6),(11,'123','conglap.nt@gmail.com',_binary '','123',NULL,6),(12,'123','conglap.nt@gmail.com',_binary '','123',NULL,6),(13,'123','conglap.nt@gmail.com',_binary '\0','123','2021-10-01 09:54:00',6),(14,'123','conglap.nt@gmail.com',_binary '\0','123','2021-10-01 09:54:00',6),(15,'12355','conglap.nt@gmail.com',_binary '\0','123','2021-10-01 09:54:00',6),(23,'Thanh','dhthanhqa@gmail.com',_binary '\0','123','2021-10-01 09:54:00',7);
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
  PRIMARY KEY (`thu`)
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  `manufacturer` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PRODUCE_CATEGORY_idx` (`category_id`),
  CONSTRAINT `FK_PRODUCE_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'iPhone 7 Plus','32GB',11000000,'Apple','/images/uploads/iphone-7-plus.png','2020-01-20 00:00:00',_binary '',1),(2,'Galaxy Note 10','64GB',21000000,'Samsung','/images/uploads/samsung-galaxy-note-10.png','2020-01-08 00:00:00',_binary '',1),(3,'iPhone 11','64GB',17000000,'Apple','/images/uploads/iphone-11.png','2020-01-12 00:00:00',_binary '',1),(4,'iPhone 11 Pro Max','64GB',28000000,'Apple','/images/uploads/iphone-11-pro-max.png','2020-01-15 00:00:00',_binary '',1),(5,'Galaxy Tab S6','128GB',18600000,'Samsung','/images/uploads/samsung-galaxy-tab-s6.png','2020-01-12 00:00:00',_binary '',2),(6,'iPad Mini 7.9','64GB, Wifi',12990000,'Apple','/images/uploads/ipad-mini.png','2020-01-18 00:00:00',_binary '',2),(7,'iPad 10.2 inch','32GB, Wifi Cellular',10540000,'Apple','/images/uploads/ipad-10-2-inch-wifi-cellular-32gb.png','2020-01-26 00:00:00',_binary '',2),(16,'iPhone 12 Pro','Apple',30000000,NULL,NULL,NULL,_binary '',1),(17,'iPhone 12 Pro','Apple',30000000,NULL,NULL,NULL,_binary '',1),(18,'iPhone 12 Pro','Apple',30000000,NULL,NULL,NULL,_binary '',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_order`
--

DROP TABLE IF EXISTS `sale_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,0) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ORDER_USER_idx` (`user_id`),
  CONSTRAINT `FK_ORDER_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_order`
--

LOCK TABLES `sale_order` WRITE;
/*!40000 ALTER TABLE `sale_order` DISABLE KEYS */;
INSERT INTO `sale_order` VALUES (4,50500000,'2020-02-03 00:00:00',7),(5,40040000,'2020-02-03 00:00:00',7),(6,21000000,'2020-02-03 00:00:00',7),(7,57570000,'2020-02-04 00:00:00',7),(8,71500000,'2020-02-05 00:00:00',6),(9,54500000,'2020-02-05 00:00:00',7),(10,121000000,'2020-02-07 00:00:00',6),(11,84000000,'2020-02-07 00:00:00',8),(12,100,'2020-11-17 18:43:31',NULL),(13,100,'2020-11-17 18:48:11',NULL);
/*!40000 ALTER TABLE `sale_order` ENABLE KEYS */;
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
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'Thanh','Duong','thanh.d@gmail.com',NULL,'dhthanh','$2a$10$6p2W8LRBt2a.h5HDJk074.UpCBwrycs165xZLRxUYx0m/nw0XacTO',_binary '\0','ROLE_ADMIN',NULL,NULL,NULL),(7,'Thanh','Duong','dhthanhqa@gmail.com','0984461461','thanhduong','$2a$10$RL0rTJd2ThLmCzYHMhz9aOBBZfA8ybYpa3Ugl9ds.Pkb8AjtSHWua',_binary '','ROLE_USER',NULL,NULL,NULL),(8,'Doremon','Mr','mon@gmail.com','1111111111','doremon','$2a$10$qv8SsUwRnp/YhPWTPqdgp.MXJ01hcW4ji6wKvP6.qkWWx1ZxhqxyG',_binary '','ROLE_USER',NULL,NULL,NULL),(18,'cong lap','nguyen tran','conglap.nt@gmail.com',NULL,'conglap','$2a$10$0tgygn0yG6lE0J4.cJvBLu6x9/YSGaSO8ChtA3nTRgpOQbwrEioFy',_binary '\0','ROLE_DOCTOR','215496969','binh dinh ',NULL),(19,'cong lap','nguyen tran','chomamkhung@gmail.com',NULL,'conglapnt','$2a$10$4Ltylob61O0XNzAXdwExcuv1M5Omri7zO7/eaSmlsTYJ3JinsusJm',_binary '\0','ROLE_DOCTOR',NULL,NULL,NULL),(20,'A','Tran Thi','acd@gmail.com',NULL,'tranthia','$2a$10$fFWbox6PyPc2CoLoIghtOO.RS0Hl0tp/JKlsY5xaT06RHeZMgRwdK',_binary '\0','ROLE_NURSE','12','',NULL),(21,'123','aa','conglap.nt@gmail.com',NULL,'tranthia1','$2a$10$goRTWcYO/3L2SUwY0GNFeODnXmYVHU3Fv1zfZ4nOWsMBhqRtAQqCW',_binary '','ROLE_USER','1111111111','1',NULL),(22,'123','aa','conglap.nt@gmail.com',NULL,'tranthia12','$2a$10$CW.8Ig2h2QvaeokRhjzx4unt.NVyl9sigeEtqctjwB/0TN90ETWk6',_binary '','ROLE_USER','1111111111','1',NULL),(23,'123','aa','conglap.nt@gmail.com',NULL,'tranthia121','$2a$10$.jwmjqqjf6vXmS9w/n0xbewmiis1aIeiH/CM5AM9cB7ZaQVje2OCa',_binary '','ROLE_USER','1111111111','1',NULL),(24,'123','1','123@gmail.com',NULL,'tranthia11','$2a$10$lex.UWwXTPQROA8iAMznvukfb6.xTM7Ba48ZpDnFiklp06YHoAeJC',_binary '','ROLE_USER','1111111111','1','https://res.cloudinary.com/dvdkjsrjj/image/upload/v1633530926/gbmp1uay86ykgzgzohgc.png'),(25,'nguyen','1','123@gmail.com',NULL,'tranthia1123','$2a$10$lex.UWwXTPQROA8iAMznvukfb6.xTM7Ba48ZpDnFiklp06YHoAeJC',_binary '','ROLE_NURSE','111111',NULL,NULL);
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

-- Dump completed on 2021-10-11 19:49:09
