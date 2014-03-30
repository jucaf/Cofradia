CREATE DATABASE  IF NOT EXISTS `cofradia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cofradia`;
-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cofradia
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.12.04.2

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
-- Table structure for table `Dias`
--

DROP TABLE IF EXISTS `Dias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dias` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(50) NOT NULL DEFAULT '',
  `hora` varchar(5) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='latin1_spanish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dias`
--

LOCK TABLES `Dias` WRITE;
/*!40000 ALTER TABLE `Dias` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dias` ENABLE KEYS */;
UNLOCK TABLES;

--
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
  `precio` decimal(4,2) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_Cargos_1` (`dia`),
  CONSTRAINT `fk_Cargos_1` FOREIGN KEY (`dia`) REFERENCES `Dias` (`did`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1 COMMENT='latin1_spanish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Dumping data for table `Cargos`
--

LOCK TABLES `Cargos` WRITE;
/*!40000 ALTER TABLE `Cargos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cargos` ENABLE KEYS */;
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
  `creationDate` DATE DEFAULT NULL,
  `payDate` DATE DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `fk_Puestos_1` (`hid`),
  KEY `fk_Puestos_2` (`cargo`),
  CONSTRAINT `fk_Puestos_1` FOREIGN KEY (`hid`) REFERENCES `Hermanos` (`HID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Puestos_2` FOREIGN KEY (`cargo`) REFERENCES `Cargos` (`cid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=latin1 COMMENT='latin1_spanish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Puestos`
--

LOCK TABLES `Puestos` WRITE;
/*!40000 ALTER TABLE `Puestos` DISABLE KEYS */;
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

-- Dump completed on 2014-03-23 12:52:11
