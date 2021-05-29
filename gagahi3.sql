/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : gagahi

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2021-05-29 17:10:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` varchar(55) NOT NULL,
  `username` varchar(300) NOT NULL,
  `passwords` varchar(300) NOT NULL,
  `inser_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('3d3f400f-bef2-11eb-b189-e86a64f181ec', '毛线', '123456', '2021-05-27 21:48:36');
INSERT INTO `admin` VALUES ('3d3f4289-bef2-11eb-b189-e86a64f181ec', '芝麻', '123456', '2021-05-27 21:48:36');
INSERT INTO `admin` VALUES ('3d3f4333-bef2-11eb-b189-e86a64f181ec', '菜鸡', '123456', '2021-05-27 21:51:27');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `cid` varchar(55) NOT NULL,
  `item_id` varchar(55) NOT NULL,
  `content` text NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `Ct_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('33eee1e9-bef3-11eb-b189-e86a64f181ec', 'd2b8c268-bef2-11eb-b189-e86a64f181ec', '哎哟，不错哦。', '67cb57a0-bef1-11eb-b189-e86a64f181ec', '2021-05-27 21:54:58');

-- ----------------------------
-- Table structure for imgs
-- ----------------------------
DROP TABLE IF EXISTS `imgs`;
CREATE TABLE `imgs` (
  `imgs_id` varchar(55) NOT NULL,
  `item_id` varchar(55) NOT NULL,
  `href` varchar(2400) NOT NULL,
  PRIMARY KEY (`imgs_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imgs
-- ----------------------------
INSERT INTO `imgs` VALUES ('060e47a5-bef3-11eb-b189-e86a64f181ec', 'd2b8c268-bef2-11eb-b189-e86a64f181ec', 'zyl\\\\088286c9b04817a4ac058b1b3e3e2600.jpg');
INSERT INTO `imgs` VALUES ('a2b8e318-bef3-11eb-b189-e86a64f181ec', '675c0cff-bef3-11eb-b189-e86a64f181ec', 'zyl\\\\f82d2afc111c2a63f5f5039320b97bad.jpg');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `item_id` varchar(55) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `content` text NOT NULL,
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('675c0cff-bef3-11eb-b189-e86a64f181ec', '67cb5865-bef1-11eb-b189-e86a64f181ec', '今天天气好好，我好想毛线', '2021-05-27 21:56:56');
INSERT INTO `item` VALUES ('d2b8c268-bef2-11eb-b189-e86a64f181ec', '67cb57a0-bef1-11eb-b189-e86a64f181ec', '哎哟，不错哦', '2021-05-27 21:52:46');

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `like_id` varchar(55) NOT NULL,
  `item_id` varchar(55) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`like_id`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES ('166ee1da-bef3-11eb-b189-e86a64f181ec', 'd2b8c268-bef2-11eb-b189-e86a64f181ec', '67cb59b9-bef1-11eb-b189-e86a64f181ec', '2021-05-27 21:54:33');
INSERT INTO `likes` VALUES ('ada8fbbc-bef3-11eb-b189-e86a64f181ec', 'd2b8c268-bef2-11eb-b189-e86a64f181ec', '67cb59b9-bef1-11eb-b189-e86a64f181ec', '2021-05-27 21:58:54');
INSERT INTO `likes` VALUES ('caec9c94-bef3-11eb-b189-e86a64f181ec', '675c0cff-bef3-11eb-b189-e86a64f181ec', '67cb58df-bef1-11eb-b189-e86a64f181ec', '2021-05-27 21:59:43');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(55) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `area` varchar(240) NOT NULL,
  `telephone` char(240) NOT NULL,
  `head` varchar(2400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('67cb54cf-bef1-11eb-b189-e86a64f181ec', 'Admin', 'Admin', 'China', '17875511815', 'head1.jpg');
INSERT INTO `user` VALUES ('67cb57a0-bef1-11eb-b189-e86a64f181ec', 'Lucky', 'Lucky', 'America', '17875511816', 'head2.jpg');
INSERT INTO `user` VALUES ('67cb5865-bef1-11eb-b189-e86a64f181ec', 'Aria', 'Aria', 'Australia', '17875511817', 'head3.jpg');
INSERT INTO `user` VALUES ('67cb58df-bef1-11eb-b189-e86a64f181ec', 'Mike', 'Mike', 'Italy', '17875511818', 'head5.jpg');
INSERT INTO `user` VALUES ('67cb594c-bef1-11eb-b189-e86a64f181ec', 'Jackson', 'Jackson', 'America', '17875511819', 'head6.jpg');
INSERT INTO `user` VALUES ('67cb59b9-bef1-11eb-b189-e86a64f181ec', 'Arky1', 'arky', 'China', '17875511815', '20211107\\c373f2e029bb5bb6bc7376261728d8f9.jpg');
INSERT INTO `user` VALUES ('67cb5ab7-bef1-11eb-b189-e86a64f181ec', 'Arky', 'arky', 'China', '17875511815', '20211107\\084017e91b74b0a20e4db146915cd8c2.jpg');
DROP TRIGGER IF EXISTS `aid_trigger`;
DELIMITER ;;
CREATE TRIGGER `aid_trigger` BEFORE INSERT ON `admin` FOR EACH ROW BEGIN

	SET new.aid=UUID();

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `cid_trigger`;
DELIMITER ;;
CREATE TRIGGER `cid_trigger` BEFORE INSERT ON `comments` FOR EACH ROW BEGIN

	SET new.cid=UUID();

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `imgs_trigger`;
DELIMITER ;;
CREATE TRIGGER `imgs_trigger` BEFORE INSERT ON `imgs` FOR EACH ROW BEGIN

	SET new.imgs_id=UUID();

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `item_trigger`;
DELIMITER ;;
CREATE TRIGGER `item_trigger` BEFORE INSERT ON `item` FOR EACH ROW BEGIN

	SET new.item_id=UUID();

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `like_id`;
DELIMITER ;;
CREATE TRIGGER `like_id` BEFORE INSERT ON `likes` FOR EACH ROW BEGIN

	SET new.like_id=UUID();

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `id_trigger`;
DELIMITER ;;
CREATE TRIGGER `id_trigger` BEFORE INSERT ON `user` FOR EACH ROW BEGIN

	SET new.id=UUID();

END
;;
DELIMITER ;
