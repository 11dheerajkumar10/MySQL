-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ecomm
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_table_emp`
--

DROP TABLE IF EXISTS `admin_table_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_table_emp` (
  `id` char(4) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `dept` varchar(7) DEFAULT NULL,
  `salary` int(7) DEFAULT NULL,
  `designation` varchar(10) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `adhaar` char(12) DEFAULT NULL,
  `mobile` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `adhaar` (`adhaar`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_table_emp`
--

LOCK TABLES `admin_table_emp` WRITE;
/*!40000 ALTER TABLE `admin_table_emp` DISABLE KEYS */;
INSERT INTO `admin_table_emp` VALUES ('e1','ajun','G-22 karol bagh delhi','hr',45000,'hr','2023-04-04','606221324141','7897654567'),('e2','ajay','H-22 new bagh bhopal','develop',55000,'senior dev','2020-04-01','606541324141','7897004567'),('e5','shubham','X-22 karol bagh delhi','hr',5000,'hr','2023-04-04','606221004141','7897600567');
/*!40000 ALTER TABLE `admin_table_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_table_product`
--

DROP TABLE IF EXISTS `admin_table_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_table_product` (
  `id` char(4) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_table_product`
--

LOCK TABLES `admin_table_product` WRITE;
/*!40000 ALTER TABLE `admin_table_product` DISABLE KEYS */;
INSERT INTO `admin_table_product` VALUES ('p1','us-polo t-shirt','t-shirt',500,'2025-02-01'),('p2','denim t-shirt','t-shirt',450,'2025-10-01'),('p5','cotton t-shirt','t-shirt',450,'2025-10-01'),('p7','silk t-shirt','t-shirt',199,'2026-08-01'),('p9','denim','jeans',1999,'2027-08-01');
/*!40000 ALTER TABLE `admin_table_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_table_roles`
--

DROP TABLE IF EXISTS `admin_table_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_table_roles` (
  `roleid` char(2) NOT NULL,
  `rolename` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_table_roles`
--

LOCK TABLES `admin_table_roles` WRITE;
/*!40000 ALTER TABLE `admin_table_roles` DISABLE KEYS */;
INSERT INTO `admin_table_roles` VALUES ('r1','admin'),('r2','HR'),('r3','clerk'),('r4','account');
/*!40000 ALTER TABLE `admin_table_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_table_users`
--

DROP TABLE IF EXISTS `admin_table_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_table_users` (
  `userid` char(2) NOT NULL,
  `username` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_table_users`
--

LOCK TABLES `admin_table_users` WRITE;
/*!40000 ALTER TABLE `admin_table_users` DISABLE KEYS */;
INSERT INTO `admin_table_users` VALUES ('ci','arun'),('u1','arun'),('u2','bipul'),('u3','chaman');
/*!40000 ALTER TABLE `admin_table_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(4) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `company` char(10) DEFAULT NULL,
  `size` char(20) DEFAULT NULL,
  `price` float DEFAULT NULL CHECK (`price` > 10),
  `type` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'fan','havels','3',500.45,'electric f'),(2,'cooler','bajaj','5',1500.5,'electric c'),(3,'mixer','havels','2',800.45,'electric m'),(4,'samsungs3','samsung','6',10000,'mobile pho'),(5,'trimmer','phillips','10',1000,'trimmer'),(6,'songa700','sony','2',35000,'camera'),(7,'sony earphone m15','sony','2',600,'earphone'),(8,'puma slipper','puma','2',1500,'slipper'),(9,'nike m15','nike','8',5000,'shoes'),(10,'sunglass 05','rayban','2',4500,'sunglasses');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05 16:13:25
