-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: cmpe272
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` int(11) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'San Jose'),(2,'San Fransisco'),(3,'Los Angeles'),(4,'Irvine'),(5,'San Diego'),(6,'New York'),(7,'Boston'),(8,'Houston'),(9,'Chicago'),(10,'United States');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `data_id` int(11) DEFAULT NULL,
  `job_type_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `sub_jobtype_id` int(11) DEFAULT NULL,
  `Base_Salary` int(11) DEFAULT NULL,
  `Social_Security` int(11) DEFAULT NULL,
  `Bonuses` int(11) DEFAULT NULL,
  `Healthcare` int(11) DEFAULT NULL,
  `Pension` int(11) DEFAULT NULL,
  `Total_of_All` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,2,10,1,150334,9644,8092,6592,9981,186069),(2,2,10,2,350937,12611,12122,6592,16695,402225),(3,2,10,3,135991,9321,120,6592,8575,161824),(4,2,10,4,204146,10355,3331,6592,13071,239362),(5,2,10,5,97089,7461,443,6592,6145,118608),(6,2,1,1,177439,10058,9551,6592,11780,217103),(7,2,1,2,414211,13561,14308,6592,16695,469224),(8,2,1,3,160510,9676,142,6592,10121,188487),(9,2,1,4,240953,10898,3932,6592,15428,280007),(10,2,1,5,114594,8806,523,6592,7252,138803),(11,2,2,1,183573,10152,9882,6592,12188,224128),(12,2,2,2,428529,13775,14802,6592,16695,484383),(13,2,2,3,166058,9757,147,6592,10471,194521),(14,2,2,4,249282,11021,4067,6592,15961,289203),(15,2,2,5,118555,9074,541,6592,7503,143337),(16,2,3,1,164826,9866,8873,6592,10943,202663),(17,2,3,2,384767,13119,13291,6592,16695,438047),(18,2,3,3,149100,9511,132,6592,9402,176080),(19,2,3,4,223825,10645,3652,6592,14331,261092),(20,2,3,5,106448,8180,486,6592,6737,129405),(21,2,6,1,177259,10056,9542,6592,11768,216898),(22,2,6,2,413790,13554,14293,6592,16695,468777),(23,2,6,3,160347,9674,142,6592,10111,188310),(24,2,6,4,240708,10894,3928,6592,15412,279736),(25,2,6,5,114477,8797,523,6592,7245,138669),(26,2,7,1,162361,9828,8740,6592,10779,199840),(27,2,7,2,379012,13033,13092,6592,16695,431953),(28,2,7,3,146870,9478,130,6592,9261,173654),(29,2,7,4,220477,10596,3597,6592,14117,257396),(30,2,7,5,104856,8058,479,6592,6636,127569),(31,2,9,1,158091,9763,8510,6592,10496,194951),(32,2,9,2,369045,12883,12748,6592,16695,421399),(33,2,9,3,143008,9422,126,6592,9017,152025),(34,2,9,4,214680,10511,3503,6592,13746,250996),(35,2,9,5,102098,7846,466,6592,6462,124387),(36,2,4,1,166224,9887,8948,6592,11036,204264),(37,2,4,2,388031,13168,13404,6592,16695,441503),(38,2,4,3,150365,9529,133,6592,9481,177454),(39,2,4,4,225724,10673,3683,6592,14453,263190),(40,2,4,5,107351,8250,490,6592,6794,130448),(41,2,8,1,151236,9658,8141,6592,10041,187102),(42,2,8,2,353042,12643,12195,6592,16695,404454),(43,2,8,3,136807,9332,121,6592,8626,162710),(44,2,8,4,205371,10373,3351,6592,13149,240714),(45,2,8,5,97671,7506,446,6592,6181,119279),(46,1,1,6,74376,5791,1320,6592,4769,105570),(47,1,1,7,73794,5722,1004,6592,4712,104396),(48,1,1,8,76393,5956,1464,6592,4905,108396),(49,1,1,9,72310,5558,347,6592,4577,101596),(50,1,1,10,79570,6257,2217,6592,5153,113535),(51,1,1,11,60654,4640,0,6592,3821,85901),(52,1,2,6,76947,5991,1366,6592,4934,108991),(53,1,2,7,76345,5920,1039,6592,4875,107777),(54,1,2,8,79034,6162,1515,6592,5075,111916),(55,1,2,9,74810,5750,359,6592,4736,104880),(56,1,2,10,82321,6473,2294,6592,5331,117231),(57,1,2,11,62751,4800,0,6592,3953,88643),(58,1,5,6,67041,5220,1190,6592,4299,95808),(59,1,5,7,66517,5158,905,6592,4248,94751),(60,1,5,8,68859,5369,1320,6592,4421,98356),(61,1,5,9,65179,5010,312,6592,4126,92227),(62,1,5,10,71723,5640,1998,6592,4644,102988),(63,1,5,11,54672,4182,0,6592,3444,78080),(64,1,4,6,69761,5431,1238,6592,4473,99428),(65,1,4,7,69212,5367,943,6592,4420,98325),(66,1,4,8,71654,5587,1374,6592,4601,102081),(67,1,4,9,67826,5213,323,6592,4293,95701),(68,1,4,10,74636,5868,2074,6592,4833,106896),(69,1,4,11,56886,4352,0,6592,3584,80975),(70,1,3,6,69089,5379,1226,6592,4430,98534),(71,1,3,7,68549,5315,933,6592,4377,97444),(72,1,3,8,70963,5533,1360,6592,4556,101160),(73,1,3,9,67170,5163,322,6592,4252,94843),(74,1,3,10,73914,5812,2059,6592,4786,105933),(75,1,3,11,56343,4310,0,6592,3550,80264),(76,1,6,6,74391,5792,1321,6592,4770,105591),(77,1,6,7,73807,5723,1005,6592,4713,104414),(78,1,6,8,76411,5957,1465,6592,4906,108420),(79,1,6,9,72329,5559,344,6592,4578,101617),(80,1,6,10,79591,6258,2211,6592,5154,113554),(81,1,6,11,60663,4641,0,6592,3822,85913),(82,1,7,6,68139,5305,1210,6592,4369,97270),(83,1,7,7,67603,5242,921,6592,4317,96192),(84,1,7,8,69989,5457,1342,6592,4494,99862),(85,1,7,9,66250,5092,315,6592,4194,93630),(86,1,7,10,72901,5732,2025,6592,4720,104564),(87,1,7,11,55564,4251,0,6592,3501,79246),(88,1,8,6,63470,4942,1127,6592,4070,91057),(89,1,8,7,62971,4883,858,6592,4021,90053),(90,1,8,8,65193,5083,1250,6592,4186,93471),(91,1,8,9,61710,4743,293,6592,3906,87666),(92,1,8,10,67906,5339,1887,6592,4397,97851),(93,1,8,11,51757,3959,0,6592,3261,74268),(94,1,9,6,66347,5166,1178,6592,4254,94886),(95,1,9,7,65826,5104,897,6592,4204,93836),(96,1,9,8,68148,5313,1306,6592,4376,97409),(97,1,9,9,64508,4958,307,6592,4083,91341),(98,1,9,10,70984,5581,1972,6592,4596,101988),(99,1,9,11,54103,4139,0,6592,3408,77335),(100,1,10,6,63092,4912,1120,6592,4045,90553),(101,1,10,7,62596,4854,853,6592,3997,89555),(102,1,10,8,64804,5053,1242,6592,4161,92953),(103,1,10,9,61342,4715,292,6592,3883,87183),(104,1,10,10,67501,5307,1875,6592,4371,97307),(105,1,10,11,51448,3936,0,6592,3241,73846),(106,3,10,12,34880,2726,758,6592,2245,47201),(107,3,10,13,51808,4203,3136,6592,3462,69201),(108,3,10,14,105503,8737,8707,6592,7195,136734),(109,3,10,15,64204,5824,11926,6592,4796,93342),(110,3,10,16,111156,9094,9330,6592,7591,143763),(111,3,10,17,103570,8552,8222,6592,7043,133979),(112,3,1,12,42013,3214,925,6592,2647,55391),(113,3,1,13,54876,4198,3825,6592,3457,72948),(114,3,1,14,52911,4048,1063,6592,3333,67947),(115,3,1,15,71276,5453,19394,6592,4490,107205),(116,3,1,16,120339,9092,9318,6592,7581,152922),(117,3,1,17,111651,8541,8212,6592,7034,142030),(118,3,2,12,43465,3325,925,6592,2738,57045),(119,3,2,13,67009,5126,3825,6592,4222,86774),(120,3,2,14,64610,4943,1299,6592,3333,80777),(121,3,2,15,63353,5453,19394,6592,4490,99282),(122,3,2,16,146946,9478,11378,6592,9258,183652),(123,3,2,17,136338,9324,10027,6592,8589,170870),(124,3,5,12,37869,2897,806,6592,2386,50550),(125,3,5,13,58383,4466,3332,6592,3678,76451),(126,3,5,14,56292,4306,1131,6592,3546,71867),(127,3,5,15,75831,5801,20634,6592,4777,113635),(128,3,5,16,128029,9203,9913,6592,8066,161803),(129,3,5,17,118786,9069,8736,6592,7484,150667),(130,3,7,12,37671,2944,819,6592,2425,50451),(131,3,7,13,55953,4540,3387,6592,3738,74210),(132,3,7,14,113943,9136,9404,6592,7771,146846),(133,3,7,15,69341,6290,12881,6592,5180,100284),(134,3,7,16,120049,9234,10076,6592,8198,154149),(135,3,7,17,111855,9098,8880,6592,7606,144031),(136,3,3,12,37869,2897,806,6592,2386,50550),(137,3,3,13,54876,4198,3132,6592,3457,72255),(138,3,3,14,58012,4438,1166,6592,3655,73863),(139,3,3,15,78147,5978,21264,6592,4923,116904),(140,3,3,16,120339,9092,9318,6592,7581,152922),(141,3,3,17,111651,8541,8212,6592,7034,142030),(142,3,4,12,38567,3015,838,6592,2483,51495),(143,3,4,13,57284,4648,3468,6592,3827,75819),(144,3,4,14,116654,9178,9628,6592,7956,150008),(145,3,4,15,70991,6440,13187,6592,5303,102513),(146,3,4,16,122905,9279,10316,6592,8393,157485),(147,3,4,17,114517,9139,9091,6592,7787,147126),(148,3,9,12,36680,2867,797,6592,2361,49297),(149,3,9,13,54482,4420,3298,6592,3640,72432),(150,3,9,14,110947,9088,9157,6592,7567,143351),(151,3,9,15,67517,6125,12542,6592,5044,97820),(152,3,9,16,116892,116892,9811,6592,7982,258169),(153,3,9,17,108914,8993,8647,6592,7406,140552),(154,3,8,12,35090,2743,762,6592,2259,47446),(155,3,8,13,52119,4228,3155,6592,3482,69576),(156,3,8,14,106136,8789,8760,6592,7238,137515),(157,3,8,15,64589,5859,11998,6592,4825,93863),(158,3,8,16,111823,9105,9385,6592,7636,144541),(159,3,8,17,104191,8603,8272,6592,7085,134743),(160,3,6,12,41128,3215,894,6592,2647,54476),(161,3,6,13,61087,4956,3698,6592,7974,84307),(162,3,6,14,124398,9300,10267,6592,8484,159041),(163,3,6,15,75703,6867,14062,6592,5655,108879),(164,3,6,16,131064,9407,11000,6592,8950,167013),(165,3,6,17,122119,9258,9695,6592,8304,155968);
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_types`
--

DROP TABLE IF EXISTS `job_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_types` (
  `job_id` int(11) DEFAULT NULL,
  `job_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_types`
--

LOCK TABLES `job_types` WRITE;
/*!40000 ALTER TABLE `job_types` DISABLE KEYS */;
INSERT INTO `job_types` VALUES (1,'Engineering'),(2,'Healthcare'),(3,'Financial Services'),(4,'Defence'),(5,'Restaurant and Food Services');
/*!40000 ALTER TABLE `job_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_details`
--

DROP TABLE IF EXISTS `project_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_type` varchar(500) NOT NULL,
  `location` varchar(500) NOT NULL,
  `sub_jobtype` varchar(500) NOT NULL,
  `salary` varchar(500) NOT NULL,
  `social_security` varchar(500) NOT NULL,
  `bonuses` varchar(500) NOT NULL,
  `healthcare` varchar(500) NOT NULL,
  `pension` varchar(500) NOT NULL,
  `total_of_all` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_details`
