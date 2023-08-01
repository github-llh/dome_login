/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : ddd

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 01/08/2023 14:43:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for a_user_info
-- ----------------------------
DROP TABLE IF EXISTS `a_user_info`;
CREATE TABLE `a_user_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gitee_id` int NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_user_info
-- ----------------------------
INSERT INTO `a_user_info` VALUES (1, 'admin', '5261e632cabdacba660b0cb99c1dec57', 'dc40328a', NULL, NULL, NULL);
INSERT INTO `a_user_info` VALUES (3, 'root', '32fbe70c92edfa4de3e21e7beacffd03', '84bfefb7', NULL, NULL, NULL);
INSERT INTO `a_user_info` VALUES (4, '123', '9346942290d33d8a790ef34b5492c510', 'fc2b7c9a', NULL, NULL, NULL);
INSERT INTO `a_user_info` VALUES (5, 'llhnp', '9212bc125b84966f72139686d13eed1e', '905dcc58', 5734187, 'lilinhan', 'https://foruda.gitee.com/avatar/1677066265888937196/5734187_hot_dominator_1582615718.png');

SET FOREIGN_KEY_CHECKS = 1;
