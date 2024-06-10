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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderId` int unsigned NOT NULL AUTO_INCREMENT,
  `customerId` int unsigned DEFAULT NULL,
  `orderDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `totalAmount` float NOT NULL,
  `paymentMethodId` int unsigned DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `recipient_phone` varchar(20) DEFAULT NULL,
  `oderStatus` enum('ADDED_TO_CARD','TO_PAY','TO_RECEIVE','COMPLETED','CANCELED','FEEDBACK_COMPLETED') NOT NULL,
  `employeeId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `employeeId` (`employeeId`),
  KEY `customerId` (`customerId`),
  KEY `paymentMethodId` (`paymentMethodId`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `account` (`id`) ON DELETE SET NULL,
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `account` (`id`) ON DELETE SET NULL,
  CONSTRAINT `order_ibfk_3` FOREIGN KEY (`paymentMethodId`) REFERENCES `paymentmethod` (`paymentMethodId`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,4,'2024-01-11 09:23:19',0,NULL,NULL,NULL,'ADDED_TO_CARD',NULL),(2,5,'2024-01-11 09:23:19',0,NULL,NULL,NULL,'ADDED_TO_CARD',NULL),(3,4,'2024-01-16 11:51:19',315000,2,'90, Xã Thượng Phùng, Huyện Mèo Vạc, Tỉnh Hà Giang','0365774124','CANCELED',NULL),(4,4,'2024-01-23 01:02:19',1110000,2,'123, Xã Hòa Phú, Huyện Tây Hoà, Tỉnh Phú Yên',NULL,'TO_PAY',NULL),(5,6,'2024-03-20 14:25:35',0,NULL,NULL,NULL,'ADDED_TO_CARD',NULL),(6,7,'2024-03-20 14:28:40',0,NULL,NULL,NULL,'ADDED_TO_CARD',NULL),(7,6,'2024-03-20 15:48:48',945000,3,'637, kho dầu, phường 5 tp trà vinh',NULL,'TO_PAY',NULL),(8,6,'2024-03-21 12:07:05',250000,2,'ttttt','0365774124','TO_PAY',NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
