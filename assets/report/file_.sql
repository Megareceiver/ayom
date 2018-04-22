/*
 Navicat Premium Data Transfer

 Source Server         : cafs_ptb
 Source Server Type    : MySQL
 Source Server Version : 50505
 Source Host           : localhost
 Source Database       : pmb_stin

 Target Server Type    : MySQL
 Target Server Version : 50505
 File Encoding         : utf-8

 Date: 03/27/2018 16:10:33 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `file_downloads`
-- ----------------------------
DROP TABLE IF EXISTS `file_downloads`;
CREATE TABLE `file_downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` text,
  `lampiran` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
