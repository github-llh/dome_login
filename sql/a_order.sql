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

 Date: 01/08/2023 20:54:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for a_order
-- ----------------------------
DROP TABLE IF EXISTS `a_order`;
CREATE TABLE `a_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `submit_time` datetime NULL DEFAULT NULL,
  `uid` int NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sid` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT 0,
  `cid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_num`(`order_num` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_order
-- ----------------------------
INSERT INTO `a_order` VALUES (2, 'a4319e0d-db68-459c-9c69-089ff745c604', '2023-07-27 10:55:21', 1, 344.45, 'WeChat', 1, 0, 1);
INSERT INTO `a_order` VALUES (3, '587c30f7-be0c-45bc-b9ad-d4e245646ea9', '2023-07-27 10:58:18', 3, 222.22, 'AliPay', 2, 1, 2);
INSERT INTO `a_order` VALUES (4, '27f3e609-5fba-4ea5-b11a-da278cbd825c', '2023-07-27 10:59:28', 4, 33.33, 'PayPay', 3, 0, 2);
INSERT INTO `a_order` VALUES (5, '5b840712-cb7d-4bd1-92c5-3a886f74757c', '2023-07-27 11:36:34', 8, 23.33, 'PayPay', 2, 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
