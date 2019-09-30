-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: eksicode
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_bin,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `environment` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_CORE_STORE` (`key`,`value`,`type`,`environment`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'db_model_core_store','{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}','object',NULL,NULL),(2,'db_model_upload_file','{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"public_id\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(3,'db_model_users-permissions_role','{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}}','object',NULL,NULL),(4,'db_model_users-permissions_user','{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}}','object',NULL,NULL),(5,'db_model_users-permissions_permission','{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}','object',NULL,NULL),(6,'db_model_upload_file_morph','{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"}}','object',NULL,NULL),(7,'plugin_content-manager_schema','{\"generalSettings\":{\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10},\"models\":{\"plugins\":{\"upload\":{},\"users-permissions\":{\"permission\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_permission\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"permission\",\"description\":\"\"},\"globalName\":\"UsersPermissionsPermission\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"Permission\",\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"},\"controller\":{\"label\":\"Controller\",\"type\":\"string\",\"description\":\"\",\"name\":\"controller\",\"editable\":true,\"placeholder\":\"\"},\"action\":{\"label\":\"Action\",\"type\":\"string\",\"description\":\"\",\"name\":\"action\",\"editable\":true,\"placeholder\":\"\"},\"enabled\":{\"label\":\"Enabled\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"enabled\",\"editable\":true,\"placeholder\":\"\"},\"policy\":{\"label\":\"Policy\",\"type\":\"string\",\"description\":\"\",\"name\":\"policy\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"type\",\"controller\",\"action\",\"enabled\",\"policy\"],\"relations\":[\"role\"]},\"labelPlural\":\"Permissions\",\"fields\":{\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},\"controller\":{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},\"action\":{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},\"enabled\":{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true},\"policy\":{\"label\":\"Policy\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"policy\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsPermission\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"connection\":\"default\",\"defaultSort\":\"id\"},\"role\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_role\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"role\",\"description\":\"\"},\"globalName\":\"UsersPermissionsRole\",\"associations\":[{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"},{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"Role\",\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}},\"relations\":{\"permissions\":{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Permissions\",\"displayedAttribute\":\"type\"},\"users\":{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Users\",\"displayedAttribute\":\"username\"}},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"string\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"},\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\",\"type\"],\"relations\":[\"permissions\",\"users\"]},\"labelPlural\":\"Roles\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsRole\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"connection\":\"default\",\"defaultSort\":\"id\"},\"user\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_user\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"user\",\"description\":\"\"},\"globalName\":\"UsersPermissionsUser\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"User\",\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"username\":{\"label\":\"Username\",\"type\":\"string\",\"description\":\"\",\"name\":\"username\",\"editable\":true,\"placeholder\":\"\"},\"email\":{\"label\":\"Email\",\"type\":\"email\",\"description\":\"\",\"name\":\"email\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"password\":{\"label\":\"Password\",\"type\":\"password\",\"description\":\"\",\"name\":\"password\",\"editable\":true,\"placeholder\":\"\"},\"confirmed\":{\"label\":\"Confirmed\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"confirmed\",\"editable\":true,\"placeholder\":\"\"},\"blocked\":{\"label\":\"Blocked\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"blocked\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"confirmed\",\"blocked\"],\"relations\":[\"role\"]},\"labelPlural\":\"Users\",\"fields\":{\"username\":{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},\"email\":{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"password\":{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},\"confirmed\":{\"label\":\"Confirmed\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"confirmed\",\"sortable\":true,\"searchable\":true},\"blocked\":{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsUser\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"connection\":\"default\",\"defaultSort\":\"id\"}}},\"test\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Test\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"test\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"tests\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"test\",\"description\":\"\"},\"globalName\":\"Test\",\"associations\":[],\"label\":\"Test\",\"attributes\":{\"test\":{\"default\":\"\",\"type\":\"string\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"test\":{\"label\":\"Test\",\"type\":\"string\",\"description\":\"\",\"name\":\"test\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"test\"],\"relations\":[]},\"labelPlural\":\"Tests\",\"fields\":{\"test\":{\"label\":\"Test\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"test\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Test\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"telegram\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Logo\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"logo\",\"sortable\":true,\"searchable\":true},{\"label\":\"Icon\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"icon\",\"sortable\":true,\"searchable\":true},{\"label\":\"Members\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"members\",\"sortable\":true,\"searchable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"link\",\"label\":\"Link\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"channelID\",\"label\":\"ChannelID\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"integer\",\"name\":\"listOrder\",\"label\":\"ListOrder\",\"searchable\":true,\"sortable\":true}],\"search\":true,\"collectionName\":\"telegrams\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"telegram\",\"description\":\"\"},\"globalName\":\"Telegram\",\"associations\":[],\"label\":\"Telegram\",\"attributes\":{\"name\":{\"default\":\"\",\"type\":\"string\"},\"logo\":{\"default\":\"\",\"type\":\"string\"},\"icon\":{\"default\":\"\",\"type\":\"string\"},\"members\":{\"default\":\"\",\"type\":\"integer\"},\"link\":{\"default\":\"\",\"type\":\"string\"},\"channelID\":{\"default\":\"\",\"type\":\"string\"},\"listOrder\":{\"default\":\"\",\"type\":\"integer\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"logo\":{\"label\":\"Logo\",\"type\":\"string\",\"description\":\"\",\"name\":\"logo\",\"editable\":true,\"placeholder\":\"\"},\"icon\":{\"label\":\"Icon\",\"type\":\"string\",\"description\":\"\",\"name\":\"icon\",\"editable\":true,\"placeholder\":\"\"},\"members\":{\"label\":\"Members\",\"type\":\"integer\",\"description\":\"\",\"name\":\"members\",\"editable\":true,\"placeholder\":\"\"},\"link\":{\"label\":\"Link\",\"type\":\"string\",\"description\":\"\",\"name\":\"link\",\"editable\":true,\"placeholder\":\"\"},\"channelID\":{\"label\":\"ChannelID\",\"type\":\"string\",\"description\":\"\",\"name\":\"channelID\",\"editable\":true,\"placeholder\":\"\"},\"listOrder\":{\"label\":\"ListOrder\",\"type\":\"integer\",\"description\":\"\",\"name\":\"listOrder\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"__col-md-6__376\",\"logo\",\"__col-md-6__426\",\"icon\",\"__col-md-6__917\",\"link\",\"__col-md-6__45\",\"channelID\",\"members\",\"listOrder\"],\"relations\":[]},\"labelPlural\":\"Telegrams\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"logo\":{\"label\":\"Logo\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"logo\",\"sortable\":true,\"searchable\":true},\"icon\":{\"label\":\"Icon\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"icon\",\"sortable\":true,\"searchable\":true},\"members\":{\"label\":\"Members\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"members\",\"sortable\":true,\"searchable\":true},\"link\":{\"label\":\"Link\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"link\",\"sortable\":true,\"searchable\":true},\"channelID\":{\"label\":\"ChannelID\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"channelID\",\"sortable\":true,\"searchable\":true},\"listOrder\":{\"label\":\"ListOrder\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"listOrder\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Telegram\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"listOrder\"},\"kullanicirolleri\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Role_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"role_name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Role_rights\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"role_rights\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"kullanicirolleris\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"kullanicirolleri\",\"description\":\"\"},\"globalName\":\"Kullanicirolleri\",\"associations\":[],\"label\":\"Kullanicirolleri\",\"attributes\":{\"role_name\":{\"default\":\"\",\"type\":\"string\"},\"role_rights\":{\"default\":\"\",\"type\":\"integer\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"role_name\":{\"label\":\"Role_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"role_name\",\"editable\":true,\"placeholder\":\"\"},\"role_rights\":{\"label\":\"Role_rights\",\"type\":\"integer\",\"description\":\"\",\"name\":\"role_rights\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"role_name\",\"role_rights\"],\"relations\":[]},\"labelPlural\":\"Kullanicirolleris\",\"fields\":{\"role_name\":{\"label\":\"Role_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"role_name\",\"sortable\":true,\"searchable\":true},\"role_rights\":{\"label\":\"Role_rights\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"role_rights\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Kullanicirolleri\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"menu\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Menu_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"menu_name\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"menus\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"menu\",\"description\":\"\"},\"globalName\":\"Menu\",\"associations\":[],\"label\":\"Menu\",\"attributes\":{\"menu_name\":{\"default\":\"\",\"type\":\"string\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"menu_name\":{\"label\":\"Menu_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"menu_name\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"menu_name\"],\"relations\":[]},\"labelPlural\":\"Menus\",\"fields\":{\"menu_name\":{\"label\":\"Menu_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"menu_name\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Menu\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"kaynaklar\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Doc_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Doc_creator\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"doc_creator\",\"sortable\":true,\"searchable\":true},{\"label\":\"Approved\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"approved\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"kaynaklars\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"kaynaklar\",\"description\":\"\"},\"globalName\":\"Kaynaklar\",\"associations\":[],\"label\":\"Kaynaklar\",\"attributes\":{\"doc_name\":{\"default\":\"\",\"type\":\"string\",\"required\":true,\"unique\":true},\"doc_creator\":{\"default\":\"\",\"type\":\"integer\"},\"approved\":{\"default\":false,\"type\":\"boolean\"},\"approving_user\":{\"default\":\"\",\"type\":\"integer\"},\"tags\":{\"default\":\"\",\"type\":\"string\"},\"comment\":{\"default\":\"\",\"type\":\"text\"},\"doc_creator_tg\":{\"default\":\"\",\"type\":\"integer\"},\"doc_link\":{\"default\":\"\",\"unique\":true,\"type\":\"string\",\"required\":true},\"lat_edit\":{\"default\":\"\",\"type\":\"date\"},\"doc_tg_ch\":{\"default\":\"\",\"type\":\"string\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"approving_user\":{\"label\":\"Approving_user\",\"type\":\"integer\",\"description\":\"\",\"name\":\"approving_user\",\"editable\":true,\"placeholder\":\"\"},\"doc_link\":{\"label\":\"Doc_link\",\"type\":\"string\",\"description\":\"\",\"name\":\"doc_link\",\"editable\":true,\"placeholder\":\"\"},\"doc_creator\":{\"label\":\"Doc_creator\",\"type\":\"integer\",\"description\":\"\",\"name\":\"doc_creator\",\"editable\":true,\"placeholder\":\"\"},\"doc_creator_tg\":{\"label\":\"Doc_creator_tg\",\"type\":\"integer\",\"description\":\"\",\"name\":\"doc_creator_tg\",\"editable\":true,\"placeholder\":\"\"},\"doc_name\":{\"label\":\"Doc_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"doc_name\",\"editable\":true,\"placeholder\":\"\"},\"approved\":{\"label\":\"Approved\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"approved\",\"editable\":true,\"placeholder\":\"\"},\"tags\":{\"label\":\"Tags\",\"type\":\"string\",\"description\":\"\",\"name\":\"tags\",\"editable\":true,\"placeholder\":\"\"},\"comment\":{\"label\":\"Comment\",\"type\":\"text\",\"description\":\"\",\"name\":\"comment\",\"editable\":true,\"placeholder\":\"\"},\"lat_edit\":{\"label\":\"Lat_edit\",\"type\":\"date\",\"description\":\"\",\"name\":\"lat_edit\",\"editable\":true,\"placeholder\":\"\"},\"doc_tg_ch\":{\"label\":\"Doc_tg_ch\",\"type\":\"string\",\"description\":\"\",\"name\":\"doc_tg_ch\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"doc_name\",\"doc_creator\",\"approved\",\"approving_user\",\"__col-md-4__v2xld8\",\"tags\",\"comment\",\"doc_creator_tg\",\"__col-md-4__631\",\"__col-md-4__694\",\"doc_link\",\"__col-md-4__168\",\"lat_edit\",\"__col-md-4__qv73f\",\"doc_tg_ch\"],\"relations\":[]},\"labelPlural\":\"Kaynaklars\",\"fields\":{\"approving_user\":{\"label\":\"Approving_user\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"approving_user\",\"sortable\":true,\"searchable\":true},\"doc_link\":{\"label\":\"Doc_link\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_link\",\"sortable\":true,\"searchable\":true},\"doc_creator\":{\"label\":\"Doc_creator\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"doc_creator\",\"sortable\":true,\"searchable\":true},\"doc_creator_tg\":{\"label\":\"Doc_creator_tg\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"doc_creator_tg\",\"sortable\":true,\"searchable\":true},\"doc_name\":{\"label\":\"Doc_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_name\",\"sortable\":true,\"searchable\":true},\"approved\":{\"label\":\"Approved\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"approved\",\"sortable\":true,\"searchable\":true},\"tags\":{\"label\":\"Tags\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"tags\",\"sortable\":true,\"searchable\":true},\"comment\":{\"label\":\"Comment\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"comment\",\"sortable\":true,\"searchable\":true},\"lat_edit\":{\"label\":\"Lat_edit\",\"description\":\"\",\"type\":\"date\",\"disabled\":false,\"name\":\"lat_edit\",\"sortable\":true,\"searchable\":true},\"doc_tg_ch\":{\"label\":\"Doc_tg_ch\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_tg_ch\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Kaynaklar\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"uyari\":{\"label\":\"Uyari\",\"labelPlural\":\"Uyaris\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"user_name\":{\"label\":\"User_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"user_name\",\"editable\":true,\"placeholder\":\"\"},\"user_id\":{\"label\":\"User_id\",\"type\":\"string\",\"description\":\"\",\"name\":\"user_id\",\"editable\":true,\"placeholder\":\"\"},\"reason\":{\"label\":\"Reason\",\"type\":\"string\",\"description\":\"\",\"name\":\"reason\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"user_name\",\"user_id\",\"reason\"],\"relations\":[]},\"info\":{\"name\":\"uyari\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"uyaris\",\"attributes\":{\"user_name\":{\"default\":\"\",\"type\":\"string\"},\"user_id\":{\"default\":\"\",\"type\":\"string\"},\"reason\":{\"default\":\"\",\"type\":\"string\"}},\"globalId\":\"Uyari\",\"globalName\":\"Uyari\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"user_name\":{\"label\":\"User_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_name\",\"sortable\":true,\"searchable\":true},\"user_id\":{\"label\":\"User_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_id\",\"sortable\":true,\"searchable\":true},\"reason\":{\"label\":\"Reason\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"reason\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"User_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_name\",\"sortable\":true,\"searchable\":true},{\"label\":\"User_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_id\",\"sortable\":true,\"searchable\":true},{\"label\":\"Reason\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"reason\",\"sortable\":true,\"searchable\":true}],\"relations\":{}}},\"layout\":{\"user\":{\"actions\":{\"create\":\"User.create\",\"update\":\"User.update\",\"destroy\":\"User.destroy\",\"deleteall\":\"User.destroyAll\"},\"attributes\":{\"username\":{\"className\":\"col-md-6\"},\"email\":{\"className\":\"col-md-6\"},\"resetPasswordToken\":{\"className\":\"d-none\"},\"role\":{\"className\":\"d-none\"}}},\"test\":{\"attributes\":{\"test\":{\"appearance\":\"\"}}},\"telegram\":{\"attributes\":{\"name\":{\"appearance\":\"\"},\"logo\":{\"appearance\":\"\"},\"icon\":{\"appearance\":\"\"},\"members\":{\"appearance\":\"\"},\"link\":{\"appearance\":\"\"},\"channelID\":{\"appearance\":\"\"}}},\"kullanicirolleri\":{\"attributes\":{\"role_name\":{\"appearance\":\"\"},\"role_rights\":{\"appearance\":\"\"}}},\"menu\":{\"attributes\":{\"menu_name\":{\"appearance\":\"\"}}},\"kaynaklar\":{\"attributes\":{\"approving_user\":{\"appearance\":\"\"},\"doc_link\":{\"appearance\":\"\"},\"doc_creator\":{\"appearance\":\"\"},\"lat_edit\":{\"appearance\":\"\"},\"doc_creator_tg\":{\"appearance\":\"\"},\"doc_name\":{\"appearance\":\"\"},\"approved\":{\"appearance\":\"\"},\"tags\":{\"appearance\":\"\"},\"comment\":{\"appearance\":\"\"},\"doc_tg_ch\":{\"appearance\":\"\"}}},\"uyari\":{\"attributes\":{\"user_name\":{\"appearance\":\"\"},\"user_id\":{\"appearance\":\"\"},\"reason\":{\"appearance\":\"\"}}}}}','object','',''),(8,'core_application','{\"name\":\"Default Application\",\"description\":\"This API is going to be awesome!\"}','object','',''),(9,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"comments\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-official\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"}}','object','',''),(10,'plugin_email_provider','{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}','object','development',''),(11,'plugin_upload_provider','{\"provider\":\"local\",\"name\":\"Local server\",\"enabled\":true,\"sizeLimit\":1000000}','object','development',''),(12,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"refresh\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"­Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square-o\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(13,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"http://localhost:1337/admin\",\"default_role\":\"authenticated\"}','object','',''),(14,'db_model_tests','{\"test\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(15,'db_model_telegrams','{\"name\":{\"default\":\"\",\"type\":\"string\"},\"logo\":{\"default\":\"\",\"type\":\"string\"},\"icon\":{\"default\":\"\",\"type\":\"string\"},\"members\":{\"default\":\"\",\"type\":\"integer\"},\"link\":{\"default\":\"\",\"type\":\"string\"},\"channelID\":{\"default\":\"\",\"type\":\"string\"},\"listOrder\":{\"default\":\"\",\"type\":\"integer\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(16,'db_model_kullanicirolleris','{\"role_name\":{\"default\":\"\",\"type\":\"string\"},\"role_rights\":{\"default\":\"\",\"type\":\"integer\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(17,'db_model_menus','{\"menu_name\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(18,'db_model_kaynaklars','{\"doc_name\":{\"default\":\"\",\"type\":\"string\",\"required\":true,\"unique\":true},\"doc_creator\":{\"default\":\"\",\"type\":\"integer\"},\"approved\":{\"default\":false,\"type\":\"boolean\"},\"approving_user\":{\"default\":\"\",\"type\":\"integer\"},\"tags\":{\"default\":\"\",\"type\":\"string\"},\"comment\":{\"default\":\"\",\"type\":\"text\"},\"doc_creator_tg\":{\"default\":\"\",\"type\":\"integer\"},\"doc_link\":{\"default\":\"\",\"unique\":true,\"type\":\"string\",\"required\":true},\"lat_edit\":{\"default\":\"\",\"type\":\"date\"},\"doc_tg_ch\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(19,'db_model_uyaris','{\"user_name\":{\"default\":\"\",\"type\":\"string\"},\"user_id\":{\"default\":\"\",\"type\":\"string\"},\"reason\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL);
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaynaklars`
--

