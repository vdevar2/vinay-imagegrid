-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.20

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
  `Id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(25) NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (7,'T-shirt for kids','\'\'it\'s a small world\'\' logo on front, Classic Disneyland and Walt Disney World logos on back','3',2,'<img src=\"C:\\Users\\SUNYloaner\\Pictures\\Screenshots\\tshirt.jpg\" />'),(8,'Trousers for Men','Dolce & Gabbana square print trousers ; liked on Polyvore featuring men\'s fashion, men\'s clothing, men\'s pants, men\'s casual pants, grey, dolce gabbana mens pants, mens elastic waistband pants','35',10,'<img src=\"C:\\Users\\SUNYloaner\\Pictures\\Screenshots\\trousers.jpg\" />'),(10,'Notebook','Keep track of more projects and assignments with a 3 subject composition book. The Square Deal Composition Book includes dividers to separate subjects and offers durability with permanently bound, wide ruled pages and stiff, colorful covers.','6',20,'<img src=\"C:\\Users\\SUNYloaner\\Pictures\\Screenshots\\notebook.jpg\" />'),(11,'Samsung Mobile','Behold the bezel-less beauty. With its seamless curves and balanced 18:9 ratio','900',3,'<img src=\"C:\\Users\\SUNYloaner\\Pictures\\Screenshots\\phone.jpg\" />'),(12,'Canon camera','The radical EOS R6 features technology that will have you falling in love with photography all over again. See and shoot subjects in completely new ways and add a new dimension to your visual story telling.','450',14,'<img src=\"C:\\Users\\SUNYloaner\\Pictures\\Screenshots\\canon.png\" />'),(19,'efe','jb','7',8,'gu'),(20,'uh','kn','89',78,'ghj'),(21,'qw','qw','45',56,'er'),(22,'jnkn','knk','6',67,'google'),(23,'jk','nk','10',78,'kk'),(24,'wf','ve','$34',78,'dfghjk'),(25,'ghj','hjk','7',8,'vb'),(26,'yu','jk','8',88,'ghj');
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

-- Dump completed on 2020-09-17 13:02:13
