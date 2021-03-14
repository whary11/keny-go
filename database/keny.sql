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

 Date: 14/03/2021 11:21:59
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
INSERT INTO `addresses` VALUES (1, 2, 1, 'calle falsa', NULL, 0, '2020-03-14 00:00:00', '2020-03-14 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_details
-- ----------------------------
BEGIN;
INSERT INTO `order_details` VALUES (1, 13, 1, 'rojo', 10000, 1, 8500, '2021-03-14 11:05:50', '2021-03-14 11:05:50', 1);
INSERT INTO `order_details` VALUES (2, 13, 6, 'rojo', 10000, 2, 9000, '2021-03-14 11:05:50', '2021-03-14 11:05:50', 1);
INSERT INTO `order_details` VALUES (3, 13, 5, 'rojo', 10000, 2, 12000, '2021-03-14 11:05:50', '2021-03-14 11:05:50', 1);
INSERT INTO `order_details` VALUES (4, 14, 1, 'rojo', 10000, 1, 8500, '2021-03-14 11:07:48', '2021-03-14 11:07:48', 1);
INSERT INTO `order_details` VALUES (5, 14, 6, 'rojo', 10000, 2, 9000, '2021-03-14 11:07:48', '2021-03-14 11:07:48', 1);
INSERT INTO `order_details` VALUES (6, 15, 1, 'rojo', 10000, 1, 8500, '2021-03-14 11:08:07', '2021-03-14 11:08:07', 1);
INSERT INTO `order_details` VALUES (7, 15, 6, 'rojo', 10000, 2, 9000, '2021-03-14 11:08:07', '2021-03-14 11:08:07', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (13, 2, 1, 1, 1, 2, 50500, '2021-03-14 11:05:50', '2021-03-14 11:05:50');
INSERT INTO `orders` VALUES (14, 2, 1, 1, 1, 2, 26500, '2021-03-14 11:07:48', '2021-03-14 11:07:48');
INSERT INTO `orders` VALUES (15, 2, 1, 1, 1, 2, 26500, '2021-03-14 11:08:07', '2021-03-14 11:08:07');
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
  `created_at` datetime NOT NULL,
  `apdated_at` datetime NOT NULL,
  `status_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `slug_UNIQUE` (`slug`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `products_status_id_idx` (`status_id`),
  CONSTRAINT `products_status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'Espectacular libro sensorial', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'meta title', 'meta description', 'meta tagas ', 'page-1', '2021-02-10 00:00:00', '2021-02-10 00:00:00', 1);
INSERT INTO `products` VALUES (2, 'Mono con bananas', 'Elaborado en paño Lency colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas.  Mico con boca de cremallera la cual se puede abrir, cerrar y de esta forma  guardar  tres bananas de color amarillo las cuales se encuentran pegados con velcro para pegar y despegar.', 'meta title', 'meta description', 'meta tagas ', 'mono-con-bananas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (3, 'Figuras Geometricas texturas', 'Actividad compuesta por seis figuras geométricas creadas con paño lency y telas de distintas texturas, con una base que le indica a cada uno de los niños y niñas donde debe ir cada una de las piezas,  para que logre ubicaarlas relizando asociacion de imagenes.', 'meta title', 'meta description', 'meta tagas ', 'figuras-geometricas-texturas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (4, 'Lavadora ', 'Elaborado en paño Lency Colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas.  Lavadora que permite abrir y cerrar por medio de un botón en el cual se le puede guardar los objetos que se encuentran extendidos en el tendedero ya sea por medio de un velcro para quitar o poner o con pinzas, desarrollando habilidades motrices finas. ', 'meta title', 'meta description', 'meta tagas ', 'lavadora', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (5, 'Sombrila', 'sombrilla elaborada en paño lency, cordones de colores de donde se desprenden chaquiras  que estan ubicadas de forma ascendente desde el 1 al 5, invitando a los niños y niñas a iniciar sus habilidades numericas y de conteo ', 'meta title', 'meta description', 'meta tagas ', 'sombrila', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (6, 'Buho', 'elaborada en paño lency con cordones de colores y chaquiras, ubicadas de forma ascendente del 1 al 3 tiene forma de buho, se utilizan colores llamativos e invita a los niños y niñas a iniciar con sus habilidades numericas ', 'meta title', 'meta description', 'meta tagas ', 'buho', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (7, 'Pulpo ', 'Elaborado en paño Lency colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas.  Pulpo  con cordones de colores en los cuales se desprenden chaquiras de colores del 1 al 10, iniciando el desarrollo de habilidades numéricas.', 'meta title', 'meta description', 'meta tagas ', 'pulpo', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (8, 'Carro de insertar', 'Elaborado en paño Lency Colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas. Carretera con aros en los cuales se inserta un cordón, el cual se encuentra unido a un cascabel produciendo un sonido al movimiento.', 'meta title', 'meta description', 'meta tagas ', 'carro-de-insertar', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (9, 'Jirafa con botones ', 'Elaborado en paño Lency colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas. Jirafa de colores variados con  botones y moños para abotonar los cuales permiten desarrollar habilidades motrices finas.', 'meta title', 'meta description', 'meta tagas ', 'jirafa-con-botones', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (10, 'Palitos de colores ', 'Elaborado en paño Lency Colombiano de excelente calidad, lavable, resistente al desgarre y uso de los niños y niñas. Rectángulos de forma horizontal con bolsillo de diferentes colores, en los cuales se puede guardar diversos palos de colores según corresponda, permitiendo  el reconocimiento y clasificación de colores.', 'meta title', 'meta description', 'meta tagas ', 'palitos-de-colores', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (11, 'Perro', 'Elaborado en paño lency, compuesta por la silueta del rostro de un perro, y una creamallera en forma de boca, la cual tiene como función abrir y cerrar para sacar y guardar su lengua', 'meta title', 'meta description', 'meta tagas ', 'perro', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (12, 'Dinosaurio ', 'elaborado en paño lency, compuesto por la imagen de un dinosaurios que invita a realizar ensartado, cruzando el cordon  de un extremo al otro por la parte superior de la limagen, dos de sus patas estan puestas con botones y  se pueden quitar y poner, apuntando y desapuntando.', 'meta title', 'meta description', 'meta tagas ', 'dinosaurio', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (13, 'Cocodrilos', 'Elaborados en paño lency, Dos cocodrilos,verde y azul, cremalleras, tamaño mediano, página de color amarillo, 4 pescados de diferente color.', 'meta title', 'meta description', 'meta tagas ', 'cocodrilos', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (14, 'Guante granja', 'Elaborado en paño lency, variedad de colores, 5 animales en forma de títere de dedo, vaca, cerdo, gallo, rana, gato. 1 sol, 1 nube, fondo en forma de mano de granja.', 'meta title', 'meta description', 'meta tagas ', 'guante-granja', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (15, 'Panal de Abejas', 'Elaborado en paño lency, panal de abejas con cremallera y espacio para guardar las abejas, 4 abejas con tejido en el borde, ojos locos, rama y velcro para mover las abejas,  cinta de color pegada  a la cada abejas que no permite  caerse. ', 'meta title', 'meta description', 'meta tagas ', 'panal-de-abejas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (16, 'Rana', 'Elaborado en paño lency, Rana con cremallera por fuera, 4 moscas con ojos locos y velcro para poder moverlas y lengua larga para enrollar.  ', 'meta title', 'meta description', 'meta tagas ', 'rana', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (17, 'Ratòn', 'Ratón de laberinto elaborado en paño lency, simulando un queso, casa y cuerda la cual permite que el ratòn recorra el laberinto.', 'meta title', 'meta description', 'meta tagas ', 'raton', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (18, 'Tangram', ' Este juego esta compuesto por 7 piezas elaboradas con paño lency, con una base que le indica a los niños y niñas donde va cada pieza, realizando  asi clasificación de formas, ', 'meta title', 'meta description', 'meta tagas ', 'tangram', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (19, 'Manos de Conteo', '', 'meta title', 'meta description', 'meta tagas ', 'manos-de-conteo', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (20, 'Elmo come galletas', '', 'meta title', 'meta description', 'meta tagas ', 'elmo-come-galletas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (21, 'Zapatos de Amarrar PAR', '', 'meta title', 'meta description', 'meta tagas ', 'zapatos-de-amarrar-par', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (22, 'Pizza nùmerica ', '', 'meta title', 'meta description', 'meta tagas ', 'pizza-nùmerica', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (23, 'Partes de la cara', '', 'meta title', 'meta description', 'meta tagas ', 'partes-de-la-cara', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (24, 'Gusano secuencia de colores', '', 'meta title', 'meta description', 'meta tagas ', 'gusano-secuencia-de-colores', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (25, 'Gusano clasificaciòn de colores', '', 'meta title', 'meta description', 'meta tagas ', 'gusano-clasificaciòn-de-colores', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (26, 'Abeja laberinto de insertado', '', 'meta title', 'meta description', 'meta tagas ', 'abeja-laberinto-de-insertado', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (27, 'Ballena come peces', '', 'meta title', 'meta description', 'meta tagas ', 'ballena-come-peces', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (28, 'Caracol de insertado ', '', 'meta title', 'meta description', 'meta tagas ', 'caracol-de-insertado', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (29, 'Cerdito de texturas', '', 'meta title', 'meta description', 'meta tagas ', 'cerdito-de-texturas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (30, 'Oveja  de texturas', '', 'meta title', 'meta description', 'meta tagas ', 'oveja-de-texturas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (31, 'Perro con espejo', '', 'meta title', 'meta description', 'meta tagas ', 'perro-con-espejo', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (32, 'Vaca de texturas ', '', 'meta title', 'meta description', 'meta tagas ', 'vaca-de-texturas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (33, 'Araña con botones', '', 'meta title', 'meta description', 'meta tagas ', 'araña-con-botones', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (34, 'Cepillado de dientes', '', 'meta title', 'meta description', 'meta tagas ', 'cepillado-de-dientes', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (35, 'Pato clasificaciòn de colores ', '', 'meta title', 'meta description', 'meta tagas ', 'pato-clasificaciòn-de-colores', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (36, 'Hongo Vocales', '', 'meta title', 'meta description', 'meta tagas ', 'hongo-vocales', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (37, 'Figuras Geometricas clasificaciòn ', '', 'meta title', 'meta description', 'meta tagas ', 'figuras-geometricas-clasificaciòn', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (38, 'Camisa de botones', '', 'meta title', 'meta description', 'meta tagas ', 'camisa-de-botones', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (39, 'OTROS', '', 'meta title', 'meta description', 'meta tagas ', 'otros', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (40, 'Moustro de emociones', '', 'meta title', 'meta description', 'meta tagas ', 'moustro-de-emociones', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (41, 'Partes del Cuerpo', '', 'meta title', 'meta description', 'meta tagas ', 'partes-del-cuerpo', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (42, 'Zapatos de Amarrar UNO', '', 'meta title', 'meta description', 'meta tagas ', 'zapatos-de-amarrar-uno', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (43, 'Figuras de colores geometricas', '', 'meta title', 'meta description', 'meta tagas ', 'figuras-de-colores-geometricas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (44, 'Perro de rompecabezas', '', 'meta title', 'meta description', 'meta tagas ', 'perro-de-rompecabezas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (45, 'Amarres', '', 'meta title', 'meta description', 'meta tagas ', 'amarres', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (46, 'Tortuga Clasificacion de colores', '', 'meta title', 'meta description', 'meta tagas ', 'tortuga-clasificacion-de-colores', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (47, 'Ponque tamaños', '', 'meta title', 'meta description', 'meta tagas ', 'ponque-tamaños', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (48, 'Manos de conteo signos ', '', 'meta title', 'meta description', 'meta tagas ', 'manos-de-conteo-signos', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (49, 'Lapices clasificaciòn de colores', '', 'meta title', 'meta description', 'meta tagas ', 'lapices-clasificaciòn-de-colores', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (50, 'Tamaños de grande a pequeño', '', 'meta title', 'meta description', 'meta tagas ', 'tamaños-de-grande-a-pequeño', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (51, 'Flautista', '', 'meta title', 'meta description', 'meta tagas ', 'flautista', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (52, 'Tren de los números', '', 'meta title', 'meta description', 'meta tagas ', 'tren-de-los-números', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (53, 'Vocales lazos', '', 'meta title', 'meta description', 'meta tagas ', 'vocales-lazos', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (54, 'Manos de conteo y Números', '', 'meta title', 'meta description', 'meta tagas ', 'manos-de-conteo-y-números', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (55, 'ABC ', '', 'meta title', 'meta description', 'meta tagas ', 'abc', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (56, 'Ratón de insertado Números', '', 'meta title', 'meta description', 'meta tagas ', 'ratón-de-insertado-números', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (57, 'Cojín  León', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-león', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (58, 'Cojín Mico', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-mico', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (59, 'Cojín dinosaurio', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-dinosaurio', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (60, 'Cojin Come galletas', '', 'meta title', 'meta description', 'meta tagas ', 'cojin-come-galletas', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (61, 'Cojín Elefante', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-elefante', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (62, 'Cojín Elmo', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-elmo', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (63, 'Cojín Perro', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-perro', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (64, 'Cojín Moutro', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-moutro', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (65, 'Cojín Gato', '', 'meta title', 'meta description', 'meta tagas ', 'cojín-gato', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (66, 'TEXTURAS BEBES 7 ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'texturas-bebes-7-actividades', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (67, 'TEXTURAS BEBES 10 ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'texturas-bebes-10-actividades', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (68, 'KENY 7 ACTIVIDADES ', '', 'meta title', 'meta description', 'meta tagas ', 'keny-7-actividades', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (69, 'KENY 10 ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'keny-10-actividades', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (70, 'KENY 5 ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'keny-5-actividades', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (71, 'KENY MÀS ACTIVIDADES', '', 'meta title', 'meta description', 'meta tagas ', 'keny-màs-actividades', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
INSERT INTO `products` VALUES (72, 'CUBO SENSORIAL', '', 'meta title', 'meta description', 'meta tagas ', 'cubo-sensorial', '2021-03-11 05:03:43', '2021-03-11 05:03:43', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Luis', 'Raga', 'luis.raga@keny.com', '$2a$14$kbUOTgtKJX33YGgB8LswFufFSPPXYsuMdjRL7y/y/Q/RqOSnKAhSy', '2021-03-05 18:25:50', '2021-03-05 18:25:50');
INSERT INTO `users` VALUES (2, 'David', 'Raga', 'david.raga@keny.com', '$2a$14$8P3MFBoTDgw5cVDzxR1.reLmbDID/Hb9NTGxb/VnPfN/VW7JyNTnG', '2021-03-05 18:26:02', '2021-03-05 18:26:02');
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
	p_now VARCHAR(255))
  COMMENT 'creación de una compra'
BEGIN
	
	DECLARE details TEXT default "";
    DECLARE reference_id INT ;
    DECLARE reference_name VARCHAR(40) ;
    DECLARE quantity INT;
	DECLARE price DOUBLE;
    DECLARE price_with_discount DOUBLE;
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
    
    START TRANSACTION;
        INSERT INTO `keny`.`orders`
		(`id`,`user_id`,`phone_id`,`address_id`,`city_id`,`puchase_status_id`,`total`,`created_at`,`updated_at`)
		VALUES
		(null,p_user_id,p_phone_id,p_address_id,p_city_id, @status_pending,p_total,p_now,p_now);
        
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
				where rh.headquarter_id = 1
                limit 1
                INTO reference_name,price ;
                
                -- guardar los details
                INSERT INTO `keny`.`order_details`
				(`id`,`order_id`,`reference_id`,`reference_name`,`price`,`quantity`,`price_with_discount`,`puchase_status_id`,`created_at`,`updated_at`)
				VALUES
				(null,@order_id,reference_id,reference_name,price,quantity,price_with_discount,@status_recibida,p_now,p_now);
			END IF;
			SET @count = @count + 1;
			UNTIL details = ""
		END REPEAT; 
    COMMIT;
    call ksp_response(true,"Order creada correctamente");
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
	
	select rh.stock, rh.price, r.id, kf_promotion_by_reference(r.product_id) discount  from references_headquarters rh 
		join `references` r on r.id = rh.reference_id
	where rh.headquarter_id = 1 and FIND_IN_SET(rh.reference_id,p_references) and rh.status_id = 1;
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
		p.slug,p.description,p.meta_title,p.meta_description,p.meta_tags,
		-- info references
		rh.id reference_id
		,r.name reference_name,r.color, r.view_front,rh.price,rh.stock, kf_promotion_by_reference(r.product_id) as discount
		FROM products p
		INNER join keny.references r on p.id = r.product_id
		INNER join references_headquarters rh on rh.reference_id = r.id 
		WHERE slug = p_slug;
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
