-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: lisa.duffnet.local    Database: starband
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

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
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignments` (
  `assignmentid` int(11) NOT NULL AUTO_INCREMENT,
  `braceletid` int(11) NOT NULL,
  `starid` int(11) NOT NULL,
  PRIMARY KEY (`assignmentid`),
  KEY `braceletid` (`braceletid`),
  KEY `starid` (`starid`),
  CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`braceletid`) REFERENCES `bracelets` (`braceletid`),
  CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`starid`) REFERENCES `stars` (`starid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bracelets`
--

DROP TABLE IF EXISTS `bracelets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bracelets` (
  `braceletid` int(11) NOT NULL AUTO_INCREMENT,
  `braceletname` text NOT NULL,
  PRIMARY KEY (`braceletid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bracelets`
--

LOCK TABLES `bracelets` WRITE;
/*!40000 ALTER TABLE `bracelets` DISABLE KEYS */;
/*!40000 ALTER TABLE `bracelets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stars`
--

DROP TABLE IF EXISTS `stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stars` (
  `starid` int(11) NOT NULL AUTO_INCREMENT,
  `visiblemagnitude` double NOT NULL,
  `propername` varchar(255) NOT NULL,
  `simbad` varchar(255) NOT NULL,
  `wikilink` text NOT NULL,
  PRIMARY KEY (`starid`)
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stars`
--

LOCK TABLES `stars` WRITE;
/*!40000 ALTER TABLE `stars` DISABLE KEYS */;
INSERT INTO `stars` VALUES (331,0,'Sun','G2 V',''),(332,0.001,'Sirius','A1 V',''),(333,0.003,'Canopus','F0 Ia',''),(334,0.004,'Rigil Kentaurus, Toliman','G2 V',''),(335,0.003,'Arcturus','K1.5 III',''),(336,0.03,'Vega','A0 V',''),(337,0.12,'Rigel','B8 Iab',''),(338,0.34,'Procyon','F5 IV-V',''),(339,0.42,'Betelgeuse','M2 Iab',''),(340,0.5,'Achernar','B3 Vpe',''),(341,0.6,'Hadar, Agena','B1 III',''),(342,0.71,'Capella A','G8 III',''),(343,0.77,'Altair','A7 V',''),(344,0.85,'Aldebaran','K5 III',''),(345,0.96,'Capella B','G1 III',''),(346,1.04,'Spica','B1 III-IV, B2 V',''),(347,1.09,'Antares','M1.5 Iab-b',''),(348,1.15,'Pollux','K0 IIIb',''),(349,1.16,'Fomalhaut','A3 V',''),(350,1.25,'Deneb','A2 Ia',''),(351,1.3,'Mimosa, Becrux','B0.5 IV',''),(352,1.33,'Rigil Kentaurus, Toliman','K1 V',''),(353,1.35,'Regulus','B7 V',''),(354,1.4,'Acrux','B1 V',''),(355,1.51,'Adara','B2 Iab',''),(356,1.62,'Shaula','B1.5-2 IV+',''),(357,1.63,'Gacrux','M4III',''),(358,1.64,'Bellatrix','B2 III',''),(359,1.68,'El Nath','B7 III',''),(360,1.68,'Miaplacidus','A2 IV',''),(361,1.7,'Alnilam','B0 Iab',''),(362,1.7,'Alnitak','O9 Iab',''),(363,1.74,'Alnair','B7 IV',''),(364,1.76,'Alioth','A0pCr',''),(365,1.78,'Suhail','',''),(366,1.8,'Kaus Australis','B9.5 III',''),(367,1.82,'Mirfak','F5 Ib',''),(368,1.84,'Wezen','F8 Ia',''),(369,1.85,'Benetnasch, Alkaid','B3 V',''),(370,1.86,'Sargas','F1 II',''),(371,1.87,'Dubhe','K0 III',''),(372,1.9,'Alhena','A0 IV',''),(373,1.91,'Peacock','B2 IV',''),(374,1.92,'Atria','K2 IIb-IIIa',''),(375,1.96,'Castor A','A1 V, A2 Vm',''),(376,1.97,'Polaris','F7 Ib-II',''),(377,1.98,'Mirzam','B1 II-III',''),(378,1.98,'Alphard','K3 II-III',''),(379,2,'Hamal','K2IIICa-1',''),(380,2.03,'Koo She','A1 V',''),(381,2.04,'Deneb Kaitos, Diphda','K0 III',''),(382,2.05,'Saiph','B0.5Iavar',''),(383,2.06,'Nunki, Sadira','B2.5 V',''),(384,2.06,'Menkent','K0IIIb',''),(385,2.06,'Alpheratz, Sirrah','B8IV',''),(386,2.06,'Mirach','M0III',''),(387,2.08,'Kochab','K4 III',''),(388,2.09,'Acrux','',''),(389,2.1,'Rasalhague','A5V',''),(390,2.12,'Algol A','B8V',''),(391,2.13,'Gruid','M5 III',''),(392,2.14,'Denebola','A3 V',''),(393,2.21,'Naos','O5 Ia',''),(394,2.23,'Suhail','K4.5 Ib-II',''),(395,2.23,'Eltanin','K5 III',''),(396,2.24,'Alphecca, Gemma','A0V',''),(397,2.24,'Sadr','F8 Ib',''),(398,2.25,'Schedar','K0 IIIa',''),(399,2.25,'Aspidiske','A8 Ib',''),(400,2.26,'Almach','K3IIb',''),(401,2.27,'Mizar A','A2 V',''),(402,2.27,'Caph','F2 III-IV',''),(403,2.27,'Birdun','B1III',''),(404,2.28,'Algieba','K0 IIIb',''),(405,2.28,'Men, Kakkab','B1.5 II',''),(406,2.29,'Dschubba','B0.2 IV',''),(407,2.29,'Wei','K2 IIIb',''),(408,2.32,'Marfikent','B1.5Vne',''),(409,2.35,'Merak','A1V',''),(410,2.37,'Ankaa, Nair al Zaurak','K0 III',''),(411,2.38,'Girtab','B1.5 III',''),(412,2.39,'Tsih, Navi','B0.5 IVe',''),(413,2.4,'Enif','K2 Ib',''),(414,2.4,'Aludra','B5 Ia',''),(415,2.4,'Avior','K3 III',''),(416,2.42,'Scheat','M2.3 II-III',''),(417,2.43,'Phecda','A0Ve SB',''),(418,2.44,'Alderamin','A7 IV',''),(419,2.46,'Markeb','B2 IV-V',''),(420,2.49,'Markab','B9 III',''),(421,2.5,'Gienah','K0 II','');
/*!40000 ALTER TABLE `stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userbracelets`
--

DROP TABLE IF EXISTS `userbracelets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userbracelets` (
  `usercreaceletid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `braceletid` int(11) NOT NULL,
  PRIMARY KEY (`usercreaceletid`),
  KEY `userid` (`userid`),
  KEY `braceletid` (`braceletid`),
  CONSTRAINT `userbracelets_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  CONSTRAINT `userbracelets_ibfk_2` FOREIGN KEY (`braceletid`) REFERENCES `bracelets` (`braceletid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userbracelets`
--

LOCK TABLES `userbracelets` WRITE;
/*!40000 ALTER TABLE `userbracelets` DISABLE KEYS */;
/*!40000 ALTER TABLE `userbracelets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `displayname` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

-- Dump completed on 2013-04-20 22:54:39
