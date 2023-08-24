-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: programamotivate
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `idactividades` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`idactividades`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'Capacitaciones','2023-08-10 18:09:34','capacitaciones.png'),(2,'Pausas Activas','2023-08-10 18:09:34','pausasactivas.png'),(3,'Reportes de Actos y Condiciones Inseguras','2023-08-10 18:09:34','reportes.png'),(4,'Participación en Comités de SSTA','2023-08-10 18:09:34','participacionssta.png'),(5,'Resultados de Inspecciones Comportamentales','2023-08-10 18:09:34','resultados.png'),(6,'Tapitas Para Sanar','2023-08-10 18:09:34','tapitas.png'),(7,'Participación en Actividades Ambientales','2023-08-10 18:09:34','participacionambiental.png'),(8,'Hábitos y Estilos de Vida Saludable','2023-08-10 18:09:34','habitos.png'),(9,'Uso de Medio de Transporte Ambientales','2023-08-10 18:09:34','transporte.png'),(10,'Cumplimiento en los Tiempos de Respuesta','2023-08-10 18:09:34','cumplimiento.png'),(11,'Otras Actividades','2023-08-10 18:09:34','otros.png'),(12,'Ciberseguridad','2023-08-10 18:09:34','ciberseguridad.png');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminitradores`
--

DROP TABLE IF EXISTS `adminitradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminitradores` (
  `idadminitradores` int(11) NOT NULL AUTO_INCREMENT,
  `correoElectronico` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idadminitradores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminitradores`
--

LOCK TABLES `adminitradores` WRITE;
/*!40000 ALTER TABLE `adminitradores` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminitradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaborador`
--

DROP TABLE IF EXISTS `colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaborador` (
  `idcolaborador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `fechaIngreso` datetime DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `id_empresa` int(100) NOT NULL,
  PRIMARY KEY (`idcolaborador`),
  KEY `fk_empresa` (`id_empresa`),
  CONSTRAINT `fk_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`idempresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaborador`
--

LOCK TABLES `colaborador` WRITE;
/*!40000 ALTER TABLE `colaborador` DISABLE KEYS */;
INSERT INTO `colaborador` VALUES (1,'Julian Alberto','Mora Matiz','1018474605','2022-09-05 00:00:00','julian.mora95@gmail.com','Ingeniero Web Master',2),(2,'Freddy ','Ojeda','1007493702','2023-04-26 00:00:00','freddyeojeda@gmail.com','Desarrollador Junior',2),(3,'Jhon','Paipa','123123123','2023-04-26 00:00:00','jhonpaipa@gmail.com','Ingeniero de sistemas',2),(4,'Ruben','Macias','123456789','2023-04-26 00:00:00','rubenmacias@gmail.com','Ingeniero de sistemas',2),(5,'Andrea','Salcedo','98765432','2023-04-26 00:00:00','andreasalcedo@gmail.com','Ingeniero de sistemas',2);
/*!40000 ALTER TABLE `colaborador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `idempresa` int(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idempresa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'bdguidance'),(2,'ittic'),(3,'bps');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial` (
  `idhistorial` int(11) NOT NULL AUTO_INCREMENT,
  `idAdministrador` int(11) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `observacion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idhistorial`),
  KEY `idAdministrador` (`idAdministrador`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`idAdministrador`) REFERENCES `adminitradores` (`idadminitradores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntuacion`
--

DROP TABLE IF EXISTS `puntuacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntuacion` (
  `idpuntuacion` int(11) NOT NULL AUTO_INCREMENT,
  `puntos` varchar(45) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `idColaborador` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  `nombreActividad` varchar(200) NOT NULL,
  PRIMARY KEY (`idpuntuacion`),
  KEY `idColaborador` (`idColaborador`),
  KEY `idActividad` (`idActividad`),
  CONSTRAINT `puntuacion_ibfk_1` FOREIGN KEY (`idColaborador`) REFERENCES `colaborador` (`idcolaborador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `puntuacion_ibfk_2` FOREIGN KEY (`idActividad`) REFERENCES `actividades` (`idactividades`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuacion`
--

LOCK TABLES `puntuacion` WRITE;
/*!40000 ALTER TABLE `puntuacion` DISABLE KEYS */;
INSERT INTO `puntuacion` VALUES (1,'10','2023-08-22 00:00:00',2,1,'N/A','Capacitacion comunicacion asertiva'),(2,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 1'),(3,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 2'),(4,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 3'),(5,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 4'),(6,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 5'),(7,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 6'),(8,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 7'),(9,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 8'),(10,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 9'),(11,'10','2023-08-22 00:00:00',2,1,'N/A','semana de la salud 10'),(12,'10','2023-08-22 00:00:00',3,1,'asd','semana de la salud 11'),(13,'10','2023-08-22 00:00:00',3,1,'asd','semana de la salud 11'),(14,'10','2023-08-22 00:00:00',3,1,'asd','semana de la salud 11'),(15,'10','2023-08-22 00:00:00',4,1,'asd','semana de la salud 11'),(16,'10','2023-08-22 00:00:00',4,1,'asd','semana de la salud 11'),(17,'10','2023-08-22 00:00:00',5,1,'asd','semana de la salud 11'),(18,'10','2023-08-23 00:00:00',1,1,'vbc','semana de la salud 12'),(19,'10','2023-08-23 00:00:00',1,1,'vbc','semana de la salud 12'),(20,'10','2023-08-23 00:00:00',1,1,'vbc','semana de la salud 12'),(21,'10','2023-08-23 00:00:00',1,1,'vbc','semana de la salud 12'),(22,'10','2023-08-23 00:00:00',1,1,'vbc','semana de la salud 12');
/*!40000 ALTER TABLE `puntuacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-24 15:44:18
