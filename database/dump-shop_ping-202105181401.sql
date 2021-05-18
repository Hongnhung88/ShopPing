-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: shop_ping
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

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
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'daohongnhung','11022002','2021-05-12 13:50:19','hongnhung@gmail.com'),(2,'hongnhung','11022002','2021-04-12 17:47:55',''),(3,'daongocduy','22112005','2021-04-12 17:49:43',''),(4,'ngocduy','22112005','2021-04-12 17:50:01',''),(5,'ngocduy','22112005','2021-04-24 12:33:48',''),(6,'admin','admin','2021-05-12 13:50:08','admin@gmail.com'),(7,'nhung','161002','2021-05-12 14:23:14','nhung2011@gmail.com');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblchitietgiohang`
--

DROP TABLE IF EXISTS `tblchitietgiohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblchitietgiohang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idGioHang` int(11) NOT NULL,
  `idGiay` int(11) NOT NULL DEFAULT 0,
  `idPhuKien` int(11) NOT NULL DEFAULT 0,
  `giaBan` int(11) DEFAULT 0,
  `soLuong` int(11) DEFAULT 1,
  `size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chiTiet_GioHang_FK` (`idGioHang`),
  CONSTRAINT `chiTiet_GioHang_FK` FOREIGN KEY (`idGioHang`) REFERENCES `tblgiohang` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblchitietgiohang`
--

