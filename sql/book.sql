/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 5.7.19 : Database - book_manager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book_manager` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `book_manager`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `publish` varchar(255) DEFAULT NULL,
  `publish_time` datetime(6) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `translate` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`id`,`author`,`isbn`,`name`,`pages`,`price`,`publish`,`publish_time`,`size`,`translate`,`type`) values 
(1,'盐野七生','XKR000001','《希腊人的故事》',300,61,'光明日报出版社','2020-07-15 20:20:06.523000',100,'无','历史'),
(2,'陈寿','CS20200728','《三国志》',200,21,'光明日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(3,'罗贯中','SGYY20200728','《三国演义》',200,22,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(4,'吴承恩','XYJ20200728','《西游记》',600,23,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(5,'曹雪芹','HLM20200728','《红楼梦》',800,23,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(6,'司马迁','SJ20200728','《史记》',400,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(7,'施耐庵','SHZ20200728','《水浒传》',400,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(8,'郭敬明','XSD20200728','《小时代/刺金时代》',200,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(9,'佚名','XSD20200728','《山海经》',200,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(10,'金庸','YTTL20200728','《倚天屠龙记》',200,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(11,'金庸','YTTL20200729','《倚天屠龙记2》',200,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(12,'金庸','YTTL20200730','《倚天屠龙记3》',200,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(13,'金庸','YTTL20200731','《倚天屠龙记4》',200,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(14,'金庸','YTTL20200732','《倚天屠龙记5》',200,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(15,'金庸','YTTL20200733','《倚天屠龙记6》',200,33,'人民日报出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(16,'金庸','TLBB20200733','《天龙八部》',200,34,'光线传媒出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(17,'金庸','TLBB20200734','《天龙八部2》',200,34,'光线传媒出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(18,'金庸','TLBB20200735','《天龙八部3》',200,34,'光线传媒出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(19,'金庸','TLBB20200736','《天龙八部4》',200,34,'光线传媒出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(20,'金庸','TLBB20200737','《天龙八部5》',200,35,'光线传媒出版社','2020-07-15 08:00:00.000000',100,'无','文化'),
(21,'刘同','DBS20200737','《当悲伤逆流成河》',200,35,'光线传媒出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(23,'鲁迅','KRRJ20200737','《狂人日记》',200,35,'光线传媒出版社','2020-07-15 20:20:06.523000',100,'无','文化'),
(24,'鲁迅','NH20200737','《呐喊》',200,35,'光线传媒出版社','2020-07-15 20:20:06.523000',99,'无','文化'),
(25,'安妮','JA20200737','《简爱》',200,35,'光线传媒出版社','2020-07-15 08:00:00.000000',98,'无','文化'),
(26,'宫云战','9787111532705','软件测试',352,46,'机械工业出版社','2018-04-15 08:00:00.000000',27,'无','科学'),
(27,'布鲁克斯','RYSH20210225','人月神话',369,29.8,'清华大学出版社','2002-11-01 08:00:00.000000',49,'The Mythical Man-Month','科学');

/*Table structure for table `borrow` */

DROP TABLE IF EXISTS `borrow`;

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `ret` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `borrow` */

insert  into `borrow`(`id`,`book_id`,`create_time`,`update_time`,`user_id`,`end_time`,`ret`) values 
(13,25,'2020-07-28 08:00:00.000000','2020-07-29 08:00:00.000000',4,'2020-07-29 08:00:00.000000',1),
(14,24,'2020-07-28 08:00:00.000000','2020-07-29 08:00:00.000000',4,'2020-07-29 08:00:00.000000',1),
(15,26,'2020-11-07 08:00:00.000000','2020-11-08 08:00:00.000000',4,'2020-11-08 08:00:00.000000',1),
(17,26,'2021-01-20 08:00:00.000000','2021-01-21 08:00:00.000000',1,'2021-01-21 08:00:00.000000',1),
(18,26,'2021-02-16 08:00:00.000000','2021-02-17 08:00:00.000000',14,'2021-02-17 08:00:00.000000',1),
(19,27,'2021-02-28 08:00:00.000000','2021-03-01 08:00:00.000000',1,'2021-03-01 08:00:00.000000',1);

/*Table structure for table `msg` */

DROP TABLE IF EXISTS `msg`;

CREATE TABLE `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `umsg` varchar(1000) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `msg` */

insert  into `msg`(`id`,`umsg`,`time`) values 
(1,'第一条留言',NULL),
(13,'123','2021-02-24'),
(14,'321','2021-02-24');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `identity` int(11) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`address`,`avatar`,`birthday`,`email`,`identity`,`is_admin`,`nickname`,`password`,`size`,`tel`,`username`) values 
(1,'上海','string','2020-07-14 19:01:33.863000','stu@163.com',0,0,'学生','123',0,'13145238054','stu'),
(2,'上海','string','2020-07-14 08:00:00.000000','tea@163.com',1,0,'教师','123',5,'string','tea'),
(3,'北京','a.jpg','2020-07-14 19:01:33.863000','other@163.com',2,0,'社会人士','123',3,'15078826452','other'),
(4,'北京','b.jpa','2020-07-16 16:06:43.000000','admin@163.com',3,0,'管理员','123',2,'17679088880','admin'),
(8,'北京朝阳','b.jpa','1998-02-12 08:00:00.000000','guest01@163.com',3,0,'游客1','123',10,'13576008880','guest01'),
(9,'北京','b.jpa','1982-01-01 08:00:00.000000','guest02@163.com',3,0,'游客2','123',10,'1768220000','guest02'),
(10,'湘大',NULL,'1999-07-14 08:00:00.000000','2224908583@qq.com',3,0,'姚双龙','123',100,'18273024852','YSL'),
(14,'',NULL,NULL,'',0,1,'读者','123',9,'','reader'),
(15,'',NULL,NULL,'',2,1,'reader2','123',5,'','reader2'),
(16,'',NULL,NULL,'',1,1,'reader3','123',2,'','reader3'),
(17,'',NULL,NULL,'',0,1,'reader4','123',3,'','reader4'),
(18,'',NULL,'2021-02-15 08:00:00.000000','',0,1,'r6','123',2,'','r6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
