CREATE DATABASE  IF NOT EXISTS `dedicated_marketing` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dedicated_marketing`;

-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)

--

-- Host: localhost    Database: dedicated_marketing

-- ------------------------------------------------------

-- Server version	5.7.28-0ubuntu0.18.04.4



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

-- Table structure for table `brands`

--



DROP TABLE IF EXISTS `brands`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `brands` (

  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,

  `category_id` bigint(20) unsigned NOT NULL,

  `name` varchar(220) NOT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `brands`

--



LOCK TABLES `brands` WRITE;

/*!40000 ALTER TABLE `brands` DISABLE KEYS */;

INSERT INTO `brands` VALUES (1,1,'dell'),(2,1,'acer'),(3,1,'lenovo'),(4,1,'apple'),(5,1,'sony'),(6,1,'samsung'),(7,1,'asus'),(8,1,'hp'),(9,2,'apple'),(10,2,'samsung'),(11,2,'xiaomi'),(12,2,'sony'),(13,2,'blackberry'),(14,2,'nokia');

/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `categories`

--



DROP TABLE IF EXISTS `categories`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `categories` (

  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,

  `name` varchar(220) NOT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `categories`

--



LOCK TABLES `categories` WRITE;

/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` VALUES (1,'laptops'),(2,'phones'),(3,'cosmetics'),(4,'cars'),(5,'men\'s watches');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

UNLOCK TABLES;



--

-- Table structure for table `clients`

--



