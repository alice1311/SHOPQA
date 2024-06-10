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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `type_id` int unsigned DEFAULT NULL,
  `price` float NOT NULL,
  `gender_type` enum('MALE','FEMALE','UNISEX') DEFAULT NULL,
  `saleID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `saleID` (`saleID`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`saleID`) REFERENCES `sale` (`saleId`) ON DELETE SET NULL,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `producttype` (`type_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Giày thể thao thời trang','Giày thể thao nam nữ, lót êm, thoáng gió, form chuẩn.','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp1.png?alt=media&token=35eedb3d-b6fd-488c-a4f3-dafed29d4b1d',1,315000,'UNISEX',NULL),(2,'Giày cổ cao custom nữ','Giày cổ cao thêu hoa, phối màu xinh xắn, form 0.5.','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp3_2.png?alt=media&token=920825d8-4397-4faa-990a-c78fb00f3031',1,250000,'FEMALE',NULL),(3,'Giày da nữ cổ thấp','Giày da mềm, có lót chống đau gót chân form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp5.png?alt=media&token=26b70af2-07a7-4700-9922-2ac2368c0b7a',3,270000,'FEMALE',NULL),(4,'Giày thể thao nam cổ thấp','Giày thể thao nam, cổ thấp, lót êm, thoáng gió, form chuẩn.','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp6_black.png?alt=media&token=13b89f2d-e6b8-464c-8483-6d40f898c01f',1,320000,'MALE',NULL),(5,'Giày thể thao thời trang nam','Giày thể thao nam, cổ thấp, vải nhung, form 1.5.','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp8_be.png?alt=media&token=89e82cee-bf6e-480d-a587-f7168117efec',1,320000,'MALE',NULL),(6,'Giày búp bê quai ngang','Giày da mềm, có lót chống đau gót chân, form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp9nu_black.png?alt=media&token=e8638765-1150-497e-8fcd-11b0321e255c',2,270000,'FEMALE',NULL),(7,'Giày sandal nữ dây chéo','Giày quai đan chéo, da mềm, thoáng, form chuẩn','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp10_white.png?alt=media&token=27ed0bbe-9c0b-4b1c-9456-73faca6d60fd',2,300000,'FEMALE',NULL),(8,'Giày sandal nữ dây phối caro','Giày phối giả nơ thời trang, phù hợp đi học, đi làm, form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp11nu_black.png?alt=media&token=ba063852-d255-43af-8032-b5eccb94086f',2,175000,'FEMALE',NULL),(9,'Giày thể thao nam phối viền','Giày thể thao nam, cổ thấp, vải nhung, form 1.5.','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp12_gray.png?alt=media&token=338301ff-14ac-41bc-8299-3832ffa78dea',1,315000,'MALE',NULL),(10,'Giày nam phối caro','Giày nam, cổ thấp, vải thường, form chuẩn.','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp13black.png?alt=media&token=e9ee2498-6111-49fb-ad09-e65de7236d0c',4,350000,'MALE',NULL),(11,'Giày da cổ cao nữ','Giày da mềm, có lót chống đau gót chân, form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp14nu.png?alt=media&token=022b63b0-5e65-4c69-a581-520123305502',3,415000,'FEMALE',NULL),(12,'Giày cao gót trơn','Giày cao gót trơn, dáng thông dụng, gót 7cm, form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp15nu_black.png?alt=media&token=cc704775-2b9e-4453-8df3-ff7d2181e1bc',5,215000,'FEMALE',NULL),(13,'Giày cao gót hở ngón dây mảnh','Giày cao gót dây mảng, gót 7cm, form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp16_black.png?alt=media&token=09d84835-5451-43a0-a9a2-05523f609d79',5,220000,'FEMALE',NULL),(14,'Giày cao gót hở ngón quai ngang','Giày cao gót quai ngang phối nhúng, gót 5cm, form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp17nu_be.png?alt=media&token=eeebcec0-48f7-4391-a98f-b3b337eb4ce3',5,220000,'FEMALE',NULL),(15,'Giày búp bê phối nơ','Giày búp bê gót bệt, form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp18nu_black.png?alt=media&token=43afb1f3-556a-4c90-84c7-d3cca2594372',2,215000,'FEMALE',NULL),(16,'Giày búp bê da phối quai ngang','Giày búp bê gót bệt,chất liệu da bóng, mềm, form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp19nu_black.png?alt=media&token=32fab295-fda9-4390-b825-17c703d5e107',2,220000,'FEMALE',NULL),(17,'Giày búp bê trơn','Giày búp bê trơn gót bệt, form 0.5','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp20nu_white.png?alt=media&token=43c3cb88-f140-4330-89b2-0e711f0995a1',2,220000,'FEMALE',NULL),(18,'Giày thể thao nữ phối logo','Giày thể thao nữ, mũi nhựa, cổ thấp, form chuẩn','https://firebasestorage.googleapis.com/v0/b/chat-app-5b28c.appspot.com/o/shoesshop%2Fsp21nu_blue.png?alt=media&token=c8131c6f-e80d-4f21-af5d-d0051a5cfba3',1,220000,'FEMALE',NULL),(19,'giay cao got','Description for Product1','product1.jpg',1,29.99,'FEMALE',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
