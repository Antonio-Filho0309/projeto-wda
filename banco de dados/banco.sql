CREATE DATABASE  IF NOT EXISTS `wda-livraria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wda-livraria`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wda-livraria
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `adm`
--

DROP TABLE IF EXISTS `adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm`
--

LOCK TABLES `adm` WRITE;
/*!40000 ALTER TABLE `adm` DISABLE KEYS */;
INSERT INTO `adm` VALUES (1,'Antonio','antonio@gmail.com','antonio123');
/*!40000 ALTER TABLE `adm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluguel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `livro` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataal` date NOT NULL,
  `dataprev` date NOT NULL,
  `datadevo` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluguel`
--

LOCK TABLES `aluguel` WRITE;
/*!40000 ALTER TABLE `aluguel` DISABLE KEYS */;
INSERT INTO `aluguel` VALUES (90,'Antonio','Hellraiser: Renascido do Inferno  ','2023-05-10','2023-05-27','0'),(91,'Expedito','IT: a Coisa','2023-05-10','2023-05-27','0'),(92,'Expedito','Diario de Anne Frank','2023-05-10','2023-05-31','10/05/2023'),(93,'Beto Barbosa','1984','2023-05-10','2023-05-31','10/05/2023'),(94,'Expedito','Hellraiser: Renascido do Inferno  ','2023-05-10','2023-05-11','10/05/2023'),(95,'Beto Barbosa','Hellraiser: Renascido do Inferno  ','2023-05-10','2023-05-18','10/05/2023'),(96,'Brenda','Hellraiser: Renascido do Inferno  ','2023-05-10','2023-05-18','0'),(97,'Micael ','Maus','2023-05-10','2023-05-26','0'),(98,'Beto Barbosa','Maus','2023-05-10','2023-05-26','0'),(99,'Brenda','Maus','2023-05-10','2023-05-19','0'),(100,'Micael ','IT: a Coisa','2023-05-10','2023-05-10','0');
/*!40000 ALTER TABLE `aluguel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editora`
--

DROP TABLE IF EXISTS `editora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editora`
--

LOCK TABLES `editora` WRITE;
/*!40000 ALTER TABLE `editora` DISABLE KEYS */;
INSERT INTO `editora` VALUES (9,'Darkside Books','Dksbook@gmail.com','40028922'),(10,'Compainha das Letras','cpmdasletras@gmail.com','89562388'),(11,'Paulinas','PAULINAS@GMAIL.COM','8956237845'),(12,'Saraiva ','Saraiva editora ','7845128956'),(13,'DC','dcomics@gmail.com','78894556');
/*!40000 ALTER TABLE `editora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editora` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datal` date NOT NULL,
  `estoque` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (33,'Hellraiser: Renascido do Inferno  ','Cliver baker','Darkside Books','1986-11-02',28),(34,'Candyman ','Cliver baker','Darkside Books','2023-05-10',50),(35,'IT: a Coisa','Stephen King','Darkside Books','1986-09-15',48),(36,'Batman : O retorno ','Bob Kane','DC','1996-06-30',10),(37,'Revolução dos Bichos','George Orwell','Compainha das Letras','1945-08-17',150),(38,'1984','George Orwell','Compainha das Letras','1949-05-08',200),(39,'Maus','Art Spiegelman','Compainha das Letras','1980-09-03',57),(40,'Diario de Anne Frank','Anne Frank','Compainha das Letras','1947-06-25',100),(41,'O auto da Compadecida ','Ariano Suassuna','Paulinas','2000-09-10',90),(42,'Jogador Número 1 ','Ernest Cline','Saraiva ','2011-08-16',60);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(110) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `telefone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Antonio','antoniodollmichael@gmail.com','4002-8922','Fortaleza ','ce','Rua raquel holanda 419 , Bairro Ellery'),(2,'Expedito','Expedito@gmail.com','8956231223','Fortaleza ','ce','Rua Coelho Neto 555 , Alváro Weyne'),(3,'Brenda','Brenda@gmail.com','859784572388','Fortaleza ','ce','Manoel Pereira , Alvaro Weyne 555'),(4,'Micael ','mj@gmail.com','8597845123','Fortaleza','ce','Rua raquel holanda 419 , Bairro Ellery'),(5,'Beto Barbosa','betin@gmail.com','08589552385','Fortaleza ','ce','Graça Aranha , Alavo weyne');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'wda-livraria'
--

--
-- Dumping routines for database 'wda-livraria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10  2:20:10
