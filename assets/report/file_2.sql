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

 Date: 03/26/2018 21:21:58 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `penguasaan_kendaraan_catar`
-- ----------------------------
DROP TABLE IF EXISTS `penguasaan_kendaraan_catar`;
CREATE TABLE `penguasaan_kendaraan_catar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_biodata` int(11) NOT NULL,
  `sim_a` char(1) NOT NULL,
  `sim_b` char(1) NOT NULL,
  `sim_ab` char(1) NOT NULL,
  `sim_c` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
