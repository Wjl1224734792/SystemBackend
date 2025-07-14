/*
 Navicat MySQL Data Transfer
 
 Source Server         : back_system
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Database       : back_system
 
 Target Server Type    : MYSQL
 Target Server Version : 50726
 File Encoding         : 65001
 
 Date: 2024-05-22 10:52:10
 */
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `upload_person` varchar(255) DEFAULT NULL,
  `upload_time` varchar(255) DEFAULT NULL,
  `download_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 28 DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of files
-- ----------------------------
-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `account` int(255) DEFAULT NULL,
  `onlyId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 14 DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image`
VALUES (
    '13',
    'http://127.0.0.1:3007/upload/avatar.jpg',
    '123666',
    'b8df7fcd-15b7-40be-8e9e-76d72b1ed84b'
  );
-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(12) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 8 DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of login_log
-- ----------------------------
-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_title` varchar(255) DEFAULT NULL,
  `message_category` varchar(255) DEFAULT NULL,
  `message_publish_department` varchar(255) DEFAULT NULL,
  `message_publish_name` varchar(255) DEFAULT NULL,
  `message_receipt_object` varchar(255) DEFAULT NULL,
  `message_click_number` int(11) DEFAULT NULL,
  `message_content` varchar(255) DEFAULT NULL,
  `message_publish_time` varchar(255) DEFAULT NULL,
  `message_update_time` varchar(255) DEFAULT NULL,
  `message_level` varchar(255) DEFAULT NULL,
  `message_status` int(11) DEFAULT NULL,
  `message_delete_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 36 DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of message
-- ----------------------------
-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_person` varchar(255) DEFAULT NULL,
  `operation_content` varchar(255) DEFAULT NULL,
  `operation_level` varchar(255) DEFAULT NULL,
  `operation_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of operation_log
-- ----------------------------
-- ----------------------------
-- Table structure for outproduct
-- ----------------------------
DROP TABLE IF EXISTS `outproduct`;
CREATE TABLE `outproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_out_id` int(11) DEFAULT NULL,
  `product_out_number` int(11) DEFAULT NULL,
  `product_out_price` int(11) DEFAULT NULL,
  `product_out_apply_person` varchar(255) DEFAULT NULL,
  `product_audit_time` varchar(255) DEFAULT NULL,
  `product_out_audit_person` varchar(255) DEFAULT NULL,
  `audit_memo` varchar(255) DEFAULT NULL,
  `product_apply_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of outproduct
-- ----------------------------
-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `product_unit` varchar(255) DEFAULT NULL,
  `product_in_warehouse_number` int(11) DEFAULT NULL,
  `product_single_price` int(11) DEFAULT NULL,
  `product_all_price` int(11) DEFAULT NULL,
  `product_status` varchar(255) DEFAULT NULL,
  `product_create_person` varchar(255) DEFAULT NULL,
  `product_create_time` varchar(255) DEFAULT NULL,
  `product_update_time` varchar(255) DEFAULT NULL,
  `in_memo` varchar(255) DEFAULT NULL,
  `product_out_id` int(11) DEFAULT NULL,
  `product_out_number` int(11) DEFAULT NULL,
  `product_out_price` int(11) DEFAULT NULL,
  `product_out_apply_person` varchar(255) DEFAULT NULL,
  `product_apply_time` varchar(255) DEFAULT NULL,
  `apply_memo` varchar(255) DEFAULT NULL,
  `product_out_status` varchar(255) DEFAULT NULL,
  `product_audit_time` varchar(255) DEFAULT NULL,
  `product_out_audit_person` varchar(255) DEFAULT NULL,
  `audit_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of product
-- ----------------------------
-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `set_name` varchar(255) DEFAULT NULL,
  `set_value` varchar(255) DEFAULT NULL,
  `set_text` text,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting`
VALUES (
    '1',
    'swiper1',
    'http://127.0.0.1:3007/upload/logo1.jpg',
    null
  );
INSERT INTO `setting`
VALUES (
    '2',
    'swiper2',
    'http://127.0.0.1:3007/upload/logo2.jpg',
    null
  );
INSERT INTO `setting`
VALUES (
    '3',
    'swiper3',
    'http://127.0.0.1:3007/upload/logo3.jpg',
    null
  );
INSERT INTO `setting`
VALUES (
    '4',
    'swiper4',
    'http://127.0.0.1:3007/upload/logo4.jpg',
    null
  );
INSERT INTO `setting`
VALUES (
    '5',
    'swiper5',
    'http://127.0.0.1:3007/upload/logo5.jpg',
    null
  );
INSERT INTO `setting`
VALUES (
    '6',
    'swiper6',
    'http://127.0.0.1:3007/upload/logo6.jpg',
    null
  );
INSERT INTO `setting`
VALUES ('7', '公司名称', '某某科技有限公司', null);
INSERT INTO `setting`
VALUES ('8', '公司介绍', null, '<p>期待您的编辑</p>');
INSERT INTO `setting`
VALUES ('9', '公司架构', null, '<p>期待您的编辑</p>');
INSERT INTO `setting`
VALUES ('10', '公司战略', null, '<p>期待您的编辑</p>');
INSERT INTO `setting`
VALUES (
    '11',
    '公司高层',
    null,
    '<p>期待您的编辑</p>'
  );
INSERT INTO `setting`
VALUES ('12', '部门设置', '[\"总裁办\",\"组织部\"]', null);
INSERT INTO `setting`
VALUES ('13', '产品设置', '[\"食品类\"]', null);
-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(12) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `read_list` varchar(255) DEFAULT NULL,
  `read_status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 49 DEFAULT CHARSET = utf8;
-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users`
VALUES (
    '43',
    '123666',
    '$2a$10$TyJm48diZ6VgnsjxSdEKBOR9rfAiH/pcVjrH/RjUKzVWkakNFPBcu',
    '超级管理员',
    '总裁办',
    '张三',
    '男',
    '123@qq.com',
    'http://127.0.0.1:3007/upload/avatar.jpg',
    '2024-01-31 10:44:18.102',
    null,
    '0',
    '[]',
    '1'
  );