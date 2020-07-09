/*
SQLyog Ultimate v9.10 
MySQL - 5.7.27 : Database - oa_manage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oa_manage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oa_manage`;

/*Table structure for table `card` */

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `staff_id` int(20) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_card` (`staff_id`),
  CONSTRAINT `FK_card` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `card` */

insert  into `card`(`id`,`staff_id`,`date_time`) values (1,1,'2020-07-04 00:00:00'),(3,4,'2020-07-08 00:00:00'),(4,4,'2020-07-08 00:00:00'),(5,4,'2020-07-04 00:00:00'),(6,4,'2020-07-04 00:00:00'),(7,1,'2020-07-04 11:05:00'),(8,1,'2020-07-04 11:05:00');

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `class` */

insert  into `class`(`id`,`class_name`) values (1,'工程部'),(2,'科技部'),(3,'划水部'),(4,'科技部'),(5,'学习部'),(6,'太难了');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `logname` varchar(20) DEFAULT NULL,
  `logpass` varchar(20) DEFAULT NULL,
  `staff_age` int(20) DEFAULT NULL,
  `staff_class` int(20) DEFAULT NULL,
  `staff_salary` varchar(20) DEFAULT '3000',
  PRIMARY KEY (`id`),
  KEY `FK_staff` (`staff_class`),
  CONSTRAINT `FK_staff` FOREIGN KEY (`staff_class`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `staff` */

insert  into `staff`(`id`,`logname`,`logpass`,`staff_age`,`staff_class`,`staff_salary`) values (1,'jsj','123',3,1,'666'),(4,'sfdsfds',NULL,66,1,'6666'),(5,'sdfdsf',NULL,NULL,NULL,NULL),(8,'cvdssd',NULL,NULL,NULL,'3000'),(13,'Jack','123',15,1,'8888');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
