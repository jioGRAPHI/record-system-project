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
INSERT INTO `event` VALUES (1,'porta volutpat quam','2011-10-06',1,'Sales',1,'faucibus'),(2,'mi in porttitor','2012-12-15',1,'Legal',1,'et'),(3,'facilisi cras','2013-07-15',1,'Product Management',1,'odio'),(4,'pede libero quis','2016-05-03',1,'Engineering',1,'donec odio'),(5,'ac enim','2018-09-23',1,'Sales',1,'sit'),(6,'id','2012-01-07',1,'Product Management',1,'vestibulum velit'),(7,'semper est','2011-07-30',1,'Marketing',1,'imperdiet nullam'),(8,'mauris vulputate','2018-04-18',1,'Services',1,'nec'),(9,'varius integer','2018-07-28',1,'Product Management',1,'ultrices erat'),(10,'justo etiam','2012-05-12',1,'Marketing',1,'aliquam'),(11,'hac habitasse platea','2012-07-31',1,'Marketing',1,'mattis'),(12,'morbi','2015-03-07',1,'Training',1,'vel'),(13,'ipsum praesent','2018-01-19',1,'Legal',1,'dictumst aliquam'),(14,'blandit nam nulla','2017-10-07',1,'Business Development',1,'nec'),(15,'hac habitasse','2015-08-16',1,'Sales',1,'vestibulum'),(16,'laoreet ut rhoncus','2013-10-21',1,'Product Management',1,'sapien'),(17,'justo','2011-04-02',1,'Sales',1,'elementum eu'),(18,'donec','2012-04-14',1,'Product Management',1,'lorem'),(19,'donec quis','2012-07-08',1,'Services',1,'tempor'),(20,'nisi nam','2016-10-29',1,'Human Resources',1,'eget'),(21,'enim leo','2010-12-10',1,'Legal',1,'duis'),(22,'in libero','2017-06-21',1,'Research and Development',1,'ac tellus'),(23,'nisl','2015-05-09',1,'Legal',1,'ultrices'),(24,'id','2012-05-12',1,'Services',1,'in porttitor'),(25,'aliquet at','2013-02-08',1,'Legal',1,'sed'),(26,'felis sed','2018-09-20',1,'Research and Development',1,'sapien cum'),(27,'nibh in quis','2011-05-18',1,'Sales',1,'integer tincidunt'),(28,'at','2013-12-11',1,'Services',1,'dis parturient'),(29,'id turpis integer','2013-10-29',1,'Legal',1,'molestie lorem'),(30,'cubilia curae','2012-07-31',1,'Training',1,'at'),(31,'justo eu massa','2018-08-21',1,'Marketing',1,'vivamus'),(32,'proin','2012-11-29',1,'Business Development',1,'luctus et'),(33,'sit amet diam','2015-12-16',1,'Marketing',1,'sed'),(34,'vivamus in felis','2018-07-22',1,'Support',1,'auctor'),(35,'aliquet massa','2013-08-07',1,'Services',1,'potenti'),(36,'viverra pede','2011-10-26',1,'Research and Development',1,'nunc nisl'),(37,'vel pede','2011-01-02',1,'Engineering',1,'cras'),(38,'orci nullam','2011-04-22',1,'Business Development',1,'blandit'),(39,'lobortis','2011-11-30',1,'Product Management',1,'consequat'),(40,'rutrum nulla','2017-03-28',1,'Product Management',1,'proin'),(41,'rhoncus','2018-02-22',1,'Services',1,'sit'),(42,'dolor morbi','2013-10-31',1,'Training',1,'sem mauris'),(43,'sapien varius ut','2013-08-16',1,'Sales',1,'sodales'),(44,'donec vitae','2017-04-13',1,'Legal',1,'odio'),(45,'etiam','2013-03-26',1,'Engineering',1,'tortor'),(46,'nisl','2017-04-14',1,'Research and Development',1,'ipsum dolor'),(47,'ante','2017-08-10',1,'Sales',1,'rutrum'),(48,'sodales scelerisque','2012-05-12',1,'Research and Development',1,'justo'),(49,'suscipit nulla','2018-07-20',1,'Legal',1,'augue'),(50,'nullam sit','2012-03-16',1,'Marketing',1,'posuere'),(51,'quam sollicitudin vitae','2011-04-10',1,'Support',1,'mauris'),(52,'praesent blandit','2015-10-09',1,'Human Resources',1,'accumsan'),(53,'blandit mi in','2011-09-26',1,'Business Development',1,'tempus sit'),(54,'lobortis','2013-01-11',1,'Engineering',1,'erat'),(55,'felis eu','2018-07-07',1,'Engineering',1,'nibh in'),(56,'pede','2017-05-23',1,'Research and Development',1,'id turpis'),(57,'aliquam','2014-02-08',1,'Legal',1,'amet'),(58,'nisi','2012-02-26',1,'Engineering',1,'praesent'),(59,'sapien','2012-08-22',1,'Business Development',1,'et'),(60,'erat eros','2012-08-06',1,'Product Management',1,'nec euismod'),(61,'tempor convallis','2012-02-06',1,'Business Development',1,'amet eros'),(62,'fusce','2014-11-24',1,'Marketing',1,'nisl'),(63,'curae','2016-10-09',1,'Accounting',1,'curabitur gravida'),(64,'in sapien','2012-02-27',1,'Legal',1,'neque aenean'),(65,'lacus purus','2013-09-09',1,'Training',1,'ligula'),(66,'ullamcorper','2014-11-21',1,'Human Resources',1,'in hac'),(67,'morbi quis','2017-08-28',1,'Business Development',1,'euismod scelerisque'),(68,'ipsum dolor','2018-11-12',1,'Legal',1,'id justo'),(69,'ut','2016-11-17',1,'Sales',1,'lorem'),(70,'tempus semper','2017-03-27',1,'Human Resources',1,'vitae'),(71,'nunc','2012-05-07',1,'Research and Development',1,'tortor'),(72,'nulla','2011-04-29',1,'Accounting',1,'at velit'),(73,'ipsum','2017-05-31',1,'Sales',1,'bibendum felis'),(74,'amet','2014-10-23',1,'Accounting',1,'sapien'),(75,'placerat','2012-10-14',1,'Accounting',1,'amet'),(76,'id turpis','2012-06-28',1,'Support',1,'quisque'),(77,'id','2011-01-22',1,'Human Resources',1,'vulputate'),(78,'semper porta volutpat','2012-12-02',1,'Legal',1,'ut erat'),(79,'odio cras mi','2013-07-09',1,'Legal',1,'elementum'),(80,'blandit lacinia','2016-04-16',1,'Business Development',1,'nec euismod'),(81,'integer ac neque','2012-10-26',1,'Accounting',1,'habitasse'),(82,'sapien','2011-07-16',1,'Sales',1,'lectus pellentesque'),(83,'nascetur','2016-02-18',1,'Services',1,'lacus curabitur'),(84,'nulla','2012-05-26',1,'Accounting',1,'blandit ultrices'),(85,'nulla mollis molestie','2017-08-12',1,'Engineering',1,'turpis'),(86,'nibh fusce lacus','2014-03-03',1,'Sales',1,'ipsum dolor'),(87,'diam cras','2016-09-28',1,'Training',1,'quis libero'),(88,'lacinia eget tincidunt','2018-03-18',1,'Accounting',1,'elit'),(89,'ut rhoncus','2016-12-18',1,'Marketing',1,'integer'),(90,'nullam varius nulla','2017-11-20',1,'Training',1,'nibh ligula'),(91,'a ipsum integer','2016-10-24',1,'Accounting',1,'at velit'),(92,'ultrices vel augue','2016-04-07',1,'Sales',1,'nibh in'),(93,'nulla tellus in','2012-07-25',1,'Business Development',1,'sed augue'),(94,'at','2013-04-19',1,'Business Development',1,'massa volutpat'),(95,'cras in purus','2012-05-31',1,'Support',1,'hac'),(96,'lacus purus aliquet','2013-02-05',1,'Sales',1,'justo'),(97,'orci','2015-06-02',1,'Sales',1,'orci'),(98,'at turpis','2018-06-14',1,'Human Resources',1,'turpis integer'),(99,'euismod scelerisque quam','2011-08-25',1,'Product Management',1,'molestie hendrerit'),(100,'curae','2012-03-23',1,'Marketing',1,'natoque penatibus');
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

-- Dump completed on 2018-12-11  0:24:33
