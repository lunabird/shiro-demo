/*
SQLyog v10.2 
MySQL - 5.0.67-community-nt : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `tbl_permission` */

DROP TABLE IF EXISTS `tbl_permission`;

CREATE TABLE `tbl_permission` (
  `PERMISSION_ID` int(11) NOT NULL auto_increment,
  `PERMISSION_NAME` varchar(45) default NULL,
  PRIMARY KEY  (`PERMISSION_ID`),
  UNIQUE KEY `PERMISSION_NAME_UNIQUE` (`PERMISSION_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_permission` */

insert  into `tbl_permission`(`PERMISSION_ID`,`PERMISSION_NAME`) values (5,'*'),(3,'calculator:*'),(4,'filesystem:read:home'),(2,'system:read:time'),(1,'user-roles:*');

/*Table structure for table `tbl_permission_role` */

DROP TABLE IF EXISTS `tbl_permission_role`;

CREATE TABLE `tbl_permission_role` (
  `ROLE_ID` int(11) NOT NULL,
  `PERMISSION_ID` int(11) NOT NULL,
  PRIMARY KEY  (`ROLE_ID`,`PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_permission_role` */

insert  into `tbl_permission_role`(`ROLE_ID`,`PERMISSION_ID`) values (1,5),(2,2);

/*Table structure for table `tbl_role` */

DROP TABLE IF EXISTS `tbl_role`;

CREATE TABLE `tbl_role` (
  `ROLE_ID` int(11) NOT NULL auto_increment,
  `ROLE_NAME` varchar(45) default NULL,
  PRIMARY KEY  (`ROLE_ID`),
  UNIQUE KEY `ROLE_NAME_UNIQUE` (`ROLE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_role` */

insert  into `tbl_role`(`ROLE_ID`,`ROLE_NAME`) values (1,'ADMIN'),(2,'USER');

/*Table structure for table `tbl_role_user` */

DROP TABLE IF EXISTS `tbl_role_user`;

CREATE TABLE `tbl_role_user` (
  `ROLE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY  (`ROLE_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_role_user` */

insert  into `tbl_role_user`(`ROLE_ID`,`USER_ID`) values (1,1),(2,1),(2,2);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `USER_ID` int(11) NOT NULL auto_increment,
  `USER_USERNAME` varchar(45) NOT NULL,
  `USER_PASSWORD` char(32) NOT NULL,
  PRIMARY KEY  (`USER_ID`),
  UNIQUE KEY `USER_USERNAME_UNIQUE` (`USER_USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`USER_ID`,`USER_USERNAME`,`USER_PASSWORD`) values (1,'huangpeng','123456'),(2,'lee','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
