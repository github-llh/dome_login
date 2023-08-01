/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : ccc

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 01/08/2023 14:37:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c_city
-- ----------------------------
DROP TABLE IF EXISTS `c_city`;
CREATE TABLE `c_city`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_city
-- ----------------------------
INSERT INTO `c_city` VALUES (1, '菏泽');
INSERT INTO `c_city` VALUES (2, '太原');
INSERT INTO `c_city` VALUES (3, '邯郸');
INSERT INTO `c_city` VALUES (4, '洛阳');
INSERT INTO `c_city` VALUES (5, '宿迁');

SET FOREIGN_KEY_CHECKS = 1;
