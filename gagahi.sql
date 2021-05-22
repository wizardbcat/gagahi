/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.19 : Database - gagahi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gagahi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gagahi`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(300) NOT NULL,
  `PASSWORD` varchar(300) NOT NULL,
  `inser_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`PASSWORD`,`inser_time`) values (1,'毛线','123456','2021-05-22 17:39:10'),(2,'芝麻','123456','2021-05-22 17:39:10'),(3,'admin','admin','2021-05-22 17:39:10');

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

insert  into `comments`(`id`,`item_id`,`content`,`user_id`,`time`) values (1,55,'哎哟，不错哦。',3,1510674342),(2,55,'今天天气好好，我好想毛线',2,1510673956),(3,55,'whoo！！lumos！',1,1510673912),(4,56,'hello',1,1525144045);

/*Table structure for table `imgs` */

DROP TABLE IF EXISTS `imgs`;

CREATE TABLE `imgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `href` varchar(2400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `imgs` */

insert  into `imgs`(`id`,`item_id`,`href`) values (1,3,'zyl\\088286c9b04817a4ac058b1b3e3e2600.jpg'),(2,2,'zyl\\f82d2afc111c2a63f5f5039320b97bad.jpg'),(3,1,'zyl\\7e8d4f1eb48835626d387083ffeb0285.jpg');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `item` */

insert  into `item`(`id`,`user_id`,`content`,`publish_time`) values (1,3,'荆轲刺秦王，初听不知曲中意，回头已是曲中人。','2021-05-22 18:19:24'),(2,2,'生活可真有意思','2021-05-22 18:19:24'),(3,1,'Hello world!','2021-05-22 18:19:24');

/*Table structure for table `likes` */

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `likes` */

insert  into `likes`(`id`,`item_id`,`user_id`,`publish_time`) values (1,2,3,'2021-05-22 18:25:49'),(2,1,3,'2021-05-22 18:25:49'),(3,3,2,'2021-05-22 18:25:49');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `area` varchar(240) NOT NULL,
  `telephone` char(240) NOT NULL,
  `head` varchar(2400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`area`,`telephone`,`head`) values (1,'Admin','Admin','China','17875511811','head1.jpg'),(2,'Lucky','Lucky','America','17875511812','head2.jpg'),(3,'Aria','Aria','Australia','17875511817','head3.jpg'),(4,'Mike','Mike','Italy','17875511818','head5.jpg'),(5,'Jackson','Jackson','America','17875511819','head6.jpg'),(6,'张姆斯','123','China','17875511813','20210522\\c373f2e029bb5bb6bc7376261728d8f9.jpg'),(7,'老毛线','123','China','17875511815','20210522\\084017e91b74b0a20e4db146915cd8c2.jpg'),(8,'托马斯','123','China','18272217814','head7.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
