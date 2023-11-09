-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: divine
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addbanners`
--

DROP TABLE IF EXISTS `addbanners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addbanners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `banner_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addbanners`
--

LOCK TABLES `addbanners` WRITE;
/*!40000 ALTER TABLE `addbanners` DISABLE KEYS */;
INSERT INTO `addbanners` VALUES (1,'1697313369776-20220414_185621.jpg',NULL,NULL,1,'2023-10-14 19:56:09','2023-10-14 19:56:09'),(2,'1697313599758-20220414_190139.jpg','1697313412480-20220414_185653.jpg','1697313412507-20220414_185653.jpg',1,'2023-10-14 19:56:52','2023-10-14 19:59:59');
/*!40000 ALTER TABLE `addbanners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipCode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usersdata` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'jhadfb',1,'nasbfkebfon327yi dciuh74','affsdf','dfdsdf','fdsdf','dfdsf','dfsdfe','2023-10-14 20:55:36','2023-10-14 20:59:33');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `is_available` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'vedas',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preistinformations`
--

DROP TABLE IF EXISTS `preistinformations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preistinformations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `House_no` varchar(255) NOT NULL,
  `building` varchar(255) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `preistinformations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usersdata` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preistinformations`
--

LOCK TABLES `preistinformations` WRITE;
/*!40000 ALTER TABLE `preistinformations` DISABLE KEYS */;
INSERT INTO `preistinformations` VALUES (1,'prakhar','abc,sjgv','adbciub6329oc','jbd79h','mnsabduyg8','dshb','233243','jdbfkhbf',1,'2023-11-03 16:16:01','2023-11-03 16:30:29'),(2,'prakhar','abc,sjgv','adbciub6329oc','jbd79h','mnsabduyg8','dshb','233243','jdbfkhbf',1,'2023-11-03 16:16:26','2023-11-03 16:16:26');
/*!40000 ALTER TABLE `preistinformations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `courseBook` varchar(255) DEFAULT NULL,
  `book` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `rs` float NOT NULL,
  `instock` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'dshb','smasd',NULL,2,100,2,'1697361773547-20220414_185657.jpg','2023-10-15 09:22:53','2023-10-15 09:22:53'),(3,'dshb',NULL,NULL,2,100,2,'1699186791648-20220414_185657.jpg','2023-11-05 12:19:51','2023-11-05 12:19:51'),(4,'dshb',NULL,NULL,2,100,2,'1699187547686-20220414_185657.jpg','2023-11-05 12:32:27','2023-11-05 12:32:27'),(5,'dshb',NULL,NULL,2,100,2,'1699187565233-20220414_185657.jpg','2023-11-05 12:32:45','2023-11-05 12:32:45'),(6,'pooja',NULL,NULL,2,100,1,'1699188426482-20220414_185657.jpg','2023-11-05 12:47:06','2023-11-05 12:47:06'),(7,'pooja',NULL,NULL,2,100,1,'1699188567180-20220414_185657.jpg','2023-11-05 12:49:27','2023-11-05 12:49:27'),(8,'pooja',NULL,NULL,2,100,1,NULL,'2023-11-05 12:49:30','2023-11-05 12:49:30'),(9,'pooja',NULL,NULL,2,100,1,'1699188956808-20220414_185657.jpg','2023-11-05 12:55:56','2023-11-05 12:55:56'),(10,'pooja',NULL,NULL,2,100,1,'1699189025341-20220414_185653.jpg','2023-11-05 12:57:05','2023-11-05 12:57:05'),(11,'pooja',NULL,NULL,2,100,1,'1699189074314-jaffa[israel.jpeg','2023-11-05 12:57:54','2023-11-05 12:57:54'),(12,'pooja',NULL,NULL,2,100,1,'1699205421461-Comayagua-[honduras.webp','2023-11-05 17:30:21','2023-11-05 17:30:21');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercart_`
--

DROP TABLE IF EXISTS `usercart_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercart_` (
  `CartItems_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL DEFAULT '1',
  `total_price` float NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`CartItems_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `usercart__ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usercart__ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `usersdata` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercart_`
--

LOCK TABLES `usercart_` WRITE;
/*!40000 ALTER TABLE `usercart_` DISABLE KEYS */;
/*!40000 ALTER TABLE `usercart_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersdata`
--

DROP TABLE IF EXISTS `usersdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersdata` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `token` varchar(255) DEFAULT NULL,
  `profile_created_month` int DEFAULT NULL,
  `profile_created_date` int DEFAULT NULL,
  `OTP` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersdata`
--

LOCK TABLES `usersdata` WRITE;
/*!40000 ALTER TABLE `usersdata` DISABLE KEYS */;
INSERT INTO `usersdata` VALUES (1,NULL,'cprakhar999@gmail.com',NULL,'$2b$10$8x47CgkzMzd60tbjhQQKkeSVXzs.2XRIME6XDoBRyXhYlrqU.BF5O',1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJpYXQiOjE2OTkwMjY5MDd9.iAvmQS3Iw7A9Jn6S-rvy2d5HAgkEsNUbFv6i8K_Tq84',NULL,NULL,'996977','2023-10-14 14:43:23','2023-11-03 15:55:07'),(2,NULL,'cprakhar9s99@gmail.com',NULL,'$2b$10$JMp6ldI1/0gTlQJu7lZ1jesd8bgrxwugmDNrWiLZuI0bXERAUhhQK',0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyLCJpYXQiOjE2OTkyMTI5OTZ9.1orWmh5lA-d13INgmRZOvZqygd3azKKzUgr480eu4lc',NULL,NULL,NULL,'2023-11-05 18:02:59','2023-11-05 19:36:36');
/*!40000 ALTER TABLE `usersdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-09 20:47:44
