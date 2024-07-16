-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: localhost    Database: bd_tp
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `Acesso`
--

DROP TABLE IF EXISTS `Acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Acesso` (
  `ID_UTILIZADOR` int NOT NULL AUTO_INCREMENT,
  `PASSE` varchar(45) DEFAULT NULL,
  `ID_RECURSO` int DEFAULT NULL,
  `ID_PROFESSOR` int DEFAULT NULL,
  `NUMERO_ALUNO` int DEFAULT NULL,
  PRIMARY KEY (`ID_UTILIZADOR`),
  KEY `ID_RECURSO` (`ID_RECURSO`),
  KEY `ID_PROFESSOR` (`ID_PROFESSOR`),
  KEY `NUMERO_ALUNO` (`NUMERO_ALUNO`),
  CONSTRAINT `acesso_ibfk_1` FOREIGN KEY (`ID_RECURSO`) REFERENCES `Recurso` (`ID`),
  CONSTRAINT `acesso_ibfk_2` FOREIGN KEY (`ID_PROFESSOR`) REFERENCES `Professor` (`ID`),
  CONSTRAINT `acesso_ibfk_3` FOREIGN KEY (`NUMERO_ALUNO`) REFERENCES `Aluno` (`NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acesso`
--

LOCK TABLES `Acesso` WRITE;
/*!40000 ALTER TABLE `Acesso` DISABLE KEYS */;
INSERT INTO `Acesso` VALUES (21,'olopez@example.net',133,1,193),(22,'patrickanderson@example.org',134,2,201),(23,'emilynavarro@example.com',135,3,209),(24,'ann29@example.org',136,4,217),(25,'oscar09@example.com',137,5,225),(26,'nunezkatelyn@example.net',138,6,233),(27,'andrewfranklin@example.net',139,7,241),(28,'jeffrey64@example.org',140,8,249),(29,'mspence@example.net',141,9,257),(30,'turnerkelly@example.com',142,10,265);
/*!40000 ALTER TABLE `Acesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aluno`
--

DROP TABLE IF EXISTS `Aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Aluno` (
  `NUMERO` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(45) DEFAULT NULL,
  `IDADE` int DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `MEDIA` decimal(20,2) DEFAULT NULL,
  `NUMERO_HORAS_ESTUDO_DIARIAS` int DEFAULT NULL,
  `ID_TURMA` int DEFAULT NULL,
  `ID_EncarregadoEducacao` int DEFAULT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `ID_TURMA` (`ID_TURMA`),
  KEY `ID_EncarregadoEducacao` (`ID_EncarregadoEducacao`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`ID_TURMA`) REFERENCES `Turma` (`ID`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`ID_EncarregadoEducacao`) REFERENCES `EncarregadoEducacao` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aluno`
--

LOCK TABLES `Aluno` WRITE;
/*!40000 ALTER TABLE `Aluno` DISABLE KEYS */;
INSERT INTO `Aluno` VALUES (193,'Ashley Jackson',15,'M','watsontodd@example.net',3.00,9,33,33),(194,'Melissa Davis',16,'M','harmonalicia@example.org',10.00,11,34,34),(195,'Jill Mills',18,'F','natasha24@example.net',9.33,10,35,35),(196,'Julie Sullivan',21,'M','jenniferrios@example.org',8.33,10,36,36),(197,'Daniel Mcguire',16,'F','edwardsdavid@example.com',6.33,7,37,37),(198,'Shawn Stevens',17,'M','ojackson@example.net',10.67,8,38,38),(199,'Julie Horn',19,'F','peterscheryl@example.net',10.67,12,39,39),(200,'Christopher Richardson',16,'M','wwilliams@example.com',13.33,14,40,40),(201,'Kristin Clark',17,'F','brandon94@example.org',6.33,7,33,41),(202,'Melinda Allen',16,'M','stephen22@example.com',13.67,12,34,42),(203,'Randall Reynolds',16,'F','brownamy@example.net',9.67,10,35,33),(204,'Brandy Martin',15,'M','samanthahill@example.org',16.33,17,36,34),(205,'Maria Walker',16,'M','morrischad@example.com',13.67,11,37,35),(206,'Mr. Thomas Hoover',17,'M','melanieblair@example.org',8.00,8,38,36),(207,'April Garcia',17,'M','craigcox@example.org',9.33,10,39,37),(208,'Alfred Sullivan',18,'M','mdavis@example.com',8.33,9,40,38),(209,'Stephanie Baker',16,'F','aimee18@example.com',16.00,16,33,39),(210,'Michelle Hunt',17,'M','murphyclayton@example.org',4.33,7,34,40),(211,'Cassandra Robinson',16,'F','emily73@example.com',9.33,10,35,41),(212,'Michael Phillips',19,'M','fbrown@example.net',3.67,6,36,42),(213,'Jasmine Smith',18,'M','swelch@example.org',3.67,7,37,33),(214,'Donna Hampton',15,'M','nmartin@example.net',10.00,10,38,34),(215,'Karen Benton',15,'M','reeseedwin@example.net',10.00,8,39,35),(216,'Scott Sharp',17,'F','rhernandez@example.net',5.33,5,40,36),(217,'Justin Thompson',15,'F','wcarroll@example.org',4.00,12,33,37),(218,'Monica Shaw',18,'F','tammyrowland@example.net',9.33,9,34,38),(219,'James Bush',17,'F','kimberlygrant@example.com',14.33,13,35,39),(220,'Kelly Johnson',17,'F','william02@example.net',5.33,6,36,40),(221,'Alan Martinez',16,'M','burnscassandra@example.com',9.00,7,37,41),(222,'April Collins',17,'F','jlynn@example.net',9.67,11,38,42),(223,'Megan Mccullough',17,'F','sheenahill@example.net',8.33,8,39,33),(224,'Jocelyn Williams',16,'F','alexanderjackson@example.com',7.00,8,40,34),(225,'Edward Adams',15,'M','butlersarah@example.org',12.33,10,33,35),(226,'Jennifer Bean',15,'M','davidcrane@example.org',10.67,9,34,36),(227,'James Powell',17,'F','adamsalexandra@example.com',9.33,9,35,37),(228,'Joseph Torres',17,'F','courtneykirby@example.com',11.00,11,36,38),(229,'Joshua Jones',17,'F','kenneth91@example.org',13.33,12,37,39),(230,'Brittany Phillips',17,'M','kim79@example.net',13.00,13,38,40),(231,'Monica Johnson',17,'F','cameron46@example.net',12.00,12,39,41),(232,'Robert Hanson',18,'F','michellehernandez@example.net',18.67,19,40,42),(233,'April Hill',15,'F','henrystephanie@example.com',10.33,9,33,33),(234,'Brandon Dodson',16,'F','millerkenneth@example.com',6.33,7,34,34),(235,'Garrett Lynch',18,'F','gtran@example.org',10.33,11,35,35),(236,'Laura Robinson',17,'M','bmelton@example.com',15.33,14,36,36),(237,'Brenda Elliott',18,'F','bowmankelsey@example.net',5.33,8,37,37),(238,'Donald Ochoa',18,'F','marksmith@example.net',9.00,8,38,38),(239,'William Garcia',19,'F','hendersonmolly@example.net',13.67,15,39,39),(240,'Joshua Armstrong',15,'M','lduran@example.net',3.00,9,40,40),(241,'Tamara Ramirez',17,'M','belinda99@example.org',10.00,11,33,41),(242,'Katherine Cortez',19,'M','evanskimberly@example.org',11.67,13,34,42),(243,'Anthony Smith',17,'F','mwilliams@example.org',11.67,12,35,33),(244,'Stacy Horton',18,'F','huntpaul@example.net',11.00,11,36,34),(245,'Joel Skinner',16,'M','tranheidi@example.org',9.33,8,37,35),(246,'Brandon Schwartz',15,'F','qwaters@example.org',8.00,7,38,36),(247,'John Page',18,'M','halllacey@example.com',13.00,13,39,37),(248,'Steven Manning',15,'M','ataylor@example.org',18.33,19,40,38),(249,'Jennifer Harrison',18,'M','clarkeashley@example.net',15.67,16,33,39),(250,'Ryan Alvarez',17,'M','eanderson@example.net',12.33,12,34,40),(251,'Michael Kent',15,'M','rickysimmons@example.com',11.67,12,35,41),(252,'Miss Robyn Gates',19,'F','kellimullen@example.net',11.67,13,36,42),(253,'Amy Jones',15,'M','emilyatkins@example.org',9.00,8,37,33),(254,'Jennifer Miller',15,'M','hannah64@example.net',7.00,5,38,34),(255,'James Smith',19,'F','thomasjohn@example.org',8.00,7,39,35),(256,'Sarah Anthony',18,'M','gary92@example.net',3.67,6,40,36),(257,'Susan Rice',18,'M','jtate@example.org',13.67,14,33,37),(258,'Kevin Jacobs',16,'M','rogersjacob@example.org',14.33,13,34,38),(259,'Barbara Baxter',16,'F','jeffreyjohnson@example.org',4.33,6,35,39),(260,'Kyle Maldonado',20,'M','zmiller@example.com',9.00,9,36,40),(261,'Richard French',17,'F','robin35@example.com',11.67,10,37,41),(262,'Claudia Huerta',15,'F','luke84@example.com',16.00,16,38,42),(263,'Kirsten Thomas',17,'F','guymartinez@example.net',7.00,7,39,33),(264,'Ricardo Snyder',16,'F','jenniferallen@example.net',9.00,8,40,34),(265,'Billy Joseph',17,'M','herbert53@example.com',10.67,11,33,35),(266,'Charles Anderson',17,'F','lowerydavid@example.net',9.33,9,34,36),(267,'Brent Walker',16,'F','browntroy@example.net',9.33,10,35,37),(268,'Tyler Pierce',18,'F','etorres@example.com',12.33,12,36,38),(269,'Dr. Michael Daugherty',17,'F','stevenrobinson@example.net',9.67,9,37,39),(270,'Michael Ford',16,'M','htaylor@example.org',15.33,15,38,40),(271,'Jennifer Velez',17,'M','boylelindsay@example.org',11.67,12,39,41),(272,'Dr. Carla Cox',16,'F','bullockmadison@example.com',5.00,8,40,42),(273,'Stephen Byrd',16,'F','weberdeborah@example.net',8.67,6,33,33),(274,'Jose Villanueva',16,'F','gregorysmith@example.org',10.33,11,34,34),(275,'David Jenkins',17,'M','millerpaul@example.org',3.33,10,35,35),(276,'Jennifer Acosta',15,'F','lisa86@example.net',10.67,10,36,36),(277,'Joseph Gibson',17,'F','phillipspatrick@example.com',5.00,7,37,37),(278,'Toni Gallegos',19,'F','andersonjeremy@example.net',8.00,8,38,38),(279,'John Day',18,'M','plevine@example.net',3.67,7,39,39),(280,'Hayden Stuart',16,'M','mcfarlandandrew@example.net',11.00,11,40,40),(281,'Mr. Jeffrey Miller',16,'F','fletcherdavid@example.com',9.33,8,33,41),(282,'Jeffery Chen',18,'F','barneslawrence@example.net',6.33,10,34,42),(283,'Clayton Green',17,'F','bfuller@example.org',11.67,12,35,43),(284,'Jorge Stafford',16,'M','rhenry@example.net',18.00,18,36,44),(285,'Peggy Morales',18,'F','shannon93@example.com',2.33,7,37,45),(286,'Ashley Li',18,'M','bradforddebbie@example.com',8.33,9,38,46),(287,'Jerry Hamilton',15,'F','apollard@example.com',9.33,7,39,47),(288,'Carol Williams DDS',18,'M','stricklandmaria@example.com',13.67,14,40,48),(289,'Brad Smith',16,'F','xcampbell@example.org',7.67,6,33,49),(290,'Richard Rogers',19,'M','lawrencedavis@example.com',11.67,13,34,50),(291,'Allison Lang',18,'F','williammalone@example.org',9.00,9,35,51),(292,'Anthony Dorsey',18,'M','ricardo68@example.org',12.33,11,36,52),(293,'Trevor Gardner',15,'M','slara@example.org',10.00,8,37,33),(294,'Ashley Miller',18,'M','christopherfrey@example.com',15.33,16,38,34),(295,'Jennifer Obrien',16,'F','andersonkristen@example.com',13.00,11,39,35),(296,'Jeffrey Hardin',16,'M','amy29@example.org',15.67,17,40,36),(297,'Stacy Goodman',17,'M','melindavang@example.com',14.33,15,33,37),(298,'Zachary Jackson',15,'M','sullivanashley@example.net',14.00,12,34,38),(299,'Eric Hunter',18,'F','lblack@example.com',18.67,19,35,39),(300,'Katie Rogers',15,'F','billy39@example.net',11.67,12,36,40),(301,'Susan Matthews',17,'M','faith74@example.org',7.67,7,37,41),(302,'Tony Shepard',16,'F','rmolina@example.org',12.00,11,38,42),(303,'William Rodriguez',15,'M','joel21@example.com',11.67,12,39,43),(304,'Craig Mays',19,'M','brandon59@example.net',8.33,8,40,44),(305,'Mary Myers',17,'M','jeremy09@example.org',13.67,16,33,45),(306,'James Sullivan',15,'M','stephengarrison@example.com',12.33,10,34,46),(307,'Anthony Mccormick',16,'M','carteramanda@example.net',16.67,16,35,47),(308,'Carol Hayes',15,'F','afigueroa@example.com',9.67,9,36,48),(309,'Leah Johnson',17,'M','cindypeck@example.org',9.00,8,37,49),(310,'Danny Ferrell',16,'F','hansenchristina@example.com',9.33,7,38,50),(311,'Amanda Hinton',16,'F','fcarter@example.com',16.00,16,39,51),(312,'Hannah Smith',15,'M','nthompson@example.net',17.67,16,40,52),(313,'Laurie Davis',17,'F','tbright@example.org',15.00,15,33,33),(314,'Steven Mullen',16,'F','cscott@example.org',15.00,14,34,34),(315,'Andrew Lozano',18,'F','calderoneileen@example.net',9.33,10,35,35),(316,'Lori Gonzalez',16,'F','jose04@example.net',7.67,8,36,36),(317,'Robert Harper',15,'M','mendezthomas@example.com',9.00,8,37,37),(318,'Linda Hernandez MD',17,'F','oward@example.org',11.67,12,38,38),(319,'Mark Davenport',17,'M','kharris@example.com',11.00,12,39,39),(320,'Robert Carlson',16,'F','jasmine47@example.com',9.00,8,40,40),(321,'Sara Melton',17,'M','melindakeller@example.com',13.00,13,33,41),(322,'Eric Walker',15,'M','wendy83@example.net',9.33,9,34,42),(323,'Jody Smith',15,'M','haley77@example.com',16.33,15,35,43),(324,'Kevin Martinez',18,'M','zmoses@example.org',9.67,10,36,44),(325,'Robin Small',19,'F','jacob11@example.com',6.33,10,37,45),(326,'Amanda Moore',17,'M','kbruce@example.com',12.33,12,38,46),(327,'Mr. Scott Thomas',15,'F','sarawilson@example.org',7.00,7,39,47),(328,'Lawrence Knox',15,'M','andrewschristopher@example.net',12.33,10,40,48),(329,'Julia Richardson',15,'M','tandrews@example.com',18.67,18,33,49),(330,'Elizabeth Davis',20,'M','mistycardenas@example.com',17.67,17,34,50),(331,'Dawn Henry',17,'F','ublack@example.com',18.00,18,35,51),(332,'Steven Walker',17,'F','rhodeschristina@example.net',12.67,12,36,52),(333,'Jeffrey Copeland',17,'F','amyturner@example.net',8.33,8,37,33),(334,'John Stanley',16,'M','xmack@example.com',16.67,16,38,34),(335,'Elizabeth Butler',16,'F','lisa99@example.com',16.33,16,39,35),(336,'Carol Morales',18,'M','kennedyangelica@example.com',10.67,9,40,36),(337,'Sarah Brown',16,'F','joelhale@example.org',7.33,7,33,37),(338,'Elizabeth Berry',15,'M','dawnmclaughlin@example.org',13.33,14,34,38),(339,'Jeff Hobbs',16,'M','marilynterry@example.net',17.33,16,35,39),(340,'Kimberly Green',15,'F','woodamanda@example.com',2.67,8,36,40),(341,'Michael Bryan',15,'F','sandy62@example.com',4.33,6,37,41),(342,'Jon George',17,'F','wrightpatricia@example.com',11.67,10,38,42),(343,'Christopher Combs',15,'M','marc50@example.net',12.67,11,39,43),(344,'David Brown',16,'M','gregory54@example.net',9.00,8,40,44),(345,'Lindsey Carroll',16,'F','williamsfrank@example.com',7.67,6,33,45),(346,'Steven Carpenter',16,'F','vmoreno@example.net',9.67,10,34,46),(347,'Kenneth Gonzalez',22,'M','lbeasley@example.com',7.33,6,35,47),(348,'Peter Hayes',18,'M','kentbenjamin@example.org',9.67,10,36,48),(349,'Angel Thomas',15,'F','bernardturner@example.net',12.00,10,37,49),(350,'Joshua Wright',17,'F','kelli17@example.net',14.67,14,38,50),(351,'Thomas Rubio',15,'M','qsteele@example.org',9.00,8,39,51),(352,'Mary Griffin',17,'M','eward@example.com',12.33,12,40,52),(353,'Thomas Giles',17,'F','meyeranna@example.com',15.33,16,33,33),(354,'Sonia Craig',18,'M','garrett43@example.org',12.67,14,34,34),(355,'Teresa Perez',15,'M','stevensonlauren@example.net',12.67,13,35,35),(356,'Keith Gibson',16,'F','douglasbenjamin@example.com',13.00,11,36,36),(357,'Emma Ford',16,'M','paynediana@example.org',14.33,13,37,37),(358,'Dr. Jeffrey Murphy PhD',18,'M','carterjesse@example.net',15.33,16,38,38),(359,'Jessica Gonzalez',15,'M','sbrown@example.com',3.00,9,39,39),(360,'Nancy Clark',17,'F','wallerjerry@example.com',9.67,11,40,40),(361,'Tyler Maynard',17,'F','juliashaw@example.com',11.67,12,33,41),(362,'Jody Oneill',17,'F','tracyortega@example.com',11.33,12,34,42),(363,'Mary Rowe',17,'M','jenniferjones@example.net',9.33,10,35,43),(364,'David Lopez',16,'M','melissa40@example.org',9.00,9,36,44),(365,'Lauren Hall',15,'F','mherrera@example.org',17.00,16,37,45),(366,'Tracy Martin',17,'F','tmartin@example.net',14.00,14,38,46),(367,'Cheyenne Campbell',16,'F','ronaldgarrison@example.com',9.00,8,39,47),(368,'Andrew Glover',17,'F','xwilliams@example.net',10.67,11,40,48),(369,'Dawn Patterson',15,'F','gbryant@example.com',11.33,10,33,49),(370,'Terri Parsons',17,'F','johnharrington@example.com',10.00,10,34,50),(371,'Kyle Warner DDS',18,'F','spencer38@example.com',9.67,10,35,51),(372,'Christy Edwards',15,'M','hudsontimothy@example.net',16.67,17,36,52),(373,'Jacqueline Taylor',17,'M','joshua57@example.com',10.67,8,37,33),(374,'Janice Williams',20,'M','johnsonmichael@example.com',9.00,9,38,34),(375,'Carolyn Harris',18,'F','jenniferhernandez@example.org',9.33,10,39,35),(376,'Nathan Walker',17,'M','schneiderxavier@example.net',10.33,11,40,36),(377,'Gina Zuniga',15,'M','samantha56@example.com',14.67,15,33,37),(378,'Richard Matthews',18,'F','petersenkelly@example.com',2.33,7,34,38),(379,'Patrick Johnson',16,'M','arodriguez@example.net',14.67,13,35,39),(380,'Mr. Benjamin Crosby',15,'F','sroberts@example.org',7.33,8,36,40),(381,'Joshua Wang',15,'M','elizabethburke@example.net',17.67,16,37,41),(382,'Morgan Ashley',17,'F','jeffreygray@example.net',5.00,7,38,42),(383,'Justin Weiss',17,'F','colehailey@example.net',14.67,14,39,43),(384,'Paul Brown',18,'M','travis86@example.com',7.33,6,40,44),(385,'Sylvia Gardner',16,'F','matthew33@example.net',12.67,12,33,45),(386,'Michael Hodges',15,'F','nbarnes@example.org',15.67,16,34,46),(387,'Annette Ramos',19,'F','sarahanderson@example.net',6.33,10,35,47),(388,'Kevin White',15,'F','sarah23@example.net',12.33,11,36,48),(389,'Angela Brown',17,'F','melissabrown@example.org',6.33,7,37,49),(390,'Mrs. Erica Scott',16,'M','davidwalton@example.org',15.67,17,38,50),(391,'Lori Bradley',15,'F','eparker@example.net',10.67,10,39,51),(392,'Jennifer Brooks',17,'M','patrickashley@example.com',8.00,8,40,52);
/*!40000 ALTER TABLE `Aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aula`
--

DROP TABLE IF EXISTS `Aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Aula` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATA_AULA` date DEFAULT NULL,
  `DURACAO` int DEFAULT NULL,
  `ID_DISCIPLINA` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_DISCIPLINA` (`ID_DISCIPLINA`),
  CONSTRAINT `aula_ibfk_1` FOREIGN KEY (`ID_DISCIPLINA`) REFERENCES `Disciplina` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aula`
--

LOCK TABLES `Aula` WRITE;
/*!40000 ALTER TABLE `Aula` DISABLE KEYS */;
INSERT INTO `Aula` VALUES (49,'2022-08-16',90,17),(50,'2022-07-04',90,17),(51,'2022-08-23',90,17),(52,'2023-04-09',90,19),(53,'2022-08-27',90,19),(54,'2022-08-23',90,19),(55,'2023-04-09',45,24),(56,'2022-08-27',90,24),(57,'2022-08-23',45,24),(58,'2022-06-30',45,27),(59,'2022-06-30',90,27),(60,'2022-10-25',90,27),(61,'2023-02-20',45,28),(62,'2023-05-23',45,28),(63,'2022-06-30',90,28),(64,'2022-10-25',45,30),(65,'2022-07-04',45,30),(66,'2023-04-09',45,30),(67,'2022-06-30',90,20),(68,'2022-07-04',90,20),(69,'2022-08-27',90,20),(70,'2023-04-09',45,23),(71,'2023-02-20',45,23),(72,'2022-10-25',90,23),(73,'2022-09-21',45,18),(74,'2022-09-21',90,18),(75,'2023-04-09',45,18),(76,'2022-07-04',45,21),(77,'2023-02-20',90,21),(78,'2022-08-16',90,21),(79,'2022-07-04',45,25),(80,'2022-06-30',45,25),(81,'2022-08-27',45,25),(82,'2023-05-23',90,31),(83,'2023-04-09',90,31),(84,'2022-10-25',45,31),(85,'2022-08-27',45,22),(86,'2022-10-25',45,22),(87,'2023-05-23',45,22),(88,'2023-05-23',90,26),(89,'2023-05-23',45,26),(90,'2022-06-30',45,26),(91,'2022-08-27',45,29),(92,'2023-04-09',45,29),(93,'2022-10-25',45,29),(94,'2022-10-25',90,32),(95,'2022-08-16',90,32),(96,'2022-10-25',90,32);
/*!40000 ALTER TABLE `Aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Avaliacao`
--

DROP TABLE IF EXISTS `Avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Avaliacao` (
  `NOTA` decimal(4,2) DEFAULT NULL,
  `DATA_AULA` date DEFAULT NULL,
  `NUMERO` int NOT NULL AUTO_INCREMENT,
  `ID_PROFESSOR` int DEFAULT NULL,
  `NUMERO_ALUNO` int DEFAULT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `ID_PROFESSOR` (`ID_PROFESSOR`),
  KEY `NUMERO_ALUNO` (`NUMERO_ALUNO`),
  CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`ID_PROFESSOR`) REFERENCES `Professor` (`ID`),
  CONSTRAINT `avaliacao_ibfk_2` FOREIGN KEY (`NUMERO_ALUNO`) REFERENCES `Aluno` (`NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Avaliacao`
--

LOCK TABLES `Avaliacao` WRITE;
/*!40000 ALTER TABLE `Avaliacao` DISABLE KEYS */;
INSERT INTO `Avaliacao` VALUES (15.94,'2022-06-16',1,1,193),(11.93,'2022-07-31',2,2,201),(18.71,'2022-08-13',3,3,209),(17.00,'2023-02-20',4,4,217),(13.34,'2022-06-16',5,5,225),(13.73,'2022-06-02',6,6,233),(12.20,'2022-12-05',7,7,241),(16.43,'2022-06-29',8,8,249),(14.66,'2022-06-02',9,9,257),(17.92,'2022-06-16',10,10,265);
/*!40000 ALTER TABLE `Avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Curso`
--

DROP TABLE IF EXISTS `Curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Curso` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Curso`
--

LOCK TABLES `Curso` WRITE;
/*!40000 ALTER TABLE `Curso` DISABLE KEYS */;
INSERT INTO `Curso` VALUES (5,'Ciências e Tecnologias'),(6,'Artes'),(7,'Economia'),(8,'Humanidade');
/*!40000 ALTER TABLE `Curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Curso_has_Disciplina`
--

DROP TABLE IF EXISTS `Curso_has_Disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Curso_has_Disciplina` (
  `ID_DISCIPLINA` int DEFAULT NULL,
  `ID_CURSO` int DEFAULT NULL,
  KEY `ID_DISCIPLINA` (`ID_DISCIPLINA`),
  KEY `ID_CURSO` (`ID_CURSO`),
  CONSTRAINT `curso_has_disciplina_ibfk_1` FOREIGN KEY (`ID_DISCIPLINA`) REFERENCES `Disciplina` (`ID`),
  CONSTRAINT `curso_has_disciplina_ibfk_2` FOREIGN KEY (`ID_CURSO`) REFERENCES `Curso` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Curso_has_Disciplina`
--

LOCK TABLES `Curso_has_Disciplina` WRITE;
/*!40000 ALTER TABLE `Curso_has_Disciplina` DISABLE KEYS */;
INSERT INTO `Curso_has_Disciplina` VALUES (17,5),(17,6),(17,7),(17,8),(19,5),(19,6),(19,7),(19,8),(24,5),(24,6),(24,7),(24,8),(27,5),(27,6),(27,7),(27,8),(28,5),(28,6),(28,7),(28,8),(30,5),(30,6),(30,7),(30,8),(20,5),(20,6),(20,7),(20,8),(23,5),(23,6),(23,7),(23,8),(18,5),(18,6),(18,7),(18,8),(21,5),(21,6),(21,7),(21,8),(25,5),(25,6),(25,7),(25,8),(31,5),(31,6),(31,7),(31,8),(22,5),(22,6),(22,7),(22,8),(26,5),(26,6),(26,7),(26,8),(29,5),(29,6),(29,7),(29,8),(32,5),(32,6),(32,7),(32,8);
/*!40000 ALTER TABLE `Curso_has_Disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Disciplina`
--

DROP TABLE IF EXISTS `Disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Disciplina` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(45) DEFAULT NULL,
  `MEDIA` decimal(20,2) DEFAULT NULL,
  `ID_CURSO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_CURSO` (`ID_CURSO`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`ID_CURSO`) REFERENCES `Curso` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Disciplina`
--

LOCK TABLES `Disciplina` WRITE;
/*!40000 ALTER TABLE `Disciplina` DISABLE KEYS */;
INSERT INTO `Disciplina` VALUES (17,'Matemática',13.40,5),(18,'Matemática',12.30,7),(19,'Português',15.20,5),(20,'Português',14.70,6),(21,'Português',11.80,7),(22,'Português',12.40,8),(23,'Desenho',16.20,6),(24,'Filosofia',15.00,5),(25,'Filosofia',14.90,7),(26,'Filosofia',15.20,8),(27,'Biologia e Geologia',12.40,5),(28,'Psicologia',14.30,5),(29,'Psicologia',12.40,8),(30,'TIC',15.50,5),(31,'TIC',15.20,7),(32,'TIC',14.90,8);
/*!40000 ALTER TABLE `Disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EncarregadoEducacao`
--

DROP TABLE IF EXISTS `EncarregadoEducacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EncarregadoEducacao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(45) DEFAULT NULL,
  `PROFISSAO` varchar(45) DEFAULT NULL,
  `GRAU_ESCOLARIDADE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EncarregadoEducacao`
--

LOCK TABLES `EncarregadoEducacao` WRITE;
/*!40000 ALTER TABLE `EncarregadoEducacao` DISABLE KEYS */;
INSERT INTO `EncarregadoEducacao` VALUES (33,'Heather Aguilar','other','4'),(34,'Lisa Galvan','other','2'),(35,'Troy Oneal','other','2'),(36,'Jessica Park','services','2'),(37,'Kenneth Watson','other','3'),(38,'William Moore','teacher','4'),(39,'Tara Reynolds','teacher','4'),(40,'Marvin Cardenas','services','1'),(41,'Anthony Hoover','services','2'),(42,'Linda Davis','teacher','4'),(43,'Thomas Stanley','services','1'),(44,'Debbie Foster','other','3'),(45,'Timothy Wood','other','2'),(46,'Julie Nguyen','at_home','3'),(47,'Tina Bird','other','1'),(48,'Makayla Yates','services','3'),(49,'Philip Bennett','services','2'),(50,'Adam Skinner','teacher','4'),(51,'Katherine Walsh','health','2'),(52,'Mitchell Young','services','2');
/*!40000 ALTER TABLE `EncarregadoEducacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estatistica`
--

DROP TABLE IF EXISTS `Estatistica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ASSIDUIDADE` varchar(10) DEFAULT NULL,
  `JUSTIFICACAO` varchar(10) DEFAULT NULL,
  `PARTICIPACAO` varchar(10) DEFAULT NULL,
  `NUMERO_ALUNO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NUMERO_ALUNO` (`NUMERO_ALUNO`),
  CONSTRAINT `estatistica_ibfk_1` FOREIGN KEY (`NUMERO_ALUNO`) REFERENCES `Aluno` (`NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica`
--

LOCK TABLES `Estatistica` WRITE;
/*!40000 ALTER TABLE `Estatistica` DISABLE KEYS */;
INSERT INTO `Estatistica` VALUES (21,'yes',NULL,'yes',193),(22,'yes',NULL,'yes',193),(23,'yes',NULL,'yes',201),(24,'yes',NULL,'yes',201),(25,'yes',NULL,'yes',209),(26,'yes',NULL,'yes',209),(27,'yes',NULL,'yes',217),(28,'yes',NULL,'yes',217),(29,'yes',NULL,'yes',225),(30,'yes',NULL,'yes',225),(31,'yes',NULL,'yes',194),(32,'yes',NULL,'yes',194),(33,'yes',NULL,'yes',202),(34,'yes',NULL,'yes',202),(35,'yes',NULL,'yes',210),(36,'yes',NULL,'yes',210),(37,'yes',NULL,'yes',218),(38,'yes',NULL,'yes',218),(39,'yes',NULL,'yes',226),(40,'yes',NULL,'yes',226),(41,'yes',NULL,'yes',195),(42,'yes',NULL,'yes',195),(43,'yes',NULL,'yes',203),(44,'yes',NULL,'yes',203),(45,'yes',NULL,'yes',211),(46,'yes',NULL,'yes',211),(47,'yes',NULL,'yes',219),(48,'yes',NULL,'yes',219),(49,'yes',NULL,'yes',227),(50,'yes',NULL,'yes',227),(51,'yes',NULL,'yes',196),(52,'yes',NULL,'yes',196),(53,'yes',NULL,'yes',204),(54,'yes',NULL,'yes',204),(55,'yes',NULL,'yes',212),(56,'yes',NULL,'yes',212),(57,'yes',NULL,'yes',220),(58,'yes',NULL,'yes',220),(59,'yes',NULL,'yes',228),(60,'yes',NULL,'yes',228),(61,'yes',NULL,'yes',197),(62,'yes',NULL,'yes',197),(63,'yes',NULL,'yes',205),(64,'yes',NULL,'yes',205),(65,'yes',NULL,'yes',213),(66,'yes',NULL,'yes',213),(67,'yes',NULL,'yes',221),(68,'yes',NULL,'yes',221),(69,'yes',NULL,'yes',229),(70,'yes',NULL,'yes',229),(71,'yes',NULL,'yes',198),(72,'yes',NULL,'yes',198),(73,'yes',NULL,'yes',206),(74,'yes',NULL,'yes',206),(75,'yes',NULL,'yes',214),(76,'yes',NULL,'yes',214),(77,'yes',NULL,'yes',222),(78,'yes',NULL,'yes',222),(79,'yes',NULL,'yes',230),(80,'yes',NULL,'yes',230),(81,'yes',NULL,'yes',199),(82,'yes',NULL,'yes',199),(83,'yes',NULL,'yes',207),(84,'yes',NULL,'yes',207),(85,'yes',NULL,'yes',215),(86,'yes',NULL,'yes',215),(87,'yes',NULL,'yes',223),(88,'yes',NULL,'yes',223),(89,'yes',NULL,'yes',231),(90,'yes',NULL,'yes',231),(91,'yes',NULL,'yes',200),(92,'yes',NULL,'yes',200),(93,'yes',NULL,'yes',208),(94,'yes',NULL,'yes',208),(95,'yes',NULL,'yes',216),(96,'yes',NULL,'yes',216),(97,'yes',NULL,'yes',224),(98,'yes',NULL,'yes',224),(99,'yes',NULL,'yes',232),(100,'yes',NULL,'yes',232);
/*!40000 ALTER TABLE `Estatistica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hobbie_Academico`
--

DROP TABLE IF EXISTS `Hobbie_Academico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hobbie_Academico` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(45) DEFAULT NULL,
  `NUMERO_ALUNO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NUMERO_ALUNO` (`NUMERO_ALUNO`),
  CONSTRAINT `hobbie_academico_ibfk_1` FOREIGN KEY (`NUMERO_ALUNO`) REFERENCES `Aluno` (`NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hobbie_Academico`
--

LOCK TABLES `Hobbie_Academico` WRITE;
/*!40000 ALTER TABLE `Hobbie_Academico` DISABLE KEYS */;
INSERT INTO `Hobbie_Academico` VALUES (51,'Dança e vólei',193),(52,'Xadrez',201),(53,'Dança',209),(54,'Desenho e Xadrez',217),(55,'Futebol',225),(56,'Vólei',233),(57,'Dança e vólei',241),(58,'Clube de matemática, basebol',249),(59,'Dança e xadrez',257),(60,'Dança e xadrez',265),(61,'Futebol',273),(62,'Dança e xadrez',281),(63,'Xadrez',289),(64,'Natação e Futebol',297),(65,'Natação e Futebol',305),(66,'Futebol, basquete e clube de matemática',313),(67,'Vólei',321),(68,'Clube de matemática, basebol',329),(69,'Natação e Futebol',337),(70,'Futebol',345),(71,'Desenho e Xadrez',353),(72,'Dança e xadrez',361),(73,'Vólei',369),(74,'Vólei',377),(75,'Futebol',385),(76,'Basquete',194),(77,'Xadrez',202),(78,'Futebol',210),(79,'Xadrez e natação',218),(80,'Futebol',226);
/*!40000 ALTER TABLE `Hobbie_Academico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plataforma_de_Apoio`
--

DROP TABLE IF EXISTS `Plataforma_de_Apoio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Plataforma_de_Apoio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plataforma_de_Apoio`
--

LOCK TABLES `Plataforma_de_Apoio` WRITE;
/*!40000 ALTER TABLE `Plataforma_de_Apoio` DISABLE KEYS */;
INSERT INTO `Plataforma_de_Apoio` VALUES (3,'Plataforma de apoio Aristoteles');
/*!40000 ALTER TABLE `Plataforma_de_Apoio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professor`
--

DROP TABLE IF EXISTS `Professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Professor` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor`
--

LOCK TABLES `Professor` WRITE;
/*!40000 ALTER TABLE `Professor` DISABLE KEYS */;
INSERT INTO `Professor` VALUES (1,'Lisa Vargas','fletcherbecky@example.org'),(2,'Cody Mcdonald','zsanchez@example.org'),(3,'Madison Johnson','jennifergates@example.org'),(4,'Brianna Berry','randyjohnson@example.net'),(5,'Deborah Dickerson','ijones@example.net'),(6,'Jared Rogers MD','christopherdavidson@example.org'),(7,'Benjamin Bailey','allenbrittany@example.com'),(8,'Alicia Watts','andrea91@example.net'),(9,'Kimberly Jones','salvarado@example.org'),(10,'Jenna Munoz','georgenicole@example.org');
/*!40000 ALTER TABLE `Professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recurso`
--

DROP TABLE IF EXISTS `Recurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recurso` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ANEXO` varchar(100) DEFAULT NULL,
  `HORA_PUBLICACAO` time DEFAULT NULL,
  `DESCRICAO` varchar(100) DEFAULT NULL,
  `ID_PLATAFORMA_DE_APOIO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_PLATAFORMA_DE_APOIO` (`ID_PLATAFORMA_DE_APOIO`),
  CONSTRAINT `recurso_ibfk_1` FOREIGN KEY (`ID_PLATAFORMA_DE_APOIO`) REFERENCES `Plataforma_de_Apoio` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recurso`
--

LOCK TABLES `Recurso` WRITE;
/*!40000 ALTER TABLE `Recurso` DISABLE KEYS */;
INSERT INTO `Recurso` VALUES (133,'Power Point','23:17:00','Estudar',3),(134,'PDF','00:17:00','Estudar',3),(135,'Ficheiros','01:17:00','Materia Mini',3),(136,'PDF','02:17:00','Imprimir',3),(137,'Power Point','03:17:00','Teste 2',3),(138,'Documentos','04:17:00','Aviso Teste',3),(139,'Power Point','05:17:00','Imprimir',3),(140,'Documentos','06:17:00','Trazer Quarta',3),(141,'Documentos','07:17:00','Imprimir',3),(142,'Documentos','08:17:00','Teste 1',3);
/*!40000 ALTER TABLE `Recurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Turma`
--

DROP TABLE IF EXISTS `Turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Turma` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `N_ALUNOS` int NOT NULL,
  `ID_CURSO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_CURSO` (`ID_CURSO`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`ID_CURSO`) REFERENCES `Curso` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Turma`
--

LOCK TABLES `Turma` WRITE;
/*!40000 ALTER TABLE `Turma` DISABLE KEYS */;
INSERT INTO `Turma` VALUES (33,4,5),(34,4,5),(35,4,6),(36,4,6),(37,4,7),(38,4,7),(39,4,8),(40,4,8);
/*!40000 ALTER TABLE `Turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Turma_has_Professor`
--

DROP TABLE IF EXISTS `Turma_has_Professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Turma_has_Professor` (
  `ID_TURMA` int DEFAULT NULL,
  `ID_PROFESSOR` int DEFAULT NULL,
  KEY `ID_TURMA` (`ID_TURMA`),
  KEY `ID_PROFESSOR` (`ID_PROFESSOR`),
  CONSTRAINT `turma_has_professor_ibfk_1` FOREIGN KEY (`ID_TURMA`) REFERENCES `Turma` (`ID`),
  CONSTRAINT `turma_has_professor_ibfk_2` FOREIGN KEY (`ID_PROFESSOR`) REFERENCES `Professor` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Turma_has_Professor`
--

LOCK TABLES `Turma_has_Professor` WRITE;
/*!40000 ALTER TABLE `Turma_has_Professor` DISABLE KEYS */;
INSERT INTO `Turma_has_Professor` VALUES (33,1),(33,6),(33,7),(33,4),(34,6),(34,9),(34,7),(34,5),(35,6),(35,3),(35,2),(35,5),(36,9),(36,8),(36,4),(36,10),(37,1),(37,7),(37,2),(37,4),(38,3),(38,8),(38,4),(38,2),(39,6),(39,4),(39,2),(39,9),(40,10),(40,2),(40,3),(40,8);
/*!40000 ALTER TABLE `Turma_has_Professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02 23:35:14