DROP TABLE IF EXISTS `clients`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `clients` (

  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,

  `category_id` bigint(20) NOT NULL,

  `brand_id` bigint(20) NOT NULL,

  `name` varchar(220) NOT NULL,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*!40101 SET character_set_client = @saved_cs_client */;



--

-- Dumping data for table `clients`

--



LOCK TABLES `clients` WRITE;

/*!40000 ALTER TABLE `clients` DISABLE KEYS */;

INSERT INTO `clients` VALUES (1,1,1,'AutoModerator'),(2,1,1,'Teechce'),(3,1,1,'WalkingHat'),(4,1,1,'sleekpaprika69'),(5,1,1,'monstergeek'),(6,1,1,'SolitaireJack'),(7,1,1,'kaitlyn2004'),(8,1,1,'watsoncharlie11'),(9,1,1,'cobra_kitten'),(10,1,1,'jdrch'),(11,1,1,'z0rgatr0n'),(12,1,1,'memlimexced'),(13,1,1,'Anomalous11'),(14,1,1,'jcarter315'),(15,1,1,'wendyjreichert'),(16,1,1,'Raging_Red_Rocket'),(17,1,1,'djjuice'),(18,1,1,'Doctor-JJ'),(19,1,1,'PhiWeaver'),(20,1,1,'SaveThaTrees'),(21,1,1,'SalomaoRosa22'),(22,1,1,'Penn0r'),(23,1,1,'-SomeIndianDude-'),(24,1,1,'THOMASTHEDANKENGlNE'),(25,1,1,'Homeguy123'),(26,1,1,'Nadior95'),(27,1,1,'Peng-Win'),(28,1,1,'joeker9787'),(29,1,1,'freiform'),(30,1,1,'gnwjd12'),(31,1,1,'vtaznboylei'),(32,1,1,'khbre'),(33,1,1,'tubbyboi'),(34,1,1,'itsimmanuelwithani'),(35,1,1,'zakazak'),(36,1,1,'be_pj'),(37,1,1,'President_Ved'),(38,1,1,'EragusTrenzalore'),(39,1,1,'dHaniel_'),(40,1,1,'AirNick1'),(41,1,1,'Jasonwj322a'),(42,1,1,'lucellent'),(43,1,1,'tryingtofindareddit'),(44,1,1,'EdibleMuffin'),(45,1,1,'Abe020791'),(46,1,1,'A4orce84'),(47,1,1,'Nyctinus'),(48,1,1,'#NAME?'),(49,1,1,'corvus917'),(50,1,1,'jironfield'),(51,1,1,'um_rr'),(52,1,1,'stevets101'),(53,1,1,'Ghopper21'),(54,1,1,'Slowmac123'),(55,1,1,'ruohtas'),(56,1,1,'codyblue_'),(57,1,1,'bwintx'),(58,1,1,'Mo-Mo-Money'),(59,1,1,'Jam750'),(60,1,1,'seanantonio'),(61,1,1,'cardshark1234'),(62,1,1,'thevariant2017'),(63,1,1,'Clustre'),(64,1,1,'mathiasbaer'),(65,1,1,'JJRedit2016'),(66,1,1,'keiller84'),(67,1,1,'Geded12'),(68,1,1,'SebastianFurz'),(69,1,1,'Tony72495'),(70,1,1,'Kaimaniiii'),(71,1,1,'ultrapan'),(72,1,1,'unhingeddonkey'),(73,1,1,'fuzzywulf'),(74,1,1,'avantbored'),(75,1,1,'MrSquidward45'),(76,1,1,'ZhWei99'),(77,1,1,'tznik'),(78,1,1,'jrad007'),(79,1,1,'Rayviper'),(80,1,1,'pokemon6949'),(81,1,1,'icedbeverage'),(82,1,1,'samtherat6'),(83,1,1,'chocoboat'),(84,1,1,'gsauce8'),(85,1,1,'tarkinn'),(86,1,1,'gauthi3r'),(87,1,1,'izeezusizeezus'),(88,1,1,'conn911'),(89,1,1,'jdrodrig'),(90,1,1,'varishtg'),(91,1,1,'z4yyy'),(92,1,1,'polskaponadrzydzie'),(93,1,1,'mytommy'),(94,1,1,'COSenna'),(95,1,1,'SlavSy'),(96,1,1,'jtreminio'),(97,1,1,'browncoat5'),(98,1,1,'suley2'),(99,1,1,'lugiank'),(100,1,1,'TerraCottaFrog'),(101,1,1,'DixiePixies'),(102,1,1,'ArieTofeq17'),(103,1,1,'Aoussar123'),(104,1,1,'YoungBuscemi'),(105,1,1,'SmileGuyMD'),(106,1,1,'Eason85'),(107,1,1,'readitandonethat'),(108,1,1,'cyanide04'),(109,1,1,'newtonfb'),(110,1,1,'Cyontagi'),(111,1,1,'WHOwallpapers'),(112,1,1,'HexadecimalCowboy'),(113,1,1,'katakoria'),(114,1,1,'sushicomped'),(115,1,1,'mojomonday'),(116,1,1,'ppaco1'),(117,1,1,'OoopsMisclick'),(118,1,1,'roushrsh'),(119,1,1,'CalmDownMonkey'),(120,1,1,'Fiveby21'),(121,1,1,'Wintersoldierkb9'),(122,1,1,'WhompyMcFat'),(123,1,1,'East_Korean'),(124,1,1,'Matifk'),(125,1,1,'BorysInHD'),(126,1,1,'Propagation931'),(127,1,1,'stringParameter'),(128,1,1,'Jake1122'),(129,1,1,'lazerturkey'),(130,1,1,'trundle42'),(131,1,1,'tomdunstan'),(132,1,1,'balloonredd'),(133,1,1,'grunt_monkey_'),(134,1,1,'MrDarkwraith'),(135,1,1,'terrybytehasryzen'),(136,1,1,'itskzeh'),(137,1,1,'olbwaol'),(138,1,1,'cmswaking123'),(139,1,1,'holygift2'),(140,1,1,'thebaddguyy'),(141,1,1,'pokexpert30'),(142,1,1,'txr1018'),(143,1,1,'GrouchyVariety'),(144,1,1,'Kevin123432'),(145,1,1,'riahc4'),(146,1,1,'VR_Daddy'),(147,1,1,'notadellfanboy'),(148,1,1,'pluslucas'),(149,1,1,'krubss'),(150,1,1,'patrick_carlson_'),(151,1,1,'rojicha07'),(152,1,1,'Sir_Seeker'),(153,1,1,'Azarias59'),(154,1,1,'oscar555'),(155,1,1,'jmwnf'),(156,1,1,'Mav_58'),(157,1,1,'hackerman225'),(158,1,1,'fpwhite'),(159,1,1,'juan03233'),(160,1,1,'Rand0mUs3'),(161,1,1,'CaptCoffeeCake'),(162,1,1,'AskMP'),(163,1,1,'heraldojones'),(164,1,1,'novaguy88'),(165,1,1,'TimurHu'),(166,1,1,'davidshen84'),(167,1,1,'VantagePointLLC'),(168,1,1,'xeneral'),(169,1,1,'nine-stories'),(170,1,1,'otanishock'),(171,1,1,'tomshreds'),(172,1,1,'Giantmushroom64'),(173,1,1,'WorldlyBeing'),(174,1,1,'Zenn1nja'),(175,1,1,'r4sun'),(176,1,1,'Alabatman'),(177,1,1,'RichardBao'),(178,1,1,'c0dist_'),(179,1,1,'PierreBdeB'),(180,1,1,'piccoach'),(181,1,1,'technocrat_13'),(182,1,1,'MatthewUshijima'),(183,1,1,'WampaCow'),(184,1,1,'robin994'),(185,1,1,'Dr_McSleepy'),(186,1,1,'isakmo'),(187,1,1,'AspireHer0'),(188,1,1,'NoFriction'),(189,1,1,'FriendlySituation'),(190,1,1,'Walkerstain'),(191,1,1,'LomaBoka'),(192,1,1,'KeyWalnut'),(193,1,1,'jordanissport'),(194,1,1,'UrMomsButtDoctor'),(195,1,1,'jpgrassi'),(196,1,1,'D_Touch'),(197,1,1,'KSgaiden'),(198,1,1,'shurikenmight'),(199,1,1,'lord_bajunuck'),(200,1,1,'Riumi'),(201,1,1,'circle26'),(202,1,1,'tegq'),(203,1,1,'phamio23'),(204,1,1,'15081985'),(205,1,1,'afellowinternetuser'),(206,1,1,'egasseMneddiH'),(207,1,1,'blakew510'),(208,1,1,'Show_Me_Your_Chode'),(209,1,1,'mrislam_'),(210,1,1,'gdx'),(211,1,1,'dbwalkerr'),(212,1,1,'wobel85'),(213,1,1,'PraisePace'),(214,1,1,'thegremlin599'),(215,1,1,'ismebrandon'),(216,1,1,'darksnes'),(217,1,1,'Technotronsky'),(218,1,1,'gordoncheong'),(219,1,1,'rstrube'),(220,1,1,'supjackjack'),(221,1,1,'frostyofthenorth'),(222,1,1,'Champizard'),(223,1,1,'ItzAether'),(224,1,1,'woodenspoonboy'),(225,1,1,'zman441'),(226,1,1,'_BreakfastBlend_'),(227,1,1,'Sneeakyasian'),(228,1,1,'Bitcoin_Acolyte'),(229,1,1,'doctorbighead'),(230,1,1,'tornadomood'),(231,1,1,'tech_view_20'),(232,1,1,'gdkod'),(233,1,1,'Crypto-Rookie'),(234,1,1,'vinhtq115'),(235,1,1,'ljmerlo'),(236,1,1,'Shurikenmight2'),(237,1,1,'anterak13'),(238,1,1,'DickHumbird'),(239,1,1,'juanbretti'),(240,1,1,'Erik713'),(241,1,1,'snowsquirrel'),(242,1,1,'biglordtitan'),(243,1,1,'rockav'),(244,1,1,'newman1080'),(245,1,1,'nogoalov11'),(246,1,1,'gransignore'),(247,1,1,'showmak'),(248,1,1,'ruscentau'),(249,1,1,'fc0712'),(250,1,1,'mekanist'),(251,1,1,'designflaw2b'),(252,1,1,'sieffy'),(253,1,1,'baltimorebirds25'),(254,1,1,'aisle_nine'),(255,1,1,'oyunfan'),(256,1,1,'Thunder_Ruler0'),(257,1,1,'MoodyPandu'),(258,1,1,'Zoomichi'),(259,1,1,'connstark'),(260,1,1,'rickmofujohn'),(261,1,1,'Baked_Potato22'),(262,1,1,'henryhrlim'),(263,1,1,'Andytom1969'),(264,1,1,'dylanneedshelp'),(265,1,1,'n0ah_dasilva'),(266,1,1,'Harambit1'),(267,1,1,'eXtremeRR'),(268,1,1,'CrankOnReddit'),(269,1,1,'Kutoru'),(270,1,1,'Slaskwroclaw18'),(271,1,1,'megh500'),(272,1,1,'m4ly'),(273,1,1,'JellyFishIceCream'),(274,1,1,'Jrankinstein'),(275,1,1,'SteveTheFreshman'),(276,1,1,'nilax1'),(277,1,1,'AaltoSax'),(278,1,1,'Tomas-00'),(279,1,1,'the7thPineapple'),(280,1,1,'stevegazzio'),(281,1,1,'5hoursofsleep'),(282,1,1,'Gazumbo'),(283,1,1,'karmawhale'),(284,1,1,'AirRights11'),(285,1,1,'AMDisCool'),(286,1,1,'Darth_Agnon'),(287,1,1,'altiarblade'),(288,1,1,'electricalgypsy'),(289,1,1,'MartinVino'),(290,1,1,'blaaaahhhhh'),(291,1,1,'g0nzales'),(292,1,1,'nickybu'),(293,1,1,'agaskew'),(294,1,1,'H908pdj410'),(295,1,1,'downvotethelogic'),(296,1,1,'coppockm'),(297,1,1,'richhard'),(298,1,1,'nielsfa'),(299,1,1,'GS104'),(300,1,1,'Ndaniel1'),(301,1,1,'thuug69'),(302,1,1,'falschgold'),(303,1,1,'hudsk'),(304,1,1,'KeyRepresentative7'),(305,1,1,'xcamden'),(306,1,1,'sendnutesgunray'),(307,1,1,'minato994'),(308,1,1,'hmmmmm92'),(309,1,1,'moliverac8'),(310,1,1,'w921'),(311,1,1,'Dami97411'),(312,1,1,'spartanrhodian'),(313,1,1,'Deft-Trafalgar'),(314,1,1,'Ayrabih'),(315,1,1,'sinapsys1'),(316,1,1,'The-Scotsman_'),(317,1,1,'Mercuryaces'),(318,1,1,'Mortal_Mc'),(319,1,1,'FadeOfWolf'),(320,1,1,'GabrielMisfire'),(321,1,1,'Pyro_V'),(322,1,1,'eintown'),(323,1,1,'jmeush'),(324,1,1,'Isbiten'),(325,1,1,'DiogoAlmeida97'),(326,1,1,'laptop22'),(327,1,1,'szymonm2'),(328,1,1,'hysterz'),(329,1,1,'Darktrek835'),(330,1,1,'Ns2-'),(331,1,1,'rocketpoweredpower'),(332,1,1,'FineError'),(333,1,1,'Latiken'),(334,1,1,'GHOST-3012'),(335,1,1,'Xubuntu24'),(336,1,1,'Icy_Mind'),(337,1,1,'lamoondb'),(338,1,1,'TheTribunalscause'),(339,1,1,'jamdell'),(340,1,1,'junglemafia123'),(341,1,1,'hatefulb0y'),(342,1,1,'babyunvamp'),(343,1,1,'reptileexperts'),(344,1,1,'Tamago_Sushi'),(345,1,1,'xps9570'),(346,1,1,'EternityOnDemand'),(347,1,1,'shresthabijay26'),(348,1,1,'RailingRailRoad'),(349,1,1,'bladeroyce'),(350,1,1,'givinit'),(351,1,1,'IIn0x'),(352,1,1,'Dineeeee'),(353,1,1,'Mtarief'),(354,1,1,'Worlddue'),(355,1,1,'chumbawumba2392'),(356,1,1,'SOUINnnn'),(357,1,1,'salamander_gus'),(358,1,1,'euphonicstru'),(359,1,1,'jifewgef'),(360,1,1,'chung_neutrino'),(361,1,1,'Wulmar'),(362,1,1,'Smithy_21'),(363,1,1,'Anagmate'),(364,1,1,'flabbychicken'),(365,1,1,'Brooktrout12'),(366,1,1,'MGFusion'),(367,1,1,'theepiccarday808'),(368,1,1,'felton1592'),(369,1,1,'iceb34r'),(370,1,1,'IndianKobra'),(371,1,1,'destraht'),(372,1,1,'baydude510'),(373,1,1,'rippmaster13'),(374,1,1,'Viken-420'),(375,1,1,'tzephyrus'),(376,1,1,'ThatWeirdTechGuy'),(377,1,1,'danterolle'),(378,1,1,'Shupeys'),(379,1,1,'DerEisenKanzler'),(380,1,1,'KobaltKaria'),(381,1,1,'Apocrypha888'),(382,1,1,'Erohunter'),(383,1,1,'mal942'),(384,1,1,'FjakaConnoisseur'),(385,1,1,'nghia3d'),(386,1,1,'Subscribe2257'),(387,1,1,'hossamdex'),(388,1,1,'pkogrt'),(389,1,1,'TrevorHikes'),(390,1,1,'MemeDream123'),(391,1,1,'ANILE8R'),(392,1,1,'bigchau'),(393,1,1,'crocodile008'),(394,1,1,'fickknecht6688'),(395,1,1,'mwake4goten'),(396,1,1,'LenaCutey'),(397,1,1,'Broccothedoggo'),(398,1,1,'CrowFoxy'),(399,1,1,'lovestaring'),(400,1,1,'_RedEyedJedi');

/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2020-01-19  2:20:38

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `name` varchar(220) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,1,'dell'),(2,1,'acer'),(3,1,'lenovo'),(4,1,'apple'),(5,1,'sony'),(6,1,'samsung'),(7,1,'asus'),(8,1,'hp'),(9,2,'apple'),(10,2,'samsung'),(11,2,'xiaomi'),(12,2,'sony'),(13,2,'blackberry'),(14,2,'nokia');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(220) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'laptops'),(2,'phones'),(3,'cosmetics'),(4,'cars'),(5,'men\'s watches');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `name` varchar(220) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,1,1,'AutoModerator'),(2,1,1,'Teechce'),(3,1,1,'WalkingHat'),(4,1,1,'sleekpaprika69'),(5,1,1,'monstergeek'),(6,1,1,'SolitaireJack'),(7,1,1,'kaitlyn2004'),(8,1,1,'watsoncharlie11'),(9,1,1,'cobra_kitten'),(10,1,1,'jdrch'),(11,1,1,'z0rgatr0n'),(12,1,1,'memlimexced'),(13,1,1,'Anomalous11'),(14,1,1,'jcarter315'),(15,1,1,'wendyjreichert'),(16,1,1,'Raging_Red_Rocket'),(17,1,1,'djjuice'),(18,1,1,'Doctor-JJ'),(19,1,1,'PhiWeaver'),(20,1,1,'SaveThaTrees'),(21,1,1,'SalomaoRosa22'),(22,1,1,'Penn0r'),(23,1,1,'-SomeIndianDude-'),(24,1,1,'THOMASTHEDANKENGlNE'),(25,1,1,'Homeguy123'),(26,1,1,'Nadior95'),(27,1,1,'Peng-Win'),(28,1,1,'joeker9787'),(29,1,1,'freiform'),(30,1,1,'gnwjd12'),(31,1,1,'vtaznboylei'),(32,1,1,'khbre'),(33,1,1,'tubbyboi'),(34,1,1,'itsimmanuelwithani'),(35,1,1,'zakazak'),(36,1,1,'be_pj'),(37,1,1,'President_Ved'),(38,1,1,'EragusTrenzalore'),(39,1,1,'dHaniel_'),(40,1,1,'AirNick1'),(41,1,1,'Jasonwj322a'),(42,1,1,'lucellent'),(43,1,1,'tryingtofindareddit'),(44,1,1,'EdibleMuffin'),(45,1,1,'Abe020791'),(46,1,1,'A4orce84'),(47,1,1,'Nyctinus'),(48,1,1,'#NAME?'),(49,1,1,'corvus917'),(50,1,1,'jironfield'),(51,1,1,'um_rr'),(52,1,1,'stevets101'),(53,1,1,'Ghopper21'),(54,1,1,'Slowmac123'),(55,1,1,'ruohtas'),(56,1,1,'codyblue_'),(57,1,1,'bwintx'),(58,1,1,'Mo-Mo-Money'),(59,1,1,'Jam750'),(60,1,1,'seanantonio'),(61,1,1,'cardshark1234'),(62,1,1,'thevariant2017'),(63,1,1,'Clustre'),(64,1,1,'mathiasbaer'),(65,1,1,'JJRedit2016'),(66,1,1,'keiller84'),(67,1,1,'Geded12'),(68,1,1,'SebastianFurz'),(69,1,1,'Tony72495'),(70,1,1,'Kaimaniiii'),(71,1,1,'ultrapan'),(72,1,1,'unhingeddonkey'),(73,1,1,'fuzzywulf'),(74,1,1,'avantbored'),(75,1,1,'MrSquidward45'),(76,1,1,'ZhWei99'),(77,1,1,'tznik'),(78,1,1,'jrad007'),(79,1,1,'Rayviper'),(80,1,1,'pokemon6949'),(81,1,1,'icedbeverage'),(82,1,1,'samtherat6'),(83,1,1,'chocoboat'),(84,1,1,'gsauce8'),(85,1,1,'tarkinn'),(86,1,1,'gauthi3r'),(87,1,1,'izeezusizeezus'),(88,1,1,'conn911'),(89,1,1,'jdrodrig'),(90,1,1,'varishtg'),(91,1,1,'z4yyy'),(92,1,1,'polskaponadrzydzie'),(93,1,1,'mytommy'),(94,1,1,'COSenna'),(95,1,1,'SlavSy'),(96,1,1,'jtreminio'),(97,1,1,'browncoat5'),(98,1,1,'suley2'),(99,1,1,'lugiank'),(100,1,1,'TerraCottaFrog'),(101,1,1,'DixiePixies'),(102,1,1,'ArieTofeq17'),(103,1,1,'Aoussar123'),(104,1,1,'YoungBuscemi'),(105,1,1,'SmileGuyMD'),(106,1,1,'Eason85'),(107,1,1,'readitandonethat'),(108,1,1,'cyanide04'),(109,1,1,'newtonfb'),(110,1,1,'Cyontagi'),(111,1,1,'WHOwallpapers'),(112,1,1,'HexadecimalCowboy'),(113,1,1,'katakoria'),(114,1,1,'sushicomped'),(115,1,1,'mojomonday'),(116,1,1,'ppaco1'),(117,1,1,'OoopsMisclick'),(118,1,1,'roushrsh'),(119,1,1,'CalmDownMonkey'),(120,1,1,'Fiveby21'),(121,1,1,'Wintersoldierkb9'),(122,1,1,'WhompyMcFat'),(123,1,1,'East_Korean'),(124,1,1,'Matifk'),(125,1,1,'BorysInHD'),(126,1,1,'Propagation931'),(127,1,1,'stringParameter'),(128,1,1,'Jake1122'),(129,1,1,'lazerturkey'),(130,1,1,'trundle42'),(131,1,1,'tomdunstan'),(132,1,1,'balloonredd'),(133,1,1,'grunt_monkey_'),(134,1,1,'MrDarkwraith'),(135,1,1,'terrybytehasryzen'),(136,1,1,'itskzeh'),(137,1,1,'olbwaol'),(138,1,1,'cmswaking123'),(139,1,1,'holygift2'),(140,1,1,'thebaddguyy'),(141,1,1,'pokexpert30'),(142,1,1,'txr1018'),(143,1,1,'GrouchyVariety'),(144,1,1,'Kevin123432'),(145,1,1,'riahc4'),(146,1,1,'VR_Daddy'),(147,1,1,'notadellfanboy'),(148,1,1,'pluslucas'),(149,1,1,'krubss'),(150,1,1,'patrick_carlson_'),(151,1,1,'rojicha07'),(152,1,1,'Sir_Seeker'),(153,1,1,'Azarias59'),(154,1,1,'oscar555'),(155,1,1,'jmwnf'),(156,1,1,'Mav_58'),(157,1,1,'hackerman225'),(158,1,1,'fpwhite'),(159,1,1,'juan03233'),(160,1,1,'Rand0mUs3'),(161,1,1,'CaptCoffeeCake'),(162,1,1,'AskMP'),(163,1,1,'heraldojones'),(164,1,1,'novaguy88'),(165,1,1,'TimurHu'),(166,1,1,'davidshen84'),(167,1,1,'VantagePointLLC'),(168,1,1,'xeneral'),(169,1,1,'nine-stories'),(170,1,1,'otanishock'),(171,1,1,'tomshreds'),(172,1,1,'Giantmushroom64'),(173,1,1,'WorldlyBeing'),(174,1,1,'Zenn1nja'),(175,1,1,'r4sun'),(176,1,1,'Alabatman'),(177,1,1,'RichardBao'),(178,1,1,'c0dist_'),(179,1,1,'PierreBdeB'),(180,1,1,'piccoach'),(181,1,1,'technocrat_13'),(182,1,1,'MatthewUshijima'),(183,1,1,'WampaCow'),(184,1,1,'robin994'),(185,1,1,'Dr_McSleepy'),(186,1,1,'isakmo'),(187,1,1,'AspireHer0'),(188,1,1,'NoFriction'),(189,1,1,'FriendlySituation'),(190,1,1,'Walkerstain'),(191,1,1,'LomaBoka'),(192,1,1,'KeyWalnut'),(193,1,1,'jordanissport'),(194,1,1,'UrMomsButtDoctor'),(195,1,1,'jpgrassi'),(196,1,1,'D_Touch'),(197,1,1,'KSgaiden'),(198,1,1,'shurikenmight'),(199,1,1,'lord_bajunuck'),(200,1,1,'Riumi'),(201,1,1,'circle26'),(202,1,1,'tegq'),(203,1,1,'phamio23'),(204,1,1,'15081985'),(205,1,1,'afellowinternetuser'),(206,1,1,'egasseMneddiH'),(207,1,1,'blakew510'),(208,1,1,'Show_Me_Your_Chode'),(209,1,1,'mrislam_'),(210,1,1,'gdx'),(211,1,1,'dbwalkerr'),(212,1,1,'wobel85'),(213,1,1,'PraisePace'),(214,1,1,'thegremlin599'),(215,1,1,'ismebrandon'),(216,1,1,'darksnes'),(217,1,1,'Technotronsky'),(218,1,1,'gordoncheong'),(219,1,1,'rstrube'),(220,1,1,'supjackjack'),(221,1,1,'frostyofthenorth'),(222,1,1,'Champizard'),(223,1,1,'ItzAether'),(224,1,1,'woodenspoonboy'),(225,1,1,'zman441'),(226,1,1,'_BreakfastBlend_'),(227,1,1,'Sneeakyasian'),(228,1,1,'Bitcoin_Acolyte'),(229,1,1,'doctorbighead'),(230,1,1,'tornadomood'),(231,1,1,'tech_view_20'),(232,1,1,'gdkod'),(233,1,1,'Crypto-Rookie'),(234,1,1,'vinhtq115'),(235,1,1,'ljmerlo'),(236,1,1,'Shurikenmight2'),(237,1,1,'anterak13'),(238,1,1,'DickHumbird'),(239,1,1,'juanbretti'),(240,1,1,'Erik713'),(241,1,1,'snowsquirrel'),(242,1,1,'biglordtitan'),(243,1,1,'rockav'),(244,1,1,'newman1080'),(245,1,1,'nogoalov11'),(246,1,1,'gransignore'),(247,1,1,'showmak'),(248,1,1,'ruscentau'),(249,1,1,'fc0712'),(250,1,1,'mekanist'),(251,1,1,'designflaw2b'),(252,1,1,'sieffy'),(253,1,1,'baltimorebirds25'),(254,1,1,'aisle_nine'),(255,1,1,'oyunfan'),(256,1,1,'Thunder_Ruler0'),(257,1,1,'MoodyPandu'),(258,1,1,'Zoomichi'),(259,1,1,'connstark'),(260,1,1,'rickmofujohn'),(261,1,1,'Baked_Potato22'),(262,1,1,'henryhrlim'),(263,1,1,'Andytom1969'),(264,1,1,'dylanneedshelp'),(265,1,1,'n0ah_dasilva'),(266,1,1,'Harambit1'),(267,1,1,'eXtremeRR'),(268,1,1,'CrankOnReddit'),(269,1,1,'Kutoru'),(270,1,1,'Slaskwroclaw18'),(271,1,1,'megh500'),(272,1,1,'m4ly'),(273,1,1,'JellyFishIceCream'),(274,1,1,'Jrankinstein'),(275,1,1,'SteveTheFreshman'),(276,1,1,'nilax1'),(277,1,1,'AaltoSax'),(278,1,1,'Tomas-00'),(279,1,1,'the7thPineapple'),(280,1,1,'stevegazzio'),(281,1,1,'5hoursofsleep'),(282,1,1,'Gazumbo'),(283,1,1,'karmawhale'),(284,1,1,'AirRights11'),(285,1,1,'AMDisCool'),(286,1,1,'Darth_Agnon'),(287,1,1,'altiarblade'),(288,1,1,'electricalgypsy'),(289,1,1,'MartinVino'),(290,1,1,'blaaaahhhhh'),(291,1,1,'g0nzales'),(292,1,1,'nickybu'),(293,1,1,'agaskew'),(294,1,1,'H908pdj410'),(295,1,1,'downvotethelogic'),(296,1,1,'coppockm'),(297,1,1,'richhard'),(298,1,1,'nielsfa'),(299,1,1,'GS104'),(300,1,1,'Ndaniel1'),(301,1,1,'thuug69'),(302,1,1,'falschgold'),(303,1,1,'hudsk'),(304,1,1,'KeyRepresentative7'),(305,1,1,'xcamden'),(306,1,1,'sendnutesgunray'),(307,1,1,'minato994'),(308,1,1,'hmmmmm92'),(309,1,1,'moliverac8'),(310,1,1,'w921'),(311,1,1,'Dami97411'),(312,1,1,'spartanrhodian'),(313,1,1,'Deft-Trafalgar'),(314,1,1,'Ayrabih'),(315,1,1,'sinapsys1'),(316,1,1,'The-Scotsman_'),(317,1,1,'Mercuryaces'),(318,1,1,'Mortal_Mc'),(319,1,1,'FadeOfWolf'),(320,1,1,'GabrielMisfire'),(321,1,1,'Pyro_V'),(322,1,1,'eintown'),(323,1,1,'jmeush'),(324,1,1,'Isbiten'),(325,1,1,'DiogoAlmeida97'),(326,1,1,'laptop22'),(327,1,1,'szymonm2'),(328,1,1,'hysterz'),(329,1,1,'Darktrek835'),(330,1,1,'Ns2-'),(331,1,1,'rocketpoweredpower'),(332,1,1,'FineError'),(333,1,1,'Latiken'),(334,1,1,'GHOST-3012'),(335,1,1,'Xubuntu24'),(336,1,1,'Icy_Mind'),(337,1,1,'lamoondb'),(338,1,1,'TheTribunalscause'),(339,1,1,'jamdell'),(340,1,1,'junglemafia123'),(341,1,1,'hatefulb0y'),(342,1,1,'babyunvamp'),(343,1,1,'reptileexperts'),(344,1,1,'Tamago_Sushi'),(345,1,1,'xps9570'),(346,1,1,'EternityOnDemand'),(347,1,1,'shresthabijay26'),(348,1,1,'RailingRailRoad'),(349,1,1,'bladeroyce'),(350,1,1,'givinit'),(351,1,1,'IIn0x'),(352,1,1,'Dineeeee'),(353,1,1,'Mtarief'),(354,1,1,'Worlddue'),(355,1,1,'chumbawumba2392'),(356,1,1,'SOUINnnn'),(357,1,1,'salamander_gus'),(358,1,1,'euphonicstru'),(359,1,1,'jifewgef'),(360,1,1,'chung_neutrino'),(361,1,1,'Wulmar'),(362,1,1,'Smithy_21'),(363,1,1,'Anagmate'),(364,1,1,'flabbychicken'),(365,1,1,'Brooktrout12'),(366,1,1,'MGFusion'),(367,1,1,'theepiccarday808'),(368,1,1,'felton1592'),(369,1,1,'iceb34r'),(370,1,1,'IndianKobra'),(371,1,1,'destraht'),(372,1,1,'baydude510'),(373,1,1,'rippmaster13'),(374,1,1,'Viken-420'),(375,1,1,'tzephyrus'),(376,1,1,'ThatWeirdTechGuy'),(377,1,1,'danterolle'),(378,1,1,'Shupeys'),(379,1,1,'DerEisenKanzler'),(380,1,1,'KobaltKaria'),(381,1,1,'Apocrypha888'),(382,1,1,'Erohunter'),(383,1,1,'mal942'),(384,1,1,'FjakaConnoisseur'),(385,1,1,'nghia3d'),(386,1,1,'Subscribe2257'),(387,1,1,'hossamdex'),(388,1,1,'pkogrt'),(389,1,1,'TrevorHikes'),(390,1,1,'MemeDream123'),(391,1,1,'ANILE8R'),(392,1,1,'bigchau'),(393,1,1,'crocodile008'),(394,1,1,'fickknecht6688'),(395,1,1,'mwake4goten'),(396,1,1,'LenaCutey'),(397,1,1,'Broccothedoggo'),(398,1,1,'CrowFoxy'),(399,1,1,'lovestaring'),(400,1,1,'_RedEyedJedi');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `influencers`
--

DROP TABLE IF EXISTS `influencers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `influencers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `name` varchar(220) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `influencers`
--

LOCK TABLES `influencers` WRITE;
/*!40000 ALTER TABLE `influencers` DISABLE KEYS */;
INSERT INTO `influencers` VALUES (1,1,1,'Jam750'),(2,1,1,'ArieTofeq17'),(3,1,1,'mojomonday'),(4,1,1,'trundle42'),(5,1,1,'VantagePointLLC'),(6,1,1,'c0dist_'),(7,1,1,'phamio23'),(8,1,1,'biglordtitan'),(9,1,1,'JellyFishIceCream'),(10,1,1,'w921'),(11,1,1,'jmeush'),(12,1,1,'Wulmar'),(13,1,1,'hossamdex'),(14,1,1,'fickknecht6688');
/*!40000 ALTER TABLE `influencers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-28 23:00:23


