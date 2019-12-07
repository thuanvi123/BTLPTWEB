/*
Navicat MySQL Data Transfer

Source Server         : Admin88
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : shopkma

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-06-13 06:58:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'TRỊNH Văn Thuận', 'admin@gmail.com', null, '$2y$10$o1LXapCWox0p4svTv9fKQ.U/eLxKMKiXPQMHLisuX/b0LtHVnR.xG', 'tm3brhBysCJLzgpGz3TpJaLqE4OcXlSwmFvgVP3p42ud3dFXstU31VhbXqJh', '2019-06-09 01:36:00', '2019-06-09 01:36:00');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('1', 'Main banner', '1', '/files/1/Banner/sl3.jpg', '<p>d</p>', '<p>d</p>', '2019-06-09 18:14:01', '2019-06-09 18:34:58', '/shop/category/1');

-- ----------------------------
-- Table structure for content_category
-- ----------------------------
DROP TABLE IF EXISTS `content_category`;
CREATE TABLE `content_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of content_category
-- ----------------------------

-- ----------------------------
-- Table structure for content_pages
-- ----------------------------
DROP TABLE IF EXISTS `content_pages`;
CREATE TABLE `content_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of content_pages
-- ----------------------------

-- ----------------------------
-- Table structure for content_posts
-- ----------------------------
DROP TABLE IF EXISTS `content_posts`;
CREATE TABLE `content_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of content_posts
-- ----------------------------

-- ----------------------------
-- Table structure for content_tags
-- ----------------------------
DROP TABLE IF EXISTS `content_tags`;
CREATE TABLE `content_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of content_tags
-- ----------------------------

-- ----------------------------
-- Table structure for global_settings
-- ----------------------------
DROP TABLE IF EXISTS `global_settings`;
CREATE TABLE `global_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `global_settings_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of global_settings
-- ----------------------------
INSERT INTO `global_settings` VALUES ('1', 'web_name', 'Imagine', '', '2019-06-09 13:54:13', '2019-06-09 14:01:25');
INSERT INTO `global_settings` VALUES ('2', 'header_logo', '/files/1/Banner/logo.jpg', '', '2019-06-09 13:54:13', '2019-06-12 15:22:00');
INSERT INTO `global_settings` VALUES ('3', 'footer_logo', '', '', '2019-06-09 13:54:13', '2019-06-09 13:54:13');
INSERT INTO `global_settings` VALUES ('4', 'intro', '<p>D</p>', '', '2019-06-09 13:54:13', '2019-06-09 13:54:13');
INSERT INTO `global_settings` VALUES ('5', 'desc', '<p>D</p>', '', '2019-06-09 13:54:13', '2019-06-09 13:54:13');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Header menu', 'Headermenu', '<p>sff</p>', '1', '2019-06-09 05:39:17', '2019-06-09 05:39:17');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `menu_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES ('1', 'Trang chủ', '7', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"http:\\/\\/localhost\\/BTLPTWEB\\/SHOPKMA\\/public\"}', 'http://localhost/BTLPTWEB/SHOPKMA/public', 'fa fa', '<p>sff</p>', '0', '2019-06-09 05:39:47', '2019-06-09 16:41:08', '1', '0', '0');
INSERT INTO `menu_items` VALUES ('2', 'Sản Phẩm', '7', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"\"}', '', 'fa fa', '<p>sff</p>', '0', '2019-06-09 13:08:17', '2019-06-09 13:18:29', '1', '2', '4');
INSERT INTO `menu_items` VALUES ('3', 'Giới thiệu', '7', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"\"}', '', 'kaka', '<p>ffg</p>', '0', '2019-06-09 13:11:02', '2019-06-09 13:11:02', '1', '1', '0');
INSERT INTO `menu_items` VALUES ('4', 'Tin tức', '7', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"\"}', '', '', '<p>d</p>', '0', '2019-06-09 13:12:36', '2019-06-09 13:12:36', '1', '3', '0');
INSERT INTO `menu_items` VALUES ('5', 'Liên hệ', '7', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"\"}', '', 'fa fa', '<p>df</p>', '0', '2019-06-09 13:13:25', '2019-06-09 13:13:25', '1', '4', '0');
INSERT INTO `menu_items` VALUES ('6', 'LapTop', '1', '{\"params_1\":\"1\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"\"}', '/shop/category/1', '', '<p>dfg</p>', '2', '2019-06-09 13:14:00', '2019-06-11 05:56:26', '1', '0', '1');
INSERT INTO `menu_items` VALUES ('7', 'Camera', '1', '{\"params_1\":\"3\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"\"}', '/shop/category/3', 's', '<p>fdf</p>', '2', '2019-06-09 13:15:57', '2019-06-09 13:15:57', '1', '1', '0');
INSERT INTO `menu_items` VALUES ('8', 'Phụ kiện laptop', '1', '{\"params_1\":\"2\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"\"}', '/shop/category/2', 'fa fa', '<p>df</p>', '2', '2019-06-09 13:16:55', '2019-06-09 13:16:55', '1', '2', '0');
INSERT INTO `menu_items` VALUES ('9', 'Phụ kiện camera', '1', '{\"params_1\":\"4\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"\"}', '/shop/category/4', 'fa fa', '<p>sf</p>', '2', '2019-06-09 13:18:29', '2019-06-09 13:18:29', '1', '3', '0');
INSERT INTO `menu_items` VALUES ('10', 'LapTop Gaming', '1', '{\"params_1\":\"5\",\"params_2\":\"1\",\"params_3\":\"\",\"params_4\":\"\",\"params_5\":\"\",\"params_6\":\"\",\"params_7\":\"\"}', '/shop/category/5', 'fa', '<p>d</p>', '6', '2019-06-11 05:56:26', '2019-06-11 05:56:26', '1', '0', '0');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_12_31_074305_create_admins', '1');
INSERT INTO `migrations` VALUES ('4', '2018_12_31_150534_create_sellers', '1');
INSERT INTO `migrations` VALUES ('5', '2018_12_31_154535_create_shippers', '1');
INSERT INTO `migrations` VALUES ('6', '2019_01_01_070015_create_shop_category', '1');
INSERT INTO `migrations` VALUES ('7', '2019_01_03_131907_create_shop_products', '1');
INSERT INTO `migrations` VALUES ('8', '2019_01_19_132207_create_content_category', '1');
INSERT INTO `migrations` VALUES ('9', '2019_01_19_132318_create_content_posts', '1');
INSERT INTO `migrations` VALUES ('10', '2019_01_19_132421_create_content_pages', '1');
INSERT INTO `migrations` VALUES ('11', '2019_01_20_061715_create_content_tags', '1');
INSERT INTO `migrations` VALUES ('12', '2019_01_20_063151_create_menus', '1');
INSERT INTO `migrations` VALUES ('13', '2019_01_20_063208_create_menu_items', '1');
INSERT INTO `migrations` VALUES ('14', '2019_01_20_075225_add_memu_id_to_table_menu_items', '1');
INSERT INTO `migrations` VALUES ('15', '2019_01_20_083913_create_global_settings', '1');
INSERT INTO `migrations` VALUES ('16', '2019_01_20_150000_create_shop_brands', '1');
INSERT INTO `migrations` VALUES ('17', '2019_02_16_064828_add_sort_and_total_menu_items', '1');
INSERT INTO `migrations` VALUES ('18', '2019_02_16_141041_create_banners', '1');
INSERT INTO `migrations` VALUES ('19', '2019_02_16_142104_add_link_field_to_banners', '1');
INSERT INTO `migrations` VALUES ('20', '2019_02_16_142418_create_newsletters', '1');
INSERT INTO `migrations` VALUES ('21', '2019_02_17_042143_add_four_fields_to_products', '1');
INSERT INTO `migrations` VALUES ('22', '2019_02_17_132347_create_orders', '1');
INSERT INTO `migrations` VALUES ('23', '2019_02_17_132408_create_orders_detail', '1');
INSERT INTO `migrations` VALUES ('24', '2019_02_24_034619_add_homepage_to_shop_cateogries', '1');
INSERT INTO `migrations` VALUES ('25', '2019_02_24_034702_add_homepage_to_shop_products', '1');
INSERT INTO `migrations` VALUES ('26', '2019_02_24_044939_add_tag_to_content_post', '1');

-- ----------------------------
-- Table structure for newsletters
-- ----------------------------
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of newsletters
-- ----------------------------
INSERT INTO `newsletters` VALUES ('1', 'admin@gmail.com', '2019-06-09 16:47:47', '2019-06-09 16:47:47');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'TRỊNH Văn Thuận', '01665330971', 'thuanvi15091997@gmail.com', '<p>chuyển h&agrave;ng nhanh</p>', '15', '7', 'Việt Nam', '6400000', '2', '2019-06-09 13:40:56', '2019-06-09 13:42:02');

-- ----------------------------
-- Table structure for orders_detail
-- ----------------------------
DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders_detail
-- ----------------------------
INSERT INTO `orders_detail` VALUES ('1', '1', '1', '2', '3200000', '6400000', '0', '2019-06-09 13:40:56', '2019-06-09 13:40:56');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for sellers
-- ----------------------------
DROP TABLE IF EXISTS `sellers`;
CREATE TABLE `sellers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sellers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sellers
-- ----------------------------

-- ----------------------------
-- Table structure for shippers
-- ----------------------------
DROP TABLE IF EXISTS `shippers`;
CREATE TABLE `shippers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shippers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shippers
-- ----------------------------

-- ----------------------------
-- Table structure for shop_brands
-- ----------------------------
DROP TABLE IF EXISTS `shop_brands`;
CREATE TABLE `shop_brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_brands
-- ----------------------------
INSERT INTO `shop_brands` VALUES ('1', 'Dell', '/files/1/LapTop/10.png', '#', '<p>d</p>', '<p>d</p>', '2019-06-11 06:15:56', '2019-06-11 06:15:56');

-- ----------------------------
-- Table structure for shop_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE `shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES ('1', 'LapTop', 'laptop', '/files/1/Banner/b1.jpg', '<p>fd</p>', '<p>dfsss</p>', '2019-06-09 05:36:31', '2019-06-10 18:21:19', '1');
INSERT INTO `shop_category` VALUES ('2', 'Phụ kiện laptop', 'phu-kien-laptop', '1.jpg', '<p>df</p>', '<p>scx</p>', '2019-06-09 13:06:39', '2019-06-10 17:25:29', '1');
INSERT INTO `shop_category` VALUES ('3', 'Camera', 'sanpham', '1.jpg', '<p>df</p>', '<p>f</p>', '2019-06-09 13:14:48', '2019-06-09 13:14:48', '1');
INSERT INTO `shop_category` VALUES ('4', 'Phụ kiện camera', 'sanpham', '1.jpg', '<p>23ews</p>', '<p>sdsf</p>', '2019-06-09 13:15:08', '2019-06-09 13:15:08', '1');
INSERT INTO `shop_category` VALUES ('5', 'LapTop Gaming', 'laptopgaming', '1.jpg', '<p>df</p>', '<p>sd</p>', '2019-06-09 14:10:22', '2019-06-09 14:10:22', '0');

-- ----------------------------
-- Table structure for shop_products
-- ----------------------------
DROP TABLE IF EXISTS `shop_products`;
CREATE TABLE `shop_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priceCore` int(11) NOT NULL,
  `priceSale` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ship_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `help` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_products
-- ----------------------------
INSERT INTO `shop_products` VALUES ('1', 'Dell Inspiron 7447', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/2.png\",\"\\/files\\/1\\/LapTop\\/1.png\",\"\\/files\\/1\\/LapTop\\/3.png\"]', '<p>&egrave;</p>', '<p>sf</p>', '11000000', '10290000', '100', '1', '2019-06-09 05:37:47', '2019-06-09 14:46:26', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>sfd</p>', '<p>sf</p>', '<p>sf</p>', '1');
INSERT INTO `shop_products` VALUES ('2', 'Laptop Asus N501VW', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/4.png\",\"\\/files\\/1\\/LapTop\\/6.png\",\"\\/files\\/1\\/LapTop\\/6.png\"]', '<p>1</p>', '<p>1w</p>', '18900000', '17900000', '100', '1', '2019-06-09 14:12:31', '2019-06-10 17:52:47', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>ư</p>', '<p>ư</p>', '<p>ư</p>', '1');
INSERT INTO `shop_products` VALUES ('3', 'HP Pavilion 15-cx0179TX', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/7.png\",\"\\/files\\/1\\/LapTop\\/6.png\",\"\\/files\\/1\\/LapTop\\/4.png\"]', '<p>sản phẩm tốt</p>', '<p>sản phẩm tốt</p>', '23000000', '22590000', '20', '1', '2019-06-09 16:56:46', '2019-06-09 16:56:46', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>thsk</p>', '<p>dl</p>', '<p>dj</p>', '0');
INSERT INTO `shop_products` VALUES ('4', 'Legion Y530 - Core i7', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/6.png\",\"\\/files\\/1\\/LapTop\\/4.png\",\"\\/files\\/1\\/LapTop\\/7.png\"]', '<p>Trang bị Intel Core i7 8750H &amp; Nvidia GTX 1050&nbsp;<br />Thiết kế Gaming tinh tế, hiện đại&nbsp;<br />Bảo h&agrave;nh ch&iacute;nh h&atilde;ng Lenovo</p>', '<p>d</p>', '23690000', '22690000', '100', '1', '2019-06-09 17:10:17', '2019-06-10 17:53:08', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>ds</p>', '<p>sd</p>', '<p>dfa</p>', '1');
INSERT INTO `shop_products` VALUES ('5', 'ASUS FX505GE BQ052T - Intel Core i5', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/9.png\",\"\\/files\\/1\\/LapTop\\/1.png\",\"\\/files\\/1\\/LapTop\\/4.png\"]', '<p>Full Box 100% ch&iacute;nh h&atilde;ng ASUS Việt NAm. Tặng chuột Gaming S88 Hero + balo Laptop88 v&agrave; b&agrave;n di chuột</p>', '<p>sản phẩm tốt</p>', '23490000', '22490000', '20', '1', '2019-06-09 17:22:52', '2019-06-10 18:18:13', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>d</p>', '<p>d</p>', '<p>d</p>', '1');
INSERT INTO `shop_products` VALUES ('6', 'HP Omen 15 AX250 - Intel Core i7', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/3.png\",\"\\/files\\/1\\/LapTop\\/5.png\",\"\\/files\\/1\\/LapTop\\/9.png\"]', '<p>Brand new fullbox&nbsp;<br />Bảo h&agrave;nh hậu m&atilde;i 88 TH&Aacute;NG</p>', '<p>aaaa</p>', '24700000', '22700000', '20', '1', '2019-06-09 17:26:05', '2019-06-10 18:18:55', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>ad</p>', '<p>sd</p>', '<p>sd</p>', '1');
INSERT INTO `shop_products` VALUES ('7', 'Asus FX505DD AL186T - Ryzen 5', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/8.png\",\"\\/files\\/1\\/LapTop\\/4.png\",\"\\/files\\/1\\/LapTop\\/7.png\"]', '<p>Laptop gaming cấu h&igrave;nh khủng, bảo h&agrave;nh ch&iacute;nh h&atilde;ng Asus 24 th&aacute;ng. Cấu h&igrave;nh: Ryzen 5 3550H, RAM 8GB, Ổ cứng SSD NVMe 512GB, Card đồ họa GTX 1050, m&agrave;n h&igrave;nh 15 Inch Full HD</p>', '<p>f</p>', '25590000', '20590000', '20', '1', '2019-06-09 17:29:59', '2019-06-10 18:19:15', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>d</p>', '<p>d</p>', '<p>d</p>', '1');
INSERT INTO `shop_products` VALUES ('8', 'MSI GF63-8RD 221VN Core i7 8750H', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/5.png\",\"\\/files\\/1\\/LapTop\\/2.png\",\"\\/files\\/1\\/LapTop\\/3.png\"]', '<p>M&aacute;y lướt như mới. C&ograve;n bảo h&agrave;nh ch&iacute;nh h&atilde;ng MSI tới th&aacute;ng 8/2020. Intel Core i7 8750H, RAM 16GB, Ổ cứng SSD 256GB + HDD 1TB, Card đồ họa Nvidia GTX 1050Ti</p>', '<p>v</p>', '25800000', '22800000', '20', '1', '2019-06-09 17:36:50', '2019-06-09 17:37:34', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>a</p>', '<p>x</p>', '<p>d</p>', '1');
INSERT INTO `shop_products` VALUES ('9', 'Lenovo Legion Y540 15IRH', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/9.png\",\"\\/files\\/1\\/LapTop\\/7.png\",\"\\/files\\/1\\/LapTop\\/3.png\"]', '<p>Laptop gaming ch&iacute;nh h&atilde;ng Lenovo Việt Nam. Cấu h&igrave;nh khủng: Intel Core i5 9300H, RAM 8GB DDR4, Card đồ họa NVidia GTX 1650 4GB</p>', '<p>d</p>', '27590000', '23590000', '10', '1', '2019-06-09 17:40:47', '2019-06-09 17:40:47', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>d</p>', '<p>d</p>', '<p>d</p>', '0');
INSERT INTO `shop_products` VALUES ('10', 'MSI GP63 Leopard 8RD', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/13.png\",\"\\/files\\/1\\/LapTop\\/3.png\",\"\\/files\\/1\\/LapTop\\/4.png\"]', '<p>sfd</p>', '<p>sdf</p>', '24500000', '26500000', '20', '1', '2019-06-09 17:43:42', '2019-06-10 18:18:24', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>ad</p>', '<p>ad</p>', '<p>ad</p>', '1');
INSERT INTO `shop_products` VALUES ('11', 'Dell Latitude E6430', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/4.png\",\"\\/files\\/1\\/LapTop\\/11.png\",\"\\/files\\/1\\/LapTop\\/14.jpg\"]', '<h2>Dell Latitude E6430 l&agrave; sản phẩm được ưa chuộng&nbsp;</h2>', '<p>Chiếc laptop &nbsp;<strong><a href=\"http://trungtran.vn/dell/dell-latitude-e6430-i5-intel-hd-graphics-4000-p1507.html\">Dell Latitude E6430</a></strong> thuộc d&ograve;ng Dell Latitude&nbsp;</p>', '22690000', '20690000', '20', '1', '2019-06-12 15:47:47', '2019-06-12 15:49:51', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>test</p>', '<p>sản phẩm tốt</p>', '<p>f</p>', '1');
INSERT INTO `shop_products` VALUES ('12', 'Laptop cũ HP Folio 9480m', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/15.png\",\"\\/files\\/1\\/LapTop\\/1.png\",\"\\/files\\/1\\/LapTop\\/13.jpg\"]', '<p>Laptop thời trang mỏng nhẹ đẹp như Macbook</p>', '<p><img src=\"/BTLPTWEB/SHOPKMA/public/files/1/LapTop/1.png\" alt=\"\" /></p>', '9500000', '7500000', '20', '1', '2019-06-12 15:57:16', '2019-06-12 15:57:16', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>d</p>', '<p>d</p>', '<p>d</p>', '1');
INSERT INTO `shop_products` VALUES ('13', 'Laptop cũ HP Elitebook 840 G3 - Intel Core i7', 'sanpham', '[\"\\/files\\/1\\/LapTop\\/9.png\"]', '<p>M&aacute;y nhập Mỹ &amp; Ch&acirc;u &Acirc;u, 99%&nbsp;<br /><br /></p>', '<p>d</p>\r\n<p>&nbsp;</p>', '15000000', '12000000', '20', '1', '2019-06-12 16:03:51', '2019-06-12 16:03:51', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>df</p>', '<p>sfs</p>', '<p>sdsd</p>', '1');
INSERT INTO `shop_products` VALUES ('14', 'Ổ cứng SSD PCIe - Oscoo', 'sanpham', '[\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/1.jpg\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/2.jpg\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/3.jpg\"]', '<p>123</p>', '<p>sdf</p>', '890000', '800000', '20', '2', '2019-06-12 16:07:24', '2019-06-12 16:07:24', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>sds</p>', '<p>sds</p>', '<p>sds</p>', '1');
INSERT INTO `shop_products` VALUES ('15', 'Ổ cứng SSD 2.5 inch - Novastar', 'sanpham', '[\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/4.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/5.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/6.png\"]', '<p>dff</p>', '<p>sads</p>', '499000', '399000', '20', '2', '2019-06-12 16:11:05', '2019-06-12 16:11:05', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>sd</p>', '<p>sd</p>', '<p>sd</p>', '1');
INSERT INTO `shop_products` VALUES ('16', 'Chuột Gaming S88 Hero', 'sanpham', '[\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/7.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/8.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/9.png\"]', '<p>T&iacute;ch hợp sẵn phần mềm Macro - Cảm biến Avago 3050 - Switch Huano độ bền 10 triệu click</p>', '<p>x</p>', '400000', '300000', '20', '2', '2019-06-12 16:15:02', '2019-06-12 16:15:02', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>cxc</p>', '<p>xc</p>', '<p>xc</p>', '1');
INSERT INTO `shop_products` VALUES ('17', 'Chuột Gaming Logitech G603 - Không Dây', 'sanpham', '[\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/10.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/11.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/9.png\"]', '<p>sad</p>', '<p>sd</p>', '1339000', '1200000', '20', '2', '2019-06-12 16:18:26', '2019-06-12 16:18:26', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>sd</p>', '<p>sd</p>', '<p>sd</p>', '1');
INSERT INTO `shop_products` VALUES ('18', 'Chuột Gaming Fuhlen G90s', 'sanpham', '[\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/13.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/11.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/12.png\"]', '<p>ds</p>', '<p>dss</p>', '405000', '400000', '40', '2', '2019-06-12 16:20:58', '2019-06-12 16:20:58', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>dss</p>', '<p>dssd</p>', '<p>sds</p>', '1');
INSERT INTO `shop_products` VALUES ('19', 'Bàn phím Logitech G Pro Gaming', 'sanpham', '[\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/18.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/16.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/17.png\"]', '<p>d</p>', '<p>d</p>', '1890000', '1800000', '10', '2', '2019-06-12 16:25:46', '2019-06-12 16:25:46', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>d</p>', '<p>d</p>', '<p>d</p>', '0');
INSERT INTO `shop_products` VALUES ('20', 'Bàn phím Gaming Logitech G613 Wireless', 'sanpham', '[\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/18.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/17.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/16.png\"]', '<p>s</p>', '<p>d</p>', '1850000', '1650000', '100', '2', '2019-06-12 16:27:38', '2019-06-12 16:27:38', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>sd</p>', '<p>s</p>', '<p>sd</p>', '0');
INSERT INTO `shop_products` VALUES ('21', 'Tai nghe Gaming Xiberia K16', 'sanpham', '[\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/19.png\",\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/19.png\"]', '<p>a</p>', '<p>s</p>', '395000', '365000', '20', '2', '2019-06-12 16:29:46', '2019-06-12 16:29:46', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>s</p>', '<p>s</p>', '<p>s</p>', '1');
INSERT INTO `shop_products` VALUES ('22', 'Bàn di chuột khổ lớn Signo kiêm sạc không dây', 'sanpham', '[\"\\/files\\/1\\/Ph\\u1ee5 ki\\u1ec7n LapTop\\/20.png\"]', '<p>ad</p>', '<p>sd</p>', '500000', '399000', '20', '2', '2019-06-12 23:20:01', '2019-06-12 23:20:01', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>sd</p>', '<p>sd</p>', '<p>ds</p>', '1');
INSERT INTO `shop_products` VALUES ('23', 'Máy ảnh Compact Sony CyberShot DSC-WX500 Đen', 'sanpham', '[\"\\/files\\/1\\/Camera\\/1.jpg\",\"\\/files\\/1\\/Camera\\/3.jpg\",\"\\/files\\/1\\/Camera\\/4.jpg\"]', '<h1>M&aacute;y ảnh Compact Sony CyberShot DSC-WX500 Đen (Ch&iacute;nh h&atilde;ng)</h1>', '<p>sản phẩm tốt</p>', '7000000', '6190000', '20', '3', '2019-06-12 23:43:17', '2019-06-12 23:43:17', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>d</p>', '<p>d</p>', '<p>d</p>', '1');
INSERT INTO `shop_products` VALUES ('24', 'Máy ảnh Sony A6000 Body Bạc', 'sanpham', '[\"\\/files\\/1\\/Camera\\/5.jpg\",\"\\/files\\/1\\/Camera\\/9.jpg\",\"\\/files\\/1\\/Camera\\/6.jpg\"]', '<p>sds</p>', '<p>d</p>', '12090000', '10490000', '20', '3', '2019-06-12 23:45:41', '2019-06-12 23:45:41', 'Sản phẩm được chuyển đến trong 2 -3 ngày', '<p>s</p>', '<p>s</p>', '<p>sd</p>', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'TRỊNH Văn Thuận', 'admin@gmail.com', null, '$2y$10$TWU6uh2p0o3BO12TEqs/Je6uLb5xuD1UawLW/2XAEA.a7.fRtfns2', 'fW5bRe5KbWkvD8JeNIrlGW1slpcoSq8WLS1L8H2ILSSySYHKHYIeR5xUn28l', '2019-06-12 01:30:32', '2019-06-12 01:30:32');
INSERT INTO `users` VALUES ('2', 'TRỊNH Văn Thuận', 'admin12@gmail.com', null, '$2y$10$yrMNIs6b24qnY0QfpuXGHeI/QHDLgll3U9ar36/RVhbZVnAr4K76W', '501V3lB67LariO9S0wNQS8mlb9zzMUhP8keV1ledwueauWpfXTfmWflBauhf', '2019-06-12 06:45:23', '2019-06-12 06:45:23');
