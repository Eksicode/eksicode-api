-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: Nov 04, 2019 at 06:47 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eksicode`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post` longtext CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user`, `title`, `likes`, `created_at`, `updated_at`, `post`) VALUES
(4, 'mkltkn', 'Blog Test 1', 222, '2019-11-03 16:16:04', '2019-11-03 16:16:04', 'Blog Test 1'),
(5, 'Atakan', 'Blog Test 2', 4564564, '2019-11-03 16:16:20', '2019-11-03 16:16:20', 'Blog Test 2'),
(6, 'Dgk', 'Blog Test 3', 34534534, '2019-11-03 16:16:35', '2019-11-03 16:16:35', 'Blog Test 3');

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'db_model_kaynaklars', '{\"doc_name\":{\"default\":\"\",\"type\":\"string\",\"required\":true,\"unique\":true},\"doc_creator\":{\"default\":\"\",\"type\":\"integer\"},\"approved\":{\"default\":false,\"type\":\"boolean\"},\"approving_user\":{\"default\":\"\",\"type\":\"integer\"},\"tags\":{\"default\":\"\",\"type\":\"string\"},\"comment\":{\"default\":\"\",\"type\":\"text\"},\"doc_creator_tg\":{\"default\":\"\",\"type\":\"integer\"},\"doc_link\":{\"default\":\"\",\"unique\":true,\"type\":\"string\",\"required\":true},\"lat_edit\":{\"default\":\"\",\"type\":\"date\"},\"doc_tg_ch\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(2, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(3, 'db_model_tests', '{\"test\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(4, 'db_model_telegrams', '{\"name\":{\"default\":\"\",\"type\":\"string\"},\"logo\":{\"default\":\"\",\"type\":\"string\"},\"icon\":{\"default\":\"\",\"type\":\"string\"},\"members\":{\"default\":\"\",\"type\":\"integer\"},\"link\":{\"default\":\"\",\"type\":\"string\"},\"channelID\":{\"default\":\"\",\"type\":\"string\"},\"listOrder\":{\"default\":\"\",\"type\":\"integer\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(5, 'db_model_kullanicirolleris', '{\"role_name\":{\"default\":\"\",\"type\":\"string\"},\"role_rights\":{\"default\":\"\",\"type\":\"integer\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(6, 'db_model_menus', '{\"menu_name\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(7, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}}', 'object', NULL, NULL),
(8, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(9, 'db_model_uyaris', '{\"user_name\":{\"default\":\"\",\"type\":\"string\"},\"user_id\":{\"default\":\"\",\"type\":\"string\"},\"reason\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(10, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(11, 'plugin_content-manager_schema', '{\"generalSettings\":{\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10},\"models\":{\"plugins\":{\"users-permissions\":{\"permission\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_permission\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"permission\",\"description\":\"\"},\"globalName\":\"UsersPermissionsPermission\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"Permission\",\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"relations\":{\"role\":{\"dominant\":true,\"nature\":\"manyToOne\",\"model\":\"role\",\"via\":\"permissions\",\"alias\":\"role\",\"plugin\":\"users-permissions\",\"label\":\"Role\",\"autoPopulate\":true,\"type\":\"model\",\"displayedAttribute\":\"name\",\"description\":\"\"}},\"editDisplay\":{\"availableFields\":{\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"},\"controller\":{\"label\":\"Controller\",\"type\":\"string\",\"description\":\"\",\"name\":\"controller\",\"editable\":true,\"placeholder\":\"\"},\"action\":{\"label\":\"Action\",\"type\":\"string\",\"description\":\"\",\"name\":\"action\",\"editable\":true,\"placeholder\":\"\"},\"enabled\":{\"label\":\"Enabled\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"enabled\",\"editable\":true,\"placeholder\":\"\"},\"policy\":{\"label\":\"Policy\",\"type\":\"string\",\"description\":\"\",\"name\":\"policy\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"type\",\"controller\",\"action\",\"enabled\",\"policy\"],\"relations\":[\"role\"]},\"labelPlural\":\"Permissions\",\"fields\":{\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},\"controller\":{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},\"action\":{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},\"enabled\":{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true},\"policy\":{\"label\":\"Policy\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"policy\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsPermission\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"connection\":\"default\",\"defaultSort\":\"id\"},\"role\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_role\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"role\",\"description\":\"\"},\"globalName\":\"UsersPermissionsRole\",\"associations\":[{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"},{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"Role\",\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}},\"relations\":{\"permissions\":{\"dominant\":true,\"nature\":\"oneToMany\",\"via\":\"role\",\"alias\":\"permissions\",\"plugin\":\"users-permissions\",\"label\":\"Permissions\",\"autoPopulate\":true,\"type\":\"collection\",\"displayedAttribute\":\"type\",\"description\":\"\",\"collection\":\"permission\"},\"users\":{\"dominant\":true,\"nature\":\"oneToMany\",\"via\":\"role\",\"alias\":\"users\",\"plugin\":\"users-permissions\",\"label\":\"Users\",\"autoPopulate\":true,\"type\":\"collection\",\"displayedAttribute\":\"username\",\"description\":\"\",\"collection\":\"user\"}},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"string\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"},\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\",\"type\"],\"relations\":[\"permissions\",\"users\"]},\"labelPlural\":\"Roles\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsRole\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"connection\":\"default\",\"defaultSort\":\"id\"},\"user\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_user\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"user\",\"description\":\"\"},\"globalName\":\"UsersPermissionsUser\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"User\",\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"relations\":{\"role\":{\"dominant\":true,\"nature\":\"manyToOne\",\"model\":\"role\",\"via\":\"users\",\"alias\":\"role\",\"plugin\":\"users-permissions\",\"label\":\"Role\",\"autoPopulate\":true,\"type\":\"model\",\"displayedAttribute\":\"name\",\"description\":\"\"}},\"editDisplay\":{\"availableFields\":{\"username\":{\"label\":\"Username\",\"type\":\"string\",\"description\":\"\",\"name\":\"username\",\"editable\":true,\"placeholder\":\"\"},\"email\":{\"label\":\"Email\",\"type\":\"email\",\"description\":\"\",\"name\":\"email\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"password\":{\"label\":\"Password\",\"type\":\"password\",\"description\":\"\",\"name\":\"password\",\"editable\":true,\"placeholder\":\"\"},\"confirmed\":{\"label\":\"Confirmed\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"confirmed\",\"editable\":true,\"placeholder\":\"\"},\"blocked\":{\"label\":\"Blocked\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"blocked\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"confirmed\",\"blocked\"],\"relations\":[\"role\"]},\"labelPlural\":\"Users\",\"fields\":{\"username\":{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},\"email\":{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"password\":{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},\"confirmed\":{\"label\":\"Confirmed\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"confirmed\",\"sortable\":true,\"searchable\":true},\"blocked\":{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsUser\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"connection\":\"default\",\"defaultSort\":\"id\"}}},\"kaynaklar\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Doc_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Doc_creator\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"doc_creator\",\"sortable\":true,\"searchable\":true},{\"label\":\"Approved\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"approved\",\"sortable\":true,\"searchable\":true},{\"label\":\"Approving_user\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"approving_user\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"kaynaklars\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"kaynaklar\",\"description\":\"\"},\"globalName\":\"Kaynaklar\",\"associations\":[],\"label\":\"Kaynaklar\",\"attributes\":{\"approving_user\":{\"default\":\"\",\"type\":\"integer\"},\"doc_link\":{\"default\":\"\",\"unique\":true,\"type\":\"string\",\"required\":true},\"doc_creator\":{\"default\":\"\",\"type\":\"integer\"},\"lat_edit\":{\"default\":\"\",\"type\":\"date\"},\"doc_tg_ch\":{\"default\":\"\",\"type\":\"string\"},\"doc_creator_tg\":{\"default\":\"\",\"type\":\"integer\"},\"doc_name\":{\"default\":\"\",\"type\":\"string\",\"required\":true,\"unique\":true},\"approved\":{\"default\":false,\"type\":\"boolean\"},\"tags\":{\"default\":\"\",\"type\":\"string\"},\"comment\":{\"default\":\"\",\"type\":\"text\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"approving_user\":{\"label\":\"Approving_user\",\"type\":\"integer\",\"description\":\"\",\"name\":\"approving_user\",\"editable\":true,\"placeholder\":\"\"},\"doc_link\":{\"label\":\"Doc_link\",\"type\":\"string\",\"description\":\"\",\"name\":\"doc_link\",\"editable\":true,\"placeholder\":\"\"},\"doc_creator\":{\"label\":\"Doc_creator\",\"type\":\"integer\",\"description\":\"\",\"name\":\"doc_creator\",\"editable\":true,\"placeholder\":\"\"},\"lat_edit\":{\"label\":\"Lat_edit\",\"type\":\"date\",\"description\":\"\",\"name\":\"lat_edit\",\"editable\":true,\"placeholder\":\"\"},\"doc_tg_ch\":{\"label\":\"Doc_tg_ch\",\"type\":\"string\",\"description\":\"\",\"name\":\"doc_tg_ch\",\"editable\":true,\"placeholder\":\"\"},\"doc_creator_tg\":{\"label\":\"Doc_creator_tg\",\"type\":\"integer\",\"description\":\"\",\"name\":\"doc_creator_tg\",\"editable\":true,\"placeholder\":\"\"},\"doc_name\":{\"label\":\"Doc_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"doc_name\",\"editable\":true,\"placeholder\":\"\"},\"approved\":{\"label\":\"Approved\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"approved\",\"editable\":true,\"placeholder\":\"\"},\"tags\":{\"label\":\"Tags\",\"type\":\"string\",\"description\":\"\",\"name\":\"tags\",\"editable\":true,\"placeholder\":\"\"},\"comment\":{\"label\":\"Comment\",\"type\":\"text\",\"description\":\"\",\"name\":\"comment\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"doc_name\",\"doc_creator\",\"approved\",\"approving_user\",\"tags\",\"comment\",\"doc_creator_tg\",\"doc_link\",\"lat_edit\",\"doc_tg_ch\"],\"relations\":[]},\"labelPlural\":\"Kaynaklars\",\"fields\":{\"approving_user\":{\"label\":\"Approving_user\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"approving_user\",\"sortable\":true,\"searchable\":true},\"doc_link\":{\"label\":\"Doc_link\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_link\",\"sortable\":true,\"searchable\":true},\"doc_creator\":{\"label\":\"Doc_creator\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"doc_creator\",\"sortable\":true,\"searchable\":true},\"lat_edit\":{\"label\":\"Lat_edit\",\"description\":\"\",\"type\":\"date\",\"disabled\":false,\"name\":\"lat_edit\",\"sortable\":true,\"searchable\":true},\"doc_tg_ch\":{\"label\":\"Doc_tg_ch\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_tg_ch\",\"sortable\":true,\"searchable\":true},\"doc_creator_tg\":{\"label\":\"Doc_creator_tg\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"doc_creator_tg\",\"sortable\":true,\"searchable\":true},\"doc_name\":{\"label\":\"Doc_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"doc_name\",\"sortable\":true,\"searchable\":true},\"approved\":{\"label\":\"Approved\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"approved\",\"sortable\":true,\"searchable\":true},\"tags\":{\"label\":\"Tags\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"tags\",\"sortable\":true,\"searchable\":true},\"comment\":{\"label\":\"Comment\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"comment\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Kaynaklar\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"kullanicirolleri\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Role_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"role_name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Role_rights\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"role_rights\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"kullanicirolleris\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"kullanicirolleri\",\"description\":\"\"},\"globalName\":\"Kullanicirolleri\",\"associations\":[],\"label\":\"Kullanicirolleri\",\"attributes\":{\"role_name\":{\"default\":\"\",\"type\":\"string\"},\"role_rights\":{\"default\":\"\",\"type\":\"integer\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"role_name\":{\"label\":\"Role_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"role_name\",\"editable\":true,\"placeholder\":\"\"},\"role_rights\":{\"label\":\"Role_rights\",\"type\":\"integer\",\"description\":\"\",\"name\":\"role_rights\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"role_name\",\"role_rights\"],\"relations\":[]},\"labelPlural\":\"Kullanicirolleris\",\"fields\":{\"role_name\":{\"label\":\"Role_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"role_name\",\"sortable\":true,\"searchable\":true},\"role_rights\":{\"label\":\"Role_rights\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"role_rights\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Kullanicirolleri\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"menu\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Menu_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"menu_name\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"menus\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"menu\",\"description\":\"\"},\"globalName\":\"Menu\",\"associations\":[],\"label\":\"Menu\",\"attributes\":{\"menu_name\":{\"default\":\"\",\"type\":\"string\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"menu_name\":{\"label\":\"Menu_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"menu_name\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"menu_name\"],\"relations\":[]},\"labelPlural\":\"Menus\",\"fields\":{\"menu_name\":{\"label\":\"Menu_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"menu_name\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Menu\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"telegram\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Logo\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"logo\",\"sortable\":true,\"searchable\":true},{\"label\":\"Icon\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"icon\",\"sortable\":true,\"searchable\":true},{\"label\":\"Members\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"members\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"telegrams\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"telegram\",\"description\":\"\"},\"globalName\":\"Telegram\",\"associations\":[],\"label\":\"Telegram\",\"attributes\":{\"name\":{\"default\":\"\",\"type\":\"string\"},\"logo\":{\"default\":\"\",\"type\":\"string\"},\"icon\":{\"default\":\"\",\"type\":\"string\"},\"members\":{\"default\":\"\",\"type\":\"integer\"},\"link\":{\"default\":\"\",\"type\":\"string\"},\"channelID\":{\"default\":\"\",\"type\":\"string\"},\"listOrder\":{\"default\":\"\",\"type\":\"integer\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"logo\":{\"label\":\"Logo\",\"type\":\"string\",\"description\":\"\",\"name\":\"logo\",\"editable\":true,\"placeholder\":\"\"},\"icon\":{\"label\":\"Icon\",\"type\":\"string\",\"description\":\"\",\"name\":\"icon\",\"editable\":true,\"placeholder\":\"\"},\"members\":{\"label\":\"Members\",\"type\":\"integer\",\"description\":\"\",\"name\":\"members\",\"editable\":true,\"placeholder\":\"\"},\"link\":{\"label\":\"Link\",\"type\":\"string\",\"description\":\"\",\"name\":\"link\",\"editable\":true,\"placeholder\":\"\"},\"channelID\":{\"label\":\"ChannelID\",\"type\":\"string\",\"description\":\"\",\"name\":\"channelID\",\"editable\":true,\"placeholder\":\"\"},\"listOrder\":{\"label\":\"ListOrder\",\"type\":\"integer\",\"description\":\"\",\"name\":\"listOrder\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"logo\",\"icon\",\"members\",\"link\",\"channelID\",\"listOrder\"],\"relations\":[]},\"labelPlural\":\"Telegrams\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"logo\":{\"label\":\"Logo\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"logo\",\"sortable\":true,\"searchable\":true},\"icon\":{\"label\":\"Icon\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"icon\",\"sortable\":true,\"searchable\":true},\"members\":{\"label\":\"Members\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"members\",\"sortable\":true,\"searchable\":true},\"link\":{\"label\":\"Link\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"link\",\"sortable\":true,\"searchable\":true},\"channelID\":{\"label\":\"ChannelID\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"channelID\",\"sortable\":true,\"searchable\":true},\"listOrder\":{\"label\":\"ListOrder\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"listOrder\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Telegram\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"test\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Test\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"test\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"tests\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"test\",\"description\":\"\"},\"globalName\":\"Test\",\"associations\":[],\"label\":\"Test\",\"attributes\":{\"test\":{\"default\":\"\",\"type\":\"string\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"test\":{\"label\":\"Test\",\"type\":\"string\",\"description\":\"\",\"name\":\"test\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"test\"],\"relations\":[]},\"labelPlural\":\"Tests\",\"fields\":{\"test\":{\"label\":\"Test\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"test\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Test\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"uyari\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"User_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_name\",\"sortable\":true,\"searchable\":true},{\"label\":\"User_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_id\",\"sortable\":true,\"searchable\":true},{\"label\":\"Reason\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"reason\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"uyaris\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"uyari\",\"description\":\"\"},\"globalName\":\"Uyari\",\"associations\":[],\"label\":\"Uyari\",\"attributes\":{\"user_name\":{\"default\":\"\",\"type\":\"string\"},\"user_id\":{\"default\":\"\",\"type\":\"string\"},\"reason\":{\"default\":\"\",\"type\":\"string\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"user_name\":{\"label\":\"User_name\",\"type\":\"string\",\"description\":\"\",\"name\":\"user_name\",\"editable\":true,\"placeholder\":\"\"},\"user_id\":{\"label\":\"User_id\",\"type\":\"string\",\"description\":\"\",\"name\":\"user_id\",\"editable\":true,\"placeholder\":\"\"},\"reason\":{\"label\":\"Reason\",\"type\":\"string\",\"description\":\"\",\"name\":\"reason\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"user_name\",\"user_id\",\"reason\"],\"relations\":[]},\"labelPlural\":\"Uyaris\",\"fields\":{\"user_name\":{\"label\":\"User_name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_name\",\"sortable\":true,\"searchable\":true},\"user_id\":{\"label\":\"User_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user_id\",\"sortable\":true,\"searchable\":true},\"reason\":{\"label\":\"Reason\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"reason\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Uyari\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"blog\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"User\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user\",\"sortable\":true,\"searchable\":true},{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"title\",\"sortable\":true,\"searchable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"post\",\"label\":\"Post\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"integer\",\"name\":\"likes\",\"label\":\"Likes\",\"searchable\":true,\"sortable\":true}],\"search\":true,\"collectionName\":\"blogs\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"blog\",\"description\":\"\"},\"globalName\":\"Blog\",\"associations\":[],\"label\":\"Blog\",\"attributes\":{\"user\":{\"default\":\"\",\"type\":\"string\"},\"title\":{\"default\":\"\",\"type\":\"string\"},\"likes\":{\"default\":\"\",\"type\":\"integer\"},\"post\":{\"default\":\"\",\"type\":\"text\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"user\":{\"label\":\"User\",\"type\":\"string\",\"description\":\"\",\"name\":\"user\",\"editable\":true,\"placeholder\":\"\"},\"title\":{\"label\":\"Title\",\"type\":\"string\",\"description\":\"\",\"name\":\"title\",\"editable\":true,\"placeholder\":\"\"},\"likes\":{\"label\":\"Likes\",\"type\":\"integer\",\"description\":\"\",\"name\":\"likes\",\"editable\":true,\"placeholder\":\"\"},\"post\":{\"label\":\"Post\",\"type\":\"text\",\"description\":\"\",\"name\":\"post\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"user\",\"title\",\"likes\",\"post\"],\"relations\":[]},\"labelPlural\":\"Blogs\",\"fields\":{\"user\":{\"label\":\"User\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"user\",\"sortable\":true,\"searchable\":true},\"title\":{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"title\",\"sortable\":true,\"searchable\":true},\"likes\":{\"label\":\"Likes\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"likes\",\"sortable\":true,\"searchable\":true},\"post\":{\"label\":\"Post\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"post\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Blog\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"}},\"layout\":{\"user\":{\"actions\":{\"create\":\"User.create\",\"update\":\"User.update\",\"destroy\":\"User.destroy\",\"deleteall\":\"User.destroyAll\"},\"attributes\":{\"username\":{\"className\":\"col-md-6\"},\"email\":{\"className\":\"col-md-6\"},\"resetPasswordToken\":{\"className\":\"d-none\"},\"role\":{\"className\":\"d-none\"}}},\"kaynaklar\":{\"attributes\":{}},\"kullanicirolleri\":{\"attributes\":{}},\"menu\":{\"attributes\":{}},\"telegram\":{\"attributes\":{}},\"test\":{\"attributes\":{}},\"uyari\":{\"attributes\":{}},\"blog\":{\"attributes\":{\"user\":{\"appearance\":\"\"},\"title\":{\"appearance\":\"\"},\"post\":{\"appearance\":\"\"},\"comments\":{\"appearance\":\"\"},\"likes\":{\"appearance\":\"\"}}}}}', 'object', '', ''),
(12, 'core_application', '{\"name\":\"Default Application\",\"description\":\"This API is going to be awesome!\"}', 'object', '', ''),
(13, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"comments\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-official\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"}}', 'object', '', ''),
(14, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"refresh\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"­Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square-o\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(15, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"http://localhost:1337/admin\",\"default_role\":\"authenticated\"}', 'object', '', ''),
(16, 'db_model_blogs', '{\"user\":{\"default\":\"\",\"type\":\"string\"},\"title\":{\"default\":\"\",\"type\":\"string\"},\"likes\":{\"default\":\"\",\"type\":\"integer\"},\"post\":{\"default\":\"\",\"type\":\"text\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(17, 'db_model_blog', '{\"post\":{\"default\":\"\",\"type\":\"string\"},\"title\":{\"default\":\"\",\"type\":\"string\"},\"comments\":{\"default\":\"\",\"type\":\"string\"},\"likes\":{\"default\":\"\",\"type\":\"integer\"},\"user\":{\"default\":\"\",\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kaynaklars`
--

