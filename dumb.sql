-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `registerAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (27,'Jorikkk',NULL,'zazul118@yandex.ru','$2a$06$ekdhfQmycEb0k2p3dnPqb.em18jMPf3T3b0Gy4.BGRpPPxMYM0W9.','М','','2022-06-14 16:20:07'),(28,'Jorban','fewfes','zazul11888@yandex.ru','$2a$06$YD7PY4f2FLYV/gjFlcb/8uWN..RfZOyxo9XD8CR6nnwbzLYWk2RO.','М','','2022-06-14 17:50:04'),(29,'Jorban','fewfes','zazu388@yandex.ru','$2a$06$xgZUzPzccx0ypSDa.YSDhO6T0bZfAQgspZ4dI84HC5bQ8/P8/BHmK','М','','2022-06-14 17:50:55'),(30,'Jorban','fewfes','zazu388@yyandex.ru','$2a$06$8ZmEskDJh8y.lsz0r147o.saIT.h9NfDuc2ruRJ.dr4kJyGdFhL/2','М','','2022-06-14 17:51:01'),(32,'Федотов','fewfes','jabrehecuya-2797@yopmail.com','$2a$06$WQ/QN.OitmtWrX/O.I.Z5.fkB5lTj.tyU46ZJnLuS8tfGoahnIRoS','М','','2022-06-14 18:02:26'),(33,'Ленар',NULL,'frouppereukufau-1164@yopmail.com','$2a$06$iwunH9auT1UDMUMi3/vAYO/JPVULXxuDLBHvFxDF4x338Kt5UWkZi',NULL,NULL,'2022-06-14 18:02:54'),(34,'Эрик ',NULL,'priprogretrika-2207@yopmail.com','$2a$06$xUjhH7Fxngb04swAzG58yuHEj3K/1SifrWqymZJG7d4PXMXG1FS/y','М','','2022-06-14 18:03:11'),(35,'Никита','fewfes','jaquegotraqua-6626@yopmail.com','$2a$06$sWgHWffSU1whZvlXl5joSeRk3jxgVPxO05E8oWgdUslnc7C7Ar91.','М','25139c44-c775-4700-a596-2f2d23b91774.png','2022-06-14 18:03:30'),(36,'Карим','fewfes','xayeimmecine-3970@yopmail.com','$2a$06$E2i/ro2KXR6p02aql8hCJ.uP4ZAoibTqmA5hsHVXwWp2QIgO1j6YO','М',NULL,'2022-06-14 18:03:51'),(37,'Никодим','fewfes','croihoffassowe-3305@yopmail.com','$2a$06$FScJfC7hv0XGds6GvWNzn.Oe7fXLtmdZmwTswHqItgusjSivdLpNq','М','','2022-06-14 18:04:04'),(38,'Павел','fewfes','bicrouprefeffei-1666@yopmail.com','$2a$06$klcNWkleeFEBaqW51zf3.eGlo.sQkzp.ASw9sMWgxX6VWF/CbCBP2','М','','2022-06-14 18:04:19'),(39,'Филипп',NULL,'wivipruquouya-9028@yopmail.com','$2a$06$zY9fOKSnfmKXc703ObzUO.eJC/LvOYDgNEzxT9ePoO.vyQ9UTt3Ci',NULL,NULL,'2022-06-14 18:04:39'),(40,'Лаврентий',NULL,'fimiddauppucru-7828@yopmail.com','$2a$06$OaES1c0rWSnA/jYWRzZk1OAJxhTxGMgQXrBKptFt5cFpI3p.4qOQ2','М','','2022-06-14 18:04:54'),(41,'Станислав',NULL,'grommekufaunni-6589@yopmail.com','$2a$06$bCNroCdoIm3lgvZhc6U2VeMOFMmUm1X5k4hmW8/e1zxCJo97Mt11q',NULL,NULL,'2022-06-14 18:05:13'),(42,'Якушев',NULL,'weupinequohau-3422@yopmail.com','$2a$06$D.UavIeLVez4TkBU7h7gsOQLxEYRsINA9tBktj2fakI9rxi9wHLPe','М','','2022-06-14 18:05:32'),(43,'Евгеньевич','fewfes','toddakeumagu-2797@yopmail.com','$2a$06$HQ8hHD/AYjfV4dff3D.t/eF2RoBtF2BN57Y9jk/8/bY1VNfT37ufO','М','4df2c142-586e-4b96-8e5d-035efa4fb794.png','2022-06-14 18:05:51'),(44,'Ефрем',NULL,'graferoihufre-6065@yopmail.com','$2a$06$jq.g8Fv9gts3/31uaBr7MePK0Tbmm9SrHvRQZE5Tg5fsraBRxm8Iq',NULL,NULL,'2022-06-14 18:06:21'),(45,'Xaiangr',NULL,'cripoucauprenne-1748@yopmail.com','$2a$06$9gK2vIkPttEqZaUfas.SseNxkA8S24Ah5O59H1glOWC70Ye1kgvV6','М','','2022-06-14 18:06:54'),(46,'Watauay',NULL,'fopihufouppa-8341@yopmail.com','$2a$06$S7pf3osc87Rz8SDSm/BoF.cKtu2pAwUI8BB2b/LrY5eL0oIzToGLm','М','','2022-06-14 18:07:10'),(47,'Sayennn',NULL,'treuddeisseutroude-3962@yopmail.com','$2a$06$oLDRs1pp2T3GUHKyKaaQ7ev0P.RuGaQn2b81Wa5CVVS01SX6RlBR6',NULL,NULL,'2022-06-14 18:07:41'),(48,'Toatars','fewfes','labraxifuni-4144@yopmail.com','$2a$06$YDTj8.Ynq/80djvWvIYPQePg.TYoIYNdBdN1HG85rpQzZc9f8oW1a','М','','2022-06-14 18:08:32'),(49,'Shassor','fewfes','zauquedupavoi-7062@yopmail.com','$2a$06$ugu7PJDITopOV4XmTXkz/ewLCv8cI9T7iN.V1Rf.yZ5Lp565VeRSO','М','','2022-06-14 18:08:46'),(50,'Iahanee',NULL,'pallabreiceuya-8355@yopmail.com','$2a$06$ifQjv.0wcrznCioXENwgveVQtZ.l/N39WO26ybn7fVOaaar8MWYrG',NULL,NULL,'2022-06-14 18:08:58'),(51,'Cherode',NULL,'zetrifriquetrei-5186@yopmail.com','$2a$06$Q5PvOFxZEci2Wtkovkfdt.l229lglZsLoKYSPEfNZW4G.djRp3bMG',NULL,NULL,'2022-06-14 18:09:21'),(52,'Ontauam',NULL,'prufrefrennocro-3832@yopmail.com','$2a$06$iICQ16LFf5vDJgWOc.PWgue6GWiaQOT6mjc/HQAy.qbcmg1mYq4fC',NULL,NULL,'2022-06-14 18:09:39');
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

-- Dump completed on 2022-06-14 22:13:04
