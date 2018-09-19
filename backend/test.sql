/*
Navicat MySQL Data Transfer

Source Server         : test_localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-09-19 17:18:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hitokoto
-- ----------------------------
DROP TABLE IF EXISTS `hitokoto`;
CREATE TABLE `hitokoto` (
  `id` int(11) NOT NULL,
  `hitokoto` text COMMENT '一段话',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `insert_time` bigint(12) DEFAULT NULL COMMENT '插入数据库的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hitokoto
-- ----------------------------

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
  `is_deleted` tinyint(1) DEFAULT '1' COMMENT '是否删除：0为已经删除，1为未删除',
  `last_login_time` bigint(12) DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'xypecho@163.com', '1536236518370', '1', 'http://localhost:8081/1537277573806.jpg', '1', '1537339747547');
INSERT INTO `users` VALUES ('13', '1', '呆呆', 'e10adc3949ba59abbe56e057f20f883e', 'daiddo@163.com', '1536418778877', '1', null, '1', '1536496075141');
INSERT INTO `users` VALUES ('14', '1', '王呆呆', '8b47aa67de9baf09811ad58468a8ad9f', '760403480@qq.com', '1536582140983', '1', 'null', '0', '1536582192622');
INSERT INTO `users` VALUES ('15', '1', 'zhttty', '3de992f34131aaa1618a7f73cad0b4be', 'null', '1536675769839', '0', 'null', '1', null);
INSERT INTO `users` VALUES ('16', '1', '很青的青蛙丶', '7bbb61dce1c676091a35d161b03b6352', '', '1536756903814', '0', 'http://cdn.duitang.com/uploads/item/201602/05/20160205200523_fSRJv.jpeg', '1', '1536934466458');
INSERT INTO `users` VALUES ('17', '1', '呆呆阿噗:-D', '14e1b600b1fd579f47433b88e8d85291', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1536987053946&di=8efa075e4fdcb26303cca33bbe7f0031&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F96dda144ad3459823295344606f431adcaef84c3.jpg', '1536975246833', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1536987053946&di=8efa075e4fdcb26303cca33bbe7f0031&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F96dda144ad3459823295344606f431adcaef84c3.jpg', '0', null);
INSERT INTO `users` VALUES ('18', '1', '尊老爱幼尹志平', '0bb029d5cfe21c44bd1d42bdc407afda', null, '1537343645928', '1', 'http://localhost:8081/1537344369026.jpg', '1', null);
