# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26)
# Database: e-com
# Generation Time: 2024-03-09 10:21:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  `remember_token` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;

INSERT INTO `admins` (`id`, `name`, `type`, `contact`, `email`, `email_verified_at`, `password`, `image`, `status`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'vishal aroraaa','admin','7508050111','vishal@gmail.com',NULL,'1234','80473.jpeg',1,NULL,NULL,'2020-09-04 18:19:55'),
	(2,'vishal','subadmin','98989898009','v@gmail.com',NULL,'$2y$10$cYtMpkvsixtUh6.vzvjQAea5Yo8QLoyG6oFda3MZczqWAGm3Yuncu','',1,NULL,NULL,NULL);

/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banners`;

CREATE TABLE `banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;

INSERT INTO `banners` (`id`, `image`, `link`, `title`, `alt`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'1.png-62902.png','www.google.com','black jacket','black jacket',1,NULL,'2020-10-26 17:54:43'),
	(2,'2.png','','blue t-shirt','blue t-shirt',1,NULL,'2020-10-26 17:54:46'),
	(3,'3.png','','full t-shirt','full t-shirt',1,NULL,'2020-10-26 17:54:48'),
	(4,'','','','',1,'2021-01-16 20:25:42','2021-01-16 20:25:42');

/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table brands
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`)
VALUES
	(6,'lee cooper',1,'2020-08-05 20:37:52','2021-04-30 21:28:21'),
	(7,'gap',1,'2020-08-06 13:37:28','2020-08-06 13:42:28'),
	(8,'tommy',1,'2020-08-06 14:19:52','2020-08-11 18:59:27'),
	(9,'fcuk',1,'2020-08-06 14:19:59','2021-04-30 21:28:25'),
	(10,'arrow',1,'2020-08-06 14:20:05','2020-08-06 14:20:05');

/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `product_id`, `size`, `quantity`, `created_at`, `updated_at`)
VALUES
	(4,'m8XohuJHnNLy6P1dVIrJSUTkwRL8SKaYZcO841e3',0,3,'large',1,'2021-03-14 16:54:28','2021-03-14 16:54:28'),
	(5,'m8XohuJHnNLy6P1dVIrJSUTkwRL8SKaYZcO841e3',0,2,'large',1,'2021-03-14 16:54:43','2021-03-14 16:54:43'),
	(6,'m8XohuJHnNLy6P1dVIrJSUTkwRL8SKaYZcO841e3',0,8,'small',2,'2021-03-14 16:55:01','2021-03-14 16:55:01'),
	(10,'xTvx3njiIZZnpESPZIOtyHtsUBeNqORWPOnCPTi1',32,7,'small',1,'2021-07-12 23:23:16','2021-07-12 23:23:30');

/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_discount` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `parent_id`, `section_id`, `category_name`, `category_image`, `category_discount`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`)
VALUES
	(1,0,1,'t-shirts','',5.00,'','t-shirts','','','',1,'2020-07-31 20:50:58','2020-08-30 19:03:04'),
	(2,1,1,'casual t-shirts','',5.00,'','casual','','','',1,'2020-07-31 22:28:29','2020-08-11 17:24:39'),
	(3,0,1,'jeans','',5.00,'','jean','','','',1,'2020-08-01 21:17:08','2020-08-11 17:24:17'),
	(5,0,2,'jeans','81778.jpeg',0.00,'','jean','','','',1,'2020-08-06 21:04:55','2020-10-26 17:58:45'),
	(6,0,3,'shoes','45902.jpg',5.00,'','shoes','','','',1,'2020-08-06 22:04:17','2020-08-06 22:04:17'),
	(7,6,3,'sports shoes','33813.jpeg',5.00,'','shoes','','','',1,'2020-08-07 08:53:02','2020-08-07 08:59:03'),
	(9,5,2,'slim jeans','',5.00,'','slim','','','',1,'2020-08-07 08:55:19','2020-08-07 08:59:00'),
	(10,0,3,'jeans','',5.00,'','kids jean','','','',1,'2020-08-07 08:56:58','2020-08-07 08:56:58'),
	(11,0,2,'t-shirts','',5.00,'','t-shirts','','','',1,'2020-08-07 09:01:27','2020-08-30 19:03:02'),
	(12,0,1,'rferref','',5.00,'','abc','','','',1,'2020-08-11 18:34:55','2020-08-11 18:34:55'),
	(14,0,1,'fvvervevev','',5.00,'','grvergvgrvg','','','',0,'2020-08-11 18:45:20','2020-09-07 15:46:19');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_code` int(5) NOT NULL,
  `country_code` char(2) NOT NULL,
  `country_name` varchar(80) NOT NULL,
  `status` tinyint(50) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `phone_code`, `country_code`, `country_name`, `status`)
