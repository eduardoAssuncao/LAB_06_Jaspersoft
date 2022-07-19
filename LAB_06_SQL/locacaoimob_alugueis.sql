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
-- Table structure for table `alugueis`
--

DROP TABLE IF EXISTS `alugueis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alugueis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_locacao` int DEFAULT NULL,
  `dt_vencimento` date DEFAULT NULL,
  `valor_pago` decimal(10,0) DEFAULT NULL,
  `obs` text,
  PRIMARY KEY (`id`),
  KEY `id_locacao` (`id_locacao`),
  CONSTRAINT `alugueis_ibfk_1` FOREIGN KEY (`id_locacao`) REFERENCES `locacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alugueis`
--

LOCK TABLES `alugueis` WRITE;
/*!40000 ALTER TABLE `alugueis` DISABLE KEYS */;
INSERT INTO `alugueis` VALUES (1,1,'2023-08-03',758,'mus. Aenean eget'),(2,2,'2023-10-01',769,'eu eros. Nam consequat'),(3,2,'2023-08-01',286,'egestas, urna justo'),(4,4,'2023-12-23',486,'mattis velit justo'),(5,5,'2024-05-22',767,'imperdiet nec,'),(6,1,'2023-10-19',158,'risus quis diam'),(7,1,'2023-12-03',454,'venenatis a,'),(8,3,'2023-07-12',608,'et, eros. Proin'),(9,4,'2024-06-29',848,'est, mollis non,'),(10,4,'2023-11-07',289,'sodales nisi magna'),(11,1,'2023-09-28',576,'vel est'),(12,2,'2023-09-25',754,'ipsum non arcu. Vivamus'),(13,2,'2024-06-13',402,'Aliquam nisl.'),(14,4,'2023-11-24',412,'in felis.'),(15,5,'2024-06-19',540,'erat neque'),(21,16,'2023-02-23',800,'mas. Asnsn js'),(22,17,'2023-10-11',701,'eu eros. Nam consequat'),(23,5,'2023-04-02',241,'egestas, urna justo'),(24,19,'2023-11-13',531,'mattis velit justo'),(25,3,'2024-07-24',771,'imperdiet nec,');
/*!40000 ALTER TABLE `alugueis` ENABLE KEYS */;
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
