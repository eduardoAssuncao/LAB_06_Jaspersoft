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
-- Table structure for table `imoveis`
--

DROP TABLE IF EXISTS `imoveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imoveis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_imovel` varchar(50) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `dormitorios` int DEFAULT NULL,
  `banheiros` int DEFAULT NULL,
  `suites` int DEFAULT NULL,
  `metragem` int DEFAULT NULL,
  `valor_aluguel_sug` decimal(10,0) DEFAULT NULL,
  `obs` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imoveis`
--

LOCK TABLES `imoveis` WRITE;
/*!40000 ALTER TABLE `imoveis` DISABLE KEYS */;
INSERT INTO `imoveis` VALUES (1,'Sed','Ap #660-1045 At Avenue','5592',7,2,3,13,498,'Morbi'),(2,'mus.','7070 Egestas Ave','622280',10,3,4,5,288,'lectus convallis est,'),(3,'Phasellus','Ap #890-951 Ipsum Rd.','8221',6,10,14,5,258,'elit. Nulla facilisi.'),(4,'tortor.','961-3477 Duis Ave','828897',10,12,8,-2,523,'sed orci lobortis'),(5,'luctus','116-4146 Tristique St.','40602',7,3,5,15,381,'augue, eu'),(6,'enim.','P.O. Box 671, 7143 Fermentum Rd.','564681',9,5,14,11,721,'sagittis semper. Nam tempor'),(7,'arcu.','648-3151 Ac, Rd.','5557',6,9,10,-5,639,'dignissim pharetra.'),(8,'nec','Ap #317-2877 Natoque St.','26822',11,8,7,2,197,'pharetra nibh. Aliquam'),(9,'laoreet,','Ap #846-8845 Quisque Avenue','32-805',2,13,6,7,417,'mi pede, nonummy'),(10,'vulputate','275-7874 Non Road','76682',6,-1,-3,9,805,'montes,'),(11,'at','6603 Vulputate Av.','33525',7,8,6,0,425,'Ut nec urna'),(12,'non','Ap #935-3201 Magna Street','2548',8,5,7,5,247,'natoque'),(13,'est,','P.O. Box 817, 5875 Diam. Rd.','3287',2,10,7,0,233,'urna justo'),(14,'ac','322-8072 Aliquam Ave','T1C 4B8',5,11,18,11,759,'nascetur ridiculus mus.'),(15,'ipsum.','P.O. Box 289, 9128 Odio St.','61572-582',11,10,5,14,436,'convallis est,');
/*!40000 ALTER TABLE `imoveis` ENABLE KEYS */;
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
