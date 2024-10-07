-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: simanut_db
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `diets`
--

DROP TABLE IF EXISTS `diets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diets` (
  `kode_diet` varchar(255) NOT NULL,
  `nama_diet` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_diet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diets`
--

LOCK TABLES `diets` WRITE;
/*!40000 ALTER TABLE `diets` DISABLE KEYS */;
INSERT INTO `diets` VALUES ('DM','Diabetes Melitus','2024-07-22 05:49:06','2024-07-22 05:49:06'),('N','Normal','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RG','Rendah Garam','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RL','Rendah Lemak','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RP','Rendah Protein','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RS','Rendah Serat','2024-07-22 05:49:06','2024-07-22 05:49:06'),('TETP','Tinggi Energi Tinggi Protein','2024-07-22 05:49:06','2024-07-22 05:49:06'),('TP','Tinggi Protein','2024-07-22 05:49:06','2024-07-22 05:49:06'),('TS','Tinggi Serat','2024-07-22 05:49:06','2024-07-22 05:49:06');
/*!40000 ALTER TABLE `diets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `kode_kelas` varchar(255) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES ('KL001','Kelas 1','2024-07-22 05:49:06','2024-07-22 05:49:06'),('KL002','Kelas 2','2024-07-22 05:49:06','2024-07-22 05:49:06'),('KL003','Kelas 3','2024-07-22 05:49:06','2024-07-22 05:49:06'),('KL004','HCU','2024-07-22 05:49:06','2024-07-22 05:49:06'),('KL005','Peristi','2024-07-22 05:49:06','2024-07-22 05:49:06'),('KL006','VK','2024-07-22 05:49:06','2024-07-22 05:49:06'),('KL007','Amarilis','2024-07-22 05:49:06','2024-07-22 05:49:06'),('KL008','Teratai','2024-07-22 05:49:06','2024-07-22 05:49:06');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_buahs`
--

DROP TABLE IF EXISTS `menu_buahs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_buahs` (
  `kode_buah` varchar(255) NOT NULL,
  `nama_buah` text DEFAULT NULL,
  `siklus` int(11) NOT NULL,
  `waktu_makan` enum('Pagi','Siang','Sore') NOT NULL,
  `kode_kelas` varchar(255) DEFAULT NULL,
  `kode_diet` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_buah`),
  KEY `menu_buahs_kode_kelas_foreign` (`kode_kelas`),
  KEY `menu_buahs_kode_diet_foreign` (`kode_diet`),
  CONSTRAINT `menu_buahs_kode_diet_foreign` FOREIGN KEY (`kode_diet`) REFERENCES `diets` (`kode_diet`),
  CONSTRAINT `menu_buahs_kode_kelas_foreign` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_buahs`
--

LOCK TABLES `menu_buahs` WRITE;
/*!40000 ALTER TABLE `menu_buahs` DISABLE KEYS */;
INSERT INTO `menu_buahs` VALUES ('MBSI001DM0','Pepaya',1,'Siang',NULL,'DM','2024-07-16 16:33:32','2024-07-16 16:33:32'),('MBSI001NK1','Apel',1,'Siang','KL001','N','2024-07-16 16:32:49','2024-07-16 16:32:49'),('MBSI001NK2','Pepaya',1,'Siang','KL002','N','2024-07-16 16:33:03','2024-07-16 16:33:03'),('MBSI001NK3','Pepaya',1,'Siang','KL003','N','2024-07-16 16:33:19','2024-07-16 16:33:19'),('MBSI001NK4','Pepaya',1,'Siang','KL004','N','2024-07-16 16:33:49','2024-07-16 16:33:49'),('MBSI002DM0','Jus Jambu',2,'Siang',NULL,'DM','2024-07-16 16:37:12','2024-07-16 16:37:12'),('MBSI002NK1','Jus Jambu',2,'Siang','KL001','N','2024-07-16 16:35:14','2024-07-16 16:35:14'),('MBSI002NK2','Jus Jambu',2,'Siang','KL002','N','2024-07-16 16:36:14','2024-07-16 16:36:14'),('MBSI002NK3','Jus Jambu',2,'Siang','KL003','N','2024-07-16 16:36:52','2024-07-16 16:36:52'),('MBSI002NK4','Jus Jambu',2,'Siang','KL004','N','2024-07-16 16:37:21','2024-07-16 16:37:21'),('MBSI003DM0','Jus Jeruk',3,'Siang',NULL,'DM','2024-07-16 16:39:25','2024-07-16 16:39:25'),('MBSI003NK1','Anggur',3,'Siang','KL001','N','2024-07-16 16:38:42','2024-07-16 16:38:42'),('MBSI003NK2','Jus Jeruk',3,'Siang','KL002','N','2024-07-16 16:39:01','2024-07-16 16:39:01'),('MBSI003NK3','Jus Jeruk',3,'Siang','KL003','N','2024-07-16 16:39:10','2024-07-16 16:39:10'),('MBSI003NK4','Jus Jeruk',3,'Siang','KL004','N','2024-07-16 16:39:36','2024-07-16 16:39:36'),('MBSI004DM0','Pisang Ambon',4,'Siang',NULL,'DM','2024-07-16 16:41:36','2024-07-16 16:41:36'),('MBSI004NK1','Pisang Ambon',4,'Siang','KL001','N','2024-07-16 16:41:07','2024-07-16 16:41:07'),('MBSI004NK2','Pisang Ambon',4,'Siang','KL002','N','2024-07-16 16:41:14','2024-07-16 16:41:14'),('MBSI004NK3','Pisang Ambon',4,'Siang','KL003','N','2024-07-16 16:41:23','2024-07-16 16:41:23'),('MBSI004NK4','Pisang Ambon',4,'Siang','KL004','N','2024-07-16 16:41:46','2024-07-16 16:41:46'),('MBSI005DM0','Pepaya',5,'Siang',NULL,'DM','2024-07-16 16:44:55','2024-07-16 16:44:55'),('MBSI005NK1','Pepaya',5,'Siang','KL001','N','2024-07-16 16:44:16','2024-07-16 16:44:16'),('MBSI005NK2','Pepaya',5,'Siang','KL002','N','2024-07-16 16:44:30','2024-07-16 16:44:30'),('MBSI005NK3','Pepaya',5,'Siang','KL003','N','2024-07-16 16:44:39','2024-07-16 16:44:39'),('MBSI005NK4','Pepaya',5,'Siang','KL004','N','2024-07-16 16:45:02','2024-07-16 16:45:02'),('MBSI006DM0','Melon',6,'Siang',NULL,'DM','2024-07-16 16:46:26','2024-07-16 16:46:26'),('MBSI006NK1','Melon',6,'Siang','KL001','N','2024-07-16 16:46:07','2024-07-16 16:46:07'),('MBSI006NK2','Melon',6,'Siang','KL002','N','2024-07-16 16:46:14','2024-07-16 16:46:14'),('MBSI006NK3','Melon',6,'Siang','KL003','N','2024-07-16 16:46:20','2024-07-16 16:46:20'),('MBSI006NK4','Jus Melon',6,'Siang','KL004','N','2024-07-16 16:46:37','2024-07-16 16:46:37'),('MBSI007DM0','Pepaya',7,'Siang',NULL,'DM','2024-07-16 16:48:36','2024-07-16 16:48:36'),('MBSI007NK1','Semangka',7,'Siang','KL001','N','2024-07-16 16:48:09','2024-07-16 16:48:09'),('MBSI007NK2','Semangka',7,'Siang','KL002','N','2024-07-16 16:48:15','2024-07-16 16:48:15'),('MBSI007NK3','Semangka',7,'Siang','KL003','N','2024-07-16 16:48:21','2024-07-16 16:48:21'),('MBSI007NK4','Pepaya',7,'Siang','KL004','N','2024-07-16 16:48:42','2024-07-16 16:48:42'),('MBSI008DM0','Jus Jambu',8,'Siang',NULL,'DM','2024-07-16 16:50:52','2024-07-16 16:50:52'),('MBSI008NK1','Jus Jambu',8,'Siang','KL001','N','2024-07-16 16:50:29','2024-07-16 16:50:29'),('MBSI008NK2','Jus Jambu',8,'Siang','KL002','N','2024-07-16 16:50:36','2024-07-16 16:50:36'),('MBSI008NK3','Jus Jambu',8,'Siang','KL003','N','2024-07-16 16:50:41','2024-07-16 16:50:41'),('MBSI008NK4','Jus Jambu',8,'Siang','KL004','N','2024-07-16 16:51:00','2024-07-16 16:51:00'),('MBSI009DM0','Jeruk',9,'Siang',NULL,'DM','2024-07-16 16:52:32','2024-07-16 16:52:32'),('MBSI009NK1','Apel',9,'Siang','KL001','N','2024-07-16 16:51:58','2024-07-16 16:51:58'),('MBSI009NK2','Jeruk',9,'Siang','KL002','N','2024-07-16 16:52:12','2024-07-16 16:52:12'),('MBSI009NK3','Jeruk',9,'Siang','KL003','N','2024-07-16 16:52:18','2024-07-16 16:52:18'),('MBSI009NK4','Jus Jeruk',9,'Siang','KL004','N','2024-07-16 16:52:49','2024-07-16 16:52:49'),('MBSI010DM0','Pisang Ambon',10,'Siang',NULL,'DM','2024-07-16 16:55:14','2024-07-16 16:55:14'),('MBSI010NK1','Pisang Ambon',10,'Siang','KL001','N','2024-07-16 16:54:40','2024-07-16 16:54:40'),('MBSI010NK2','Pisang Ambon',10,'Siang','KL002','N','2024-07-16 16:54:51','2024-07-16 16:54:51'),('MBSI010NK3','Pisang Ambon',10,'Siang','KL003','N','2024-07-16 16:54:58','2024-07-16 16:54:58'),('MBSI010NK4','Pisang Ambon',10,'Siang','KL004','N','2024-07-16 16:55:24','2024-07-16 16:55:24'),('MBSI011DM0','Melon',11,'Siang',NULL,'DM','2024-07-16 16:57:29','2024-07-16 16:57:29'),('MBSI011NK1','Melon',11,'Siang','KL001','N','2024-07-16 16:57:01','2024-07-16 16:57:01'),('MBSI011NK2','Melon',11,'Siang','KL002','N','2024-07-16 16:57:07','2024-07-16 16:57:07'),('MBSI011NK3','Melon',11,'Siang','KL003','N','2024-07-16 16:57:14','2024-07-16 16:57:14'),('MBSI011NK4','Jus Melon',11,'Siang','KL004','N','2024-07-16 16:57:45','2024-07-16 16:57:45'),('MBSO001DMK1','Jus Melon',1,'Sore','KL001','DM','2024-07-16 16:36:41','2024-07-16 16:36:41'),('MBSO001NK1','Jus Melon',1,'Sore','KL001','N','2024-07-16 16:34:17','2024-07-16 16:34:17'),('MBSO001NK4','Jus Melon',1,'Sore','KL004','N','2024-07-16 16:34:56','2024-07-16 16:34:56'),('MBSO002DMK1','Pisang Putri',2,'Sore','KL001','DM','2024-07-16 16:38:11','2024-07-16 16:38:11'),('MBSO002NK1','Pisang Putri',2,'Sore','KL001','N','2024-07-16 16:37:43','2024-07-16 16:37:43'),('MBSO002NK4','Pisang Putri',2,'Sore','KL004','N','2024-07-16 16:38:26','2024-07-16 16:38:26'),('MBSO003DMK1','Pepaya',3,'Sore','KL001','DM','2024-07-16 16:40:24','2024-07-16 16:40:24'),('MBSO003NK1','Pepaya',3,'Sore','KL001','N','2024-07-16 16:39:56','2024-07-16 16:39:56'),('MBSO003NK4','Pepaya',3,'Sore','KL004','N','2024-07-16 16:40:33','2024-07-16 16:40:33'),('MBSO004DMK1','Melon',4,'Sore','KL001','DM','2024-07-16 16:43:35','2024-07-16 16:43:35'),('MBSO004NK1','Melon',4,'Sore','KL001','N','2024-07-16 16:42:30','2024-07-16 16:42:30'),('MBSO004NK4','Jus Melon',4,'Sore','KL004','N','2024-07-16 16:43:50','2024-07-16 16:43:50'),('MBSO005DMK1','Jus Jambu',5,'Sore','KL001','DM','2024-07-16 16:45:29','2024-07-16 16:45:29'),('MBSO005NK1','Jus Jambu',5,'Sore','KL001','N','2024-07-16 16:45:18','2024-07-16 16:45:18'),('MBSO005NK4','Jus Jambu',5,'Sore','KL004','N','2024-07-16 16:45:38','2024-07-16 16:45:38'),('MBSO006DMK1','Apel',6,'Sore','KL001','DM','2024-07-16 16:47:16','2024-07-16 16:47:16'),('MBSO006NK1','Apel',6,'Sore','KL001','N','2024-07-16 16:47:04','2024-07-16 16:47:04'),('MBSO006NK4','Jus Jeruk',6,'Sore','KL004','N','2024-07-16 16:47:26','2024-07-16 16:47:26'),('MBSO007DMK1','Pisang Putri',7,'Sore','KL001','DM','2024-07-16 16:49:23','2024-07-16 16:49:23'),('MBSO007NK1','Pisang Putri',7,'Sore','KL001','N','2024-07-16 16:49:16','2024-07-16 16:49:16'),('MBSO007NK4','Pisang Putri',7,'Sore','KL004','N','2024-07-16 16:49:29','2024-07-16 16:49:29'),('MBSO008DMK1','Melon',8,'Sore','KL001','DM','2024-07-16 16:51:27','2024-07-16 16:51:27'),('MBSO008NK1','Melon',8,'Sore','KL001','N','2024-07-16 16:51:17','2024-07-16 16:51:17'),('MBSO008NK4','Jus Melon',8,'Sore','KL004','N','2024-07-16 16:51:40','2024-07-16 16:51:40'),('MBSO009DMK1','Pepaya',9,'Sore','KL001','DM','2024-07-16 16:53:58','2024-07-16 16:53:58'),('MBSO009NK1','Pepaya',9,'Sore','KL001','N','2024-07-16 16:53:48','2024-07-16 16:53:48'),('MBSO009NK4','Pepaya',9,'Sore','KL004','N','2024-07-16 16:54:04','2024-07-16 16:54:04'),('MBSO010DMK1','Pir',10,'Sore','KL001','DM','2024-07-16 16:55:56','2024-07-16 16:55:56'),('MBSO010NK1','Pir',10,'Sore','KL001','N','2024-07-16 16:55:45','2024-07-16 16:55:45'),('MBSO010NK4','Jus Jambu',10,'Sore','KL004','N','2024-07-16 16:56:07','2024-07-16 16:56:07'),('MBSO011DMK1','Jeruk',11,'Sore','KL001','DM','2024-07-16 16:58:16','2024-07-16 16:58:16'),('MBSO011NK1','Jeruk',11,'Sore','KL001','N','2024-07-16 16:58:07','2024-07-16 16:58:07'),('MBSO011NK4','Jus Jeruk',11,'Sore','KL004','N','2024-07-16 16:58:27','2024-07-16 16:58:27');
/*!40000 ALTER TABLE `menu_buahs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_snacks`
--

DROP TABLE IF EXISTS `menu_snacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_snacks` (
  `kode_snack` varchar(255) NOT NULL,
  `nama_snack` text DEFAULT NULL,
  `siklus` int(11) NOT NULL,
  `waktu_makan` enum('Pagi','Siang','Sore') NOT NULL,
  `kode_kelas` varchar(255) DEFAULT NULL,
  `kode_diet` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_snack`),
  KEY `menu_snacks_kode_kelas_foreign` (`kode_kelas`),
  KEY `menu_snacks_kode_diet_foreign` (`kode_diet`),
  CONSTRAINT `menu_snacks_kode_diet_foreign` FOREIGN KEY (`kode_diet`) REFERENCES `diets` (`kode_diet`),
  CONSTRAINT `menu_snacks_kode_kelas_foreign` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_snacks`
--

LOCK TABLES `menu_snacks` WRITE;
/*!40000 ALTER TABLE `menu_snacks` DISABLE KEYS */;
INSERT INTO `menu_snacks` VALUES ('MSPG001DM0','Tahu Fantasi',1,'Pagi',NULL,'DM','2024-07-16 15:56:34','2024-07-16 15:56:34'),('MSPG001N0','Biskuit',1,'Pagi',NULL,'N','2024-07-16 15:57:08','2024-07-17 22:15:06'),('MSPG001NK1','Tahu Fantasi',1,'Pagi','KL001','N','2024-07-16 15:53:41','2024-07-16 15:53:41'),('MSPG001NK2','Tahu Fantasi',1,'Pagi','KL002','N','2024-07-16 15:55:16','2024-07-16 15:55:16'),('MSPG001NK3','Tahu Fantasi',1,'Pagi','KL003','N','2024-07-16 15:55:24','2024-07-16 15:55:42'),('MSPG002DM0','Biskuit',2,'Pagi',NULL,'DM','2024-07-16 15:59:44','2024-07-16 15:59:44'),('MSPG002N0','Bolu Gulung',2,'Pagi',NULL,'N','2024-07-16 15:59:58','2024-07-16 15:59:58'),('MSPG002NK1','Bolu Gulung',2,'Pagi','KL001','N','2024-07-16 15:58:59','2024-07-16 15:58:59'),('MSPG002NK2','Bolu Gulung',2,'Pagi','KL002','N','2024-07-16 15:59:11','2024-07-16 15:59:11'),('MSPG002NK3','Bolu Gulung',2,'Pagi','KL003','N','2024-07-16 15:59:28','2024-07-16 15:59:28'),('MSPG003DM0','Kroket Ayam',3,'Pagi',NULL,'DM','2024-07-16 16:03:55','2024-07-16 16:03:55'),('MSPG003N0','Kroket Ayam',3,'Pagi',NULL,'N','2024-07-16 16:04:08','2024-07-16 16:04:08'),('MSPG003NK1','Kroket Ayam',3,'Pagi','KL001','N','2024-07-16 16:03:10','2024-07-16 16:03:10'),('MSPG003NK2','Kroket Ayam',3,'Pagi','KL002','N','2024-07-16 16:03:25','2024-07-16 16:03:25'),('MSPG003NK3','Kroket Ayam',3,'Pagi','KL003','N','2024-07-16 16:03:40','2024-07-16 16:03:40'),('MSPG004DM0','Nagasari',4,'Pagi',NULL,'DM','2024-07-16 16:06:19','2024-07-16 16:06:19'),('MSPG004N0','Nagasari',4,'Pagi',NULL,'N','2024-07-16 16:06:25','2024-07-16 16:06:25'),('MSPG004NK1','Nagasari',4,'Pagi','KL001','N','2024-07-16 16:05:36','2024-07-16 16:05:36'),('MSPG004NK2','Nagasari',4,'Pagi','KL002','N','2024-07-16 16:05:56','2024-07-16 16:05:56'),('MSPG004NK3','Nagasari',4,'Pagi','KL003','N','2024-07-16 16:06:10','2024-07-16 16:06:10'),('MSPG005DM0','Biskuit',5,'Pagi',NULL,'DM','2024-07-16 16:08:49','2024-07-16 16:08:49'),('MSPG005N0','Pukis',5,'Pagi',NULL,'N','2024-07-16 16:09:02','2024-07-16 16:09:02'),('MSPG005NK1','Pukis',5,'Pagi','KL001','N','2024-07-16 16:08:13','2024-07-16 16:08:13'),('MSPG005NK2','Pukis',5,'Pagi','KL002','N','2024-07-16 16:08:21','2024-07-16 16:08:21'),('MSPG005NK3','Pukis',5,'Pagi','KL003','N','2024-07-16 16:08:35','2024-07-16 16:08:35'),('MSPG006DM0','Biskuit',6,'Pagi',NULL,'DM','2024-07-16 16:12:56','2024-07-16 16:12:56'),('MSPG006N0','Bolu Kukus',6,'Pagi',NULL,'N','2024-07-16 16:12:15','2024-07-16 16:12:15'),('MSPG006NK1','Bolu Kukus',6,'Pagi','KL001','N','2024-07-16 16:11:34','2024-07-16 16:11:34'),('MSPG006NK2','Bolu Kukus',6,'Pagi','KL002','N','2024-07-16 16:11:41','2024-07-16 16:11:41'),('MSPG006NK3','Bolu Kukus',6,'Pagi','KL003','N','2024-07-16 16:11:50','2024-07-16 16:11:50'),('MSPG007DM0','Gabin Rogut',7,'Pagi',NULL,'DM','2024-07-16 16:16:01','2024-07-16 16:16:01'),('MSPG007N0','Biskuit',7,'Pagi',NULL,'N','2024-07-16 16:16:31','2024-07-16 16:16:31'),('MSPG007NK1','Gabin Rogut',7,'Pagi','KL001','N','2024-07-16 16:14:52','2024-07-16 16:14:52'),('MSPG007NK2','Gabin Rogut',7,'Pagi','KL002','N','2024-07-16 16:15:04','2024-07-16 16:15:25'),('MSPG007NK3','Gabin Rogut',7,'Pagi','KL003','N','2024-07-16 16:15:45','2024-07-16 16:15:45'),('MSPG008DM0','Tahu Fantasi',8,'Pagi',NULL,'DM','2024-07-16 16:23:50','2024-07-16 16:23:50'),('MSPG008N0','Biskuit',8,'Pagi',NULL,'N','2024-07-16 16:24:01','2024-07-16 16:24:01'),('MSPG008NK1','Tahu Fantasi',8,'Pagi','KL001','N','2024-07-16 16:23:12','2024-07-16 16:23:12'),('MSPG008NK2','Tahu Fantasi',8,'Pagi','KL002','N','2024-07-16 16:23:22','2024-07-16 16:23:22'),('MSPG008NK3','Tahu Fantasi',8,'Pagi','KL003','N','2024-07-16 16:23:31','2024-07-16 16:23:31'),('MSPG009DM0','Biskuit',9,'Pagi',NULL,'DM','2024-07-16 16:26:31','2024-07-16 16:26:31'),('MSPG009N0','Kue Sus',9,'Pagi',NULL,'N','2024-07-16 16:26:40','2024-07-16 16:26:40'),('MSPG009NK1','Kue Sus',9,'Pagi','KL001','N','2024-07-16 16:26:01','2024-07-16 16:26:01'),('MSPG009NK2','Kue Sus',9,'Pagi','KL002','N','2024-07-16 16:26:08','2024-07-16 16:26:08'),('MSPG009NK3','Kue Sus',9,'Pagi','KL003','N','2024-07-16 16:26:18','2024-07-16 16:26:18'),('MSPG010DM0','Pastel',10,'Pagi',NULL,'DM','2024-07-16 16:28:26','2024-07-16 16:28:26'),('MSPG010N0','Biskuit',10,'Pagi',NULL,'N','2024-07-16 16:28:36','2024-07-16 16:28:36'),('MSPG010NK1','Pastel',10,'Pagi','KL001','N','2024-07-16 16:28:03','2024-07-16 16:28:03'),('MSPG010NK2','Pastel',10,'Pagi','KL002','N','2024-07-16 16:28:10','2024-07-16 16:28:10'),('MSPG010NK3','Pastel',10,'Pagi','KL003','N','2024-07-16 16:28:17','2024-07-16 16:28:17'),('MSPG011DM0','Biskuit',11,'Pagi',NULL,'DM','2024-07-16 16:30:24','2024-07-16 16:30:24'),('MSPG011N0','Jentik Manis',11,'Pagi',NULL,'N','2024-07-16 16:30:30','2024-07-16 16:30:30'),('MSPG011NK1','Jentik Manis',11,'Pagi','KL001','N','2024-07-16 16:30:01','2024-07-16 16:30:01'),('MSPG011NK2','Jentik Manis',11,'Pagi','KL002','N','2024-07-16 16:30:07','2024-07-16 16:30:07'),('MSPG011NK3','Jentik Manis',11,'Pagi','KL003','N','2024-07-16 16:30:13','2024-07-16 16:30:13'),('MSSI001DM0','Kacang Hijau',1,'Siang',NULL,'DM','2024-07-16 15:58:19','2024-07-16 15:58:19'),('MSSI001N0','Labu Kuning Kukus',1,'Siang',NULL,'N','2024-07-16 15:58:35','2024-07-16 15:58:35'),('MSSI001NK1','Kacang Hijau',1,'Siang','KL001','N','2024-07-16 15:57:29','2024-07-16 15:57:29'),('MSSI001NK2','Kacang Hijau',1,'Siang','KL002','N','2024-07-16 15:57:48','2024-07-16 15:57:48'),('MSSI001NK3','Kacang Hijau',1,'Siang','KL003','N','2024-07-16 15:58:05','2024-07-16 15:58:05'),('MSSI002DM0','Pisang Rebus',2,'Siang',NULL,'DM','2024-07-16 16:02:16','2024-07-16 16:02:16'),('MSSI002N0','Dadar Piscok',2,'Siang',NULL,'N','2024-07-16 16:02:38','2024-07-16 16:02:38'),('MSSI002NK1','Dadar Piscok',2,'Siang','KL001','N','2024-07-16 16:00:25','2024-07-16 16:00:25'),('MSSI002NK2','Dadar Piscok',2,'Siang','KL002','N','2024-07-16 16:01:44','2024-07-16 16:01:44'),('MSSI002NK3','Dadar Piscok',2,'Siang','KL003','N','2024-07-16 16:02:01','2024-07-16 16:02:01'),('MSSI003DM0','Sawut',3,'Siang',NULL,'DM','2024-07-16 16:05:00','2024-07-16 16:05:00'),('MSSI003N0','Sawut',3,'Siang',NULL,'N','2024-07-16 16:05:07','2024-07-16 16:05:07'),('MSSI003NK1','Sawut',3,'Siang','KL001','N','2024-07-16 16:04:32','2024-07-16 16:04:32'),('MSSI003NK2','Sawut',3,'Siang','KL002','N','2024-07-16 16:04:41','2024-07-16 16:04:41'),('MSSI003NK3','Sawut',3,'Siang','KL003','N','2024-07-16 16:04:49','2024-07-16 16:04:49'),('MSSI004DM0','Sosis Solo',4,'Siang',NULL,'DM','2024-07-16 16:07:45','2024-07-16 16:07:45'),('MSSI004N0','Sosis Solo',4,'Siang',NULL,'N','2024-07-16 16:07:51','2024-07-16 16:07:51'),('MSSI004NK1','Sosis Solo',4,'Siang','KL001','N','2024-07-16 16:07:12','2024-07-16 16:07:12'),('MSSI004NK2','Sosis Solo',4,'Siang','KL002','N','2024-07-16 16:07:29','2024-07-16 16:07:29'),('MSSI004NK3','Sosis Solo',4,'Siang','KL003','N','2024-07-16 16:07:38','2024-07-16 16:07:38'),('MSSI005DM0','Jagung Rebus',5,'Siang',NULL,'DM','2024-07-16 16:10:16','2024-07-16 16:10:47'),('MSSI005N0','Pudding Jagung Manis',5,'Siang',NULL,'N','2024-07-16 16:11:00','2024-07-16 16:11:00'),('MSSI005NK1','Pudding Jagung Manis',5,'Siang','KL001','N','2024-07-16 16:09:44','2024-07-16 16:09:44'),('MSSI005NK2','Pudding Jagung Manis',5,'Siang','KL002','N','2024-07-16 16:09:52','2024-07-16 16:09:52'),('MSSI005NK3','Pudding Jagung Manis',5,'Siang','KL003','N','2024-07-16 16:10:02','2024-07-16 16:10:02'),('MSSI006DM0','Kroket Ayam',6,'Siang',NULL,'DM','2024-07-16 16:13:53','2024-07-16 16:13:53'),('MSSI006N0','Kroket Ayam',6,'Siang',NULL,'N','2024-07-16 16:13:58','2024-07-16 16:13:58'),('MSSI006NK1','Kroket Ayam',6,'Siang','KL001','N','2024-07-16 16:13:27','2024-07-16 16:13:27'),('MSSI006NK2','Kroket Ayam',6,'Siang','KL002','N','2024-07-16 16:13:34','2024-07-16 16:13:34'),('MSSI006NK3','Kroket Ayam',6,'Siang','KL003','N','2024-07-16 16:13:41','2024-07-16 16:13:41'),('MSSI007DM0','Kacang Hijau',7,'Siang',NULL,'DM','2024-07-16 16:17:42','2024-07-16 16:17:42'),('MSSI007N0','Labu Kuning Kukus',7,'Siang',NULL,'N','2024-07-16 16:17:53','2024-07-16 16:17:53'),('MSSI007NK1','Kacang Hijau',7,'Siang','KL001','N','2024-07-16 16:17:18','2024-07-16 16:17:18'),('MSSI007NK2','Kacang Hijau',7,'Siang','KL002','N','2024-07-16 16:17:27','2024-07-16 16:17:27'),('MSSI007NK3','Kacang Hijau',7,'Siang','KL003','N','2024-07-16 16:17:34','2024-07-16 16:17:34'),('MSSI008DM0','Puding Labu Kuning',8,'Siang',NULL,'DM','2024-07-16 16:25:14','2024-07-16 16:25:14'),('MSSI008N0','Puding Labu Kuning',8,'Siang',NULL,'N','2024-07-16 16:25:25','2024-07-16 16:25:25'),('MSSI008NK1','Puding Labu Kuning',8,'Siang','KL001','N','2024-07-16 16:24:47','2024-07-16 16:24:47'),('MSSI008NK2','Puding Labu Kuning',8,'Siang','KL002','N','2024-07-16 16:24:57','2024-07-16 16:24:57'),('MSSI008NK3','Puding Labu Kuning',8,'Siang','KL003','N','2024-07-16 16:25:06','2024-07-16 16:25:06'),('MSSI009DM0','Tahu Bakso',9,'Siang',NULL,'DM','2024-07-16 16:27:30','2024-07-16 16:27:30'),('MSSI009N0','Tahu Bakso',9,'Siang',NULL,'N','2024-07-16 16:27:37','2024-07-16 16:27:37'),('MSSI009NK1','Tahu Bakso',9,'Siang','KL001','N','2024-07-16 16:27:05','2024-07-16 16:27:05'),('MSSI009NK2','Tahu Bakso',9,'Siang','KL002','N','2024-07-16 16:27:12','2024-07-16 16:27:12'),('MSSI009NK3','Tahu Bakso',9,'Siang','KL003','N','2024-07-16 16:27:19','2024-07-16 16:27:19'),('MSSI010DM0','Kue Lumpur',10,'Siang',NULL,'DM','2024-07-16 16:29:28','2024-07-16 16:29:28'),('MSSI010N0','Kue Lumpur',10,'Siang',NULL,'N','2024-07-16 16:29:33','2024-07-16 16:29:33'),('MSSI010NK1','Kue Lumpur',10,'Siang','KL001','N','2024-07-16 16:29:05','2024-07-16 16:29:05'),('MSSI010NK2','Kue Lumpur',10,'Siang','KL002','N','2024-07-16 16:29:12','2024-07-16 16:29:12'),('MSSI010NK3','Kue Lumpur',10,'Siang','KL003','N','2024-07-16 16:29:20','2024-07-16 16:29:20'),('MSSI011DM0','Kroket Ayam',11,'Siang',NULL,'DM','2024-07-16 16:31:30','2024-07-16 16:31:30'),('MSSI011N0','Kroket Ayam',11,'Siang',NULL,'N','2024-07-16 16:31:34','2024-07-16 16:31:34'),('MSSI011NK1','Kroket Ayam',11,'Siang','KL001','N','2024-07-16 16:31:08','2024-07-16 16:31:08'),('MSSI011NK2','Kroket Ayam',11,'Siang','KL002','N','2024-07-16 16:31:15','2024-07-16 16:31:15'),('MSSI011NK3','Kroket Ayam',11,'Siang','KL003','N','2024-07-16 16:31:22','2024-07-16 16:31:22');
/*!40000 ALTER TABLE `menu_snacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_utamas`
--

DROP TABLE IF EXISTS `menu_utamas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_utamas` (
  `kode_makananutama` varchar(255) NOT NULL,
  `menu_makanan` text DEFAULT NULL,
  `siklus` int(11) NOT NULL,
  `waktu_makan` enum('Pagi','Siang','Sore') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_makananutama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_utamas`
