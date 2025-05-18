-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitalmanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `specialization` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `experience` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (16,'kavindu kkkk','Dental','0723242332','ss@doc.com','11','���sPhRx\n���ݠ`�*,+�~��ѓ�'),(17,'kavindu','Dental','0723242332','sss2@doc.com','11','�y|��-�d��]?�v#��=S,�\\^ר��O'),(18,'Kavindu','dental','0712132442','kk@doc.com','11','�y|��-�d��]?�v#��=S,�\\^ר��O'),(19,'Kavindu','dental','0712132442','kk@doc.com','11','�y|��-�d��]?�v#��=S,�\\^ר��O'),(20,'Kavindu','denatakodwgduwe','072453636','ss@doc.com','11','�y|��-�d��]?�v#��=S,�\\^ר��O'),(21,'john','doe','0756667543','k@doc.com','2','�u�W��0�\n�;�f\Z��)�R�B*���/&�F'),(22,'kaviindu','ss','1233445555','k@doc.com','1','�y|��-�d��]?�v#��=S,�\\^ר��O'),(23,'kavindu','sug','0798654372','kavi@doc.com','22','�y|��-�d��]?�v#��=S,�\\^ר��O'),(24,'krishan','sug','078564321','jj@gmail.com','1',NULL),(25,'krishan','sug','sdssdds11','jj@gmail.com','1',NULL),(26,'kasyun','asas','ssssss1','mlk@gmail.com','11',NULL),(27,'Kavindu','dddss','0712132225','kk@doc.com','11',NULL),(28,'Kavindu','dddss','0712132225','kk@doc.com','11',NULL),(29,'krishan Danushka','Specialist','11900','kd@doc.com','1',NULL),(30,'krishan Danushka','Specialist','11900','kd@doc.com','1',NULL),(31,'krishan Danushka','Specialist','11900','kd@doc.com','1223',NULL),(32,'krishan Danushka','Specialist','11900sss','kd@doc.com','122322333',NULL),(33,'krishan Danushka','Specialist','11900sss','kd@doc.com','33',NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16  5:31:08