--

LOCK TABLES `project_details` WRITE;
/*!40000 ALTER TABLE `project_details` DISABLE KEYS */;
INSERT INTO `project_details` VALUES (1,'Financial Services, Banking, Insurance','San Jose','Accounting Clerk - Financial Services','$ 42,013','$ 3,214','$ 925','$ 6,970','$ 2,647','$ 55,769'),(2,'Financial Services, Banking, Insurance','San Jose','Branch Manager - Banking','$ 54,876','$ 4,198','$ 3,825','$ 7,175','$ 3,457','$ 73,531'),(3,'Financial Services, Banking, Insurance','San Jose','Financial Analyst - Banking','$ 52,911','$ 4,048','$ 1,063','$ 7,154','$ 3,333','$ 68,509'),(4,'Financial Services, Banking, Insurance','San Jose','Trader - Banking','$ 71,276','$ 5,453','$ 19,394','$ 7,349','$ 4,490','$ 88,568'),(5,'Financial Services, Banking, Insurance','San Jose','Auditing Manager - Insurance','$ 120,339','$ 9,092','$ 9,318','$ 7,870','$ 7,581','$ 154,200'),(6,'Financial Services, Banking, Insurance','San Jose','Risk Manager - Insurance','$ 111,651','$ 8,541','$ 8,212','$ 7,778','$ 7,034','$ 143,216'),(7,'Financial Services, Banking, Insurance','San Fransciso','Accounting Clerk - Financial Services','$ 43,465','$ 3,325','$ 925','$ 6,983','$ 2,738','$ 57,436'),(8,'Financial Services, Banking, Insurance','San Fransciso','Branch Manager - Banking','$ 67,009','$ 5,126','$ 3,825','$ 7,195','$ 4,222','$ 87,377'),(9,'Financial Services, Banking, Insurance','San Fransciso','Financial Analyst - Banking','$ 64,610','$ 4,943','$ 1,299','$ 7,173','$ 3,333','$ 81,358'),(10,'Financial Services, Banking, Insurance','San Fransciso','Trader - Banking','$ 63,353','$ 5,453','$ 19,394','$ 7,375','$ 4,490','$ 100,065'),(11,'Financial Services, Banking, Insurance','San Fransciso','Auditing Manager - Insurance','$ 146,946','$ 9,478','$ 11,378','$ 7,915','$ 9,258','$ 173,597'),(12,'Financial Services, Banking, Insurance','San Fransciso','Risk Manager - Insurance','$ 136,338','$ 9,324','$ 10,027','$ 7,819','$ 8,589','$ 162,070'),(13,'Financial Services, Banking, Insurance','San Diego','Accounting Clerk - Financial Services','$ 37,869','$ 2,897','$ 806','$ 6,933','$ 2,386','$ 50,891'),(14,'Financial Services, Banking, Insurance','San Diego','Branch Manager - Banking','$ 58,383','$ 4,466','$ 3,332','$ 7,195','$ 3,678','$ 77,054'),(15,'Financial Services, Banking, Insurance','San Diego','Financial Analyst - Banking','$ 56,292','$ 4,306','$ 1,131','$ 7,099','$ 3,546','$ 72,374'),(16,'Financial Services, Banking, Insurance','San Diego','Trader - Banking','$ 75,831','$ 5,801','$ 20,634','$ 7,274','$ 4,777','$ 114,317'),(17,'Financial Services, Banking, Insurance','San Diego','Auditing Manager - Insurance','$ 128,029','$ 9,203','$ 9,913','$ 7,744','$ 8,066','$ 153,042'),(18,'Financial Services, Banking, Insurance','San Diego','Risk Manager - Insurance','$ 118,786','$ 9,069','$ 8,736','$ 7,661','$ 7,484','$ 143,000'),(19,'Financial Services, Banking, Insurance','Mountain View','Accounting Clerk - Financial Services','$ 42,013','$ 3,214','$ 894','$ 6,970','$ 2,647','$ 55,738'),(20,'Financial Services, Banking, Insurance','Mountain View','Branch Manager - Banking','$ 64,771','$ 4,955','$ 3,697','$ 7,175','$ 4,081','$ 84,679'),(21,'Financial Services, Banking, Insurance','Mountain View','Financial Analyst - Banking','$ 62,451','$ 4,778','$ 1,255','$ 7,154','$ 3,934','$ 79,572'),(22,'Financial Services, Banking, Insurance','Mountain View','Trader - Banking','$ 84,127','$ 6,436','$ 22,891','$ 7,349','$ 5,300','$ 126,103'),(23,'Financial Services, Banking, Insurance','Mountain View','Auditing Manager - Insurance','$ 142,036','$ 9,407','$ 10,998','$ 7,870','$ 8,948','$ 168,261'),(24,'Financial Services, Banking, Insurance','Mountain View','Risk Manager - Insurance','$ 131,782','$ 9,258','$ 9,692','$ 7,778','$ 8,302','$ 157,120'),(25,'Financial Services, Banking, Insurance','Los Angeles','Accounting Clerk - Financial Services','$ 37,869','$ 2,897','$ 806','$ 6,933','$ 2,386','$ 50,891'),(26,'Financial Services, Banking, Insurance','Los Angeles','Branch Manager - Banking','$ 54,876','$ 4,198','$ 3,132','$ 7,086','$ 3,457','$ 72,749'),(27,'Financial Services, Banking, Insurance','Los Angeles','Financial Analyst - Banking','$ 58,012','$ 4,438','$ 1,166','$ 7,114','$ 3,655','$ 74,385'),(28,'Financial Services, Banking, Insurance','Los Angeles','Trader - Banking','$ 78,147','$ 5,978','$ 21,264','$ 7,295','$ 4,923','$ 117,607'),(29,'Financial Services, Banking, Insurance','Los Angeles','Auditing Manager - Insurance','$ 120,339','$ 9,092','$ 9,318','$ 7,675','$ 7,581','$ 144,687'),(30,'Financial Services, Banking, Insurance','Los Angeles','Risk Manager - Insurance','$ 111,651','$ 8,541','$ 8,212','$ 7,597','$ 7,034','$ 134,823');
/*!40000 ALTER TABLE `project_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_jobtype`
--

DROP TABLE IF EXISTS `sub_jobtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_jobtype` (
  `sub_jobtype_id` int(11) DEFAULT NULL,
  `job_type_fk` int(11) DEFAULT NULL,
  `sub_jobtype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_jobtype`
--

LOCK TABLES `sub_jobtype` WRITE;
/*!40000 ALTER TABLE `sub_jobtype` DISABLE KEYS */;
INSERT INTO `sub_jobtype` VALUES (1,2,'Dentist'),(2,2,'Surgeon'),(3,2,'Chiropractor'),(4,2,'Psychiatrist'),(5,2,'Nurse Practitioner'),(6,1,'Mechanical Engineer'),(7,1,'Software Engineer'),(8,1,'Electrical Engineer'),(9,1,'Civil Engineer'),(10,1,'Chemical Engineer'),(11,1,'Biomedical Engineer'),(12,3,'Accounting Clerk'),(13,3,'Branch Manager'),(14,3,'Financial Analyst'),(15,3,'Trader'),(16,3,'Auditing Manager'),(17,3,'Risk Manager');
/*!40000 ALTER TABLE `sub_jobtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-12 20:29:20
