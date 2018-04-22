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

 Date: 03/26/2018 19:38:14 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `ukuran_seragam_catar`
-- ----------------------------
DROP TABLE IF EXISTS `ukuran_seragam_catar`;
CREATE TABLE `ukuran_seragam_catar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_biodata` int(11) NOT NULL,
  `baju_seragam` varchar(3) NOT NULL,
  `celana` varchar(2) NOT NULL,
  `kaos` varchar(3) NOT NULL,
  `sepatu` varchar(2) NOT NULL,
  `longkar_kepala` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
