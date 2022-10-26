-- MariaDB dump 10.19  Distrib 10.9.3-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ganic
-- ------------------------------------------------------
-- Server version	10.9.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Ingrediente`
--

DROP TABLE IF EXISTS `Ingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingrediente` (
  `idIngrediente` bigint(20) NOT NULL,
  `detalle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esApto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paso` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  PRIMARY KEY (`idIngrediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingrediente`
--

INSERT INTO `Ingrediente` (`idIngrediente`, `detalle`, `esApto`, `nombre`, `paso`, `precio`) VALUES (5,'Pan lactal blanco','SinRestriccion','Pan clasico',1,150),
(6,'Pan de mesa blanco','SinRestriccion','Pan flauta',1,120),
(7,'Pan de campo blanco','SinRestriccion','Pan de campo',1,250),
(8,'Pan lactal integral','SinRestriccion','Pan integral',1,280),
(9,'Carne de ternera a la parrilla','SinRestriccion','Medallo de carne',2,450),
(10,'Bondiola de cerdo a la parrilla','SinRestriccion','Cerdo',2,450),
(11,'Milanesa de pollo','SinRestriccion','Mila-pollo',2,450),
(12,'Milanesa de soja','SinRestriccion','Vegetalizima',2,400),
(13,'Salteado de verduras','SinRestriccion','Mix verde',2,380),
(14,'Salsa de barbacoa','SinRestriccion','Barbacoa',3,150),
(15,'Pure de papas','SinRestriccion','Pure',3,200),
(16,'Mix mostaza y mayonesa','SinRestriccion','Mostayesa',3,150),
(17,'Guacamole y mayonesa','SinRestriccion','La casa',3,250),
(18,'Pan integral vegano','Vegano','Pan integral vegano',1,350),
(19,'Pan de hamburguesa','Vegano','Pan de hamburguesa',1,400),
(20,'Pan de hamburguesa','sin_TACC','Pan de hamburguesa',1,400),
(21,'Pan de miga blanco','sin_TACC','Pan de Miga',1,400),
(22,'Milanesa de ternera','sin_TACC','Milanesa de carne',2,500),
(23,'Hamburguesa de carne','sin_TACC','Hamburguesa',2,500),
(24,'Hamburguesa de pollo','sin_TACC','Milanesa de pollo',2,500),
(25,'Hamburguesa de Lenteja','Vegano','MIlanesa de lenteja',2,500),
(26,'GArbanzos cocidos con aguacate','Vegano','Garbanzo',2,500),
(27,'Salsa de barbacoa','sin_TACC','Barbacoa',3,150),
(28,'Salsa al pesto','Vegano','Salsa al pesto',3,150),
(29,'Mayonesa vegana','Vegano','Veganesa',3,180);

--
-- Table structure for table `Pedido`
--

DROP TABLE IF EXISTS `Pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pedido` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedido`
--


--
-- Table structure for table `Sandwich`
--

DROP TABLE IF EXISTS `Sandwich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sandwich` (
  `idSandwich` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enPromocion` bit(1) DEFAULT NULL,
  `esApto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idSandwich`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sandwich`
--

INSERT INTO `Sandwich` (`idSandwich`, `descripcion`, `enPromocion`, `esApto`, `nombre`) VALUES (416,'Sandwich de pan integral con garbanzo cocido con aguacate y mayonesa','','Vegano','Sandwich de garbanzo'),
(417,'Hamburguesa vegana de lenteja','','Vegano','Hamburguesa vegana de lenteja'),
(418,'Hamburguesa de carne con salsa barbacoa','','sin_TACC','Hamburguesa de carne'),
(419,'Sandwich de milanesa de carne con salsa barbacoa','','sin_TACC','Sandwich de milanesa'),
(420,'Sandwich hecho con pan de campo, bondiola y con mix de mostaza con mayonesa','\0','SinRestriccion','Bondiola'),
(421,'Sandwich hecho con pan blanco, carne de ternera a la parrilla y salsa barbacoa','','SinRestriccion','A la parri');

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

INSERT INTO `Usuario` (`id`, `apellido`, `direccion`, `email`, `nombre`, `password`, `preferencia`) VALUES (9,'Feldman','Peribebuy 3667','crisefeld@gmail.com','Cristian','123','SinRestriccion');

--
-- Table structure for table `compuesto_por`
--

DROP TABLE IF EXISTS `compuesto_por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compuesto_por` (
  `idSandwich` bigint(20) NOT NULL,
  `idIngrediente` bigint(20) NOT NULL,
  `ingrediente_idIngrediente` bigint(20) NOT NULL,
  PRIMARY KEY (`idSandwich`,`idIngrediente`),
  KEY `FKh0fp8hwcwr091ii0cc99i2vhn` (`idIngrediente`),
  CONSTRAINT `FK4wdawm4jec9dattj0fdkhhetf` FOREIGN KEY (`idSandwich`) REFERENCES `Sandwich` (`idSandwich`),
  CONSTRAINT `FKh0fp8hwcwr091ii0cc99i2vhn` FOREIGN KEY (`idIngrediente`) REFERENCES `Ingrediente` (`idIngrediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compuesto_por`
--

INSERT INTO `compuesto_por` (`idSandwich`, `idIngrediente`, `ingrediente_idIngrediente`) VALUES (416,18,0),
(416,26,0),
(416,29,0),
(417,19,0),
(417,25,0),
(417,29,0),
(418,20,0),
(418,23,0),
(418,27,0),
(419,21,0),
(419,22,0),
(419,27,0),
(420,7,0),
(420,10,0),
(420,16,0),
(421,6,0),
(421,9,0),
(421,14,0);

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES (118);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-26 16:00:08
