/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-02-27 14:33:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_permission`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_permission`;
CREATE TABLE `tbl_permission` (
  `PERMISSION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERMISSION_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PERMISSION_ID`),
  UNIQUE KEY `PERMISSION_NAME_UNIQUE` (`PERMISSION_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_permission
-- ----------------------------
INSERT INTO `tbl_permission` VALUES ('1', 'CREATE');
INSERT INTO `tbl_permission` VALUES ('3', 'DELETE');
INSERT INTO `tbl_permission` VALUES ('2', 'QUERY');
INSERT INTO `tbl_permission` VALUES ('4', 'UPDATE');

-- ----------------------------
-- Table structure for `tbl_permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_permission_role`;
CREATE TABLE `tbl_permission_role` (
  `ROLE_ID` int(11) NOT NULL,
  `PERMISSION_ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_permission_role
-- ----------------------------
INSERT INTO `tbl_permission_role` VALUES ('1', '1');
INSERT INTO `tbl_permission_role` VALUES ('1', '2');
INSERT INTO `tbl_permission_role` VALUES ('1', '3');
INSERT INTO `tbl_permission_role` VALUES ('1', '4');
INSERT INTO `tbl_permission_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `tbl_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`),
  UNIQUE KEY `ROLE_NAME_UNIQUE` (`ROLE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES ('1', 'ADMIN');
INSERT INTO `tbl_role` VALUES ('2', 'USER');

-- ----------------------------
-- Table structure for `tbl_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_user`;
CREATE TABLE `tbl_role_user` (
  `ROLE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role_user
-- ----------------------------
INSERT INTO `tbl_role_user` VALUES ('1', '1');
INSERT INTO `tbl_role_user` VALUES ('2', '1');
INSERT INTO `tbl_role_user` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_USERNAME` varchar(45) NOT NULL,
  `USER_PASSWORD` char(32) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USER_USERNAME_UNIQUE` (`USER_USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'yingzhuo', '1234');
INSERT INTO `tbl_user` VALUES ('2', 'lee', '123456');
