-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: material
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `MOBILE_NO` varchar(200) NOT NULL,
  `ADDRESS` varchar(500) NOT NULL,
  `POSTAL_CODE` varchar(20) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_ADDR` (`USER_ID`,`MOBILE_NO`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FULL_NAME` varchar(200) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `MOBILE` varchar(20) NOT NULL,
  `USERNAME` varchar(200) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `ROLE` varchar(1) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_ADM_USR_I` (`USERNAME`,`DELETED`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'makinus','services@makinus.com','8939862268','makinus','$2a$10$p6gkyQdTt.ECgKjjXxIi0uVtyc4E7HGy7Pd2p7PeywQG79X4BpP7u','S','AUTO_CREATOR','2019-03-25 17:06:47','AUTO_CREATOR','2019-03-25 17:06:47','T','F');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BRAND_NAME` varchar(200) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_BRD_I` (`BRAND_NAME`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(200) NOT NULL,
  `PARENT_CATEGORY` bigint(20) DEFAULT NULL,
  `IMAGE_PATH` varchar(200) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_CAT_I` (`CATEGORY_NAME`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Bathroom Accessories',NULL,'c:\\material\\25032019\\1553515557930_BathroomAccessories.jpg','makinus','2019-03-25 17:35:58','makinus','2019-03-25 17:35:58','T','F'),(2,'Bricks And Blocks',NULL,'c:\\material\\25032019\\1553515590148_BricksAndBlocks.jpg','makinus','2019-03-25 17:36:30','makinus','2019-03-25 17:36:30','T','F'),(3,'Cement',NULL,'c:\\material\\25032019\\1553515602017_Cement.jpg','makinus','2019-03-25 17:36:42','makinus','2019-03-25 17:36:42','T','F'),(4,'Construction Materials',NULL,'c:\\material\\25032019\\1553515613387_ConstructionMaterials.jpg','makinus','2019-03-25 17:36:53','makinus','2019-03-25 17:36:53','T','F'),(5,'Electrical',NULL,'c:\\material\\25032019\\1553515623566_Electrical.jpg','makinus','2019-03-25 17:37:04','makinus','2019-03-25 17:37:04','T','F'),(6,'Glass Material',NULL,'c:\\material\\25032019\\1553515642303_GlassMaterial.jpg','makinus','2019-03-25 17:37:22','makinus','2019-03-25 17:37:22','T','F'),(7,'Hardware Fixtures',NULL,'c:\\material\\25032019\\1553515656840_HardwareFixtures.jpg','makinus','2019-03-25 17:37:37','makinus','2019-03-25 17:37:37','T','F'),(8,'Home Automation',NULL,'c:\\material\\25032019\\1553515692737_HomeAutomation.jpg','makinus','2019-03-25 17:38:13','makinus','2019-03-25 17:38:13','T','F'),(9,'Home Decor',NULL,'c:\\material\\25032019\\1553515709227_HomeDcor.jpg','makinus','2019-03-25 17:38:29','makinus','2019-03-25 17:38:29','T','F'),(10,'Lighting And Fixtures',NULL,'c:\\material\\25032019\\1553515723280_LightingAndFixtures.jpg','makinus','2019-03-25 17:38:43','makinus','2019-03-25 17:38:43','T','F'),(11,'Modular Kitchen',NULL,'c:\\material\\25032019\\1553515737246_ModularKitchen.jpg','makinus','2019-03-25 17:38:57','makinus','2019-03-25 17:38:57','T','F'),(12,'Natural Stones',NULL,'c:\\material\\25032019\\1553515750639_NaturalStones.jpg','makinus','2019-03-25 17:39:11','makinus','2019-03-25 17:39:11','T','F'),(13,'Paints And Finishes',NULL,'c:\\material\\25032019\\1553515774527_PaintsAndFinishes.jpg','makinus','2019-03-25 17:39:35','makinus','2019-03-25 17:39:35','T','F'),(14,'Plumbing Items',NULL,'c:\\material\\25032019\\1553515795426_PlumbingItems.jpg','makinus','2019-03-25 17:39:55','makinus','2019-03-25 17:39:55','T','F'),(15,'Ready Mix Concrete',NULL,'c:\\material\\25032019\\1553515824826_ReadyMixConcrete.jpg','makinus','2019-03-25 17:40:25','makinus','2019-03-25 17:40:25','T','F'),(16,'Roofing',NULL,'c:\\material\\25032019\\1553515836255_Roofing.jpg','makinus','2019-03-25 17:40:36','makinus','2019-03-25 17:40:36','T','F'),(17,'Sand And Concrete',NULL,'c:\\material\\25032019\\1553515849251_SandAndConcrete.jpg','makinus','2019-03-25 17:40:49','makinus','2019-03-25 17:40:49','T','F'),(18,'Tiles',NULL,'c:\\material\\25032019\\1553515859288_Tiles.jpg','makinus','2019-03-25 17:40:59','makinus','2019-03-25 17:40:59','T','F'),(19,'TMT Steel Bars',NULL,'c:\\material\\25032019\\1553515874227_TMTSteelBars.jpg','makinus','2019-03-25 17:41:14','makinus','2019-03-25 17:41:14','T','F'),(20,'UPVS Doors And Windows',NULL,'c:\\material\\25032019\\1553515891601_UPVSDoorsAndWindows.jpg','makinus','2019-03-25 17:41:32','makinus','2019-03-25 17:41:32','T','F'),(21,'Wooden Products',NULL,'c:\\material\\25032019\\1553515904959_WoodenProducts.jpg','makinus','2019-03-25 17:41:45','makinus','2019-03-25 17:41:45','T','F');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crusher`
--

DROP TABLE IF EXISTS `crusher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crusher` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CRUSHER` varchar(200) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `LOCATION` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_CRUSH_I` (`CRUSHER`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crusher`
--

LOCK TABLES `crusher` WRITE;
/*!40000 ALTER TABLE `crusher` DISABLE KEYS */;
/*!40000 ALTER TABLE `crusher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (0,NULL,'<< Flyway Schema Creation >>','SCHEMA','`MATERIAL`',NULL,'root','2019-03-25 11:36:13',0,1),(1,'1','CreateUnitedSuppliesSchema','SQL','V1__CreateUnitedSuppliesSchema.sql',1695494537,'root','2019-03-25 11:36:47',34026,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GRADE` varchar(200) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_GRD_I` (`GRADE`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) NOT NULL,
  `ORDER_DATE` datetime NOT NULL,
  `ORDER_SUBTOTAL` decimal(10,0) NOT NULL,
  `TRANS_CHARGES` decimal(10,0) NOT NULL,
  `SERV_CHARGES` decimal(10,0) NOT NULL,
  `LOAD_CHARGES` decimal(10,0) NOT NULL,
  `DEL_CHARGES` decimal(10,0) NOT NULL,
  `ORDER_TOTAL` decimal(10,0) NOT NULL,
  `DEL_ADDRESS_1` bigint(20) NOT NULL,
  `DEL_ADDRESS_2` bigint(20) DEFAULT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `STATUS` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_ORD_I` (`USER_ID`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_orders`
--

DROP TABLE IF EXISTS `prod_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_orders` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` bigint(20) NOT NULL,
  `PROD_ID` bigint(20) NOT NULL,
  `PRO_QTY` int(11) NOT NULL,
  `PRO_SALE_RATE` decimal(10,0) NOT NULL,
  `LOAD_CHARGES` decimal(10,0) NOT NULL,
  `TRANS_CHARGES` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_PRD_ORD_I` (`ORDER_ID`,`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_orders`
--

LOCK TABLES `prod_orders` WRITE;
/*!40000 ALTER TABLE `prod_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `prod_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PRODUCT_NAME` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(2000) DEFAULT NULL,
  `IMAGE_PATH` varchar(200) NOT NULL,
  `IMAGE_PATH_OPT1` varchar(200) DEFAULT NULL,
  `IMAGE_PATH_OPT2` varchar(200) DEFAULT NULL,
  `IMAGE_PATH_OPT3` varchar(200) DEFAULT NULL,
  `PARENT_CATEGORY` bigint(20) NOT NULL,
  `SUB_CATEGORY` bigint(20) DEFAULT NULL,
  `BRAND_ID` bigint(20) DEFAULT NULL,
  `QUALITY_ID` bigint(20) DEFAULT NULL,
  `GRADE_ID` bigint(20) DEFAULT NULL,
  `TYPE_ID` bigint(20) DEFAULT NULL,
  `SIZE_ID` bigint(20) DEFAULT NULL,
  `CRUSHER_ID` bigint(20) DEFAULT NULL,
  `MRP_RATE` decimal(10,2) NOT NULL,
  `SALE_RATE` decimal(10,2) NOT NULL,
  `TRANSPORTATION` decimal(10,2) NOT NULL,
  `UNIT_ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `IN_STOCK` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_PROD_I` (`PRODUCT_NAME`,`DELETED`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Annealed Glass','','c:\\material\\25032019\\1553516169959_AnnealedGlass.jpg',NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200.00,190.00,10.00,1,'makinus','2019-03-25 17:46:10','makinus','2019-03-25 17:46:10','T','F');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROMOTION_NAME` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(2000) DEFAULT NULL,
  `IMAGE_PATH` varchar(200) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_PROMO_I` (`PROMOTION_NAME`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality`
--

DROP TABLE IF EXISTS `quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quality` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `QUALITY` varchar(200) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_QTY_I` (`QUALITY`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality`
--

LOCK TABLES `quality` WRITE;
/*!40000 ALTER TABLE `quality` DISABLE KEYS */;
/*!40000 ALTER TABLE `quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `size` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SIZE` varchar(200) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_SIZE_I` (`SIZE`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  `VEHICLE` varchar(1) NOT NULL,
  `UNIT_ID` smallint(6) NOT NULL,
  `CHARGES` decimal(10,2) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_TRANS_I` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(200) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_TYP_I` (`TYPE`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_mapping`
--

DROP TABLE IF EXISTS `unit_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_mapping` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UNIT_ID` bigint(20) NOT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_UNIT_M_I` (`UNIT_ID`,`CATEGORY_ID`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_mapping`
--

LOCK TABLES `unit_mapping` WRITE;
/*!40000 ALTER TABLE `unit_mapping` DISABLE KEYS */;
INSERT INTO `unit_mapping` VALUES (1,1,6,'makinus','2019-03-25 17:45:22','makinus','2019-03-25 17:45:22','T','F');
/*!40000 ALTER TABLE `unit_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UNIT_NAME` varchar(100) NOT NULL,
  `UNIT` varchar(10) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_UNITS_I` (`UNIT_NAME`,`UNIT`,`ACTIVE`,`DELETED`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'Square Feet','Sq.Ft','makinus','2019-03-25 17:45:03','makinus','2019-03-25 17:45:03','T','F');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FULL_NAME` varchar(200) DEFAULT NULL,
  `USERNAME` varchar(200) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `MOBILE` varchar(20) NOT NULL,
  `EMAIL` varchar(200) DEFAULT NULL,
  `ROLE` varchar(1) NOT NULL,
  `CREATED_BY` varchar(200) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` varchar(200) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNIQ_USR_I` (`USERNAME`,`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-25 17:52:26
