/*
Navicat MySQL Data Transfer

Source Server         : test_localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-09-15 15:17:51
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
  `is_deleted` tinyint(1) DEFAULT '1' COMMENT '是否删除：0为已经删除，1为未删除',
  `last_login_time` bigint(12) DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'xypecho@163.com', '1536236518370', '1', '', '1', '1536977639261');
INSERT INTO `users` VALUES ('13', '1', '呆呆', 'e10adc3949ba59abbe56e057f20f883e', 'daiddo@163.com', '1536418778877', '1', null, '1', '1536496075141');
INSERT INTO `users` VALUES ('14', '1', '王呆呆', '00a1f187721c63501356bf791e69382c', '760403480@qq.com', '1536582140983', '0', null, '0', '1536582192622');
INSERT INTO `users` VALUES ('15', '1', 'zhttty', '9cbf8a4dcb8e30682b927f352d6559a0', null, '1536675769839', '1', null, '1', null);
INSERT INTO `users` VALUES ('16', '1', '很青的青蛙丶', '488c026207369ba13eda1326a8507bc2', '', '1536756903814', '1', 'http://cdn.duitang.com/uploads/item/201602/05/20160205200523_fSRJv.jpeg', '1', '1536934466458');
INSERT INTO `users` VALUES ('17', '1', '呆呆阿噗:-D', '14e1b600b1fd579f47433b88e8d85291', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1536987053946&di=8efa075e4fdcb26303cca33bbe7f0031&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F96dda144ad3459823295344606f431adcaef84c3.jpg', '1536975246833', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1536987053946&di=8efa075e4fdcb26303cca33bbe7f0031&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F96dda144ad3459823295344606f431adcaef84c3.jpg', '0', null);
