/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : keny

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 01/03/2021 20:27:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `status_id` int unsigned NOT NULL,
  `principal` binary(1) NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_status_id_idx` (`status_id`),
  KEY `addresses_user_id_idx` (`user_id`),
  CONSTRAINT `addresses_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  CONSTRAINT `addresses_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `categories_status_id_idx` (`status_id`),
  CONSTRAINT `categories_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `department_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_department_id_idx` (`department_id`),
  KEY `cities_status_id_idx` (`status_id`),
  CONSTRAINT `cities_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `cities_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for configurations
-- ----------------------------
DROP TABLE IF EXISTS `configurations`;
CREATE TABLE `configurations` (
  `id` int NOT NULL,
  `name_company` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `country_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `departments_country_id_idx` (`country_id`),
  KEY `departments_status_id_idx` (`status_id`),
  CONSTRAINT `departments_country_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `departments_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for headquarters
-- ----------------------------
DROP TABLE IF EXISTS `headquarters`;
CREATE TABLE `headquarters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `headquarters _status_id_idx` (`status_id`),
  CONSTRAINT `headquarters _status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of headquarters
-- ----------------------------
BEGIN;
INSERT INTO `headquarters` VALUES (1, 'Principal', 'calle falsa', 1, '2020-12-09 00:00:00', '2020-12-09 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `price_with_discount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `puchase_status_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `od_reference_id_idx` (`reference_id`),
  KEY `od_order_id_idx` (`order_id`),
  KEY `od_puchase_status_id_idx` (`puchase_status_id`),
  CONSTRAINT `od_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `od_puchase_status_id` FOREIGN KEY (`puchase_status_id`) REFERENCES `purchase_statuses` (`id`),
  CONSTRAINT `od_reference_id` FOREIGN KEY (`reference_id`) REFERENCES `references` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `puchase_status_id` int unsigned NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `orders_user_id_idx` (`user_id`),
  KEY `orders_puchase_status_id_idx` (`puchase_status_id`),
  CONSTRAINT `orders_puchase_status_id` FOREIGN KEY (`puchase_status_id`) REFERENCES `purchase_statuses` (`id`),
  CONSTRAINT `orders_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for phones
-- ----------------------------
DROP TABLE IF EXISTS `phones`;
CREATE TABLE `phones` (
  `id` int NOT NULL,
  `phone` int NOT NULL,
  `verified` binary(1) NOT NULL DEFAULT '0',
  `principal` binary(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` varchar(45) NOT NULL,
  `country_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phones_user_id_idx` (`user_id`),
  KEY `phones_country_id_idx` (`country_id`),
  CONSTRAINT `phones_country_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `phones_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(100) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_tags` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `apdated_at` datetime NOT NULL,
  `status_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `slug_UNIQUE` (`slug`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `products_status_id_idx` (`status_id`),
  CONSTRAINT `products_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'Espectacular libro sensorial', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'meta title', 'meta description', 'meta tagas ', 'page-1', '2021-02-10 00:00:00', '2021-02-10 00:00:00', 1);
COMMIT;

-- ----------------------------
-- Table structure for products_categories
-- ----------------------------
DROP TABLE IF EXISTS `products_categories`;
CREATE TABLE `products_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `products_categories_category_id_idx` (`category_id`),
  KEY `products_categories_product_id_idx` (`product_id`),
  KEY `products_categories_status_id_idx` (`status_id`),
  CONSTRAINT `products_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_categories_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `products_categories_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for products_tags
-- ----------------------------
DROP TABLE IF EXISTS `products_tags`;
CREATE TABLE `products_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `products_tags_product_id_idx` (`product_id`),
  KEY `products_tags_tag_id_idx` (`tag_id`),
  KEY `products_tags_status_id_idx` (`status_id`),
  CONSTRAINT `products_tags_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `products_tags_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  CONSTRAINT `products_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for purchase_statuses
-- ----------------------------
DROP TABLE IF EXISTS `purchase_statuses`;
CREATE TABLE `purchase_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `customer_conversion` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for reference_images
-- ----------------------------
DROP TABLE IF EXISTS `reference_images`;
CREATE TABLE `reference_images` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `url` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `referece_images_reference_id_idx` (`reference_id`),
  CONSTRAINT `referece_images_reference_id` FOREIGN KEY (`reference_id`) REFERENCES `references` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of reference_images
-- ----------------------------
BEGIN;
INSERT INTO `reference_images` VALUES (1, 1, 'https://laikapp.s3.amazonaws.com/images_products/1_4051_Promo_Galletas_de_Cordero_y_arroz_Laika_by_Rausch_707X696.jpeg', '2021-10-06 00:00:00', '2021-10-06 00:00:00');
INSERT INTO `reference_images` VALUES (2, 1, 'https://laikapp.s3.amazonaws.com/dev_images_products/19_34540_Dog_Chow_Salud_Visible_Cachorros_Minis_y_Peque__os_1607551812_404x718.png', '2021-10-06 00:00:00', '2021-10-06 00:00:00');
INSERT INTO `reference_images` VALUES (3, 2, 'https://laikapp.s3.amazonaws.com/dev_images_products/22366_FANCY_PETS___Hueso_Basteado_Sabor_Queso_1606762944_500x500.png', '2021-10-06 00:00:00', '2021-10-06 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for references
-- ----------------------------
DROP TABLE IF EXISTS `references`;
CREATE TABLE `references` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `product_id` int unsigned NOT NULL,
  `view_front` int NOT NULL DEFAULT '1' COMMENT '1 = Va a ser  por los clientes',
  `color` varchar(45) DEFAULT NULL,
  `status_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `references_product_id_idx` (`product_id`),
  KEY `references_status_id_idx` (`status_id`),
  CONSTRAINT `references_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `references_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of references
-- ----------------------------
BEGIN;
INSERT INTO `references` VALUES (1, 'rojo', 1, 1, 'red', 1, '2020-10-01 00:00:00', '2020-10-01 00:00:00');
INSERT INTO `references` VALUES (2, 'verde', 1, 1, 'green', 1, '2020-10-01 00:00:00', '2020-10-01 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for references_headquarters
-- ----------------------------
DROP TABLE IF EXISTS `references_headquarters`;
CREATE TABLE `references_headquarters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `headquarter_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  `cost_price` double NOT NULL,
  `price` double NOT NULL,
  `stock` int NOT NULL,
  `reserve_stock` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `rh_reference_id_idx` (`reference_id`),
  KEY `rh_headquarter_id_idx` (`headquarter_id`),
  KEY `rh_status_id_idx` (`status_id`),
  CONSTRAINT `rh_headquarter_id` FOREIGN KEY (`headquarter_id`) REFERENCES `headquarters` (`status_id`),
  CONSTRAINT `rh_reference_id` FOREIGN KEY (`reference_id`) REFERENCES `references` (`id`),
  CONSTRAINT `rh_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of references_headquarters
-- ----------------------------
BEGIN;
INSERT INTO `references_headquarters` VALUES (1, 1, 1, 1, 5000, 10000, 10, 0, '2020-10-08 00:00:00', '2020-10-08 00:00:00');
INSERT INTO `references_headquarters` VALUES (2, 2, 1, 1, 10000, 20000, 5, 0, '2020-10-08 00:00:00', '2020-10-08 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for statuses
-- ----------------------------
DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `color` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statuses
-- ----------------------------
BEGIN;
INSERT INTO `statuses` VALUES (1, 'ACTIVO', '#sdfgsdfg', '2021-02-28 00:00:00', '2021-02-28 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'David', 'Raga', 'david@gmial.com', 'sdfasdfasd', '2021-02-27 00:00:00', '2021-02-27 00:00:00');
COMMIT;

CREATE TABLE `cart` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `code_cart` double unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;


SET FOREIGN_KEY_CHECKS = 1;