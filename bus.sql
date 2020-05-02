/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - bus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bus` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `bus`;

/*Table structure for table `bus_table` */

DROP TABLE IF EXISTS `bus_table`;

CREATE TABLE `bus_table` (
  `BUS_ID` int(11) DEFAULT NULL,
  `ROUTE_NAME` varchar(765) DEFAULT NULL,
  `BUS_TYPE` varchar(765) DEFAULT NULL,
  `VIA_ROUTES` varchar(765) DEFAULT NULL,
  `BUS_CODE` int(11) DEFAULT NULL,
  `FROM_LOCATION` varchar(765) DEFAULT NULL,
  `TO_LOCATION` varchar(765) DEFAULT NULL,
  `BUS_ROUTE` varchar(765) DEFAULT NULL,
  `BUS_TYPE_CODE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `bus_table` */

insert  into `bus_table`(`BUS_ID`,`ROUTE_NAME`,`BUS_TYPE`,`VIA_ROUTES`,`BUS_CODE`,`FROM_LOCATION`,`TO_LOCATION`,`BUS_ROUTE`,`BUS_TYPE_CODE`) values 
(1,'A-B','ABC','AA,BB,CC',1,'A','B','A,AA,BB,CC,B',1),
(2,'B-A','ABC','CC,BB,AA',2,'B','A','B,CC,BB,AA,A',2),
(3,'A-C','ABC','AA,BB,CC,DD,EE',3,'A','C','A,AA,BB,CC,B,DD,EE,C',3),
(4,'C-A','ABC','EE,DD,CC,BB,AA',4,'C','A','C,EE,DD,B,CC,BB,AA,A',4);

/*Table structure for table `route_1` */

DROP TABLE IF EXISTS `route_1`;

CREATE TABLE `route_1` (
  `BUS_STOP` varchar(255) DEFAULT NULL,
  `STOP_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `route_1` */

insert  into `route_1`(`BUS_STOP`,`STOP_TIME`) values 
('A','10:00:00'),
('AA','10:10:00'),
('BB','10:20:00'),
('CC','10:30:00'),
('B','10:40:00'),
('A','10:10:00'),
('AA','10:20:00'),
('BB','10:20:00'),
('CC','10:30:00'),
('B','10:40:00'),
('A','10:20:00'),
('AA','10:30:00'),
('BB','10:40:00'),
('CC','10:50:00'),
('B','11:00:00');

/*Table structure for table `route_2` */

DROP TABLE IF EXISTS `route_2`;

CREATE TABLE `route_2` (
  `BUS_STOP` varchar(255) DEFAULT NULL,
  `STOP_TIMING` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `route_2` */

insert  into `route_2`(`BUS_STOP`,`STOP_TIMING`) values 
('B','10:00:00'),
('CC','10:10:00'),
('BB','10:20:00'),
('AA','10:30:00'),
('A','10:40:00'),
('B','10:10:00'),
('CC','10:20:00'),
('BB','10:30:00'),
('A','10:50:00'),
('A','10:50:00'),
('CC','10:20:00'),
('BB','10:30:00'),
('AA','10:40:00'),
('A','10:50:00'),
('A','11:00:00');

/*Table structure for table `route_3` */

DROP TABLE IF EXISTS `route_3`;

CREATE TABLE `route_3` (
  `BUS_STOP` varchar(255) DEFAULT NULL,
  `STOP_TIMING` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `route_3` */

insert  into `route_3`(`BUS_STOP`,`STOP_TIMING`) values 
('A','10:00:00'),
('AA','10:10:00'),
('AA','10:10:00'),
('DD','10:50:00'),
('B','10:40:00'),
('DD','10:50:00'),
('EE','11:00:00'),
('C','11:10:00'),
('A','10:00:00'),
('AA','10:10:00'),
('BB','10:20:00'),
('CC','10:30:00'),
('B','10:40:00'),
('DD','10:50:00'),
('EE','11:00:00'),
('C','11:10:00');

/*Table structure for table `route_4` */

DROP TABLE IF EXISTS `route_4`;

CREATE TABLE `route_4` (
  `BUS_STOP` varchar(255) DEFAULT NULL,
  `STOP_TIMING` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `route_4` */

insert  into `route_4`(`BUS_STOP`,`STOP_TIMING`) values 
('C','10:00:00'),
('EE','10:10:00'),
('DD','10:20:00'),
('B','10:30:00'),
('CC','10:40:00'),
('BB','10:50:00'),
('AA','11:00:00'),
('A','11:10:00'),
('C','10:00:00'),
('EE','10:10:00'),
('DD','10:20:00'),
('B','10:30:00'),
('CC','10:40:00'),
('BB','10:50:00'),
('AA','11:00:00'),
('A','11:10:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
