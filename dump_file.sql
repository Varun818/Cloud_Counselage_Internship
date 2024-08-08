-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: internship
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `collegecourses`
--

DROP TABLE IF EXISTS `collegecourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collegecourses` (
  `ID` int NOT NULL,
  `CollegeID` int NOT NULL,
  `CourseID` int NOT NULL,
  PRIMARY KEY (`ID`,`CollegeID`,`CourseID`),
  KEY `CollegeID` (`CollegeID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `collegecourses_ibfk_1` FOREIGN KEY (`CollegeID`) REFERENCES `colleges` (`CollegeID`),
  CONSTRAINT `collegecourses_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collegecourses`
--

LOCK TABLES `collegecourses` WRITE;
/*!40000 ALTER TABLE `collegecourses` DISABLE KEYS */;
INSERT INTO `collegecourses` VALUES (1,1,1),(1,1,2),(1,1,3),(1,1,4),(1,1,5),(1,1,6),(2,2,1),(2,2,3),(2,2,4),(2,2,5),(2,2,6),(2,2,7),(2,2,8),(2,2,9),(3,3,1),(3,3,2),(3,3,5),(3,3,6),(3,3,7),(3,3,8),(3,3,10),(3,3,11),(3,3,12),(4,4,1),(4,4,4),(4,4,5),(4,4,6),(4,4,8),(4,4,10),(4,4,13),(5,5,1),(5,5,4),(5,5,5),(5,5,6),(5,5,8),(5,5,9),(5,5,10),(5,5,14),(5,5,15),(5,5,16),(6,6,1),(6,6,4),(6,6,5),(6,6,6),(6,6,9),(6,6,10),(6,6,14),(6,6,15),(6,6,16),(6,6,17),(7,7,1),(7,7,3),(7,7,4),(7,7,5),(7,7,6),(7,7,7),(7,7,8),(7,7,17),(8,8,1),(8,8,3),(8,8,4),(8,8,5),(8,8,7),(8,8,8),(8,8,17),(9,9,1),(9,9,3),(9,9,4),(9,9,5),(9,9,6),(9,9,17),(10,10,1),(10,10,4),(10,10,5),(10,10,17),(11,11,1),(11,11,4),(11,11,5),(11,11,17),(12,12,1),(12,12,3),(12,12,4),(12,12,5),(12,12,6),(12,12,10),(12,12,17),(13,13,1),(13,13,3),(13,13,4),(13,13,5),(13,13,9),(13,13,17),(14,14,1),(14,14,3),(14,14,4),(14,14,5),(14,14,6),(14,14,9),(14,14,10),(14,14,17),(15,15,1),(15,15,4),(15,15,5),(15,15,6),(15,15,9),(15,15,10),(15,15,17),(16,16,1),(16,16,4),(16,16,5),(16,16,17),(17,17,1),(17,17,3),(17,17,4),(17,17,5),(17,17,17),(18,18,1),(18,18,4),(18,18,5),(19,19,1),(19,19,4),(19,19,5),(19,19,17),(20,20,1),(20,20,4),(20,20,5),(20,20,10),(20,20,17),(21,21,1),(21,21,4),(21,21,5),(21,21,17),(22,22,1),(22,22,4),(22,22,5),(22,22,14),(22,22,17),(23,23,1),(23,23,5),(23,23,17),(24,24,6),(24,24,17),(25,25,6),(25,25,9),(25,25,13),(25,25,17),(26,26,6),(26,26,17),(27,27,6),(28,28,6),(29,29,6),(29,29,17),(30,30,4),(30,30,6),(30,30,9),(31,31,6),(32,32,6),(32,32,18),(33,33,6),(33,33,13),(33,33,17),(33,33,18),(34,34,6),(34,34,17),(35,35,6),(35,35,17),(36,36,6),(36,36,17),(37,37,1),(37,37,4),(37,37,6),(38,38,6),(38,38,17),(39,39,6),(39,39,17),(40,40,6),(41,41,6),(42,42,6),(42,42,17),(43,43,1),(43,43,6),(43,43,9),(43,43,17),(43,43,18),(44,44,6),(44,44,17),(45,45,1),(45,45,4),(45,45,5),(45,45,8),(45,45,10),(45,45,13),(46,46,1),(46,46,4),(46,46,5),(46,46,6),(46,46,9),(46,46,10),(46,46,17),(47,47,1),(47,47,3),(47,47,4),(47,47,5),(47,47,6),(47,47,14),(47,47,16),(47,47,17),(48,48,1),(48,48,4),(48,48,5),(48,48,14),(48,48,17),(49,49,1),(49,49,4),(49,49,5),(49,49,6),(49,49,10),(49,49,17),(50,50,1),(50,50,4),(50,50,5),(50,50,17),(51,51,1),(51,51,4),(51,51,5),(51,51,6),(51,51,17),(52,52,1),(52,52,4),(52,52,5),(52,52,6),(52,52,17),(53,53,1),(53,53,4),(53,53,5),(53,53,6),(53,53,17),(54,54,1),(54,54,4),(54,54,5),(54,54,6),(54,54,10),(54,54,17),(55,55,1),(55,55,3),(55,55,4),(55,55,5),(55,55,6),(55,55,9),(55,55,10),(55,55,14),(55,55,17),(56,56,1),(56,56,4),(56,56,5),(56,56,6),(56,56,14),(56,56,16),(56,56,17),(57,57,1),(57,57,4),(57,57,5),(57,57,6),(57,57,14),(57,57,16),(57,57,17),(58,58,1),(58,58,4),(58,58,5),(58,58,6),(58,58,14),(58,58,17),(59,59,1),(59,59,3),(59,59,4),(59,59,5),(59,59,6),(59,59,14),(59,59,15),(59,59,17),(60,60,1),(60,60,4),(60,60,5),(60,60,6),(60,60,17),(61,61,1),(61,61,4),(61,61,5),(61,61,6),(61,61,14),(61,61,15),(61,61,17),(62,62,1),(62,62,4),(62,62,5),(62,62,6),(62,62,9),(62,62,10),(63,63,1),(63,63,4),(63,63,5),(63,63,10),(63,63,14),(63,63,16),(63,63,17),(64,64,1),(64,64,4),(64,64,5),(64,64,14),(64,64,16),(65,65,1),(65,65,4),(65,65,5),(65,65,6),(65,65,10),(65,65,17),(66,66,1),(66,66,4),(66,66,5),(66,66,6),(66,66,17),(67,67,1),(67,67,5),(68,68,1),(68,68,5),(68,68,17),(69,69,1),(69,69,4),(69,69,5),(69,69,17),(70,70,1),(70,70,4),(70,70,5),(70,70,17),(71,71,1),(71,71,5),(71,71,17),(72,72,1),(72,72,4),(72,72,5),(72,72,17),(73,73,1),(73,73,4),(73,73,5),(73,73,10),(73,73,17),(74,74,1),(74,74,4),(74,74,5),(74,74,17),(75,75,1),(75,75,5),(75,75,17),(76,76,1),(76,76,5),(76,76,6),(77,77,4),(77,77,10),(78,78,1),(78,78,4),(78,78,5),(78,78,9),(78,78,17),(79,79,1),(79,79,5),(79,79,6),(79,79,17),(80,80,1),(80,80,5),(80,80,17),(81,81,1),(81,81,5),(81,81,7),(81,81,8),(81,81,17),(82,82,1),(82,82,5),(82,82,8),(83,83,1),(83,83,4),(83,83,5),(83,83,17),(84,84,1),(84,84,5),(85,85,1),(85,85,5),(86,86,1),(86,86,4),(86,86,5),(86,86,17),(87,87,1),(87,87,17),(88,88,1),(88,88,17),(89,89,1),(89,89,5),(89,89,17),(90,90,1),(90,90,4),(90,90,5),(90,90,6),(90,90,9),(91,91,1),(91,91,5),(91,91,17),(92,92,1),(92,92,5),(92,92,9),(92,92,17),(93,93,1),(93,93,17),(94,94,1),(94,94,17),(95,95,1),(95,95,5),(95,95,17),(96,96,1),(96,96,5),(96,96,17),(97,97,1),(97,97,17),(98,98,1),(98,98,5),(99,99,1),(100,100,1);
/*!40000 ALTER TABLE `collegecourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colleges` (
  `CollegeID` int NOT NULL,
  `CollegeName` varchar(255) NOT NULL,
  `CollegeAddress` varchar(255) NOT NULL,
  `CollegePhoneNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`CollegeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
INSERT INTO `colleges` VALUES (1,'IIT Madras','Chennai,Tamil Nadu','044-22578001\r'),(2,'IIT Delhi','Hauz,New Delhi',' 011-2659-7135\r'),(3,'IIT Bombay','Mumbai,Maharashtra','+91 (22) 2572 2545\r'),(4,'IIT Kanpur','Kalyanpur,Kanpur','0512-259 0151\r'),(5,'IIT Roorkee','Roorkee, Uttarakhand','01332-285311\r'),(6,'IIT Kharagpur','Kharagpur, West Bengal','91-3222-255221\r'),(7,'IIT Guwahati','Guwahati,Assam','91-361-2583000\r'),(8,'IIT Hyderabad','Hyderabad,Telangana','040-2301-6001\r'),(9,'IIT Dhanbad','Dhanbad,Jharkhand',' 91-7707018414\r'),(10,'IIT Indore','Indore,Madhya Pradesh','91-7324-306717\r'),(11,'IIT Ropar','Rupnagar,Punjab','(91) 1881-242191\r'),(12,'IIT Mandi','Kamand,Himachal Pradesh','91-1905-267015\r'),(13,'IIT Gandhinagar','Gandhinagar ,Gujarat','079-2395-2800\r'),(14,'IIT Jodhpur','Jodhpur,Rajasthan','(0291) 2801133\r'),(15,'IIT Patna','Patna,Bihar','06115-233 8722\r'),(16,'IIT Bhubaneshwar','Bhubaneshwar,Odisha','+91 674 713 4481\r'),(17,'IIT Tirupati','Tirupati,Andhra Pradesh','0877-2503591\r'),(18,'IIT Palakkad','Palakkad,Kerala','04923 226 300\r'),(19,'IIT Jammu',' Jagti, Jammu and Kashmir','0191-257-0633 \r'),(20,'IIT Dharwad','Dharwad,Karnataka','0836 221 2839\r'),(21,'IIT Bhilai','Bhilai,Chattisgarh','0788-2991609\r'),(22,'IIT Bhu','Bhu,Varanasi,Uttar Pradesh','+91 542 2307002\r'),(23,'IIT Goa','Ponda,Goa','+91 542 2307002\r'),(24,'IIM Calcutta','Kolkata, West Bengal ','2467-9178-1103\r'),(25,'IIM Ahmedabad','Ahmedabad, Gujarat','91-79-71523456\r'),(26,'IIM Bangalore',' Bengaluru,Karnataka','91-80- 26993000\r'),(27,'IIM Lucknow','Lucknow,Uttar Pradesh','0522-6696677\r'),(28,'IIM Kozhikode','Kozhikode, Kerala','91-495-2809100\r'),(29,'IIM Shillong','Shillong,Meghalaya','(0364) 230-8000\r'),(30,'IIM Indore','Indore,Madhya Pradesh','91-731-2439666\r'),(31,'IIM Raipur','Raipur,Chattisgarh','91-771-2474649\r'),(32,'IIM Ranchi','Ranchi,Jhanrkand','0651-2280083 \r'),(33,'IIM Rohtak','Rohtak, Haryana','91-1262228500 \r'),(34,'IIM Kashipur','Kashipur,Uttarkhand','91-7088270882\r'),(35,'IIM Tiruchirappalli','Tiruchirapalli,Tamil nadu','91-431-2505000\r'),(36,'IIM Udaipur','Udaipur,Rajasthan','7669109664\r'),(37,'IIM Amritsar','Amritsar,Punjab','0183-282040\r'),(38,'IIM Bodh Gaya','Bodh gaya,Bihar','0631 220 0238\r'),(39,'IIM Nagpur','Nagpur,Maharashtra','0712-287-0315\r'),(40,'IIM Sambalpur','Sambalpur,Odisha','7064410810\r'),(41,'IIM Sirmaur','Siramaur,Himachal Pradesh','078329 01805\r'),(42,'IIM Vishakapatnam','Vishakapatnam,Andhra Pradesh','+91 891-282 4444\r'),(43,'IIM Jammu','Jagti,Jammu and Kashmir','0191-2741400\r'),(44,'IIM Mumbai','Mumbai,Maharashtra','022 2803 5200\r'),(45,'IISC Bangalore','Bangalore,Karnataka','91-80-23600757\r'),(46,'NIT Warangal','Warangal,Telangana','91-870-2459547\r'),(47,'NIT Bhopal','Bhopal,Madhya Pradesh','91 755 4051000\r'),(48,'NIT Nagpur','Nagpur,Maharashtra','0712-280142\r'),(49,'NIT Durgapur','Durgapur,West Bengal',' 0343-275-2008\r'),(50,'NIT Jamshedpur','Jamshedpur,Jharkhand','0657-2373629\r'),(51,'NIT Karnataka','Surathkal,Karnataka','0824 2474000\r'),(52,'NIT Srinagar','Srinagar,Jammu and Kashmir','0194-242-2032\r'),(53,'NIT Allahabad','Allahabad,Uttar Pradesh','91-0532-2545404\r'),(54,'NIT Surat','Surat,Gujarat','2201503\r'),(55,'NIT Rourkela','Rourkela,Odisha','0661-246-2020\r'),(56,'NIT Calicut','Calicut,Kerala','6100 2287224\r'),(57,'NIT Jaipur','Jaipur,Rajasthan','0141 252 9087\r'),(58,'NIT Kurkshetra','Kurukshetra,Haryana','1744-233208\r'),(59,'NIT Tirchirappalli','Tiruchirapalli,Tamil nadu','91-431-2500133\r'),(60,'NIT Silchar','Silchar,Assam','+91 7099070247\r'),(61,'NIT Hamirpur','Hamirpur,Himachal Pradesh','91-1972-254011\r'),(62,'NIT Jalandhar','Jalandhar,Punjab','0181-5037401\r'),(63,'NIT Patna','Patna,Bihar','+91-0612-237 2715\r'),(64,'NIT Raipur','Raipur,Chattisgarh','91-771-2254200\r'),(65,'NIT Agartala','Agartala,Tripura','0381-2546629\r'),(66,'NIT Arunachal Pradesh','Ittanagar,Arunachal Pradesh','0360-2284801\r'),(67,'NIT Delhi','Delhi','91      1133861007\r'),(68,'NIT Goa','Goa','[0832] 240220\r'),(69,'NIT Manipur','Manipur','0385-2445812\r'),(70,'NIT Meghalaya','Meghalaya','0364-2501294\r'),(71,'NIT Mizoram','Mizoram','0389-2391236 \r'),(72,'NIT Nagaland','Nagaland','03862-241821\r'),(73,'NIT Puducherry','Puducherry','04368-265235\r'),(74,'NIT Sikkim','Sikkim','+91 7479013180\r'),(75,'NIT Uttarakhand','Srinagar,Uttarakhand',' 01346 250 792\r'),(76,'NIT Andhra Pradesh','Andhra Pradesh',' 01346 250 792\r'),(77,'IISER Pune','Pune,Maharashtra ','91-20-25908000\r'),(78,'IIIT Bangalore','Bangalore,Karnataka','+91 80 4140 7777\r'),(79,'IIIT Alahabad','Alahabad,Uttar Pradesh','91-532-2922000\r'),(80,'IIIT Vadodara Diu','Gandhinagar ,Gujarat','91-79-29750281\r'),(81,'IIIT Jabalpur','Jabalpur,Madhya Pradesh',' 076127 94094\r'),(82,'IIIT Kanncheepuram','Kanncheepuram,Tamil Nadu','91-44-27476300\r'),(83,'IIIT Sri City','Sri City,Andhra Pradesh','91-7306473364\r'),(84,'IIIT Guwahati','Guwahati,Assam','0824 2474000\r'),(85,'IIIT Kota','Jaipur,Rajasthan','0141-2715071\r'),(86,'IIIT Tiruchirappalli','Tiruchirappalli,Tamil nadu','094896 00124\r'),(87,'IIIT Dharwad','Dharwad,Karnataka','9449732959\r'),(88,'IIIT Sonepat','Sonepat,Haryana','01302-987910\r'),(89,'IIIT Kalyani','Kalyani,West bengal','9862346244\r'),(90,'IIIT Lucknow','Lucknow,Uttar Pradesh','91-9415395066\r'),(91,'IIIT Kurnool','Kurnool,Andhra Pradesh','+91 - 8518 289114\r'),(92,'IIIT Kottayam','Kottayam,kerala','+91 0482 2202100\r'),(93,'IIIT Manipur','Manipur',' 0385 242 1017\r'),(94,'IIIT Nagpur','Nagpur,Maharashtra','9405215010\r'),(95,'IIIT Pune','Pune,Maharashtra','9826454181\r'),(96,'IIIT Ranchi','Ranchi,Jhanrkand','+91 65122 60031\r'),(97,'IIIT Surat','Surat,Gujarat','02621-298060\r'),(98,'IIIT Bhopal','Bhopal,Madhya Pradesh','0755-4051950\r'),(99,'IIIT Raichur','Raichur,Karnataka','+91 6363996166\r'),(100,'IIIT Agartala','Agartala,Tripura','0381 254 6629\r');
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` int NOT NULL,
  `CourseName` varchar(255) NOT NULL,
  `CourseDuration` int NOT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'B.Tech',4),(2,'Dual Degree',5),(3,'M.A.',2),(4,'M.Sc.',2),(5,'M.Tech',2),(6,'MBA',2),(7,'B.Des.',4),(8,'M.Des.',2),(9,'PG Diploma',2),(10,'B.S.',4),(11,'M.A.Res.',2),(12,'MPP',2),(13,'MMS',1),(14,'B.Arch.',5),(15,'M.Arch',2),(16,'M.Plan',2),(17,'Ph.D',2),(18,'BBA',5);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-08 12:54:21
