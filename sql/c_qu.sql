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

 Date: 01/08/2023 14:37:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c_qu
-- ----------------------------
DROP TABLE IF EXISTS `c_qu`;
CREATE TABLE `c_qu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_qu
-- ----------------------------
INSERT INTO `c_qu` VALUES (1, '城南');
INSERT INTO `c_qu` VALUES (2, '城北');
INSERT INTO `c_qu` VALUES (3, '城东');
INSERT INTO `c_qu` VALUES (4, '城西');
INSERT INTO `c_qu` VALUES (5, '城中');

SET FOREIGN_KEY_CHECKS = 1;