VALUES
	(1,93,'AF','Afghanistan',1),
	(2,358,'AX','Aland Islands',1),
	(3,355,'AL','Albania',1),
	(4,213,'DZ','Algeria',1),
	(5,1684,'AS','American Samoa',1),
	(6,376,'AD','Andorra',1),
	(7,244,'AO','Angola',1),
	(8,1264,'AI','Anguilla',1),
	(9,672,'AQ','Antarctica',1),
	(10,1268,'AG','Antigua and Barbuda',1),
	(11,54,'AR','Argentina',1),
	(12,374,'AM','Armenia',1),
	(13,297,'AW','Aruba',1),
	(14,61,'AU','Australia',1),
	(15,43,'AT','Austria',1),
	(16,994,'AZ','Azerbaijan',1),
	(17,1242,'BS','Bahamas',1),
	(18,973,'BH','Bahrain',1),
	(19,880,'BD','Bangladesh',1),
	(20,1246,'BB','Barbados',1),
	(21,375,'BY','Belarus',1),
	(22,32,'BE','Belgium',1),
	(23,501,'BZ','Belize',1),
	(24,229,'BJ','Benin',1),
	(25,1441,'BM','Bermuda',1),
	(26,975,'BT','Bhutan',1),
	(27,591,'BO','Bolivia',1),
	(28,599,'BQ','Bonaire, Sint Eustatius and Saba',1),
	(29,387,'BA','Bosnia and Herzegovina',1),
	(30,267,'BW','Botswana',1),
	(31,55,'BV','Bouvet Island',1),
	(32,55,'BR','Brazil',1),
	(33,246,'IO','British Indian Ocean Territory',1),
	(34,673,'BN','Brunei Darussalam',1),
	(35,359,'BG','Bulgaria',1),
	(36,226,'BF','Burkina Faso',1),
	(37,257,'BI','Burundi',1),
	(38,855,'KH','Cambodia',1),
	(39,237,'CM','Cameroon',1),
	(40,1,'CA','Canada',1),
	(41,238,'CV','Cape Verde',1),
	(42,1345,'KY','Cayman Islands',1),
	(43,236,'CF','Central African Republic',1),
	(44,235,'TD','Chad',1),
	(45,56,'CL','Chile',1),
	(46,86,'CN','China',1),
	(47,61,'CX','Christmas Island',1),
	(48,672,'CC','Cocos (Keeling) Islands',1),
	(49,57,'CO','Colombia',1),
	(50,269,'KM','Comoros',1),
	(51,242,'CG','Congo',1),
	(52,242,'CD','Congo, Democratic Republic of the Congo',1),
	(53,682,'CK','Cook Islands',1),
	(54,506,'CR','Costa Rica',1),
	(55,225,'CI','Cote D\'Ivoire',1),
	(56,385,'HR','Croatia',1),
	(57,53,'CU','Cuba',1),
	(58,599,'CW','Curacao',1),
	(59,357,'CY','Cyprus',1),
	(60,420,'CZ','Czech Republic',1),
	(61,45,'DK','Denmark',1),
	(62,253,'DJ','Djibouti',1),
	(63,1767,'DM','Dominica',1),
	(64,1809,'DO','Dominican Republic',1),
	(65,593,'EC','Ecuador',1),
	(66,20,'EG','Egypt',1),
	(67,503,'SV','El Salvador',1),
	(68,240,'GQ','Equatorial Guinea',1),
	(69,291,'ER','Eritrea',1),
	(70,372,'EE','Estonia',1),
	(71,251,'ET','Ethiopia',1),
	(72,500,'FK','Falkland Islands (Malvinas)',1),
	(73,298,'FO','Faroe Islands',1),
	(74,679,'FJ','Fiji',1),
	(75,358,'FI','Finland',1),
	(76,33,'FR','France',1),
	(77,594,'GF','French Guiana',1),
	(78,689,'PF','French Polynesia',1),
	(79,262,'TF','French Southern Territories',1),
	(80,241,'GA','Gabon',1),
	(81,220,'GM','Gambia',1),
	(82,995,'GE','Georgia',1),
	(83,49,'DE','Germany',1),
	(84,233,'GH','Ghana',1),
	(85,350,'GI','Gibraltar',1),
	(86,30,'GR','Greece',1),
	(87,299,'GL','Greenland',1),
	(88,1473,'GD','Grenada',1),
	(89,590,'GP','Guadeloupe',1),
	(90,1671,'GU','Guam',1),
	(91,502,'GT','Guatemala',1),
	(92,44,'GG','Guernsey',1),
	(93,224,'GN','Guinea',1),
	(94,245,'GW','Guinea-Bissau',1),
	(95,592,'GY','Guyana',1),
	(96,509,'HT','Haiti',1),
	(97,0,'HM','Heard Island and Mcdonald Islands',1),
	(98,39,'VA','Holy See (Vatican City State)',1),
	(99,504,'HN','Honduras',1),
	(100,852,'HK','Hong Kong',1),
	(101,36,'HU','Hungary',1),
	(102,354,'IS','Iceland',1),
	(103,91,'IN','India',1),
	(104,62,'ID','Indonesia',1),
	(105,98,'IR','Iran, Islamic Republic of',1),
	(106,964,'IQ','Iraq',1),
	(107,353,'IE','Ireland',1),
	(108,44,'IM','Isle of Man',1),
	(109,972,'IL','Israel',1),
	(110,39,'IT','Italy',1),
	(111,1876,'JM','Jamaica',1),
	(112,81,'JP','Japan',1),
	(113,44,'JE','Jersey',1),
	(114,962,'JO','Jordan',1),
	(115,7,'KZ','Kazakhstan',1),
	(116,254,'KE','Kenya',1),
	(117,686,'KI','Kiribati',1),
	(118,850,'KP','Korea, Democratic People\'s Republic of',1),
	(119,82,'KR','Korea, Republic of',1),
	(120,381,'XK','Kosovo',1),
	(121,965,'KW','Kuwait',1),
	(122,996,'KG','Kyrgyzstan',1),
	(123,856,'LA','Lao People\'s Democratic Republic',1),
	(124,371,'LV','Latvia',1),
	(125,961,'LB','Lebanon',1),
	(126,266,'LS','Lesotho',1),
	(127,231,'LR','Liberia',1),
	(128,218,'LY','Libyan Arab Jamahiriya',1),
	(129,423,'LI','Liechtenstein',1),
	(130,370,'LT','Lithuania',1),
	(131,352,'LU','Luxembourg',1),
	(132,853,'MO','Macao',1),
	(133,389,'MK','Macedonia, the Former Yugoslav Republic of',1),
	(134,261,'MG','Madagascar',1),
	(135,265,'MW','Malawi',1),
	(136,60,'MY','Malaysia',1),
	(137,960,'MV','Maldives',1),
	(138,223,'ML','Mali',1),
	(139,356,'MT','Malta',1),
	(140,692,'MH','Marshall Islands',1),
	(141,596,'MQ','Martinique',1),
	(142,222,'MR','Mauritania',1),
	(143,230,'MU','Mauritius',1),
	(144,269,'YT','Mayotte',1),
	(145,52,'MX','Mexico',1),
	(146,691,'FM','Micronesia, Federated States of',1),
	(147,373,'MD','Moldova, Republic of',1),
	(148,377,'MC','Monaco',1),
	(149,976,'MN','Mongolia',1),
	(150,382,'ME','Montenegro',1),
	(151,1664,'MS','Montserrat',1),
	(152,212,'MA','Morocco',1),
	(153,258,'MZ','Mozambique',1),
	(154,95,'MM','Myanmar',1),
	(155,264,'NA','Namibia',1),
	(156,674,'NR','Nauru',1),
	(157,977,'NP','Nepal',1),
	(158,31,'NL','Netherlands',1),
	(159,599,'AN','Netherlands Antilles',1),
	(160,687,'NC','New Caledonia',1),
	(161,64,'NZ','New Zealand',1),
	(162,505,'NI','Nicaragua',1),
	(163,227,'NE','Niger',1),
	(164,234,'NG','Nigeria',1),
	(165,683,'NU','Niue',1),
	(166,672,'NF','Norfolk Island',1),
	(167,1670,'MP','Northern Mariana Islands',1),
	(168,47,'NO','Norway',1),
	(169,968,'OM','Oman',1),
	(170,92,'PK','Pakistan',1),
	(171,680,'PW','Palau',1),
	(172,970,'PS','Palestinian Territory, Occupied',1),
	(173,507,'PA','Panama',1),
	(174,675,'PG','Papua New Guinea',1),
	(175,595,'PY','Paraguay',1),
	(176,51,'PE','Peru',1),
	(177,63,'PH','Philippines',1),
	(178,64,'PN','Pitcairn',1),
	(179,48,'PL','Poland',1),
	(180,351,'PT','Portugal',1),
	(181,1787,'PR','Puerto Rico',1),
	(182,974,'QA','Qatar',1),
	(183,262,'RE','Reunion',1),
	(184,40,'RO','Romania',1),
	(185,70,'RU','Russian Federation',1),
	(186,250,'RW','Rwanda',1),
	(187,590,'BL','Saint Barthelemy',1),
	(188,290,'SH','Saint Helena',1),
	(189,1869,'KN','Saint Kitts and Nevis',1),
	(190,1758,'LC','Saint Lucia',1),
	(191,590,'MF','Saint Martin',1),
	(192,508,'PM','Saint Pierre and Miquelon',1),
	(193,1784,'VC','Saint Vincent and the Grenadines',1),
	(194,684,'WS','Samoa',1),
	(195,378,'SM','San Marino',1),
	(196,239,'ST','Sao Tome and Principe',1),
	(197,966,'SA','Saudi Arabia',1),
	(198,221,'SN','Senegal',1),
	(199,381,'RS','Serbia',1),
	(200,381,'CS','Serbia and Montenegro',1),
	(201,248,'SC','Seychelles',1),
	(202,232,'SL','Sierra Leone',1),
	(203,65,'SG','Singapore',1),
	(204,1,'SX','Sint Maarten',1),
	(205,421,'SK','Slovakia',1),
	(206,386,'SI','Slovenia',1),
	(207,677,'SB','Solomon Islands',1),
	(208,252,'SO','Somalia',1),
	(209,27,'ZA','South Africa',1),
	(210,500,'GS','South Georgia and the South Sandwich Islands',1),
	(211,211,'SS','South Sudan',1),
	(212,34,'ES','Spain',1),
	(213,94,'LK','Sri Lanka',1),
	(214,249,'SD','Sudan',1),
	(215,597,'SR','Suriname',1),
	(216,47,'SJ','Svalbard and Jan Mayen',1),
	(217,268,'SZ','Swaziland',1),
	(218,46,'SE','Sweden',1),
	(219,41,'CH','Switzerland',1),
	(220,963,'SY','Syrian Arab Republic',1),
	(221,886,'TW','Taiwan, Province of China',1),
	(222,992,'TJ','Tajikistan',1),
	(223,255,'TZ','Tanzania, United Republic of',1),
	(224,66,'TH','Thailand',1),
	(225,670,'TL','Timor-Leste',1),
	(226,228,'TG','Togo',1),
	(227,690,'TK','Tokelau',1),
	(228,676,'TO','Tonga',1),
	(229,1868,'TT','Trinidad and Tobago',1),
	(230,216,'TN','Tunisia',1),
	(231,90,'TR','Turkey',1),
	(232,7370,'TM','Turkmenistan',1),
	(233,1649,'TC','Turks and Caicos Islands',1),
	(234,688,'TV','Tuvalu',1),
	(235,256,'UG','Uganda',1),
	(236,380,'UA','Ukraine',1),
	(237,971,'AE','United Arab Emirates',1),
	(238,44,'GB','United Kingdom',1),
	(239,1,'US','United States',1),
	(240,1,'UM','United States Minor Outlying Islands',1),
	(241,598,'UY','Uruguay',1),
	(242,998,'UZ','Uzbekistan',1),
	(243,678,'VU','Vanuatu',1),
	(244,58,'VE','Venezuela',1),
	(245,84,'VN','Viet Nam',1),
	(246,1284,'VG','Virgin Islands, British',1),
	(247,1340,'VI','Virgin Islands, U.s.',1),
	(248,681,'WF','Wallis and Futuna',1),
	(249,212,'EH','Western Sahara',1),
	(250,967,'YE','Yemen',1),
	(251,260,'ZM','Zambia',1),
	(252,263,'ZW','Zimbabwe',1);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table coupons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `expiry_data` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;

