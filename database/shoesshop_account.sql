-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: shoesshop
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` enum('MALE','FEMALE','UNKNOWN') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `role` enum('ADMIN','EMPLOYEE','CUSTOMER') NOT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi','Admin','User','admin@example.com','123 Main St','0365774124','UNKNOWN','1990-01-01','ADMIN','2024-01-11 09:23:19'),(2,'employee1','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi','Nguyễn','Thanh Trúc','thanhtruc@gmail.com','Phường 5, TP Trà Vinh','0365774124','FEMALE','2002-05-15','EMPLOYEE','2024-01-11 09:23:19'),(3,'employee2','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi','Nguyễn Thị','Mỹ Yến','myyen@gmail.com','Phường 4, TP Trà Vinh','0365774124','FEMALE','2002-05-29','EMPLOYEE','2024-01-11 09:23:19'),(4,'yenphuong','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi','Nguyễn','Yến Phượng','yenphuong@gmail.com','Phường 1, TP Trà Vinh','0365774124','FEMALE','2002-10-20','CUSTOMER','2024-01-11 09:23:19'),(5,'huyentran','$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi','Nguyễn Thị','Huyền Trân','huyentran@gmail.com','Châu Thành, Trà Vinh','0365774124','FEMALE','2002-09-29','CUSTOMER','2024-01-11 09:23:19'),(6,'phamdinh','$2a$10$qV/kQ6f4E7fQPEX/BXjsh.LMpq.yRYk/tG6jdXp5xcj.z5aafTrla','Phạm Quyển','Đình','pdinh0823@gmail.com','p5, tp Trà Vinh','0365774124','FEMALE','2002-02-09','CUSTOMER','2024-03-20 14:25:35'),(7,'khanguyen','$2a$10$KLZ6r/ojCT/534BdOAtvR.pJJ3Rb9hYNPXS.Y5qT9zVj3x8cfqA0S','Nguyễn Hoàng','Kha','hoangkha@gmail.com','p5, tp Trà Vinh','0384214810','FEMALE','2002-02-09','CUSTOMER','2024-03-20 14:28:40');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10 22:20:11