LOCK TABLES `tblchitietgiohang` WRITE;
/*!40000 ALTER TABLE `tblchitietgiohang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblchitietgiohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgiay`
--

DROP TABLE IF EXISTS `tblgiay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgiay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idHangGiay` int(11) NOT NULL,
  `tenGiay` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giaBan` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) DEFAULT 0,
  `moTa` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhGiay` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banChay` bit(1) DEFAULT NULL,
  `isNew` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hang_giay_FK` (`idHangGiay`),
  CONSTRAINT `hang_giay_FK` FOREIGN KEY (`idHangGiay`) REFERENCES `tblhanggiay` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgiay`
--

LOCK TABLES `tblgiay` WRITE;
/*!40000 ALTER TABLE `tblgiay` DISABLE KEYS */;
INSERT INTO `tblgiay` VALUES (1,1,'vans',1000,0,'mo ta 1','./img/product/vans1.png','\0','\0'),(2,1,'vans',1000,0,'mo ta 2','./img/product/vans2.png','','\0'),(3,1,'vans',1000,0,'mo ta 3','./img/product/vans3.png','\0',''),(4,1,'vans',1000,0,'mo ta 4','./img/product/vans4.png','','\0'),(5,5,'Warm At Heart Chuck 70',1000,0,'mo ta 1','./img/product/converse1.png','\0','\0'),(6,5,'Raw Earth Camo Chuck 70',1000,0,'mo ta 2','./img/product/converse2.png','','\0'),(7,5,'Raw Earth Camo Chuck 70',1000,0,'mo ta 2','./img/product/converse2.png','\0','\0'),(8,5,'Renew Chuck 70',1000,0,'mo ta 3','./img/product/converse3.png','\0',''),(9,5,'Knit Mashup Chuck 70',1000,0,'mo ta 4','./img/product/converse4.png','\0',''),(10,1,'Giày Sneaker Unisex Vans Classic Slip-On Checkerboard',1000000,0,'mo ta 1','./img/product/vans1.png','\0','\0'),(11,1,'Giày Sneaker Unisex Vans Classic Slip-On Checkerboard',1000000,0,'mo ta 2','./img/product/vans2.png','',''),(12,1,'Giày Sneaker Unisex Vans Classic Slip-On Checkerboard',1000000,0,'mo ta 3','./img/product/vans3.png','\0','\0'),(13,1,'Giày Sneaker Unisex Vans Classic Slip-On Checkerboard',1000000,0,'mo ta 4','./img/product/vans4.png','',''),(14,5,'Warm At Heart Chuck 70',1000000,0,'mo ta 1','./img/product/converse1.png','\0','\0'),(15,5,'Raw Earth Camo Chuck 70',1000000,0,'mo ta 2','./img/product/converse2.png','\0','\0'),(16,5,'Renew Chuck 70',1000000,0,'mo ta 3','./img/product/converse3.png','\0','\0'),(17,5,'Knit Mashup Chuck 70',1000000,0,'mo ta 4','./img/product/converse4.png','\0','\0'),(18,1,'Giày Vans Old Skool Skate ---SKU: VN0A5FCBY28',2200000,0,'mo ta 2','./img/product/vans1.png','\0','\0'),(19,1,'Giày Vans Old Skool Skate ---SKU: VN0A5FCBOFW',2200000,0,'mo ta 2','./img/product/vans2.png','\0','\0'),(20,1,'Giày Vans Old Shool Mix & Match SKU: VN0A4U3B2PD',1750000,0,'mo ta 2','./img/product/vans3.png','\0',''),(21,1,'Giày Vans Old Shool Pig Suede SKU: VN0A4BV518P',2200000,0,'mo ta 2','./img/product/vans4.png','\0',''),(22,1,'Giày Vans Authentic Pig Suede SKU: VN0A2Z5I18P',2050000,0,'mo ta 2','./img/product/vans5.png','\0',''),(23,1,'Giày Vans Old Shool Pig Suede SKU: VN0A4U3B18Z',2200000,0,'mo ta 2','./img/product/vans6.png','','\0'),(24,1,'Giày Vans Old Shool 36 DX Anaheim Factory Hoffman Fabrics SKU: VN0A38G219Z',2200000,0,'mo ta 2','./img/product/vans7.png','\0','\0'),(25,1,'Giày Vans Old Skool Warp ---- SKU: VN0A4U3B21N',1750000,0,'mo ta 2','./img/product/vans8.png','\0','\0'),(26,2,'Giày Sneaker Alexander Mcqueen Cho Nam Size 41 ---',9800000,0,'mo ta 3','./img/product/mc1.png','\0','\0'),(27,2,'Giày Sneaker Alexander Mcqueen Cho Nam Size 41 ---',9800000,0,'mo ta 3','./img/product/mc1.png','\0','\0'),(28,2,'Giày Alexander McQueen Oversized Sneaker Phối Màu Trắng Đen Size 40',13500000,0,'mo ta 3','./img/product/mc2.png','\0','\0'),(29,2,'Giày Alexander McQueen Oversized Sneaker Màu Trắng',11290000,0,'mo ta 3','./img/product/mc3.png','\0','\0'),(30,2,'Giày Sneaker Alexander McQueen Red Suede Oversized',11290000,0,'mo ta 3','./img/product/mc4.png','\0','\0'),(31,2,'Giày Alexander McQueen Oversized Sneaker',16290000,0,'mo ta 3','./img/product/mc5.png','\0','\0'),(32,2,'Giày Sneaker Alexander McQueen Pink Oversized',12000000,0,'mo ta 3','./img/product/mc6.png','\0','\0'),(33,2,'Giày Alexander McQueen Studded Oversized Sneaker',14500000,0,'mo ta 3','./img/product/mc7.png','\0','\0'),(34,2,'Giày Sneakers Alexander Mcqueen Studded Heels ',8100000,0,'mo ta 3','./img/product/mc8.png','\0','\0'),(35,3,'Giày adidas UltraBOOST 20 \"Black Multi\"',2199000,0,'mo ta 3','./img/product/boost4.png','\0','\0'),(36,3,'Giày adidas UltraBOOST 20 \"Cloud White Gold\"',2199000,0,'mo ta 3','./img/product/boost5.png','','\0'),(37,3,'Giày adidas UltraBOOST 20 \"Prime Blue\"',2199000,0,'mo ta 3','./img/product/boost6.png','\0','\0'),(38,3,'Giày adidas UltraBOOST 4.0 \"Triple Black\"',2199000,0,'mo ta 3','./img/product/boost7.png','\0','\0'),(39,3,'Giày adidas UltraBOOST 20 \"White pink\" ',2199000,0,'mo ta 3','./img/product/boost8.png','\0','\0'),(40,3,'Giày adidas UltraBOOST 20 \"Geometric Pack Black Orange\" ',2199000,0,'mo ta 3','./img/product/boost1.png','\0','\0'),(41,3,'Giày adidas UltraBOOST 20 \"Geometric Pack Grey\" ',2199000,0,'mo ta 3','./img/product/boost3.png','\0','\0'),(42,3,'Giày adidas UltraBOOST 20 \"Signal Orange Camo\"  ',2199000,0,'mo ta 3','./img/product/boost2.png','\0','\0'),(43,4,'Giày adidas UltraBOOST 20 \"Black Multi\" ',2199000,0,'mo ta 3','./img/product/nike1.png','\0','\0'),(44,4,'Giày adidas UltraBOOST 20 \"Cloud White Gold\"  ',2199000,0,'mo ta 3','./img/product/nike2.png','\0','\0'),(45,4,'Giày adidas UltraBOOST 20 \"Prime Blue\"  ',2199000,0,'mo ta 3','./img/product/nike3.png','','\0'),(46,4,'Giày adidas UltraBOOST 4.0 \"Triple Black\"',2199000,0,'mo ta 3','./img/product/nike4.png','\0','\0'),(47,4,'Giày adidas UltraBOOST 20 \"White pink\" ',2199000,0,'mo ta 3','./img/product/nike5.png','\0','\0'),(48,4,'Giày adidas UltraBOOST 20 \"Geometric Pack Black Orange\" ',2199000,0,'mo ta 3','./img/product/nike6.png','\0','\0'),(49,4,'Giày adidas UltraBOOST 20 \"Geometric Pack Grey\" ',2199000,0,'mo ta 3','./img/product/nike7.png','\0','\0'),(50,4,'Giày adidas UltraBOOST 20 \"Signal Orange Camo\" ',2199000,0,'mo ta 3','./img/product/nike8.png','\0','\0'),(51,8,'Giày adidas UltraBOOST 20 \"Black Multi\" ',2199000,0,'mo ta 3','./img/product/nikej1.png','\0','\0'),(52,8,'Giày adidas UltraBOOST 20 \"Cloud White Gold\"  ',2199000,0,'mo ta 3','./img/product/nikej2.png','\0','\0'),(53,8,'Giày adidas UltraBOOST 20 \"Prime Blue\"  ',2199000,0,'mo ta 3','./img/product/nikej3.png','\0','\0'),(54,8,'Giày adidas UltraBOOST 4.0 \"Triple Black\"',2199000,0,'mo ta 3','./img/product/nikej4.png','\0','\0'),(55,8,'Giày adidas UltraBOOST 20 \"White pink\" ',2199000,0,'mo ta 3','./img/product/nikej5.png','\0','\0'),(56,8,'Giày adidas UltraBOOST 20 \"Geometric Pack Black Orange\" ',2199000,0,'mo ta 3','./img/product/nikej6.png','\0','\0'),(57,8,'Giày adidas UltraBOOST 20 \"Geometric Pack Grey\" ',2199000,0,'mo ta 3','./img/product/nikej7.png','\0','\0'),(58,8,'Giày adidas UltraBOOST 20 \"Signal Orange Camo\" ',2199000,0,'mo ta 3','./img/product/nikej8.png','\0','\0'),(59,7,'Chuck Taylor Classic #M5039V',1450000,0,'mo ta 3','./img/product/cvt1.png','\0','\0'),(60,7,'Chuck Taylor Classic #127442',1450000,0,'mo ta 3','./img/product/cvt2.png','\0','\0'),(61,7,'Chuck Taylor Classic #126196',1450000,0,'mo ta 3','./img/product/cvt3.png','\0','\0'),(62,7,'Chuck Taylor Classic #121178',1450000,0,'mo ta 3','./img/product/cvt4.png','\0','\0'),(63,7,'Chuck Taylor Classic #121177',1450000,0,'mo ta 3','./img/product/cvt5.png','\0','\0'),(64,7,'Chuck Taylor Classic #121176',1450000,0,'mo ta 3','./img/product/cvt6.png','\0','\0'),(65,7,'Chuck 70 My Story Low-Top #170285C',1900000,0,'mo ta 3','./img/product/cvt7.png','\0','\0'),(66,7,'Chuck 70 Explore a Better World High Top #170867C',2000000,0,'mo ta 3','./img/product/cvt8.png','\0','\0'),(67,6,'Chuck Taylor 1970s Hi #162056C',2000000,0,'mo ta 3','./img/product/cvc1.png','\0','\0'),(68,6,'Chuck Taylor 1970s Hi #162050C',2000000,0,'mo ta 3','./img/product/cvc2.png','\0','\0'),(69,6,'Chuck 70 Archive Paint Splatter High Top #170802C',2000000,0,'mo ta 3','./img/product/cvc3.png','\0','\0'),(70,6,'Chuck 70 Archive Paint Splatter High Top #170801C',2000000,0,'mo ta 3','./img/product/cvc4.png','\0','\0'),(71,6,'Run Star Hike Valentines day High-Top #171120V',2500000,0,'mo ta 3','./img/product/cvc5.png','\0','\0'),(72,6,'Chuck Taylor All Star Valentines Day High-Top #171159V',1600000,0,'mo ta 3','./img/product/cvc6.png','\0','\0'),(73,6,'Chuck Taylor Valentines Day High-Top #171117V',2000000,0,'mo ta 3','./img/product/cvc7.png','\0','\0'),(74,6,'Chuck Taylor Valentines Day High-Top #171118V ',2000000,0,'mo ta 3','./img/product/cvc8.png','\0','\0');
/*!40000 ALTER TABLE `tblgiay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgiohang`
--

DROP TABLE IF EXISTS `tblgiohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgiohang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `tongTien` int(11) DEFAULT 0,
  `ngayDatHang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ngayGiaoHang` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tinhTrang` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `User_GioHang_FK` (`idUser`),
  CONSTRAINT `User_GioHang_FK` FOREIGN KEY (`idUser`) REFERENCES `tblusers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgiohang`
--

LOCK TABLES `tblgiohang` WRITE;
/*!40000 ALTER TABLE `tblgiohang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgiohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhanggiay`
--

DROP TABLE IF EXISTS `tblhanggiay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhanggiay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenHang` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhanggiay`
--

LOCK TABLES `tblhanggiay` WRITE;
/*!40000 ALTER TABLE `tblhanggiay` DISABLE KEYS */;
INSERT INTO `tblhanggiay` VALUES (1,'Vans'),(2,'MCQueen'),(3,'Boost'),(4,'Nike'),(5,'Converse'),(6,'cvc'),(7,'cvt'),(8,'nikej1');
/*!40000 ALTER TABLE `tblhanggiay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblkho`
--

DROP TABLE IF EXISTS `tblkho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblkho` (
  `idGiay` int(11) NOT NULL,
  `idSize` int(11) NOT NULL,
  `nhap` int(11) DEFAULT 0,
  `ban` int(11) DEFAULT 0,
  PRIMARY KEY (`idGiay`,`idSize`),
  KEY `size_kho_FK` (`idSize`),
  CONSTRAINT `giay_kho_FK` FOREIGN KEY (`idGiay`) REFERENCES `tblgiay` (`id`),
  CONSTRAINT `size_kho_FK` FOREIGN KEY (`idSize`) REFERENCES `tblsize` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblkho`
--

LOCK TABLES `tblkho` WRITE;
/*!40000 ALTER TABLE `tblkho` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblkienthucgiay`
--

DROP TABLE IF EXISTS `tblkienthucgiay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblkienthucgiay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieuDe` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moTa` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhKienThuc` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblkienthucgiay`
--

LOCK TABLES `tblkienthucgiay` WRITE;
/*!40000 ALTER TABLE `tblkienthucgiay` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkienthucgiay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblphukien`
--

DROP TABLE IF EXISTS `tblphukien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblphukien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenPhuKien` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhPhuKien` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giaBan` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblphukien`
--

LOCK TABLES `tblphukien` WRITE;
/*!40000 ALTER TABLE `tblphukien` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblphukien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsize`
--

DROP TABLE IF EXISTS `tblsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsize`
--

LOCK TABLES `tblsize` WRITE;
/*!40000 ALTER TABLE `tblsize` DISABLE KEYS */;
INSERT INTO `tblsize` VALUES (1,36),(2,37),(3,38),(4,39),(5,40),(6,41),(7,42),(8,43);
/*!40000 ALTER TABLE `tblsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltrangthai`
--

DROP TABLE IF EXISTS `tbltrangthai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrangthai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idgiay` int(11) DEFAULT NULL,
  `giayMoi` int(11) DEFAULT 0,
  `giayBanChay` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `giay_trangthai_FK` (`idgiay`),
  CONSTRAINT `giay_trangthai_FK` FOREIGN KEY (`idgiay`) REFERENCES `tblgiay` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltrangthai`
--

LOCK TABLES `tbltrangthai` WRITE;
/*!40000 ALTER TABLE `tbltrangthai` DISABLE KEYS */;
INSERT INTO `tbltrangthai` VALUES (1,1,1,0),(2,2,1,1),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,0,1),(7,7,0,1),(8,8,0,1),(9,9,1,0),(10,15,1,0);
/*!40000 ALTER TABLE `tbltrangthai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmailId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactNo` char(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `City` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusers`
--

LOCK TABLES `tblusers` WRITE;
/*!40000 ALTER TABLE `tblusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shop_ping'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-18 14:01:24
