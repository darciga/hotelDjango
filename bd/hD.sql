-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: hD
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.10.1

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
-- Table structure for table `auth_group`
CREATE Database hD;

USE hD;
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add version',7,'add_version'),(20,'Can change version',7,'change_version'),(21,'Can delete version',7,'delete_version'),(22,'Can add evolution',8,'add_evolution'),(23,'Can change evolution',8,'change_evolution'),(24,'Can delete evolution',8,'delete_evolution'),(25,'Can add Cliente',9,'add_cliente'),(26,'Can change Cliente',9,'change_cliente'),(27,'Can delete Cliente',9,'delete_cliente'),(28,'Can add Tipo habitacion',10,'add_tipohabitacion'),(29,'Can change Tipo habitacion',10,'change_tipohabitacion'),(30,'Can delete Tipo habitacion',10,'delete_tipohabitacion'),(31,'Can add Habitacion',11,'add_habitacion'),(32,'Can change Habitacion',11,'change_habitacion'),(33,'Can delete Habitacion',11,'delete_habitacion'),(34,'Can add Reservacion',12,'add_reservacion'),(35,'Can change Reservacion',12,'change_reservacion'),(36,'Can delete Reservacion',12,'delete_reservacion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$Cu161DcUvcoi$MUtjgdowgyWokqzbr236Z0hCNJZgxQUTITuTTzXxZKE=','2014-01-05 00:43:04',1,'dante','','','dante.omar.arciga@gmail.com',1,1,'2014-01-05 00:42:20'),(2,'pbkdf2_sha256$12000$OwBZdkjU0zEI$FVCNJg2iw0sey6tQU+tSNqZ/rGWv41UJkV8SppQyx/Q=','2014-01-05 01:05:21',0,'darciga','Omar','Arciga','dante.omar.arciga@outlook.com',0,1,'2014-01-05 01:05:21');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-01-05 00:59:11',1,10,'1','Hab. Economica 1 Cama Matrimonial',1,''),(2,'2014-01-05 00:59:26',1,10,'2','Hab. Economica 2 Cama Matrimonial',1,''),(3,'2014-01-05 00:59:45',1,10,'3','Hab. Economica 3 Cama Matrimonial',1,''),(4,'2014-01-05 01:00:01',1,10,'4','Hab. Normal 1 Cama Matrimonial',1,''),(5,'2014-01-05 01:00:15',1,10,'5','Hab. Normal 2 Camas Matrimonial',1,''),(6,'2014-01-05 01:00:30',1,10,'6','Hab. Normal 3 Camas Matrimonial',1,''),(7,'2014-01-05 01:00:48',1,10,'7','Suite',1,''),(8,'2014-01-05 01:01:02',1,10,'8','Junior Suite',1,''),(9,'2014-01-05 01:01:15',1,10,'9','Master Suite',1,''),(10,'2014-01-05 01:01:42',1,11,'1','Habitacion 1',1,''),(11,'2014-01-05 01:02:05',1,11,'2','Habitacion 2',1,''),(12,'2014-01-05 01:02:31',1,11,'3','Habitacion 3',1,''),(13,'2014-01-05 01:02:56',1,11,'4','Habitacion 4',1,''),(14,'2014-01-05 01:03:18',1,11,'5','Habitacion 5',1,''),(15,'2014-01-05 01:03:37',1,11,'6','Habitacion 6',1,''),(16,'2014-01-05 01:04:01',1,11,'7','Habitacion 7',1,''),(17,'2014-01-05 01:04:30',1,11,'8','Habitacion 8',1,''),(18,'2014-01-05 01:04:55',1,11,'9','Habitacion 9',1,''),(19,'2014-01-05 01:05:21',1,4,'2','darciga',1,''),(20,'2014-01-05 01:05:28',1,9,'1','darciga',1,''),(21,'2014-01-05 01:05:50',1,4,'2','darciga',2,'Changed first_name, last_name and email.'),(22,'2014-01-05 01:06:22',1,12,'1','darciga',1,''),(23,'2014-01-05 23:44:22',1,10,'9','Master Suite',2,'Changed imagen.'),(24,'2014-01-05 23:44:35',1,10,'8','Junior Suite',2,'Changed imagen.'),(25,'2014-01-05 23:44:43',1,10,'9','Master Suite',2,'Changed imagen.'),(26,'2014-01-05 23:44:53',1,10,'7','Suite',2,'Changed imagen.'),(27,'2014-01-05 23:45:02',1,10,'6','Hab. Normal 3 Camas Matrimonial',2,'Changed imagen.'),(28,'2014-01-05 23:45:19',1,10,'5','Hab. Normal 2 Camas Matrimonial',2,'Changed imagen.'),(29,'2014-01-05 23:45:30',1,10,'4','Hab. Normal 1 Cama Matrimonial',2,'Changed imagen.'),(30,'2014-01-05 23:45:39',1,10,'3','Hab. Economica 3 Cama Matrimonial',2,'Changed imagen.'),(31,'2014-01-05 23:45:48',1,10,'2','Hab. Economica 2 Cama Matrimonial',2,'Changed imagen.'),(32,'2014-01-05 23:45:55',1,10,'1','Hab. Economica 1 Cama Matrimonial',2,'Changed imagen.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'version','django_evolution','version'),(8,'evolution','django_evolution','evolution'),(9,'Cliente','hotel','cliente'),(10,'Tipo habitacion','hotel','tipohabitacion'),(11,'Habitacion','hotel','habitacion'),(12,'Reservacion','hotel','reservacion');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_evolution`
--

DROP TABLE IF EXISTS `django_evolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_evolution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_id` int(11) NOT NULL,
  `app_label` varchar(200) NOT NULL,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_evolution_f516c2b3` (`version_id`),
  CONSTRAINT `version_id_refs_id_946f97c5` FOREIGN KEY (`version_id`) REFERENCES `django_project_version` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_evolution`
--

LOCK TABLES `django_evolution` WRITE;
/*!40000 ALTER TABLE `django_evolution` DISABLE KEYS */;
INSERT INTO `django_evolution` VALUES (1,1,'auth','auth_delete_message'),(2,1,'sessions','session_expire_date_db_index');
/*!40000 ALTER TABLE `django_evolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_project_version`
--

DROP TABLE IF EXISTS `django_project_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_project_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `signature` longtext NOT NULL,
  `when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_project_version`
--

LOCK TABLES `django_project_version` WRITE;
/*!40000 ALTER TABLE `django_project_version` DISABLE KEYS */;
INSERT INTO `django_project_version` VALUES (1,'(dp1\nS\'sessions\'\np2\nccopy_reg\n_reconstructor\np3\n(cdjango.utils.datastructures\nSortedDict\np4\nc__builtin__\ndict\np5\n(dp6\nS\'Session\'\np7\n(dp8\nS\'fields\'\np9\n(dp10\nS\'session_key\'\np11\n(dp12\nS\'field_type\'\np13\ncdjango.db.models.fields\nCharField\np14\nsS\'max_length\'\np15\nI40\nsS\'primary_key\'\np16\nI01\nssS\'expire_date\'\np17\n(dp18\ng13\ncdjango.db.models.fields\nDateTimeField\np19\nsS\'db_index\'\np20\nI01\nssS\'session_data\'\np21\n(dp22\ng13\ncdjango.db.models.fields\nTextField\np23\nsssS\'meta\'\np24\n(dp25\nS\'unique_together\'\np26\n(lp27\nsS\'db_table\'\np28\nS\'django_session\'\np29\nsS\'db_tablespace\'\np30\nS\'\'\nsS\'pk_column\'\np31\ng11\nssstRp32\n(dp33\nS\'keyOrder\'\np34\n(lp35\ng7\nasbsS\'admin\'\np36\ng3\n(g4\ng5\n(dp37\nS\'LogEntry\'\np38\n(dp39\ng9\n(dp40\nS\'action_flag\'\np41\n(dp42\ng13\ncdjango.db.models.fields\nPositiveSmallIntegerField\np43\nssS\'action_time\'\np44\n(dp45\ng13\ng19\nssS\'object_repr\'\np46\n(dp47\ng13\ng14\nsg15\nI200\nssS\'object_id\'\np48\n(dp49\ng13\ng23\nsS\'null\'\np50\nI01\nssS\'change_message\'\np51\n(dp52\ng13\ng23\nssS\'user\'\np53\n(dp54\ng13\ncdjango.db.models.fields.related\nForeignKey\np55\nsS\'related_model\'\np56\nVauth.User\np57\nssS\'content_type\'\np58\n(dp59\ng13\ng55\nsg50\nI01\nsg56\nVcontenttypes.ContentType\np60\nssVid\np61\n(dp62\ng13\ncdjango.db.models.fields\nAutoField\np63\nsg16\nI01\nsssg24\n(dp64\ng26\n(lp65\nsg28\nVdjango_admin_log\np66\nsg30\nS\'\'\nsg31\ng61\nssstRp67\n(dp68\ng34\n(lp69\ng38\nasbsS\'hotel\'\np70\ng3\n(g4\ng5\n(dp71\nS\'tipoHabitacion\'\np72\n(dp73\ng9\n(dp74\nS\'nombre\'\np75\n(dp76\ng13\ng14\nsg15\nI40\nssS\'precio\'\np77\n(dp78\ng13\ncdjango.db.models.fields\nFloatField\np79\nsg50\nI01\nssg61\n(dp80\ng13\ng63\nsg16\nI01\nsssg24\n(dp81\ng26\n(lp82\nsg28\nVhotel_tipohabitacion\np83\nsg30\nS\'\'\nsg31\ng61\nsssS\'reservacion\'\np84\n(dp85\ng9\n(dp86\nS\'num_n\'\np87\n(dp88\ng13\ncdjango.db.models.fields\nIntegerField\np89\nsg50\nI01\nssS\'num_a\'\np90\n(dp91\ng13\ng89\nssS\'habitacion\'\np92\n(dp93\ng13\ng55\nsg56\nVhotel.habitacion\np94\nssS\'fechaCrea\'\np95\n(dp96\ng13\ng19\nssS\'fechaSal\'\np97\n(dp98\ng13\ncdjango.db.models.fields\nDateField\np99\nssS\'cliente\'\np100\n(dp101\ng13\ng55\nsg56\nVhotel.cliente\np102\nssS\'estado\'\np103\n(dp104\ng13\ng89\nssg61\n(dp105\ng13\ng63\nsg16\nI01\nssS\'fechaEnt\'\np106\n(dp107\ng13\ng99\nsssg24\n(dp108\ng26\n(lp109\nsg28\nVhotel_reservacion\np110\nsg30\nS\'\'\nsg31\ng61\nsssg100\n(dp111\ng9\n(dp112\ng103\n(dp113\ng13\ng14\nsg15\nI50\nssS\'direccion\'\np114\n(dp115\ng13\ng14\nsg15\nI50\nssS\'ciudad\'\np116\n(dp117\ng13\ng14\nsg15\nI50\nssg53\n(dp118\ng13\ncdjango.db.models.fields.related\nOneToOneField\np119\nsS\'unique\'\np120\nI01\nsg56\nVauth.User\np121\nssS\'telefono\'\np122\n(dp123\ng13\ng14\nsg15\nI30\nssg61\n(dp124\ng13\ng63\nsg16\nI01\nsssg24\n(dp125\ng26\n(lp126\nsg28\nVhotel_cliente\np127\nsg30\nS\'\'\nsg31\ng61\nsssg92\n(dp128\ng9\n(dp129\nS\'imagen\'\np130\n(dp131\ng13\ng14\nsg15\nI50\nssS\'tipo\'\np132\n(dp133\ng13\ng55\nsg56\nVhotel.tipoHabitacion\np134\nssS\'descripcion\'\np135\n(dp136\ng13\ng14\nsg15\nI255\nssg75\n(dp137\ng13\ng14\nsg15\nI30\nssg103\n(dp138\ng13\ng89\nssg61\n(dp139\ng13\ng63\nsg16\nI01\nsssg24\n(dp140\ng26\n(lp141\nsg28\nVhotel_habitacion\np142\nsg30\nS\'\'\nsg31\ng61\nssstRp143\n(dp144\ng34\n(lp145\ng100\nag72\nag92\nag84\nasbsS\'messages\'\np146\ng3\n(g4\ng5\n(dtRp147\n(dp148\ng34\n(lp149\nsbsS\'auth\'\np150\ng3\n(g4\ng5\n(dp151\nS\'Group\'\np152\n(dp153\ng9\n(dp154\nS\'permissions\'\np155\n(dp156\ng13\ncdjango.db.models.fields.related\nManyToManyField\np157\nsg56\nVauth.Permission\np158\nssg61\n(dp159\ng13\ng63\nsg16\nI01\nssS\'name\'\np160\n(dp161\ng15\nI80\nsg13\ng14\nsg120\nI01\nsssg24\n(dp162\ng26\n(lp163\nsg28\nVauth_group\np164\nsg30\nS\'\'\nsg31\ng61\nsssS\'User\'\np165\n(dp166\ng9\n(dp167\nS\'username\'\np168\n(dp169\ng15\nI30\nsg13\ng14\nsg120\nI01\nssS\'first_name\'\np170\n(dp171\ng13\ng14\nsg15\nI30\nssS\'last_name\'\np172\n(dp173\ng13\ng14\nsg15\nI30\nssS\'is_active\'\np174\n(dp175\ng13\ncdjango.db.models.fields\nBooleanField\np176\nssS\'email\'\np177\n(dp178\ng13\ncdjango.db.models.fields\nEmailField\np179\nsg15\nI75\nssS\'is_superuser\'\np180\n(dp181\ng13\ng176\nssS\'is_staff\'\np182\n(dp183\ng13\ng176\nssS\'last_login\'\np184\n(dp185\ng13\ng19\nssS\'groups\'\np186\n(dp187\ng13\ng157\nsg56\nVauth.Group\np188\nssS\'user_permissions\'\np189\n(dp190\ng13\ng157\nsg56\nVauth.Permission\np191\nssS\'password\'\np192\n(dp193\ng13\ng14\nsg15\nI128\nssg61\n(dp194\ng13\ng63\nsg16\nI01\nssS\'date_joined\'\np195\n(dp196\ng13\ng19\nsssg24\n(dp197\ng26\n(lp198\nsg28\nVauth_user\np199\nsg30\nS\'\'\nsg31\ng61\nsssS\'Permission\'\np200\n(dp201\ng9\n(dp202\nS\'codename\'\np203\n(dp204\ng13\ng14\nsg15\nI100\nssg61\n(dp205\ng13\ng63\nsg16\nI01\nssg58\n(dp206\ng13\ng55\nsg56\nVcontenttypes.ContentType\np207\nssg160\n(dp208\ng13\ng14\nsg15\nI50\nsssg24\n(dp209\ng26\n((Vcontent_type\nVcodename\nttp210\nsg28\nVauth_permission\np211\nsg30\nS\'\'\nsg31\ng61\nssstRp212\n(dp213\ng34\n(lp214\ng200\nag152\nag165\nasbsS\'staticfiles\'\np215\ng3\n(g4\ng5\n(dtRp216\n(dp217\ng34\n(lp218\nsbsS\'contenttypes\'\np219\ng3\n(g4\ng5\n(dp220\nS\'ContentType\'\np221\n(dp222\ng9\n(dp223\nS\'model\'\np224\n(dp225\ng13\ng14\nsg15\nI100\nssS\'app_label\'\np226\n(dp227\ng13\ng14\nsg15\nI100\nssg61\n(dp228\ng13\ng63\nsg16\nI01\nssg160\n(dp229\ng13\ng14\nsg15\nI100\nsssg24\n(dp230\ng26\n((S\'app_label\'\nS\'model\'\nttp231\nsg28\nS\'django_content_type\'\np232\nsg30\nS\'\'\nsg31\ng61\nssstRp233\n(dp234\ng34\n(lp235\ng221\nasbsS\'django_evolution\'\np236\ng3\n(g4\ng5\n(dp237\nS\'Evolution\'\np238\n(dp239\ng9\n(dp240\nS\'label\'\np241\n(dp242\ng13\ng14\nsg15\nI100\nssS\'version\'\np243\n(dp244\ng13\ng55\nsg56\nVdjango_evolution.Version\np245\nssg61\n(dp246\ng13\ng63\nsg16\nI01\nssg226\n(dp247\ng13\ng14\nsg15\nI200\nsssg24\n(dp248\ng26\n(lp249\nsg28\nS\'django_evolution\'\np250\nsg30\nS\'\'\nsg31\ng61\nsssS\'Version\'\np251\n(dp252\ng9\n(dp253\nS\'when\'\np254\n(dp255\ng13\ng19\nssg61\n(dp256\ng13\ng63\nsg16\nI01\nssS\'signature\'\np257\n(dp258\ng13\ng23\nsssg24\n(dp259\ng26\n(lp260\nsg28\nS\'django_project_version\'\np261\nsg30\nS\'\'\nsg31\ng61\nssstRp262\n(dp263\ng34\n(lp264\ng251\nag238\nasbsS\'__version__\'\np265\nI1\ns.','2014-01-05 00:41:42'),(2,'(dp1\nS\'sessions\'\np2\nccopy_reg\n_reconstructor\np3\n(cdjango.utils.datastructures\nSortedDict\np4\nc__builtin__\ndict\np5\n(dp6\nS\'Session\'\np7\n(dp8\nS\'fields\'\np9\n(dp10\nS\'session_key\'\np11\n(dp12\nS\'field_type\'\np13\ncdjango.db.models.fields\nCharField\np14\nsS\'max_length\'\np15\nI40\nsS\'primary_key\'\np16\nI01\nssS\'expire_date\'\np17\n(dp18\ng13\ncdjango.db.models.fields\nDateTimeField\np19\nsS\'db_index\'\np20\nI01\nssS\'session_data\'\np21\n(dp22\ng13\ncdjango.db.models.fields\nTextField\np23\nsssS\'meta\'\np24\n(dp25\nS\'unique_together\'\np26\n(lp27\nsS\'db_table\'\np28\nS\'django_session\'\np29\nsS\'db_tablespace\'\np30\nS\'\'\nsS\'pk_column\'\np31\ng11\nssstRp32\n(dp33\nS\'keyOrder\'\np34\n(lp35\ng7\nasbsS\'admin\'\np36\ng3\n(g4\ng5\n(dp37\nS\'LogEntry\'\np38\n(dp39\ng9\n(dp40\nS\'action_flag\'\np41\n(dp42\ng13\ncdjango.db.models.fields\nPositiveSmallIntegerField\np43\nssS\'action_time\'\np44\n(dp45\ng13\ng19\nssS\'object_repr\'\np46\n(dp47\ng13\ng14\nsg15\nI200\nssS\'object_id\'\np48\n(dp49\ng13\ng23\nsS\'null\'\np50\nI01\nssS\'change_message\'\np51\n(dp52\ng13\ng23\nssS\'user\'\np53\n(dp54\ng13\ncdjango.db.models.fields.related\nForeignKey\np55\nsS\'related_model\'\np56\nVauth.User\np57\nssS\'content_type\'\np58\n(dp59\ng13\ng55\nsg50\nI01\nsg56\nVcontenttypes.ContentType\np60\nssVid\np61\n(dp62\ng13\ncdjango.db.models.fields\nAutoField\np63\nsg16\nI01\nsssg24\n(dp64\ng26\n(lp65\nsg28\nVdjango_admin_log\np66\nsg30\nS\'\'\nsg31\ng61\nssstRp67\n(dp68\ng34\n(lp69\ng38\nasbsS\'hotel\'\np70\ng3\n(g4\ng5\n(dp71\nS\'tipoHabitacion\'\np72\n(dp73\ng9\n(dp74\nS\'nombre\'\np75\n(dp76\ng13\ng14\nsg15\nI40\nssS\'precio\'\np77\n(dp78\ng13\ncdjango.db.models.fields\nFloatField\np79\nsg50\nI01\nssg61\n(dp80\ng13\ng63\nsg16\nI01\nssS\'imagen\'\np81\n(dp82\ng15\nI50\nsg13\ng14\nsg50\nI01\nsssg24\n(dp83\ng26\n(lp84\nsg28\nVhotel_tipohabitacion\np85\nsg30\nS\'\'\nsg31\ng61\nsssS\'reservacion\'\np86\n(dp87\ng9\n(dp88\nS\'num_n\'\np89\n(dp90\ng13\ncdjango.db.models.fields\nIntegerField\np91\nsg50\nI01\nssS\'num_a\'\np92\n(dp93\ng13\ng91\nssS\'habitacion\'\np94\n(dp95\ng13\ng55\nsg56\nVhotel.habitacion\np96\nssS\'fechaCrea\'\np97\n(dp98\ng13\ng19\nssS\'fechaSal\'\np99\n(dp100\ng13\ncdjango.db.models.fields\nDateField\np101\nssS\'cliente\'\np102\n(dp103\ng13\ng55\nsg56\nVhotel.cliente\np104\nssS\'estado\'\np105\n(dp106\ng13\ng91\nssg61\n(dp107\ng13\ng63\nsg16\nI01\nssS\'fechaEnt\'\np108\n(dp109\ng13\ng101\nsssg24\n(dp110\ng26\n(lp111\nsg28\nVhotel_reservacion\np112\nsg30\nS\'\'\nsg31\ng61\nsssg102\n(dp113\ng9\n(dp114\ng105\n(dp115\ng13\ng14\nsg15\nI50\nssS\'direccion\'\np116\n(dp117\ng13\ng14\nsg15\nI50\nssS\'ciudad\'\np118\n(dp119\ng13\ng14\nsg15\nI50\nssg53\n(dp120\ng13\ncdjango.db.models.fields.related\nOneToOneField\np121\nsS\'unique\'\np122\nI01\nsg56\nVauth.User\np123\nssS\'telefono\'\np124\n(dp125\ng13\ng14\nsg15\nI30\nssg61\n(dp126\ng13\ng63\nsg16\nI01\nsssg24\n(dp127\ng26\n(lp128\nsg28\nVhotel_cliente\np129\nsg30\nS\'\'\nsg31\ng61\nsssg94\n(dp130\ng9\n(dp131\ng81\n(dp132\ng13\ng14\nsg15\nI50\nssS\'tipo\'\np133\n(dp134\ng13\ng55\nsg56\nVhotel.tipoHabitacion\np135\nssS\'descripcion\'\np136\n(dp137\ng13\ng14\nsg15\nI255\nssg75\n(dp138\ng13\ng14\nsg15\nI30\nssg105\n(dp139\ng13\ng91\nssg61\n(dp140\ng13\ng63\nsg16\nI01\nsssg24\n(dp141\ng26\n(lp142\nsg28\nVhotel_habitacion\np143\nsg30\nS\'\'\nsg31\ng61\nssstRp144\n(dp145\ng34\n(lp146\ng102\nag72\nag94\nag86\nasbsS\'messages\'\np147\ng3\n(g4\ng5\n(dtRp148\n(dp149\ng34\n(lp150\nsbsS\'auth\'\np151\ng3\n(g4\ng5\n(dp152\nS\'Group\'\np153\n(dp154\ng9\n(dp155\nS\'permissions\'\np156\n(dp157\ng13\ncdjango.db.models.fields.related\nManyToManyField\np158\nsg56\nVauth.Permission\np159\nssg61\n(dp160\ng13\ng63\nsg16\nI01\nssS\'name\'\np161\n(dp162\ng15\nI80\nsg13\ng14\nsg122\nI01\nsssg24\n(dp163\ng26\n(lp164\nsg28\nVauth_group\np165\nsg30\nS\'\'\nsg31\ng61\nsssS\'User\'\np166\n(dp167\ng9\n(dp168\nS\'username\'\np169\n(dp170\ng15\nI30\nsg13\ng14\nsg122\nI01\nssS\'first_name\'\np171\n(dp172\ng13\ng14\nsg15\nI30\nssS\'last_name\'\np173\n(dp174\ng13\ng14\nsg15\nI30\nssS\'is_active\'\np175\n(dp176\ng13\ncdjango.db.models.fields\nBooleanField\np177\nssS\'email\'\np178\n(dp179\ng13\ncdjango.db.models.fields\nEmailField\np180\nsg15\nI75\nssS\'is_superuser\'\np181\n(dp182\ng13\ng177\nssS\'is_staff\'\np183\n(dp184\ng13\ng177\nssS\'last_login\'\np185\n(dp186\ng13\ng19\nssS\'groups\'\np187\n(dp188\ng13\ng158\nsg56\nVauth.Group\np189\nssS\'user_permissions\'\np190\n(dp191\ng13\ng158\nsg56\nVauth.Permission\np192\nssS\'password\'\np193\n(dp194\ng13\ng14\nsg15\nI128\nssg61\n(dp195\ng13\ng63\nsg16\nI01\nssS\'date_joined\'\np196\n(dp197\ng13\ng19\nsssg24\n(dp198\ng26\n(lp199\nsg28\nVauth_user\np200\nsg30\nS\'\'\nsg31\ng61\nsssS\'Permission\'\np201\n(dp202\ng9\n(dp203\nS\'codename\'\np204\n(dp205\ng13\ng14\nsg15\nI100\nssg61\n(dp206\ng13\ng63\nsg16\nI01\nssg58\n(dp207\ng13\ng55\nsg56\nVcontenttypes.ContentType\np208\nssg161\n(dp209\ng13\ng14\nsg15\nI50\nsssg24\n(dp210\ng26\n((Vcontent_type\nVcodename\nttp211\nsg28\nVauth_permission\np212\nsg30\nS\'\'\nsg31\ng61\nssstRp213\n(dp214\ng34\n(lp215\ng201\nag153\nag166\nasbsS\'staticfiles\'\np216\ng3\n(g4\ng5\n(dtRp217\n(dp218\ng34\n(lp219\nsbsS\'contenttypes\'\np220\ng3\n(g4\ng5\n(dp221\nS\'ContentType\'\np222\n(dp223\ng9\n(dp224\nS\'model\'\np225\n(dp226\ng13\ng14\nsg15\nI100\nssS\'app_label\'\np227\n(dp228\ng13\ng14\nsg15\nI100\nssg61\n(dp229\ng13\ng63\nsg16\nI01\nssg161\n(dp230\ng13\ng14\nsg15\nI100\nsssg24\n(dp231\ng26\n((S\'app_label\'\nS\'model\'\nttp232\nsg28\nS\'django_content_type\'\np233\nsg30\nS\'\'\nsg31\ng61\nssstRp234\n(dp235\ng34\n(lp236\ng222\nasbsS\'django_evolution\'\np237\ng3\n(g4\ng5\n(dp238\nS\'Evolution\'\np239\n(dp240\ng9\n(dp241\nS\'label\'\np242\n(dp243\ng13\ng14\nsg15\nI100\nssS\'version\'\np244\n(dp245\ng13\ng55\nsg56\nVdjango_evolution.Version\np246\nssg61\n(dp247\ng13\ng63\nsg16\nI01\nssg227\n(dp248\ng13\ng14\nsg15\nI200\nsssg24\n(dp249\ng26\n(lp250\nsg28\nS\'django_evolution\'\np251\nsg30\nS\'\'\nsg31\ng61\nsssS\'Version\'\np252\n(dp253\ng9\n(dp254\nS\'when\'\np255\n(dp256\ng13\ng19\nssg61\n(dp257\ng13\ng63\nsg16\nI01\nssS\'signature\'\np258\n(dp259\ng13\ng23\nsssg24\n(dp260\ng26\n(lp261\nsg28\nS\'django_project_version\'\np262\nsg30\nS\'\'\nsg31\ng61\nssstRp263\n(dp264\ng34\n(lp265\ng252\nag239\nasbsS\'__version__\'\np266\nI1\ns.','2014-01-05 23:43:31');
/*!40000 ALTER TABLE `django_project_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9wka1npqv2ygb5sch00my50cknexjwkl','OTliYWQ4ZTY0ZDU1ZDE5MTQyNzJhYzFlZWZiZWQxNGE3MGQ1ZDcxMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-19 00:43:04');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_cliente`
--

DROP TABLE IF EXISTS `hotel_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_5822e5b9` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_cliente`
--

LOCK TABLES `hotel_cliente` WRITE;
/*!40000 ALTER TABLE `hotel_cliente` DISABLE KEYS */;
INSERT INTO `hotel_cliente` VALUES (1,2,'Jiquilpan','Michoacan','Esmeralda 8','523531208323');
/*!40000 ALTER TABLE `hotel_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_habitacion`
--

DROP TABLE IF EXISTS `hotel_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_habitacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_habitacion_acf1eac4` (`tipo_id`),
  CONSTRAINT `tipo_id_refs_id_e9487634` FOREIGN KEY (`tipo_id`) REFERENCES `hotel_tipohabitacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_habitacion`
--

LOCK TABLES `hotel_habitacion` WRITE;
/*!40000 ALTER TABLE `hotel_habitacion` DISABLE KEYS */;
INSERT INTO `hotel_habitacion` VALUES (1,'Habitacion 1',1,1,'Descripcion Habitacion 1','img1.jpg'),(2,'Habitacion 2',2,1,'Descripcion Habitacion 2','img2.jpg'),(3,'Habitacion 3',3,1,'Descripcion Habitacion 3','img3.jpg'),(4,'Habitacion 4',4,1,'Descripcion Habitacion 4','img4.jpg'),(5,'Habitacion 5',5,1,'Descripcion Habitacion 5','img5.jpg'),(6,'Habitacion 6',6,1,'Descripcion Habitacion 6','img6.jpg'),(7,'Habitacion 7',7,1,'Descripcion Habitacion 7','img7.jpg'),(8,'Habitacion 8',8,1,'Descripcion Habitacion 8','img8.jpg'),(9,'Habitacion 9',9,1,'Descripcion Habitacion 9','img9.jpg');
/*!40000 ALTER TABLE `hotel_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_reservacion`
--

DROP TABLE IF EXISTS `hotel_reservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_reservacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `habitacion_id` int(11) NOT NULL,
  `fechaCrea` datetime NOT NULL,
  `fechaEnt` date NOT NULL,
  `fechaSal` date NOT NULL,
  `estado` int(11) NOT NULL,
  `num_a` int(11) NOT NULL,
  `num_n` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_reservacion_1d8b2af5` (`cliente_id`),
  KEY `hotel_reservacion_f96ebb14` (`habitacion_id`),
  CONSTRAINT `cliente_id_refs_id_efbcfc82` FOREIGN KEY (`cliente_id`) REFERENCES `hotel_cliente` (`id`),
  CONSTRAINT `habitacion_id_refs_id_6a05aebc` FOREIGN KEY (`habitacion_id`) REFERENCES `hotel_habitacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_reservacion`
--

LOCK TABLES `hotel_reservacion` WRITE;
/*!40000 ALTER TABLE `hotel_reservacion` DISABLE KEYS */;
INSERT INTO `hotel_reservacion` VALUES (1,1,1,'2014-01-05 01:06:22','2014-01-04','2014-01-07',1,2,0);
/*!40000 ALTER TABLE `hotel_reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_tipohabitacion`
--

DROP TABLE IF EXISTS `hotel_tipohabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_tipohabitacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `precio` double DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_tipohabitacion`
--

LOCK TABLES `hotel_tipohabitacion` WRITE;
/*!40000 ALTER TABLE `hotel_tipohabitacion` DISABLE KEYS */;
INSERT INTO `hotel_tipohabitacion` VALUES (1,'Hab. Economica 1 Cama Matrimonial',800,'img1.jpg'),(2,'Hab. Economica 2 Cama Matrimonial',900,'img2.jpg'),(3,'Hab. Economica 3 Cama Matrimonial',1000,'img3.jpg'),(4,'Hab. Normal 1 Cama Matrimonial',1000,'img4.jpg'),(5,'Hab. Normal 2 Camas Matrimonial',1100,'img5.jpg'),(6,'Hab. Normal 3 Camas Matrimonial',1500,'img6.jpg'),(7,'Suite',1800,'img7.jpg'),(8,'Junior Suite',2000,'img8.jpg'),(9,'Master Suite',2500,'img9.jpg');
/*!40000 ALTER TABLE `hotel_tipohabitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-10  0:25:51
