-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: cofradia
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Cargos`
--

DROP TABLE IF EXISTS `Cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cargos` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `dia` int(11) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `paso` varchar(10) NOT NULL DEFAULT '',
  `hora` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1 COMMENT='latin1_spanish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cargos`
--

LOCK TABLES `Cargos` WRITE;
/*!40000 ALTER TABLE `Cargos` DISABLE KEYS */;
INSERT INTO `Cargos` VALUES (1,1,'Escolta Cruz de Guia','Oracion','17:00'),(2,1,'Cruz de Guia','Oracion','17:00'),(3,1,'Farol de Cruz de Guia','Oracion','17:00'),(4,1,'Estandarte','Oracion','17:00'),(5,1,'Diputado de Estandarte','Oracion','17:00'),(6,1,'Senatus','Oracion','17:00'),(7,1,'Diputado de Senatus','Oracion','17:00'),(8,1,'Libro de Reglas','Oracion','17:00'),(9,1,'Diputado de Libro de Reglas','Oracion','17:00'),(10,1,'Guion de San Bartolome','Oracion','17:00'),(11,1,'Pidutado de Guion de San Bartolome','Oracion','17:00'),(12,1,'Bandera Negra','Oracion','17:00'),(13,1,'Diputado de Bandera Negra','Oracion','17:00'),(14,1,'Reguidor','Oracion','17:00'),(15,1,'Canastilla','Oracion','17:00'),(16,1,'Censor','Oracion','17:00'),(17,1,'Segundo Censor','Oracion','17:00'),(18,1,'Presidencia','Oracion','17:00'),(19,1,'Capataz','Oracion','17:00'),(20,1,'Segundo Capataz','Oracion','17:00'),(21,1,'Auxiliar','Oracion','17:00'),(22,1,'Bocina','Oracion','17:00'),(23,1,'Manigueta DI','Oracion','17:00'),(24,1,'Manigueta DD','Oracion','17:00'),(25,1,'Manigueta TI','Oracion','17:00'),(26,1,'Manigueta TD','Oracion','17:00'),(27,1,'Penitente','Oracion','17:00'),(28,1,'Penitente con Cruz','Oracion','17:00'),(29,1,'Cirio','Oracion','17:00'),(30,2,'Escolta Cruz de Guia','Señor','6:00'),(31,2,'Cruz de Guia','Señor','6:00'),(32,2,'Farol de Cruz de Guia','Señor','6:00'),(33,2,'Estandarte','Señor','6:00'),(34,2,'Diputado de Estandarte','Señor','6:00'),(35,2,'Senatus','Señor','6:00'),(36,2,'Diputado de Senatus','Señor','6:00'),(37,2,'Guion de San Bartolome','Señor','6:00'),(38,2,'Diputado de Guion de San Bartolome','Señor','6:00'),(39,2,'Guion del IV Centenario','Señor','6:00'),(40,2,'Diputado del Guion del IV Centenario','Señor','6:00'),(41,2,'Bandera Negra','Señor','6:00'),(42,2,'Diputado de Bandera Negra','Señor','6:00'),(43,2,'Reguidor','Señor','6:00'),(44,2,'Canastilla','Señor','6:00'),(45,2,'Censor','Señor','6:00'),(46,2,'Segundo Censor','Señor','6:00'),(47,2,'Presidencia Señor','Señor','6:00'),(48,2,'Capataz Señor','Señor','6:00'),(49,2,'Segundo Capataz Señor','Señor','6:00'),(50,2,'Auxiliar Señor','Señor','6:00'),(51,2,'Bocina Señor','Señor','6:00'),(52,2,'Manigueta DI Señor','Señor','6:00'),(53,2,'Manigueta DD Señor','Señor','6:00'),(54,2,'Manigueta TI Señor','Señor','6:00'),(55,2,'Manigueta TD Señor','Señor','6:00'),(56,2,'Penitente Señor','Señor','6:00'),(57,2,'Penitente Señor con Cruz','Señor','6:00'),(58,2,'Libro de Reglas','Virgen','6:00'),(59,2,'Diputado de Libro de Reglas','Virgen','6:00'),(60,2,'Bandera Morada','Virgen','6:00'),(61,2,'Diputado de Bandera Morada','Virgen','6:00'),(62,2,'Presidencia Virgen','Virgen','6:00'),(63,2,'Capataz Virgen','Virgen','6:00'),(64,2,'Segundo Capataz Virgen','Virgen','6:00'),(65,2,'Auxiliar Virgen','Virgen','6:00'),(66,2,'Bocina Virgen','Virgen','6:00'),(67,2,'Manigueta DI Virgen','Virgen','6:00'),(68,2,'Manigueta DD Virgen','Virgen','6:00'),(69,2,'Manigueta TI Virgen','Virgen','6:00'),(70,2,'Manigueta TD Virgen','Virgen','6:00'),(71,2,'Penitente Virgen','Virgen','6:00'),(72,2,'Penitente Virgen con Cruz','Virgen','6:00'),(73,2,'Cirio','Señor','6:00');
/*!40000 ALTER TABLE `Cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dias`
--

DROP TABLE IF EXISTS `Dias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dias` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='latin1_spanish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dias`
--

LOCK TABLES `Dias` WRITE;
/*!40000 ALTER TABLE `Dias` DISABLE KEYS */;
INSERT INTO `Dias` VALUES (1,'Domingo de Ramos'),(2,'Viernes Santo');
/*!40000 ALTER TABLE `Dias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hermanos`
--

DROP TABLE IF EXISTS `Hermanos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hermanos` (
  `HID` int(11) NOT NULL AUTO_INCREMENT,
  `NHermano` int(11) DEFAULT NULL,
  `Nombre` varchar(70) NOT NULL,
  `Apellidos` varchar(80) NOT NULL,
  `SEXO` varchar(2) NOT NULL,
  `DNI` varchar(24) DEFAULT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  `CPVIVE` varchar(10) DEFAULT NULL,
  `POBVIVE` varchar(60) DEFAULT NULL,
  `PROVVIVE` varchar(60) DEFAULT NULL,
  `TFNO` varchar(30) DEFAULT NULL,
  `FNACE` datetime DEFAULT NULL,
  `CPNACE` varchar(10) DEFAULT NULL,
  `POBNACE` varchar(60) DEFAULT NULL,
  `PROVNACE` varchar(60) DEFAULT NULL,
  `PARROQUIA` varchar(70) DEFAULT NULL,
  `DIRPARROQUIA` varchar(70) DEFAULT NULL,
  `POBPARROQUIA` varchar(60) DEFAULT NULL,
  `PROVPARROQUIA` varchar(60) DEFAULT NULL,
  `ECIVIL` varchar(2) DEFAULT NULL,
  `PROFESIÓN` varchar(40) DEFAULT NULL,
  `FALTA` datetime NOT NULL,
  `FJURA` datetime DEFAULT NULL,
  `FSOLICITUD` datetime DEFAULT NULL,
  `HERPRESENTACIÓN` varchar(150) DEFAULT NULL,
  `PADRE` varchar(60) DEFAULT NULL,
  `BANCO` varchar(60) DEFAULT NULL,
  `NCUENTA` varchar(40) DEFAULT NULL,
  `FBAJA` datetime DEFAULT NULL,
  `MOTIVO` varchar(300) DEFAULT NULL,
  `PASADO` char(1) NOT NULL,
  `FECHA` datetime DEFAULT NULL,
  `OBSERVACIONES` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`HID`)
) ENGINE=InnoDB AUTO_INCREMENT=3023 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hermanos`
--

LOCK TABLES `Hermanos` WRITE;
/*!40000 ALTER TABLE `Hermanos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hermanos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Puestos`
--

DROP TABLE IF EXISTS `Puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Puestos` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `anno` int(11) NOT NULL,
  `tramo` int(11) DEFAULT NULL,
  `fila` varchar(10) DEFAULT NULL,
  `pareja` int(11) DEFAULT NULL,
  `cargo` int(11) NOT NULL,
  `precio` decimal(4,2) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=latin1 COMMENT='latin1_spanish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Puestos`
--

LOCK TABLES `Puestos` WRITE;
/*!40000 ALTER TABLE `Puestos` DISABLE KEYS */;
INSERT INTO `Puestos` VALUES (3,NULL,2013,1,'Izquierda',1,29,6.00),(4,NULL,2013,1,'Derecha',1,29,6.00),(5,NULL,2013,1,'Izquierda',2,29,6.00),(6,NULL,2013,1,'Derecha',2,29,6.00),(7,NULL,2013,1,'Izquierda',3,29,6.00),(8,NULL,2013,1,'Derecha',3,29,6.00),(9,NULL,2013,1,'Izquierda',4,29,6.00),(10,NULL,2013,1,'Derecha',4,29,6.00),(11,NULL,2013,1,'Izquierda',5,29,6.00),(12,NULL,2013,1,'Derecha',5,29,6.00),(13,NULL,2013,1,'Izquierda',6,29,6.00),(14,NULL,2013,1,'Derecha',6,29,6.00),(15,NULL,2013,1,'Izquierda',7,29,6.00),(16,NULL,2013,1,'Derecha',7,29,6.00),(17,NULL,2013,1,'Izquierda',8,29,6.00),(18,NULL,2013,1,'Derecha',8,29,6.00),(19,NULL,2013,1,'Izquierda',9,29,6.00),(20,NULL,2013,1,'Derecha',9,29,6.00),(21,NULL,2013,1,'Izquierda',10,29,6.00),(22,NULL,2013,1,'Derecha',10,29,6.00),(23,NULL,2013,1,'Izquierda',11,29,6.00),(24,NULL,2013,1,'Derecha',11,29,6.00),(25,NULL,2013,1,'Izquierda',12,29,6.00),(26,NULL,2013,1,'Derecha',12,29,6.00),(27,NULL,2013,1,'Izquierda',13,29,6.00),(28,NULL,2013,1,'Derecha',13,29,6.00),(29,NULL,2013,1,'Izquierda',14,29,6.00),(30,NULL,2013,1,'Derecha',14,29,6.00),(31,NULL,2013,1,'Izquierda',15,29,6.00),(32,NULL,2013,1,'Derecha',15,29,6.00),(33,NULL,2013,1,'Izquierda',16,29,6.00),(34,NULL,2013,1,'Derecha',16,29,6.00),(35,NULL,2013,1,'Izquierda',17,29,6.00),(36,NULL,2013,1,'Derecha',17,29,6.00),(37,NULL,2013,1,'Izquierda',18,29,6.00),(38,NULL,2013,1,'Derecha',18,29,6.00),(39,NULL,2013,1,'Izquierda',19,29,6.00),(40,NULL,2013,1,'Derecha',19,29,6.00),(41,NULL,2013,1,'Izquierda',20,29,6.00),(42,NULL,2013,1,'Derecha',20,29,6.00),(43,NULL,2013,2,'Izquierda',1,29,6.00),(44,NULL,2013,2,'Derecha',1,29,6.00),(45,NULL,2013,2,'Izquierda',2,29,6.00),(46,NULL,2013,2,'Derecha',2,29,6.00),(47,NULL,2013,2,'Izquierda',3,29,6.00),(48,NULL,2013,2,'Derecha',3,29,6.00),(49,NULL,2013,2,'Izquierda',4,29,6.00),(50,NULL,2013,2,'Derecha',4,29,6.00),(51,NULL,2013,2,'Izquierda',5,29,6.00),(52,NULL,2013,2,'Derecha',5,29,6.00),(53,NULL,2013,2,'Izquierda',6,29,6.00),(54,NULL,2013,2,'Derecha',6,29,6.00),(55,NULL,2013,2,'Izquierda',7,29,6.00),(56,NULL,2013,2,'Derecha',7,29,6.00),(57,NULL,2013,2,'Izquierda',8,29,6.00),(58,NULL,2013,2,'Derecha',8,29,6.00),(59,NULL,2013,2,'Izquierda',9,29,6.00),(60,NULL,2013,2,'Derecha',9,29,6.00),(61,NULL,2013,2,'Izquierda',10,29,6.00),(62,NULL,2013,2,'Derecha',10,29,6.00),(63,NULL,2013,2,'Izquierda',11,29,6.00),(64,NULL,2013,2,'Derecha',11,29,6.00),(65,NULL,2013,2,'Izquierda',12,29,6.00),(66,NULL,2013,2,'Derecha',12,29,6.00),(67,NULL,2013,2,'Izquierda',13,29,6.00),(68,NULL,2013,2,'Derecha',13,29,6.00),(69,NULL,2013,2,'Izquierda',14,29,6.00),(70,NULL,2013,2,'Derecha',14,29,6.00),(71,NULL,2013,2,'Izquierda',15,29,6.00),(72,NULL,2013,2,'Derecha',15,29,6.00),(73,NULL,2013,2,'Izquierda',16,29,6.00),(74,NULL,2013,2,'Derecha',16,29,6.00),(75,NULL,2013,2,'Izquierda',17,29,6.00),(76,NULL,2013,2,'Derecha',17,29,6.00),(77,NULL,2013,2,'Izquierda',18,29,6.00),(78,NULL,2013,2,'Derecha',18,29,6.00),(79,NULL,2013,2,'Izquierda',19,29,6.00),(80,NULL,2013,2,'Derecha',19,29,6.00),(81,NULL,2013,2,'Izquierda',20,29,6.00),(82,NULL,2013,2,'Derecha',20,29,6.00),(83,NULL,2013,3,'Izquierda',1,29,6.00),(84,NULL,2013,3,'Derecha',1,29,6.00),(85,NULL,2013,3,'Izquierda',2,29,6.00),(86,NULL,2013,3,'Derecha',2,29,6.00),(87,NULL,2013,3,'Izquierda',3,29,6.00),(88,NULL,2013,3,'Derecha',3,29,6.00),(89,NULL,2013,3,'Izquierda',4,29,6.00),(90,NULL,2013,3,'Derecha',4,29,6.00),(91,NULL,2013,3,'Izquierda',5,29,6.00),(92,NULL,2013,3,'Derecha',5,29,6.00),(93,NULL,2013,3,'Izquierda',6,29,6.00),(94,NULL,2013,3,'Derecha',6,29,6.00),(95,NULL,2013,3,'Izquierda',7,29,6.00),(96,NULL,2013,3,'Derecha',7,29,6.00),(97,NULL,2013,3,'Izquierda',8,29,6.00),(98,NULL,2013,3,'Derecha',8,29,6.00),(99,NULL,2013,3,'Izquierda',9,29,6.00),(100,NULL,2013,3,'Derecha',9,29,6.00),(101,NULL,2013,3,'Izquierda',10,29,6.00),(102,NULL,2013,3,'Derecha',10,29,6.00),(103,NULL,2013,3,'Izquierda',11,29,6.00),(104,NULL,2013,3,'Derecha',11,29,6.00),(105,NULL,2013,3,'Izquierda',12,29,6.00),(106,NULL,2013,3,'Derecha',12,29,6.00),(107,NULL,2013,3,'Izquierda',13,29,6.00),(108,NULL,2013,3,'Derecha',13,29,6.00),(109,NULL,2013,3,'Izquierda',14,29,6.00),(110,NULL,2013,3,'Derecha',14,29,6.00),(111,NULL,2013,3,'Izquierda',15,29,6.00),(112,NULL,2013,3,'Derecha',15,29,6.00),(113,NULL,2013,3,'Izquierda',16,29,6.00),(114,NULL,2013,3,'Derecha',16,29,6.00),(115,NULL,2013,3,'Izquierda',17,29,6.00),(116,NULL,2013,3,'Derecha',17,29,6.00),(117,NULL,2013,3,'Izquierda',18,29,6.00),(118,NULL,2013,3,'Derecha',18,29,6.00),(119,NULL,2013,3,'Izquierda',19,29,6.00),(120,NULL,2013,3,'Derecha',19,29,6.00),(121,NULL,2013,3,'Izquierda',20,29,6.00),(122,NULL,2013,3,'Derecha',20,29,6.00),(123,NULL,2013,4,'Izquierda',1,29,6.00),(124,NULL,2013,4,'Derecha',1,29,6.00),(125,NULL,2013,4,'Izquierda',2,29,6.00),(126,NULL,2013,4,'Derecha',2,29,6.00),(127,NULL,2013,4,'Izquierda',3,29,6.00),(128,NULL,2013,4,'Derecha',3,29,6.00),(129,NULL,2013,4,'Izquierda',4,29,6.00),(130,NULL,2013,4,'Derecha',4,29,6.00),(131,NULL,2013,4,'Izquierda',5,29,6.00),(132,NULL,2013,4,'Derecha',5,29,6.00),(133,NULL,2013,4,'Izquierda',6,29,6.00),(134,NULL,2013,4,'Derecha',6,29,6.00),(135,NULL,2013,4,'Izquierda',7,29,6.00),(136,NULL,2013,4,'Derecha',7,29,6.00),(137,NULL,2013,4,'Izquierda',8,29,6.00),(138,NULL,2013,4,'Derecha',8,29,6.00),(139,NULL,2013,4,'Izquierda',9,29,6.00),(140,NULL,2013,4,'Derecha',9,29,6.00),(141,NULL,2013,4,'Izquierda',10,29,6.00),(142,NULL,2013,4,'Derecha',10,29,6.00),(143,NULL,2013,4,'Izquierda',11,29,6.00),(144,NULL,2013,4,'Derecha',11,29,6.00),(145,NULL,2013,4,'Izquierda',12,29,6.00),(146,NULL,2013,4,'Derecha',12,29,6.00),(147,NULL,2013,4,'Izquierda',13,29,6.00),(148,NULL,2013,4,'Derecha',13,29,6.00),(149,NULL,2013,4,'Izquierda',14,29,6.00),(150,NULL,2013,4,'Derecha',14,29,6.00),(151,NULL,2013,4,'Izquierda',15,29,6.00),(152,NULL,2013,4,'Derecha',15,29,6.00),(153,NULL,2013,4,'Izquierda',16,29,6.00),(154,NULL,2013,4,'Derecha',16,29,6.00),(155,NULL,2013,4,'Izquierda',17,29,6.00),(156,NULL,2013,4,'Derecha',17,29,6.00),(157,NULL,2013,4,'Izquierda',18,29,6.00),(158,NULL,2013,4,'Derecha',18,29,6.00),(159,NULL,2013,4,'Izquierda',19,29,6.00),(160,NULL,2013,4,'Derecha',19,29,6.00),(161,NULL,2013,4,'Izquierda',20,29,6.00),(162,NULL,2013,4,'Derecha',20,29,6.00),(163,NULL,2013,5,'Izquierda',1,29,6.00),(164,NULL,2013,5,'Derecha',1,29,6.00),(165,NULL,2013,5,'Izquierda',2,29,6.00),(166,NULL,2013,5,'Derecha',2,29,6.00),(167,NULL,2013,5,'Izquierda',3,29,6.00),(168,NULL,2013,5,'Derecha',3,29,6.00),(169,NULL,2013,5,'Izquierda',4,29,6.00),(170,NULL,2013,5,'Derecha',4,29,6.00),(171,NULL,2013,5,'Izquierda',5,29,6.00),(172,NULL,2013,5,'Derecha',5,29,6.00),(173,NULL,2013,5,'Izquierda',6,29,6.00),(174,NULL,2013,5,'Derecha',6,29,6.00),(175,NULL,2013,5,'Izquierda',7,29,6.00),(176,NULL,2013,5,'Derecha',7,29,6.00),(177,NULL,2013,5,'Izquierda',8,29,6.00),(178,NULL,2013,5,'Derecha',8,29,6.00),(179,NULL,2013,5,'Izquierda',9,29,6.00),(180,NULL,2013,5,'Derecha',9,29,6.00),(181,NULL,2013,5,'Izquierda',10,29,6.00),(182,NULL,2013,5,'Derecha',10,29,6.00),(183,NULL,2013,5,'Izquierda',11,29,6.00),(184,NULL,2013,5,'Derecha',11,29,6.00),(185,NULL,2013,5,'Izquierda',12,29,6.00),(186,NULL,2013,5,'Derecha',12,29,6.00),(187,NULL,2013,5,'Izquierda',13,29,6.00),(188,NULL,2013,5,'Derecha',13,29,6.00),(189,NULL,2013,5,'Izquierda',14,29,6.00),(190,NULL,2013,5,'Derecha',14,29,6.00),(191,NULL,2013,5,'Izquierda',15,29,6.00),(192,NULL,2013,5,'Derecha',15,29,6.00),(193,NULL,2013,5,'Izquierda',16,29,6.00),(194,NULL,2013,5,'Derecha',16,29,6.00),(195,NULL,2013,5,'Izquierda',17,29,6.00),(196,NULL,2013,5,'Derecha',17,29,6.00),(197,NULL,2013,5,'Izquierda',18,29,6.00),(198,NULL,2013,5,'Derecha',18,29,6.00),(199,NULL,2013,5,'Izquierda',19,29,6.00),(200,NULL,2013,5,'Derecha',19,29,6.00),(201,NULL,2013,5,'Izquierda',20,29,6.00),(202,NULL,2013,5,'Derecha',20,29,6.00),(203,NULL,2013,6,'Izquierda',1,29,6.00),(204,NULL,2013,6,'Derecha',1,29,6.00),(205,NULL,2013,6,'Izquierda',2,29,6.00),(206,NULL,2013,6,'Derecha',2,29,6.00),(207,NULL,2013,6,'Izquierda',3,29,6.00),(208,NULL,2013,6,'Derecha',3,29,6.00),(209,NULL,2013,6,'Izquierda',4,29,6.00),(210,NULL,2013,6,'Derecha',4,29,6.00),(211,NULL,2013,6,'Izquierda',5,29,6.00),(212,NULL,2013,6,'Derecha',5,29,6.00),(213,NULL,2013,6,'Izquierda',6,29,6.00),(214,NULL,2013,6,'Derecha',6,29,6.00),(215,NULL,2013,6,'Izquierda',7,29,6.00),(216,NULL,2013,6,'Derecha',7,29,6.00),(217,NULL,2013,6,'Izquierda',8,29,6.00),(218,NULL,2013,6,'Derecha',8,29,6.00),(219,NULL,2013,6,'Izquierda',9,29,6.00),(220,NULL,2013,6,'Derecha',9,29,6.00),(221,NULL,2013,6,'Izquierda',10,29,6.00),(222,NULL,2013,6,'Derecha',10,29,6.00),(223,NULL,2013,6,'Izquierda',11,29,6.00),(224,NULL,2013,6,'Derecha',11,29,6.00),(225,NULL,2013,6,'Izquierda',12,29,6.00),(226,NULL,2013,6,'Derecha',12,29,6.00),(227,NULL,2013,6,'Izquierda',13,29,6.00),(228,NULL,2013,6,'Derecha',13,29,6.00),(229,NULL,2013,6,'Izquierda',14,29,6.00),(230,NULL,2013,6,'Derecha',14,29,6.00),(231,NULL,2013,6,'Izquierda',15,29,6.00),(232,NULL,2013,6,'Derecha',15,29,6.00),(233,NULL,2013,6,'Izquierda',16,29,6.00),(234,NULL,2013,6,'Derecha',16,29,6.00),(235,NULL,2013,6,'Izquierda',17,29,6.00),(236,NULL,2013,6,'Derecha',17,29,6.00),(237,NULL,2013,6,'Izquierda',18,29,6.00),(238,NULL,2013,6,'Derecha',18,29,6.00),(239,NULL,2013,6,'Izquierda',19,29,6.00),(240,NULL,2013,6,'Derecha',19,29,6.00),(241,NULL,2013,6,'Izquierda',20,29,6.00),(242,NULL,2013,6,'Derecha',20,29,6.00),(243,NULL,2013,1,'Izquierda',1,73,6.00),(244,NULL,2013,1,'Derecha',1,73,6.00),(245,NULL,2013,1,'Izquierda',2,73,6.00),(246,NULL,2013,1,'Derecha',2,73,6.00),(247,NULL,2013,1,'Izquierda',3,73,6.00),(248,NULL,2013,1,'Derecha',3,73,6.00),(249,NULL,2013,1,'Izquierda',4,73,6.00),(250,NULL,2013,1,'Derecha',4,73,6.00),(251,NULL,2013,1,'Izquierda',5,73,6.00),(252,NULL,2013,1,'Derecha',5,73,6.00),(253,NULL,2013,1,'Izquierda',6,73,6.00),(254,NULL,2013,1,'Derecha',6,73,6.00),(255,NULL,2013,1,'Izquierda',7,73,6.00),(256,NULL,2013,1,'Derecha',7,73,6.00),(257,NULL,2013,1,'Izquierda',8,73,6.00),(258,NULL,2013,1,'Derecha',8,73,6.00),(259,NULL,2013,1,'Izquierda',9,73,6.00),(260,NULL,2013,1,'Derecha',9,73,6.00),(261,NULL,2013,1,'Izquierda',10,73,6.00),(262,NULL,2013,1,'Derecha',10,73,6.00),(263,NULL,2013,1,'Izquierda',11,73,6.00),(264,NULL,2013,1,'Derecha',11,73,6.00),(265,NULL,2013,1,'Izquierda',12,73,6.00),(266,NULL,2013,1,'Derecha',12,73,6.00),(267,NULL,2013,1,'Izquierda',13,73,6.00),(268,NULL,2013,1,'Derecha',13,73,6.00),(269,NULL,2013,1,'Izquierda',14,73,6.00),(270,NULL,2013,1,'Derecha',14,73,6.00),(271,NULL,2013,1,'Izquierda',15,73,6.00),(272,NULL,2013,1,'Derecha',15,73,6.00),(273,NULL,2013,1,'Izquierda',16,73,6.00),(274,NULL,2013,1,'Derecha',16,73,6.00),(275,NULL,2013,1,'Izquierda',17,73,6.00),(276,NULL,2013,1,'Derecha',17,73,6.00),(277,NULL,2013,1,'Izquierda',18,73,6.00),(278,NULL,2013,1,'Derecha',18,73,6.00),(279,NULL,2013,1,'Izquierda',19,73,6.00),(280,NULL,2013,1,'Derecha',19,73,6.00),(281,NULL,2013,1,'Izquierda',20,73,6.00),(282,NULL,2013,1,'Derecha',20,73,6.00),(283,NULL,2013,2,'Izquierda',1,73,6.00),(284,NULL,2013,2,'Derecha',1,73,6.00),(285,NULL,2013,2,'Izquierda',2,73,6.00),(286,NULL,2013,2,'Derecha',2,73,6.00),(287,NULL,2013,2,'Izquierda',3,73,6.00),(288,NULL,2013,2,'Derecha',3,73,6.00),(289,NULL,2013,2,'Izquierda',4,73,6.00),(290,NULL,2013,2,'Derecha',4,73,6.00),(291,NULL,2013,2,'Izquierda',5,73,6.00),(292,NULL,2013,2,'Derecha',5,73,6.00),(293,NULL,2013,2,'Izquierda',6,73,6.00),(294,NULL,2013,2,'Derecha',6,73,6.00),(295,NULL,2013,2,'Izquierda',7,73,6.00),(296,NULL,2013,2,'Derecha',7,73,6.00),(297,NULL,2013,2,'Izquierda',8,73,6.00),(298,NULL,2013,2,'Derecha',8,73,6.00),(299,NULL,2013,2,'Izquierda',9,73,6.00),(300,NULL,2013,2,'Derecha',9,73,6.00),(301,NULL,2013,2,'Izquierda',10,73,6.00),(302,NULL,2013,2,'Derecha',10,73,6.00),(303,NULL,2013,2,'Izquierda',11,73,6.00),(304,NULL,2013,2,'Derecha',11,73,6.00),(305,NULL,2013,2,'Izquierda',12,73,6.00),(306,NULL,2013,2,'Derecha',12,73,6.00),(307,NULL,2013,2,'Izquierda',13,73,6.00),(308,NULL,2013,2,'Derecha',13,73,6.00),(309,NULL,2013,2,'Izquierda',14,73,6.00),(310,NULL,2013,2,'Derecha',14,73,6.00),(311,NULL,2013,2,'Izquierda',15,73,6.00),(312,NULL,2013,2,'Derecha',15,73,6.00),(313,NULL,2013,2,'Izquierda',16,73,6.00),(314,NULL,2013,2,'Derecha',16,73,6.00),(315,NULL,2013,2,'Izquierda',17,73,6.00),(316,NULL,2013,2,'Derecha',17,73,6.00),(317,NULL,2013,2,'Izquierda',18,73,6.00),(318,NULL,2013,2,'Derecha',18,73,6.00),(319,NULL,2013,2,'Izquierda',19,73,6.00),(320,NULL,2013,2,'Derecha',19,73,6.00),(321,NULL,2013,2,'Izquierda',20,73,6.00),(322,NULL,2013,2,'Derecha',20,73,6.00),(323,NULL,2013,3,'Izquierda',1,73,6.00),(324,NULL,2013,3,'Derecha',1,73,6.00),(325,NULL,2013,3,'Izquierda',2,73,6.00),(326,NULL,2013,3,'Derecha',2,73,6.00),(327,NULL,2013,3,'Izquierda',3,73,6.00),(328,NULL,2013,3,'Derecha',3,73,6.00),(329,NULL,2013,3,'Izquierda',4,73,6.00),(330,NULL,2013,3,'Derecha',4,73,6.00),(331,NULL,2013,3,'Izquierda',5,73,6.00),(332,NULL,2013,3,'Derecha',5,73,6.00),(333,NULL,2013,3,'Izquierda',6,73,6.00),(334,NULL,2013,3,'Derecha',6,73,6.00),(335,NULL,2013,3,'Izquierda',7,73,6.00),(336,NULL,2013,3,'Derecha',7,73,6.00),(337,NULL,2013,3,'Izquierda',8,73,6.00),(338,NULL,2013,3,'Derecha',8,73,6.00),(339,NULL,2013,3,'Izquierda',9,73,6.00),(340,NULL,2013,3,'Derecha',9,73,6.00),(341,NULL,2013,3,'Izquierda',10,73,6.00),(342,NULL,2013,3,'Derecha',10,73,6.00),(343,NULL,2013,3,'Izquierda',11,73,6.00),(344,NULL,2013,3,'Derecha',11,73,6.00),(345,NULL,2013,3,'Izquierda',12,73,6.00),(346,NULL,2013,3,'Derecha',12,73,6.00),(347,NULL,2013,3,'Izquierda',13,73,6.00),(348,NULL,2013,3,'Derecha',13,73,6.00),(349,NULL,2013,3,'Izquierda',14,73,6.00),(350,NULL,2013,3,'Derecha',14,73,6.00),(351,NULL,2013,3,'Izquierda',15,73,6.00),(352,NULL,2013,3,'Derecha',15,73,6.00),(353,NULL,2013,3,'Izquierda',16,73,6.00),(354,NULL,2013,3,'Derecha',16,73,6.00),(355,NULL,2013,3,'Izquierda',17,73,6.00),(356,NULL,2013,3,'Derecha',17,73,6.00),(357,NULL,2013,3,'Izquierda',18,73,6.00),(358,NULL,2013,3,'Derecha',18,73,6.00),(359,NULL,2013,3,'Izquierda',19,73,6.00),(360,NULL,2013,3,'Derecha',19,73,6.00),(361,NULL,2013,3,'Izquierda',20,73,6.00),(362,NULL,2013,3,'Derecha',20,73,6.00),(363,NULL,2013,4,'Izquierda',1,73,6.00),(364,NULL,2013,4,'Derecha',1,73,6.00),(365,NULL,2013,4,'Izquierda',2,73,6.00),(366,NULL,2013,4,'Derecha',2,73,6.00),(367,NULL,2013,4,'Izquierda',3,73,6.00),(368,NULL,2013,4,'Derecha',3,73,6.00),(369,NULL,2013,4,'Izquierda',4,73,6.00),(370,NULL,2013,4,'Derecha',4,73,6.00),(371,NULL,2013,4,'Izquierda',5,73,6.00),(372,NULL,2013,4,'Derecha',5,73,6.00),(373,NULL,2013,4,'Izquierda',6,73,6.00),(374,NULL,2013,4,'Derecha',6,73,6.00),(375,NULL,2013,4,'Izquierda',7,73,6.00),(376,NULL,2013,4,'Derecha',7,73,6.00),(377,NULL,2013,4,'Izquierda',8,73,6.00),(378,NULL,2013,4,'Derecha',8,73,6.00),(379,NULL,2013,4,'Izquierda',9,73,6.00),(380,NULL,2013,4,'Derecha',9,73,6.00),(381,NULL,2013,4,'Izquierda',10,73,6.00),(382,NULL,2013,4,'Derecha',10,73,6.00),(383,NULL,2013,4,'Izquierda',11,73,6.00),(384,NULL,2013,4,'Derecha',11,73,6.00),(385,NULL,2013,4,'Izquierda',12,73,6.00),(386,NULL,2013,4,'Derecha',12,73,6.00),(387,NULL,2013,4,'Izquierda',13,73,6.00),(388,NULL,2013,4,'Derecha',13,73,6.00),(389,NULL,2013,4,'Izquierda',14,73,6.00),(390,NULL,2013,4,'Derecha',14,73,6.00),(391,NULL,2013,4,'Izquierda',15,73,6.00),(392,NULL,2013,4,'Derecha',15,73,6.00),(393,NULL,2013,4,'Izquierda',16,73,6.00),(394,NULL,2013,4,'Derecha',16,73,6.00),(395,NULL,2013,4,'Izquierda',17,73,6.00),(396,NULL,2013,4,'Derecha',17,73,6.00),(397,NULL,2013,4,'Izquierda',18,73,6.00),(398,NULL,2013,4,'Derecha',18,73,6.00),(399,NULL,2013,4,'Izquierda',19,73,6.00),(400,NULL,2013,4,'Derecha',19,73,6.00),(401,NULL,2013,4,'Izquierda',20,73,6.00),(402,NULL,2013,4,'Derecha',20,73,6.00),(403,NULL,2013,5,'Izquierda',1,73,6.00),(404,NULL,2013,5,'Derecha',1,73,6.00),(405,NULL,2013,5,'Izquierda',2,73,6.00),(406,NULL,2013,5,'Derecha',2,73,6.00),(407,NULL,2013,5,'Izquierda',3,73,6.00),(408,NULL,2013,5,'Derecha',3,73,6.00),(409,NULL,2013,5,'Izquierda',4,73,6.00),(410,NULL,2013,5,'Derecha',4,73,6.00),(411,NULL,2013,5,'Izquierda',5,73,6.00),(412,NULL,2013,5,'Derecha',5,73,6.00),(413,NULL,2013,5,'Izquierda',6,73,6.00),(414,NULL,2013,5,'Derecha',6,73,6.00),(415,NULL,2013,5,'Izquierda',7,73,6.00),(416,NULL,2013,5,'Derecha',7,73,6.00),(417,NULL,2013,5,'Izquierda',8,73,6.00),(418,NULL,2013,5,'Derecha',8,73,6.00),(419,NULL,2013,5,'Izquierda',9,73,6.00),(420,NULL,2013,5,'Derecha',9,73,6.00),(421,NULL,2013,5,'Izquierda',10,73,6.00),(422,NULL,2013,5,'Derecha',10,73,6.00),(423,NULL,2013,5,'Izquierda',11,73,6.00),(424,NULL,2013,5,'Derecha',11,73,6.00),(425,NULL,2013,5,'Izquierda',12,73,6.00),(426,NULL,2013,5,'Derecha',12,73,6.00),(427,NULL,2013,5,'Izquierda',13,73,6.00),(428,NULL,2013,5,'Derecha',13,73,6.00),(429,NULL,2013,5,'Izquierda',14,73,6.00),(430,NULL,2013,5,'Derecha',14,73,6.00),(431,NULL,2013,5,'Izquierda',15,73,6.00),(432,NULL,2013,5,'Derecha',15,73,6.00),(433,NULL,2013,5,'Izquierda',16,73,6.00),(434,NULL,2013,5,'Derecha',16,73,6.00),(435,NULL,2013,5,'Izquierda',17,73,6.00),(436,NULL,2013,5,'Derecha',17,73,6.00),(437,NULL,2013,5,'Izquierda',18,73,6.00),(438,NULL,2013,5,'Derecha',18,73,6.00),(439,NULL,2013,5,'Izquierda',19,73,6.00),(440,NULL,2013,5,'Derecha',19,73,6.00),(441,NULL,2013,5,'Izquierda',20,73,6.00),(442,NULL,2013,5,'Derecha',20,73,6.00),(443,NULL,2013,6,'Izquierda',1,73,6.00),(444,NULL,2013,6,'Derecha',1,73,6.00),(445,NULL,2013,6,'Izquierda',2,73,6.00),(446,NULL,2013,6,'Derecha',2,73,6.00),(447,NULL,2013,6,'Izquierda',3,73,6.00),(448,NULL,2013,6,'Derecha',3,73,6.00),(449,NULL,2013,6,'Izquierda',4,73,6.00),(450,NULL,2013,6,'Derecha',4,73,6.00),(451,NULL,2013,6,'Izquierda',5,73,6.00),(452,NULL,2013,6,'Derecha',5,73,6.00),(453,NULL,2013,6,'Izquierda',6,73,6.00),(454,NULL,2013,6,'Derecha',6,73,6.00),(455,NULL,2013,6,'Izquierda',7,73,6.00),(456,NULL,2013,6,'Derecha',7,73,6.00),(457,NULL,2013,6,'Izquierda',8,73,6.00),(458,NULL,2013,6,'Derecha',8,73,6.00),(459,NULL,2013,6,'Izquierda',9,73,6.00),(460,NULL,2013,6,'Derecha',9,73,6.00),(461,NULL,2013,6,'Izquierda',10,73,6.00),(462,NULL,2013,6,'Derecha',10,73,6.00),(463,NULL,2013,6,'Izquierda',11,73,6.00),(464,NULL,2013,6,'Derecha',11,73,6.00),(465,NULL,2013,6,'Izquierda',12,73,6.00),(466,NULL,2013,6,'Derecha',12,73,6.00),(467,NULL,2013,6,'Izquierda',13,73,6.00),(468,NULL,2013,6,'Derecha',13,73,6.00),(469,NULL,2013,6,'Izquierda',14,73,6.00),(470,NULL,2013,6,'Derecha',14,73,6.00),(471,NULL,2013,6,'Izquierda',15,73,6.00),(472,NULL,2013,6,'Derecha',15,73,6.00),(473,NULL,2013,6,'Izquierda',16,73,6.00),(474,NULL,2013,6,'Derecha',16,73,6.00),(475,NULL,2013,6,'Izquierda',17,73,6.00),(476,NULL,2013,6,'Derecha',17,73,6.00),(477,NULL,2013,6,'Izquierda',18,73,6.00),(478,NULL,2013,6,'Derecha',18,73,6.00),(479,NULL,2013,6,'Izquierda',19,73,6.00),(480,NULL,2013,6,'Derecha',19,73,6.00),(481,NULL,2013,6,'Izquierda',20,73,6.00),(482,NULL,2013,6,'Derecha',20,73,6.00),(483,NULL,2013,7,'Izquierda',1,73,6.00),(484,NULL,2013,7,'Derecha',1,73,6.00),(485,NULL,2013,7,'Izquierda',2,73,6.00),(486,NULL,2013,7,'Derecha',2,73,6.00),(487,NULL,2013,7,'Izquierda',3,73,6.00),(488,NULL,2013,7,'Derecha',3,73,6.00),(489,NULL,2013,7,'Izquierda',4,73,6.00),(490,NULL,2013,7,'Derecha',4,73,6.00),(491,NULL,2013,7,'Izquierda',5,73,6.00),(492,NULL,2013,7,'Derecha',5,73,6.00),(493,NULL,2013,7,'Izquierda',6,73,6.00),(494,NULL,2013,7,'Derecha',6,73,6.00),(495,NULL,2013,7,'Izquierda',7,73,6.00),(496,NULL,2013,7,'Derecha',7,73,6.00),(497,NULL,2013,7,'Izquierda',8,73,6.00),(498,NULL,2013,7,'Derecha',8,73,6.00),(499,NULL,2013,7,'Izquierda',9,73,6.00),(500,NULL,2013,7,'Derecha',9,73,6.00),(501,NULL,2013,7,'Izquierda',10,73,6.00),(502,NULL,2013,7,'Derecha',10,73,6.00),(503,NULL,2013,7,'Izquierda',11,73,6.00),(504,NULL,2013,7,'Derecha',11,73,6.00),(505,NULL,2013,7,'Izquierda',12,73,6.00),(506,NULL,2013,7,'Derecha',12,73,6.00),(507,NULL,2013,7,'Izquierda',13,73,6.00),(508,NULL,2013,7,'Derecha',13,73,6.00),(509,NULL,2013,7,'Izquierda',14,73,6.00),(510,NULL,2013,7,'Derecha',14,73,6.00),(511,NULL,2013,7,'Izquierda',15,73,6.00),(512,NULL,2013,7,'Derecha',15,73,6.00),(513,NULL,2013,7,'Izquierda',16,73,6.00),(514,NULL,2013,7,'Derecha',16,73,6.00),(515,NULL,2013,7,'Izquierda',17,73,6.00),(516,NULL,2013,7,'Derecha',17,73,6.00),(517,NULL,2013,7,'Izquierda',18,73,6.00),(518,NULL,2013,7,'Derecha',18,73,6.00),(519,NULL,2013,7,'Izquierda',19,73,6.00),(520,NULL,2013,7,'Derecha',19,73,6.00),(521,NULL,2013,7,'Izquierda',20,73,6.00),(522,NULL,2013,7,'Derecha',20,73,6.00),(523,NULL,2013,8,'Izquierda',1,73,6.00),(524,NULL,2013,8,'Derecha',1,73,6.00),(525,NULL,2013,8,'Izquierda',2,73,6.00),(526,NULL,2013,8,'Derecha',2,73,6.00),(527,NULL,2013,8,'Izquierda',3,73,6.00),(528,NULL,2013,8,'Derecha',3,73,6.00),(529,NULL,2013,8,'Izquierda',4,73,6.00),(530,NULL,2013,8,'Derecha',4,73,6.00),(531,NULL,2013,8,'Izquierda',5,73,6.00),(532,NULL,2013,8,'Derecha',5,73,6.00),(533,NULL,2013,8,'Izquierda',6,73,6.00),(534,NULL,2013,8,'Derecha',6,73,6.00),(535,NULL,2013,8,'Izquierda',7,73,6.00),(536,NULL,2013,8,'Derecha',7,73,6.00),(537,NULL,2013,8,'Izquierda',8,73,6.00),(538,NULL,2013,8,'Derecha',8,73,6.00),(539,NULL,2013,8,'Izquierda',9,73,6.00),(540,NULL,2013,8,'Derecha',9,73,6.00),(541,NULL,2013,8,'Izquierda',10,73,6.00),(542,NULL,2013,8,'Derecha',10,73,6.00),(543,NULL,2013,8,'Izquierda',11,73,6.00),(544,NULL,2013,8,'Derecha',11,73,6.00),(545,NULL,2013,8,'Izquierda',12,73,6.00),(546,NULL,2013,8,'Derecha',12,73,6.00),(547,NULL,2013,8,'Izquierda',13,73,6.00),(548,NULL,2013,8,'Derecha',13,73,6.00),(549,NULL,2013,8,'Izquierda',14,73,6.00),(550,NULL,2013,8,'Derecha',14,73,6.00),(551,NULL,2013,8,'Izquierda',15,73,6.00),(552,NULL,2013,8,'Derecha',15,73,6.00),(553,NULL,2013,8,'Izquierda',16,73,6.00),(554,NULL,2013,8,'Derecha',16,73,6.00),(555,NULL,2013,8,'Izquierda',17,73,6.00),(556,NULL,2013,8,'Derecha',17,73,6.00),(557,NULL,2013,8,'Izquierda',18,73,6.00),(558,NULL,2013,8,'Derecha',18,73,6.00),(559,NULL,2013,8,'Izquierda',19,73,6.00),(560,NULL,2013,8,'Derecha',19,73,6.00),(561,NULL,2013,8,'Izquierda',20,73,6.00),(562,NULL,2013,8,'Derecha',20,73,6.00),(563,NULL,2013,9,'Izquierda',1,73,6.00),(564,NULL,2013,9,'Derecha',1,73,6.00),(565,NULL,2013,9,'Izquierda',2,73,6.00),(566,NULL,2013,9,'Derecha',2,73,6.00),(567,NULL,2013,9,'Izquierda',3,73,6.00),(568,NULL,2013,9,'Derecha',3,73,6.00),(569,NULL,2013,9,'Izquierda',4,73,6.00),(570,NULL,2013,9,'Derecha',4,73,6.00),(571,NULL,2013,9,'Izquierda',5,73,6.00),(572,NULL,2013,9,'Derecha',5,73,6.00),(573,NULL,2013,9,'Izquierda',6,73,6.00),(574,NULL,2013,9,'Derecha',6,73,6.00),(575,NULL,2013,9,'Izquierda',7,73,6.00),(576,NULL,2013,9,'Derecha',7,73,6.00),(577,NULL,2013,9,'Izquierda',8,73,6.00),(578,NULL,2013,9,'Derecha',8,73,6.00),(579,NULL,2013,9,'Izquierda',9,73,6.00),(580,NULL,2013,9,'Derecha',9,73,6.00),(581,NULL,2013,9,'Izquierda',10,73,6.00),(582,NULL,2013,9,'Derecha',10,73,6.00),(583,NULL,2013,9,'Izquierda',11,73,6.00),(584,NULL,2013,9,'Derecha',11,73,6.00),(585,NULL,2013,9,'Izquierda',12,73,6.00),(586,NULL,2013,9,'Derecha',12,73,6.00),(587,NULL,2013,9,'Izquierda',13,73,6.00),(588,NULL,2013,9,'Derecha',13,73,6.00),(589,NULL,2013,9,'Izquierda',14,73,6.00),(590,NULL,2013,9,'Derecha',14,73,6.00),(591,NULL,2013,9,'Izquierda',15,73,6.00),(592,NULL,2013,9,'Derecha',15,73,6.00),(593,NULL,2013,9,'Izquierda',16,73,6.00),(594,NULL,2013,9,'Derecha',16,73,6.00),(595,NULL,2013,9,'Izquierda',17,73,6.00),(596,NULL,2013,9,'Derecha',17,73,6.00),(597,NULL,2013,9,'Izquierda',18,73,6.00),(598,NULL,2013,9,'Derecha',18,73,6.00),(599,NULL,2013,9,'Izquierda',19,73,6.00),(600,NULL,2013,9,'Derecha',19,73,6.00),(601,NULL,2013,9,'Izquierda',20,73,6.00),(602,NULL,2013,9,'Derecha',20,73,6.00);
/*!40000 ALTER TABLE `Puestos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-13 22:50:55
