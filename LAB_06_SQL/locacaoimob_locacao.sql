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
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_imovel` int DEFAULT NULL,
  `id_inquilino` int DEFAULT NULL,
  `ativo` tinyint DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `dia_vencimento` int DEFAULT NULL,
  `perc_multa` decimal(10,0) DEFAULT NULL,
  `valor_aluguel` decimal(10,0) DEFAULT NULL,
  `obs` text,
  PRIMARY KEY (`id`),
  KEY `id_inquilino` (`id_inquilino`),
  KEY `id_imovel` (`id_imovel`),
  CONSTRAINT `locacao_ibfk_1` FOREIGN KEY (`id_inquilino`) REFERENCES `clientes` (`id`),
  CONSTRAINT `locacao_ibfk_2` FOREIGN KEY (`id_imovel`) REFERENCES `imoveis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
INSERT INTO `locacao` VALUES (1,1,1,0,'2022-09-22','2021-05-23',1,151,425,'Ut nec urna'),(2,2,2,1,'2022-02-07','2021-06-16',6,146,247,'natoque'),(3,3,3,2,'2023-07-01','2020-02-03',11,376,233,'urna justo'),(4,4,4,1,'2022-05-01','2021-02-14',16,389,759,'nascetur ridiculus mus.'),(5,5,5,1,'2022-10-21','2019-10-15',21,317,436,'convallis est,'),(16,6,6,1,'2021-08-12','2021-05-23',1,247,598,'mus. Aenean eget'),(17,7,7,1,'2022-04-27','2021-06-16',6,219,353,'eu eros. Nam consequat'),(18,8,8,2,'2021-07-08','2020-02-03',11,157,515,'egestas, urna justo'),(19,9,9,1,'2023-06-11','2021-02-14',16,179,520,'mattis velit justo'),(20,10,10,1,'2022-02-19','2019-10-15',21,381,472,'imperdiet nec,'),(21,1,11,2,'2020-08-16','2020-03-22',1,257,528,'msddffs. Aedfdfsfnean egsdffet'),(22,1,12,1,'2021-05-22','2021-02-19',6,289,373,'edfsdu erdsdfos. Nasdffm cosdffnsequat'),(23,2,13,2,'2019-06-04','2021-07-07',11,137,585,'egefdsfstas, usdfrna jussdfto'),(24,2,14,1,'2022-02-21','2020-08-19',16,199,580,'mattsdfis velsdfit jussdfsto'),(25,5,15,2,'2021-03-13','2019-12-11',21,311,412,'impefsfrdiet nsfsec,');
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
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
