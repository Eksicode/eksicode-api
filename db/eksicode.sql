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
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_CORE_STORE` (`key`,`value`,`type`,`environment`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'db_model_kaynaklars','{\"doc_name\":{\"default\":\"\",\"type\":\"string\",\"required\":true,\"unique\":true},\"doc_creator\":{\"default\":\"\",\"type\":\"integer\"},\"approved\":{\"default\":false,\"type\":\"boolean\"},\"approving_user\":{\"default\":\"\",\"type\":\"integer\"},\"tags\":{\"default\":\"\",\"type\":\"string\"},\"comment\":{\"default\":\"\",\"type\":\"text\"},\"doc_creator_tg\":{\"default\":\"\",\"type\":\"integer\"},\"doc_link\":{\"default\":\"\",\"unique\":true,\"type\":\"string\",\"required\":true},\"lat_edit\":{\"default\":\"\",\"type\":\"date\"},\"doc_tg_ch\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(2,'db_model_users-permissions_permission','{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}','object',NULL,NULL),(3,'db_model_tests','{\"test\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(4,'db_model_telegrams','{\"name\":{\"default\":\"\",\"type\":\"string\"},\"logo\":{\"default\":\"\",\"type\":\"string\"},\"icon\":{\"default\":\"\",\"type\":\"string\"},\"members\":{\"default\":\"\",\"type\":\"integer\"},\"link\":{\"default\":\"\",\"type\":\"string\"},\"channelID\":{\"default\":\"\",\"type\":\"string\"},\"listOrder\":{\"default\":\"\",\"type\":\"integer\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(5,'db_model_kullanicirolleris','{\"role_name\":{\"default\":\"\",\"type\":\"string\"},\"role_rights\":{\"default\":\"\",\"type\":\"integer\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(6,'db_model_menus','{\"menu_name\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(7,'db_model_users-permissions_role','{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}}','object',NULL,NULL),(8,'db_model_users-permissions_user','{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}}','object',NULL,NULL),(9,'db_model_uyaris','{\"user_name\":{\"default\":\"\",\"type\":\"string\"},\"user_id\":{\"default\":\"\",\"type\":\"string\"},\"reason\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(10,'db_model_core_store','{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}','object',NULL,NULL),(11,'plugin_content-manager_schema','{\"generalSettings\":{\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10},\"models\":{\"plugins\":{\"users-permissions\":{\"permission\":{\"label\":\"Permission\",\"labelPlural\":\"Permissions\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"editDisplay\":{\"availableFields\":{\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"},\"controller\":{\"label\":\"Controller\",\"type\":\"string\",\"description\":\"\",\"name\":\"controller\",\"editable\":true,\"placeholder\":\"\"},\"action\":{\"label\":\"Action\",\"type\":\"string\",\"description\":\"\",\"name\":\"action\",\"editable\":true,\"placeholder\":\"\"},\"enabled\":{\"label\":\"Enabled\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"enabled\",\"editable\":true,\"placeholder\":\"\"},\"policy\":{\"label\":\"Policy\",\"type\":\"string\",\"description\":\"\",\"name\":\"policy\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"type\",\"controller\",\"action\",\"enabled\",\"policy\"],\"relations\":[\"role\"]},\"info\":{\"name\":\"permission\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_permission\",\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"globalId\":\"UsersPermissionsPermission\",\"globalName\":\"UsersPermissionsPermission\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},\"controller\":{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},\"action\":{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},\"enabled\":{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true},\"policy\":{\"label\":\"Policy\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"policy\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}}},\"role\":{\"label\":\"Role\",\"labelPlural\":\"Roles\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"string\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"},\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\",\"type\"],\"relations\":[\"permissions\",\"users\"]},\"info\":{\"name\":\"role\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_role\",\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}},\"globalId\":\"UsersPermissionsRole\",\"globalName\":\"UsersPermissionsRole\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"},{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"permissions\":{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Permissions\",\"displayedAttribute\":\"type\"},\"users\":{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Users\",\"displayedAttribute\":\"username\"}}},\"user\":{\"label\":\"User\",\"labelPlural\":\"Users\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"editDisplay\":{\"availableFields\":{\"username\":{\"label\":\"Username\",\"type\":\"string\",\"description\":\"\",\"name\":\"username\",\"editable\":true,\"placeholder\":\"\"},\"email\":{\"label\":\"Email\",\"type\":\"email\",\"description\":\"\",\"name\":\"email\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"password\":{\"label\":\"Password\",\"type\":\"password\",\"description\":\"\",\"name\":\"password\",\"editable\":true,\"placeholder\":\"\"},\"confirmed\":{\"label\":\"Confirmed\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"confirmed\",\"editable\":true,\"placeholder\":\"\"},\"blocked\":{\"label\":\"Blocked\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"blocked\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"confirmed\",\"blocked\"],\"relations\":[\"role\"]},\"info\":{\"name\":\"user\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_user\",\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"globalId\":\"UsersPermissionsUser\",\"globalName\":\"UsersPermissionsUser\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"username\":{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},\"email\":{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"password\":{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},\"confirmed\":{\"label\":\"Confirmed\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"confirmed\",\"sortable\":true,\"searchable\":true},\"blocked\":{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}}}}},\"kaynaklar\":{\"label\":\"Kaynaklar\",\"labelPlural\":\"Kaynaklars\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"doc_name\":{\"label\":\"Doc_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"doc_name\",\"editable\":true,\"placeholder\":\"\"},\"doc_creator\":{\"label\":\"Doc_creator\",\"type\":\"integer\",\"description\":\"\",\"name\":\"doc_creator\",\"editable\":true,\"placeholder\":\"\"},\"approved\":{\"label\":\"Approved\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"approved\",\"editable\":true,\"placeholder\":\"\"},\"approving_user\":{\"label\":\"Approving_user\",\"type\":\"integer\",\"description\":\"\",\"name\":\"approving_user\",\"editable\":true,\"placeholder\":\"\"},\"tags\":{\"label\":\"Tags\",\"type\":\"string\",\"description\":\"\",\"name\":\"tags\",\"editable\":true,\"placeholder\":\"\"},\"comment\":{\"label\":\"Comment\",\"type\":\"text\",\"description\":\"\",\"name\":\"comment\",\"editable\":true,\"placeholder\":\"\"},\"doc_creator_tg\":{\"label\":\"Doc_creator_tg\",\"type\":\"integer\",\"description\":\"\",\"name\":\"doc_creator_tg\",\"editable\":true,\"placeholder\":\"\"},\"doc_link\":{\"label\":\"Doc_link\",\"type\":\"string\",\"description\":\"\",\"name\":\"doc_link\",\"editable\":true,\"placeholder\":\"\"},\"lat_edit\":{\"label\":\"Lat_edit\",\"type\":\"date\",\"description\":\"\",\"name\":\"lat_edit\",\"editable\":true,\"placeholder\":\"\"},\"doc_tg_ch\":{\"label\":\"Doc_tg_ch\",\"type\":\"string\",\"description\":\"\",\"name\":\"doc_tg_ch\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"doc_name\",\"doc_creator\",\"approved\",\"approving_user\",\"tags\",\"comment\",\"doc_creator_tg\",\"doc_link\",\"lat_edit\",\"doc_tg_ch\"],\"relations\":[]},\"info\":{\"name\":\"kaynaklar\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"kaynaklars\",\"attributes\":{\"doc_name\":{\"default\":\"\",\"type\":\"string\",\"required\":true,\"unique\":true},\"doc_creator\":{\"default\":\"\",\"type\":\"integer\"},\"approved\":{\"default\":false,\"type\":\"boolean\"},\"approving_user\":{\"default\":\"\",\"type\":\"integer\"},\"tags\":{\"default\":\"\",\"type\":\"string\"},\"comment\":{\"default\":\"\",\"type\":\"text\"},\"doc_creator_tg\":{\"default\":\"\",\"type\":\"integer\"},\"doc_link\":{\"default\":\"\",\"unique\":true,\"type\":\"string\",\"required\":true},\"lat_edit\":{\"default\":\"\",\"type\":\"date\"},\"doc_tg_ch\":{\"default\":\"\",\"type\":\"string\"}},\"globalId\":\"Kaynaklar\",\"globalName\":\"Kaynaklar\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"doc_name\":{\"label\":\"Doc_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_name\",\"sortable\":true,\"searchable\":true},\"doc_creator\":{\"label\":\"Doc_creator\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"doc_creator\",\"sortable\":true,\"searchable\":true},\"approved\":{\"label\":\"Approved\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"approved\",\"sortable\":true,\"searchable\":true},\"approving_user\":{\"label\":\"Approving_user\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"approving_user\",\"sortable\":true,\"searchable\":true},\"tags\":{\"label\":\"Tags\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"tags\",\"sortable\":true,\"searchable\":true},\"comment\":{\"label\":\"Comment\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"comment\",\"sortable\":true,\"searchable\":true},\"doc_creator_tg\":{\"label\":\"Doc_creator_tg\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"doc_creator_tg\",\"sortable\":true,\"searchable\":true},\"doc_link\":{\"label\":\"Doc_link\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_link\",\"sortable\":true,\"searchable\":true},\"lat_edit\":{\"label\":\"Lat_edit\",\"description\":\"\",\"type\":\"date\",\"disabled\":false,\"name\":\"lat_edit\",\"sortable\":true,\"searchable\":true},\"doc_tg_ch\":{\"label\":\"Doc_tg_ch\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_tg_ch\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Doc_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Doc_creator\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"doc_creator\",\"sortable\":true,\"searchable\":true},{\"label\":\"Approved\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"approved\",\"sortable\":true,\"searchable\":true},{\"label\":\"Approving_user\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"approving_user\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"kullanicirolleri\":{\"label\":\"Kullanicirolleri\",\"labelPlural\":\"Kullanicirolleris\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"role_name\":{\"label\":\"Role_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"role_name\",\"editable\":true,\"placeholder\":\"\"},\"role_rights\":{\"label\":\"Role_rights\",\"type\":\"integer\",\"description\":\"\",\"name\":\"role_rights\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"role_name\",\"role_rights\"],\"relations\":[]},\"info\":{\"name\":\"kullanicirolleri\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"kullanicirolleris\",\"attributes\":{\"role_name\":{\"default\":\"\",\"type\":\"string\"},\"role_rights\":{\"default\":\"\",\"type\":\"integer\"}},\"globalId\":\"Kullanicirolleri\",\"globalName\":\"Kullanicirolleri\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"role_name\":{\"label\":\"Role_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"role_name\",\"sortable\":true,\"searchable\":true},\"role_rights\":{\"label\":\"Role_rights\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"role_rights\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Role_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"role_name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Role_rights\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"role_rights\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"menu\":{\"label\":\"Menu\",\"labelPlural\":\"Menus\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"menu_name\":{\"label\":\"Menu_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"menu_name\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"menu_name\"],\"relations\":[]},\"info\":{\"name\":\"menu\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"menus\",\"attributes\":{\"menu_name\":{\"default\":\"\",\"type\":\"string\"}},\"globalId\":\"Menu\",\"globalName\":\"Menu\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"menu_name\":{\"label\":\"Menu_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"menu_name\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Menu_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"menu_name\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"telegram\":{\"label\":\"Telegram\",\"labelPlural\":\"Telegrams\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"logo\":{\"label\":\"Logo\",\"type\":\"string\",\"description\":\"\",\"name\":\"logo\",\"editable\":true,\"placeholder\":\"\"},\"icon\":{\"label\":\"Icon\",\"type\":\"string\",\"description\":\"\",\"name\":\"icon\",\"editable\":true,\"placeholder\":\"\"},\"members\":{\"label\":\"Members\",\"type\":\"integer\",\"description\":\"\",\"name\":\"members\",\"editable\":true,\"placeholder\":\"\"},\"link\":{\"label\":\"Link\",\"type\":\"string\",\"description\":\"\",\"name\":\"link\",\"editable\":true,\"placeholder\":\"\"},\"channelID\":{\"label\":\"ChannelID\",\"type\":\"string\",\"description\":\"\",\"name\":\"channelID\",\"editable\":true,\"placeholder\":\"\"},\"listOrder\":{\"label\":\"ListOrder\",\"type\":\"integer\",\"description\":\"\",\"name\":\"listOrder\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"logo\",\"icon\",\"members\",\"link\",\"channelID\",\"listOrder\"],\"relations\":[]},\"info\":{\"name\":\"telegram\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"telegrams\",\"attributes\":{\"name\":{\"default\":\"\",\"type\":\"string\"},\"logo\":{\"default\":\"\",\"type\":\"string\"},\"icon\":{\"default\":\"\",\"type\":\"string\"},\"members\":{\"default\":\"\",\"type\":\"integer\"},\"link\":{\"default\":\"\",\"type\":\"string\"},\"channelID\":{\"default\":\"\",\"type\":\"string\"},\"listOrder\":{\"default\":\"\",\"type\":\"integer\"}},\"globalId\":\"Telegram\",\"globalName\":\"Telegram\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"logo\":{\"label\":\"Logo\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"logo\",\"sortable\":true,\"searchable\":true},\"icon\":{\"label\":\"Icon\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"icon\",\"sortable\":true,\"searchable\":true},\"members\":{\"label\":\"Members\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"members\",\"sortable\":true,\"searchable\":true},\"link\":{\"label\":\"Link\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"link\",\"sortable\":true,\"searchable\":true},\"channelID\":{\"label\":\"ChannelID\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"channelID\",\"sortable\":true,\"searchable\":true},\"listOrder\":{\"label\":\"ListOrder\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"listOrder\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Logo\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"logo\",\"sortable\":true,\"searchable\":true},{\"label\":\"Icon\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"icon\",\"sortable\":true,\"searchable\":true},{\"label\":\"Members\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"members\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"test\":{\"label\":\"Test\",\"labelPlural\":\"Tests\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"test\":{\"label\":\"Test\",\"type\":\"string\",\"description\":\"\",\"name\":\"test\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"test\"],\"relations\":[]},\"info\":{\"name\":\"test\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"tests\",\"attributes\":{\"test\":{\"default\":\"\",\"type\":\"string\"}},\"globalId\":\"Test\",\"globalName\":\"Test\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"test\":{\"label\":\"Test\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"test\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Test\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"test\",\"sortable\":true,\"searchable\":true}],\"relations\":{}},\"uyari\":{\"label\":\"Uyari\",\"labelPlural\":\"Uyaris\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"user_name\":{\"label\":\"User_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"user_name\",\"editable\":true,\"placeholder\":\"\"},\"user_id\":{\"label\":\"User_id\",\"type\":\"string\",\"description\":\"\",\"name\":\"user_id\",\"editable\":true,\"placeholder\":\"\"},\"reason\":{\"label\":\"Reason\",\"type\":\"string\",\"description\":\"\",\"name\":\"reason\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"user_name\",\"user_id\",\"reason\"],\"relations\":[]},\"info\":{\"name\":\"uyari\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"uyaris\",\"attributes\":{\"user_name\":{\"default\":\"\",\"type\":\"string\"},\"user_id\":{\"default\":\"\",\"type\":\"string\"},\"reason\":{\"default\":\"\",\"type\":\"string\"}},\"globalId\":\"Uyari\",\"globalName\":\"Uyari\",\"primaryKey\":\"id\",\"associations\":[],\"fields\":{\"user_name\":{\"label\":\"User_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_name\",\"sortable\":true,\"searchable\":true},\"user_id\":{\"label\":\"User_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_id\",\"sortable\":true,\"searchable\":true},\"reason\":{\"label\":\"Reason\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"reason\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"User_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_name\",\"sortable\":true,\"searchable\":true},{\"label\":\"User_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_id\",\"sortable\":true,\"searchable\":true},{\"label\":\"Reason\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"reason\",\"sortable\":true,\"searchable\":true}],\"relations\":{}}},\"layout\":{\"user\":{\"actions\":{\"create\":\"User.create\",\"update\":\"User.update\",\"destroy\":\"User.destroy\",\"deleteall\":\"User.destroyAll\"},\"attributes\":{\"username\":{\"className\":\"col-md-6\"},\"email\":{\"className\":\"col-md-6\"},\"resetPasswordToken\":{\"className\":\"d-none\"},\"role\":{\"className\":\"d-none\"}}},\"kaynaklar\":{\"attributes\":{}},\"kullanicirolleri\":{\"attributes\":{}},\"menu\":{\"attributes\":{}},\"telegram\":{\"attributes\":{}},\"test\":{\"attributes\":{}},\"uyari\":{\"attributes\":{}}}}','object','',''),(12,'core_application','{\"name\":\"Default Application\",\"description\":\"This API is going to be awesome!\"}','object','',''),(13,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"comments\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-official\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"}}','object','',''),(14,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"refresh\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"­Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square-o\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(15,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"http://localhost:1337/admin\",\"default_role\":\"authenticated\"}','object','','');
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
  `doc_name` varchar(255) NOT NULL,
  `doc_creator` int(11) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `approving_user` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `comment` longtext,
  `doc_creator_tg` int(11) DEFAULT NULL,
  `doc_link` varchar(255) NOT NULL,
  `lat_edit` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `doc_tg_ch` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_KAYNAKLARS` (`doc_name`,`tags`,`comment`,`doc_link`,`doc_tg_ch`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaynaklars`
--

LOCK TABLES `kaynaklars` WRITE;
/*!40000 ALTER TABLE `kaynaklars` DISABLE KEYS */;
INSERT INTO `kaynaklars` VALUES (1,'Github Atakan Ermis',NULL,NULL,NULL,NULL,NULL,NULL,'http://github.com/AtakanErmis/gelistirici-yol-haritasi','2019-09-29 10:58:46',NULL,'2019-09-29 07:58:47','2019-09-29 07:58:47'),(2,'ermişsdfdsf',NULL,0,NULL,NULL,NULL,NULL,'asdasdasdasd','2019-09-29 11:26:23',NULL,'2019-09-29 08:26:23','2019-09-29 08:28:46');
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
  `role_name` varchar(255) DEFAULT NULL,
  `role_rights` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_KULLANICIROLLERIS` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `menu_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_MENUS` (`menu_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `channelID` varchar(255) DEFAULT NULL,
  `listOrder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_TELEGRAMS` (`name`,`logo`,`icon`,`link`,`channelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telegrams`
--

LOCK TABLES `telegrams` WRITE;
/*!40000 ALTER TABLE `telegrams` DISABLE KEYS */;
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
  `test` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_TESTS` (`test`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_PERMISSION` (`type`,`controller`,`action`,`policy`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'application','kaynaklar','find',1,'',1),(2,'application','kaynaklar','findone',1,'',1),(3,'application','kaynaklar','count',1,'',1),(4,'application','kaynaklar','create',1,'',1),(5,'application','kaynaklar','update',1,'',1),(6,'application','kullanicirolleri','find',1,'',1),(7,'application','kullanicirolleri','count',1,'',1),(8,'application','kullanicirolleri','create',1,'',1),(9,'application','kullanicirolleri','update',1,'',1),(10,'application','kullanicirolleri','destroy',1,'',1),(11,'application','menu','find',1,'',1),(12,'application','menu','findone',1,'',1),(13,'application','menu','count',1,'',1),(14,'application','menu','create',1,'',1),(15,'application','menu','update',1,'',1),(16,'application','menu','destroy',1,'',1),(17,'application','telegram','find',1,'',1),(18,'application','kullanicirolleri','findone',1,'',1),(19,'application','kaynaklar','destroy',1,'',1),(20,'application','telegram','findone',1,'',1),(21,'application','telegram','count',1,'',1),(22,'application','telegram','create',1,'',1),(23,'application','telegram','update',1,'',1),(24,'application','telegram','destroy',1,'',1),(25,'application','test','find',1,'',1),(26,'application','test','findone',1,'',1),(27,'application','test','count',1,'',1),(28,'application','test','create',1,'',1),(29,'application','test','update',1,'',1),(30,'application','test','destroy',1,'',1),(31,'application','uyari','find',1,'',1),(32,'application','uyari','findone',1,'',1),(33,'application','uyari','count',1,'',1),(34,'application','uyari','create',1,'',1),(35,'application','uyari','update',1,'',1),(36,'application','uyari','destroy',1,'',1),(37,'content-manager','contentmanager','models',1,'',1),(38,'content-manager','contentmanager','find',1,'',1),(39,'content-manager','contentmanager','count',1,'',1),(40,'content-manager','contentmanager','findone',1,'',1),(41,'content-manager','contentmanager','create',1,'',1),(42,'content-manager','contentmanager','update',1,'',1),(43,'content-manager','contentmanager','updatesettings',1,'',1),(44,'content-manager','contentmanager','delete',1,'',1),(45,'content-manager','contentmanager','deleteall',1,'',1),(46,'content-type-builder','contenttypebuilder','getmodels',1,'',1),(47,'content-type-builder','contenttypebuilder','getmodel',1,'',1),(48,'content-type-builder','contenttypebuilder','getconnections',1,'',1),(49,'content-type-builder','contenttypebuilder','createmodel',1,'',1),(50,'content-type-builder','contenttypebuilder','updatemodel',1,'',1),(51,'content-type-builder','contenttypebuilder','deletemodel',1,'',1),(52,'content-type-builder','contenttypebuilder','autoreload',1,'',1),(53,'content-type-builder','contenttypebuilder','checktableexists',1,'',1),(54,'settings-manager','settingsmanager','menu',1,'',1),(55,'settings-manager','settingsmanager','environments',1,'',1),(56,'settings-manager','settingsmanager','languages',1,'',1),(57,'settings-manager','settingsmanager','databases',1,'',1),(58,'settings-manager','settingsmanager','database',1,'',1),(59,'settings-manager','settingsmanager','databasemodel',1,'',1),(60,'settings-manager','settingsmanager','get',1,'',1),(61,'settings-manager','settingsmanager','update',1,'',1),(62,'settings-manager','settingsmanager','createlanguage',1,'',1),(63,'settings-manager','settingsmanager','deletelanguage',1,'',1),(64,'settings-manager','settingsmanager','createdatabase',1,'',1),(65,'settings-manager','settingsmanager','updatedatabase',1,'',1),(66,'settings-manager','settingsmanager','deletedatabase',1,'',1),(67,'settings-manager','settingsmanager','autoreload',1,'',1),(68,'users-permissions','auth','callback',1,'',1),(69,'users-permissions','auth','changepassword',1,'',1),(70,'users-permissions','auth','connect',1,'',1),(71,'users-permissions','auth','forgotpassword',1,'',1),(72,'users-permissions','auth','register',1,'',1),(73,'users-permissions','auth','emailconfirmation',1,'',1),(74,'users-permissions','user','find',1,'',1),(75,'users-permissions','user','me',1,'',1),(76,'users-permissions','user','findone',1,'',1),(77,'users-permissions','user','create',1,'',1),(78,'users-permissions','user','update',1,'',1),(79,'users-permissions','user','destroy',1,'',1),(80,'users-permissions','user','destroyall',1,'',1),(81,'users-permissions','userspermissions','createrole',1,'',1),(82,'users-permissions','userspermissions','deleteprovider',1,'',1),(83,'users-permissions','userspermissions','deleterole',1,'',1),(84,'users-permissions','userspermissions','getpermissions',1,'',1),(85,'users-permissions','userspermissions','getpolicies',1,'',1),(86,'users-permissions','userspermissions','getrole',1,'',1),(87,'users-permissions','userspermissions','getroles',1,'',1),(88,'users-permissions','userspermissions','getroutes',1,'',1),(89,'users-permissions','userspermissions','index',1,'',1),(90,'users-permissions','userspermissions','init',1,'',1),(91,'users-permissions','userspermissions','searchusers',1,'',1),(92,'users-permissions','userspermissions','updaterole',1,'',1),(93,'users-permissions','userspermissions','getemailtemplate',1,'',1),(94,'users-permissions','userspermissions','updateemailtemplate',1,'',1),(95,'users-permissions','userspermissions','getadvancedsettings',1,'',1),(96,'users-permissions','userspermissions','updateadvancedsettings',1,'',1),(97,'users-permissions','userspermissions','getproviders',1,'',1),(98,'users-permissions','userspermissions','updateproviders',1,'',1),(99,'application','kaynaklar','find',0,'',2),(100,'application','kaynaklar','findone',0,'',2),(101,'application','kaynaklar','count',0,'',2),(102,'application','kaynaklar','create',0,'',2),(103,'application','kaynaklar','update',0,'',2),(104,'application','kaynaklar','destroy',0,'',2),(105,'application','kullanicirolleri','find',0,'',2),(106,'application','kullanicirolleri','findone',0,'',2),(107,'application','kullanicirolleri','count',0,'',2),(108,'application','kullanicirolleri','create',0,'',2),(109,'application','kullanicirolleri','update',0,'',2),(110,'application','kullanicirolleri','destroy',0,'',2),(111,'application','menu','find',0,'',2),(112,'application','menu','findone',0,'',2),(113,'application','menu','count',0,'',2),(114,'application','menu','create',0,'',2),(115,'application','menu','update',0,'',2),(116,'application','menu','destroy',0,'',2),(117,'application','telegram','find',0,'',2),(118,'application','telegram','findone',0,'',2),(119,'application','telegram','count',0,'',2),(120,'application','telegram','create',0,'',2),(121,'application','telegram','update',0,'',2),(122,'application','telegram','destroy',0,'',2),(123,'application','test','find',0,'',2),(124,'application','test','findone',0,'',2),(125,'application','test','count',0,'',2),(126,'application','test','create',0,'',2),(127,'application','test','update',0,'',2),(128,'application','test','destroy',0,'',2),(129,'application','uyari','find',0,'',2),(130,'application','uyari','findone',0,'',2),(131,'application','uyari','count',0,'',2),(132,'application','uyari','create',0,'',2),(133,'application','uyari','update',0,'',2),(134,'application','uyari','destroy',0,'',2),(135,'content-manager','contentmanager','models',0,'',2),(136,'content-manager','contentmanager','find',0,'',2),(137,'content-manager','contentmanager','count',0,'',2),(138,'content-manager','contentmanager','findone',0,'',2),(139,'content-manager','contentmanager','create',0,'',2),(140,'content-manager','contentmanager','update',0,'',2),(141,'content-manager','contentmanager','updatesettings',0,'',2),(142,'content-manager','contentmanager','delete',0,'',2),(143,'content-manager','contentmanager','deleteall',0,'',2),(144,'content-type-builder','contenttypebuilder','getmodels',0,'',2),(145,'content-type-builder','contenttypebuilder','getmodel',0,'',2),(146,'content-type-builder','contenttypebuilder','getconnections',0,'',2),(147,'content-type-builder','contenttypebuilder','createmodel',0,'',2),(148,'content-type-builder','contenttypebuilder','updatemodel',0,'',2),(149,'content-type-builder','contenttypebuilder','deletemodel',0,'',2),(150,'content-type-builder','contenttypebuilder','autoreload',1,'',2),(151,'content-type-builder','contenttypebuilder','checktableexists',0,'',2),(152,'settings-manager','settingsmanager','menu',0,'',2),(153,'settings-manager','settingsmanager','environments',0,'',2),(154,'settings-manager','settingsmanager','languages',0,'',2),(155,'settings-manager','settingsmanager','databases',0,'',2),(156,'settings-manager','settingsmanager','database',0,'',2),(157,'settings-manager','settingsmanager','databasemodel',0,'',2),(158,'settings-manager','settingsmanager','get',0,'',2),(159,'settings-manager','settingsmanager','update',0,'',2),(160,'settings-manager','settingsmanager','createlanguage',0,'',2),(161,'settings-manager','settingsmanager','deletelanguage',0,'',2),(162,'settings-manager','settingsmanager','createdatabase',0,'',2),(163,'settings-manager','settingsmanager','updatedatabase',0,'',2),(164,'settings-manager','settingsmanager','deletedatabase',0,'',2),(165,'settings-manager','settingsmanager','autoreload',1,'',2),(166,'users-permissions','auth','callback',0,'',2),(167,'users-permissions','auth','changepassword',0,'',2),(168,'users-permissions','auth','connect',1,'',2),(169,'users-permissions','auth','forgotpassword',0,'',2),(170,'users-permissions','auth','register',0,'',2),(171,'users-permissions','auth','emailconfirmation',0,'',2),(172,'users-permissions','user','find',0,'',2),(173,'users-permissions','user','me',1,'',2),(174,'users-permissions','user','findone',0,'',2),(175,'users-permissions','user','create',0,'',2),(176,'users-permissions','user','update',0,'',2),(177,'users-permissions','user','destroy',0,'',2),(178,'users-permissions','user','destroyall',0,'',2),(179,'users-permissions','userspermissions','createrole',0,'',2),(180,'users-permissions','userspermissions','deleteprovider',0,'',2),(181,'users-permissions','userspermissions','deleterole',0,'',2),(182,'users-permissions','userspermissions','getpermissions',0,'',2),(183,'users-permissions','userspermissions','getpolicies',0,'',2),(184,'users-permissions','userspermissions','getrole',0,'',2),(185,'users-permissions','userspermissions','getroles',0,'',2),(186,'users-permissions','userspermissions','getroutes',0,'',2),(187,'users-permissions','userspermissions','index',0,'',2),(188,'users-permissions','userspermissions','init',1,'',2),(189,'users-permissions','userspermissions','searchusers',0,'',2),(190,'users-permissions','userspermissions','updaterole',0,'',2),(191,'users-permissions','userspermissions','getemailtemplate',0,'',2),(192,'users-permissions','userspermissions','updateemailtemplate',0,'',2),(193,'users-permissions','userspermissions','getadvancedsettings',0,'',2),(194,'users-permissions','userspermissions','updateadvancedsettings',0,'',2),(195,'users-permissions','userspermissions','getproviders',0,'',2),(196,'users-permissions','userspermissions','updateproviders',0,'',2),(197,'application','kaynaklar','find',1,'',3),(198,'application','kaynaklar','findone',1,'',3),(199,'application','kaynaklar','count',1,'',3),(200,'application','kaynaklar','create',0,'',3),(201,'application','kaynaklar','update',0,'',3),(202,'application','kaynaklar','destroy',0,'',3),(203,'application','kullanicirolleri','find',0,'',3),(204,'application','kullanicirolleri','findone',0,'',3),(205,'application','kullanicirolleri','count',0,'',3),(206,'application','kullanicirolleri','create',0,'',3),(207,'application','kullanicirolleri','update',0,'',3),(208,'application','kullanicirolleri','destroy',0,'',3),(209,'application','menu','find',0,'',3),(210,'application','menu','findone',0,'',3),(211,'application','menu','count',0,'',3),(212,'application','menu','create',0,'',3),(213,'application','menu','update',0,'',3),(214,'application','menu','destroy',0,'',3),(215,'application','telegram','find',0,'',3),(216,'application','telegram','findone',0,'',3),(217,'application','telegram','count',0,'',3),(218,'application','telegram','create',0,'',3),(219,'application','telegram','update',0,'',3),(220,'application','telegram','destroy',0,'',3),(221,'application','test','find',0,'',3),(222,'application','test','findone',0,'',3),(223,'application','test','count',0,'',3),(224,'application','test','create',0,'',3),(225,'application','test','update',0,'',3),(226,'application','test','destroy',0,'',3),(227,'application','uyari','find',0,'',3),(228,'application','uyari','findone',0,'',3),(229,'application','uyari','count',0,'',3),(230,'application','uyari','create',0,'',3),(231,'application','uyari','update',0,'',3),(232,'application','uyari','destroy',0,'',3),(233,'content-manager','contentmanager','models',0,'',3),(234,'content-manager','contentmanager','find',0,'',3),(235,'content-manager','contentmanager','count',0,'',3),(236,'content-manager','contentmanager','findone',0,'',3),(237,'content-manager','contentmanager','create',0,'',3),(238,'content-manager','contentmanager','update',0,'',3),(239,'content-manager','contentmanager','updatesettings',0,'',3),(240,'content-manager','contentmanager','delete',0,'',3),(241,'content-manager','contentmanager','deleteall',0,'',3),(242,'content-type-builder','contenttypebuilder','getmodels',0,'',3),(243,'content-type-builder','contenttypebuilder','getmodel',0,'',3),(244,'content-type-builder','contenttypebuilder','getconnections',0,'',3),(245,'content-type-builder','contenttypebuilder','createmodel',0,'',3),(246,'content-type-builder','contenttypebuilder','updatemodel',0,'',3),(247,'content-type-builder','contenttypebuilder','deletemodel',0,'',3),(248,'content-type-builder','contenttypebuilder','autoreload',1,'',3),(249,'content-type-builder','contenttypebuilder','checktableexists',0,'',3),(250,'settings-manager','settingsmanager','menu',0,'',3),(251,'settings-manager','settingsmanager','environments',0,'',3),(252,'settings-manager','settingsmanager','languages',0,'',3),(253,'settings-manager','settingsmanager','databases',0,'',3),(254,'settings-manager','settingsmanager','database',0,'',3),(255,'settings-manager','settingsmanager','databasemodel',0,'',3),(256,'settings-manager','settingsmanager','get',0,'',3),(257,'settings-manager','settingsmanager','update',0,'',3),(258,'settings-manager','settingsmanager','createlanguage',0,'',3),(259,'settings-manager','settingsmanager','deletelanguage',0,'',3),(260,'settings-manager','settingsmanager','createdatabase',0,'',3),(261,'settings-manager','settingsmanager','updatedatabase',0,'',3),(262,'settings-manager','settingsmanager','deletedatabase',0,'',3),(263,'settings-manager','settingsmanager','autoreload',1,'',3),(264,'users-permissions','auth','callback',1,'',3),(265,'users-permissions','auth','changepassword',1,'',3),(266,'users-permissions','auth','connect',1,'',3),(267,'users-permissions','auth','forgotpassword',1,'',3),(268,'users-permissions','auth','register',1,'',3),(269,'users-permissions','auth','emailconfirmation',1,'',3),(270,'users-permissions','user','find',0,'',3),(271,'users-permissions','user','me',1,'',3),(272,'users-permissions','user','findone',0,'',3),(273,'users-permissions','user','create',0,'',3),(274,'users-permissions','user','update',0,'',3),(275,'users-permissions','user','destroy',0,'',3),(276,'users-permissions','user','destroyall',0,'',3),(277,'users-permissions','userspermissions','createrole',0,'',3),(278,'users-permissions','userspermissions','deleteprovider',0,'',3),(279,'users-permissions','userspermissions','deleterole',0,'',3),(280,'users-permissions','userspermissions','getpermissions',0,'',3),(281,'users-permissions','userspermissions','getpolicies',0,'',3),(282,'users-permissions','userspermissions','getrole',0,'',3),(283,'users-permissions','userspermissions','getroles',0,'',3),(284,'users-permissions','userspermissions','getroutes',0,'',3),(285,'users-permissions','userspermissions','index',0,'',3),(286,'users-permissions','userspermissions','init',1,'',3),(287,'users-permissions','userspermissions','searchusers',0,'',3),(288,'users-permissions','userspermissions','updaterole',0,'',3),(289,'users-permissions','userspermissions','getemailtemplate',0,'',3),(290,'users-permissions','userspermissions','updateemailtemplate',0,'',3),(291,'users-permissions','userspermissions','getadvancedsettings',0,'',3),(292,'users-permissions','userspermissions','updateadvancedsettings',0,'',3),(293,'users-permissions','userspermissions','getproviders',0,'',3),(294,'users-permissions','userspermissions','updateproviders',0,'',3);
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
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_ROLE` (`name`,`description`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
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
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_USER` (`username`,`provider`,`resetPasswordToken`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` VALUES (1,'admin','ataerms@gmail.com','local','$2a$10$X/8y.VEaABwU.zPJKUa9XeDJyjvW1AB0.Tsx17beiO5UgZjMFdZpi',NULL,1,NULL,1);
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
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_UYARIS` (`user_name`,`user_id`,`reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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

-- Dump completed on 2019-09-29 14:29:48
