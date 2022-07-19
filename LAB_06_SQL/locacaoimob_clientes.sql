-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: locacaoimob
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(255) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `telefone` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Neville Carlson','3.25574132','052-463-5255','sollicitudin@protonmail.couk','2004-09-06'),(2,'Joseph Beck','1.56672539','005-060-6218','ultrices.vivamus.rhoncus@aol.ca','2002-05-13'),(3,'Rafael Stanton','1.06430483','088-559-3319','duis.gravida@icloud.net','2006-03-24'),(4,'Macaulay Norris','1.36276641','068-829-8481','duis.sit@hotmail.edu','2003-08-01'),(5,'Gillian Jordan','1.59483056','012-146-0182','vel.venenatis@hotmail.com','1999-12-09'),(6,'Uta Mcdaniel','1.56646646','027-782-1234','tincidunt.pede@protonmail.couk','2001-03-27'),(7,'Jonas Barrett','2.07795584','050-822-7523','luctus.sit@hotmail.com','2004-02-11'),(8,'Ferris Hampton','2.15608032','006-918-4654','ultrices@hotmail.ca','2000-10-05'),(9,'Allegra Nielsen','0.71194406','080-163-1974','sed.sapien@protonmail.ca','2005-06-10'),(10,'Paula French','3.85001531','061-989-8284','condimentum.donec@outlook.com','2001-11-11'),(11,'Micah Perez','1.13469572','065-677-3645','senectus.et.netus@icloud.couk','2002-05-30'),(12,'Glenna Barr','3.10362591','056-153-6236','purus.ac@outlook.net','2002-09-27'),(13,'Lisandra Edwards','2.89900735','008-135-4314','malesuada@protonmail.couk','2002-11-06'),(14,'Roth Padilla','2.78152370','003-236-1351','lorem@outlook.edu','2000-10-31'),(15,'Zeus Mccarthy','1.82720153','056-364-1143','etiam.bibendum@hotmail.ca','2002-04-10');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-19 14:34:35
