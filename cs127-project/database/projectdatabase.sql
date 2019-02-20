-- MySQL dump 10.16  Distrib 10.3.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	10.3.10-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `empno` varchar(10) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `yearemployed` date DEFAULT NULL,
  `contactno` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('12345','Dela Cruz','Juan','T','2018-11-28',NULL,NULL),('17293','Rizal','Jose','P',NULL,NULL,NULL),('67890','Martin','Coco',NULL,NULL,NULL,NULL),('87291','Dapitan','Rose','T','2018-11-28',NULL,NULL),('92834','Javier','John Arvin','A','2018-04-07','9234732038','jajavier@up.edu.ph');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumni` (
  `stdno` varchar(10) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `degree` varchar(6) NOT NULL,
  `batch` int(4) NOT NULL,
  `yeargraduated` int(4) NOT NULL,
  `occupation` varchar(35) DEFAULT NULL,
  `contactno` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `empno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`stdno`),
  KEY `alumni_empno_fk` (`empno`),
  CONSTRAINT `alumni_empno_fk` FOREIGN KEY (`empno`) REFERENCES `admin` (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni`
--

LOCK TABLES `alumni` WRITE;
/*!40000 ALTER TABLE `alumni` DISABLE KEYS */;
INSERT INTO `alumni` VALUES ('1918-12345','Dela Cruz','Juan','T','BSA',1918,1922,'admin',NULL,NULL,'12345'),('1999-12345','Dela Cruz','Juana','T','BSDC',1999,2003,NULL,NULL,NULL,NULL),('2008-73619','Dela Cruz','Juanito','T','BSA',2008,2013,NULL,NULL,NULL,NULL),('2011-08721','Zaporteza','Francis','M','BSCS',2011,2017,NULL,NULL,'fmzaporteza@up.edu.ph',NULL),('2012-22833','Guiao','Justine Andrew','B','BSCS',2012,2019,NULL,NULL,'jbguiao@up.edu.ph',NULL),('2012-22834','Guiao','Justine Paul','B','BSCS',2012,2018,NULL,NULL,'jbguiao1@up.edu.ph',NULL),('2013-08235','Capistrano','Carl','S','BSE',2013,2017,NULL,NULL,'cscapistrano@up.edu.ph',NULL),('2013-08721','Palaganas','Denzel','M','BSN',2013,2017,NULL,NULL,'dmpalaganas@up.edu.ph',NULL),('2013-08722','Villanueva','Patrick','A','BSF',2013,2017,NULL,NULL,'pavillanueva@up.edu.ph',NULL),('2013-08732','Palaganas','Nathan','M','BSN',2013,2017,NULL,NULL,'nmpalaganas@up.edu.ph',NULL),('2013-08767','Prado','Aaron','C','BSN',2013,2017,NULL,NULL,'acprado@up.edu.ph',NULL),('2013-32543','Briones','Giselle','M','BSN',2013,2017,NULL,NULL,'gmbriones@up.edu.ph',NULL),('2013-42311','Leano','Rovin','T','BSCS',2014,2018,NULL,NULL,'rtleano@up.edu.ph',NULL),('2013-43652','Templo','Mhaan','M','BSN',2013,2017,NULL,NULL,'mmtemplo@up.edu.ph',NULL),('2013-54829','Aguinaldo',' Justin','A','BSCS',2013,2019,NULL,NULL,'jaaguinaldo@up.edu.ph',NULL),('2013-55462','Salvador','Raia','M','BSN',2013,2017,NULL,NULL,'rmsalvador@up.edu.ph',NULL),('2013-65432','Zuasola','Aya','A','BSN',2013,2017,NULL,NULL,'aazuasola@up.edu.ph',NULL),('2013-71795','Dapitan','Rose','T','BSCS',2013,2017,'admin',NULL,NULL,'87291'),('2013-75846','Arjona','Karen','G','BSChE',2013,2019,NULL,NULL,'kgarjona@up.edu.ph',NULL),('2013-99721','Brinas','Arizza','A','BSCS',2013,2017,NULL,NULL,'aabrinas@up.edu.ph',NULL),('2014-08721','Valmayor','Inaki','J','BSA',2014,2018,NULL,NULL,'ijvalmayor@up.edu.ph',NULL),('2014-08727','Mirandilla','Kenneth','P','BSMST',2014,2018,NULL,NULL,'kpmirandilla@up.edu.ph',NULL),('2014-09731','Dizon','James','C','BSA',2014,2019,NULL,NULL,'jcdizon@up.edu.ph',NULL),('2014-10323','Naagas','Adara Wyanette','Y','BSN',2014,2019,NULL,NULL,'aynaagas@up.edu.ph',NULL),('2014-11779','Belo','Jerome Kim','G','BSEE',2014,2020,NULL,'9122328362','jgbelo@up.edu.ph',NULL),('2014-11780','Bade','Dyna Mariel','B','BACA',2014,2018,NULL,'9123872848','dbbade@up.edu.ph',NULL),('2014-11790','Romero','Micryl Loise','V','BSN',2014,2019,NULL,'9263728374','mvromero@up.edu.ph',NULL),('2014-11799','Aquino','Rica Maye','V','BSSTAT',2014,2018,NULL,'9794723990','rvaquino@up.edu.ph',NULL),('2014-11802','Javier','John Arvin','A','BSAM',2014,2018,'admin','9234732038','jajavier@up.edu.ph','92834'),('2014-21448','Dela Cruz','Willreign Zoren','D','BSSTAT',2014,2019,NULL,NULL,'wddelacruz@up.edu.ph',NULL),('2014-22721','Estandarte','Tope','T','BSCS',2014,2019,NULL,NULL,'ttestandarte@up.edu.ph',NULL),('2014-27734','Sotto','Noriel','E','BSCS',2014,2018,NULL,NULL,'nesotto@up.edu.ph',NULL),('2014-31227','Coronel','Shania Crista','D','BSF',2014,2019,NULL,NULL,'sdcoronel@up.edu.ph',NULL),('2014-33156','Hizon','Mark Louie','B','BSCS',2014,2021,NULL,NULL,'mbhizon@up.edu.ph',NULL),('2014-33738','Valdez',' Ma. Angeli','F','BSCS',2014,2021,NULL,NULL,'mfvaldez1@up.edu.ph',NULL),('2014-43917','Calvo','Juan Bernardo','P','BSN',2014,2019,NULL,NULL,'jpcalvo@up.edu.ph',NULL),('2014-45784','Saquido','Ma Celina Joy','M','BACA',2014,2019,NULL,NULL,'mmsaquido@up.edu.ph',NULL),('2014-58721','Alvarez','Vanessa','B','BSABT',2014,2019,NULL,NULL,'vbalvarez@up.edu.ph',NULL),('2014-71019','Dela Cruz','Juanita','T','BSCS',2014,2019,NULL,'9123456789','jdcruz@up.edu.ph',NULL),('2014-72476','Fernandez-Lai','Gayle See','C','BACA',2014,2019,NULL,NULL,'gcfernandezlai@up.edu.ph',NULL),('2015-00750','Fernandez','Jomarey','G','BSCS',2015,2019,NULL,NULL,'jgfernandez@up.edu.ph',NULL),('2015-01298','Cleofe','Andrew','V','BSBIO',2015,2019,NULL,NULL,'avcleofe@up.edu.ph',NULL),('2015-03421','Garcia','Christian','A','BSEE',2015,2020,NULL,NULL,'cagarcia@up.edu.ph',NULL),('2015-03846','Penaflor','Maria Elena','B','BSHE',2015,2019,NULL,NULL,'mbpenaflor@up.edu.ph',NULL),('2015-08721','Calalang','Pinky','A','BSFT',2015,2019,NULL,NULL,'pacalalang@up.edu.ph',NULL),('2015-09322','Avanzado','Gean','M','BSFT',2015,2019,NULL,NULL,'gmavanzado@up.edu.ph',NULL),('2015-09324','Cruz','Shane','A','BSN',2015,2019,NULL,NULL,'sacruz@up.edu.ph',NULL),('2015-09345','Mendoza','Michael','M','BSN',2015,2019,NULL,NULL,'mmmendoza@up.edu.ph',NULL),('2015-09721','Cruzat','Michael','M','BSN',2015,2019,NULL,NULL,'mmcruzat@up.edu.ph',NULL),('2015-09732','Avenido','Adrian','M','BSCS',2015,2019,NULL,NULL,'amavenido@up.edu.ph',NULL),('2015-09734','Abello','Cholo','F','BSCS',2015,2019,NULL,NULL,'cfabello@up.edu.ph',NULL),('2015-10169','Gracia','Jane','M','BSA',2015,2019,NULL,NULL,'jmgracia@up.edu.ph',NULL),('2015-10182','Sismaet','Samantha','A','BSF',2015,2019,NULL,NULL,'sasismaet@up.edu.ph',NULL),('2015-10290','Blastique','Joseph Aaron','D','BSCE',2015,2020,NULL,NULL,'adblastique@up.edu.ph',NULL),('2015-12345','Aala','Anjila','L','BSFT',2015,2019,NULL,NULL,'alaala@up.edu.ph',NULL),('2015-12736','Dispo','Anjelle Nicole','A','BSCS',2015,2020,NULL,NULL,'aadispo@up.edu.ph',NULL),('2015-12833','Carandang','Victorienne Jewel','DJ','BASOC',2015,2019,NULL,NULL,'vdcarandang@up.edu.ph',NULL),('2015-12878','Mackay','Donna Lyn','B','BSECON',2015,2020,NULL,NULL,'dbmackay@up.edu.ph',NULL),('2015-12983','Batangantang','Judd','N','BSCE',2015,2020,NULL,NULL,'jnbatangantang@up.edu.ph',NULL),('2015-17363','Tesoro','John Vincent','A','BSHE',2015,2019,NULL,NULL,'jatesoro@up.edu.ph',NULL),('2015-22039','Balagon','Kirby','A','BSAM',2015,2019,NULL,NULL,'kabalagon@up.edu.ph',NULL),('2015-22995','Bulatao','Hera Bianca','C','BSABE',2015,2020,NULL,NULL,'hcbulatao@up.edu.ph',NULL),('2015-23652','Abanilla','Maria Angelica','B','BAPHIL',2015,2020,NULL,NULL,'mbabanilla@up.edu.ph',NULL),('2015-23847','Avena',' Dominique','R','BSBIO',2015,2021,NULL,NULL,'dravena@up.edu.ph',NULL),('2015-27472','Berenguel','Frenze Adrikke','A','BSCE',2015,2020,NULL,NULL,'faberenguel@up.edu.ph',NULL),('2015-28463','Cabarco','Renzo Miguel','B','BSCS',2015,2021,NULL,NULL,'rbcabarco@up.edu.ph',NULL),('2015-29721','Garcia','Kristen','F','BSFT',2015,2019,NULL,NULL,'kfgarcia@up.edu.ph',NULL),('2015-32721','Sotalbo','Kaizel','A','BSN',2015,2019,NULL,NULL,'kasotalbo@up.edu.ph',NULL),('2015-34660','Angustia','Ericka Mae','T','BSECON',2015,2019,NULL,NULL,'etangustia@up.edu.ph',NULL),('2015-37467','Lit','Rowen Charles','I','BSF',2015,2020,NULL,NULL,'rilit@up.edu.ph',NULL),('2015-39106','Cruz','Mark Christian','C','BSCE',2015,2021,NULL,NULL,'mccruz@up.edu.ph',NULL),('2015-44721','Villegas','Joaquim','H','BSN',2012,2017,NULL,NULL,'jhvillegas@up.edu.ph',NULL),('2015-46583','Chua','Justine Angela','O','BSFT',2015,2019,NULL,NULL,'jochua@up.edu.ph',NULL),('2015-47293','Rodriguez','Jireh James','C','BSF',2015,2020,NULL,NULL,'jcrodriguez@up.edu.ph',NULL),('2015-47583','Ferrer','Faith Irish','P','BAPHIL',2015,2020,NULL,NULL,'fpferrer@up.edu.ph',NULL),('2015-49204','Tariq','Raheal','A','BSEE',2015,2021,NULL,NULL,'ratariq@up.edu.ph',NULL),('2015-56325','Alipio','Maria Cecilia','B','BSHE',2015,2019,NULL,NULL,'mbalipio@up.edu.ph',NULL),('2015-64927','Diones','Ron Jacob','S','BSCE',2015,2020,NULL,NULL,'rsdiones@up.edu.ph',NULL),('2015-65839','Sales','Gabrielle Angela','D','BACA',2015,2019,NULL,NULL,'gdsales@up.edu.ph',NULL),('2015-67532','Ampuan','Charl','M','BSN',2015,2019,NULL,NULL,'cmampuan@up.edu.ph',NULL),('2015-74639','Pantastico','Michael Jeffrey','P','BSECON',2015,2019,NULL,NULL,'mppantastico@up.edu.ph',NULL),('2015-83641','Villanueva','Steven Kyle','DC','BSAM',2015,2020,NULL,NULL,'sdvillanueva@up.edu.ph',NULL),('2015-85639','Puente','Beatrice','P','BAPHIL',2015,2019,NULL,NULL,'bppuente@up.edu.ph',NULL),('2015-90347','Bardillon','John Lendle','T','BSF',2015,2020,NULL,NULL,'jtbardillon@up.edu.ph',NULL),('2015-95875','Batangantang','Chelsie','L','BSA',2015,2019,NULL,NULL,'clbatangantang@up.edu.ph',NULL),('2016-00540','Manalac','Jose Enrico','F','BSCS',2016,2020,NULL,NULL,'jfmanalac@up.edu.ph',NULL),('2016-00913','Nacu','Moshe','F','BSCS',2016,2020,NULL,NULL,'mfnacu@up.edu.ph',NULL),('2016-08721','Nunez','Lyka','M','BSN',2016,2021,NULL,NULL,'lmnunez@up.edu.ph',NULL),('2016-08821','Palaganas','Elijah','M','BSCE',2016,2021,NULL,NULL,'empalaganas@up.edu.ph',NULL),('2016-09112','Lopez','Jane','A','BSE',2016,2020,NULL,NULL,'jalopez@up.edu.ph',NULL),('2016-09123','Juan','Sean','M','BSHE',2016,2020,NULL,NULL,'smjuan@up.edu.ph',NULL),('2016-34567','Padua','Pia Ysabel','T','BSCHEM',2016,2021,NULL,NULL,'ptpadua@up.edu.ph',NULL),('2017-23846','Deriquito','Hannah','O','BSFT',2017,2022,NULL,NULL,'hoderiquito@up.edu.ph',NULL),('2017-28347','Peralta',' Patricia Luisa','O','BSBIO',2017,2021,NULL,NULL,'poperalta@up.edu.ph',NULL),('2017-48572','Tarabi','Julian Camilo','B','DVM',2017,2023,NULL,NULL,'jbtarabi@up.edu.ph',NULL),('2017-67238','De Guzman','Cate','R','BSHE',2017,2021,NULL,NULL,'crdeguzman@up.edu.ph',NULL);
/*!40000 ALTER TABLE `alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive`
--

DROP TABLE IF EXISTS `archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archive` (
  `stdno` varchar(10) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `degree` varchar(6) NOT NULL,
  `batch` int(4) NOT NULL,
  `yeargraduated` int(4) NOT NULL,
  `occupation` varchar(35) DEFAULT NULL,
  `contactno` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `empno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`stdno`),
  KEY `archive_empno_fk` (`empno`),
  CONSTRAINT `archive_empno_fk` FOREIGN KEY (`empno`) REFERENCES `admin` (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive`
--

LOCK TABLES `archive` WRITE;
/*!40000 ALTER TABLE `archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `eventno` int(5) NOT NULL,
  `eventname` varchar(50) DEFAULT NULL,
  `eventdate` date DEFAULT NULL,
  `collegeflag` int(1) DEFAULT NULL,
  `collegename` varchar(30) DEFAULT NULL,
  `universityflag` int(1) DEFAULT NULL,
  `universityname` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`eventno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventalumni`
--

DROP TABLE IF EXISTS `eventalumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventalumni` (
  `stdno` varchar(10) NOT NULL,
  `eventno` int(5) NOT NULL,
  PRIMARY KEY (`eventno`),
  KEY `eventalumni_stdno_fk` (`stdno`),
  CONSTRAINT `eventalumni_stdno_fk` FOREIGN KEY (`stdno`) REFERENCES `alumni` (`stdno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventalumni`
--

LOCK TABLES `eventalumni` WRITE;
/*!40000 ALTER TABLE `eventalumni` DISABLE KEYS */;
INSERT INTO `eventalumni` VALUES ('1999-12345',12),('2008-73619',9),('2013-71795',16),('2013-71795',30),('2013-71795',32),('2013-71795',55),('2013-75846',1),('2013-75846',62),('2013-75846',74),('2014-10323',24),('2014-10323',56),('2014-10323',76),('2014-11779',6),('2014-11779',11),('2014-11779',29),('2014-11779',35),('2014-11779',52),('2014-11802',28),('2014-21448',42),('2014-21448',44),('2014-27734',3),('2014-27734',25),('2014-27734',33),('2014-27734',48),('2014-27734',66),('2014-33156',27),('2014-33156',39),('2014-33156',45),('2014-33156',46),('2014-33156',78),('2014-33156',80),('2014-33156',91),('2014-45784',7),('2014-45784',13),('2014-45784',38),('2014-45784',47),('2014-45784',50),('2014-45784',73),('2014-71019',14),('2014-71019',95),('2014-72476',84),('2014-72476',89),('2014-72476',94),('2014-72476',100),('2015-17363',2),('2015-17363',4),('2015-17363',18),('2015-17363',26),('2015-17363',40),('2015-17363',41),('2015-17363',49),('2015-17363',58),('2015-17363',68),('2015-17363',75),('2015-17363',81),('2015-17363',88),('2015-17363',92),('2015-17363',99),('2015-22039',34),('2015-22039',43),('2015-22039',64),('2015-22039',70),('2015-22039',72),('2015-22995',51),('2015-22995',69),('2015-23652',31),('2015-23652',36),('2015-23652',53),('2015-23652',67),('2015-23652',71),('2015-23652',85),('2015-83641',8),('2015-83641',63),('2015-83641',79),('2015-83641',96),('2015-83641',98),('2015-95875',21),('2015-95875',22),('2016-00540',17),('2016-00540',20),('2016-00540',23),('2016-00540',65),('2016-00540',82),('2016-00540',97),('2016-00913',19),('2016-00913',57),('2016-00913',60),('2016-00913',83),('2016-00913',86),('2016-00913',93),('2017-23846',37),('2017-23846',54),('2017-23846',77),('2017-67238',5),('2017-67238',10),('2017-67238',15),('2017-67238',59),('2017-67238',61),('2017-67238',87),('2017-67238',90);
/*!40000 ALTER TABLE `eventalumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry` (
  `company_name` varchar(35) DEFAULT NULL,
  `companyno` int(10) NOT NULL,
  PRIMARY KEY (`companyno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11  0:06:15