INSERT INTO `coupons` (`id`, `coupon_option`, `coupon_code`, `categories`, `users`, `coupon_type`, `amount_type`, `amount`, `expiry_data`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'manual','test10','1','vishalarora1087@gmail.com','multiple times','percentage',10.00,'2021-01-28',1,NULL,'2021-01-19 20:23:55'),
	(2,'Automatic','73e588232d','1,2,5','soisaisha@gmail.com,vishalarora1087@gmail.com','multiple times','Fixed',20.00,'2021-01-29',1,'2021-01-17 20:45:17','2021-01-19 20:21:07'),
	(3,'Manual','Manual','1,9,11,7','soisaisha@gmail.com','multiple times','Fixed',100.00,'2021-05-11',1,'2021-01-17 20:46:34','2021-01-28 21:20:39'),
	(4,'Manual','hash22','1,5','','single times','Fixed',555.00,'2222-02-22',1,'2021-01-17 20:49:37','2021-01-19 20:24:18');

/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table delivery_addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `delivery_addresses`;

CREATE TABLE `delivery_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `delivery_addresses` WRITE;
/*!40000 ALTER TABLE `delivery_addresses` DISABLE KEYS */;

INSERT INTO `delivery_addresses` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `status`, `created_at`, `updated_at`)
VALUES
	(9,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123',1,'2021-03-16 22:05:37','2021-05-06 19:38:17'),
	(10,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123',1,'2021-03-17 17:46:20','2021-07-04 20:20:06');

/*!40000 ALTER TABLE `delivery_addresses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2019_08_19_000000_create_failed_jobs_table',1),
	(3,'2014_10_12_100000_create_password_resets_table',2),
	(4,'2020_07_23_174005_create_admin_table',3),
	(5,'2020_07_26_142025_create_sections_table',4),
	(6,'2020_07_26_143428_create_sections_table',5),
	(7,'2020_07_27_093035_create_categories_table',6),
	(8,'2020_07_31_212954_create_products_table',7),
	(9,'2020_08_03_145137_create_products_attributes_table',8),
	(10,'2020_08_04_170001_create_products_images_table',9),
	(11,'2020_08_05_161612_create_brands_table',10),
	(12,'2020_08_06_135616_add_column_to_products',11),
	(13,'2020_08_06_140201_add_column_to_products',12),
	(14,'2020_08_18_163455_create_banners_table',13),
	(15,'2020_12_27_215805_create_carts_table',14),
	(16,'2020_12_31_204643_add_columns_to_users',15),
	(17,'2021_01_15_182812_create_coupons_table',16),
	(18,'2021_03_16_115225_create_delivery_addresses_table',17),
	(19,'2021_03_17_201822_create_orders_table',18),
	(20,'2021_03_17_203312_create_orders_products_table',19),
	(21,'2021_03_21_183438_create_order_statuses_table',20),
	(22,'2021_03_29_214149_create_orders_logs_table',21),
	(23,'2021_05_02_213034_create_shipping_charges_table',22);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_statuses`;

CREATE TABLE `order_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `order_statuses` WRITE;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;

