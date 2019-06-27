-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: reg
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (22,'2014_10_12_000000_create_users_table',1),(23,'2014_10_12_100000_create_password_resets_table',1),(24,'2016_06_01_000001_create_oauth_auth_codes_table',1),(25,'2016_06_01_000002_create_oauth_access_tokens_table',1),(26,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(27,'2016_06_01_000004_create_oauth_clients_table',1),(28,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(29,'2019_06_26_125805_create_todos_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('01711016a3412832e40d3d4161e1fd2512a52eea31e76052a0853f831fb2a425b3d3cde035aa39b7',8,2,NULL,'[\"*\"]',0,'2019-06-26 18:29:57','2019-06-26 18:29:57','2020-06-26 14:29:57'),('04a4b5febe353749be45b4f277dccc9703b658e2ae00fa4e7e7a8027be88b5b54f5ebc86393459ac',4,2,NULL,'[\"*\"]',0,'2019-06-26 23:14:43','2019-06-26 23:14:43','2020-06-26 19:14:43'),('20bd6d8ece94d10056bcd3870a7274dc722eed6626196e50e7dcd04801d29bba3743f281abfd8322',8,2,NULL,'[\"*\"]',0,'2019-06-26 18:10:28','2019-06-26 18:10:28','2020-06-26 14:10:28'),('240cf91d389051213ef5005925b480fcf42d4edec9691042578f899b977ce16ff84e1d698c12017b',4,2,NULL,'[\"*\"]',0,'2019-06-26 06:45:01','2019-06-26 06:45:01','2020-06-26 02:45:01'),('28e7182ba7d735d226aeea65be3e0c1c224c5b4c53dd707e836b8a1ad666350ea8969ca596a42241',8,2,NULL,'[\"*\"]',0,'2019-06-26 18:59:18','2019-06-26 18:59:18','2020-06-26 14:59:18'),('2cbb0ca3e2cb3a73f10c0490f6a49a5a74173564f8f6453d1d151bda15059daeb0c0452949b0663a',8,2,NULL,'[\"*\"]',0,'2019-06-26 21:56:44','2019-06-26 21:56:44','2020-06-26 17:56:44'),('2d19f47ff18f00d088ed06a6cd9e846d52f5b9c68ac8882b9b733582bb5a42050bf6d4467edb1ddb',2,2,NULL,'[\"*\"]',0,'2019-06-26 06:39:28','2019-06-26 06:39:28','2020-06-26 02:39:28'),('393451e0e9d70aa85403fbe7f3b200338c15c81c879a9d1d36d41dbc800f85401ceca3027ef6c2ed',8,2,NULL,'[\"*\"]',0,'2019-06-26 09:41:14','2019-06-26 09:41:14','2020-06-26 05:41:14'),('3a7517dd65aa67ba2ce2b8368c3bc0605730d0a2af7f4baa7800ab76c5265f6aa78efd881d5d4428',8,2,NULL,'[\"*\"]',0,'2019-06-26 23:00:50','2019-06-26 23:00:50','2020-06-26 19:00:50'),('43bb0f5413ea6e9324d450a33697668c135a242f0fc712c93e82947fa47f5708659c34cd04b6e163',4,2,NULL,'[\"*\"]',0,'2019-06-26 06:43:26','2019-06-26 06:43:26','2020-06-26 02:43:26'),('4458d24bedcb437a403b26c518252cf28bfc04095e4d52c72c3e23558d3fb788c02f0d91c2866266',8,2,NULL,'[\"*\"]',0,'2019-06-26 19:06:51','2019-06-26 19:06:51','2020-06-26 15:06:51'),('46564aa8c6c34f95f32979bf0a29a7380053fbf5b3947356fedfdf7b0401e816f654cfd21197a3b4',8,2,NULL,'[\"*\"]',0,'2019-06-26 09:51:15','2019-06-26 09:51:15','2020-06-26 05:51:15'),('49cfad9b0f4411e76bb889471b2c464aa0297a2d79190e30204dfef31abf55f5130f8d0fdf98b533',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:56:41','2019-06-26 22:56:41','2020-06-26 18:56:41'),('4d29f56f1a6fc1853fb43b4a319a1abf265840731478390cd72fd4273aa122f72f6b980de45b7100',8,2,NULL,'[\"*\"]',0,'2019-06-26 21:54:02','2019-06-26 21:54:02','2020-06-26 17:54:02'),('50f191d5ee48a8c5ebf816e77a014cd8aa308725ef6fbcdac7ebe5912f2d59a6def1b0f1e4acc016',2,2,NULL,'[\"*\"]',0,'2019-06-26 03:48:12','2019-06-26 03:48:12','2020-06-25 23:48:12'),('533534cf0aa4fa8ab6d1dc3d8d0c8c07c1b5711f55cc3fb1652dbdee78f28b7b44ea1b94d68c3c7d',8,2,NULL,'[\"*\"]',0,'2019-06-26 21:50:41','2019-06-26 21:50:41','2020-06-26 17:50:41'),('58bd7f3585348b98076ae6288423a92179784b679248c2833beeab40ca04c5413a39565eec90fb7d',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:56:20','2019-06-26 22:56:20','2020-06-26 18:56:20'),('5d6758a3ae62fb2fdb808f05c8e8c6c341e62adb0fe8164233ceabb11dde073afda289a3819a62ae',8,2,NULL,'[\"*\"]',0,'2019-06-26 19:04:14','2019-06-26 19:04:14','2020-06-26 15:04:14'),('60a87c6dbc0d92e894de2e1ed19afbac6c16ff077b33bd76d68a31e100197ae7ce3fc98e3a125280',4,2,NULL,'[\"*\"]',0,'2019-06-26 23:12:44','2019-06-26 23:12:44','2020-06-26 19:12:44'),('61860293aa4e853ce1e9218e20d3aaefa3fe38d016346beb40f09a0815f54c8a3682635d971277fd',8,2,NULL,'[\"*\"]',0,'2019-06-26 21:23:33','2019-06-26 21:23:33','2020-06-26 17:23:33'),('6515c803e61abe35b39a3fa4245a0c4bbf49dcaaf2785f687d05be516149282bf3064ba4a36f3c5a',8,2,NULL,'[\"*\"]',0,'2019-06-26 21:13:37','2019-06-26 21:13:37','2020-06-26 17:13:37'),('697e0aa8b5d2b64eb4340ec9bcc0bb5214b3019ca3429ccf2668149c345c25f15718868b2ba4a317',4,2,NULL,'[\"*\"]',0,'2019-06-26 07:05:32','2019-06-26 07:05:32','2020-06-26 03:05:32'),('70dfc170aa9a4a9413503819feababf791ab2b6f00214f2463ca50af34fc4265b5cc2105b56a4230',4,2,NULL,'[\"*\"]',0,'2019-06-26 23:09:53','2019-06-26 23:09:53','2020-06-26 19:09:53'),('70fd75b1e92e1e0e99402418099ab4050736429b0c056e9a60a9b5da081ba47bc6f5b1c168d850ca',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:12:37','2019-06-26 22:12:37','2020-06-26 18:12:37'),('774c6000564c3eb606847c0373ce66a08c53bd97b4852ce5756360e66ae7bb88d09a741d4a39e80e',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:42:42','2019-06-26 22:42:42','2020-06-26 18:42:42'),('7a3c1441bb043c286be4cdc0c91b08a3e5162dba27f17e0073e57368c628d3bd88bb100dc597194e',8,2,NULL,'[\"*\"]',0,'2019-06-26 18:58:03','2019-06-26 18:58:03','2020-06-26 14:58:03'),('7c110ae94376a1cc6831219c6715f679e8a41a04c882a4269318eec443e31df51399faf201485bc4',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:18:04','2019-06-26 22:18:04','2020-06-26 18:18:04'),('7d844e3a4e6e8f7f93852a3b00e6d26fd7504cdfcb91fd63fd38c908d6d1a4d4a30f0ec95cbbd859',4,2,NULL,'[\"*\"]',0,'2019-06-26 23:12:32','2019-06-26 23:12:32','2020-06-26 19:12:32'),('869ed5ab0d6dd5445f40dd0baaa07acd881f1bedaacca286e738350b06171cb3e4258b81c795781c',4,2,NULL,'[\"*\"]',0,'2019-06-26 06:19:59','2019-06-26 06:19:59','2020-06-26 02:19:59'),('8ac4fc4ecfb5f4ecf9d7f29779f509e77d981b5bcb492d26299afcfc256e0f0ac8b29ffb33485150',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:14:43','2019-06-26 22:14:43','2020-06-26 18:14:43'),('8b222ad45f25681eb204d281b22bae460f307143b9914c9a997ff9bd07044a140616294b7bea9673',8,2,NULL,'[\"*\"]',0,'2019-06-26 21:17:47','2019-06-26 21:17:47','2020-06-26 17:17:47'),('94bf9ae6437e039773b182842eb387760cd9e56f360e1a2028680ee996dd9772f835debc27e69d23',8,2,NULL,'[\"*\"]',0,'2019-06-26 20:56:17','2019-06-26 20:56:17','2020-06-26 16:56:17'),('9a46cdeca7ccf5c85e28e16c765d6be4d2657d5b83da25efa86a0ab424a1d8327b838110f6d026bf',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:51:47','2019-06-26 22:51:47','2020-06-26 18:51:47'),('a054e0520d3e0ff8572defd49c82b6a0811b931ee98f09f247bfa04ae4ed2493d085f62fccb9d085',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:49:52','2019-06-26 22:49:52','2020-06-26 18:49:52'),('a0adcbb313b4e09d0c6e73934c8a2b305090c4ca3939ffde09b3cd0576e5dc354817b3aac9dbe787',8,2,NULL,'[\"*\"]',0,'2019-06-26 18:32:51','2019-06-26 18:32:51','2020-06-26 14:32:51'),('a1853748702d750bb1b0f62512f22e8df3e0c357cf546215c342c6f42a2189dd3b285d651cc2e273',2,2,NULL,'[\"*\"]',0,'2019-06-26 06:42:12','2019-06-26 06:42:12','2020-06-26 02:42:12'),('a29aa9a392fc7ca9f85396b8b7f9d755ca486183996d71b88beb87e2a61ce3687eb7918e17e08cc4',4,2,NULL,'[\"*\"]',0,'2019-06-26 07:25:40','2019-06-26 07:25:40','2020-06-26 03:25:40'),('a50ed4125db933c0b7479568665f5ba8bcc474a0b35cdf1bea8002c4e6689f69ddf5c20ae4e2982c',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:28:11','2019-06-26 22:28:11','2020-06-26 18:28:11'),('a6da6018027bc8db6cca05e165d3ada7346e4886ea375e0b7bfbc063f741909e518a2d331f2d61bc',4,2,NULL,'[\"*\"]',0,'2019-06-26 23:09:57','2019-06-26 23:09:57','2020-06-26 19:09:57'),('a99442a81f00391be59e48eb305c2c37b4a5dbb6218be394e3b5231a68c813c46908a74ba44a19bc',8,2,NULL,'[\"*\"]',0,'2019-06-26 22:54:33','2019-06-26 22:54:33','2020-06-26 18:54:33'),('b044a0b66b10621bfcda76a0575d80a9e561cf26ed5e6ed07a3e5f67bc86c221689a74ce0058541f',2,2,NULL,'[\"*\"]',0,'2019-06-26 06:30:31','2019-06-26 06:30:31','2020-06-26 02:30:31'),('bcbdda4c4228e19fccbb7e0aab4979dc450b540c06594e27310e8841a268d53f83af86ec123f5c16',4,2,NULL,'[\"*\"]',0,'2019-06-26 07:57:08','2019-06-26 07:57:08','2020-06-26 03:57:08'),('c36eed68d1398144203bd8102242fcc61e3b59556abcbf9c87b94bd4215182cdb2fc6434df92fc64',8,2,NULL,'[\"*\"]',0,'2019-06-26 18:41:46','2019-06-26 18:41:46','2020-06-26 14:41:46'),('cbf9b85dd34fc1c14ed2759ddc6af9de566e00af36e2f14c4211729ee5e09ca158fd994eec42c294',8,2,NULL,'[\"*\"]',0,'2019-06-26 21:19:21','2019-06-26 21:19:21','2020-06-26 17:19:21'),('cd5fe509974bdfb1c7f68f5835bbe3f17c1350f987492e4a67b494b504cc0d28cf49de62ea5bc679',2,2,NULL,'[\"*\"]',0,'2019-06-26 06:38:28','2019-06-26 06:38:28','2020-06-26 02:38:28'),('d2a6eff4f11f8bf1c559a5f65ab44d390054746ea82bb5f696d5b04bcb077b0d1fefabaa6580cad9',8,2,NULL,'[\"*\"]',0,'2019-06-26 18:37:38','2019-06-26 18:37:38','2020-06-26 14:37:38'),('d5328a37c50a91542b24a970d297a7079efeefee5ec14693a165c86d3bbb9a04bf93fbe8e3d427cb',1,2,NULL,'[\"*\"]',0,'2019-06-26 07:55:14','2019-06-26 07:55:14','2020-06-26 03:55:14'),('d5ab0abede8569d99ca0ecd873b6eba9c86bdeaa7018f63ed0e9ea2f9af79b8eb5f4ad10eff68a89',8,2,NULL,'[\"*\"]',0,'2019-06-26 19:01:11','2019-06-26 19:01:11','2020-06-26 15:01:11'),('d94318ec32816da4ec1f36442933b85cce3a1d6dc86fd520eb0b4bf4ee78396a9c89e51c6a15c383',7,2,NULL,'[\"*\"]',0,'2019-06-26 23:00:17','2019-06-26 23:00:17','2020-06-26 19:00:17'),('ddb4995fc2ed48520f50c492ed6c9e08e0bbde76e64eb7445620378076c70121388f1734b60c0123',4,2,NULL,'[\"*\"]',0,'2019-06-26 23:14:45','2019-06-26 23:14:45','2020-06-26 19:14:45'),('ea6d58d93f0855771aa879a9ee98f61e596143415e07272ec71cf3362521471aa6ba6dbfefa6b75f',8,2,NULL,'[\"*\"]',0,'2019-06-26 21:15:35','2019-06-26 21:15:35','2020-06-26 17:15:35'),('ea9c2e00e9e10457dc5d6f1ea85e4880113e8cd5262ac85bf275661af8dc1edce6437a88e30d4853',4,2,NULL,'[\"*\"]',0,'2019-06-26 07:56:47','2019-06-26 07:56:47','2020-06-26 03:56:47'),('ef1ce06b1f51e1009a8b572cba6209336de148745a9a4e1119af119fcfbb361a4fc45e50c2f9bb99',8,2,NULL,'[\"*\"]',0,'2019-06-26 09:55:06','2019-06-26 09:55:06','2020-06-26 05:55:06'),('f46ccc28555d26a06faae865b5aca4300426689cb71492bb83770d42dd7404cb1aad033509a97412',8,2,NULL,'[\"*\"]',0,'2019-06-26 19:06:00','2019-06-26 19:06:00','2020-06-26 15:06:00'),('f8ea84528b74ebe7925ab792cf7f52bb835de59ab60ba9617a9a958b5cf76096fc3a8584eb142da0',8,2,NULL,'[\"*\"]',0,'2019-06-26 09:53:55','2019-06-26 09:53:55','2020-06-26 05:53:55'),('fb8c917a271526ea13e3771a44cd48ae1b589a3fe2f570d2e48d42e19f151d45f727a1c8dcdf49ec',8,2,NULL,'[\"*\"]',0,'2019-06-26 20:49:38','2019-06-26 20:49:38','2020-06-26 16:49:38'),('fc3c1c5990548f1b3b47ba9d0b6b28175f8097864176b0348d9ae91e4f94fdbe9d81ae4fb2a31a05',8,2,NULL,'[\"*\"]',0,'2019-06-26 23:18:39','2019-06-26 23:18:39','2020-06-26 19:18:39');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','pCFf0zct6u41UDaATZX7Jf0Q1ajLfMViSEaI4z9d','http://localhost',1,0,0,'2019-06-26 03:09:33','2019-06-26 03:09:33'),(2,NULL,'Laravel Password Grant Client','SF8ACVdAvCHDCucyfUSmpz4l1TXTj2L54b8eenoG','http://localhost',0,1,0,'2019-06-26 03:09:33','2019-06-26 03:09:33');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2019-06-26 03:09:33','2019-06-26 03:09:33');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('02086ce2a06953683489d749f8d8a0aa599959654b4bb9605055511f36719d6b4ed3d537ba07eef4','60a87c6dbc0d92e894de2e1ed19afbac6c16ff077b33bd76d68a31e100197ae7ce3fc98e3a125280',0,'2020-06-26 19:12:44'),('023310e2b36eb95c038a0100b384d5ba57b0e0bec2eedb506d020b81816a19415e643091e06d6a7b','20bd6d8ece94d10056bcd3870a7274dc722eed6626196e50e7dcd04801d29bba3743f281abfd8322',0,'2020-06-26 14:10:28'),('030e21f6c961cc98d9651a9d735f2e91123afbfda87ac3bd454f4bc90c941202e87725c3496992f5','58bd7f3585348b98076ae6288423a92179784b679248c2833beeab40ca04c5413a39565eec90fb7d',0,'2020-06-26 18:56:20'),('03dc3c566050a625c88779770f55e98fcf13f90ad8de2e48635c4945ac8d46d16c1acb576371826b','ef1ce06b1f51e1009a8b572cba6209336de148745a9a4e1119af119fcfbb361a4fc45e50c2f9bb99',0,'2020-06-26 05:55:06'),('181abfd8d759437c4bb56547da049d4603aa52423fc73d0a1e70fbe365a47e88efc21da3afeccfe7','bcbdda4c4228e19fccbb7e0aab4979dc450b540c06594e27310e8841a268d53f83af86ec123f5c16',0,'2020-06-26 03:57:08'),('1e00318695c0d5bd57b8baf4a240d9869762dde850b90b4e09bfc976883ebd4f54a96622ca0adaf4','a0adcbb313b4e09d0c6e73934c8a2b305090c4ca3939ffde09b3cd0576e5dc354817b3aac9dbe787',0,'2020-06-26 14:32:51'),('1ebb85ae65fff27db570147d1e40e2941049bbbfbdc366d0271fd16d77fb90d8957d71336fa70ff2','774c6000564c3eb606847c0373ce66a08c53bd97b4852ce5756360e66ae7bb88d09a741d4a39e80e',0,'2020-06-26 18:42:42'),('1fdab6587f74a17d6d44ec5d228b8ec88767b11eaeca23ad58f9f6205899960e6a5d637ff54ab994','61860293aa4e853ce1e9218e20d3aaefa3fe38d016346beb40f09a0815f54c8a3682635d971277fd',0,'2020-06-26 17:23:33'),('270c84a8be2024f7e6c5b5fbd4d4b994aa82eadd9db9b1cbdc6b71f1da8bcd4f12fffb857de5086e','70dfc170aa9a4a9413503819feababf791ab2b6f00214f2463ca50af34fc4265b5cc2105b56a4230',0,'2020-06-26 19:09:53'),('2889e33c6049ffefeff24cb0b62aefc72a27514d6e5743a805d6daab2b7dcf874faedde48ffdd4ff','d94318ec32816da4ec1f36442933b85cce3a1d6dc86fd520eb0b4bf4ee78396a9c89e51c6a15c383',0,'2020-06-26 19:00:17'),('2a28373b634e06c41bb9baba4cee44c69dc5d11bad3e02efcc91c218f0aa6568629b3576433bd36d','cbf9b85dd34fc1c14ed2759ddc6af9de566e00af36e2f14c4211729ee5e09ca158fd994eec42c294',0,'2020-06-26 17:19:21'),('2a3f853f498504ab141ba1d4cd79be77029a3778545f42134ca18c44a86735f92f5a49298b481934','393451e0e9d70aa85403fbe7f3b200338c15c81c879a9d1d36d41dbc800f85401ceca3027ef6c2ed',0,'2020-06-26 05:41:14'),('2bc71e325f155b5625cfbd928f7aa13c30bb9f824a2601d5ed1c0cda0295173c384e422e9e77e387','04a4b5febe353749be45b4f277dccc9703b658e2ae00fa4e7e7a8027be88b5b54f5ebc86393459ac',0,'2020-06-26 19:14:43'),('2ea3f615172b79402f9fe6af07d251278265fb5a0e28a876a6d47eeca803e4e33f9de04ec109a2bb','4458d24bedcb437a403b26c518252cf28bfc04095e4d52c72c3e23558d3fb788c02f0d91c2866266',0,'2020-06-26 15:06:51'),('3111b32244a56c103bd82f2945b507fd8a6c748914269ab1c858806bc0fd547009c876aa8302951d','2cbb0ca3e2cb3a73f10c0490f6a49a5a74173564f8f6453d1d151bda15059daeb0c0452949b0663a',0,'2020-06-26 17:56:44'),('352689a21494025157e23be278ceb6a0ad4604bceac7ab1c0f9cbec219595b59b977e0260d6724fa','d5ab0abede8569d99ca0ecd873b6eba9c86bdeaa7018f63ed0e9ea2f9af79b8eb5f4ad10eff68a89',0,'2020-06-26 15:01:11'),('3bc1c730c178847ff1b770ec898029aa92257b6da707604fa163c152475bd77c98004415dee3a1b1','a50ed4125db933c0b7479568665f5ba8bcc474a0b35cdf1bea8002c4e6689f69ddf5c20ae4e2982c',0,'2020-06-26 18:28:11'),('3c4dce6068c3fd7bb91ecf48408acc4f968fea623da3f71de4c50cac774ff9248f0876b1414ec5a0','43bb0f5413ea6e9324d450a33697668c135a242f0fc712c93e82947fa47f5708659c34cd04b6e163',0,'2020-06-26 02:43:26'),('3c92e077b4e80c8a77890146b6f97ed474d1d8f0739a5c021d843bc0e5a1d18f8f134445447653f1','a6da6018027bc8db6cca05e165d3ada7346e4886ea375e0b7bfbc063f741909e518a2d331f2d61bc',0,'2020-06-26 19:09:57'),('412673ada20950d3922fd88e27e9366197a2c48632e2991e2beb627820ea13b2da0a9d1f257f2682','3a7517dd65aa67ba2ce2b8368c3bc0605730d0a2af7f4baa7800ab76c5265f6aa78efd881d5d4428',0,'2020-06-26 19:00:50'),('41f68c9ca60dac9ab0716ac0f12956917467e378ef466deafc283abda3eb2c7e16c5c5fa755b026a','f8ea84528b74ebe7925ab792cf7f52bb835de59ab60ba9617a9a958b5cf76096fc3a8584eb142da0',0,'2020-06-26 05:53:55'),('437573f902f48a30800503bc4e46e7a0a0b997ca39c756969e089681dc2db5cdd41841e13e50af72','9a46cdeca7ccf5c85e28e16c765d6be4d2657d5b83da25efa86a0ab424a1d8327b838110f6d026bf',0,'2020-06-26 18:51:47'),('48616f37296e3ec514957bae712ec318240feaba90168c9eda0735dac13c67d9455f0a494e9b1232','50f191d5ee48a8c5ebf816e77a014cd8aa308725ef6fbcdac7ebe5912f2d59a6def1b0f1e4acc016',0,'2020-06-25 23:48:12'),('4b6b70fa64dbf6889f9da0108764f6f5996ea4162cd6edb2c317733b437ad19cada8df81aaaf0710','28e7182ba7d735d226aeea65be3e0c1c224c5b4c53dd707e836b8a1ad666350ea8969ca596a42241',0,'2020-06-26 14:59:18'),('5479267cf748ea76d6f5e1ddf2e7581d65da3ea61da8fcbfed0cc3a25d04088e9595124240928b7a','49cfad9b0f4411e76bb889471b2c464aa0297a2d79190e30204dfef31abf55f5130f8d0fdf98b533',0,'2020-06-26 18:56:41'),('54898d2ded1fb567bee1bf7b04fddaf544267eb8866a856e2b05e3ef9b680cd56c6a8e88ace31c01','7a3c1441bb043c286be4cdc0c91b08a3e5162dba27f17e0073e57368c628d3bd88bb100dc597194e',0,'2020-06-26 14:58:03'),('55b2a64f32a621d6ce340c6c1e3ac353acfef2ba410ecdde542e1c9f10a80bae979760946d889ab8','533534cf0aa4fa8ab6d1dc3d8d0c8c07c1b5711f55cc3fb1652dbdee78f28b7b44ea1b94d68c3c7d',0,'2020-06-26 17:50:41'),('5701a8a7e00c9194de65487929e8db39ff79565cf6afba9bfbfaf96c3b2823beaff62a2301093199','ea6d58d93f0855771aa879a9ee98f61e596143415e07272ec71cf3362521471aa6ba6dbfefa6b75f',0,'2020-06-26 17:15:35'),('65c9d625d9de0e73f8fd429b15b20b41fca9b6b53cc5ff5028c312bb078b1cddb24c45facfb9632c','8ac4fc4ecfb5f4ecf9d7f29779f509e77d981b5bcb492d26299afcfc256e0f0ac8b29ffb33485150',0,'2020-06-26 18:14:43'),('66ce2c44a86d3f7836b60384c7a65efa36ba94c89e3dae043be39f7e5260806a68cc1b79a9f0bb4a','a99442a81f00391be59e48eb305c2c37b4a5dbb6218be394e3b5231a68c813c46908a74ba44a19bc',0,'2020-06-26 18:54:33'),('70731c7d35e337e7b32d5aa61ed51103bfdfbb12a68d458d39fde6292c513c15fc8f826fc30866df','6515c803e61abe35b39a3fa4245a0c4bbf49dcaaf2785f687d05be516149282bf3064ba4a36f3c5a',0,'2020-06-26 17:13:37'),('74844a751f4c8146f6a22e70962861470f945fc303c6df3527ac96f3c59571de01f74cf746437da0','01711016a3412832e40d3d4161e1fd2512a52eea31e76052a0853f831fb2a425b3d3cde035aa39b7',0,'2020-06-26 14:29:57'),('7756e5f8a920586847134f879cbf9d9fb8325d694f5a6c479cf5d13e243cb1f6fbaffdedc2f3a8a4','d5328a37c50a91542b24a970d297a7079efeefee5ec14693a165c86d3bbb9a04bf93fbe8e3d427cb',0,'2020-06-26 03:55:14'),('783d42949d49e3c27feb67f55f665a0912c5dafbb08a9cadd17a915c3445e4e4b35d86f06f084442','a054e0520d3e0ff8572defd49c82b6a0811b931ee98f09f247bfa04ae4ed2493d085f62fccb9d085',0,'2020-06-26 18:49:52'),('7c3ddb4e077443570a8dc75b93faac1d4db817708a592584f9b3959f76df065fcb822c476ae224b3','fc3c1c5990548f1b3b47ba9d0b6b28175f8097864176b0348d9ae91e4f94fdbe9d81ae4fb2a31a05',0,'2020-06-26 19:18:39'),('81a84af2b654f37c25649b80f69a2df28d48092418769e929d2c3986f0207faa2ceab417fac5a143','b044a0b66b10621bfcda76a0575d80a9e561cf26ed5e6ed07a3e5f67bc86c221689a74ce0058541f',0,'2020-06-26 02:30:31'),('851a9110aca962a4c7c9866b6f7bdf2ce2f32fb8f88cc5208720c19f7c03331b08c893bfcda16fef','c36eed68d1398144203bd8102242fcc61e3b59556abcbf9c87b94bd4215182cdb2fc6434df92fc64',0,'2020-06-26 14:41:46'),('85dcd71da6db168fd7cc7fefc5f583415b9dbf23f5a95d6028ed7f248fce3d5531a19eb4a2795728','869ed5ab0d6dd5445f40dd0baaa07acd881f1bedaacca286e738350b06171cb3e4258b81c795781c',0,'2020-06-26 02:19:59'),('8b5bcde34161436b5df90e09d50724d03c66734d082c37e9e5f9cab8fd226c55c4829b8ea754a336','2d19f47ff18f00d088ed06a6cd9e846d52f5b9c68ac8882b9b733582bb5a42050bf6d4467edb1ddb',0,'2020-06-26 02:39:28'),('8bfb5b3260dbc23177f453073687f874d75b9d216eb617a8aab9a92eedca25b0a0020289268ce565','94bf9ae6437e039773b182842eb387760cd9e56f360e1a2028680ee996dd9772f835debc27e69d23',0,'2020-06-26 16:56:17'),('90a22943cc6fc2de747107bd948db97edda87d78cddc317c93688ee00d4dae887200a1454b54091f','a29aa9a392fc7ca9f85396b8b7f9d755ca486183996d71b88beb87e2a61ce3687eb7918e17e08cc4',0,'2020-06-26 03:25:40'),('923c9befe341dd0e429fd4c204b3ca86efbc19a034831b79d14118323236db7dff028965ba907267','f46ccc28555d26a06faae865b5aca4300426689cb71492bb83770d42dd7404cb1aad033509a97412',0,'2020-06-26 15:06:00'),('98d7a2cef9bda6283f9028610ef0f6f76a2fc0d45bb7e3a7df63c70d2576ce33909ac653b78b2743','d2a6eff4f11f8bf1c559a5f65ab44d390054746ea82bb5f696d5b04bcb077b0d1fefabaa6580cad9',0,'2020-06-26 14:37:38'),('9d2c1856e6dc6efd41487cf3faef6ea0c67684be9a05cd4e653e479f5f6cd7a2b4cdf07303f2215b','5d6758a3ae62fb2fdb808f05c8e8c6c341e62adb0fe8164233ceabb11dde073afda289a3819a62ae',0,'2020-06-26 15:04:14'),('9d687456377670b5363a2fc958f970c553b32431d55e9a3152e27a0a955198c0a9d75069a9d187cd','cd5fe509974bdfb1c7f68f5835bbe3f17c1350f987492e4a67b494b504cc0d28cf49de62ea5bc679',0,'2020-06-26 02:38:28'),('9edd1d40e1ce6d58ee9c96ca1fbd48936b06beea9acd9357d7d6f99fcc72cfce946f52efbd7639d2','240cf91d389051213ef5005925b480fcf42d4edec9691042578f899b977ce16ff84e1d698c12017b',0,'2020-06-26 02:45:01'),('a2275afeeb769b5411deb901a7e24e8169098d14643821f048f7946299a45b298a0abf2f23eb1f24','ddb4995fc2ed48520f50c492ed6c9e08e0bbde76e64eb7445620378076c70121388f1734b60c0123',0,'2020-06-26 19:14:45'),('a3534c81f7e1acc0d9b02a58a250fcdf3b13080c81f63e834fb9e884442f493123749e4fc2ba5c59','70fd75b1e92e1e0e99402418099ab4050736429b0c056e9a60a9b5da081ba47bc6f5b1c168d850ca',0,'2020-06-26 18:12:37'),('aa72f2f913d948f558913c85a61950818943d41ce83e2279d97904265e1693b5a841b3fa5e7c2d00','fb8c917a271526ea13e3771a44cd48ae1b589a3fe2f570d2e48d42e19f151d45f727a1c8dcdf49ec',0,'2020-06-26 16:49:38'),('ae1a030b9dfecc469a6ed38260478a2c18fe7b9f6ad76ad9686667d6a959dffc052e24a6d2404e98','7d844e3a4e6e8f7f93852a3b00e6d26fd7504cdfcb91fd63fd38c908d6d1a4d4a30f0ec95cbbd859',0,'2020-06-26 19:12:32'),('b494858d82e0198f9e077d8e695765ff64b2f2afa922811c6c660bc28425c099bffdf26880e04a95','4d29f56f1a6fc1853fb43b4a319a1abf265840731478390cd72fd4273aa122f72f6b980de45b7100',0,'2020-06-26 17:54:02'),('c4defcac8e3e90b9cc49299db79f10e7cd9631d51faa089d2ee0efe6fcf68dbb9baa189cd003c572','8b222ad45f25681eb204d281b22bae460f307143b9914c9a997ff9bd07044a140616294b7bea9673',0,'2020-06-26 17:17:47'),('c9ebf4d1ce50829c1a200ce717c0f6ee4647523455adcfd900d0fa85ecb910898916142877b7dc1b','7c110ae94376a1cc6831219c6715f679e8a41a04c882a4269318eec443e31df51399faf201485bc4',0,'2020-06-26 18:18:04'),('d385c22af507f59d3345a0486f9af6fb831cc0ecb6d8139758124446dc18d16a30d3390c7abae24f','46564aa8c6c34f95f32979bf0a29a7380053fbf5b3947356fedfdf7b0401e816f654cfd21197a3b4',0,'2020-06-26 05:51:15'),('e48142f8ffd997988b7ca607a4d1d4d515581c0970e615e450f2ee344fe01576b2f729aef5dcad41','ea9c2e00e9e10457dc5d6f1ea85e4880113e8cd5262ac85bf275661af8dc1edce6437a88e30d4853',0,'2020-06-26 03:56:47'),('f490e635733362ce2f902a418b5f1f5c40cd386e0c296b66502f6d9843b85a9476d44b5c0d2847c2','a1853748702d750bb1b0f62512f22e8df3e0c357cf546215c342c6f42a2189dd3b285d651cc2e273',0,'2020-06-26 02:42:12'),('f805759e111db956f1d5d77b2b5712a373c7a466ea8d69a6537add4acfc5a7fc629ae4da1152537e','697e0aa8b5d2b64eb4340ec9bcc0bb5214b3019ca3429ccf2668149c345c25f15718868b2ba4a317',0,'2020-06-26 03:05:32');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `todos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `todo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (1,'8','Hulk','Find another anger managment coach',NULL,NULL),(2,'8','Roses','Stop and Smell the Roses',NULL,NULL),(3,'2','Make a Cake','Eggs, Flour, milk, cinnamon',NULL,NULL),(4,'8','Run','All Day Running','2019-06-26 22:01:09','2019-06-26 22:01:09'),(5,'8','Sunday','Ride My Bick','2019-06-26 22:22:13','2019-06-26 22:22:13'),(6,'8','Wash Car','Go to Park and wash car.','2019-06-26 22:27:10','2019-06-26 22:27:10'),(7,'8','Help A stranger','Do something random?','2019-06-26 22:37:36','2019-06-26 22:37:36'),(8,'8','Learn to paint','Take a painting class somewhere','2019-06-26 22:43:21','2019-06-26 22:43:21'),(9,'8','REad A Book','Go to library everyday.','2019-06-26 23:02:43','2019-06-26 23:02:43'),(10,'8','Run The 5k','Join and run a 5K','2019-06-26 23:10:32','2019-06-26 23:10:32'),(11,'8','Run a Marathon','Someday run a marathon.','2019-06-26 23:13:04','2019-06-26 23:13:04'),(12,'4','Ride a bike','Learn how to ride a bike.','2019-06-26 23:15:06','2019-06-26 23:15:06'),(13,'4','Make a Pizza','Learn how to make a pizza','2019-06-26 23:16:04','2019-06-26 23:16:04'),(14,'4','Sing a very complicated song.','Find a really complicated song and sing it.','2019-06-26 23:18:02','2019-06-26 23:18:02');
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Lera','Denesik','makenna64@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','ljNOFGumjT','2019-06-26 02:25:37','2019-06-26 02:25:37'),(2,'Colby','Littel','wava74@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Q8wsUOKVaT','2019-06-26 02:25:38','2019-06-26 02:25:38'),(3,'Catherine','Hammes','mhamill@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','hE1IK4x4NS','2019-06-26 02:25:38','2019-06-26 02:25:38'),(4,'Gerson','Wyman','eli.hills@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','27LtvVSm3D','2019-06-26 02:25:38','2019-06-26 02:25:38'),(5,'Donna','Bednar','schuppe.erling@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','H4YQttrh8H','2019-06-26 02:25:38','2019-06-26 02:25:38'),(6,'Lavon','Monahan','felipe.predovic@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','mU3Pskzloa','2019-06-26 02:25:38','2019-06-26 02:25:38'),(7,'Deontae','Schuster','zaria87@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','cWTr3DwyIk','2019-06-26 02:25:38','2019-06-26 02:25:38'),(8,'Bill','Bixby','bill@tex.com','$2y$10$0vz.y3J3UshRHGFoauo/leJA1AqS6CXuoywa52m9xohbZCE1ZPyTC',NULL,'2019-06-26 09:39:32','2019-06-26 09:39:32');
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

-- Dump completed on 2019-06-26 17:02:24
