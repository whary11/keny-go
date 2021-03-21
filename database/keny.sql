/*
 Navicat Premium Data Transfer

 Source Server         : DB-LOCAL
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : keny

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 20/03/2021 23:04:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  `address` varchar(255) NOT NULL,
  `complement` varchar(255) DEFAULT NULL,
  `principal` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `addresses_status_id_idx` (`status_id`),
  KEY `addresses_user_id_idx` (`user_id`),
  CONSTRAINT `addresses_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  CONSTRAINT `addresses_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addresses
-- ----------------------------
BEGIN;
INSERT INTO `addresses` VALUES (1, 4, 1, 'calle falsa', NULL, 0, '2020-03-14 00:00:00', '2020-03-14 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `bought` int NOT NULL DEFAULT '0' COMMENT '0=no comprado 1=comprado',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
INSERT INTO `cart` VALUES (6, NULL, '2021-03-11 07:50:30.000000', '2021-03-11 07:50:30.000000', 0);
INSERT INTO `cart` VALUES (7, NULL, '2021-03-11 07:52:11.000000', '2021-03-11 07:52:11.000000', 0);
INSERT INTO `cart` VALUES (8, NULL, '2021-03-11 07:52:13.000000', '2021-03-11 07:52:13.000000', 0);
INSERT INTO `cart` VALUES (9, NULL, '2021-03-11 07:52:13.000000', '2021-03-11 07:52:13.000000', 0);
INSERT INTO `cart` VALUES (10, NULL, '2021-03-11 07:52:14.000000', '2021-03-11 07:52:14.000000', 0);
INSERT INTO `cart` VALUES (11, NULL, '2021-03-11 07:52:14.000000', '2021-03-11 07:52:14.000000', 0);
INSERT INTO `cart` VALUES (12, NULL, '2021-03-11 07:52:15.000000', '2021-03-11 07:52:15.000000', 0);
INSERT INTO `cart` VALUES (13, NULL, '2021-03-11 07:52:15.000000', '2021-03-11 07:52:15.000000', 0);
INSERT INTO `cart` VALUES (14, NULL, '2021-03-11 07:52:15.000000', '2021-03-11 07:52:15.000000', 0);
INSERT INTO `cart` VALUES (15, NULL, '2021-03-11 07:52:15.000000', '2021-03-11 07:52:15.000000', 0);
INSERT INTO `cart` VALUES (16, NULL, '2021-03-11 07:52:16.000000', '2021-03-11 07:52:16.000000', 0);
INSERT INTO `cart` VALUES (17, NULL, '2021-03-11 07:53:00.000000', '2021-03-11 07:53:00.000000', 0);
INSERT INTO `cart` VALUES (18, NULL, '2021-03-11 07:53:01.000000', '2021-03-11 07:53:01.000000', 0);
INSERT INTO `cart` VALUES (19, NULL, '2021-03-11 07:53:01.000000', '2021-03-11 07:53:01.000000', 0);
INSERT INTO `cart` VALUES (20, NULL, '2021-03-11 07:53:02.000000', '2021-03-11 07:53:02.000000', 0);
INSERT INTO `cart` VALUES (21, NULL, '2021-03-11 07:53:02.000000', '2021-03-11 07:53:02.000000', 0);
INSERT INTO `cart` VALUES (22, NULL, '2021-03-11 07:53:02.000000', '2021-03-11 07:53:02.000000', 0);
INSERT INTO `cart` VALUES (23, NULL, '2021-03-11 07:53:02.000000', '2021-03-11 07:53:02.000000', 0);
INSERT INTO `cart` VALUES (24, NULL, '2021-03-11 07:53:03.000000', '2021-03-11 07:53:03.000000', 0);
INSERT INTO `cart` VALUES (25, NULL, '2021-03-11 07:53:44.000000', '2021-03-11 07:53:44.000000', 0);
INSERT INTO `cart` VALUES (26, NULL, '2021-03-11 07:53:48.000000', '2021-03-11 07:53:48.000000', 0);
INSERT INTO `cart` VALUES (27, NULL, '2021-03-11 07:53:49.000000', '2021-03-11 07:53:49.000000', 0);
INSERT INTO `cart` VALUES (28, NULL, '2021-03-11 07:53:49.000000', '2021-03-11 07:53:49.000000', 0);
INSERT INTO `cart` VALUES (29, NULL, '2021-03-11 07:53:50.000000', '2021-03-11 07:53:50.000000', 0);
INSERT INTO `cart` VALUES (30, NULL, '2021-03-11 07:53:59.000000', '2021-03-11 07:53:59.000000', 0);
INSERT INTO `cart` VALUES (31, NULL, '2021-03-11 07:54:38.000000', '2021-03-11 07:54:38.000000', 0);
INSERT INTO `cart` VALUES (32, NULL, '2021-03-12 09:43:00.000000', '2021-03-12 09:43:00.000000', 0);
INSERT INTO `cart` VALUES (33, NULL, '2021-03-12 09:43:01.000000', '2021-03-12 09:43:01.000000', 0);
INSERT INTO `cart` VALUES (34, NULL, '2021-03-12 09:43:02.000000', '2021-03-12 09:43:02.000000', 0);
INSERT INTO `cart` VALUES (35, NULL, '2021-03-12 09:43:02.000000', '2021-03-12 09:43:02.000000', 0);
INSERT INTO `cart` VALUES (36, NULL, '2021-03-12 09:43:03.000000', '2021-03-12 09:43:03.000000', 0);
INSERT INTO `cart` VALUES (37, NULL, '2021-03-12 09:43:03.000000', '2021-03-12 09:43:03.000000', 0);
INSERT INTO `cart` VALUES (38, NULL, '2021-03-12 09:43:04.000000', '2021-03-12 09:43:04.000000', 0);
INSERT INTO `cart` VALUES (39, NULL, '2021-03-12 09:43:05.000000', '2021-03-12 09:43:05.000000', 0);
INSERT INTO `cart` VALUES (40, NULL, '2021-03-12 09:43:06.000000', '2021-03-12 09:43:06.000000', 0);
INSERT INTO `cart` VALUES (41, NULL, '2021-03-12 09:43:07.000000', '2021-03-12 09:43:07.000000', 0);
INSERT INTO `cart` VALUES (42, NULL, '2021-03-12 09:43:08.000000', '2021-03-12 09:43:08.000000', 0);
INSERT INTO `cart` VALUES (43, NULL, '2021-03-12 09:43:08.000000', '2021-03-12 09:43:08.000000', 0);
INSERT INTO `cart` VALUES (44, NULL, '2021-03-12 09:43:09.000000', '2021-03-12 09:43:09.000000', 0);
INSERT INTO `cart` VALUES (45, NULL, '2021-03-12 09:43:09.000000', '2021-03-12 09:43:09.000000', 0);
INSERT INTO `cart` VALUES (46, NULL, '2021-03-12 09:43:09.000000', '2021-03-12 09:43:09.000000', 0);
INSERT INTO `cart` VALUES (47, NULL, '2021-03-12 09:43:09.000000', '2021-03-12 09:43:09.000000', 0);
INSERT INTO `cart` VALUES (48, NULL, '2021-03-12 09:43:10.000000', '2021-03-12 09:43:10.000000', 0);
INSERT INTO `cart` VALUES (49, NULL, '2021-03-12 09:43:10.000000', '2021-03-12 09:43:10.000000', 0);
INSERT INTO `cart` VALUES (50, NULL, '2021-03-12 09:43:11.000000', '2021-03-12 09:43:11.000000', 0);
INSERT INTO `cart` VALUES (51, NULL, '2021-03-12 09:43:11.000000', '2021-03-12 09:43:11.000000', 0);
INSERT INTO `cart` VALUES (52, NULL, '2021-03-12 09:43:11.000000', '2021-03-12 09:43:11.000000', 0);
INSERT INTO `cart` VALUES (53, NULL, '2021-03-12 09:43:12.000000', '2021-03-12 09:43:12.000000', 0);
INSERT INTO `cart` VALUES (54, NULL, '2021-03-12 09:43:12.000000', '2021-03-12 09:43:12.000000', 0);
INSERT INTO `cart` VALUES (55, NULL, '2021-03-12 09:43:13.000000', '2021-03-12 09:43:13.000000', 0);
INSERT INTO `cart` VALUES (56, NULL, '2021-03-12 09:43:13.000000', '2021-03-12 09:43:13.000000', 0);
INSERT INTO `cart` VALUES (57, NULL, '2021-03-12 09:43:13.000000', '2021-03-12 09:43:13.000000', 0);
INSERT INTO `cart` VALUES (58, NULL, '2021-03-12 09:48:17.000000', '2021-03-12 09:48:17.000000', 0);
INSERT INTO `cart` VALUES (59, NULL, '2021-03-12 09:48:39.000000', '2021-03-12 09:48:39.000000', 0);
INSERT INTO `cart` VALUES (60, NULL, '2021-03-12 09:49:36.000000', '2021-03-12 09:49:36.000000', 0);
INSERT INTO `cart` VALUES (61, NULL, '2021-03-12 09:49:37.000000', '2021-03-12 09:49:37.000000', 0);
INSERT INTO `cart` VALUES (62, NULL, '2021-03-12 09:50:06.000000', '2021-03-12 09:50:06.000000', 0);
INSERT INTO `cart` VALUES (63, NULL, '2021-03-12 09:52:07.000000', '2021-03-12 09:52:07.000000', 0);
INSERT INTO `cart` VALUES (64, NULL, '2021-03-12 09:52:20.000000', '2021-03-12 09:52:20.000000', 0);
INSERT INTO `cart` VALUES (65, NULL, '2021-03-12 09:52:21.000000', '2021-03-12 09:52:21.000000', 0);
INSERT INTO `cart` VALUES (66, NULL, '2021-03-12 09:52:40.000000', '2021-03-12 09:52:40.000000', 0);
INSERT INTO `cart` VALUES (67, NULL, '2021-03-12 09:53:15.000000', '2021-03-12 09:53:15.000000', 0);
INSERT INTO `cart` VALUES (68, NULL, '2021-03-12 09:53:15.000000', '2021-03-12 09:53:15.000000', 0);
INSERT INTO `cart` VALUES (69, NULL, '2021-03-12 09:53:16.000000', '2021-03-12 09:53:16.000000', 0);
INSERT INTO `cart` VALUES (70, NULL, '2021-03-12 09:53:16.000000', '2021-03-12 09:53:16.000000', 0);
INSERT INTO `cart` VALUES (71, NULL, '2021-03-12 09:53:17.000000', '2021-03-12 09:53:17.000000', 0);
INSERT INTO `cart` VALUES (72, NULL, '2021-03-12 09:53:17.000000', '2021-03-12 09:53:17.000000', 0);
INSERT INTO `cart` VALUES (73, NULL, '2021-03-12 09:53:48.000000', '2021-03-12 09:53:48.000000', 0);
INSERT INTO `cart` VALUES (74, NULL, '2021-03-12 09:54:11.000000', '2021-03-12 09:54:11.000000', 0);
COMMIT;

-- ----------------------------
-- Table structure for cart_details
-- ----------------------------
DROP TABLE IF EXISTS `cart_details`;
CREATE TABLE `cart_details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `cart_id` int unsigned NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cart_details
-- ----------------------------
BEGIN;
INSERT INTO `cart_details` VALUES (33, 1, 6, 10, '2021-03-11 07:50:30.000000', '2021-03-11 07:50:30.000000', 1);
INSERT INTO `cart_details` VALUES (34, 2, 6, 10, '2021-03-11 07:52:11.000000', '2021-03-11 07:52:11.000000', 1);
INSERT INTO `cart_details` VALUES (35, 1, 8, 10, '2021-03-11 07:52:13.000000', '2021-03-11 07:52:13.000000', 1);
INSERT INTO `cart_details` VALUES (36, 1, 9, 10, '2021-03-11 07:52:13.000000', '2021-03-11 07:52:13.000000', 1);
INSERT INTO `cart_details` VALUES (37, 1, 10, 10, '2021-03-11 07:52:14.000000', '2021-03-11 07:52:14.000000', 1);
INSERT INTO `cart_details` VALUES (38, 1, 11, 10, '2021-03-11 07:52:14.000000', '2021-03-11 07:52:14.000000', 1);
INSERT INTO `cart_details` VALUES (39, 1, 12, 10, '2021-03-11 07:52:15.000000', '2021-03-11 07:52:15.000000', 1);
INSERT INTO `cart_details` VALUES (40, 1, 13, 10, '2021-03-11 07:52:15.000000', '2021-03-11 07:52:15.000000', 1);
INSERT INTO `cart_details` VALUES (41, 1, 14, 10, '2021-03-11 07:52:15.000000', '2021-03-11 07:52:15.000000', 1);
INSERT INTO `cart_details` VALUES (42, 1, 15, 10, '2021-03-11 07:52:15.000000', '2021-03-11 07:52:15.000000', 1);
INSERT INTO `cart_details` VALUES (43, 1, 16, 10, '2021-03-11 07:52:16.000000', '2021-03-11 07:52:16.000000', 1);
INSERT INTO `cart_details` VALUES (44, 1, 17, 10, '2021-03-11 07:53:00.000000', '2021-03-11 07:53:00.000000', 1);
INSERT INTO `cart_details` VALUES (45, 1, 18, 10, '2021-03-11 07:53:01.000000', '2021-03-11 07:53:01.000000', 1);
INSERT INTO `cart_details` VALUES (46, 1, 19, 10, '2021-03-11 07:53:01.000000', '2021-03-11 07:53:01.000000', 1);
INSERT INTO `cart_details` VALUES (47, 1, 20, 10, '2021-03-11 07:53:02.000000', '2021-03-11 07:53:02.000000', 1);
INSERT INTO `cart_details` VALUES (48, 1, 21, 10, '2021-03-11 07:53:02.000000', '2021-03-11 07:53:02.000000', 1);
INSERT INTO `cart_details` VALUES (49, 1, 22, 10, '2021-03-11 07:53:02.000000', '2021-03-11 07:53:02.000000', 1);
INSERT INTO `cart_details` VALUES (50, 1, 23, 10, '2021-03-11 07:53:02.000000', '2021-03-11 07:53:02.000000', 1);
INSERT INTO `cart_details` VALUES (51, 1, 24, 10, '2021-03-11 07:53:03.000000', '2021-03-11 07:53:03.000000', 1);
INSERT INTO `cart_details` VALUES (52, 1, 25, 10, '2021-03-11 07:53:44.000000', '2021-03-11 07:53:44.000000', 1);
INSERT INTO `cart_details` VALUES (53, 1, 26, 10, '2021-03-11 07:53:48.000000', '2021-03-11 07:53:48.000000', 1);
INSERT INTO `cart_details` VALUES (54, 1, 27, 10, '2021-03-11 07:53:49.000000', '2021-03-11 07:53:49.000000', 1);
INSERT INTO `cart_details` VALUES (55, 1, 28, 10, '2021-03-11 07:53:49.000000', '2021-03-11 07:53:49.000000', 1);
INSERT INTO `cart_details` VALUES (56, 1, 29, 10, '2021-03-11 07:53:50.000000', '2021-03-11 07:53:50.000000', 1);
INSERT INTO `cart_details` VALUES (57, 1, 30, 10, '2021-03-11 07:53:59.000000', '2021-03-11 07:53:59.000000', 1);
INSERT INTO `cart_details` VALUES (58, 1, 31, 10, '2021-03-11 07:54:38.000000', '2021-03-11 07:54:38.000000', 1);
INSERT INTO `cart_details` VALUES (59, 1, 32, 10, '2021-03-12 09:43:00.000000', '2021-03-12 09:43:00.000000', 1);
INSERT INTO `cart_details` VALUES (60, 1, 33, 10, '2021-03-12 09:43:01.000000', '2021-03-12 09:43:01.000000', 1);
INSERT INTO `cart_details` VALUES (61, 1, 34, 10, '2021-03-12 09:43:02.000000', '2021-03-12 09:43:02.000000', 1);
INSERT INTO `cart_details` VALUES (62, 1, 35, 10, '2021-03-12 09:43:02.000000', '2021-03-12 09:43:02.000000', 1);
INSERT INTO `cart_details` VALUES (63, 1, 36, 10, '2021-03-12 09:43:03.000000', '2021-03-12 09:43:03.000000', 1);
INSERT INTO `cart_details` VALUES (64, 1, 37, 10, '2021-03-12 09:43:03.000000', '2021-03-12 09:43:03.000000', 1);
INSERT INTO `cart_details` VALUES (65, 1, 38, 10, '2021-03-12 09:43:04.000000', '2021-03-12 09:43:04.000000', 1);
INSERT INTO `cart_details` VALUES (66, 1, 39, 10, '2021-03-12 09:43:05.000000', '2021-03-12 09:43:05.000000', 1);
INSERT INTO `cart_details` VALUES (67, 1, 40, 10, '2021-03-12 09:43:06.000000', '2021-03-12 09:43:06.000000', 1);
INSERT INTO `cart_details` VALUES (68, 1, 41, 10, '2021-03-12 09:43:07.000000', '2021-03-12 09:43:07.000000', 1);
INSERT INTO `cart_details` VALUES (69, 1, 42, 10, '2021-03-12 09:43:08.000000', '2021-03-12 09:43:08.000000', 1);
INSERT INTO `cart_details` VALUES (70, 1, 43, 10, '2021-03-12 09:43:08.000000', '2021-03-12 09:43:08.000000', 1);
INSERT INTO `cart_details` VALUES (71, 1, 44, 10, '2021-03-12 09:43:09.000000', '2021-03-12 09:43:09.000000', 1);
INSERT INTO `cart_details` VALUES (72, 1, 45, 10, '2021-03-12 09:43:09.000000', '2021-03-12 09:43:09.000000', 1);
INSERT INTO `cart_details` VALUES (73, 1, 46, 10, '2021-03-12 09:43:09.000000', '2021-03-12 09:43:09.000000', 1);
INSERT INTO `cart_details` VALUES (74, 1, 47, 10, '2021-03-12 09:43:09.000000', '2021-03-12 09:43:09.000000', 1);
INSERT INTO `cart_details` VALUES (75, 1, 48, 10, '2021-03-12 09:43:10.000000', '2021-03-12 09:43:10.000000', 1);
INSERT INTO `cart_details` VALUES (76, 1, 49, 10, '2021-03-12 09:43:10.000000', '2021-03-12 09:43:10.000000', 1);
INSERT INTO `cart_details` VALUES (77, 1, 50, 10, '2021-03-12 09:43:11.000000', '2021-03-12 09:43:11.000000', 1);
INSERT INTO `cart_details` VALUES (78, 1, 51, 10, '2021-03-12 09:43:11.000000', '2021-03-12 09:43:11.000000', 1);
INSERT INTO `cart_details` VALUES (79, 1, 52, 10, '2021-03-12 09:43:11.000000', '2021-03-12 09:43:11.000000', 1);
INSERT INTO `cart_details` VALUES (80, 1, 53, 10, '2021-03-12 09:43:12.000000', '2021-03-12 09:43:12.000000', 1);
INSERT INTO `cart_details` VALUES (81, 1, 54, 10, '2021-03-12 09:43:12.000000', '2021-03-12 09:43:12.000000', 1);
INSERT INTO `cart_details` VALUES (82, 1, 55, 10, '2021-03-12 09:43:13.000000', '2021-03-12 09:43:13.000000', 1);
INSERT INTO `cart_details` VALUES (83, 1, 56, 10, '2021-03-12 09:43:13.000000', '2021-03-12 09:43:13.000000', 1);
INSERT INTO `cart_details` VALUES (84, 1, 57, 10, '2021-03-12 09:43:13.000000', '2021-03-12 09:43:13.000000', 1);
INSERT INTO `cart_details` VALUES (85, 1, 58, 10, '2021-03-12 09:48:17.000000', '2021-03-12 09:48:17.000000', 1);
INSERT INTO `cart_details` VALUES (86, 1, 59, 10, '2021-03-12 09:48:39.000000', '2021-03-12 09:48:39.000000', 1);
INSERT INTO `cart_details` VALUES (87, 1, 60, 10, '2021-03-12 09:49:36.000000', '2021-03-12 09:49:36.000000', 1);
INSERT INTO `cart_details` VALUES (88, 1, 61, 10, '2021-03-12 09:49:37.000000', '2021-03-12 09:49:37.000000', 1);
INSERT INTO `cart_details` VALUES (89, 1, 62, 10, '2021-03-12 09:50:06.000000', '2021-03-12 09:50:06.000000', 1);
INSERT INTO `cart_details` VALUES (90, 1, 63, 10, '2021-03-12 09:52:07.000000', '2021-03-12 09:52:07.000000', 1);
INSERT INTO `cart_details` VALUES (91, 1, 64, 10, '2021-03-12 09:52:20.000000', '2021-03-12 09:52:20.000000', 1);
INSERT INTO `cart_details` VALUES (92, 1, 65, 10, '2021-03-12 09:52:21.000000', '2021-03-12 09:52:21.000000', 1);
INSERT INTO `cart_details` VALUES (93, 1, 66, 10, '2021-03-12 09:52:40.000000', '2021-03-12 09:52:40.000000', 1);
INSERT INTO `cart_details` VALUES (94, 1, 67, 10, '2021-03-12 09:53:15.000000', '2021-03-12 09:53:15.000000', 1);
INSERT INTO `cart_details` VALUES (95, 1, 68, 10, '2021-03-12 09:53:15.000000', '2021-03-12 09:53:15.000000', 1);
INSERT INTO `cart_details` VALUES (96, 1, 69, 10, '2021-03-12 09:53:16.000000', '2021-03-12 09:53:16.000000', 1);
INSERT INTO `cart_details` VALUES (97, 1, 70, 10, '2021-03-12 09:53:16.000000', '2021-03-12 09:53:16.000000', 1);
INSERT INTO `cart_details` VALUES (98, 1, 71, 10, '2021-03-12 09:53:17.000000', '2021-03-12 09:53:17.000000', 1);
INSERT INTO `cart_details` VALUES (99, 1, 72, 10, '2021-03-12 09:53:17.000000', '2021-03-12 09:53:17.000000', 1);
INSERT INTO `cart_details` VALUES (100, 1, 73, 10, '2021-03-12 09:53:48.000000', '2021-03-12 09:53:48.000000', 1);
INSERT INTO `cart_details` VALUES (101, 1, 74, 10, '2021-03-12 09:54:11.000000', '2021-03-12 09:54:11.000000', 1);
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 'Libros', 1, '2021-03-10 10:45:49', '2021-03-10 10:45:51');
COMMIT;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `status_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `cities_department_id_idx` (`department_id`),
  KEY `cities_status_id_idx` (`status_id`),
  CONSTRAINT `cities_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `cities_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cities
-- ----------------------------
BEGIN;
INSERT INTO `cities` VALUES (1, 1, 'Bogotá', 1, '2020-03-14 00:00:00', '2020-03-14 00:00:00');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
BEGIN;
INSERT INTO `countries` VALUES (1, 'Colombia', '2020-03-14 00:00:00', '2020-03-14 00:00:00');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
BEGIN;
INSERT INTO `departments` VALUES (1, 'Cundinamarca', '2020-03-14 00:00:00', '2020-03-14 00:00:00', 1, 1);
COMMIT;

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
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `user_id` int unsigned NOT NULL,
  `revoked` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `access_token_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
BEGIN;
INSERT INTO `oauth_access_tokens` VALUES (1, '00000000-0000-0000-0000-000000000000', 0, 0, '2021-03-05 20:43:47', '2021-03-05 20:43:47', '2021-03-07 01:37:37');
INSERT INTO `oauth_access_tokens` VALUES (5, '2a394b75-a6a0-4b5d-b917-190b508461a0', 0, 0, '2021-03-05 20:53:52', '2021-03-05 20:53:52', '2021-03-07 01:53:48');
INSERT INTO `oauth_access_tokens` VALUES (6, '930b2088-1438-4923-9f25-69828e4e0151', 0, 0, '2021-03-05 20:53:55', '2021-03-05 20:53:55', '2021-03-07 01:53:48');
INSERT INTO `oauth_access_tokens` VALUES (7, '019bd368-a33d-4224-9d1c-97a3492d3a03', 0, 0, '2021-03-05 20:53:57', '2021-03-05 20:53:57', '2021-03-07 01:53:48');
INSERT INTO `oauth_access_tokens` VALUES (8, 'b83f1572-a1f7-4741-a30e-c83bda0656d8', 0, 0, '2021-03-05 20:55:56', '2021-03-05 20:55:56', '2021-03-07 01:55:51');
INSERT INTO `oauth_access_tokens` VALUES (9, '20d5c23a-6259-4e62-89bb-7ce5ee9b7556', 0, 0, '2021-03-05 20:56:53', '2021-03-05 20:56:53', '2021-03-07 01:56:45');
INSERT INTO `oauth_access_tokens` VALUES (10, '14053bab-3f1b-4d0c-971b-cc43dc66f094', 43, 0, '2021-03-05 20:57:57', '2021-03-05 20:57:57', '2021-03-07 01:57:54');
INSERT INTO `oauth_access_tokens` VALUES (11, 'd94aaac9-e268-4aee-a989-2cb19c37191c', 43, 0, '2021-03-05 21:02:19', '2021-03-05 21:02:19', '2021-03-07 02:02:14');
INSERT INTO `oauth_access_tokens` VALUES (12, '470ce81c-5f4b-4d37-bb06-78fc796a2ce3', 43, 0, '2021-03-05 21:18:58', '2021-03-05 21:18:58', '2021-03-06 21:18:46');
INSERT INTO `oauth_access_tokens` VALUES (13, '20a55812-2ac9-450e-b454-435918db344e', 43, 0, '2021-03-05 21:22:26', '2021-03-05 21:22:26', '2021-03-06 21:22:04');
INSERT INTO `oauth_access_tokens` VALUES (14, 'c4b6c854-ba68-4d0f-b7e9-66a492157709', 43, 0, '2021-03-05 21:25:19', '2021-03-05 21:25:19', '2021-03-06 21:25:13');
INSERT INTO `oauth_access_tokens` VALUES (15, 'f4b2a5e2-2eed-4cf4-ad53-b03b8c6217fb', 43, 0, '2021-03-06 10:14:32', '2021-03-06 10:14:32', '2021-03-06 11:36:00');
INSERT INTO `oauth_access_tokens` VALUES (16, '627a9453-9ae1-4885-bf8d-92b9674b42d9', 2, 0, '2021-03-14 09:37:52', '2021-03-14 09:37:52', '2021-03-15 09:37:33');
INSERT INTO `oauth_access_tokens` VALUES (17, '21649fe3-af63-4381-bab9-83cb3dd48574', 2, 0, '2021-03-14 11:15:21', '2021-03-14 11:15:21', '2021-03-15 11:08:06');
INSERT INTO `oauth_access_tokens` VALUES (18, 'd26d54bc-5f61-4e70-9688-08de6c4d4e1c', 2, 0, '2021-03-18 20:48:55', '2021-03-18 20:48:55', '2021-03-19 20:48:28');
INSERT INTO `oauth_access_tokens` VALUES (19, 'aad0991b-c2d9-43bf-ad5f-d489038c6966', 4, 0, '2021-03-19 17:43:20', '2021-03-19 17:43:20', '2021-03-20 17:14:22');
INSERT INTO `oauth_access_tokens` VALUES (20, '4c35df49-0408-4579-9bec-c24028b5a747', 4, 0, '2021-03-19 17:49:33', '2021-03-19 17:49:33', '2021-03-20 17:14:22');
INSERT INTO `oauth_access_tokens` VALUES (21, 'b0655b34-59a7-4b36-8a22-78941bce34da', 4, 0, '2021-03-20 20:11:34', '2021-03-20 20:11:34', '2021-03-21 18:56:56');
COMMIT;

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `token_id` int unsigned NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`token_id`),
  CONSTRAINT `oauth_refresh_tokens_token_id` FOREIGN KEY (`token_id`) REFERENCES `oauth_access_tokens` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
BEGIN;
INSERT INTO `oauth_refresh_tokens` VALUES (1, 1, 0, '2021-03-12 17:37:37', '2021-03-05 20:43:47', '2021-03-05 20:43:47');
INSERT INTO `oauth_refresh_tokens` VALUES (2, 5, 0, '2021-03-12 17:53:48', '2021-03-05 20:53:52', '2021-03-05 20:53:52');
INSERT INTO `oauth_refresh_tokens` VALUES (3, 6, 0, '2021-03-12 17:53:48', '2021-03-05 20:53:55', '2021-03-05 20:53:55');
INSERT INTO `oauth_refresh_tokens` VALUES (4, 7, 0, '2021-03-12 17:53:48', '2021-03-05 20:53:57', '2021-03-05 20:53:57');
INSERT INTO `oauth_refresh_tokens` VALUES (5, 8, 0, '2021-03-12 17:55:51', '2021-03-05 20:55:56', '2021-03-05 20:55:56');
INSERT INTO `oauth_refresh_tokens` VALUES (6, 9, 0, '2021-03-12 17:56:45', '2021-03-05 20:56:53', '2021-03-05 20:56:53');
INSERT INTO `oauth_refresh_tokens` VALUES (7, 10, 0, '2021-03-12 17:57:54', '2021-03-05 20:57:57', '2021-03-05 20:57:57');
INSERT INTO `oauth_refresh_tokens` VALUES (8, 11, 0, '2021-03-12 18:02:14', '2021-03-05 21:02:19', '2021-03-05 21:02:19');
INSERT INTO `oauth_refresh_tokens` VALUES (9, 12, 0, '2021-03-12 21:18:46', '2021-03-05 21:18:58', '2021-03-05 21:18:58');
INSERT INTO `oauth_refresh_tokens` VALUES (10, 13, 0, '2021-03-12 21:22:04', '2021-03-05 21:22:26', '2021-03-05 21:22:26');
INSERT INTO `oauth_refresh_tokens` VALUES (11, 14, 0, '2021-03-12 21:25:13', '2021-03-05 21:25:19', '2021-03-05 21:25:19');
INSERT INTO `oauth_refresh_tokens` VALUES (12, 15, 0, '2021-03-13 10:13:20', '2021-03-06 10:14:32', '2021-03-06 10:14:32');
INSERT INTO `oauth_refresh_tokens` VALUES (13, 16, 0, '2021-03-21 09:37:33', '2021-03-14 09:37:52', '2021-03-14 09:37:52');
INSERT INTO `oauth_refresh_tokens` VALUES (14, 17, 0, '2021-03-21 11:08:06', '2021-03-14 11:15:21', '2021-03-14 11:15:21');
INSERT INTO `oauth_refresh_tokens` VALUES (15, 18, 0, '2021-03-25 20:48:28', '2021-03-18 20:48:55', '2021-03-18 20:48:55');
INSERT INTO `oauth_refresh_tokens` VALUES (16, 19, 0, '2021-03-26 17:14:22', '2021-03-19 17:43:20', '2021-03-19 17:43:20');
INSERT INTO `oauth_refresh_tokens` VALUES (17, 20, 0, '2021-03-26 17:14:22', '2021-03-19 17:49:33', '2021-03-19 17:49:33');
INSERT INTO `oauth_refresh_tokens` VALUES (18, 21, 0, '2021-03-27 18:56:56', '2021-03-20 20:11:34', '2021-03-20 20:11:34');
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
  `puchase_status_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `od_reference_id_idx` (`reference_id`),
  KEY `od_order_id_idx` (`order_id`),
  KEY `od_puchase_status_id_idx` (`puchase_status_id`),
  CONSTRAINT `od_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `od_puchase_status_id` FOREIGN KEY (`puchase_status_id`) REFERENCES `purchase_statuses` (`id`),
  CONSTRAINT `od_reference_id` FOREIGN KEY (`reference_id`) REFERENCES `references` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_details
-- ----------------------------
BEGIN;
INSERT INTO `order_details` VALUES (8, 16, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-18 20:49:14', '2021-03-18 20:49:14');
INSERT INTO `order_details` VALUES (9, 16, 6, 'rojo', 10000, 2, 9000, 1, '2021-03-18 20:49:14', '2021-03-18 20:49:14');
INSERT INTO `order_details` VALUES (10, 17, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-18 21:42:42', '2021-03-18 21:42:42');
INSERT INTO `order_details` VALUES (11, 17, 6, 'rojo', 10000, 2, 9000, 1, '2021-03-18 21:42:42', '2021-03-18 21:42:42');
INSERT INTO `order_details` VALUES (12, 18, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-18 22:12:23', '2021-03-18 22:12:23');
INSERT INTO `order_details` VALUES (13, 18, 6, 'Figuras Geometricas texturas', 10000, 2, 9000, 1, '2021-03-18 22:12:23', '2021-03-18 22:12:23');
INSERT INTO `order_details` VALUES (14, 19, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-18 22:16:06', '2021-03-18 22:16:06');
INSERT INTO `order_details` VALUES (15, 19, 6, 'Figuras Geometricas texturas', 10000, 2, 9000, 1, '2021-03-18 22:16:06', '2021-03-18 22:16:06');
INSERT INTO `order_details` VALUES (16, 20, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-18 22:16:43', '2021-03-18 22:16:43');
INSERT INTO `order_details` VALUES (17, 20, 6, 'Figuras Geometricas texturas', 10000, 2, 9000, 1, '2021-03-18 22:16:43', '2021-03-18 22:16:43');
INSERT INTO `order_details` VALUES (18, 21, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 17:52:02', '2021-03-19 17:52:02');
INSERT INTO `order_details` VALUES (19, 22, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:03:03', '2021-03-19 18:03:03');
INSERT INTO `order_details` VALUES (20, 23, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:03:05', '2021-03-19 18:03:05');
INSERT INTO `order_details` VALUES (21, 24, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:03:06', '2021-03-19 18:03:06');
INSERT INTO `order_details` VALUES (22, 25, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:03:06', '2021-03-19 18:03:06');
INSERT INTO `order_details` VALUES (23, 26, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:03:07', '2021-03-19 18:03:07');
INSERT INTO `order_details` VALUES (24, 27, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:03:07', '2021-03-19 18:03:07');
INSERT INTO `order_details` VALUES (25, 28, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:22:34', '2021-03-19 18:22:34');
INSERT INTO `order_details` VALUES (26, 29, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:22:42', '2021-03-19 18:22:42');
INSERT INTO `order_details` VALUES (27, 30, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:25:25', '2021-03-19 18:25:25');
INSERT INTO `order_details` VALUES (28, 31, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:29:49', '2021-03-19 18:29:49');
INSERT INTO `order_details` VALUES (29, 32, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:30:17', '2021-03-19 18:30:17');
INSERT INTO `order_details` VALUES (30, 33, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:32:22', '2021-03-19 18:32:22');
INSERT INTO `order_details` VALUES (31, 34, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:32:36', '2021-03-19 18:32:36');
INSERT INTO `order_details` VALUES (32, 35, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:32:51', '2021-03-19 18:32:51');
INSERT INTO `order_details` VALUES (33, 36, 10, 'Pulpo ', 10000, 1, 10000, 1, '2021-03-19 18:33:10', '2021-03-19 18:33:10');
INSERT INTO `order_details` VALUES (34, 37, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 20:45:03', '2021-03-20 20:45:03');
INSERT INTO `order_details` VALUES (35, 38, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 20:46:17', '2021-03-20 20:46:17');
INSERT INTO `order_details` VALUES (36, 38, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 20:46:17', '2021-03-20 20:46:17');
INSERT INTO `order_details` VALUES (37, 39, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 21:02:12', '2021-03-20 21:02:12');
INSERT INTO `order_details` VALUES (38, 39, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 21:02:12', '2021-03-20 21:02:12');
INSERT INTO `order_details` VALUES (39, 40, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 21:03:46', '2021-03-20 21:03:46');
INSERT INTO `order_details` VALUES (40, 40, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 21:03:46', '2021-03-20 21:03:46');
INSERT INTO `order_details` VALUES (41, 41, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 21:06:14', '2021-03-20 21:06:14');
INSERT INTO `order_details` VALUES (42, 41, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 21:06:14', '2021-03-20 21:06:14');
INSERT INTO `order_details` VALUES (43, 42, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 21:07:00', '2021-03-20 21:07:00');
INSERT INTO `order_details` VALUES (44, 42, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 21:07:00', '2021-03-20 21:07:00');
INSERT INTO `order_details` VALUES (45, 43, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 21:07:59', '2021-03-20 21:07:59');
INSERT INTO `order_details` VALUES (46, 43, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 21:07:59', '2021-03-20 21:07:59');
INSERT INTO `order_details` VALUES (47, 44, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 21:08:17', '2021-03-20 21:08:17');
INSERT INTO `order_details` VALUES (48, 44, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 21:08:17', '2021-03-20 21:08:17');
INSERT INTO `order_details` VALUES (49, 45, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:02:42', '2021-03-20 22:02:42');
INSERT INTO `order_details` VALUES (50, 45, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:02:42', '2021-03-20 22:02:42');
INSERT INTO `order_details` VALUES (51, 46, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:09:56', '2021-03-20 22:09:56');
INSERT INTO `order_details` VALUES (52, 46, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:09:56', '2021-03-20 22:09:56');
INSERT INTO `order_details` VALUES (53, 47, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:26:42', '2021-03-20 22:26:42');
INSERT INTO `order_details` VALUES (54, 47, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:26:42', '2021-03-20 22:26:42');
INSERT INTO `order_details` VALUES (55, 47, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:26:42', '2021-03-20 22:26:42');
INSERT INTO `order_details` VALUES (56, 48, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:26:48', '2021-03-20 22:26:48');
INSERT INTO `order_details` VALUES (57, 48, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:26:48', '2021-03-20 22:26:48');
INSERT INTO `order_details` VALUES (58, 48, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:26:48', '2021-03-20 22:26:48');
INSERT INTO `order_details` VALUES (59, 49, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:46', '2021-03-20 22:37:46');
INSERT INTO `order_details` VALUES (60, 49, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:46', '2021-03-20 22:37:46');
INSERT INTO `order_details` VALUES (61, 49, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:46', '2021-03-20 22:37:46');
INSERT INTO `order_details` VALUES (62, 50, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:49', '2021-03-20 22:37:49');
INSERT INTO `order_details` VALUES (63, 50, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:49', '2021-03-20 22:37:49');
INSERT INTO `order_details` VALUES (64, 50, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:49', '2021-03-20 22:37:49');
INSERT INTO `order_details` VALUES (65, 51, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:51', '2021-03-20 22:37:51');
INSERT INTO `order_details` VALUES (66, 51, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:51', '2021-03-20 22:37:51');
INSERT INTO `order_details` VALUES (67, 51, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:51', '2021-03-20 22:37:51');
INSERT INTO `order_details` VALUES (68, 52, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:51', '2021-03-20 22:37:51');
INSERT INTO `order_details` VALUES (69, 52, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:51', '2021-03-20 22:37:51');
INSERT INTO `order_details` VALUES (70, 52, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:51', '2021-03-20 22:37:51');
INSERT INTO `order_details` VALUES (71, 53, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:52', '2021-03-20 22:37:52');
INSERT INTO `order_details` VALUES (72, 53, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:52', '2021-03-20 22:37:52');
INSERT INTO `order_details` VALUES (73, 53, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:52', '2021-03-20 22:37:52');
INSERT INTO `order_details` VALUES (74, 54, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:52', '2021-03-20 22:37:52');
INSERT INTO `order_details` VALUES (75, 54, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:52', '2021-03-20 22:37:52');
INSERT INTO `order_details` VALUES (76, 54, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:52', '2021-03-20 22:37:52');
INSERT INTO `order_details` VALUES (77, 55, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:53', '2021-03-20 22:37:53');
INSERT INTO `order_details` VALUES (78, 55, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:53', '2021-03-20 22:37:53');
INSERT INTO `order_details` VALUES (79, 55, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:53', '2021-03-20 22:37:53');
INSERT INTO `order_details` VALUES (80, 56, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:54', '2021-03-20 22:37:54');
INSERT INTO `order_details` VALUES (81, 56, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:54', '2021-03-20 22:37:54');
INSERT INTO `order_details` VALUES (82, 56, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:54', '2021-03-20 22:37:54');
INSERT INTO `order_details` VALUES (83, 57, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:54', '2021-03-20 22:37:54');
INSERT INTO `order_details` VALUES (84, 57, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:54', '2021-03-20 22:37:54');
INSERT INTO `order_details` VALUES (85, 57, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:54', '2021-03-20 22:37:54');
INSERT INTO `order_details` VALUES (86, 58, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:56', '2021-03-20 22:37:56');
INSERT INTO `order_details` VALUES (87, 58, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:56', '2021-03-20 22:37:56');
INSERT INTO `order_details` VALUES (88, 58, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:56', '2021-03-20 22:37:56');
INSERT INTO `order_details` VALUES (89, 59, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:58', '2021-03-20 22:37:58');
INSERT INTO `order_details` VALUES (90, 59, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:58', '2021-03-20 22:37:58');
INSERT INTO `order_details` VALUES (91, 59, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:58', '2021-03-20 22:37:58');
INSERT INTO `order_details` VALUES (92, 60, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:58', '2021-03-20 22:37:58');
INSERT INTO `order_details` VALUES (93, 60, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:58', '2021-03-20 22:37:58');
INSERT INTO `order_details` VALUES (94, 60, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:58', '2021-03-20 22:37:58');
INSERT INTO `order_details` VALUES (95, 61, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:37:59', '2021-03-20 22:37:59');
INSERT INTO `order_details` VALUES (96, 61, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:37:59', '2021-03-20 22:37:59');
INSERT INTO `order_details` VALUES (97, 61, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:37:59', '2021-03-20 22:37:59');
INSERT INTO `order_details` VALUES (98, 62, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:00', '2021-03-20 22:38:00');
INSERT INTO `order_details` VALUES (99, 62, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:00', '2021-03-20 22:38:00');
INSERT INTO `order_details` VALUES (100, 62, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:00', '2021-03-20 22:38:00');
INSERT INTO `order_details` VALUES (101, 63, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:00', '2021-03-20 22:38:00');
INSERT INTO `order_details` VALUES (102, 63, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:00', '2021-03-20 22:38:00');
INSERT INTO `order_details` VALUES (103, 63, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:00', '2021-03-20 22:38:00');
INSERT INTO `order_details` VALUES (104, 64, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:01', '2021-03-20 22:38:01');
INSERT INTO `order_details` VALUES (105, 64, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:01', '2021-03-20 22:38:01');
INSERT INTO `order_details` VALUES (106, 64, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:01', '2021-03-20 22:38:01');
INSERT INTO `order_details` VALUES (107, 65, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:01', '2021-03-20 22:38:01');
INSERT INTO `order_details` VALUES (108, 65, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:01', '2021-03-20 22:38:01');
INSERT INTO `order_details` VALUES (109, 65, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:01', '2021-03-20 22:38:01');
INSERT INTO `order_details` VALUES (110, 66, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:02', '2021-03-20 22:38:02');
INSERT INTO `order_details` VALUES (111, 66, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:02', '2021-03-20 22:38:02');
INSERT INTO `order_details` VALUES (112, 66, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:02', '2021-03-20 22:38:02');
INSERT INTO `order_details` VALUES (113, 67, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:02', '2021-03-20 22:38:02');
INSERT INTO `order_details` VALUES (114, 67, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:02', '2021-03-20 22:38:02');
INSERT INTO `order_details` VALUES (115, 67, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:02', '2021-03-20 22:38:02');
INSERT INTO `order_details` VALUES (116, 68, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:03', '2021-03-20 22:38:03');
INSERT INTO `order_details` VALUES (117, 68, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:03', '2021-03-20 22:38:03');
INSERT INTO `order_details` VALUES (118, 68, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:03', '2021-03-20 22:38:03');
INSERT INTO `order_details` VALUES (119, 69, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:04', '2021-03-20 22:38:04');
INSERT INTO `order_details` VALUES (120, 69, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:04', '2021-03-20 22:38:04');
INSERT INTO `order_details` VALUES (121, 69, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:04', '2021-03-20 22:38:04');
INSERT INTO `order_details` VALUES (122, 70, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:04', '2021-03-20 22:38:04');
INSERT INTO `order_details` VALUES (123, 70, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:04', '2021-03-20 22:38:04');
INSERT INTO `order_details` VALUES (124, 70, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:04', '2021-03-20 22:38:04');
INSERT INTO `order_details` VALUES (125, 71, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:05', '2021-03-20 22:38:05');
INSERT INTO `order_details` VALUES (126, 71, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:05', '2021-03-20 22:38:05');
INSERT INTO `order_details` VALUES (127, 71, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:05', '2021-03-20 22:38:05');
INSERT INTO `order_details` VALUES (128, 72, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:06', '2021-03-20 22:38:06');
INSERT INTO `order_details` VALUES (129, 72, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:06', '2021-03-20 22:38:06');
INSERT INTO `order_details` VALUES (130, 72, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:06', '2021-03-20 22:38:06');
INSERT INTO `order_details` VALUES (131, 73, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:06', '2021-03-20 22:38:06');
INSERT INTO `order_details` VALUES (132, 73, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:06', '2021-03-20 22:38:06');
INSERT INTO `order_details` VALUES (133, 73, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:06', '2021-03-20 22:38:06');
INSERT INTO `order_details` VALUES (134, 74, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:07', '2021-03-20 22:38:07');
INSERT INTO `order_details` VALUES (135, 74, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:07', '2021-03-20 22:38:07');
INSERT INTO `order_details` VALUES (136, 74, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:07', '2021-03-20 22:38:07');
INSERT INTO `order_details` VALUES (137, 75, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:08', '2021-03-20 22:38:08');
INSERT INTO `order_details` VALUES (138, 75, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:08', '2021-03-20 22:38:08');
INSERT INTO `order_details` VALUES (139, 75, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:08', '2021-03-20 22:38:08');
INSERT INTO `order_details` VALUES (140, 76, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:09', '2021-03-20 22:38:09');
INSERT INTO `order_details` VALUES (141, 76, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:09', '2021-03-20 22:38:09');
INSERT INTO `order_details` VALUES (142, 76, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:09', '2021-03-20 22:38:09');
INSERT INTO `order_details` VALUES (143, 77, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:09', '2021-03-20 22:38:09');
INSERT INTO `order_details` VALUES (144, 77, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:09', '2021-03-20 22:38:09');
INSERT INTO `order_details` VALUES (145, 77, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:09', '2021-03-20 22:38:09');
INSERT INTO `order_details` VALUES (146, 78, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:10', '2021-03-20 22:38:10');
INSERT INTO `order_details` VALUES (147, 78, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:10', '2021-03-20 22:38:10');
INSERT INTO `order_details` VALUES (148, 78, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:10', '2021-03-20 22:38:10');
INSERT INTO `order_details` VALUES (149, 79, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:11', '2021-03-20 22:38:11');
INSERT INTO `order_details` VALUES (150, 79, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:11', '2021-03-20 22:38:11');
INSERT INTO `order_details` VALUES (151, 79, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:11', '2021-03-20 22:38:11');
INSERT INTO `order_details` VALUES (152, 80, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:12', '2021-03-20 22:38:12');
INSERT INTO `order_details` VALUES (153, 80, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:12', '2021-03-20 22:38:12');
INSERT INTO `order_details` VALUES (154, 80, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:12', '2021-03-20 22:38:12');
INSERT INTO `order_details` VALUES (155, 81, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:12', '2021-03-20 22:38:12');
INSERT INTO `order_details` VALUES (156, 81, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:12', '2021-03-20 22:38:12');
INSERT INTO `order_details` VALUES (157, 81, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:12', '2021-03-20 22:38:12');
INSERT INTO `order_details` VALUES (158, 82, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:13', '2021-03-20 22:38:13');
INSERT INTO `order_details` VALUES (159, 82, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:13', '2021-03-20 22:38:13');
INSERT INTO `order_details` VALUES (160, 82, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:13', '2021-03-20 22:38:13');
INSERT INTO `order_details` VALUES (161, 83, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:14', '2021-03-20 22:38:14');
INSERT INTO `order_details` VALUES (162, 83, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:14', '2021-03-20 22:38:14');
INSERT INTO `order_details` VALUES (163, 83, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:14', '2021-03-20 22:38:14');
INSERT INTO `order_details` VALUES (164, 84, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:14', '2021-03-20 22:38:14');
INSERT INTO `order_details` VALUES (165, 84, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:14', '2021-03-20 22:38:14');
INSERT INTO `order_details` VALUES (166, 84, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:14', '2021-03-20 22:38:14');
INSERT INTO `order_details` VALUES (167, 85, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:15', '2021-03-20 22:38:15');
INSERT INTO `order_details` VALUES (168, 85, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:15', '2021-03-20 22:38:15');
INSERT INTO `order_details` VALUES (169, 85, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:15', '2021-03-20 22:38:15');
INSERT INTO `order_details` VALUES (170, 86, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:15', '2021-03-20 22:38:15');
INSERT INTO `order_details` VALUES (171, 86, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:15', '2021-03-20 22:38:15');
INSERT INTO `order_details` VALUES (172, 86, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:15', '2021-03-20 22:38:15');
INSERT INTO `order_details` VALUES (173, 87, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:16', '2021-03-20 22:38:16');
INSERT INTO `order_details` VALUES (174, 87, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:16', '2021-03-20 22:38:16');
INSERT INTO `order_details` VALUES (175, 87, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:16', '2021-03-20 22:38:16');
INSERT INTO `order_details` VALUES (176, 88, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:38:17', '2021-03-20 22:38:17');
INSERT INTO `order_details` VALUES (177, 88, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:38:17', '2021-03-20 22:38:17');
INSERT INTO `order_details` VALUES (178, 88, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:38:17', '2021-03-20 22:38:17');
INSERT INTO `order_details` VALUES (179, 89, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:44:37', '2021-03-20 22:44:37');
INSERT INTO `order_details` VALUES (180, 89, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:44:37', '2021-03-20 22:44:37');
INSERT INTO `order_details` VALUES (181, 89, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:44:37', '2021-03-20 22:44:37');
INSERT INTO `order_details` VALUES (182, 90, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:44:52', '2021-03-20 22:44:52');
INSERT INTO `order_details` VALUES (183, 90, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:44:52', '2021-03-20 22:44:52');
INSERT INTO `order_details` VALUES (184, 90, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:44:52', '2021-03-20 22:44:52');
INSERT INTO `order_details` VALUES (185, 91, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:44:54', '2021-03-20 22:44:54');
INSERT INTO `order_details` VALUES (186, 91, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:44:54', '2021-03-20 22:44:54');
INSERT INTO `order_details` VALUES (187, 91, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:44:54', '2021-03-20 22:44:54');
INSERT INTO `order_details` VALUES (188, 92, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:44:55', '2021-03-20 22:44:55');
INSERT INTO `order_details` VALUES (189, 92, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:44:55', '2021-03-20 22:44:55');
INSERT INTO `order_details` VALUES (190, 92, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:44:55', '2021-03-20 22:44:55');
INSERT INTO `order_details` VALUES (191, 93, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:44:56', '2021-03-20 22:44:56');
INSERT INTO `order_details` VALUES (192, 93, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:44:56', '2021-03-20 22:44:56');
INSERT INTO `order_details` VALUES (193, 93, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:44:56', '2021-03-20 22:44:56');
INSERT INTO `order_details` VALUES (194, 94, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:44:57', '2021-03-20 22:44:57');
INSERT INTO `order_details` VALUES (195, 94, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:44:57', '2021-03-20 22:44:57');
INSERT INTO `order_details` VALUES (196, 94, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:44:57', '2021-03-20 22:44:57');
INSERT INTO `order_details` VALUES (197, 95, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:45:32', '2021-03-20 22:45:32');
INSERT INTO `order_details` VALUES (198, 95, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:45:32', '2021-03-20 22:45:32');
INSERT INTO `order_details` VALUES (199, 95, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:45:32', '2021-03-20 22:45:32');
INSERT INTO `order_details` VALUES (200, 96, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:46:09', '2021-03-20 22:46:09');
INSERT INTO `order_details` VALUES (201, 96, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:46:09', '2021-03-20 22:46:09');
INSERT INTO `order_details` VALUES (202, 96, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:46:09', '2021-03-20 22:46:09');
INSERT INTO `order_details` VALUES (203, 97, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:48:56', '2021-03-20 22:48:56');
INSERT INTO `order_details` VALUES (204, 97, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:48:56', '2021-03-20 22:48:56');
INSERT INTO `order_details` VALUES (205, 97, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:48:56', '2021-03-20 22:48:56');
INSERT INTO `order_details` VALUES (206, 98, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:50:48', '2021-03-20 22:50:48');
INSERT INTO `order_details` VALUES (207, 98, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:50:48', '2021-03-20 22:50:48');
INSERT INTO `order_details` VALUES (208, 98, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:50:48', '2021-03-20 22:50:48');
INSERT INTO `order_details` VALUES (209, 99, 21, 'Tangram', 15000, 10, 15000, 1, '2021-03-20 22:51:08', '2021-03-20 22:51:08');
INSERT INTO `order_details` VALUES (210, 99, 1, 'rojo', 10000, 1, 8500, 1, '2021-03-20 22:51:08', '2021-03-20 22:51:08');
INSERT INTO `order_details` VALUES (211, 99, 2, 'verde', 20000, 1, 17000, 1, '2021-03-20 22:51:08', '2021-03-20 22:51:08');
COMMIT;

-- ----------------------------
-- Table structure for order_details_activity
-- ----------------------------
DROP TABLE IF EXISTS `order_details_activity`;
CREATE TABLE `order_details_activity` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_detail_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `purchase_status_id` int unsigned NOT NULL,
  `reference_name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `price_with_discount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `order_details_activity_order_detail_id_idx` (`order_detail_id`),
  KEY `order_details_activity_reference_id_idx` (`reference_id`),
  KEY `order_details_activity_purchase_status_id_idx` (`purchase_status_id`),
  CONSTRAINT `order_details_activity_order_detail_id` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`id`),
  CONSTRAINT `order_details_activity_purchase_status_id` FOREIGN KEY (`purchase_status_id`) REFERENCES `purchase_statuses` (`id`),
  CONSTRAINT `order_details_activity_reference_id` FOREIGN KEY (`reference_id`) REFERENCES `references` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order_details_activity
-- ----------------------------
BEGIN;
INSERT INTO `order_details_activity` VALUES (1, 12, 5, 1, 'Mono con bananas', 12000, 9000, '2021-03-18 22:12:23', '2021-03-18 22:12:23');
INSERT INTO `order_details_activity` VALUES (2, 14, 5, 1, 'Mono con bananas', 12000, 12000, '2021-03-18 22:16:06', '2021-03-18 22:16:06');
INSERT INTO `order_details_activity` VALUES (3, 34, 5, 1, 'Mono con bananas', 12000, 12000, '2021-03-20 20:45:03', '2021-03-20 20:45:03');
INSERT INTO `order_details_activity` VALUES (4, 35, 5, 1, 'Mono con bananas', 12000, 12000, '2021-03-20 20:46:17', '2021-03-20 20:46:17');
INSERT INTO `order_details_activity` VALUES (5, 37, 5, 1, 'Mono con bananas', 12000, 12000, '2021-03-20 21:02:12', '2021-03-20 21:02:12');
INSERT INTO `order_details_activity` VALUES (6, 39, 5, 1, 'Mono con bananas', 12000, 12000, '2021-03-20 21:03:46', '2021-03-20 21:03:46');
INSERT INTO `order_details_activity` VALUES (7, 41, 5, 1, 'Mono con bananas', 12000, 12000, '2021-03-20 21:06:14', '2021-03-20 21:06:14');
INSERT INTO `order_details_activity` VALUES (8, 43, 5, 1, 'Mono con bananas', 12000, 12000, '2021-03-20 21:07:00', '2021-03-20 21:07:00');
INSERT INTO `order_details_activity` VALUES (9, 45, 5, 1, 'Mono con bananas', 12000, 12000, '2021-03-20 21:07:59', '2021-03-20 21:07:59');
INSERT INTO `order_details_activity` VALUES (10, 47, 5, 1, 'Mono con bananas', 12000, 12000, '2021-03-20 21:08:17', '2021-03-20 21:08:17');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `phone_id` int unsigned NOT NULL,
  `address_id` int unsigned NOT NULL,
  `city_id` int unsigned NOT NULL,
  `puchase_status_id` int unsigned NOT NULL,
  `total` double NOT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `orders_user_id_idx` (`user_id`),
  KEY `orders_puchase_status_id_idx` (`puchase_status_id`),
  KEY `orders_address_id_idx` (`address_id`),
  KEY `orders_phone_id_idx` (`phone_id`),
  KEY `orders_city_id_idx` (`city_id`),
  CONSTRAINT `orders_address_id` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  CONSTRAINT `orders_city_id` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `orders_phone_id` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`id`),
  CONSTRAINT `orders_puchase_status_id` FOREIGN KEY (`puchase_status_id`) REFERENCES `purchase_statuses` (`id`),
  CONSTRAINT `orders_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (16, 2, 1, 1, 1, 2, 26500, '', '2021-03-18 20:49:14', '2021-03-18 20:49:14');
INSERT INTO `orders` VALUES (17, 2, 1, 1, 1, 2, 26500, '', '2021-03-18 21:42:42', '2021-03-18 21:42:42');
INSERT INTO `orders` VALUES (18, 2, 1, 1, 1, 2, 26500, '', '2021-03-18 22:12:23', '2021-03-18 22:12:23');
INSERT INTO `orders` VALUES (19, 2, 1, 1, 1, 2, 26500, '', '2021-03-18 22:16:06', '2021-03-18 22:16:06');
INSERT INTO `orders` VALUES (20, 2, 1, 1, 1, 2, 26500, '', '2021-03-18 22:16:43', '2021-03-18 22:16:43');
INSERT INTO `orders` VALUES (21, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 17:52:02', '2021-03-19 17:52:02');
INSERT INTO `orders` VALUES (22, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:03:03', '2021-03-19 18:03:03');
INSERT INTO `orders` VALUES (23, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:03:05', '2021-03-19 18:03:05');
INSERT INTO `orders` VALUES (24, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:03:06', '2021-03-19 18:03:06');
INSERT INTO `orders` VALUES (25, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:03:06', '2021-03-19 18:03:06');
INSERT INTO `orders` VALUES (26, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:03:07', '2021-03-19 18:03:07');
INSERT INTO `orders` VALUES (27, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:03:07', '2021-03-19 18:03:07');
INSERT INTO `orders` VALUES (28, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:22:34', '2021-03-19 18:22:34');
INSERT INTO `orders` VALUES (29, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:22:42', '2021-03-19 18:22:42');
INSERT INTO `orders` VALUES (30, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:25:25', '2021-03-19 18:25:25');
INSERT INTO `orders` VALUES (31, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:29:49', '2021-03-19 18:29:49');
INSERT INTO `orders` VALUES (32, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:30:17', '2021-03-19 18:30:17');
INSERT INTO `orders` VALUES (33, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:32:22', '2021-03-19 18:32:22');
INSERT INTO `orders` VALUES (34, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:32:36', '2021-03-19 18:32:36');
INSERT INTO `orders` VALUES (35, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:32:51', '2021-03-19 18:32:51');
INSERT INTO `orders` VALUES (36, 4, 1, 1, 1, 2, 10000, '', '2021-03-19 18:33:10', '2021-03-19 18:33:10');
INSERT INTO `orders` VALUES (37, 4, 1, 1, 1, 2, 8500, '', '2021-03-20 20:45:03', '2021-03-20 20:45:03');
INSERT INTO `orders` VALUES (38, 4, 1, 1, 1, 2, 158500, '', '2021-03-20 20:46:17', '2021-03-20 20:46:17');
INSERT INTO `orders` VALUES (39, 4, 1, 1, 1, 2, 158500, '', '2021-03-20 21:02:12', '2021-03-20 21:02:12');
INSERT INTO `orders` VALUES (40, 4, 1, 1, 1, 2, 158500, '', '2021-03-20 21:03:46', '2021-03-20 21:03:46');
INSERT INTO `orders` VALUES (41, 4, 1, 1, 1, 2, 158500, '', '2021-03-20 21:06:14', '2021-03-20 21:06:14');
INSERT INTO `orders` VALUES (42, 4, 1, 1, 1, 2, 158500, '', '2021-03-20 21:07:00', '2021-03-20 21:07:00');
INSERT INTO `orders` VALUES (43, 4, 1, 1, 1, 2, 158500, '', '2021-03-20 21:07:59', '2021-03-20 21:07:59');
INSERT INTO `orders` VALUES (44, 4, 1, 1, 1, 2, 158500, '', '2021-03-20 21:08:17', '2021-03-20 21:08:17');
INSERT INTO `orders` VALUES (45, 4, 1, 1, 1, 2, 158500, '', '2021-03-20 22:02:42', '2021-03-20 22:02:42');
INSERT INTO `orders` VALUES (46, 4, 1, 1, 1, 2, 158500, '', '2021-03-20 22:09:56', '2021-03-20 22:09:56');
INSERT INTO `orders` VALUES (47, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:26:42', '2021-03-20 22:26:42');
INSERT INTO `orders` VALUES (48, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:26:48', '2021-03-20 22:26:48');
INSERT INTO `orders` VALUES (49, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:46', '2021-03-20 22:37:46');
INSERT INTO `orders` VALUES (50, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:49', '2021-03-20 22:37:49');
INSERT INTO `orders` VALUES (51, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:51', '2021-03-20 22:37:51');
INSERT INTO `orders` VALUES (52, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:51', '2021-03-20 22:37:51');
INSERT INTO `orders` VALUES (53, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:52', '2021-03-20 22:37:52');
INSERT INTO `orders` VALUES (54, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:52', '2021-03-20 22:37:52');
INSERT INTO `orders` VALUES (55, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:53', '2021-03-20 22:37:53');
INSERT INTO `orders` VALUES (56, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:54', '2021-03-20 22:37:54');
INSERT INTO `orders` VALUES (57, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:54', '2021-03-20 22:37:54');
INSERT INTO `orders` VALUES (58, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:56', '2021-03-20 22:37:56');
INSERT INTO `orders` VALUES (59, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:58', '2021-03-20 22:37:58');
INSERT INTO `orders` VALUES (60, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:58', '2021-03-20 22:37:58');
INSERT INTO `orders` VALUES (61, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:37:59', '2021-03-20 22:37:59');
INSERT INTO `orders` VALUES (62, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:00', '2021-03-20 22:38:00');
INSERT INTO `orders` VALUES (63, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:00', '2021-03-20 22:38:00');
INSERT INTO `orders` VALUES (64, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:01', '2021-03-20 22:38:01');
INSERT INTO `orders` VALUES (65, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:01', '2021-03-20 22:38:01');
INSERT INTO `orders` VALUES (66, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:02', '2021-03-20 22:38:02');
INSERT INTO `orders` VALUES (67, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:02', '2021-03-20 22:38:02');
INSERT INTO `orders` VALUES (68, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:03', '2021-03-20 22:38:03');
INSERT INTO `orders` VALUES (69, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:04', '2021-03-20 22:38:04');
INSERT INTO `orders` VALUES (70, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:04', '2021-03-20 22:38:04');
INSERT INTO `orders` VALUES (71, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:05', '2021-03-20 22:38:05');
INSERT INTO `orders` VALUES (72, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:06', '2021-03-20 22:38:06');
INSERT INTO `orders` VALUES (73, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:06', '2021-03-20 22:38:06');
INSERT INTO `orders` VALUES (74, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:07', '2021-03-20 22:38:07');
INSERT INTO `orders` VALUES (75, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:08', '2021-03-20 22:38:08');
INSERT INTO `orders` VALUES (76, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:09', '2021-03-20 22:38:09');
INSERT INTO `orders` VALUES (77, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:09', '2021-03-20 22:38:09');
INSERT INTO `orders` VALUES (78, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:10', '2021-03-20 22:38:10');
INSERT INTO `orders` VALUES (79, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:11', '2021-03-20 22:38:11');
INSERT INTO `orders` VALUES (80, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:12', '2021-03-20 22:38:12');
INSERT INTO `orders` VALUES (81, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:12', '2021-03-20 22:38:12');
INSERT INTO `orders` VALUES (82, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:13', '2021-03-20 22:38:13');
INSERT INTO `orders` VALUES (83, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:14', '2021-03-20 22:38:14');
INSERT INTO `orders` VALUES (84, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:14', '2021-03-20 22:38:14');
INSERT INTO `orders` VALUES (85, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:15', '2021-03-20 22:38:15');
INSERT INTO `orders` VALUES (86, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:15', '2021-03-20 22:38:15');
INSERT INTO `orders` VALUES (87, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:16', '2021-03-20 22:38:16');
INSERT INTO `orders` VALUES (88, 4, 1, 1, 1, 2, 175500, '', '2021-03-20 22:38:17', '2021-03-20 22:38:17');
INSERT INTO `orders` VALUES (89, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:44:37', '2021-03-20 22:44:37');
INSERT INTO `orders` VALUES (90, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:44:52', '2021-03-20 22:44:52');
INSERT INTO `orders` VALUES (91, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:44:54', '2021-03-20 22:44:54');
INSERT INTO `orders` VALUES (92, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:44:55', '2021-03-20 22:44:55');
INSERT INTO `orders` VALUES (93, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:44:56', '2021-03-20 22:44:56');
INSERT INTO `orders` VALUES (94, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:44:57', '2021-03-20 22:44:57');
INSERT INTO `orders` VALUES (95, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:45:32', '2021-03-20 22:45:32');
INSERT INTO `orders` VALUES (96, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:46:09', '2021-03-20 22:46:09');
INSERT INTO `orders` VALUES (97, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:48:56', '2021-03-20 22:48:56');
INSERT INTO `orders` VALUES (98, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:50:48', '2021-03-20 22:50:48');
INSERT INTO `orders` VALUES (99, 4, 1, 1, 1, 2, 175500, 'WEB', '2021-03-20 22:51:08', '2021-03-20 22:51:08');
COMMIT;

-- ----------------------------
-- Table structure for phones
-- ----------------------------
DROP TABLE IF EXISTS `phones`;
CREATE TABLE `phones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `country_id` int unsigned NOT NULL,
  `phone` varchar(10) NOT NULL,
  `verified` int NOT NULL DEFAULT '0',
  `principal` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `phones_user_id_idx` (`user_id`),
  KEY `phones_country_id_idx` (`country_id`),
  CONSTRAINT `phones_country_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `phones_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phones
-- ----------------------------
BEGIN;
INSERT INTO `phones` VALUES (1, 2, 1, '3206121376', 0, 0, '2021-03-14 00:00:00', '2021-03-14 00:00:00');
COMMIT;

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
  `status_id` int unsigned NOT NULL,
  `number_activities` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `apdated_at` datetime NOT NULL,
  `type_id` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `slug_UNIQUE` (`slug`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `products_status_id_idx` (`status_id`),
  KEY `products_type_id_idx` (`type_id`),
  CONSTRAINT `products_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  CONSTRAINT `products_type_id` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'Espectacular libro sensorial', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'meta title', 'meta description', 'meta tagas ', 'page-1', 1, 6, '2021-02-10 00:00:00', '2021-02-10 00:00:00', 1);
INSERT INTO `products` VALUES (2, 'Mono con bananas', 'Elaborado en paño Lency colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas.  Mico con boca de cremallera la cual se puede abrir, cerrar y de esta forma  guardar  tres bananas de color amarillo las cuales se encuentran pegados con velcro para pegar y despegar.', 'meta title', 'meta description', 'meta tagas ', 'mono-con-bananas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (3, 'Figuras Geometricas texturas', 'Actividad compuesta por seis figuras geométricas creadas con paño lency y telas de distintas texturas, con una base que le indica a cada uno de los niños y niñas donde debe ir cada una de las piezas,  para que logre ubicaarlas relizando asociacion de imagenes.', 'meta title', 'meta description', 'meta tagas ', 'figuras-geometricas-texturas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (4, 'Lavadora ', 'Elaborado en paño Lency Colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas.  Lavadora que permite abrir y cerrar por medio de un botón en el cual se le puede guardar los objetos que se encuentran extendidos en el tendedero ya sea por medio de un velcro para quitar o poner o con pinzas, desarrollando habilidades motrices finas. ', 'meta title', 'meta description', 'meta tagas ', 'lavadora', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (5, 'Sombrila', 'sombrilla elaborada en paño lency, cordones de colores de donde se desprenden chaquiras  que estan ubicadas de forma ascendente desde el 1 al 5, invitando a los niños y niñas a iniciar sus habilidades numericas y de conteo ', 'meta title', 'meta description', 'meta tagas ', 'sombrila', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (6, 'Buho', 'elaborada en paño lency con cordones de colores y chaquiras, ubicadas de forma ascendente del 1 al 3 tiene forma de buho, se utilizan colores llamativos e invita a los niños y niñas a iniciar con sus habilidades numericas ', 'meta title', 'meta description', 'meta tagas ', 'buho', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (7, 'Pulpo ', 'Elaborado en paño Lency colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas.  Pulpo  con cordones de colores en los cuales se desprenden chaquiras de colores del 1 al 10, iniciando el desarrollo de habilidades numéricas.', 'meta title', 'meta description', 'meta tagas ', 'pulpo', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (8, 'Carro de insertar', 'Elaborado en paño Lency Colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas. Carretera con aros en los cuales se inserta un cordón, el cual se encuentra unido a un cascabel produciendo un sonido al movimiento.', 'meta title', 'meta description', 'meta tagas ', 'carro-de-insertar', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (9, 'Jirafa con botones ', 'Elaborado en paño Lency colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas. Jirafa de colores variados con  botones y moños para abotonar los cuales permiten desarrollar habilidades motrices finas.', 'meta title', 'meta description', 'meta tagas ', 'jirafa-con-botones', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (10, 'Palitos de colores ', 'Elaborado en paño Lency Colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas. Rectángulos de forma horizontal con bolsillo de diferentes colores, en los cuales se puede guardar diversos palos de colores según corresponda, permitiendo  el reconocimiento y clasificación de colores.', 'meta title', 'meta description', 'meta tagas ', 'palitos-de-colores', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (11, 'Perro', 'Elaborado en paño lency, compuesta por la silueta del rostro de un perro, y una creamallera en forma de boca, la cual tiene como función abrir y cerrar para sacar y guardar su lengua', 'meta title', 'meta description', 'meta tagas ', 'perro', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (12, 'Dinosaurio ', 'elaborado en paño lency, compuesto por la imagen de un dinosaurios que invita a realizar ensartado, cruzando el cordon  de un extremo al otro por la parte superior de la limagen, dos de sus patas estan puestas con botones y  se pueden quitar y poner, apuntando y desapuntando.', 'meta title', 'meta description', 'meta tagas ', 'dinosaurio', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (13, 'Cocodrilos', 'Elaborados en paño lency, Dos cocodrilos,verde y azul, cremalleras, tamaño mediano, página de color amarillo, 4 pescados de diferente color.', 'meta title', 'meta description', 'meta tagas ', 'cocodrilos', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (14, 'Guante granja', 'Elaborado en paño lency, variedad de colores, 5 animales en forma de títere de dedo, vaca, cerdo, gallo, rana, gato. 1 sol, 1 nube, fondo en forma de mano de granja.', 'meta title', 'meta description', 'meta tagas ', 'guante-granja', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (15, 'Panal de Abejas', 'Elaborado en paño lency, panal de abejas con cremallera y espacio para guardar las abejas, 4 abejas con tejido en el borde, ojos locos, rama y velcro para mover las abejas,  cinta de color pegada  a la cada abejas que no permite  caerse. ', 'meta title', 'meta description', 'meta tagas ', 'panal-de-abejas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (16, 'Rana', 'Elaborado en paño lency, Rana con cremallera por fuera, 4 moscas con ojos locos y velcro para poder moverlas y lengua larga para enrollar.  ', 'meta title', 'meta description', 'meta tagas ', 'rana', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (17, 'Ratòn', 'Ratón de laberinto elaborado en paño lency, simulando un queso, casa y cuerda la cual permite que el ratòn recorra el laberinto.', 'meta title', 'meta description', 'meta tagas ', 'raton', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (18, 'Tangram', ' Este juego esta compuesto por 7 piezas elaboradas con paño lency, con una base que le indica a los niños y niñas donde va cada pieza, realizando  asi clasificación de formas, ', 'meta title', 'meta description', 'meta tagas ', 'tangram', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (19, 'Manos de Conteo', '', 'meta title', 'meta description', 'meta tagas ', 'manos-de-conteo', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (20, 'Elmo come galletas', '', 'meta title', 'meta description', 'meta tagas ', 'elmo-come-galletas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (21, 'Zapatos de Amarrar PAR', '', 'meta title', 'meta description', 'meta tagas ', 'zapatos-de-amarrar-par', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (22, 'Pizza nùmerica ', '', 'meta title', 'meta description', 'meta tagas ', 'pizza-nùmerica', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (23, 'Partes de la cara', '', 'meta title', 'meta description', 'meta tagas ', 'partes-de-la-cara', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (24, 'Gusano secuencia de colores', '', 'meta title', 'meta description', 'meta tagas ', 'gusano-secuencia-de-colores', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (25, 'Gusano clasificaciòn de colores', '', 'meta title', 'meta description', 'meta tagas ', 'gusano-clasificaciòn-de-colores', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (26, 'Abeja laberinto de insertado', '', 'meta title', 'meta description', 'meta tagas ', 'abeja-laberinto-de-insertado', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (27, 'Ballena come peces', '', 'meta title', 'meta description', 'meta tagas ', 'ballena-come-peces', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (28, 'Caracol de insertado ', '', 'meta title', 'meta description', 'meta tagas ', 'caracol-de-insertado', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (29, 'Cerdito de texturas', '', 'meta title', 'meta description', 'meta tagas ', 'cerdito-de-texturas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (30, 'Oveja  de texturas', '', 'meta title', 'meta description', 'meta tagas ', 'oveja-de-texturas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (31, 'Perro con espejo', '', 'meta title', 'meta description', 'meta tagas ', 'perro-con-espejo', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (32, 'Vaca de texturas ', '', 'meta title', 'meta description', 'meta tagas ', 'vaca-de-texturas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (33, 'Araña con botones', '', 'meta title', 'meta description', 'meta tagas ', 'araña-con-botones', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (34, 'Cepillado de dientes', '', 'meta title', 'meta description', 'meta tagas ', 'cepillado-de-dientes', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (35, 'Pato clasificaciòn de colores ', '', 'meta title', 'meta description', 'meta tagas ', 'pato-clasificaciòn-de-colores', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (36, 'Hongo Vocales', '', 'meta title', 'meta description', 'meta tagas ', 'hongo-vocales', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (37, 'Figuras Geometricas clasificaciòn ', '', 'meta title', 'meta description', 'meta tagas ', 'figuras-geometricas-clasificaciòn', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (38, 'Camisa de botones', '', 'meta title', 'meta description', 'meta tagas ', 'camisa-de-botones', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (39, 'OTROS', '', 'meta title', 'meta description', 'meta tagas ', 'otros', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (40, 'Moustro de emociones', '', 'meta title', 'meta description', 'meta tagas ', 'moustro-de-emociones', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (41, 'Partes del Cuerpo', '', 'meta title', 'meta description', 'meta tagas ', 'partes-del-cuerpo', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (42, 'Zapatos de Amarrar UNO', '', 'meta title', 'meta description', 'meta tagas ', 'zapatos-de-amarrar-uno', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (43, 'Figuras de colores geometricas', '', 'meta title', 'meta description', 'meta tagas ', 'figuras-de-colores-geometricas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (44, 'Perro de rompecabezas', '', 'meta title', 'meta description', 'meta tagas ', 'perro-de-rompecabezas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (45, 'Amarres', '', 'meta title', 'meta description', 'meta tagas ', 'amarres', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (46, 'Tortuga Clasificacion de colores', '', 'meta title', 'meta description', 'meta tagas ', 'tortuga-clasificacion-de-colores', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (47, 'Ponque tamaños', '', 'meta title', 'meta description', 'meta tagas ', 'ponque-tamaños', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (48, 'Manos de conteo signos ', '', 'meta title', 'meta description', 'meta tagas ', 'manos-de-conteo-signos', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (49, 'Lapices clasificaciòn de colores', '', 'meta title', 'meta description', 'meta tagas ', 'lapices-clasificaciòn-de-colores', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (50, 'Tamaños de grande a pequeño', '', 'meta title', 'meta description', 'meta tagas ', 'tamaños-de-grande-a-pequeño', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (51, 'Flautista', '', 'meta title', 'meta description', 'meta tagas ', 'flautista', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (52, 'Tren de los números', '', 'meta title', 'meta description', 'meta tagas ', 'tren-de-los-números', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (53, 'Vocales lazos', '', 'meta title', 'meta description', 'meta tagas ', 'vocales-lazos', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (54, 'Manos de conteo y Números', '', 'meta title', 'meta description', 'meta tagas ', 'manos-de-conteo-y-números', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (55, 'ABC ', '', 'meta title', 'meta description', 'meta tagas ', 'abc', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (56, 'Ratón de insertado Números', '', 'meta title', 'meta description', 'meta tagas ', 'ratón-de-insertado-números', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (57, 'Cojín  León', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-león', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (58, 'Cojín Mico', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-mico', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (59, 'Cojín dinosaurio', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-dinosaurio', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (60, 'Cojin Come galletas', '', 'meta title', 'meta description', 'meta tagas ', 'cojin-come-galletas', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (61, 'Cojín Elefante', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-elefante', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (62, 'Cojín Elmo', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-elmo', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (63, 'Cojín Perro', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-perro', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (64, 'Cojín Moutro', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-moutro', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (65, 'Cojín Gato', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-gato', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (66, 'TEXTURAS BEBES 7 ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'texturas-bebes-7-actividades', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (67, 'TEXTURAS BEBES 10 ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'texturas-bebes-10-actividades', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 2);
INSERT INTO `products` VALUES (68, 'KENY 7 ACTIVIDADES ', '', 'meta title', 'meta description', 'meta tagas ', 'keny-7-actividades', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (69, 'KENY 10 ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'keny-10-actividades', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (70, 'KENY 5 ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'keny-5-actividades', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (71, 'KENY MÀS ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'keny-màs-actividades', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (72, 'CUBO SENSORIAL', '', 'meta title', 'meta description', 'meta tagas ', 'cubo-sensorial', 1, 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products_categories
-- ----------------------------
BEGIN;
INSERT INTO `products_categories` VALUES (1, 1, 1, 1, '2021-03-10 10:46:03', '2021-03-10 10:46:05');
COMMIT;

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
-- Table structure for promotions
-- ----------------------------
DROP TABLE IF EXISTS `promotions`;
CREATE TABLE `promotions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `destiny_type` int unsigned NOT NULL COMMENT '1=categoria, 2=marca, 3= tags, 4=producto',
  `destiny_id` int unsigned NOT NULL,
  `value` int NOT NULL,
  `permitted_uses` int NOT NULL DEFAULT '1',
  `quantity_uses` int NOT NULL DEFAULT '0',
  `start_date` datetime NOT NULL,
  `final_date` datetime NOT NULL,
  `status_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `promotions_status_id_idx` (`status_id`),
  CONSTRAINT `promotions_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of promotions
-- ----------------------------
BEGIN;
INSERT INTO `promotions` VALUES (1, 'Test', 4, 3, 10, 100, 0, '2021-03-09 10:45:06', '2021-03-31 10:45:12', 1, '2021-03-09 10:45:22', '2021-03-10 10:45:24');
INSERT INTO `promotions` VALUES (2, 'Test', 1, 1, 15, 100, 10, '2021-03-09 10:45:06', '2021-03-24 10:45:12', 1, '2021-03-10 10:45:22', '2021-03-10 10:45:24');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_statuses
-- ----------------------------
BEGIN;
INSERT INTO `purchase_statuses` VALUES (1, 'RECIBIDA', 'green', 'RECIBIDA', '2020-03-14 00:00:00', '2020-03-14 00:00:00');
INSERT INTO `purchase_statuses` VALUES (2, 'PENDIENTE', 'yellow', 'PENDIENTE', '2020-03-14 00:00:00', '2020-03-14 00:00:00');
INSERT INTO `purchase_statuses` VALUES (3, 'RECHAZADA', 'red', 'RECHAZADA', '2020-03-14 00:00:00', '2020-03-14 00:00:00');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of reference_images
-- ----------------------------
BEGIN;
INSERT INTO `reference_images` VALUES (1, 1, 'https://laikapp.s3.amazonaws.com/images_products/1_4051_Promo_Galletas_de_Cordero_y_arroz_Laika_by_Rausch_707X696.jpeg', '2021-10-06 00:00:00', '2021-10-06 00:00:00');
INSERT INTO `reference_images` VALUES (2, 1, 'https://laikapp.s3.amazonaws.com/dev_images_products/19_34540_Dog_Chow_Salud_Visible_Cachorros_Minis_y_Peque__os_1607551812_404x718.png', '2021-10-06 00:00:00', '2021-10-06 00:00:00');
INSERT INTO `reference_images` VALUES (3, 2, 'https://laikapp.s3.amazonaws.com/dev_images_products/22366_FANCY_PETS___Hueso_Basteado_Sabor_Queso_1606762944_500x500.png', '2021-10-06 00:00:00', '2021-10-06 00:00:00');
INSERT INTO `reference_images` VALUES (4, 5, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (5, 6, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (6, 7, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (7, 8, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (8, 9, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (9, 10, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (10, 11, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (11, 12, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (12, 13, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (13, 14, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (14, 15, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (15, 16, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (16, 17, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (17, 18, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (18, 19, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (19, 20, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (20, 21, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (21, 22, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (22, 23, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (23, 24, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (24, 25, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (25, 26, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (26, 27, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (27, 28, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (28, 29, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (29, 30, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (30, 31, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (31, 32, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (32, 33, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (33, 34, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (34, 35, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (35, 36, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (36, 37, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (37, 38, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (38, 39, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (39, 40, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (40, 41, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (41, 42, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (42, 43, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (43, 44, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (44, 45, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (45, 46, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (46, 47, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (47, 48, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (48, 49, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (49, 50, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (50, 51, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (51, 52, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (52, 53, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (53, 54, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (54, 55, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (55, 56, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (56, 57, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (57, 58, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (58, 59, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (59, 60, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (60, 61, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (61, 62, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (62, 63, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (63, 64, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (64, 65, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (65, 66, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (66, 67, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (67, 68, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (68, 69, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (69, 70, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (70, 71, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (71, 72, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (72, 73, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (73, 74, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
INSERT INTO `reference_images` VALUES (74, 75, 'https://keny-app.s3.ca-central-1.amazonaws.com/products/IMG_20200815_105833718.jpg', '2021-03-14 12:03:22', '2021-03-14 12:03:22');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of references
-- ----------------------------
BEGIN;
INSERT INTO `references` VALUES (1, 'rojo', 1, 1, 'red', 1, '2020-10-01 00:00:00', '2020-10-01 00:00:00');
INSERT INTO `references` VALUES (2, 'verde', 1, 1, 'green', 1, '2020-10-01 00:00:00', '2020-10-01 00:00:00');
INSERT INTO `references` VALUES (5, 'Mono con bananas', 2, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (6, 'Figuras Geometricas texturas', 3, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (7, 'Lavadora ', 4, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (8, 'Sombrila', 5, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (9, 'Buho', 6, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (10, 'Pulpo ', 7, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (11, 'Carro de insertar', 8, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (12, 'Jirafa con botones ', 9, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (13, 'Palitos de colores ', 10, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (14, 'Perro', 11, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (15, 'Dinosaurio ', 12, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (16, 'Cocodrilos', 13, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (17, 'Guante granja', 14, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (18, 'Panal de Abejas', 15, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (19, 'Rana', 16, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (20, 'Ratòn', 17, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (21, 'Tangram', 18, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (22, 'Manos de Conteo', 19, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (23, 'Elmo come galletas', 20, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (24, 'Zapatos de Amarrar PAR', 21, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (25, 'Pizza nùmerica ', 22, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (26, 'Partes de la cara', 23, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (27, 'Gusano secuencia de colores', 24, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (28, 'Gusano clasificaciòn de colores', 25, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (29, 'Abeja laberinto de insertado', 26, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (30, 'Ballena come peces', 27, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (31, 'Caracol de insertado ', 28, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (32, 'Cerdito de texturas', 29, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (33, 'Oveja  de texturas', 30, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (34, 'Perro con espejo', 31, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (35, 'Vaca de texturas ', 32, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (36, 'Araña con botones', 33, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (37, 'Cepillado de dientes', 34, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (38, 'Pato clasificaciòn de colores ', 35, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (39, 'Hongo Vocales', 36, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (40, 'Figuras Geometricas clasificaciòn ', 37, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (41, 'Camisa de botones', 38, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (42, 'OTROS', 39, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (43, 'Moustro de emociones', 40, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (44, 'Partes del Cuerpo', 41, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (45, 'Zapatos de Amarrar UNO', 42, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (46, 'Figuras de colores geometricas', 43, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (47, 'Perro de rompecabezas', 44, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (48, 'Amarres', 45, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (49, 'Tortuga Clasificacion de colores', 46, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (50, 'Ponque tamaños', 47, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (51, 'Manos de conteo signos ', 48, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (52, 'Lapices clasificaciòn de colores', 49, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (53, 'Tamaños de grande a pequeño', 50, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (54, 'Flautista', 51, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (55, 'Tren de los números', 52, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (56, 'Vocales lazos', 53, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (57, 'Manos de conteo y Números', 54, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (58, 'ABC ', 55, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (59, 'Ratón de insertado Números', 56, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (60, 'Cojín  León', 57, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (61, 'Cojín Mico', 58, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (62, 'Cojín dinosaurio', 59, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (63, 'Cojin Come galletas', 60, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (64, 'Cojín Elefante', 61, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (65, 'Cojín Elmo', 62, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (66, 'Cojín Perro', 63, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (67, 'Cojín Moutro', 64, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (68, 'Cojín Gato', 65, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (69, 'TEXTURAS BEBES 7 ACTIVIDADES', 66, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (70, 'TEXTURAS BEBES 10 ACTIVIDADES', 67, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (71, 'KENY 7 ACTIVIDADES ', 68, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (72, 'KENY 10 ACTIVIDADES', 69, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (73, 'KENY 5 ACTIVIDADES', 70, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (74, 'KENY MÀS ACTIVIDADES', 71, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references` VALUES (75, 'CUBO SENSORIAL', 72, 0, 'null', 1, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of references_headquarters
-- ----------------------------
BEGIN;
INSERT INTO `references_headquarters` VALUES (1, 1, 1, 1, 5000, 10000, 10, 0, '2020-10-08 00:00:00', '2020-10-08 00:00:00');
INSERT INTO `references_headquarters` VALUES (2, 2, 1, 1, 10000, 20000, 5, 0, '2020-10-08 00:00:00', '2020-10-08 00:00:00');
INSERT INTO `references_headquarters` VALUES (3, 5, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (4, 6, 1, 1, 12000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (5, 7, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (6, 8, 1, 1, 10000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (7, 9, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (8, 10, 1, 1, 10000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (9, 11, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (10, 12, 1, 1, 10000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (11, 13, 1, 1, 10000, 10000, 0, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (12, 14, 1, 1, 10000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (13, 15, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (14, 16, 1, 1, 11000, 11000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (15, 17, 1, 1, 18000, 18000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (16, 18, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (17, 19, 1, 1, 10000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (18, 20, 1, 1, 13000, 13000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (19, 21, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (20, 22, 1, 1, 14000, 14000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (21, 23, 1, 1, 18000, 18000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (22, 24, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (23, 25, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (24, 26, 1, 1, 18000, 18000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (25, 27, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (26, 28, 1, 1, 10000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (27, 29, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (28, 30, 1, 1, 13000, 13000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (29, 31, 1, 1, 13000, 13000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (30, 32, 1, 1, 13000, 13000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (31, 33, 1, 1, 13000, 13000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (32, 34, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (33, 35, 1, 1, 13000, 13000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (34, 36, 1, 1, 10000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (35, 37, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (36, 38, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (37, 39, 1, 1, 13000, 13000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (38, 40, 1, 1, 11000, 11000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (39, 41, 1, 1, 11000, 11000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (40, 42, 1, 1, 20000, 20000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (41, 43, 1, 1, 13000, 13000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (42, 44, 1, 1, 18000, 18000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (43, 45, 1, 1, 10000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (44, 46, 1, 1, 11000, 11000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (45, 47, 1, 1, 11000, 11000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (46, 48, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (47, 49, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (48, 50, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (49, 51, 1, 1, 18000, 18000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (50, 52, 1, 1, 13000, 13000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (51, 53, 1, 1, 10000, 10000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (52, 54, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (53, 55, 1, 1, 14000, 14000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (54, 56, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (55, 57, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (56, 58, 1, 1, 15000, 15000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (57, 59, 1, 1, 12000, 12000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (58, 60, 1, 1, 35000, 35000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (59, 61, 1, 1, 30000, 30000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (60, 62, 1, 1, 40000, 40000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (61, 63, 1, 1, 30000, 30000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (62, 64, 1, 1, 40000, 40000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (63, 65, 1, 1, 30000, 30000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (64, 66, 1, 1, 35000, 35000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (65, 67, 1, 1, 35000, 35000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (66, 68, 1, 1, 35000, 35000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (67, 69, 1, 1, 100000, 100000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (68, 70, 1, 1, 120000, 120000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (69, 71, 1, 1, 100000, 100000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (70, 72, 1, 1, 130000, 130000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (71, 73, 1, 1, 70000, 70000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (72, 74, 1, 1, 0, 0, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
INSERT INTO `references_headquarters` VALUES (73, 75, 1, 1, 70000, 70000, 10, 0, '2021-03-11 05:03:43', '2021-03-11 05:03:43');
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
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of types
-- ----------------------------
BEGIN;
INSERT INTO `types` VALUES (1, 'Libro', 'libro', '2021-03-09 00:00:00', '2021-03-09 00:00:00');
INSERT INTO `types` VALUES (2, 'Actividad', 'actividad', '2021-03-09 00:00:00', '2021-03-09 00:00:00');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Luis', 'Raga', 'luis.raga@keny.com', '$2a$14$kbUOTgtKJX33YGgB8LswFufFSPPXYsuMdjRL7y/y/Q/RqOSnKAhSy', '2021-03-05 18:25:50', '2021-03-05 18:25:50');
INSERT INTO `users` VALUES (2, 'David', 'Raga', 'david.raga@keny.com', '$2a$14$8P3MFBoTDgw5cVDzxR1.reLmbDID/Hb9NTGxb/VnPfN/VW7JyNTnG', '2021-03-05 18:26:02', '2021-03-05 18:26:02');
INSERT INTO `users` VALUES (4, '', 'Lusi', 'whary11@gmail.com', '$2a$14$Kgbv5ZhbwV4Qo3zOqlj9NuL5hn9MFkw6g/Wo4FtNoZO0me2Ii8c2a', '2021-03-19 17:42:39', '2021-03-19 17:42:39');
COMMIT;

-- ----------------------------
-- Function structure for kf_promotion_by_reference
-- ----------------------------
DROP FUNCTION IF EXISTS `kf_promotion_by_reference`;
delimiter ;;
CREATE FUNCTION `keny`.`kf_promotion_by_reference`(p_product_id int)
 RETURNS double
  READS SQL DATA 
BEGIN
			DECLARE salida DOUBLE DEFAULT 0;
			SELECT pm.`value` from products p
			join promotions pm on pm.destiny_id = p.id
		where 
		-- Validación sobre la promoción
		(pm.status_id = 1 and pm.start_date < now() and pm.final_date > now() and pm.quantity_uses < pm.permitted_uses)
		-- Validación por categoría
		and (
		(pm.destiny_type = 1 and destiny_id in (select pc.category_id from products_categories pc where pc.product_id = p.id )) 

		-- Validación por tags
		or (pm.destiny_type = 3 and destiny_id in(select pt.id from products_tags pt where pt.product_id = p.id))
		 
		-- Validación por producto
		or (pm.destiny_type = 4 and destiny_id = p.id)
		)
		
		and p.id = p_product_id

		order by pm.created_at desc

		limit 1 into salida;
			RETURN salida;
		END
;;
delimiter ;

-- ----------------------------
-- Function structure for kf_split_str
-- ----------------------------
DROP FUNCTION IF EXISTS `kf_split_str`;
delimiter ;;
CREATE FUNCTION `keny`.`kf_split_str`(p_x  VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    p_delim  VARCHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    p_pos INT)
 RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
  READS SQL DATA 
RETURN 
	REPLACE(
		SUBSTRING(SUBSTRING_INDEX(p_x, p_delim, p_pos), 
		LENGTH(SUBSTRING_INDEX(p_x, p_delim, p_pos -1)) + 1), 
        p_delim, ''
	)
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_add_to_cart
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_add_to_cart`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_add_to_cart`(p_reference_id int, p_user_id int, p_quantity int, in p_cart_id int)
BEGIN

Declare private_cart_id int;
Declare private_quantity DOUBLE;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    
    BEGIN
        SHOW ERRORS;
        ROLLBACK;   
    END;
    
    DECLARE EXIT HANDLER FOR SQLWARNING
    BEGIN
        SHOW ERRORS;  
        ROLLBACK;   
    END;
    -- SET time_zone = "America/Toronto";
    
    START TRANSACTION;
		
		-- IF(p_cart_id>0,INSERT INTO `cart` VALUES (null, user_id,now(),now()),null);
		set private_cart_id = (select c.id from cart c where c.id = p_cart_id);
		
		CASE 
			 WHEN private_cart_id THEN
				-- call ksp_response(false,"El carrito no exite.");
				
				set private_cart_id = p_cart_id;
				ELSE
				
				INSERT INTO `cart` VALUES (null,IF(p_user_id >0,p_user_id,null),now(),now());
				set private_cart_id = LAST_INSERT_ID();
			
		END CASE;
		 
		set private_quantity = (SELECT cd.quantity from cart_details cd where cart_id = private_cart_id and cd.reference_id = p_reference_id limit 1);
		CASE 
			 WHEN private_quantity THEN
				UPDATE `keny`.`cart_details` SET `quantity` = private_quantity+p_quantity WHERE `id` = (SELECT cd.id from cart_details cd where cart_id = private_cart_id and cd.reference_id = p_reference_id limit 1);
				ELSE
				INSERT INTO `cart_details` VALUES (null,p_reference_id,private_cart_id,p_quantity, now(), now());
		END CASE;
    COMMIT;
		
		select c.id, c.user_id, cd.reference_id, cd.cart_id, cd.quantity  from cart_details cd 
			join cart c on c.id = cd.cart_id
		where cd.cart_id = private_cart_id;
    -- call ksp_response(true,"Usuario registrado correctamente");
    
    
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_create_purchase
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_create_purchase`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_create_purchase`(p_user_id INT,
	p_phone_id INT, 
	p_address_id INT,
	p_city_id INT,
	p_total DOUBLE,
	p_details TEXT,
    p_details_activity TEXT,
	p_now VARCHAR(255), p_platform VARCHAR(100))
  COMMENT 'creación de una compra'
BEGIN
	
	DECLARE details TEXT default "";
	DECLARE details_activity TEXT default "";
	DECLARE reference_id INT ;
	DECLARE reference_name VARCHAR(40) ;
	DECLARE quantity INT;
	DECLARE price DOUBLE;
	DECLARE price_with_discount DOUBLE;
	DECLARE owner_activity_id INT;
	DECLARE activity_id INT;
	DECLARE quantity_activity INT;
	DECLARE price_with_discount_activity DOUBLE;
	DECLARE reference_name_activity VARCHAR(255);
	DECLARE price_activity DOUBLE;
    
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SHOW ERRORS; 
        ROLLBACK;
    END;
    
    DECLARE EXIT HANDLER FOR SQLWARNING
    BEGIN
        SHOW ERRORS;
        ROLLBACK;
    END;
    set @status_recibida = 1;
    set @status_pending = 2;
    SET @count = 1;
    SET @count_activity = 1;
    
    START TRANSACTION;
        INSERT INTO `keny`.`orders`
		(`id`,`user_id`,`phone_id`,`address_id`,`city_id`,`puchase_status_id`,`total`,`created_at`,`updated_at`,`platform`)
		VALUES
		(null,p_user_id,p_phone_id,p_address_id,p_city_id, @status_pending,p_total,p_now,p_now, p_platform);
        
        SET @order_id = last_insert_id();
        -- details 
        REPEAT
			SELECT kf_split_str(p_details, "||", @count) INTO details;           
			IF details <> "" THEN
				SELECT kf_split_str(details, "&&", 1) INTO reference_id;
				SELECT kf_split_str(details, "&&", 2) INTO quantity;
				SELECT kf_split_str(details, "&&", 3) INTO price_with_discount;
				-- seleccionar la data faltante
				SELECT name,rh.price FROM `references` r 
				JOIN `references_headquarters` rh on r.id = rh.reference_id
				where rh.headquarter_id = 1 and r.id = reference_id
				limit 1
				INTO reference_name,price ;
				-- guardar los details
				INSERT INTO `keny`.`order_details`
				(`id`,`order_id`,`reference_id`,`reference_name`,`price`,`quantity`,`price_with_discount`,`puchase_status_id`,`created_at`,`updated_at`)
				VALUES
				(null,@order_id,reference_id,reference_name,price,quantity,price_with_discount,@status_recibida,p_now,p_now);
				SET @order_detail_id = last_insert_id();
				REPEAT
					SELECT kf_split_str(p_details_activity, "||", @count_activity) INTO details_activity;
					IF details_activity <> "" THEN
						SELECT kf_split_str(details_activity, "&&", 1) INTO owner_activity_id;
						SELECT kf_split_str(details_activity, "&&", 2) INTO activity_id;
						SELECT kf_split_str(details_activity, "&&", 3) INTO quantity_activity;
						SELECT kf_split_str(details_activity, "&&", 4) INTO price_with_discount_activity;
						IF owner_activity_id = reference_id THEN
							SELECT name,rh.price FROM `references` r 
							JOIN `references_headquarters` rh on r.id = rh.reference_id
							where rh.headquarter_id = 1 and r.id = activity_id
							limit 1
							INTO reference_name_activity,price_activity;				
							INSERT INTO `keny`.`order_details_activity`
							(`id`,`order_detail_id`,`reference_id`,`purchase_status_id`,`reference_name`,`price`,`price_with_discount`,`created_at`,`updated_at`)
							VALUES
							(NULL,@order_detail_id,activity_id,@status_recibida,reference_name_activity,price_activity,price_with_discount_activity,p_now,p_now);
						END IF;
					END IF;
					SET @count_activity =  @count_activity + 1;
					UNTIL details_activity = ""
				END REPEAT;
			END IF;
			SET @count = @count + 1;
			UNTIL details = ""
		END REPEAT; 
    COMMIT;
    call ksp_response(true,@order_id);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_create_token
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_create_token`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_create_token`(p_uuid text, p_token_expires varchar(100), p_token_refresh_exp varchar(100), p_user_id int)
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    
    BEGIN
        SHOW ERRORS;
        ROLLBACK;   
    END;
    
    DECLARE EXIT HANDLER FOR SQLWARNING
    BEGIN
        SHOW ERRORS;  
        ROLLBACK;   
    END;
    -- SET time_zone = "America/Toronto";
    
    START TRANSACTION;
		INSERT INTO `oauth_access_tokens` VALUES (null, p_uuid,p_user_id,0,now(),now(),p_token_expires);
        INSERT INTO `oauth_refresh_tokens` VALUES (null, last_insert_id(),0, p_token_refresh_exp, now(), now());
    COMMIT;
    call ksp_response(true,"Usuario registrado correctamente");
    
    
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_create_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_create_user`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_create_user`(p_name varchar(255), p_last_name varchar(255), p_email varchar(255), p_password varchar(255))
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SHOW ERRORS;
        ROLLBACK;   
    END;
    
    DECLARE EXIT HANDLER FOR SQLWARNING
    BEGIN
        SHOW ERRORS;  
        ROLLBACK;   
    END;
    -- SET time_zone = "America/Bogota";
       
    START TRANSACTION;

	INSERT INTO `users`
	(`id`,`name`,`last_name`,`email`,`password`,`created_at`,`updated_at`)VALUES (null,p_name,p_last_name,p_email,p_password, now(), now());
	
		
    
    COMMIT;
    call ksp_response(true,"Usuario registrado correctamente");
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_get_info_references
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_get_info_references`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_get_info_references`(in p_references text)
  COMMENT 'retorna la información de 1 o mas referencias'
BEGIN
	select rh.stock, rh.price, r.id, kf_promotion_by_reference(r.product_id) discount, p.type_id from references_headquarters rh 
	join `references` r on r.id = rh.reference_id
	join products p on p.id = r.product_id
	where rh.headquarter_id = 1 and FIND_IN_SET(rh.reference_id,p_references) and rh.status_id = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_get_products_by_type
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_get_products_by_type`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_get_products_by_type`(in p_slug text, p_offset int, p_limit int)
  COMMENT 'Retorna el producto con sus referencias y con promoción si tiene.'
BEGIN
	SELECT 
		-- info product
		r.id,p.name,r.view_front, rh.price,rh.stock, kf_promotion_by_reference(r.product_id) as discount, t.id type_id
		FROM products p
		INNER join keny.references r on p.id = r.product_id
		INNER join references_headquarters rh on rh.reference_id = r.id
		INNER JOIN types t on t.id = p.type_id
		WHERE t.slug = p_slug and rh.stock > 0
		
		limit p_offset, p_limit;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_get_product_by_slug
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_get_product_by_slug`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_get_product_by_slug`(in p_slug text)
  COMMENT 'Retorna el producto con sus referencias y con promoción si tiene.'
BEGIN
	SELECT 
		-- info product
		p.id,p.name,
		p.slug,p.description,p.meta_title,p.meta_description,p.meta_tags,p.number_activities,
		-- info references
		r.id reference_id
		,r.name reference_name,r.color, r.view_front,rh.price,rh.stock, kf_promotion_by_reference(r.product_id) as discount
		FROM products p
		INNER join keny.references r on r.product_id = p.id
		INNER join references_headquarters rh on rh.reference_id = r.id 
		WHERE p.slug = p_slug;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_get_stock_reference
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_get_stock_reference`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_get_stock_reference`(p_reference_id int)
  COMMENT 'respuesta general'
BEGIN

DECLARE stock int;
DECLARE price DOUBLE;
DECLARE discount DOUBLE;
DECLARE private_product_id int;



-- set @discount = call ksp_get_promotion_by_product(int p_product_id)
	select rh.stock, rh.price, r.product_id  from references_headquarters rh 
		join `references` r on r.id = rh.reference_id
	where rh.headquarter_id = 1 and rh.reference_id = p_reference_id  and rh.status_id = 1 limit 1 into stock, price, private_product_id;
	
	
	call ksp_get_promotion_by_product(private_product_id, discount);
	select stock, price, discount;
	
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_get_user_by_email
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_get_user_by_email`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_get_user_by_email`(p_email varchar(255))
  COMMENT 'retornar usuario por email'
BEGIN
	SELECT id,name,last_name,email,password FROM users Where email = p_email;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_response
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_response`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_response`(p_result boolean, msg text)
  COMMENT 'respuesta general'
BEGIN
	DECLARE state VARCHAR(100);
    DECLARE p_code int;
    IF p_result = true THEN
		SET state = "OK";
        SET p_code = 200;
	ELSE
		SET state = "FAILED";
        SET p_code = 500;
	END IF;
	SELECT state level, p_code as "Code", msg as msg;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_validate_cart
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_validate_cart`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_validate_cart`(p_cart_id int, p_quantity int, in p_reference_id int)
  COMMENT 'respuesta general'
BEGIN		
			CASE
				WHEN p_cart_id = 0 THEN
					call ksp_response(false,"El carrito no existe");
				ELSE
				-- Validar la existencia del carrito
				set @is_exist_cart = (select count(id) from cart where id=p_cart_id and bought = 0);
					CASE
						WHEN @is_exist_cart = 0 THEN
							call ksp_response(false,"El carrito no existe");
						ELSE
							call ksp_response(true,"El carrito si existe");
					END CASE;
					-- Responde el sp ksp_response(tinyint p_result, text msg)
		END CASE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_validate_stock_reference
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_validate_stock_reference`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_validate_stock_reference`(p_quantity int, p_reference_id int)
  COMMENT 'respuesta general'
BEGIN

	select count(id) from references_headquarters rh where rh.headquarter_id = 1 and rh.reference_id = p_reference_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ksp_validate_token_by_uuid
-- ----------------------------
DROP PROCEDURE IF EXISTS `ksp_validate_token_by_uuid`;
delimiter ;;
CREATE PROCEDURE `keny`.`ksp_validate_token_by_uuid`(p_uuid varchar(100),p_now varchar(100))
BEGIN
	SELECT user_id FROM oauth_access_tokens 
    WHERE expires_at > p_now 
    AND revoked = 0 
    AND uuid = p_uuid;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