CREATE TABLE `kaynaklars` (
  `id` int(11) NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kaynaklars`
--

INSERT INTO `kaynaklars` (`id`, `doc_name`, `doc_creator`, `approved`, `approving_user`, `tags`, `comment`, `doc_creator_tg`, `doc_link`, `lat_edit`, `doc_tg_ch`, `created_at`, `updated_at`) VALUES
(3, 'The Future of PHP - Better Programming - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/better-programming/does-php-have-a-future-6756f166ba8', '2019-10-02 08:45:43', '-1001211127698', '2019-10-02 05:45:43', '2019-10-02 05:45:43'),
(4, 'I created the exact same app in React and Vue. Here are the differences. [2019 Edition]', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/javascript-in-plain-english/i-created-the-exact-same-app-in-react-and-vue-here-are-the-differences-2019-edition-42ba2cab9e56', '2019-10-02 08:46:26', '-1001156686363', '2019-10-02 05:46:27', '2019-10-02 05:46:27'),
(5, 'Using React Hooks to sync your component state and the URL Query string', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/swlh/using-react-hooks-to-sync-your-component-state-with-the-url-query-string-81ccdfcb174f', '2019-10-02 08:48:00', '-1001156686363', '2019-10-02 05:48:00', '2019-10-02 05:48:00'),
(6, 'Vue.js kullanarak Kelime Oyunu Yapalım - YouTube', NULL, NULL, NULL, NULL, NULL, 102927070, 'https://www.youtube.com/watch?v=6lSrA9axxtQ', '2019-10-02 08:49:30', '-1001156686363', '2019-10-02 05:49:30', '2019-10-02 05:49:30'),
(7, 'React kullanarak Kelime Oyunu Yapalım - YouTube', NULL, NULL, NULL, NULL, NULL, 102927070, 'https://www.youtube.com/watch?v=4AddPiqdu50', '2019-10-02 08:49:46', '-1001156686363', '2019-10-02 05:49:46', '2019-10-02 05:49:46'),
(8, 'The Mystical Side of A.I. - OneZero', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://onezero.medium.com/could-a-robot-have-a-mystical-experience-10fa374c3f86', '2019-10-02 08:49:46', '-1001328565897', '2019-10-02 05:49:47', '2019-10-02 05:49:47'),
(9, 'Everything I Know About Style Guides, Design Systems, and Component Libraries - Lee Robinson', NULL, NULL, NULL, NULL, NULL, 564943941, 'https://leerob.io/blog/style-guides-component-libraries-design-systems/?utm_campaign=everything-i-know-about-style-guides--de', '2019-10-02 11:15:18', '-1001480553178', '2019-10-02 08:15:19', '2019-10-02 08:15:19'),
(10, '2019 UI and UX Design Trends - UX Planet', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/@moses_kim/2019-ui-and-ux-design-trends-92dfa8323225', '2019-10-02 23:40:56', '-1001480553178', '2019-10-02 20:40:56', '2019-10-02 20:40:56'),
(11, 'How to Choose the Right Programming Languages and Frameworks for Your Project', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/the-new-agilist/how-to-choose-the-right-programming-languages-and-frameworks-for-your-project-d04271717', '2019-10-02 23:41:43', '-1001364530781', '2019-10-02 20:41:44', '2019-10-02 20:41:44'),
(12, 'Richard Feynman’s Integral Trick - Cantor’s Paradise - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/cantors-paradise/richard-feynmans-integral-trick-e7afae85e25c', '2019-10-02 23:42:50', '-1001159983728', '2019-10-02 20:42:50', '2019-10-02 20:42:50'),
(13, 'How Operating Systems Work: 10 Concepts you Should Know as a Developer', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/cracking-the-data-science-interview/how-operating-systems-work-10-concepts-you-should-know-as-a-developer-8d63bb38331f', '2019-10-02 23:44:18', '-1001364530781', '2019-10-02 20:44:18', '2019-10-02 20:44:18'),
(14, 'JavaScript Execution in a Nutshell - The Startup - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/swlh/javascript-execution-in-a-nutshell-210f16e841ec', '2019-10-02 23:45:31', '-1001156686363', '2019-10-02 20:45:32', '2019-10-02 20:45:32'),
(15, 'Difference between &quot;int main()&quot; and &quot;int main(void)&quot; in C/C++? - GeeksforGeeks', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.geeksforgeeks.org/difference-int-main-int-mainvoid/', '2019-10-03 11:41:00', '-1001277875067', '2019-10-03 08:41:00', '2019-10-03 08:41:00'),
(16, 'int main() vs void main() vs int main(void) in C &amp; C++', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.codesdope.com/blog/article/int-main-vs-void-main-vs-int-mainvoid-in-c-c/', '2019-10-03 11:41:13', '-1001277875067', '2019-10-03 08:41:14', '2019-10-03 08:41:14'),
(17, 'Tutorials - Vlad Mihalcea', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://vladmihalcea.com/tutorials', '2019-10-03 12:30:15', '-1001389029475', '2019-10-03 09:30:16', '2019-10-03 09:30:16'),
(18, 'grokonez &raquo; Simple, feasible, practical, integrative Programming Tutorials', NULL, NULL, NULL, NULL, NULL, 355154675, 'http://grokonez.com/', '2019-10-03 12:30:37', '-1001389029475', '2019-10-03 09:30:38', '2019-10-03 09:30:38'),
(19, 'LogicBig\n ', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://www.logicbig.com', '2019-10-03 12:30:47', '-1001389029475', '2019-10-03 09:30:47', '2019-10-03 09:30:47'),
(20, 'JSR 310 - Java 8 Date/Time library performance (as well as Joda Time 2.3 and j.u.Calendar)  - Java Performance Tuning Guide', NULL, NULL, NULL, NULL, NULL, 355154675, 'http://java-performance.info/jsr-310-java-8-datetime-library-performance-well-joda-time-2-3-j-u-calendar/', '2019-10-03 12:30:58', '-1001389029475', '2019-10-03 09:30:59', '2019-10-03 09:30:59'),
(21, 'The Surprising Truth of Java Exceptions: What Is REALLY Going on Under the Hood? | OverOps Blog', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://blog.overops.com/the-surprising-truth-of-java-exceptions-what-is-really-going-on-under-the-hood/', '2019-10-03 12:31:09', '-1001389029475', '2019-10-03 09:31:10', '2019-10-03 09:31:10'),
(22, 'Java 9 To 13', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://slides.codefx.org/java-x/', '2019-10-03 12:31:25', '-1001389029475', '2019-10-03 09:31:26', '2019-10-03 09:31:26'),
(23, 'Single Variable Calculus | Mathematics | MIT OpenCourseWare', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://ocw.mit.edu/courses/mathematics/18-01sc-single-variable-calculus-fall-2010/', '2019-10-03 17:22:55', '-1001159983728', '2019-10-03 14:22:55', '2019-10-03 14:22:55'),
(24, 'http://tuncgeveci.com/wp-content/uploads/2015/07/calculusii.pdf', NULL, NULL, NULL, NULL, NULL, 457779893, 'http://tuncgeveci.com/wp-content/uploads/2015/07/calculusii.pdf', '2019-10-03 17:23:52', '-1001159983728', '2019-10-03 14:23:53', '2019-10-03 14:23:53'),
(25, 'An Interview with Gilbert Strang on Teaching Linear Algebra - YouTube', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://youtu.be/7UJ4CFRGd-U', '2019-10-03 17:26:17', '-1001159983728', '2019-10-03 14:26:17', '2019-10-03 14:26:17'),
(26, 'Coding Challenge #151: Ukulele Tuner with Machine Learning Pitch Detection Model - YouTube', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.youtube.com/watch?v=F1OkDTUkKFo&t=59s', '2019-10-03 18:47:01', '-1001156686363', '2019-10-03 15:47:01', '2019-10-03 15:47:01'),
(27, 'React State with Hooks: useReducer, useState, useContext - RWieruch', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.robinwieruch.de/react-state-usereducer-usestate-usecontext', '2019-10-03 19:13:35', '-1001156686363', '2019-10-03 16:13:36', '2019-10-03 16:13:36'),
(28, 'The Basics of Looping in JavaScript - The Non-Traditional Developer - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/the-non-traditional-developer/the-basics-of-looping-in-javascript-c75495805bbe', '2019-10-04 06:41:47', '-1001156686363', '2019-10-04 03:41:48', '2019-10-04 03:41:48'),
(29, 'Bitcoin Equals Freedom - Ross Ulbricht - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/@RossUlbricht/bitcoin-equals-freedom-6c33986b4852', '2019-10-04 06:42:35', '-1001254717814', '2019-10-04 03:42:36', '2019-10-04 03:42:36'),
(30, 'Preview your Vue or React components using JSDoc (playground included)', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/@wojciechkrysiak/preview-your-vue-or-react-components-in-different-states-by-using-jsdoc-playground-included-5033d71ebb0e', '2019-10-04 06:44:14', '-1001156686363', '2019-10-04 03:44:14', '2019-10-04 03:44:14'),
(31, '20+ Ücretsiz Python, Yapay Öğrenme ve Veri Bilimi Kitapları', NULL, NULL, NULL, NULL, NULL, 735005450, 'https://medium.com/deep-learning-turkiye/20-%C3%BCcretsiz-python-yapay-%C3%B6%C4%9Frenme-ve-veri-bilimi-kitaplar%C4%B1-53715315e8f0', '2019-10-04 11:54:45', '-1001328565897', '2019-10-04 08:54:46', '2019-10-04 08:54:46'),
(32, 'Sadece 6 Ayda Sıfırdan Nasıl Mobil Uygulama Yaptık ?', NULL, NULL, NULL, NULL, NULL, 735005450, 'https://medium.com/founded-blog/sadece-6-ayda-s%C4%B1f%C4%B1rdan-nas%C4%B1l-mobil-uygulama-yapt%C4%B1k-9c0ed04a0058', '2019-10-04 11:58:19', '-1001300143900', '2019-10-04 08:58:20', '2019-10-04 08:58:20'),
(33, 'https://raw.githubusercontent.com/MoienTajik/AspNetCore-Developer-Roadmap/master/aspnetcore-developer-roadmap.png', NULL, NULL, NULL, NULL, NULL, 735005450, 'https://raw.githubusercontent.com/MoienTajik/AspNetCore-Developer-Roadmap/master/aspnetcore-developer-roadmap.png', '2019-10-04 12:03:27', '-1001332956774', '2019-10-04 09:03:27', '2019-10-04 09:03:27'),
(34, 'Why Go and not Rust? | Loris Cro&#x27;s Personal Blog', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://kristoff.it/blog/why-go-and-not-rust/', '2019-10-04 13:25:28', '-1001430869010', '2019-10-04 10:25:28', '2019-10-04 10:25:28'),
(35, 'Broughlike tutorial - Stage 0', NULL, NULL, NULL, NULL, NULL, 837116710, 'https://nluqo.github.io/broughlike-tutorial/', '2019-10-04 18:29:21', '-1001156686363', '2019-10-04 15:29:21', '2019-10-04 15:29:21'),
(36, 'Trending Rust repositories on GitHub today · GitHub', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://github.com/trending/rust', '2019-10-05 00:01:44', '-1001262965800', '2019-10-04 21:01:44', '2019-10-04 21:01:44'),
(37, 'Rust and OpenGL from scratch - Setup', NULL, NULL, NULL, NULL, NULL, 457779893, 'http://nercury.github.io/rust/opengl/tutorial/2018/02/08/opengl-in-rust-from-scratch-00-setup.html', '2019-10-05 00:02:19', '-1001262965800', '2019-10-04 21:02:19', '2019-10-04 21:02:19'),
(38, 'GitHub - over1ove/rust-programlama-dili: Rust Programlama Dili Türkçe çevirisi - { Ekşicode } tarafından', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://github.com/over1ove/rust-programlama-dili', '2019-10-05 00:02:47', '-1001262965800', '2019-10-04 21:02:48', '2019-10-04 21:02:48'),
(39, 'Microsoft to start using Rust due to memory corruption bugs | Packt Hub', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://hub.packtpub.com/microsoft-mulls-replacing-c-and-c-code-with-rust-calling-it-a-a-modern-safer-system-programming-language-with-great-memory-safety-features/', '2019-10-05 00:03:19', '-1001262965800', '2019-10-04 21:03:19', '2019-10-04 21:03:19'),
(40, 'Build A Decentralized Chat Using JavaScript &amp; Rust (WebAssembly)', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/perlin-network/build-a-decentralized-chat-using-javascript-rust-webassembly-c775f8484b52', '2019-10-05 00:04:15', '-1001262965800', '2019-10-04 21:04:15', '2019-10-04 21:04:15'),
(41, 'Cropper.js', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://fengyuanchen.github.io/cropperjs/', '2019-10-05 14:13:21', '-1001156686363', '2019-10-05 11:13:22', '2019-10-05 11:13:22'),
(42, 'Installing The Latest PHP on Ubuntu - BrandonSavage.net', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.brandonsavage.net/installing-the-latest-php-on-ubuntu/?utm_campaign=meetedgar&utm_medium=social&utm_source=meetedgar.com', '2019-10-05 14:16:25', '-1001211127698', '2019-10-05 11:16:25', '2019-10-05 11:16:25'),
(44, 'All IT eBooks - Free IT eBooks Download', NULL, NULL, NULL, NULL, NULL, 211177407, 'http://www.allitebooks.org', '2019-10-05 19:48:13', '-1001364530781', '2019-10-05 16:48:13', '2019-10-05 16:48:13'),
(45, 'Relational vs non-relational databases | Pluralsight', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.pluralsight.com/blog/software-development/relational-non-relational-databases', '2019-10-05 20:57:19', '-1001353326048', '2019-10-05 17:57:19', '2019-10-05 17:57:19'),
(46, '7 Secret Patterns Vue Consultants Don’t Want You to Know - YouTube', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.youtube.com/watch?v=7YZ5DwlLSt8&t', '2019-10-06 16:04:07', '-1001156686363', '2019-10-06 13:04:08', '2019-10-06 13:04:08'),
(47, 'The C++ Programming Language, 4th Edition - pdf - Free IT eBooks Download', NULL, NULL, NULL, NULL, NULL, 457779893, 'http://www.allitebooks.org/the-c-programming-language-4th-edition/', '2019-10-06 20:32:48', '-1001210277059', '2019-10-06 17:32:48', '2019-10-06 17:32:48'),
(48, 'Python Programlama Dili &mdash; Python 3 için Türkçe Kılavuz', NULL, NULL, NULL, NULL, NULL, 509783272, 'https://belgeler.yazbel.com/python-istihza/', '2019-10-07 10:37:39', '-1001353326048', '2019-10-07 07:37:39', '2019-10-07 07:37:39'),
(49, '550+ Free Online Programming &amp; Computer Science Courses You Can Start This October', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.freecodecamp.org/news/550-free-online-programming-computer-science-courses-you-can-start-this-october/amp/#click=https://t.co/BkoaNC4sH3', '2019-10-07 18:13:20', '-1001364530781', '2019-10-07 15:13:21', '2019-10-07 15:13:21'),
(50, 'JavaScript Async/Await and Promises: Explained like you’re five years old.', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/javascript-in-plain-english/javascript-async-await-and-promises-explained-like-youre-five-years-old-61733751e9a5', '2019-10-08 20:47:58', '-1001156686363', '2019-10-08 17:47:59', '2019-10-08 17:47:59'),
(51, 'Abstraction &amp; Composition - JavaScript Scene - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/javascript-scene/abstraction-composition-cb2849d5bdd6', '2019-10-08 20:48:18', '-1001156686363', '2019-10-08 17:48:18', '2019-10-08 17:48:18'),
(52, 'React .focus() - The Startup - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/swlh/react-focus-c6ffd4aa42e5', '2019-10-08 20:48:35', '-1001156686363', '2019-10-08 17:48:35', '2019-10-08 17:48:35'),
(53, 'ASP.NET Core Performance Best Practices | Microsoft Docs', NULL, NULL, NULL, NULL, NULL, 102927070, 'https://docs.microsoft.com/en-us/aspnet/core/performance/performance-best-practices?view=aspnetcore-3.0', '2019-10-10 06:19:26', '-1001332956774', '2019-10-10 03:19:27', '2019-10-10 03:19:27'),
(54, 'What Is a Pure Function? - Better Programming - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/better-programming/what-is-a-pure-function-3b4af9352f6f', '2019-10-10 10:25:06', '-1001156686363', '2019-10-10 07:25:07', '2019-10-10 07:25:07'),
(55, '7 Basic Rules for Button Design - UX Planet', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://uxplanet.org/7-basic-rules-for-button-design-63dcdf5676b4', '2019-10-10 10:25:32', '-1001480553178', '2019-10-10 07:25:32', '2019-10-10 07:25:32'),
(56, 'The 10 Operating System Concepts Software Developers Need to Remember', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/cracking-the-data-science-interview/the-10-operating-system-concepts-software-developers-need-to-remember-480d0734d710', '2019-10-10 10:25:57', '-1001364530781', '2019-10-10 07:25:58', '2019-10-10 07:25:58'),
(61, 'Spring Boot ve Reactor ile Reactive Programlama - YouTube', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://www.youtube.com/watch?v=-a42G-86a74', '2019-10-11 05:30:31', '-1001389029475', '2019-10-11 02:30:32', '2019-10-11 02:30:32'),
(62, 'Mistakes I’ve made as a junior developer — and how you can avoid them.', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/free-code-camp/mistakes-i-have-made-as-a-junior-developer-85260bdb992f', '2019-10-13 10:02:23', '-1001364530781', '2019-10-13 07:02:23', '2019-10-13 07:02:23'),
(63, 'DevOps Nedir? - ACM', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.acmagile.com/devops-nedir/#targetText=DevOps%2C%20IT%20b%C3%B6l%C3%BCmleri%20i%C3%A7indeki%20farkl%C4%B1,aras%C4%B1%20etkili%20ileti%C5%9Fimi%20te%C5%9Fvik%20eder.', '2019-10-13 10:37:19', '-1001242968716', '2019-10-13 07:37:19', '2019-10-13 07:37:19'),
(65, 'Dot Net Perls: C# Pages', NULL, NULL, NULL, NULL, NULL, 457779893, 'http://www.dotnetperls.com', '2019-10-14 07:54:25', '-1001332956774', '2019-10-14 04:54:25', '2019-10-14 04:54:25'),
(66, 'OS.js', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.os-js.org/', '2019-10-17 08:05:14', '-1001156686363', '2019-10-17 05:05:14', '2019-10-17 05:05:14'),
(67, 'How to Set Up Python in Visual Studio Code on Windows 10 - YouTube', NULL, NULL, NULL, NULL, NULL, 88144031, 'https://www.youtube.com/watch?v=dNFgRUD2w68', '2019-10-18 07:32:08', '-1001353326048', '2019-10-18 04:32:08', '2019-10-18 04:32:08'),
(68, '10x Faster Parallel Python Without Python Multiprocessing', NULL, NULL, NULL, NULL, NULL, 664910825, 'https://towardsdatascience.com/10x-faster-parallel-python-without-python-multiprocessing-e5017c93cce1', '2019-10-18 09:34:04', '-1001353326048', '2019-10-18 06:34:05', '2019-10-18 06:34:05'),
(69, 'Listing SVELTE only opportunities all over the world - Svelte Jobs', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://sveltejobs.dev/', '2019-10-19 13:11:13', '-1001156686363', '2019-10-19 10:11:13', '2019-10-19 10:11:13'),
(70, 'Map, Filter and Reduce – Animated - JavaScript Teacher - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/@js_tut/map-filter-and-reduce-animated-7fe391a35a47?source=friends_link&sk=0100c8ecaf13fe61fe1adc94173703dc', '2019-10-19 13:19:01', '-1001156686363', '2019-10-19 10:19:01', '2019-10-19 10:19:01'),
(71, '\nC++ Programlama Dili Konuları & Examples\n        | \n        Caner ŞEREF\n', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.canerseref.com/2019/03/c-programla-dili-konulari-ve-examples.html?m=1', '2019-10-20 09:45:46', '-1001210277059', '2019-10-20 06:45:46', '2019-10-20 06:45:46'),
(72, 'Free for developers', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://free-for.dev/', '2019-10-20 23:32:20', '-1001364530781', '2019-10-20 20:32:20', '2019-10-20 20:32:20'),
(74, 'TIL — The power of JSON.stringify replacer parameter | pawelgrzybek.com', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://pawelgrzybek.com/til-the-power-of-json-stringify-replacer-parameter/', '2019-10-21 14:06:39', '-1001156686363', '2019-10-21 11:06:39', '2019-10-21 11:06:39'),
(76, 'TIL — The power of JSON.stringify replacer parameter | pawelgrzybek.com', NULL, NULL, NULL, NULL, NULL, 457779893, 'http://www.pawelgrzybek.com/til-the-power-of-json-stringify-replacer-parameter', '2019-10-21 14:06:39', '-1001156686363', '2019-10-21 11:06:40', '2019-10-21 11:06:40'),
(78, 'Managing SVG Interaction With The Pointer Events Property — Smashing Magazine', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.smashingmagazine.com/2018/05/svg-interaction-pointer-events-property/', '2019-10-21 17:47:08', '-1001156686363', '2019-10-21 14:47:09', '2019-10-21 14:47:09'),
(79, 'Queue | Set 1 (Introduction and Array Implementation) - GeeksforGeeks', NULL, NULL, NULL, NULL, NULL, 845989995, 'https://www.geeksforgeeks.org/queue-set-1introduction-and-array-implementation/', '2019-10-21 18:45:03', '-1001332956774', '2019-10-21 15:45:04', '2019-10-21 15:45:04'),
(80, 'GeeksforGeeks | A computer science portal for geeks', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.geeksforgeeks.org/', '2019-10-21 18:45:06', '-1001332956774', '2019-10-21 15:45:06', '2019-10-21 15:45:06'),
(81, 'Understanding the CAP Theorem - DZone Database', NULL, NULL, NULL, NULL, NULL, 820014534, 'https://dzone.com/articles/understanding-the-cap-theorem', '2019-10-21 19:13:48', '-1001332956774', '2019-10-21 16:13:48', '2019-10-21 16:13:48'),
(82, 'Microservice Architecture and Design Patterns for Microservices', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/@madhukaudantha/microservice-architecture-and-design-patterns-for-microservices-e0e5013fd58a', '2019-10-22 07:21:53', '-1001364530781', '2019-10-22 04:21:53', '2019-10-22 04:21:53'),
(83, 'Animated Transitions in Mobile Apps - UX Planet', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://uxplanet.org/animated-transitions-in-mobile-apps-412b8e8478e7', '2019-10-22 07:22:57', '-1001300143900', '2019-10-22 04:22:57', '2019-10-22 04:22:57'),
(84, 'Creating Usability with Motion: The UX in Motion Manifesto', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/ux-in-motion/creating-usability-with-motion-the-ux-in-motion-manifesto-a87a4584ddc', '2019-10-22 07:23:49', '-1001480553178', '2019-10-22 04:23:50', '2019-10-22 04:23:50'),
(85, 'Announcing WebAssembly.sh - Wasmer - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/wasmer/webassembly-sh-408b010c14db', '2019-10-22 11:01:34', '-1001156686363', '2019-10-22 08:01:34', '2019-10-22 08:01:34'),
(86, 'Let’s make your Docker Image better than 90% of existing ones', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/@chamilad/lets-make-your-docker-image-better-than-90-of-existing-ones-8b1e5de950d', '2019-10-22 12:51:10', '-1001242968716', '2019-10-22 09:51:10', '2019-10-22 09:51:10'),
(87, 'Optical Effects in User Interfaces: An Illustrated Guide', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.muz.li/optical-effects-9fca82b4cd9a', '2019-10-23 09:05:03', '-1001480553178', '2019-10-23 06:05:03', '2019-10-23 06:05:03'),
(88, '2019 UI/UX Design Trends You Should Know - Akveo Engineering - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/akveo-engineering/2019-ui-ux-design-trends-you-should-know-268b6bdbc0e3', '2019-10-23 09:05:42', '-1001480553178', '2019-10-23 06:05:42', '2019-10-23 06:05:42'),
(89, 'Software Roles and Titles - JavaScript Scene - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/javascript-scene/software-roles-and-titles-e3f0b69c410c', '2019-10-23 09:07:01', '-1001364530781', '2019-10-23 06:07:01', '2019-10-23 06:07:01'),
(90, 'Complete Guide to Responsive Images! - Elad Shechter - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/@elad/a-complete-guide-for-responsive-images-b13db359c6c7', '2019-10-23 10:02:28', '-1001480553178', '2019-10-23 07:02:29', '2019-10-23 07:02:29'),
(91, 'Smarter custom properties with Houdini’s new API &nbsp;|&nbsp; web.dev', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://web.dev/css-props-and-vals/', '2019-10-23 10:40:37', '-1001480553178', '2019-10-23 07:40:37', '2019-10-23 07:40:37'),
(92, 'Spring Transactional pitfalls | Codete blog', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://codete.com/blog/5-common-spring-transactional-pitfalls/', '2019-10-23 18:23:07', '-1001389029475', '2019-10-23 15:23:07', '2019-10-23 15:23:07'),
(93, 'The Svelte Handbook', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.freecodecamp.org/news/the-svelte-handbook/amp/#click=https://t.co/tXZVGdJeF0', '2019-10-23 19:16:17', '-1001156686363', '2019-10-23 16:16:18', '2019-10-23 16:16:18'),
(94, '\n    What I Like About Writing Styles with Svelte | CSS-Tricks  ', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://css-tricks.com/what-i-like-about-writing-styles-with-svelte/', '2019-10-23 19:17:04', '-1001156686363', '2019-10-23 16:17:05', '2019-10-23 16:17:05'),
(95, 'Svelte Easy Crop - Made with Svelte', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://madewithsvelte.com/svelte-easy-crop', '2019-10-23 19:17:40', '-1001156686363', '2019-10-23 16:17:41', '2019-10-23 16:17:41'),
(96, 'JPA: 8 common pitfalls [Spring &amp; JPA pitfalls series] - Codete blog', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://codete.com/blog/jpa-8-common-pitfalls/', '2019-10-24 06:41:27', '-1001389029475', '2019-10-24 03:41:28', '2019-10-24 03:41:28'),
(97, 'Spring Boot Transactions: Understanding Transaction Propagation - DZone Java', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://dzone.com/articles/spring-boot-transactions-tutorial-understanding-tr', '2019-10-24 07:35:35', '-1001389029475', '2019-10-24 04:35:36', '2019-10-24 04:35:36'),
(98, 'How to Quickly Access the API Documentation of Your Favorite Languages', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.freecodecamp.org/news/quickly-access-api-documentation-of-your-favorite-languages/amp/#click=https://t.co/Xofc6U4N7Y', '2019-10-24 11:17:16', '-1001364530781', '2019-10-24 08:17:16', '2019-10-24 08:17:16'),
(99, 'Cross-Origin Resource Sharing (CORS) - HTTP | MDN', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS', '2019-10-24 11:37:05', '-1001156686363', '2019-10-24 08:37:06', '2019-10-24 08:37:06'),
(100, 'Semantic HTML Tutorial | HTML &amp; CSS Is Hard', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://internetingishard.com/html-and-css/semantic-html/', '2019-10-24 15:12:49', '-1001156686363', '2019-10-24 12:12:50', '2019-10-24 12:12:50'),
(101, '\nGoogle AI Blog: Quantum Supremacy Using a Programmable Superconducting Processor\n', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://ai.googleblog.com/2019/10/quantum-supremacy-using-programmable.html?m=1', '2019-10-24 15:26:35', '-1001364530781', '2019-10-24 12:26:35', '2019-10-24 12:26:35'),
(102, 'Asynchronous Versus Parallel Programming - Writings of Urda', NULL, NULL, NULL, NULL, NULL, 550918855, 'https://urda.com/blog/2010/10/04/asynchronous-versus-parallel-programming', '2019-10-25 13:45:21', '-1001248972136', '2019-10-25 10:45:22', '2019-10-25 10:45:22'),
(103, 'You&#x27;re (probably still) using HttpClient wrong...', NULL, NULL, NULL, NULL, NULL, 88144031, 'https://josefottosson.se/you-are-probably-still-using-httpclient-wrong-and-it-is-destabilizing-your-software/', '2019-10-25 14:56:46', '-1001332956774', '2019-10-25 11:56:47', '2019-10-25 11:56:47'),
(104, 'You&#39;re using HttpClient wrong and it is destabilizing your software | ASP.NET Monsters', NULL, NULL, NULL, NULL, NULL, 88144031, 'https://aspnetmonsters.com/2016/08/2016-08-27-httpclientwrong/', '2019-10-25 14:59:27', '-1001332956774', '2019-10-25 11:59:27', '2019-10-25 11:59:27'),
(105, 'Ramsey Nasser\n     — قلب \n  ', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://nas.sr/%D9%82%D9%84%D8%A8/', '2019-10-25 18:00:03', '-1001364530781', '2019-10-25 15:00:04', '2019-10-25 15:00:04'),
(106, 'The problems of shared mutable state and how to avoid them', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://2ality.com/2019/10/shared-mutable-state.html', '2019-10-26 07:42:11', '-1001156686363', '2019-10-26 04:42:12', '2019-10-26 04:42:12'),
(107, 'SAP History | About SAP SE', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.sap.com/corporate/en/company/history.html?source=social-global-sap-fbpage-holidays_features-sapstory_branding-unspecified-spr-2767732493-st3_community_of_experts&campaigncode=CRM-YA19-SSO-GBSM001&sfns=mo', '2019-10-26 07:56:56', '-1001288301125', '2019-10-26 04:56:57', '2019-10-26 04:56:57'),
(108, 'BEM — Block Element Modifier', NULL, NULL, NULL, NULL, NULL, 457779893, 'http://getbem.com/introduction/', '2019-10-27 08:53:45', '-1001156686363', '2019-10-27 05:53:45', '2019-10-27 05:53:45'),
(109, 'Master the JavaScript Interview: What is Functional Programming?', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/javascript-scene/master-the-javascript-interview-what-is-functional-programming-7f218c68b3a0', '2019-10-27 11:19:12', '-1001156686363', '2019-10-27 08:19:13', '2019-10-27 08:19:13'),
(110, 'Difference between static and dynamic programming languages - Stack Overflow', NULL, NULL, NULL, NULL, NULL, 550918855, 'https://stackoverflow.com/questions/20563433/difference-between-static-and-dynamic-programming-languages', '2019-10-27 15:40:00', '-1001156686363', '2019-10-27 12:40:01', '2019-10-27 12:40:01'),
(111, 'I Finally Understand Static vs. Dynamic Typing and You Will Too! - By ', NULL, NULL, NULL, NULL, NULL, 550918855, 'https://hackernoon.com/i-finally-understand-static-vs-dynamic-typing-and-you-will-too-ad0c2bd0acc7', '2019-10-27 15:41:00', '-1001156686363', '2019-10-27 12:41:01', '2019-10-27 12:41:01'),
(112, 'Static v. dynamic languages', NULL, NULL, NULL, NULL, NULL, 550918855, 'https://danluu.com/empirical-pl/', '2019-10-27 15:43:56', '-1001156686363', '2019-10-27 12:43:56', '2019-10-27 12:43:56'),
(113, 'GitHub - yoshuawuyts/rust-for-js-people: Know JS, want to try Rust, but not sure where to start? This is for you!', NULL, NULL, NULL, NULL, NULL, 211177407, 'https://github.com/yoshuawuyts/rust-for-js-people', '2019-10-28 04:31:40', '-1001262965800', '2019-10-28 01:31:40', '2019-10-28 01:31:40'),
(114, 'Svelte vs React: First impressions - JavaScript in Plain English - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/javascript-in-plain-english/svelte-vs-react-first-impression-1ce5d3ee6889', '2019-10-28 07:10:29', '-1001156686363', '2019-10-28 04:10:29', '2019-10-28 04:10:29'),
(118, 'How to Build a Tic Tac Toe Game with Svelte &mdash; SitePoint', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.sitepoint.com/svelte-tic-tac-toe/', '2019-10-28 08:42:04', '-1001156686363', '2019-10-28 05:42:04', '2019-10-28 05:42:04'),
(119, 'GitHub - hoanhan101/ultimate-go: Ultimate Go study guide, with heavily documented code and programs analysis all in 1 place →', NULL, NULL, NULL, NULL, NULL, 472349359, 'https://github.com/hoanhan101/ultimate-go', '2019-10-28 11:41:23', '-1001430869010', '2019-10-28 08:41:23', '2019-10-28 08:41:23'),
(120, 'A closer look at Ownership in Rust | Articles by thoughtram', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://blog.thoughtram.io/ownership-in-rust/', '2019-10-28 14:18:47', '-1001262965800', '2019-10-28 11:18:47', '2019-10-28 11:18:47'),
(121, 'EPISODES | Luke’s ENGLISH Podcast', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://teacherluke.co.uk/archive-of-episodes-1-149/', '2019-10-28 15:11:20', '-1001263722948', '2019-10-28 12:11:20', '2019-10-28 12:11:20'),
(122, 'Implementing the Singleton Pattern in C#', NULL, NULL, NULL, NULL, NULL, 550918855, 'https://csharpindepth.com/articles/singleton', '2019-10-28 17:08:14', '-1001332956774', '2019-10-28 14:08:15', '2019-10-28 14:08:15'),
(123, '\r\n	Burak Selim Şenyurt | GoLang - Concurrency (goroutine, channel)\r\n', NULL, NULL, NULL, NULL, NULL, 570037576, 'https://buraksenyurt.com/post/GoLang-Concurrency-goroutine-channel', '2019-10-28 17:58:02', '-1001430869010', '2019-10-28 14:58:03', '2019-10-28 14:58:03'),
(124, 'Go Dilinde Concurrency - Yakuter', NULL, NULL, NULL, NULL, NULL, 570037576, 'https://www.yakuter.com/go-dilinde-concurrency/', '2019-10-28 17:58:25', '-1001430869010', '2019-10-28 14:58:25', '2019-10-28 14:58:25'),
(125, 'What&#039;s new | Updates on my research and expository papers, discussion of open problems, and other maths-related topics.  By Terence Tao', NULL, NULL, NULL, NULL, NULL, 961264644, 'https://terrytao.wordpress.com/', '2019-10-28 18:13:52', '-1001159983728', '2019-10-28 15:13:53', '2019-10-28 15:13:53'),
(126, 'Project Tuva: Richard Feynman&#039;s Messenger Lecture Series - Microsoft Research', NULL, NULL, NULL, NULL, NULL, 961264644, 'https://www.microsoft.com/en-us/research/project/tuva-richard-feynman/', '2019-10-28 18:17:27', '-1001159983728', '2019-10-28 15:17:28', '2019-10-28 15:17:28'),
(127, 'Wolfram MathWorld: The Web\'s Most Extensive Mathematics Resource', NULL, NULL, NULL, NULL, NULL, 961264644, 'http://mathworld.wolfram.com/', '2019-10-28 18:18:14', '-1001159983728', '2019-10-28 15:18:15', '2019-10-28 15:18:15'),
(128, 'Consulting in mathematics, statistics, and data privacy', NULL, NULL, NULL, NULL, NULL, 961264644, 'https://www.johndcook.com/blog/', '2019-10-28 18:19:13', '-1001159983728', '2019-10-28 15:19:13', '2019-10-28 15:19:13'),
(129, 'XOR&#8217;s Hammer &#8211; Some things in mathematical logic that I find interesting', NULL, NULL, NULL, NULL, NULL, 961264644, 'http://xorshammer.com/', '2019-10-28 18:45:34', '-1001159983728', '2019-10-28 15:45:34', '2019-10-28 15:45:34'),
(130, 'Wildon&#039;s Weblog | My mathematical weblog', NULL, NULL, NULL, NULL, NULL, 961264644, 'https://wildonblog.wordpress.com/', '2019-10-28 18:45:56', '-1001159983728', '2019-10-28 15:45:56', '2019-10-28 15:45:56'),
(131, 'Tom Lovering&#039;s Blog | For Mathematical Musings', NULL, NULL, NULL, NULL, NULL, 961264644, 'http://tlovering.wordpress.com/', '2019-10-28 18:47:18', '-1001159983728', '2019-10-28 15:47:19', '2019-10-28 15:47:19'),
(132, 'Theorem of the week | Expositions of interesting mathematical results', NULL, NULL, NULL, NULL, NULL, 961264644, 'http://theoremoftheweek.wordpress.com/', '2019-10-28 18:47:49', '-1001159983728', '2019-10-28 15:47:50', '2019-10-28 15:47:50'),
(133, 'The n-Category Caf&#xE9;', NULL, NULL, NULL, NULL, NULL, 961264644, 'http://golem.ph.utexas.edu/category/', '2019-10-28 18:49:14', '-1001159983728', '2019-10-28 15:49:15', '2019-10-28 15:49:15'),
(134, 'Dockerfile Go HEALTHCHECKs &amp; K8s - Google Cloud Platform - Community - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/google-cloud/dockerfile-go-healthchecks-k8s-9a87d5c5b4cb', '2019-10-29 00:31:48', '-1001242968716', '2019-10-28 21:31:48', '2019-10-28 21:31:48'),
(135, 'The 2018 DevOps RoadMap - By Javin Paul', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://hackernoon.com/the-2018-devops-roadmap-31588d8670cb', '2019-10-29 13:08:05', '-1001242968716', '2019-10-29 10:08:06', '2019-10-29 10:08:06'),
(136, 'GitHub - kamranahmedse/developer-roadmap: Roadmap to becoming a web developer in 2019', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://github.com/kamranahmedse/developer-roadmap', '2019-10-29 13:08:27', '-1001242968716', '2019-10-29 10:08:27', '2019-10-29 10:08:27'),
(138, 'Docker Bölüm 1: Nedir, Nasıl Çalışır, Nerede Kullanılır?', NULL, NULL, NULL, NULL, NULL, 570037576, 'https://gokhansengun.com/docker-nedir-nasil-calisir-nerede-kullanilir/', '2019-10-29 15:25:29', '-1001242968716', '2019-10-29 12:25:30', '2019-10-29 12:25:30'),
(139, 'Comparing Objects in JavaScript - JavaScript in Plain English - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/javascript-in-plain-english/comparing-objects-in-javascript-ce2dc1f3de7f', '2019-10-29 15:46:52', '-1001156686363', '2019-10-29 12:46:53', '2019-10-29 12:46:53'),
(140, 'Why Composition is Harder with Classes - JavaScript Scene - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/javascript-scene/why-composition-is-harder-with-classes-c3e627dcd0aa', '2019-10-29 17:38:47', '-1001156686363', '2019-10-29 14:38:47', '2019-10-29 14:38:47'),
(141, 'Find, Fix, and Avoid Memory Leaks in C# .NET: 8 Best Practices - Michael&#039;s Coding Spot', NULL, NULL, NULL, NULL, NULL, 550918855, 'https://michaelscodingspot.com/find-fix-and-avoid-memory-leaks-in-c-net-8-best-practices/', '2019-10-29 19:39:21', '-1001332956774', '2019-10-29 16:39:22', '2019-10-29 16:39:22'),
(142, 'Asynchronous Destructors', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://boats.gitlab.io/blog/post/poll-drop/', '2019-10-30 09:44:22', '-1001262965800', '2019-10-30 06:44:23', '2019-10-30 06:44:23'),
(143, 'why async fn in traits are hard', NULL, NULL, NULL, NULL, NULL, 457779893, 'http://smallcultfollowing.com/babysteps/blog/2019/10/26/async-fn-in-traits-are-hard/', '2019-10-30 09:44:35', '-1001262965800', '2019-10-30 06:44:35', '2019-10-30 06:44:35'),
(144, 'Practice DevOps with custom Pipes reusing CI/CD logic - Bitbucket', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://bitbucket.org/blog/practice-devops-with-custom-pipes-reusing-ci-cd-logic', '2019-10-31 09:20:21', '-1001242968716', '2019-10-31 06:20:22', '2019-10-31 06:20:22'),
(145, 'Building an iOS App in Rust, Part 1: Getting Started with Rust - Digital product development agency | Big Nerd Ranch', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.bignerdranch.com/blog/building-an-ios-app-in-rust-part-1-getting-started-with-rust/', '2019-10-31 10:06:01', '-1001262965800', '2019-10-31 07:06:01', '2019-10-31 07:06:01'),
(146, 'Introduction - Rust and WebAssembly', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://rustwasm.github.io/book/', '2019-10-31 10:13:49', '-1001262965800', '2019-10-31 07:13:49', '2019-10-31 07:13:49'),
(147, 'Why Rust? - Parity Technologies - Medium', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://medium.com/paritytech/why-rust-846fd3320d3f', '2019-10-31 10:24:01', '-1001262965800', '2019-10-31 07:24:02', '2019-10-31 07:24:02'),
(148, 'Writing an OS in Rust', NULL, NULL, NULL, NULL, NULL, 472349359, 'https://os.phil-opp.com/', '2019-10-31 10:33:07', '-1001262965800', '2019-10-31 07:33:08', '2019-10-31 07:33:08'),
(149, 'How to Package Rust Applications Into Minimal Docker Containers &middot; alexbrand&#39;s blog', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://alexbrand.dev/post/how-to-package-rust-applications-into-minimal-docker-containers/', '2019-10-31 12:52:50', '-1001262965800', '2019-10-31 09:52:50', '2019-10-31 09:52:50'),
(150, 'Dünya yuvarlak değil, haritalar yanıltıcı! - Uğur Arıcı - Medium', NULL, NULL, NULL, NULL, NULL, 570037576, 'https://medium.com/@ugurarici/dunya-yuvarlak-degil-haritalar-yaniltici-4df2028236a7', '2019-10-31 19:51:02', '-1001231746575', '2019-10-31 16:51:02', '2019-10-31 16:51:02'),
(151, 'The Power of Headless Chrome and PWA Automation Using Puppeteer - OpenSooq Engineering &amp; Data Science', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://engineering.opensooq.com/the-power-of-headless-chrome-and-pwa-automation-using-puppeteer/', '2019-11-01 12:00:55', '-1001156686363', '2019-11-01 09:00:55', '2019-11-01 09:00:55'),
(152, 'Linked List | Set 1 (Introduction) - GeeksforGeeks', NULL, NULL, NULL, NULL, NULL, 596001090, 'https://www.geeksforgeeks.org/linked-list-set-1-introduction/', '2019-11-01 18:55:56', '-1001277875067', '2019-11-01 15:55:56', '2019-11-01 15:55:56'),
(153, 'Linked List - Implementation in C/C++ - YouTube', NULL, NULL, NULL, NULL, NULL, 596001090, 'https://www.youtube.com/watch?v=vcQIFT79_50', '2019-11-01 18:56:04', '-1001277875067', '2019-11-01 15:56:05', '2019-11-01 15:56:05'),
(154, 'C is a high level language or middle level language or Low l', NULL, NULL, NULL, NULL, NULL, 596001090, 'https://www.youth4work.com/Talent/C-Language/Forum/118857-c-is-a-high-level-language-or-middle-level-language-or-low-level-language', '2019-11-01 18:56:14', '-1001277875067', '2019-11-01 15:56:14', '2019-11-01 15:56:14'),
(155, 'Why to choose Rust as your next programming language | Opensource.com', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://opensource.com/article/19/10/choose-rust-programming-language', '2019-11-01 19:39:59', '-1001262965800', '2019-11-01 16:39:59', '2019-11-01 16:39:59'),
(156, 'The Decentralized Web Explained', NULL, NULL, NULL, NULL, NULL, 664910825, 'https://breakermag.com/the-decentralized-web-explained-in-words-you-can-understand/', '2019-11-02 19:44:04', '-1001364530781', '2019-11-02 16:44:05', '2019-11-02 16:44:05'),
(157, 'Rust once and share it with Android, iOS and Flutter | Roberto Huertas', NULL, NULL, NULL, NULL, NULL, 355154675, 'https://robertohuertas.com/2019/10/27/rust-for-android-ios-flutter/', '2019-11-03 12:07:54', '-1001262965800', '2019-11-03 09:07:55', '2019-11-03 09:07:55'),
(158, 'TensorFlow.js', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.tensorflow.org/js', '2019-11-03 12:37:56', '-1001156686363', '2019-11-03 09:37:57', '2019-11-03 09:37:57'),
(159, 'ml5.js: Image Classification with MobileNet - YouTube', NULL, NULL, NULL, NULL, NULL, 211177407, 'https://www.youtube.com/watch?v=yNkAuWz5lnY', '2019-11-03 14:17:52', '-1001156686363', '2019-11-03 11:17:53', '2019-11-03 11:17:53'),
(160, 'Image Classification with client-side neural network using TensorFlow.js', NULL, NULL, NULL, NULL, NULL, 211177407, 'https://medium.com/agara-labs/image-classification-with-the-client-side-neural-network-using-tensorflow-js-8f94d3dc7c5c', '2019-11-03 14:18:09', '-1001156686363', '2019-11-03 11:18:10', '2019-11-03 11:18:10'),
(161, 'What&#x27;s Blockchain Actually Good for, Anyway? For Now, Not Much | WIRED', NULL, NULL, NULL, NULL, NULL, 457779893, 'https://www.wired.com/story/whats-blockchain-good-for-not-much/', '2019-11-04 08:14:10', '-1001333212756', '2019-11-04 05:14:11', '2019-11-04 05:14:11'),
(162, 'MacTutor History of Mathematics', NULL, NULL, NULL, NULL, NULL, 961264644, 'http://www-groups.dcs.st-and.ac.uk/~history/', '2019-11-04 11:08:46', '-1001159983728', '2019-11-04 08:08:47', '2019-11-04 08:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `kullanicirolleris`
--

CREATE TABLE `kullanicirolleris` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `role_rights` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `telegrams`
--

CREATE TABLE `telegrams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `channelID` varchar(255) DEFAULT NULL,
  `listOrder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telegrams`
--

INSERT INTO `telegrams` (`id`, `name`, `logo`, `icon`, `members`, `link`, `channelID`, `listOrder`, `created_at`, `updated_at`) VALUES
(1, 'Genel Konular', 'material-icons', 'chat', 1628, 'https://t.me/joinchat/G0kqtVFVFl2cWMnmJdUniw', '-1001364530781', 1, '2019-10-01 19:53:24', '2019-10-01 19:53:24'),
(2, 'JavaScript', 'devicon-javascript-plain colored', '', 1004, 'https://t.me/joinchat/G0kqtQ2bMHbsHgiIMKMpyg', '-1001156686363', 3, '2019-10-01 19:54:41', '2019-10-01 19:54:41'),
(3, 'Python', 'devicon-python-plain colored', NULL, 1560, 'https://t.me/joinchat/G0kqtQ-rkgcsqiPbm4q_6g', '-1001353326048', 2, '2019-10-01 20:33:26', '2019-10-01 20:33:26'),
(4, 'PHP', 'devicon-php-plain colored', NULL, 408, 'https://t.me/joinchat/G0kqtUgwV5JmLHug4VBwpA', '-1001211127698', 8, '2019-02-24 06:59:17', '2019-09-28 23:26:41'),
(5, 'C++', 'devicon-cplusplus-plain colored', NULL, 458, 'https://t.me/joinchat/G0kqtUgjXMM2jDEysQFTsA', '-1001210277059', 5, '2019-02-24 07:00:00', '2019-09-28 23:26:41'),
(6, 'C', 'devicon-c-plain colored', NULL, 339, 'https://t.me/joinchat/G0kqtQ0-rHk9g1v61dUWsA', '-1001277875067', 9, '2019-02-24 07:03:47', '2019-09-28 23:26:41'),
(7, 'C#', 'devicon-csharp-plain colored', NULL, 910, 'https://t.me/joinchat/G0kqtU9zTmZKbyCpNqkobA', '-1001332956774', 4, '2019-02-24 07:09:52', '2019-09-28 23:26:41'),
(8, 'Java', 'devicon-java-plain colored', NULL, 584, 'https://t.me/joinchat/G0kqtVLK6GPjF1BrtzJQlg', '-1001389029475', 6, '2019-02-24 07:10:32', '2019-09-28 23:26:41'),
(9, 'Ruby', 'devicon-ruby-plain colored', NULL, 106, 'https://t.me/joinchat/G0kqtRIEXv8_XPZVygG1ZQ', '-1001369784092', 12, '2019-02-24 07:11:53', '2019-09-28 23:26:41'),
(10, 'DevOps', 'devicon-debian-plain colored', NULL, 301, 'https://t.me/joinchat/G0kqtUoWMoxyIXb7u2vhlg', '-1001242968716', 7, '2019-02-24 07:14:55', '2019-09-28 23:26:41'),
(11, 'Linux', 'devicon-linux-plain colored', NULL, 598, 'https://t.me/joinchat/G0kqtVJHX4wfC6EQJme4YA', '-1001380409228', 13, '2019-02-24 07:15:37', '2019-09-28 23:26:41'),
(12, 'Windows', 'devicon-windows8-original colored', NULL, 196, 'https://t.me/joinchat/G0kqtU0BZ1dY6ee0K3EWoQ', '-1001291937623', 14, '2019-02-24 07:16:26', '2019-09-28 23:26:41'),
(13, 'Yapay Zeka & Veri Bilimi', 'material-icons', 'blur_on', 1113, 'https://t.me/joinchat/G0kqtU8wTomSdNKA2EO-0Q', '-1001328565897', 10, '2019-02-24 07:17:17', '2019-09-28 23:26:41'),
(14, 'Mobil Uygulama Geliştirme', 'material-icons', 'phone_iphone', 806, 'https://t.me/joinchat/G0kqtU1-nxyiTPmCiw1OLA', '-1001300143900', 11, '2019-02-24 07:18:10', '2019-09-28 23:26:41'),
(15, 'Oyun Geliştirme', 'material-icons', 'videogame_asset', 347, 'https://t.me/joinchat/G0kqtULsyqR4uGGfQMI8Qw', '-1001122814628', 19, '2019-02-24 07:19:04', '2019-09-28 23:26:41'),
(16, 'UX/UI - Tasarım', 'material-icons', 'format_shapes', 366, 'https://t.me/joinchat/G0kqtVg_ctqgJ96cmuvSwQ', '-1001480553178', 20, '2019-02-24 07:19:53', '2019-09-28 23:26:41'),
(17, 'Matematik & Algoritma', 'material-icons', 'functions', 666, 'https://t.me/joinchat/G0kqtUUj8nBxHk2OfnDTNg', '-1001159983728', 18, '2019-02-24 07:20:45', '2019-09-28 23:26:41'),
(18, 'İngilizce', 'material-icons', 'school', 1127, 'https://t.me/joinchat/G0kqtRGgWUViQ7fZzA93UQ', '-1001263722948', 17, '2019-02-24 07:21:27', '2019-09-28 23:26:41'),
(19, 'Kariyer', 'material-icons', 'work', 1021, 'https://t.me/joinchat/G0kqtUkgfGd9DJMfGUxGUw', '-1001226865767', 16, '2019-02-24 07:22:14', '2019-09-28 23:26:41'),
(20, 'Geyik', 'material-icons', 'child_care', 416, 'https://t.me/joinchat/G0kqtUpxzWhIo5XMy7dpfg', '-1001248972136', 34, '2019-02-24 07:23:10', '2019-09-28 23:26:41'),
(21, 'Go', 'devicon-go-plain colored', NULL, 145, 'https://t.me/joinchat/G0kqtROHTm_XNg8LPqXt7A', '-1001430869010', 15, '2019-04-25 16:52:43', '2019-09-28 23:26:41'),
(22, 'Embedded', 'material-icons', 'developer_board', 186, 'https://t.me/joinchat/G0kqtVS6t-OF8mneDV7JVw', '-1001421522915', 21, '2019-04-25 17:02:15', '2019-09-28 23:26:41'),
(23, 'Veritabanları', 'material-icons', 'storage', 355, 'https://t.me/joinchat/G0kqtRXoVqx-N084H8n4sQ', '-1001231746575', 23, '2019-05-01 09:11:35', '2019-09-28 23:26:41'),
(24, 'Flutter', 'eksicon eksicon-flutter', NULL, 167, 'https://t.me/joinchat/G0kqtVDZMY7dTEH5i1xIkw', '-1001356411278', 22, '2019-05-16 09:20:29', '2019-10-02 15:29:41'),
(25, 'Rust', 'eksicon eksicon-rust', NULL, 96, 'https://t.me/joinchat/G0kqtUtHVChTu78ZWPQBQg', '-1001262965800', 26, '2019-05-25 15:56:33', '2019-10-02 15:29:34'),
(26, 'Blockchain', 'eksicon eksicon-blockchain', NULL, 338, 'https://t.me/joinchat/G0kqtREDNXSeSlRJydEEog', '-1001333212756', 25, '2019-06-24 14:29:14', '2019-10-02 15:29:48'),
(27, 'Cryptocurrency', 'eksicon eksicon-bitcoin', NULL, 226, 'https://t.me/joinchat/G0kqtUrJeXZywM5Ig3xymg', '-1001254717814', 24, '2019-06-24 14:31:40', '2019-10-02 15:29:54'),
(28, 'Siber Güvenlik', 'eksicon eksicon-shield', NULL, 424, 'https://t.me/joinchat/G0kqtVcjnsa0qInYoeKZag', '-1001461952198', 26, '2019-07-04 08:51:19', '2019-10-02 15:30:05'),
(29, 'PLC', 'material-icons', 'developer_board', 104, 'https://t.me/joinchat/G0kqtUsepsBwFHuRBVK8Yw', '-1001260299968', 27, '2019-07-11 17:40:32', '2019-09-28 23:26:41'),
(30, 'Matlab', 'eksicon eksicon-matlab', NULL, 127, 'https://t.me/joinchat/G0kqtVf9nAZbgWqoeEaDHw', '-1001476238342', 28, '2019-07-11 17:42:18', '2019-10-02 15:30:11'),
(31, 'Kotlin', 'eksicon eksicon-kotlin', NULL, 61, 'https://t.me/joinchat/G0kqtUqe1iGf0tQH1peVAQ', '-1001251923489', 29, '2019-07-13 23:14:50', '2019-10-02 15:30:17'),
(32, 'R', 'eksicon eksicon-rlang', NULL, 75, 'https://t.me/joinchat/G0kqtU_S7-hX9MsWpf3E8g', '-1001339224040', 30, '2019-07-13 23:18:27', '2019-10-02 15:30:24'),
(33, 'Bilişim Hukuku', 'eksicon eksicon-shield', NULL, 136, 'https://t.me/joinchat/G0kqtUU-cWlRiH-lo41_ig', '-1001161720169', 31, '2019-07-13 23:25:10', '2019-10-02 15:30:37'),
(34, 'Eğitim', 'material-icons', 'school', 161, 'https://t.me/joinchat/G0kqtUQTPTflb_lE0XlmuQ', '-1001142111543', 32, '2019-07-25 04:38:47', '2019-09-28 23:26:41'),
(35, 'SAP', 'eksicon eksicon-sap', NULL, 73, 'https://t.me/joinchat/G0kqtUzJ6kUzNXzGF54YZA', '-1001288301125', 33, '2019-08-03 14:55:25', '2019-10-02 15:30:45'),
(36, 'macOS', 'devicon-apple-original colored', NULL, 57, 'https://t.me/joinchat/DJZPv0v54LkgrVy-a6DC0Q', '-1001274667193', 36, '2019-08-13 09:21:43', '2019-09-28 23:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `test` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`) VALUES
(1, 'application', 'kaynaklar', 'find', 1, '', 1),
(2, 'application', 'kaynaklar', 'findone', 1, '', 1),
(3, 'application', 'kaynaklar', 'count', 1, '', 1),
(4, 'application', 'kaynaklar', 'create', 1, '', 1),
(5, 'application', 'kaynaklar', 'update', 1, '', 1),
(6, 'application', 'kullanicirolleri', 'find', 1, '', 1),
(7, 'application', 'kullanicirolleri', 'count', 1, '', 1),
(8, 'application', 'kullanicirolleri', 'create', 1, '', 1),
(9, 'application', 'kullanicirolleri', 'update', 1, '', 1),
(10, 'application', 'kullanicirolleri', 'destroy', 1, '', 1),
(11, 'application', 'menu', 'find', 1, '', 1),
(12, 'application', 'menu', 'findone', 1, '', 1),
(13, 'application', 'menu', 'count', 1, '', 1),
(14, 'application', 'menu', 'create', 1, '', 1),
(15, 'application', 'menu', 'update', 1, '', 1),
(16, 'application', 'menu', 'destroy', 1, '', 1),
(17, 'application', 'telegram', 'find', 1, '', 1),
(18, 'application', 'kullanicirolleri', 'findone', 1, '', 1),
(19, 'application', 'kaynaklar', 'destroy', 1, '', 1),
(20, 'application', 'telegram', 'findone', 1, '', 1),
(21, 'application', 'telegram', 'count', 1, '', 1),
(22, 'application', 'telegram', 'create', 1, '', 1),
(23, 'application', 'telegram', 'update', 1, '', 1),
(24, 'application', 'telegram', 'destroy', 1, '', 1),
(25, 'application', 'test', 'find', 1, '', 1),
(26, 'application', 'test', 'findone', 1, '', 1),
(27, 'application', 'test', 'count', 1, '', 1),
(28, 'application', 'test', 'create', 1, '', 1),
(29, 'application', 'test', 'update', 1, '', 1),
(30, 'application', 'test', 'destroy', 1, '', 1),
(31, 'application', 'uyari', 'find', 1, '', 1),
(32, 'application', 'uyari', 'findone', 1, '', 1),
(33, 'application', 'uyari', 'count', 1, '', 1),
(34, 'application', 'uyari', 'create', 1, '', 1),
(35, 'application', 'uyari', 'update', 1, '', 1),
(36, 'application', 'uyari', 'destroy', 1, '', 1),
(37, 'content-manager', 'contentmanager', 'models', 1, '', 1),
(38, 'content-manager', 'contentmanager', 'find', 1, '', 1),
(39, 'content-manager', 'contentmanager', 'count', 1, '', 1),
(40, 'content-manager', 'contentmanager', 'findone', 1, '', 1),
(41, 'content-manager', 'contentmanager', 'create', 1, '', 1),
(42, 'content-manager', 'contentmanager', 'update', 1, '', 1),
(43, 'content-manager', 'contentmanager', 'updatesettings', 1, '', 1),
(44, 'content-manager', 'contentmanager', 'delete', 1, '', 1),
(45, 'content-manager', 'contentmanager', 'deleteall', 1, '', 1),
(46, 'content-type-builder', 'contenttypebuilder', 'getmodels', 1, '', 1),
(47, 'content-type-builder', 'contenttypebuilder', 'getmodel', 1, '', 1),
(48, 'content-type-builder', 'contenttypebuilder', 'getconnections', 1, '', 1),
(49, 'content-type-builder', 'contenttypebuilder', 'createmodel', 1, '', 1),
(50, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 1, '', 1),
(51, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 1, '', 1),
(52, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 1),
(53, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 1, '', 1),
(54, 'settings-manager', 'settingsmanager', 'menu', 1, '', 1),
(55, 'settings-manager', 'settingsmanager', 'environments', 1, '', 1),
(56, 'settings-manager', 'settingsmanager', 'languages', 1, '', 1),
(57, 'settings-manager', 'settingsmanager', 'databases', 1, '', 1),
(58, 'settings-manager', 'settingsmanager', 'database', 1, '', 1),
(59, 'settings-manager', 'settingsmanager', 'databasemodel', 1, '', 1),
(60, 'settings-manager', 'settingsmanager', 'get', 1, '', 1),
(61, 'settings-manager', 'settingsmanager', 'update', 1, '', 1),
(62, 'settings-manager', 'settingsmanager', 'createlanguage', 1, '', 1),
(63, 'settings-manager', 'settingsmanager', 'deletelanguage', 1, '', 1),
(64, 'settings-manager', 'settingsmanager', 'createdatabase', 1, '', 1),
(65, 'settings-manager', 'settingsmanager', 'updatedatabase', 1, '', 1),
(66, 'settings-manager', 'settingsmanager', 'deletedatabase', 1, '', 1),
(67, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 1),
(68, 'users-permissions', 'auth', 'callback', 1, '', 1),
(69, 'users-permissions', 'auth', 'changepassword', 1, '', 1),
(70, 'users-permissions', 'auth', 'connect', 1, '', 1),
(71, 'users-permissions', 'auth', 'forgotpassword', 1, '', 1),
(72, 'users-permissions', 'auth', 'register', 1, '', 1),
(73, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 1),
(74, 'users-permissions', 'user', 'find', 1, '', 1),
(75, 'users-permissions', 'user', 'me', 1, '', 1),
(76, 'users-permissions', 'user', 'findone', 1, '', 1),
(77, 'users-permissions', 'user', 'create', 1, '', 1),
(78, 'users-permissions', 'user', 'update', 1, '', 1),
(79, 'users-permissions', 'user', 'destroy', 1, '', 1),
(80, 'users-permissions', 'user', 'destroyall', 1, '', 1),
(81, 'users-permissions', 'userspermissions', 'createrole', 1, '', 1),
(82, 'users-permissions', 'userspermissions', 'deleteprovider', 1, '', 1),
(83, 'users-permissions', 'userspermissions', 'deleterole', 1, '', 1),
(84, 'users-permissions', 'userspermissions', 'getpermissions', 1, '', 1),
(85, 'users-permissions', 'userspermissions', 'getpolicies', 1, '', 1),
(86, 'users-permissions', 'userspermissions', 'getrole', 1, '', 1),
(87, 'users-permissions', 'userspermissions', 'getroles', 1, '', 1),
(88, 'users-permissions', 'userspermissions', 'getroutes', 1, '', 1),
(89, 'users-permissions', 'userspermissions', 'index', 1, '', 1),
(90, 'users-permissions', 'userspermissions', 'init', 1, '', 1),
(91, 'users-permissions', 'userspermissions', 'searchusers', 1, '', 1),
(92, 'users-permissions', 'userspermissions', 'updaterole', 1, '', 1),
(93, 'users-permissions', 'userspermissions', 'getemailtemplate', 1, '', 1),
(94, 'users-permissions', 'userspermissions', 'updateemailtemplate', 1, '', 1),
(95, 'users-permissions', 'userspermissions', 'getadvancedsettings', 1, '', 1),
(96, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 1, '', 1),
(97, 'users-permissions', 'userspermissions', 'getproviders', 1, '', 1),
(98, 'users-permissions', 'userspermissions', 'updateproviders', 1, '', 1),
(99, 'application', 'kaynaklar', 'find', 0, '', 2),
(100, 'application', 'kaynaklar', 'findone', 0, '', 2),
(101, 'application', 'kaynaklar', 'count', 0, '', 2),
(102, 'application', 'kaynaklar', 'create', 1, '', 2),
(103, 'application', 'kaynaklar', 'update', 1, '', 2),
(104, 'application', 'kaynaklar', 'destroy', 0, '', 2),
(105, 'application', 'kullanicirolleri', 'find', 0, '', 2),
(106, 'application', 'kullanicirolleri', 'findone', 0, '', 2),
(107, 'application', 'kullanicirolleri', 'count', 0, '', 2),
(108, 'application', 'kullanicirolleri', 'create', 0, '', 2),
(109, 'application', 'kullanicirolleri', 'update', 0, '', 2),
(110, 'application', 'kullanicirolleri', 'destroy', 0, '', 2),
(111, 'application', 'menu', 'find', 0, '', 2),
(112, 'application', 'menu', 'findone', 0, '', 2),
(113, 'application', 'menu', 'count', 0, '', 2),
(114, 'application', 'menu', 'create', 0, '', 2),
(115, 'application', 'menu', 'update', 0, '', 2),
(116, 'application', 'menu', 'destroy', 0, '', 2),
(117, 'application', 'telegram', 'find', 0, '', 2),
(118, 'application', 'telegram', 'findone', 0, '', 2),
(119, 'application', 'telegram', 'count', 0, '', 2),
(120, 'application', 'telegram', 'create', 0, '', 2),
(121, 'application', 'telegram', 'update', 0, '', 2),
(122, 'application', 'telegram', 'destroy', 0, '', 2),
(123, 'application', 'test', 'find', 0, '', 2),
(124, 'application', 'test', 'findone', 0, '', 2),
(125, 'application', 'test', 'count', 0, '', 2),
(126, 'application', 'test', 'create', 0, '', 2),
(127, 'application', 'test', 'update', 0, '', 2),
(128, 'application', 'test', 'destroy', 0, '', 2),
(129, 'application', 'uyari', 'find', 0, '', 2),
(130, 'application', 'uyari', 'findone', 0, '', 2),
(131, 'application', 'uyari', 'count', 0, '', 2),
(132, 'application', 'uyari', 'create', 0, '', 2),
(133, 'application', 'uyari', 'update', 0, '', 2),
(134, 'application', 'uyari', 'destroy', 0, '', 2),
(135, 'content-manager', 'contentmanager', 'models', 0, '', 2),
(136, 'content-manager', 'contentmanager', 'find', 0, '', 2),
(137, 'content-manager', 'contentmanager', 'count', 0, '', 2),
(138, 'content-manager', 'contentmanager', 'findone', 0, '', 2),
(139, 'content-manager', 'contentmanager', 'create', 0, '', 2),
(140, 'content-manager', 'contentmanager', 'update', 0, '', 2),
(141, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 2),
(142, 'content-manager', 'contentmanager', 'delete', 0, '', 2),
(143, 'content-manager', 'contentmanager', 'deleteall', 0, '', 2),
(144, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 2),
(145, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 2),
(146, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 2),
(147, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 2),
(148, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 2),
(149, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 2),
(150, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 2),
(151, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 2),
(152, 'settings-manager', 'settingsmanager', 'menu', 0, '', 2),
(153, 'settings-manager', 'settingsmanager', 'environments', 0, '', 2),
(154, 'settings-manager', 'settingsmanager', 'languages', 0, '', 2),
(155, 'settings-manager', 'settingsmanager', 'databases', 0, '', 2),
(156, 'settings-manager', 'settingsmanager', 'database', 0, '', 2),
(157, 'settings-manager', 'settingsmanager', 'databasemodel', 0, '', 2),
(158, 'settings-manager', 'settingsmanager', 'get', 0, '', 2),
(159, 'settings-manager', 'settingsmanager', 'update', 0, '', 2),
(160, 'settings-manager', 'settingsmanager', 'createlanguage', 0, '', 2),
(161, 'settings-manager', 'settingsmanager', 'deletelanguage', 0, '', 2),
(162, 'settings-manager', 'settingsmanager', 'createdatabase', 0, '', 2),
(163, 'settings-manager', 'settingsmanager', 'updatedatabase', 0, '', 2),
(164, 'settings-manager', 'settingsmanager', 'deletedatabase', 0, '', 2),
(165, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 2),
(166, 'users-permissions', 'auth', 'callback', 0, '', 2),
(167, 'users-permissions', 'auth', 'changepassword', 0, '', 2),
(168, 'users-permissions', 'auth', 'connect', 1, '', 2),
(169, 'users-permissions', 'auth', 'forgotpassword', 0, '', 2),
(170, 'users-permissions', 'auth', 'register', 0, '', 2),
(171, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 2),
(172, 'users-permissions', 'user', 'find', 0, '', 2),
(173, 'users-permissions', 'user', 'me', 1, '', 2),
(174, 'users-permissions', 'user', 'findone', 0, '', 2),
(175, 'users-permissions', 'user', 'create', 0, '', 2),
(176, 'users-permissions', 'user', 'update', 0, '', 2),
(177, 'users-permissions', 'user', 'destroy', 0, '', 2),
(178, 'users-permissions', 'user', 'destroyall', 0, '', 2),
(179, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2),
(180, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 2),
(181, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2),
(182, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2),
(183, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2),
(184, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2),
(185, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2),
(186, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2),
(187, 'users-permissions', 'userspermissions', 'index', 0, '', 2),
(188, 'users-permissions', 'userspermissions', 'init', 1, '', 2),
(189, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2),
(190, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2),
(191, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2),
(192, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2),
(193, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2),
(194, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2),
(195, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2),
(196, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2),
(197, 'application', 'kaynaklar', 'find', 1, '', 3),
(198, 'application', 'kaynaklar', 'findone', 1, '', 3),
(199, 'application', 'kaynaklar', 'count', 1, '', 3),
(200, 'application', 'kaynaklar', 'create', 0, '', 3),
(201, 'application', 'kaynaklar', 'update', 0, '', 3),
(202, 'application', 'kaynaklar', 'destroy', 0, '', 3),
(203, 'application', 'kullanicirolleri', 'find', 0, '', 3),
(204, 'application', 'kullanicirolleri', 'findone', 0, '', 3),
(205, 'application', 'kullanicirolleri', 'count', 0, '', 3),
(206, 'application', 'kullanicirolleri', 'create', 0, '', 3),
(207, 'application', 'kullanicirolleri', 'update', 0, '', 3),
(208, 'application', 'kullanicirolleri', 'destroy', 0, '', 3),
(209, 'application', 'menu', 'find', 0, '', 3),
(210, 'application', 'menu', 'findone', 0, '', 3),
(211, 'application', 'menu', 'count', 0, '', 3),
(212, 'application', 'menu', 'create', 0, '', 3),
(213, 'application', 'menu', 'update', 0, '', 3),
(214, 'application', 'menu', 'destroy', 0, '', 3),
(215, 'application', 'telegram', 'find', 1, '', 3),
(216, 'application', 'telegram', 'findone', 1, '', 3),
(217, 'application', 'telegram', 'count', 1, '', 3),
(218, 'application', 'telegram', 'create', 0, '', 3),
(219, 'application', 'telegram', 'update', 0, '', 3),
(220, 'application', 'telegram', 'destroy', 0, '', 3),
(221, 'application', 'test', 'find', 0, '', 3),
(222, 'application', 'test', 'findone', 0, '', 3),
(223, 'application', 'test', 'count', 0, '', 3),
(224, 'application', 'test', 'create', 0, '', 3),
(225, 'application', 'test', 'update', 0, '', 3),
(226, 'application', 'test', 'destroy', 0, '', 3),
(227, 'application', 'uyari', 'find', 0, '', 3),
(228, 'application', 'uyari', 'findone', 0, '', 3),
(229, 'application', 'uyari', 'count', 0, '', 3),
(230, 'application', 'uyari', 'create', 0, '', 3),
(231, 'application', 'uyari', 'update', 0, '', 3),
(232, 'application', 'uyari', 'destroy', 0, '', 3),
(233, 'content-manager', 'contentmanager', 'models', 0, '', 3),
(234, 'content-manager', 'contentmanager', 'find', 0, '', 3),
(235, 'content-manager', 'contentmanager', 'count', 0, '', 3),
(236, 'content-manager', 'contentmanager', 'findone', 0, '', 3),
(237, 'content-manager', 'contentmanager', 'create', 0, '', 3),
(238, 'content-manager', 'contentmanager', 'update', 0, '', 3),
(239, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 3),
(240, 'content-manager', 'contentmanager', 'delete', 0, '', 3),
(241, 'content-manager', 'contentmanager', 'deleteall', 0, '', 3),
(242, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 3),
(243, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 3),
(244, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 3),
(245, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 3),
(246, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 3),
(247, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 3),
(248, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 3),
(249, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 3),
(250, 'settings-manager', 'settingsmanager', 'menu', 0, '', 3),
(251, 'settings-manager', 'settingsmanager', 'environments', 0, '', 3),
(252, 'settings-manager', 'settingsmanager', 'languages', 0, '', 3),
(253, 'settings-manager', 'settingsmanager', 'databases', 0, '', 3),
(254, 'settings-manager', 'settingsmanager', 'database', 0, '', 3),
(255, 'settings-manager', 'settingsmanager', 'databasemodel', 0, '', 3),
(256, 'settings-manager', 'settingsmanager', 'get', 0, '', 3),
(257, 'settings-manager', 'settingsmanager', 'update', 0, '', 3),
(258, 'settings-manager', 'settingsmanager', 'createlanguage', 0, '', 3),
(259, 'settings-manager', 'settingsmanager', 'deletelanguage', 0, '', 3),
(260, 'settings-manager', 'settingsmanager', 'createdatabase', 0, '', 3),
(261, 'settings-manager', 'settingsmanager', 'updatedatabase', 0, '', 3),
(262, 'settings-manager', 'settingsmanager', 'deletedatabase', 0, '', 3),
(263, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 3),
(264, 'users-permissions', 'auth', 'callback', 1, '', 3),
(265, 'users-permissions', 'auth', 'changepassword', 1, '', 3),
(266, 'users-permissions', 'auth', 'connect', 1, '', 3),
(267, 'users-permissions', 'auth', 'forgotpassword', 1, '', 3),
(268, 'users-permissions', 'auth', 'register', 1, '', 3),
(269, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 3),
(270, 'users-permissions', 'user', 'find', 0, '', 3),
(271, 'users-permissions', 'user', 'me', 1, '', 3),
(272, 'users-permissions', 'user', 'findone', 0, '', 3),
(273, 'users-permissions', 'user', 'create', 0, '', 3),
(274, 'users-permissions', 'user', 'update', 0, '', 3),
(275, 'users-permissions', 'user', 'destroy', 0, '', 3),
(276, 'users-permissions', 'user', 'destroyall', 0, '', 3),
(277, 'users-permissions', 'userspermissions', 'createrole', 0, '', 3),
(278, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 3),
(279, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 3),
(280, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 3),
(281, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 3),
(282, 'users-permissions', 'userspermissions', 'getrole', 0, '', 3),
(283, 'users-permissions', 'userspermissions', 'getroles', 0, '', 3),
(284, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 3),
(285, 'users-permissions', 'userspermissions', 'index', 0, '', 3),
(286, 'users-permissions', 'userspermissions', 'init', 1, '', 3),
(287, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 3),
(288, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 3),
(289, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 3),
(290, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 3),
(291, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 3),
(292, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 3),
(293, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 3),
(294, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 3),
(313, 'application', 'blog', 'find', 1, '', 1),
(314, 'application', 'blog', 'findone', 1, '', 1),
(315, 'application', 'blog', 'count', 1, '', 1),
(316, 'application', 'blog', 'create', 1, '', 1),
(317, 'application', 'blog', 'update', 1, '', 1),
(318, 'application', 'blog', 'destroy', 1, '', 1),
(319, 'application', 'blog', 'find', 0, '', 2),
(320, 'application', 'blog', 'findone', 0, '', 2),
(321, 'application', 'blog', 'count', 0, '', 2),
(322, 'application', 'blog', 'create', 0, '', 2),
(323, 'application', 'blog', 'update', 0, '', 2),
(324, 'application', 'blog', 'destroy', 0, '', 2),
(325, 'application', 'blog', 'find', 1, '', 3),
(326, 'application', 'blog', 'findone', 1, '', 3),
(327, 'application', 'blog', 'count', 1, '', 3),
(328, 'application', 'blog', 'create', 0, '', 3),
(329, 'application', 'blog', 'update', 0, '', 3),
(330, 'application', 'blog', 'destroy', 0, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`) VALUES
(1, 'Administrator', 'These users have all access in the project.', 'root'),
(2, 'Authenticated', 'Default role given to authenticated user.', 'authenticated'),
(3, 'Public', 'Default role given to unauthenticated user.', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_user`
--

INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmed`, `blocked`, `role`) VALUES
(1, 'admin', 'eksicode@yandex.com', 'local', '$2a$10$ifEriMAvqWNyY/jLxNv2b.zcOZQbg4wE0.r25gFsl.4byuY4GHlru', NULL, 1, NULL, 1),
(2, 'eksicodebot', 'mkltkn@yandex.com', 'local', '$2a$10$1V9Fw.U7CbXpwsowSVAlBeWzKqOlczyAcAyVoPmHLjpj0QiwkcGmi', NULL, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `uyaris`
--

CREATE TABLE `uyaris` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `blogs` ADD FULLTEXT KEY `SEARCH_BLOGS` (`title`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `core_store` ADD FULLTEXT KEY `SEARCH_CORE_STORE` (`key`,`value`,`type`,`environment`,`tag`);

--
-- Indexes for table `kaynaklars`
--
ALTER TABLE `kaynaklars`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `kaynaklars` ADD FULLTEXT KEY `SEARCH_KAYNAKLARS` (`doc_name`,`tags`,`comment`,`doc_link`,`doc_tg_ch`);

--
-- Indexes for table `kullanicirolleris`
--
ALTER TABLE `kullanicirolleris`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `kullanicirolleris` ADD FULLTEXT KEY `SEARCH_KULLANICIROLLERIS` (`role_name`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `menus` ADD FULLTEXT KEY `SEARCH_MENUS` (`menu_name`);

--
-- Indexes for table `telegrams`
--
ALTER TABLE `telegrams`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `telegrams` ADD FULLTEXT KEY `SEARCH_TELEGRAMS` (`name`,`logo`,`icon`,`link`,`channelID`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tests` ADD FULLTEXT KEY `SEARCH_TESTS` (`test`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_permission` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_PERMISSION` (`type`,`controller`,`action`,`policy`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_role` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_ROLE` (`name`,`description`,`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_user` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_USER` (`username`,`provider`,`resetPasswordToken`);

--
-- Indexes for table `uyaris`
--
ALTER TABLE `uyaris`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `uyaris` ADD FULLTEXT KEY `SEARCH_UYARIS` (`user_name`,`user_id`,`reason`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kaynaklars`
--
ALTER TABLE `kaynaklars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `kullanicirolleris`
--
ALTER TABLE `kullanicirolleris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telegrams`
--
ALTER TABLE `telegrams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uyaris`
--
ALTER TABLE `uyaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