DROP TABLE IF EXISTS `kaynaklars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaynaklars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `doc_creator` int(11) DEFAULT NULL,
  `lat_edit` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `approved` tinyint(1) DEFAULT NULL,
  `approving_user` int(11) DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_edit` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `doc_creator_tg` int(11) DEFAULT NULL,
  `doc_link` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `doc_tg_ch` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `channelID` int(11) DEFAULT NULL,
  `undefined` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_KAYNAKLARS` (`doc_name`,`tags`,`comment`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaynaklars`
--

LOCK TABLES `kaynaklars` WRITE;
/*!40000 ALTER TABLE `kaynaklars` DISABLE KEYS */;
INSERT INTO `kaynaklars` VALUES (69,'GitHub - AtakanErmis/gelistirici-yol-haritasi: 2019&#39;da web geliştirici olmanın yol haritası.',NULL,'2019-09-28 18:54:18',NULL,NULL,NULL,NULL,'2019-09-28 16:54:19','2019-09-28 16:54:19','2019-09-28 18:54:18',211177407,'https://github.com/AtakanErmis/gelistirici-yol-haritasi','-1001364530781',NULL,NULL),(70,'Drag & Drop Elements with Vanilla JavaScript and HTML',NULL,'2019-09-29 06:17:14',NULL,NULL,NULL,NULL,'2019-09-29 04:17:15','2019-09-29 04:17:15','2019-09-29 06:17:14',564943941,'https://alligator.io/js/drag-and-drop-vanilla-js/?utm_campaign=creating-drag-and-drop-elements-with-van','-1001156686363',NULL,NULL),(72,'A few handy Vue.js tricks - ITNEXT',NULL,'2019-09-29 07:54:00',NULL,NULL,NULL,NULL,'2019-09-29 05:54:01','2019-09-29 05:54:01','2019-09-29 07:54:00',211177407,'https://itnext.io/a-few-handy-vue-js-tricks-832703cff426','-1001156686363',NULL,NULL),(73,'Want to Learn Java Quickly? Burn All Your Java Tutorial Books',NULL,'2019-09-29 07:58:54',NULL,NULL,NULL,NULL,'2019-09-29 05:58:55','2019-09-29 05:58:55','2019-09-29 07:58:54',457779893,'https://medium.com/javarevisited/want-to-learn-java-quickly-burn-all-your-java-tutorial-books-6d06f5d77e84','-1001389029475',NULL,NULL),(74,'Programming Languages of the Future - Towards Data Science',NULL,'2019-09-29 08:00:04',NULL,NULL,NULL,NULL,'2019-09-29 06:00:04','2019-09-29 06:00:04','2019-09-29 08:00:04',457779893,'https://towardsdatascience.com/programming-languages-of-the-future-792a8af879f9','-1001364530781',NULL,NULL),(75,'Add internationalization (i18n) to an Angular app - Level Up Coding',NULL,'2019-09-29 08:00:44',NULL,NULL,NULL,NULL,'2019-09-29 06:00:45','2019-09-29 06:00:45','2019-09-29 08:00:44',457779893,'https://levelup.gitconnected.com/add-internationalization-i18n-to-an-angular-app-b8fa8b51deea','-1001156686363',NULL,NULL),(76,'What Could Blockchain Do for Politics? - Welcome to Blockchain - Medium',NULL,'2019-09-29 08:01:40',NULL,NULL,NULL,NULL,'2019-09-29 06:01:40','2019-09-29 06:01:40','2019-09-29 08:01:40',457779893,'https://medium.com/s/welcome-to-blockchain/what-could-blockchain-do-for-politics-de3942d8edda','-1001333212756',NULL,NULL);
/*!40000 ALTER TABLE `kaynaklars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kullanicirolleris`
--

DROP TABLE IF EXISTS `kullanicirolleris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kullanicirolleris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `role_rights` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_KULLANICIROLLERIS` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanicirolleris`
--

LOCK TABLES `kullanicirolleris` WRITE;
/*!40000 ALTER TABLE `kullanicirolleris` DISABLE KEYS */;
/*!40000 ALTER TABLE `kullanicirolleris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_MENUS` (`menu_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telegrams`
--

DROP TABLE IF EXISTS `telegrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telegrams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `channelID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `listOrder` int(11) DEFAULT NULL,
  `kaynaklar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_TELEGRAMS` (`name`,`logo`,`icon`,`link`,`channelID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telegrams`
--

LOCK TABLES `telegrams` WRITE;
/*!40000 ALTER TABLE `telegrams` DISABLE KEYS */;
INSERT INTO `telegrams` VALUES (1,'Genel Konular','material-icons','chat',1628,'https://t.me/joinchat/G0kqtVFVFl2cWMnmJdUniw','-1001364530781','2019-02-24 09:55:37','2019-09-29 02:26:41',1,NULL),(2,'JavaScript','devicon-javascript-plain colored',NULL,1004,'https://t.me/joinchat/G0kqtQ2bMHbsHgiIMKMpyg','-1001156686363','2019-02-24 09:57:49','2019-09-29 02:26:41',3,NULL),(3,'Python','devicon-python-plain colored',NULL,1560,'https://t.me/joinchat/G0kqtQ-rkgcsqiPbm4q_6g','-1001353326048','2019-02-24 09:58:34','2019-09-29 02:26:41',2,NULL),(4,'PHP','devicon-php-plain colored',NULL,408,'https://t.me/joinchat/G0kqtUgwV5JmLHug4VBwpA','-1001211127698','2019-02-24 09:59:17','2019-09-29 02:26:41',8,NULL),(5,'C++','devicon-cplusplus-plain colored',NULL,458,'https://t.me/joinchat/G0kqtUgjXMM2jDEysQFTsA','-1001210277059','2019-02-24 10:00:00','2019-09-29 02:26:41',5,NULL),(6,'C','devicon-c-plain colored',NULL,339,'https://t.me/joinchat/G0kqtQ0-rHk9g1v61dUWsA','-1001277875067','2019-02-24 10:03:47','2019-09-29 02:26:41',9,NULL),(7,'C#','devicon-csharp-plain colored',NULL,910,'https://t.me/joinchat/G0kqtU9zTmZKbyCpNqkobA','-1001332956774','2019-02-24 10:09:52','2019-09-29 02:26:41',4,NULL),(8,'Java','devicon-java-plain colored',NULL,584,'https://t.me/joinchat/G0kqtVLK6GPjF1BrtzJQlg','-1001389029475','2019-02-24 10:10:32','2019-09-29 02:26:41',6,NULL),(9,'Ruby','devicon-ruby-plain colored',NULL,106,'https://t.me/joinchat/G0kqtRIEXv8_XPZVygG1ZQ','-1001369784092','2019-02-24 10:11:53','2019-09-29 02:26:41',12,NULL),(10,'DevOps','devicon-debian-plain colored',NULL,301,'https://t.me/joinchat/G0kqtUoWMoxyIXb7u2vhlg','-1001242968716','2019-02-24 10:14:55','2019-09-29 02:26:41',13,NULL),(11,'Linux','devicon-linux-plain colored',NULL,598,'https://t.me/joinchat/G0kqtVJHX4wfC6EQJme4YA','-1001380409228','2019-02-24 10:15:37','2019-09-29 02:26:41',7,NULL),(12,'Windows','devicon-windows8-original colored',NULL,196,'https://t.me/joinchat/G0kqtU0BZ1dY6ee0K3EWoQ','-1001291937623','2019-02-24 10:16:26','2019-09-29 02:26:41',14,NULL),(13,'Yapay Zeka & Veri Bilimi','material-icons','blur_on',1113,'https://t.me/joinchat/G0kqtU8wTomSdNKA2EO-0Q','-1001328565897','2019-02-24 10:17:17','2019-09-29 02:26:41',10,NULL),(14,'Mobil Uygulama Geliştirme','material-icons','phone_iphone',806,'https://t.me/joinchat/G0kqtU1-nxyiTPmCiw1OLA','-1001300143900','2019-02-24 10:18:10','2019-09-29 02:26:41',11,NULL),(15,'Oyun Geliştirme','material-icons','videogame_asset',347,'https://t.me/joinchat/G0kqtULsyqR4uGGfQMI8Qw','-1001122814628','2019-02-24 10:19:04','2019-09-29 02:26:41',19,NULL),(16,'UX/UI - Tasarım','material-icons','format_shapes',366,'https://t.me/joinchat/G0kqtVg_ctqgJ96cmuvSwQ','-1001480553178','2019-02-24 10:19:53','2019-09-29 02:26:41',20,NULL),(17,'Matematik & Algoritma','material-icons','functions',666,'https://t.me/joinchat/G0kqtUUj8nBxHk2OfnDTNg','-1001159983728','2019-02-24 10:20:45','2019-09-29 02:26:41',18,NULL),(18,'İngilizce','material-icons','school',1127,'https://t.me/joinchat/G0kqtRGgWUViQ7fZzA93UQ','-1001263722948','2019-02-24 10:21:27','2019-09-29 02:26:41',17,NULL),(19,'Kariyer','material-icons','work',1021,'https://t.me/joinchat/G0kqtUkgfGd9DJMfGUxGUw','-1001226865767','2019-02-24 10:22:14','2019-09-29 02:26:41',16,NULL),(20,'Geyik','material-icons','child_care',416,'https://t.me/joinchat/G0kqtUpxzWhIo5XMy7dpfg','-1001248972136','2019-02-24 10:23:10','2019-09-29 02:26:41',34,NULL),(21,'Go','devicon-go-plain colored',NULL,145,'https://t.me/joinchat/G0kqtROHTm_XNg8LPqXt7A','-1001430869010','2019-04-25 19:52:43','2019-09-29 02:26:41',15,NULL),(22,'Embedded','material-icons','developer_board',186,'https://t.me/joinchat/G0kqtVS6t-OF8mneDV7JVw','-1001421522915','2019-04-25 20:02:15','2019-09-29 02:26:41',21,NULL),(23,'Veritabanları','material-icons','storage',355,'https://t.me/joinchat/G0kqtRXoVqx-N084H8n4sQ','-1001231746575','2019-05-01 12:11:35','2019-09-29 02:26:41',23,NULL),(24,'Flutter','eksicon-flutter',NULL,167,'https://t.me/joinchat/G0kqtVDZMY7dTEH5i1xIkw','-1001356411278','2019-05-16 12:20:29','2019-09-29 02:26:41',22,NULL),(25,'Rust','eksicon-rust',NULL,96,'https://t.me/joinchat/G0kqtUtHVChTu78ZWPQBQg','-1001262965800','2019-05-25 18:56:33','2019-09-29 02:26:41',26,NULL),(26,'Blockchain','eksicon-blockchain',NULL,338,'https://t.me/joinchat/G0kqtREDNXSeSlRJydEEog','-1001333212756','2019-06-24 17:29:14','2019-09-29 02:26:41',25,NULL),(27,'Cryptocurrency','eksicon-bitcoin',NULL,226,'https://t.me/joinchat/G0kqtUrJeXZywM5Ig3xymg','-1001254717814','2019-06-24 17:31:40','2019-09-29 02:26:41',24,NULL),(28,'Siber Güvenlik ','eksicon-security',NULL,424,'https://t.me/joinchat/G0kqtVcjnsa0qInYoeKZag','-1001461952198','2019-07-04 11:51:19','2019-09-29 02:26:41',27,NULL),(29,'PLC','material-icons','developer_board',104,'https://t.me/joinchat/G0kqtUsepsBwFHuRBVK8Yw','-1001260299968','2019-07-11 20:40:32','2019-09-29 02:26:41',28,NULL),(30,'Matlab','eksicon-matlab',NULL,127,'https://t.me/joinchat/G0kqtVf9nAZbgWqoeEaDHw','-1001476238342','2019-07-11 20:42:18','2019-09-29 02:26:41',29,NULL),(31,'Kotlin','eksicon-kotlin',NULL,61,'https://t.me/joinchat/G0kqtUqe1iGf0tQH1peVAQ','-1001251923489','2019-07-14 02:14:50','2019-09-29 02:26:41',30,NULL),(32,'R','eksicon-rlang',NULL,75,'https://t.me/joinchat/G0kqtU_S7-hX9MsWpf3E8g','-1001339224040','2019-07-14 02:18:27','2019-09-29 02:26:41',31,NULL),(33,'Bilişim Hukuku','eksicon-security',NULL,136,'https://t.me/joinchat/G0kqtUU-cWlRiH-lo41_ig','-1001161720169','2019-07-14 02:25:10','2019-09-29 02:26:41',32,NULL),(34,'Eğitim','material-icons','school',161,'https://t.me/joinchat/G0kqtUQTPTflb_lE0XlmuQ','-1001142111543','2019-07-25 07:38:47','2019-09-29 02:26:41',33,NULL),(35,'SAP','eksicon-sap',NULL,73,'https://t.me/joinchat/G0kqtUzJ6kUzNXzGF54YZA','-1001288301125','2019-08-03 17:55:25','2019-09-29 02:26:41',35,NULL),(36,'macOS','devicon-apple-original colored',NULL,57,'https://t.me/joinchat/DJZPv0v54LkgrVy-a6DC0Q','-1001274667193','2019-08-13 12:21:43','2019-09-29 02:26:41',36,NULL);
/*!40000 ALTER TABLE `telegrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_TESTS` (`test`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,'şşşııığğğ','2019-02-24 09:52:53','2019-02-24 09:52:53');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sha256` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `public_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_UPLOAD_FILE` (`name`,`hash`,`sha256`,`ext`,`mime`,`size`,`url`,`provider`,`public_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file_morph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext COLLATE utf8mb4_bin,
  `field` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_UPLOAD_FILE_MORPH` (`related_type`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `controller` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_PERMISSION` (`type`,`controller`,`action`,`policy`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','contentmanager','models',1,'',1),(2,'content-manager','contentmanager','find',1,'',1),(3,'content-manager','contentmanager','count',1,'',1),(4,'content-manager','contentmanager','findone',1,'',1),(5,'content-manager','contentmanager','create',1,'',1),(6,'content-manager','contentmanager','update',1,'',1),(7,'content-manager','contentmanager','updatesettings',1,'',1),(8,'content-manager','contentmanager','delete',1,'',1),(9,'content-manager','contentmanager','deleteall',1,'',1),(10,'content-type-builder','contenttypebuilder','getmodels',1,'',1),(11,'content-type-builder','contenttypebuilder','getmodel',1,'',1),(12,'content-type-builder','contenttypebuilder','getconnections',1,'',1),(13,'content-type-builder','contenttypebuilder','createmodel',1,'',1),(14,'content-type-builder','contenttypebuilder','updatemodel',1,'',1),(15,'content-type-builder','contenttypebuilder','deletemodel',1,'',1),(16,'content-type-builder','contenttypebuilder','autoreload',1,'',1),(17,'content-type-builder','contenttypebuilder','checktableexists',1,'',1),(22,'settings-manager','settingsmanager','menu',1,'',1),(23,'settings-manager','settingsmanager','environments',1,'',1),(24,'settings-manager','settingsmanager','languages',1,'',1),(25,'settings-manager','settingsmanager','databases',1,'',1),(26,'settings-manager','settingsmanager','database',1,'',1),(27,'settings-manager','settingsmanager','databasemodel',1,'',1),(28,'settings-manager','settingsmanager','get',1,'',1),(29,'settings-manager','settingsmanager','update',1,'',1),(30,'settings-manager','settingsmanager','createlanguage',1,'',1),(31,'settings-manager','settingsmanager','deletelanguage',1,'',1),(32,'settings-manager','settingsmanager','createdatabase',1,'',1),(33,'settings-manager','settingsmanager','updatedatabase',1,'',1),(34,'settings-manager','settingsmanager','deletedatabase',1,'',1),(35,'settings-manager','settingsmanager','autoreload',1,'',1),(45,'users-permissions','auth','callback',1,'',1),(46,'users-permissions','auth','changepassword',1,'',1),(47,'users-permissions','auth','connect',1,'',1),(48,'users-permissions','auth','forgotpassword',1,'',1),(49,'users-permissions','auth','register',1,'',1),(50,'users-permissions','auth','emailconfirmation',1,'',1),(51,'users-permissions','user','find',1,'',1),(52,'users-permissions','user','me',1,'',1),(53,'users-permissions','user','findone',1,'',1),(54,'users-permissions','user','create',1,'',1),(55,'users-permissions','user','update',1,'',1),(56,'users-permissions','user','destroy',1,'',1),(57,'users-permissions','user','destroyall',1,'',1),(58,'users-permissions','userspermissions','createrole',1,'',1),(59,'users-permissions','userspermissions','deleteprovider',1,'',1),(60,'users-permissions','userspermissions','deleterole',1,'',1),(61,'users-permissions','userspermissions','getpermissions',1,'',1),(62,'users-permissions','userspermissions','getpolicies',1,'',1),(63,'users-permissions','userspermissions','getrole',1,'',1),(64,'users-permissions','userspermissions','getroles',1,'',1),(65,'users-permissions','userspermissions','getroutes',1,'',1),(66,'users-permissions','userspermissions','index',1,'',1),(67,'users-permissions','userspermissions','init',1,'',1),(68,'users-permissions','userspermissions','searchusers',1,'',1),(69,'users-permissions','userspermissions','updaterole',1,'',1),(70,'users-permissions','userspermissions','getemailtemplate',1,'',1),(71,'users-permissions','userspermissions','updateemailtemplate',1,'',1),(72,'users-permissions','userspermissions','getadvancedsettings',1,'',1),(73,'users-permissions','userspermissions','updateadvancedsettings',1,'',1),(74,'users-permissions','userspermissions','getproviders',1,'',1),(75,'users-permissions','userspermissions','updateproviders',1,'',1),(76,'content-manager','contentmanager','models',0,'',2),(77,'content-manager','contentmanager','find',0,'',2),(78,'content-manager','contentmanager','count',0,'',2),(79,'content-manager','contentmanager','findone',0,'',2),(80,'content-manager','contentmanager','create',0,'',2),(81,'content-manager','contentmanager','update',0,'',2),(82,'content-manager','contentmanager','updatesettings',0,'',2),(83,'content-manager','contentmanager','delete',0,'',2),(84,'content-manager','contentmanager','deleteall',0,'',2),(85,'content-type-builder','contenttypebuilder','getmodels',0,'',2),(86,'content-type-builder','contenttypebuilder','getmodel',0,'',2),(87,'content-type-builder','contenttypebuilder','getconnections',0,'',2),(88,'content-type-builder','contenttypebuilder','createmodel',0,'',2),(89,'content-type-builder','contenttypebuilder','updatemodel',0,'',2),(90,'content-type-builder','contenttypebuilder','deletemodel',0,'',2),(91,'content-type-builder','contenttypebuilder','autoreload',1,'',2),(92,'content-type-builder','contenttypebuilder','checktableexists',0,'',2),(97,'settings-manager','settingsmanager','menu',0,'',2),(98,'settings-manager','settingsmanager','environments',0,'',2),(99,'settings-manager','settingsmanager','languages',0,'',2),(100,'settings-manager','settingsmanager','databases',0,'',2),(101,'settings-manager','settingsmanager','database',0,'',2),(102,'settings-manager','settingsmanager','databasemodel',0,'',2),(103,'settings-manager','settingsmanager','get',0,'',2),(104,'settings-manager','settingsmanager','update',0,'',2),(105,'settings-manager','settingsmanager','createlanguage',0,'',2),(106,'settings-manager','settingsmanager','deletelanguage',0,'',2),(107,'settings-manager','settingsmanager','createdatabase',0,'',2),(108,'settings-manager','settingsmanager','updatedatabase',0,'',2),(109,'settings-manager','settingsmanager','deletedatabase',0,'',2),(110,'settings-manager','settingsmanager','autoreload',1,'',2),(120,'users-permissions','auth','callback',0,'',2),(121,'users-permissions','auth','changepassword',0,'',2),(122,'users-permissions','auth','connect',1,'',2),(123,'users-permissions','auth','forgotpassword',0,'',2),(124,'users-permissions','auth','register',0,'',2),(125,'users-permissions','auth','emailconfirmation',0,'',2),(126,'users-permissions','user','find',0,'',2),(127,'users-permissions','user','me',1,'',2),(128,'users-permissions','user','findone',0,'',2),(129,'users-permissions','user','create',0,'',2),(130,'users-permissions','user','update',0,'',2),(131,'users-permissions','user','destroy',0,'',2),(132,'users-permissions','user','destroyall',0,'',2),(133,'users-permissions','userspermissions','createrole',0,'',2),(134,'users-permissions','userspermissions','deleteprovider',0,'',2),(135,'users-permissions','userspermissions','deleterole',0,'',2),(136,'users-permissions','userspermissions','getpermissions',0,'',2),(137,'users-permissions','userspermissions','getpolicies',0,'',2),(138,'users-permissions','userspermissions','getrole',0,'',2),(139,'users-permissions','userspermissions','getroles',0,'',2),(140,'users-permissions','userspermissions','getroutes',0,'',2),(141,'users-permissions','userspermissions','index',0,'',2),(142,'users-permissions','userspermissions','init',1,'',2),(143,'users-permissions','userspermissions','searchusers',0,'',2),(144,'users-permissions','userspermissions','updaterole',0,'',2),(145,'users-permissions','userspermissions','getemailtemplate',0,'',2),(146,'users-permissions','userspermissions','updateemailtemplate',0,'',2),(147,'users-permissions','userspermissions','getadvancedsettings',0,'',2),(148,'users-permissions','userspermissions','updateadvancedsettings',0,'',2),(149,'users-permissions','userspermissions','getproviders',0,'',2),(150,'users-permissions','userspermissions','updateproviders',0,'',2),(151,'content-manager','contentmanager','models',0,'',3),(152,'content-manager','contentmanager','find',0,'',3),(153,'content-manager','contentmanager','count',0,'',3),(154,'content-manager','contentmanager','findone',0,'',3),(155,'content-manager','contentmanager','create',0,'',3),(156,'content-manager','contentmanager','update',0,'',3),(157,'content-manager','contentmanager','updatesettings',0,'',3),(158,'content-manager','contentmanager','delete',0,'',3),(159,'content-manager','contentmanager','deleteall',0,'',3),(160,'content-type-builder','contenttypebuilder','getmodels',0,'',3),(161,'content-type-builder','contenttypebuilder','getmodel',0,'',3),(162,'content-type-builder','contenttypebuilder','getconnections',0,'',3),(163,'content-type-builder','contenttypebuilder','createmodel',0,'',3),(164,'content-type-builder','contenttypebuilder','updatemodel',0,'',3),(165,'content-type-builder','contenttypebuilder','deletemodel',0,'',3),(166,'content-type-builder','contenttypebuilder','autoreload',1,'',3),(167,'content-type-builder','contenttypebuilder','checktableexists',0,'',3),(172,'settings-manager','settingsmanager','menu',0,'',3),(173,'settings-manager','settingsmanager','environments',0,'',3),(174,'settings-manager','settingsmanager','languages',0,'',3),(175,'settings-manager','settingsmanager','databases',0,'',3),(176,'settings-manager','settingsmanager','database',0,'',3),(177,'settings-manager','settingsmanager','databasemodel',0,'',3),(178,'settings-manager','settingsmanager','get',0,'',3),(179,'settings-manager','settingsmanager','update',0,'',3),(180,'settings-manager','settingsmanager','createlanguage',0,'',3),(181,'settings-manager','settingsmanager','deletelanguage',0,'',3),(182,'settings-manager','settingsmanager','createdatabase',0,'',3),(183,'settings-manager','settingsmanager','updatedatabase',0,'',3),(184,'settings-manager','settingsmanager','deletedatabase',0,'',3),(185,'settings-manager','settingsmanager','autoreload',1,'',3),(195,'users-permissions','auth','callback',1,'',3),(196,'users-permissions','auth','changepassword',1,'',3),(197,'users-permissions','auth','connect',1,'',3),(198,'users-permissions','auth','forgotpassword',1,'',3),(199,'users-permissions','auth','register',1,'',3),(200,'users-permissions','auth','emailconfirmation',1,'',3),(201,'users-permissions','user','find',0,'',3),(202,'users-permissions','user','me',1,'',3),(203,'users-permissions','user','findone',0,'',3),(204,'users-permissions','user','create',0,'',3),(205,'users-permissions','user','update',0,'',3),(206,'users-permissions','user','destroy',0,'',3),(207,'users-permissions','user','destroyall',0,'',3),(208,'users-permissions','userspermissions','createrole',0,'',3),(209,'users-permissions','userspermissions','deleteprovider',0,'',3),(210,'users-permissions','userspermissions','deleterole',0,'',3),(211,'users-permissions','userspermissions','getpermissions',0,'',3),(212,'users-permissions','userspermissions','getpolicies',0,'',3),(213,'users-permissions','userspermissions','getrole',0,'',3),(214,'users-permissions','userspermissions','getroles',0,'',3),(215,'users-permissions','userspermissions','getroutes',0,'',3),(216,'users-permissions','userspermissions','index',0,'',3),(217,'users-permissions','userspermissions','init',1,'',3),(218,'users-permissions','userspermissions','searchusers',0,'',3),(219,'users-permissions','userspermissions','updaterole',0,'',3),(220,'users-permissions','userspermissions','getemailtemplate',0,'',3),(221,'users-permissions','userspermissions','updateemailtemplate',0,'',3),(222,'users-permissions','userspermissions','getadvancedsettings',0,'',3),(223,'users-permissions','userspermissions','updateadvancedsettings',0,'',3),(224,'users-permissions','userspermissions','getproviders',0,'',3),(225,'users-permissions','userspermissions','updateproviders',0,'',3),(226,'application','test','find',1,'',1),(227,'application','test','findone',1,'',1),(228,'application','test','count',1,'',1),(229,'application','test','create',1,'',1),(230,'application','test','update',1,'',1),(231,'application','test','destroy',1,'',1),(232,'application','test','find',0,'',2),(233,'application','test','findone',0,'',2),(234,'application','test','count',0,'',2),(235,'application','test','create',0,'',2),(236,'application','test','update',0,'',2),(237,'application','test','destroy',0,'',2),(238,'application','test','find',0,'',3),(239,'application','test','findone',0,'',3),(240,'application','test','count',0,'',3),(241,'application','test','create',0,'',3),(242,'application','test','update',0,'',3),(243,'application','test','destroy',0,'',3),(244,'application','telegram','find',1,'',1),(245,'application','telegram','findone',1,'',1),(246,'application','telegram','count',1,'',1),(247,'application','telegram','create',1,'',1),(248,'application','telegram','update',1,'',1),(249,'application','telegram','destroy',1,'',1),(250,'application','telegram','find',0,'',2),(251,'application','telegram','findone',0,'',2),(252,'application','telegram','count',0,'',2),(253,'application','telegram','create',0,'',2),(254,'application','telegram','update',0,'',2),(255,'application','telegram','destroy',0,'',2),(256,'application','telegram','find',1,'',3),(257,'application','telegram','findone',1,'',3),(258,'application','telegram','count',1,'',3),(259,'application','telegram','create',0,'',3),(260,'application','telegram','update',0,'',3),(261,'application','telegram','destroy',0,'',3),(262,'application','kullanicirolleri','find',1,'',1),(263,'application','kullanicirolleri','findone',1,'',1),(264,'application','kullanicirolleri','count',1,'',1),(265,'application','kullanicirolleri','create',1,'',1),(266,'application','kullanicirolleri','update',1,'',1),(267,'application','kullanicirolleri','destroy',1,'',1),(268,'application','kullanicirolleri','find',0,'',2),(269,'application','kullanicirolleri','findone',0,'',2),(270,'application','kullanicirolleri','count',0,'',2),(271,'application','kullanicirolleri','create',0,'',2),(272,'application','kullanicirolleri','update',0,'',2),(273,'application','kullanicirolleri','destroy',0,'',2),(274,'application','kullanicirolleri','find',0,'',3),(275,'application','kullanicirolleri','findone',0,'',3),(276,'application','kullanicirolleri','count',0,'',3),(277,'application','kullanicirolleri','create',0,'',3),(278,'application','kullanicirolleri','update',0,'',3),(279,'application','kullanicirolleri','destroy',0,'',3),(280,'application','menu','find',1,'',1),(281,'application','menu','findone',1,'',1),(282,'application','menu','count',1,'',1),(283,'application','menu','create',1,'',1),(284,'application','menu','update',1,'',1),(285,'application','menu','destroy',1,'',1),(286,'application','menu','find',0,'',2),(287,'application','menu','findone',0,'',2),(288,'application','menu','count',0,'',2),(289,'application','menu','create',0,'',2),(290,'application','menu','update',0,'',2),(291,'application','menu','destroy',0,'',2),(292,'application','menu','find',1,'',3),(293,'application','menu','count',1,'',3),(294,'application','menu','findone',1,'',3),(295,'application','menu','create',0,'',3),(296,'application','menu','update',0,'',3),(297,'application','menu','destroy',0,'',3),(298,'application','kaynaklar','find',1,'',1),(299,'application','kaynaklar','findone',1,'',1),(300,'application','kaynaklar','count',1,'',1),(301,'application','kaynaklar','create',1,'',1),(302,'application','kaynaklar','update',1,'',1),(303,'application','kaynaklar','destroy',1,'',1),(304,'application','kaynaklar','find',0,'',2),(305,'application','kaynaklar','findone',0,'',2),(306,'application','kaynaklar','count',0,'',2),(307,'application','kaynaklar','create',0,'',2),(308,'application','kaynaklar','update',0,'',2),(309,'application','kaynaklar','destroy',0,'',2),(310,'application','kaynaklar','find',1,'',3),(311,'application','kaynaklar','findone',1,'',3),(312,'application','kaynaklar','count',1,'',3),(313,'application','kaynaklar','create',0,'',3),(314,'application','kaynaklar','update',0,'',3),(315,'application','kaynaklar','destroy',0,'',3),(316,'application','uyari','find',1,'',1),(317,'application','uyari','findone',1,'',1),(318,'application','uyari','count',1,'',1),(319,'application','uyari','create',1,'',1),(320,'application','uyari','update',1,'',1),(321,'application','uyari','destroy',1,'',1),(322,'application','uyari','find',0,'',2),(323,'application','uyari','findone',0,'',2),(324,'application','uyari','count',0,'',2),(325,'application','uyari','create',0,'',2),(326,'application','uyari','update',0,'',2),(327,'application','uyari','destroy',0,'',2),(328,'application','uyari','find',1,'',3),(329,'application','uyari','findone',1,'',3),(330,'application','uyari','count',1,'',3),(331,'application','uyari','create',0,'',3),(332,'application','uyari','update',0,'',3),(333,'application','uyari','destroy',0,'',3);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_ROLE` (`name`,`description`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Administrator','These users have all access in the project.','root'),(2,'Authenticated','Default role given to authenticated user.','authenticated'),(3,'Public','Default role given to unauthenticated user.','public');
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `resetPasswordToken` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_USER` (`username`,`provider`,`resetPasswordToken`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` VALUES (1,'admin','mkltkn@gmail.com','local','$2a$10$ifEriMAvqWNyY/jLxNv2b.zcOZQbg4wE0.r25gFsl.4byuY4GHlru',NULL,1,0,1),(2,'piepsfi','bulentyilmazoksuzoglu@gmail.com','local','$2a$10$Yw0ygn62tfaLabFSluoAAuB5CQ37qFlNkt9vQTlb/xvKMd3emFFTm',NULL,1,0,1),(3,'eksicodebot','foo@bar.com','local','$2a$10$6wwGRa9/cXkbafQF6rKJsuuWkjOCyNt9r5Dah7Um5To7jkZoRxP1G',NULL,1,NULL,1);
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uyaris`
--

DROP TABLE IF EXISTS `uyaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uyaris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_UYARIS` (`user_name`,`user_id`,`reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uyaris`
--

LOCK TABLES `uyaris` WRITE;
/*!40000 ALTER TABLE `uyaris` DISABLE KEYS */;
/*!40000 ALTER TABLE `uyaris` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-29 12:10:32
