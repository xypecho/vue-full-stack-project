/*
Navicat MySQL Data Transfer

Source Server         : test_localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-09-08 14:47:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `utype` tinyint(1) unsigned DEFAULT '1' COMMENT '用户类型：0为管理员，1为普通用户',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` char(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `register_time` bigint(12) DEFAULT NULL COMMENT '注册时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态：0为禁用，1为启用',
  `avatar` char(255) DEFAULT NULL COMMENT '头像',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除：0为未删除，1为已经删除',
  `last_login_time` bigint(12) DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'xypecho@163.com', '1536236518370', '1', null, '0', null);