--

LOCK TABLES `menu_utamas` WRITE;
/*!40000 ALTER TABLE `menu_utamas` DISABLE KEYS */;
INSERT INTO `menu_utamas` VALUES ('KMUPG001','Nasi/Bubur\r\nSoto Daging (daging diiris tipis, kol, tauge)\r\nTempe goreng /Tempe bb kuning (RL)',1,'Pagi','2024-07-16 17:10:28','2024-07-18 01:26:14'),('KMUPG002','Nasi/Bubur\r\nTongseng Ayam (di potong dadu, tanpa kulit, tdk santan, tdk cabai)\r\nTerik tempe\r\nTumis tauge + wortel',2,'Pagi','2024-07-16 17:15:27','2024-07-16 17:15:27'),('KMUPG003','Nasi/Bubur\r\nTelur mata sapi / telur bb kuning (RL)\r\nTumis tempe bawang bombay\r\nCa brokoli + wortel',3,'Pagi','2024-07-16 17:20:07','2024-07-16 17:20:07'),('KMUPG004','Nasi/Bubur\r\nAyam goreng lamat-lamat\r\nTempe mendoan /  bb kuning (RL)\r\nSoto (tauge, kol, daun bawang, sledri untuk taburan)',4,'Pagi','2024-07-16 17:23:16','2024-07-16 17:23:16'),('KMUPG005','Nasi/Bubur\r\nLele goreng / lele bb kuning (RL)\r\nTempe orek / tempe goreng (DM)\r\nSayur asem (labu siam, terong, kc.panjang, daun so)',5,'Pagi','2024-07-16 17:28:42','2024-07-16 17:28:42'),('KMUPG006','Nasi/Bubur\r\nRolade ayam goreng / kukus (RL)\r\nTahu bacem /  tumis tahu daun bawang (DM)\r\nSup sayur (kembang  kol, wortel, daun bawang, kol, macaroni spiral)',6,'Pagi','2024-07-16 17:32:30','2024-07-16 17:32:30'),('KMUPG007','Nasi/Bubur\r\nBandeng goreng / bandeng bb kuning (RL)\r\nOseng tahu daun bawang\r\nTumis labu siam + wortel (iris memanjang)',7,'Pagi','2024-07-16 17:34:58','2024-07-16 17:34:58'),('KMUPG008','Nasi/Bubur\r\nLele goreng / lele bb kuning (RL)\r\nTempe bacem / oseng tempe daun bawang (DM)\r\nSayur bayam + labu siam',8,'Pagi','2024-07-16 17:39:26','2024-07-16 17:39:26'),('KMUPG009','Nasi/Bubur\r\nEgg roll ayam goreng / kukus (RL)\r\nSup tahu\r\nCap cay sayur (wortel, kembang kol, pokcoy, kocokan telur) baru',9,'Pagi','2024-07-16 17:43:42','2024-07-18 12:01:59'),('KMUPG010','Nasi/Bubur\r\nFuyunghai / terik telur (RL)\r\nTerik tempe\r\nOrak-arik kembang kol (halus), jagung wortel, daun bawang',10,'Pagi','2024-07-16 17:47:52','2024-07-16 17:47:52'),('KMUPG011','Nasi/Bubur\r\nNugget ayam goreng\r\nTempe goreng / bb kuning (RL)\r\nSup oyong (oyong, wortel, so\'on)',11,'Pagi','2024-07-16 17:51:16','2024-07-16 17:51:16'),('KMUSI001','Nasi/Bubur\r\nEggroll ayam goreng / Kukus (RL)\r\nTahu krispy / Oseng tahu daun bawang (RL)\r\nSup jagung (jagung, wortel, telur, daun bawang)',1,'Siang','2024-07-16 17:12:15','2024-07-16 17:12:15'),('KMUSI002','Nasi/Bubur\r\nLele Goreng / Lele panggang (RL)\r\nTempe mendoan / Oseng tempe daun bawang (RL)\r\nSayur asem (labu siam, terong, kc.panjang, daun so)',2,'Siang','2024-07-16 17:17:03','2024-07-16 17:17:03'),('KMUSI003','Nasi/Bubur\r\nAsem-asem daging buncis wortel tomat\r\nTahu fantasi goreng / kukus (RL)',3,'Siang','2024-07-16 17:21:03','2024-07-16 17:21:03'),('KMUSI004','Nasi/Bubur\r\nFuyunghai / Terik telur (RL)\r\nPerkedel tahu goreng / kukus (RL)\r\nCap cay sayur (wortel, kembang, kol, pokcoy, kocokan telur',4,'Siang','2024-07-16 17:24:47','2024-07-16 17:25:21'),('KMUSI005','Nasi/Bubur\r\nSwike ayam\r\nTempe mendoan / bb kuning (RL)\r\nTumis buncis + wortel',5,'Siang','2024-07-16 17:29:40','2024-07-16 17:29:40'),('KMUSI006','Nasi/Bubur\r\nAsem-asem daging buncis wortel tomat\r\nTahu kukus jamur kuping',6,'Siang','2024-07-16 17:33:02','2024-07-16 17:33:02'),('KMUSI007','Nasi/Bubur\r\nFuyunghai goreng / kukus (RL)\r\nTempe orek / Tempe goreng (DM)\r\nTuis tauge wortel',7,'Siang','2024-07-16 17:35:40','2024-07-16 17:35:40'),('KMUSI008','Nasi/Bubur\r\nAyam bacem / ayam tanpa kecap (DM)\r\nPerkedel tahu goreng / kukus (RL)\r\nSup jagung (jagung, wortel, telur, daun bawang)',8,'Siang','2024-07-16 17:41:13','2024-07-16 17:41:13'),('KMUSI009','Nasi/Bubur\r\nSup timlo telur puyuuh (wortel, jamur kuping, kripik kentang, so\'on)\r\nTahu krispy / oseng tahu daun bawang (RL)',9,'Siang','2024-07-16 17:45:11','2024-07-16 17:45:11'),('KMUSI010','Nasi/Bubur\r\nLele Goreng / lele panggang (RL)\r\nTahu bacem / tahu goreng (DM)\r\nSayur bayam + wortel',10,'Siang','2024-07-16 17:48:48','2024-07-16 17:49:18'),('KMUSI011','Nasi/Bubur\r\nBandeng presto goreng / bb kuning (RL)\r\nTahu goreng / bb kuning (RL)\r\nSayur asem (labu siam, terong, kc.panjang, daun so)',11,'Siang','2024-07-16 17:52:51','2024-07-16 17:52:51'),('KMUSO001','Nasi/Bubur\r\nFuyunghai / kukus (RL)\r\nTempe orek / Tempe Goreng (DM)\r\nTumis brokoli + Jamur tiram',1,'Sore','2024-07-16 17:13:40','2024-07-16 17:13:40'),('KMUSO002','Nasi/Bubur\r\n Sup Timlo telur puyuh (wortel, jamur kuping, kripik kentang, so\'on)\r\nPerkedel Tahu goreng / kukus (RL)',2,'Sore','2024-07-16 17:18:36','2024-07-16 17:18:36'),('KMUSO003','Nasi/Bubur\r\nAyam bakar / Ayam panggang (DM)\r\nTahu goreng / sup tahu (RL)\r\nAcar kuning (timun, wortel, buncis)',3,'Sore','2024-07-16 17:21:55','2024-07-16 17:21:55'),('KMUSO004','Nasi/Bubur\r\nBandeng presto goreng / bandeng bb kuning (RL)\r\nTempe orek / oseng tempe daun bawang (DM)\r\nTumis Labu siam + wortel (iris memanjang)',4,'Sore','2024-07-16 17:26:58','2024-07-16 17:26:58'),('KMUSO005','Nasi/Bubur\r\nTelur puyuh bb kuning / Telur ayam bb kuning (RL)\r\nTahu krispy / oseng tahun daun bawang (RL)\r\nTumis brokoli + jamur kuping',5,'Sore','2024-07-16 17:30:53','2024-07-16 17:30:53'),('KMUSO006','Nasi/Bubur\r\nLele goreng / lele panggang (RL)\r\nTempe goreng / bb kuning (RL)\r\nSup oyong (oyong, wortel, so\'on)',6,'Sore','2024-07-16 17:34:05','2024-07-16 17:34:05'),('KMUSO007','Nasi/Bubur\r\nAyam katsu saus tomat / ayam panggang (RL)\r\nSup tahu\r\nBuncis + wortel + jagung rebus',7,'Sore','2024-07-16 17:36:45','2024-07-16 17:36:45'),('KMUSO008','Nasi/Bubur\r\nTelur mata sapi /  telur bb kuning (RL)\r\nTumis tempe bawang bombay\r\nOrak arik sayur (wortel, buncis iris tipis/putren, telur)',8,'Sore','2024-07-16 17:42:50','2024-07-16 17:42:50'),('KMUSO009','Nasi/Bubur\r\nRawon daging\r\nTempe mendoan / oseng tempe daun bawang (RL)\r\nAcar kuning (timun, wortel, buncis)',9,'Sore','2024-07-16 17:46:28','2024-07-16 17:46:28'),('KMUSO010','Nasi/Bubur\r\nAyam bakar / ayam panggang (DM)\r\nRolade tahu goreng telur / kukus (RL)\r\nSup wortel. jamur kuping, daun bawang',10,'Sore','2024-07-16 17:50:22','2024-07-16 17:50:22'),('KMUSO011','Nasi/Bubur\r\nSwieke Ayam \r\nTempe mendoan / bb kuning (RL)\r\nTumis tauge wortel',11,'Sore','2024-07-16 17:53:48','2024-07-16 17:53:48');
/*!40000 ALTER TABLE `menu_utamas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_04_02_175610_create_kelas_table',1),(6,'2024_04_03_151421_create_ruangs_table',1),(7,'2024_04_04_175850_create_pasiens_table',1),(8,'2024_05_13_164118_create_diets_table',1),(9,'2024_05_16_162205_create_pesanan_pagis_table',1),(10,'2024_05_16_162231_create_pesanan_siangs_table',1),(11,'2024_05_16_162237_create_pesanan_sores_table',1),(12,'2024_05_16_162310_create_menu_utamas_table',1),(13,'2024_05_16_162316_create_menu_snacks_table',1),(14,'2024_05_16_162323_create_menu_buahs_table',1),(15,'2024_05_16_162345_create_sisa_makan_pagis_table',1),(16,'2024_05_16_162350_create_sisa_makan_siangs_table',1),(17,'2024_05_16_162355_create_sisa_makan_sores_table',1),(18,'2024_05_16_162415_create_rekap_harian_sisa_makans_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasiens`
--

DROP TABLE IF EXISTS `pasiens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasiens` (
  `no_rm` varchar(255) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kode_ruang` varchar(255) NOT NULL,
  `datetime_masuk` datetime NOT NULL,
  `datetime_keluar` datetime DEFAULT NULL,
  `total_hari` int(11) DEFAULT NULL,
  `diet` text NOT NULL,
  `keterangan` text DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`no_rm`),
  KEY `pasiens_kode_ruang_foreign` (`kode_ruang`),
  CONSTRAINT `pasiens_kode_ruang_foreign` FOREIGN KEY (`kode_ruang`) REFERENCES `ruangs` (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasiens`
--

LOCK TABLES `pasiens` WRITE;
/*!40000 ALTER TABLE `pasiens` DISABLE KEYS */;
/*!40000 ALTER TABLE `pasiens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesanan_pagis`
--

DROP TABLE IF EXISTS `pesanan_pagis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesanan_pagis` (
  `kode_pesanan` varchar(255) NOT NULL,
  `no_rm` varchar(255) NOT NULL,
  `datetime_pesanan` datetime NOT NULL,
  `makanan_pokok` varchar(255) NOT NULL,
  `makanan_utama` varchar(255) DEFAULT NULL,
  `snack` varchar(255) DEFAULT NULL,
  `buah` varchar(255) DEFAULT NULL,
  `diet` text NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_pesanan`),
  KEY `pesanan_pagis_no_rm_foreign` (`no_rm`),
  CONSTRAINT `pesanan_pagis_no_rm_foreign` FOREIGN KEY (`no_rm`) REFERENCES `pasiens` (`no_rm`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesanan_pagis`
--

LOCK TABLES `pesanan_pagis` WRITE;
/*!40000 ALTER TABLE `pesanan_pagis` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesanan_pagis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesanan_siangs`
--

DROP TABLE IF EXISTS `pesanan_siangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesanan_siangs` (
  `kode_pesanan` varchar(255) NOT NULL,
  `no_rm` varchar(255) NOT NULL,
  `datetime_pesanan` datetime NOT NULL,
  `makanan_pokok` varchar(255) NOT NULL,
  `makanan_utama` varchar(255) DEFAULT NULL,
  `snack` varchar(255) DEFAULT NULL,
  `buah` varchar(255) DEFAULT NULL,
  `diet` text NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_pesanan`),
  KEY `pesanan_siangs_no_rm_foreign` (`no_rm`),
  CONSTRAINT `pesanan_siangs_no_rm_foreign` FOREIGN KEY (`no_rm`) REFERENCES `pasiens` (`no_rm`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesanan_siangs`
--

LOCK TABLES `pesanan_siangs` WRITE;
/*!40000 ALTER TABLE `pesanan_siangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesanan_siangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesanan_sores`
--

DROP TABLE IF EXISTS `pesanan_sores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesanan_sores` (
  `kode_pesanan` varchar(255) NOT NULL,
  `no_rm` varchar(255) NOT NULL,
  `datetime_pesanan` datetime NOT NULL,
  `makanan_pokok` varchar(255) NOT NULL,
  `makanan_utama` varchar(255) DEFAULT NULL,
  `snack` varchar(255) DEFAULT NULL,
  `buah` varchar(255) DEFAULT NULL,
  `diet` text NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_pesanan`),
  KEY `pesanan_sores_no_rm_foreign` (`no_rm`),
  CONSTRAINT `pesanan_sores_no_rm_foreign` FOREIGN KEY (`no_rm`) REFERENCES `pasiens` (`no_rm`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesanan_sores`
--

LOCK TABLES `pesanan_sores` WRITE;
/*!40000 ALTER TABLE `pesanan_sores` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesanan_sores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rekap_harian_sisa_makans`
--

DROP TABLE IF EXISTS `rekap_harian_sisa_makans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rekap_harian_sisa_makans` (
  `kode_rekap` varchar(255) NOT NULL,
  `no_rm` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_sisamakan_pagi` varchar(255) DEFAULT NULL,
  `kode_sisamakan_siang` varchar(255) DEFAULT NULL,
  `kode_sisamakan_sore` varchar(255) DEFAULT NULL,
  `jumlah_total` int(11) DEFAULT NULL,
  `rata_rata` decimal(8,2) DEFAULT NULL,
  `hasil` decimal(8,2) DEFAULT NULL,
  `presentase_sisa_makan` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_rekap`),
  KEY `rekap_harian_sisa_makans_kode_sisamakan_pagi_foreign` (`kode_sisamakan_pagi`),
  KEY `rekap_harian_sisa_makans_kode_sisamakan_siang_foreign` (`kode_sisamakan_siang`),
  KEY `rekap_harian_sisa_makans_kode_sisamakan_sore_foreign` (`kode_sisamakan_sore`),
  CONSTRAINT `rekap_harian_sisa_makans_kode_sisamakan_pagi_foreign` FOREIGN KEY (`kode_sisamakan_pagi`) REFERENCES `sisa_makan_pagis` (`kode_sisamakan`) ON DELETE CASCADE,
  CONSTRAINT `rekap_harian_sisa_makans_kode_sisamakan_siang_foreign` FOREIGN KEY (`kode_sisamakan_siang`) REFERENCES `sisa_makan_siangs` (`kode_sisamakan`) ON DELETE CASCADE,
  CONSTRAINT `rekap_harian_sisa_makans_kode_sisamakan_sore_foreign` FOREIGN KEY (`kode_sisamakan_sore`) REFERENCES `sisa_makan_sores` (`kode_sisamakan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekap_harian_sisa_makans`
--

LOCK TABLES `rekap_harian_sisa_makans` WRITE;
/*!40000 ALTER TABLE `rekap_harian_sisa_makans` DISABLE KEYS */;
/*!40000 ALTER TABLE `rekap_harian_sisa_makans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruangs`
--

DROP TABLE IF EXISTS `ruangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruangs` (
  `kode_ruang` varchar(255) NOT NULL,
  `nama_ruang` varchar(255) NOT NULL,
  `kode_kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_ruang`),
  KEY `ruangs_kode_kelas_foreign` (`kode_kelas`),
  CONSTRAINT `ruangs_kode_kelas_foreign` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruangs`
--

LOCK TABLES `ruangs` WRITE;
/*!40000 ALTER TABLE `ruangs` DISABLE KEYS */;
INSERT INTO `ruangs` VALUES ('RU001','Wijaya Kusuma','KL001','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RU002','Ruang Edelweis','KL002','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RU003','Ruang Alamanda','KL003','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RU004','Ruang HCU','KL004','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RU005','Ruang Peristi','KL005','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RU006','Ruang VK','KL006','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RU007','Ruang Amarilis','KL007','2024-07-22 05:49:06','2024-07-22 05:49:06'),('RU008','Ruang Teratai','KL008','2024-07-22 05:49:06','2024-07-22 05:49:06');
/*!40000 ALTER TABLE `ruangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisa_makan_pagis`
--

DROP TABLE IF EXISTS `sisa_makan_pagis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisa_makan_pagis` (
  `kode_sisamakan` varchar(255) NOT NULL,
  `kode_pesanan` varchar(255) NOT NULL,
  `datetime_rekap` date NOT NULL,
  `sisa_makananpokok` int(11) DEFAULT NULL,
  `sisa_lauknabati` int(11) DEFAULT NULL,
  `sisa_laukhewani` int(11) DEFAULT NULL,
  `sisa_sayur` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_sisamakan`),
  KEY `sisa_makan_pagis_kode_pesanan_foreign` (`kode_pesanan`),
  CONSTRAINT `sisa_makan_pagis_kode_pesanan_foreign` FOREIGN KEY (`kode_pesanan`) REFERENCES `pesanan_pagis` (`kode_pesanan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisa_makan_pagis`
--

LOCK TABLES `sisa_makan_pagis` WRITE;
/*!40000 ALTER TABLE `sisa_makan_pagis` DISABLE KEYS */;
/*!40000 ALTER TABLE `sisa_makan_pagis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisa_makan_siangs`
--

DROP TABLE IF EXISTS `sisa_makan_siangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisa_makan_siangs` (
  `kode_sisamakan` varchar(255) NOT NULL,
  `kode_pesanan` varchar(255) NOT NULL,
  `datetime_rekap` date NOT NULL,
  `sisa_makananpokok` int(11) DEFAULT NULL,
  `sisa_lauknabati` int(11) DEFAULT NULL,
  `sisa_laukhewani` int(11) DEFAULT NULL,
  `sisa_sayur` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_sisamakan`),
  KEY `sisa_makan_siangs_kode_pesanan_foreign` (`kode_pesanan`),
  CONSTRAINT `sisa_makan_siangs_kode_pesanan_foreign` FOREIGN KEY (`kode_pesanan`) REFERENCES `pesanan_siangs` (`kode_pesanan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisa_makan_siangs`
--

LOCK TABLES `sisa_makan_siangs` WRITE;
/*!40000 ALTER TABLE `sisa_makan_siangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sisa_makan_siangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisa_makan_sores`
--

DROP TABLE IF EXISTS `sisa_makan_sores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisa_makan_sores` (
  `kode_sisamakan` varchar(255) NOT NULL,
  `kode_pesanan` varchar(255) NOT NULL,
  `datetime_rekap` date NOT NULL,
  `sisa_makananpokok` int(11) DEFAULT NULL,
  `sisa_lauknabati` int(11) DEFAULT NULL,
  `sisa_laukhewani` int(11) DEFAULT NULL,
  `sisa_sayur` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_sisamakan`),
  KEY `sisa_makan_sores_kode_pesanan_foreign` (`kode_pesanan`),
  CONSTRAINT `sisa_makan_sores_kode_pesanan_foreign` FOREIGN KEY (`kode_pesanan`) REFERENCES `pesanan_sores` (`kode_pesanan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisa_makan_sores`
--

LOCK TABLES `sisa_makan_sores` WRITE;
/*!40000 ALTER TABLE `sisa_makan_sores` DISABLE KEYS */;
/*!40000 ALTER TABLE `sisa_makan_sores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('gizi','perawat','dapur') NOT NULL DEFAULT 'gizi',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'gizi_user','gizirsudkiagengselo@gmail.com',NULL,'$2y$12$aORHOkwbTJPG1Io79a1IXutz7usPVsm1yjikiACWdtHo2JI4Ew2SO','gizi',NULL,'2024-07-22 05:49:06','2024-07-22 05:49:06'),(2,'dapur_user','dapurrsudkiagengselo@gmail.com',NULL,'$2y$12$5KxD/rhKfrXkUj2bDy5bRezfW.ynzhgWbWR3LCaNDsQP/mmZaG4dK','dapur',NULL,'2024-07-22 05:49:06','2024-07-22 05:49:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'simanut_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22 20:42:01
