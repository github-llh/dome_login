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

 Date: 01/08/2023 14:36:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c_house
-- ----------------------------
DROP TABLE IF EXISTS `c_house`;
CREATE TABLE `c_house`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pid` int NULL DEFAULT NULL,
  `cid` int NULL DEFAULT NULL,
  `qid` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c_house
-- ----------------------------
INSERT INTO `c_house` VALUES (1, '汤唯7期', 3, 3, 1, '在售');
INSERT INTO `c_house` VALUES (2, '万科9期', 4, 2, 3, '停工');
INSERT INTO `c_house` VALUES (3, '碧桂园8期', 2, 3, 3, '入住');
INSERT INTO `c_house` VALUES (4, '汤唯1期', 4, 4, 4, '停工');
INSERT INTO `c_house` VALUES (5, '汤唯2期', 2, 1, 3, '在售');
INSERT INTO `c_house` VALUES (6, '碧桂园6期', 3, 5, 2, '停工');
INSERT INTO `c_house` VALUES (7, '恒大6期', 2, 4, 3, '在售');
INSERT INTO `c_house` VALUES (8, '万科6期', 2, 3, 3, '停工');
INSERT INTO `c_house` VALUES (9, '汤唯1期', 5, 3, 3, '入住');
INSERT INTO `c_house` VALUES (10, '汤唯3期', 1, 3, 4, '入住');
INSERT INTO `c_house` VALUES (11, '汤唯4期', 4, 3, 1, '在售');
INSERT INTO `c_house` VALUES (12, '碧桂园1期', 3, 3, 4, '入住');
INSERT INTO `c_house` VALUES (13, '恒大2期', 1, 5, 3, '在售');
INSERT INTO `c_house` VALUES (14, '碧桂园1期', 2, 2, 4, '在售');
INSERT INTO `c_house` VALUES (15, '汤唯7期', 4, 5, 4, '停工');
INSERT INTO `c_house` VALUES (16, '恒大6期', 2, 3, 1, '在售');
INSERT INTO `c_house` VALUES (17, '万科9期', 3, 1, 3, '入住');
INSERT INTO `c_house` VALUES (18, '汤唯5期', 4, 4, 4, '入住');
INSERT INTO `c_house` VALUES (19, '恒大5期', 2, 5, 2, '停工');
INSERT INTO `c_house` VALUES (20, '恒大1期', 3, 3, 4, '在售');
INSERT INTO `c_house` VALUES (21, '万科6期', 4, 2, 4, '入住');
INSERT INTO `c_house` VALUES (22, '恒大5期', 4, 2, 2, '在售');
INSERT INTO `c_house` VALUES (23, '恒大7期', 1, 1, 2, '停工');
INSERT INTO `c_house` VALUES (24, '碧桂园4期', 4, 2, 2, '停工');
INSERT INTO `c_house` VALUES (25, '碧桂园6期', 3, 3, 4, '在售');
INSERT INTO `c_house` VALUES (26, '碧桂园3期', 4, 1, 4, '入住');
INSERT INTO `c_house` VALUES (27, '汤唯7期', 1, 5, 3, '停工');
INSERT INTO `c_house` VALUES (28, '汤唯8期', 2, 5, 3, '入住');
INSERT INTO `c_house` VALUES (29, '万科7期', 5, 3, 4, '在售');
INSERT INTO `c_house` VALUES (30, '万科8期', 2, 2, 4, '停工');
INSERT INTO `c_house` VALUES (31, '碧桂园5期', 4, 1, 2, '在售');
INSERT INTO `c_house` VALUES (32, '碧桂园6期', 5, 3, 2, '入住');
INSERT INTO `c_house` VALUES (33, '碧桂园9期', 4, 2, 4, '入住');
INSERT INTO `c_house` VALUES (34, '万科7期', 4, 1, 3, '停工');
INSERT INTO `c_house` VALUES (35, '万科2期', 3, 2, 3, '停工');
INSERT INTO `c_house` VALUES (36, '万科4期', 4, 4, 2, '停工');
INSERT INTO `c_house` VALUES (37, '恒大3期', 4, 3, 1, '入住');
INSERT INTO `c_house` VALUES (38, '万科9期', 2, 5, 2, '入住');
INSERT INTO `c_house` VALUES (39, '碧桂园4期', 5, 3, 1, '停工');
INSERT INTO `c_house` VALUES (40, '恒大6期', 3, 3, 3, '入住');
INSERT INTO `c_house` VALUES (41, '恒大1期', 2, 3, 2, '入住');
INSERT INTO `c_house` VALUES (42, '恒大6期', 1, 3, 3, '在售');
INSERT INTO `c_house` VALUES (43, '碧桂园3期', 2, 3, 2, '在售');
INSERT INTO `c_house` VALUES (44, '碧桂园5期', 3, 5, 1, '在售');
INSERT INTO `c_house` VALUES (45, '碧桂园6期', 4, 3, 1, '入住');
INSERT INTO `c_house` VALUES (46, '万科1期', 4, 3, 3, '入住');
INSERT INTO `c_house` VALUES (47, '碧桂园9期', 3, 4, 2, '入住');
INSERT INTO `c_house` VALUES (48, '恒大5期', 3, 3, 2, '停工');
INSERT INTO `c_house` VALUES (49, '恒大5期', 3, 2, 2, '停工');
INSERT INTO `c_house` VALUES (50, '碧桂园9期', 4, 2, 4, '停工');

SET FOREIGN_KEY_CHECKS = 1;