INSERT INTO `order_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'New',1,NULL,NULL),
	(2,'Pending',1,NULL,NULL),
	(3,'Hold',1,NULL,NULL),
	(4,'Cancelled',1,NULL,NULL),
	(5,'In process',1,NULL,NULL),
	(6,'Paid',1,NULL,NULL),
	(7,'Shipped',1,NULL,NULL),
	(8,'Delivered',1,NULL,NULL);

/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `coupon_amount` double(8,2) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `courier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `payment_gateway`, `grand_total`, `courier_name`, `tracking_number`, `created_at`, `updated_at`)
VALUES
	(8,32,'renu arora','105 h ram dass','amritsar','Punjab','Canada','143301','+917508050123','vishalarora1087@gmail.com',0.00,'hash22',555.00,'Shipped','Prepaid','paypal',1316.00,'fedax','4359692000065','2021-03-17 22:34:50','2021-03-30 19:12:32'),
	(9,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','143301','+917508050123','vishalarora1087@gmail.com',0.00,'hash22',NULL,'Shipped','COD','COD',1208.40,'fedax','yy556579908987','2021-03-17 22:40:08','2021-03-31 19:18:58'),
	(10,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','143301','+917508050123','vishalarora1087@gmail.com',0.00,'hash22',NULL,'New','COD','COD',0.00,NULL,NULL,'2021-03-17 23:08:38','2021-03-17 23:08:38'),
	(11,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','143301','+917508050123','vishalarora1087@gmail.com',0.00,'hash22',NULL,'Delivered','COD','COD',0.00,NULL,NULL,'2021-03-17 23:14:41','2021-03-30 20:20:11'),
	(12,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','143301','+917508050123','vishalarora1087@gmail.com',0.00,NULL,NULL,'New','COD','COD',1425.00,NULL,NULL,'2021-03-21 20:06:48','2021-03-21 20:06:48'),
	(13,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',0.00,NULL,NULL,'New','COD','COD',4275.00,NULL,NULL,'2021-05-06 21:10:58','2021-05-06 21:10:58'),
	(14,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','COD','COD',311.00,NULL,NULL,'2021-05-07 14:56:46','2021-05-07 14:56:46'),
	(15,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','COD','COD',1927.80,NULL,NULL,'2021-07-04 20:28:40','2021-07-04 20:28:40'),
	(16,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',311.00,NULL,NULL,'2021-07-04 21:56:30','2021-07-04 21:56:30'),
	(17,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',311.00,NULL,NULL,'2021-07-07 20:52:22','2021-07-07 20:52:22'),
	(18,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',311.00,NULL,NULL,'2021-07-07 20:52:51','2021-07-07 20:52:51'),
	(19,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',311.00,NULL,NULL,'2021-07-07 20:53:01','2021-07-07 20:53:01'),
	(20,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',311.00,NULL,NULL,'2021-07-07 20:54:24','2021-07-07 20:54:24'),
	(21,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',311.00,NULL,NULL,'2021-07-07 20:55:12','2021-07-07 20:55:12'),
	(22,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',311.00,NULL,NULL,'2021-07-07 20:56:49','2021-07-07 20:56:49'),
	(23,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',311.00,NULL,NULL,'2021-07-09 21:01:06','2021-07-09 21:01:06'),
	(24,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',905.60,NULL,NULL,'2021-07-09 21:57:25','2021-07-09 21:57:25'),
	(25,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',311.00,NULL,NULL,'2021-07-09 22:03:21','2021-07-09 22:03:21'),
	(26,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',1525.00,NULL,NULL,'2021-07-09 22:07:02','2021-07-09 22:07:02'),
	(27,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',1525.00,NULL,NULL,'2021-07-09 22:09:06','2021-07-09 22:09:06'),
	(28,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','Prepaid','paypal',1525.00,NULL,NULL,'2021-07-09 22:10:50','2021-07-09 22:10:50'),
	(29,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'New','Prepaid','paypal',2900.00,NULL,NULL,'2021-07-09 22:12:25','2021-07-09 22:12:25'),
	(30,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'New','Prepaid','paypal',1475.00,NULL,NULL,'2021-07-09 22:22:18','2021-07-09 22:22:18'),
	(31,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'New','Prepaid','paypal',1475.00,NULL,NULL,'2021-07-09 22:23:52','2021-07-09 22:23:52'),
	(32,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'New','Prepaid','paypal',261.00,NULL,NULL,'2021-07-10 20:28:33','2021-07-10 20:28:33'),
	(33,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'Cancelled','Prepaid','paypal',311.00,NULL,NULL,'2021-07-10 20:41:36','2021-07-10 20:49:16'),
	(34,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'New','Prepaid','payumoney',261.00,NULL,NULL,'2021-07-10 22:41:23','2021-07-10 22:41:23'),
	(35,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'New','Prepaid','payumoney',261.00,NULL,NULL,'2021-07-11 22:08:59','2021-07-11 22:08:59'),
	(36,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'New','Prepaid','payumoney',261.00,NULL,NULL,'2021-07-11 22:34:12','2021-07-11 22:34:12'),
	(37,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'Payment fail','Prepaid','payumoney',261.00,NULL,NULL,'2021-07-11 22:34:22','2021-07-11 22:35:49'),
	(38,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'Payment fail','Prepaid','payumoney',311.00,NULL,NULL,'2021-07-11 22:36:59','2021-07-11 22:37:48'),
	(39,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'Payment fail','Prepaid','payumoney',261.00,NULL,NULL,'2021-07-11 22:37:59','2021-07-11 22:38:16'),
	(40,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'Pending','Prepaid','payumoney',855.60,NULL,NULL,'2021-07-12 22:02:07','2021-07-12 22:02:07'),
	(41,32,'vishal arora','2389/8 shakti nagar','amritsar','Punjab','India','','+917508050123','vishalarora1087@gmail.com',50.00,NULL,NULL,'New','COD','COD',452.80,NULL,NULL,'2021-07-12 23:00:50','2021-07-12 23:00:50'),
	(42,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','COD','COD',905.60,NULL,NULL,'2021-07-12 23:02:39','2021-07-12 23:02:39'),
	(43,32,'vishuuuuuu','105 h ram dass','amritsar','Punjab','Canada','','+917508050123','vishalarora1087@gmail.com',100.00,NULL,NULL,'New','COD','COD',3225.50,NULL,NULL,'2021-07-12 23:05:09','2021-07-12 23:05:09');

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders_logs`;

CREATE TABLE `orders_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `orders_logs` WRITE;
/*!40000 ALTER TABLE `orders_logs` DISABLE KEYS */;

INSERT INTO `orders_logs` (`id`, `order_id`, `order_status`, `created_at`, `updated_at`)
VALUES
	(1,8,'Shipped','2021-03-30 17:50:50','2021-03-30 17:50:50'),
	(2,8,'Delivered','2021-03-30 18:08:27','2021-03-30 18:08:27'),
	(3,8,'Shipped','2021-03-30 18:47:03','2021-03-30 18:47:03'),
	(4,8,'Delivered','2021-03-30 19:00:32','2021-03-30 19:00:32'),
	(5,8,'Shipped','2021-03-30 19:00:53','2021-03-30 19:00:53'),
	(6,8,'Cancelled','2021-03-30 19:11:56','2021-03-30 19:11:56'),
	(7,8,'Shipped','2021-03-30 19:12:40','2021-03-30 19:12:40'),
	(8,11,'Delivered','2021-03-30 20:20:23','2021-03-30 20:20:23'),
	(9,9,'Shipped','2021-03-31 19:18:58','2021-03-31 19:18:58'),
	(10,9,'Shipped','2021-03-31 19:19:03','2021-03-31 19:19:03'),
	(11,33,'Cancelled','2021-07-10 20:49:22','2021-07-10 20:49:22');

/*!40000 ALTER TABLE `orders_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders_products`;

CREATE TABLE `orders_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_color`, `product_size`, `product_price`, `product_qty`, `created_at`, `updated_at`)
VALUES
	(3,8,32,3,'BT005','yellow casual t-shirts','yellow','large',1500.00,1,'2021-03-17 22:34:50','2021-03-17 22:34:50'),
	(4,8,32,8,'BLT11','belt','black','large',223.00,2,'2021-03-17 22:34:50','2021-03-17 22:34:50'),
	(5,9,32,7,'SH001','black shoes','black','large',424.00,3,'2021-03-17 22:40:08','2021-03-17 22:40:08'),
	(6,12,32,2,'BT003','yellow casual t-shirts','yellow','large',1500.00,1,'2021-03-21 20:06:48','2021-03-21 20:06:48'),
	(7,13,32,2,'BT003','yellow casual t-shirts','yellow','large',1500.00,1,'2021-03-21 20:07:17','2021-03-21 20:07:17'),
	(8,14,32,2,'BT003','yellow casual t-shirts','yellow','large',1500.00,1,'2021-03-21 20:54:47','2021-03-21 20:54:47'),
	(9,15,32,2,'BT003','yellow casual t-shirts','yellow','large',1500.00,1,'2021-03-21 21:02:41','2021-03-21 21:02:41'),
	(10,13,32,2,'BT003','yellow casual t-shirts','yellow','large',1500.00,2,'2021-05-06 21:10:58','2021-05-06 21:10:58'),
	(11,13,32,3,'BT005','yellow casual t-shirts','yellow','large',1500.00,1,'2021-05-06 21:10:58','2021-05-06 21:10:58'),
	(12,14,32,8,'BLT11','belt','black','small',211.00,1,'2021-05-07 14:56:46','2021-05-07 14:56:46'),
	(13,15,32,7,'SH001','black shoes','black','large',424.00,1,'2021-07-04 20:28:41','2021-07-04 20:28:41'),
	(14,15,32,5,'BT003','yellow casual jeans','yellow','large',1500.00,1,'2021-07-04 20:28:41','2021-07-04 20:28:41'),
	(15,16,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-04 21:56:30','2021-07-04 21:56:30'),
	(16,17,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-07 20:52:22','2021-07-07 20:52:22'),
	(17,18,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-07 20:52:51','2021-07-07 20:52:51'),
	(18,19,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-07 20:53:01','2021-07-07 20:53:01'),
	(19,20,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-07 20:54:24','2021-07-07 20:54:24'),
	(20,21,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-07 20:55:12','2021-07-07 20:55:12'),
	(21,22,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-07 20:56:49','2021-07-07 20:56:49'),
	(22,23,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-09 21:01:06','2021-07-09 21:01:06'),
	(23,24,32,7,'SH001','black shoes','black','large',424.00,2,'2021-07-09 21:57:26','2021-07-09 21:57:26'),
	(24,25,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-09 22:03:21','2021-07-09 22:03:21'),
	(25,26,32,5,'BT003','yellow casual jeans','yellow','large',1500.00,1,'2021-07-09 22:07:02','2021-07-09 22:07:02'),
	(26,27,32,5,'BT003','yellow casual jeans','yellow','large',1500.00,1,'2021-07-09 22:09:06','2021-07-09 22:09:06'),
	(27,28,32,5,'BT003','yellow casual jeans','yellow','large',1500.00,1,'2021-07-09 22:10:50','2021-07-09 22:10:50'),
	(28,29,32,3,'BT005','yellow casual t-shirts','yellow','large',1500.00,2,'2021-07-09 22:12:25','2021-07-09 22:12:25'),
	(29,30,32,5,'BT003','yellow casual jeans','yellow','large',1500.00,1,'2021-07-09 22:22:18','2021-07-09 22:22:18'),
	(30,31,32,5,'BT003','yellow casual jeans','yellow','large',1500.00,1,'2021-07-09 22:23:52','2021-07-09 22:23:52'),
	(31,32,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-10 20:28:33','2021-07-10 20:28:33'),
	(32,33,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-10 20:41:36','2021-07-10 20:41:36'),
	(33,34,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-10 22:41:23','2021-07-10 22:41:23'),
	(34,35,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-11 22:08:59','2021-07-11 22:08:59'),
	(35,36,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-11 22:34:12','2021-07-11 22:34:12'),
	(36,37,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-11 22:34:22','2021-07-11 22:34:22'),
	(37,38,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-11 22:36:59','2021-07-11 22:36:59'),
	(38,39,32,8,'BLT11','belt','black','small',211.00,1,'2021-07-11 22:37:59','2021-07-11 22:37:59'),
	(39,40,32,7,'SH001','black shoes','black','large',424.00,2,'2021-07-12 22:02:07','2021-07-12 22:02:07'),
	(40,41,32,7,'SH001','black shoes','black','large',424.00,1,'2021-07-12 23:00:50','2021-07-12 23:00:50'),
	(41,42,32,7,'SH001','black shoes','black','large',424.00,2,'2021-07-12 23:02:39','2021-07-12 23:02:39'),
	(42,43,32,7,'SH001','black shoes','black','small',329.00,10,'2021-07-12 23:05:09','2021-07-12 23:05:09');

/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_discount` double(8,2) NOT NULL,
  `product_weight` double(8,2) NOT NULL,
  `product_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wash_care` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleeve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occassion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `category_id`, `section_id`, `brand_id`, `product_name`, `product_code`, `product_color`, `product_price`, `product_discount`, `product_weight`, `product_video`, `main_image`, `description`, `wash_care`, `fabric`, `pattern`, `sleeve`, `fit`, `occassion`, `meta_title`, `meta_description`, `meta_keywords`, `is_featured`, `status`, `created_at`, `updated_at`)
VALUES
	(2,2,1,6,'yellow casual t-shirts','BT003','yellow',1000.00,5.00,400.00,'','6-Designs-Mens-T-Shirt-Slim-Fit-Crew-Neck-T-shirt-Men-Short-Sleeve-Shirt-Casual__30249.1537167076.jpg-2165.jpg','','','cotton','checked','full sleeve','regular','casual','','','','No',1,'2020-08-02 19:08:59','2021-07-04 19:49:35'),
	(3,1,1,7,'yellow casual t-shirts','BT005','yellow',1000.00,5.00,87.00,'6-Designs-Mens-T-Shirt-Slim-Fit-Crew-Neck-T-shirt-Men-Short-Sleeve-Shirt-Casual__30249.1537167076.jpg-1880176336.jpg','branded-t-shirt-500x500.jpg-7733.jpg','','','wool','solid','sleeveless','slim','formal','','','','Yes',1,'2020-08-02 20:41:30','2020-09-01 17:38:44'),
	(5,3,1,10,'yellow casual jeans','BT003','yellow',1500.00,0.00,400.00,'download.jpeg-701111736.jpeg','6-Designs-Mens-T-Shirt-Slim-Fit-Crew-Neck-T-shirt-Men-Short-Sleeve-Shirt-Casual__30249.1537167076.jpg-16056.jpg','abcd','efgh','cotton','checked','full sleeve','','casual','jeanssssss','abcdefghijklmnopqr','qwertyuiolkjhg','Yes',1,'2020-08-03 12:30:16','2021-07-04 19:50:03'),
	(6,6,3,6,'sports shoes','BT','black',1220.00,5.00,100.00,'','','rtfgvbcdesx','','','','','','','','','','No',1,'2020-08-06 22:09:17','2020-09-23 12:11:19'),
	(7,7,3,9,'black shoes','SH001','black',2000.00,5.00,100.00,'','download (3).jpeg-11806.jpeg','','','','','','','','','','','No',1,'2020-08-07 09:03:06','2020-09-23 11:40:15'),
	(8,5,2,9,'belt','BLT11','black',300.00,0.00,100.00,'','download (4).jpeg-78361.jpeg','','','','','','','','','','','No',1,'2020-08-14 18:58:05','2020-09-23 12:11:26'),
	(9,1,1,6,'viviv','batch','hello',56789.00,5.00,0.00,'','','','','','','','','','','','','No',1,'2020-09-18 20:13:08','2020-09-18 20:13:08'),
	(11,2,1,6,'jnjn','hnnhjbh','hbhbhb',878778.00,5.00,988989.00,'','','','','','','','','','','','','No',1,'2020-10-05 18:04:20','2020-10-05 18:04:20');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products_attributes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products_attributes`;

CREATE TABLE `products_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;

INSERT INTO `products_attributes` (`id`, `product_id`, `size`, `price`, `stock`, `sku`, `status`, `created_at`, `updated_at`)
VALUES
	(11,3,'large',1500.00,20,'BT002-l',1,'2020-08-03 22:43:34','2020-08-05 08:55:43'),
	(13,2,'large',1500.00,20,'BT003fr-l',1,'2020-08-03 23:18:59','2020-09-05 21:45:56'),
	(14,5,'large',1500.00,200,'BT003-l',1,'2020-08-04 21:08:27','2020-08-07 09:30:04'),
	(15,6,'small',800.00,12,'abab',1,'2020-10-01 17:04:35','2020-10-01 17:04:35'),
	(16,6,'medium',900.00,15,'cd',1,'2020-10-01 17:04:35','2020-10-01 17:04:35'),
	(17,6,'large',999.00,55,'bah',1,'2020-10-01 17:04:35','2020-10-01 17:04:35'),
	(18,8,'large',223.00,39,'gyyg',1,'2020-12-28 12:53:33','2020-12-28 12:53:33'),
	(19,8,'small',211.00,200,'easy',1,'2020-12-28 12:53:33','2020-12-28 12:53:33'),
	(20,7,'small',329.00,422,'fev',1,'2020-12-28 21:59:17','2021-07-12 23:05:09'),
	(21,7,'large',424.00,20,'fwf',1,'2020-12-28 21:59:17','2021-07-12 23:02:39');

/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products_images`;

CREATE TABLE `products_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;

INSERT INTO `products_images` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`)
VALUES
	(5,3,'2765411596583123.jpg',1,'2020-08-04 23:18:43','2020-09-27 13:57:53'),
	(6,3,'5396151596583123.jpeg',1,'2020-08-04 23:18:43','2020-08-04 23:18:43'),
	(8,3,'148941596584430.jpg',1,'2020-08-04 23:40:30','2020-08-04 23:40:30'),
	(11,2,'4716781596616177.jpg',1,'2020-08-05 08:29:37','2020-08-11 19:01:33'),
	(12,7,'4837121596791031.jpeg',1,'2020-08-07 09:03:51','2020-08-07 09:03:51');

/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Men',1,NULL,'2020-08-11 18:55:48'),
	(2,'Women',1,NULL,'2020-08-14 12:17:07'),
	(3,'Kids',1,NULL,'2020-08-11 18:55:49');

/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shipping_charges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shipping_charges`;

CREATE TABLE `shipping_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  `shipping_charges` float DEFAULT '50',
  `0_500g` float DEFAULT '0',
  `501_1000g` float DEFAULT '0',
  `1001_2000g` float DEFAULT '0',
  `2001g_5000g` float DEFAULT '0',
  `above_5000g` float DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `shipping_charges` WRITE;
/*!40000 ALTER TABLE `shipping_charges` DISABLE KEYS */;

INSERT INTO `shipping_charges` (`id`, `country_code`, `country`, `shipping_charges`, `0_500g`, `501_1000g`, `1001_2000g`, `2001g_5000g`, `above_5000g`, `status`, `updated_at`)
VALUES
	(1,'AF','Afghanistan',51.9,51.9,100,200,300,400,0,'2021-05-08 18:17:31'),
	(2,'AL','Albania',50,100,200,300,400,500,1,'2021-07-04 19:54:42'),
	(3,'DZ','Algeria',10,NULL,NULL,NULL,NULL,NULL,1,'2021-07-04 19:10:05'),
	(4,'DS','American Samoa',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(5,'AD','Andorra',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(6,'AO','Angola',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(7,'AI','Anguilla',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(8,'AQ','Antarctica',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(9,'AG','Antigua and Barbuda',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(10,'AR','Argentina',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(11,'AM','Armenia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(12,'AW','Aruba',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(13,'AU','Australia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(14,'AT','Austria',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(15,'AZ','Azerbaijan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(16,'BS','Bahamas',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(17,'BH','Bahrain',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(18,'BD','Bangladesh',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(19,'BB','Barbados',1000,NULL,NULL,NULL,NULL,NULL,1,'2021-05-06 18:51:07'),
	(20,'BY','Belarus',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(21,'BE','Belgium',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(22,'BZ','Belize',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(23,'BJ','Benin',55,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 19:57:49'),
	(24,'BM','Bermuda',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(25,'BT','Bhutan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(26,'BO','Bolivia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(27,'BA','Bosnia and Herzegovina',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(28,'BW','Botswana',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(29,'BV','Bouvet Island',78,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 19:59:59'),
	(30,'BR','Brazil',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(31,'IO','British Indian Ocean Territory',500,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 20:12:17'),
	(32,'BN','Brunei Darussalam',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(33,'BG','Bulgaria',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(34,'BF','Burkina Faso',10,NULL,NULL,NULL,NULL,NULL,1,'2021-05-06 16:08:36'),
	(35,'BI','Burundi',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(36,'KH','Cambodia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(37,'CM','Cameroon',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(38,'CA','Canada',100,100,200,300,400,500,1,'2021-07-04 20:19:45'),
	(39,'CV','Cape Verde',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(40,'KY','Cayman Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(41,'CF','Central African Republic',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(42,'TD','Chad',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(43,'CL','Chile',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(44,'CN','China',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(45,'CX','Christmas Island',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(46,'CC','Cocos (Keeling) Islands',500,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 20:00:56'),
	(47,'CO','Colombia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(48,'KM','Comoros',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(49,'CD','Democratic Republic of the Congo',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(50,'CG','Republic of Congo',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(51,'CK','Cook Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(52,'CR','Costa Rica',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(53,'HR','Croatia (Hrvatska)',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(54,'CU','Cuba',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(55,'CY','Cyprus',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(56,'CZ','Czech Republic',50,100,200,300,400,500,1,'2021-05-08 18:16:41'),
	(57,'DK','Denmark',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(58,'DJ','Djibouti',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(59,'DM','Dominica',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(60,'DO','Dominican Republic',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(61,'TP','East Timor',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(62,'EC','Ecuador',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(63,'EG','Egypt',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(64,'SV','El Salvador',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(65,'GQ','Equatorial Guinea',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(66,'ER','Eritrea',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(67,'EE','Estonia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(68,'ET','Ethiopia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(69,'FK','Falkland Islands (Malvinas)',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(70,'FO','Faroe Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(71,'FJ','Fiji',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(72,'FI','Finland',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(73,'FR','France',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(74,'FX','France, Metropolitan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(75,'GF','French Guiana',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(76,'PF','French Polynesia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(77,'TF','French Southern Territories',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(78,'GA','Gabon',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(79,'GM','Gambia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(80,'GE','Georgia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(81,'DE','Germany',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(82,'GH','Ghana',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(83,'GI','Gibraltar',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(84,'GK','Guernsey',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(85,'GR','Greece',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(86,'GL','Greenland',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(87,'GD','Grenada',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(88,'GP','Guadeloupe',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(89,'GU','Guam',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(90,'GT','Guatemala',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(91,'GN','Guinea',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(92,'GW','Guinea-Bissau',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(93,'GY','Guyana',500,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 20:04:09'),
	(94,'HT','Haiti',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(95,'HM','Heard and Mc Donald Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(96,'HN','Honduras',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(97,'HK','Hong Kong',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(98,'HU','Hungary',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(99,'IS','Iceland',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(100,'IN','India',500,50,NULL,NULL,NULL,NULL,1,'2021-07-04 20:22:15'),
	(101,'IM','Isle of Man',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(102,'ID','Indonesia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(103,'IR','Iran (Islamic Republic of)',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(104,'IQ','Iraq',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(105,'IE','Ireland',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(106,'IL','Israel',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(107,'IT','Italy',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(108,'CI','Ivory Coast',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(109,'JE','Jersey',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(110,'JM','Jamaica',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(111,'JP','Japan',500,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 20:02:47'),
	(112,'JO','Jordan',500,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 20:00:50'),
	(113,'KZ','Kazakhstan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(114,'KE','Kenya',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(115,'KI','Kiribati',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(116,'KP','Korea, Democratic People\'s Republic of',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(117,'KR','Korea, Republic of',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(118,'XK','Kosovo',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(119,'KW','Kuwait',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(120,'KG','Kyrgyzstan',500,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 20:01:28'),
	(121,'LA','Lao People\'s Democratic Republic',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(122,'LV','Latvia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(123,'LB','Lebanon',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(124,'LS','Lesotho',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(125,'LR','Liberia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(126,'LY','Libyan Arab Jamahiriya',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(127,'LI','Liechtenstein',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(128,'LT','Lithuania',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(129,'LU','Luxembourg',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(130,'MO','Macau',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(131,'MK','North Macedonia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(132,'MG','Madagascar',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(133,'MW','Malawi',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(134,'MY','Malaysia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(135,'MV','Maldives',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(136,'ML','Mali',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(137,'MT','Malta',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(138,'MH','Marshall Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(139,'MQ','Martinique',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(140,'MR','Mauritania',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(141,'MU','Mauritius',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(142,'TY','Mayotte',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(143,'MX','Mexico',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(144,'FM','Micronesia, Federated States of',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(145,'MD','Moldova, Republic of',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(146,'MC','Monaco',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(147,'MN','Mongolia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(148,'ME','Montenegro',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(149,'MS','Montserrat',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(150,'MA','Morocco',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(151,'MZ','Mozambique',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(152,'MM','Myanmar',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(153,'NA','Namibia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(154,'NR','Nauru',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(155,'NP','Nepal',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(156,'NL','Netherlands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(157,'AN','Netherlands Antilles',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(158,'NC','New Caledonia',500,NULL,NULL,NULL,NULL,NULL,1,'2021-05-08 20:22:10'),
	(159,'NZ','New Zealand',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(160,'NI','Nicaragua',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(161,'NE','Niger',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(162,'NG','Nigeria',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(163,'NU','Niue',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(164,'NF','Norfolk Island',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(165,'MP','Northern Mariana Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(166,'NO','Norway',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(167,'OM','Oman',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(168,'PK','Pakistan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(169,'PW','Palau',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(170,'PS','Palestine',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(171,'PA','Panama',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(172,'PG','Papua New Guinea',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(173,'PY','Paraguay',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(174,'PE','Peru',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(175,'PH','Philippines',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(176,'PN','Pitcairn',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(177,'PL','Poland',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(178,'PT','Portugal',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(179,'PR','Puerto Rico',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(180,'QA','Qatar',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(181,'RE','Reunion',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(182,'RO','Romania',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(183,'RU','Russian Federation',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(184,'RW','Rwanda',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(185,'KN','Saint Kitts and Nevis',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(186,'LC','Saint Lucia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(187,'VC','Saint Vincent and the Grenadines',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(188,'WS','Samoa',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(189,'SM','San Marino',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(190,'ST','Sao Tome and Principe',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(191,'SA','Saudi Arabia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(192,'SN','Senegal',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(193,'RS','Serbia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(194,'SC','Seychelles',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(195,'SL','Sierra Leone',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(196,'SG','Singapore',500,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 20:03:37'),
	(197,'SK','Slovakia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(198,'SI','Slovenia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(199,'SB','Solomon Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(200,'SO','Somalia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(201,'ZA','South Africa',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(202,'GS','South Georgia South Sandwich Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(203,'SS','South Sudan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(204,'ES','Spain',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(205,'LK','Sri Lanka',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(206,'SH','St. Helena',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(207,'PM','St. Pierre and Miquelon',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(208,'SD','Sudan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(209,'SR','Suriname',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(210,'SJ','Svalbard and Jan Mayen Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(211,'SZ','Swaziland',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(212,'SE','Sweden',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(213,'CH','Switzerland',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(214,'SY','Syrian Arab Republic',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(215,'TW','Taiwan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(216,'TJ','Tajikistan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(217,'TZ','Tanzania, United Republic of',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(218,'TH','Thailand',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(219,'TG','Togo',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(220,'TK','Tokelau',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(221,'TO','Tonga',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(222,'TT','Trinidad and Tobago',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(223,'TN','Tunisia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(224,'TR','Turkey',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(225,'TM','Turkmenistan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(226,'TC','Turks and Caicos Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(227,'TV','Tuvalu',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(228,'UG','Uganda',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(229,'UA','Ukraine',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(230,'AE','United Arab Emirates',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(231,'GB','United Kingdom',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(232,'US','United States',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(233,'UM','United States minor outlying islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(234,'UY','Uruguay',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(235,'UZ','Uzbekistan',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(236,'VU','Vanuatu',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(237,'VA','Vatican City State',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(238,'VE','Venezuela',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(239,'VN','Vietnam',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(240,'VG','Virgin Islands (British)',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(241,'VI','Virgin Islands (U.S.)',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(242,'WF','Wallis and Futuna Islands',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(243,'EH','Western Sahara',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(244,'YE','Yemen',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(245,'ZM','Zambia',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),
	(246,'ZW','Zimbabwe',50.9,NULL,NULL,NULL,NULL,NULL,1,'2021-05-05 20:03:10');

/*!40000 ALTER TABLE `shipping_charges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pincode` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(31,'saisha','soisaisha@gmail.com','','','','','','7508050111',NULL,'$2y$10$fzmFy8VbPto77A9AwGmROe1JMJZ69QuZlnD8yb4fPHl0C7p/u4aJC',1,NULL,'2021-01-13 12:39:36','2021-01-13 12:39:36'),
	(32,'vishal','vishalarora1087@gmail.com','','','','','','8944939943',NULL,'$2y$10$2fkXsS5rC8Js9Wmhm5.oAOXDQrbNycyv5RqLttbP/qPWsytzvjqhW',1,NULL,NULL,'2021-07-09 20:55:01');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
