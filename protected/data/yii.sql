/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50534
Source Host           : 127.0.0.1:3306
Source Database       : yii

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2013-12-10 11:06:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yii_article
-- ----------------------------
DROP TABLE IF EXISTS `yii_article`;
CREATE TABLE `yii_article` (
  `article_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) DEFAULT NULL,
  `article_title` varchar(255) DEFAULT NULL,
  `article_intro` text,
  `article_content` longtext,
  `user_id` int(11) DEFAULT NULL,
  `article_create_time` timestamp NULL DEFAULT NULL,
  `article_view` varchar(255) DEFAULT NULL,
  `article_comment` varchar(255) DEFAULT NULL,
  `article_picpath` varchar(255) DEFAULT NULL,
  `article_description` varchar(255) DEFAULT NULL,
  `article_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii_article
-- ----------------------------

-- ----------------------------
-- Table structure for yii_category
-- ----------------------------
DROP TABLE IF EXISTS `yii_category`;
CREATE TABLE `yii_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_pid` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_module` varchar(255) DEFAULT NULL,
  `category_path` varchar(255) DEFAULT NULL,
  `category_url` varchar(255) DEFAULT NULL,
  `category_is_nav` int(11) DEFAULT NULL,
  `category_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii_category
-- ----------------------------

-- ----------------------------
-- Table structure for yii_logs
-- ----------------------------
DROP TABLE IF EXISTS `yii_logs`;
CREATE TABLE `yii_logs` (
  `log_id` int(11) DEFAULT NULL,
  `log_type` int(11) DEFAULT NULL,
  `log_remark` varchar(255) DEFAULT NULL,
  `log_create_time` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii_logs
-- ----------------------------

-- ----------------------------
-- Table structure for yii_picture
-- ----------------------------
DROP TABLE IF EXISTS `yii_picture`;
CREATE TABLE `yii_picture` (
  `pic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pic_alt` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `pic_module` varchar(255) DEFAULT NULL,
  `pic_foreign_id` int(11) DEFAULT NULL,
  `pic_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii_picture
-- ----------------------------

-- ----------------------------
-- Table structure for yii_product
-- ----------------------------
DROP TABLE IF EXISTS `yii_product`;
CREATE TABLE `yii_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_introduce` text,
  `product_picture` varchar(255) DEFAULT NULL,
  `product_create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) DEFAULT NULL,
  `product_keys` varchar(255) DEFAULT NULL,
  `product_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii_product
-- ----------------------------

-- ----------------------------
-- Table structure for yii_user
-- ----------------------------
DROP TABLE IF EXISTS `yii_user`;
CREATE TABLE `yii_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login_time` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii_user
-- ----------------------------

-- ----------------------------
-- Table structure for yii_widgets
-- ----------------------------
DROP TABLE IF EXISTS `yii_widgets`;
CREATE TABLE `yii_widgets` (
  `widget_id` int(11) DEFAULT NULL,
  `widget_name` varchar(255) DEFAULT NULL,
  `widget_desc` varchar(255) DEFAULT NULL,
  `widget_content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii_widgets
-- ----------------------------
