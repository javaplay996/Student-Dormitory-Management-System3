/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshenggongyu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshenggongyu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshenggongyu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-20 09:24:27'),(2,'sex_types','性别',2,'女',NULL,'2021-03-20 09:24:27'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-20 09:24:27'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-20 09:24:27'),(5,'weisheng_types','卫生状态',1,'优秀',NULL,'2021-03-20 09:24:27'),(6,'weisheng_types','卫生状态',2,'良好',NULL,'2021-03-20 09:24:27'),(7,'weisheng_types','卫生状态',3,'差',NULL,'2021-03-20 09:24:27'),(8,'banji_types','班级',1,'一班',NULL,'2021-03-20 09:24:27'),(9,'banji_types','班级',2,'二班',NULL,'2021-03-20 09:24:27'),(10,'banji_types','班级',3,'三班',NULL,'2021-03-20 09:24:27'),(11,'banji_types','班级',4,'四班',NULL,'2021-03-20 09:24:27'),(13,'zichan_types','资产类型',1,'正常',NULL,'2021-03-20 09:24:27'),(14,'zichan_types','资产类型',2,'异常',NULL,'2021-03-20 09:24:28');

/*Table structure for table `fangke` */

DROP TABLE IF EXISTS `fangke`;

CREATE TABLE `fangke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='访客管理';

/*Data for the table `fangke` */

insert  into `fangke`(`id`,`name`,`phone`,`id_number`,`sex_types`,`zhuzhi`,`create_time`) values (1,'张1','17703789991','410224199610232011',2,'北京','2021-03-20 09:24:27'),(2,'张2','17703789992','410224199610232012',2,'987','2021-03-20 09:24:27'),(3,'张2','17703789991','410224199610232011',2,'的说法是','2021-03-20 09:24:27'),(4,'张武','17703789999','410224199610232011',1,'萨达大萨达撒','2021-03-20 13:46:58');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋  ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元  ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号  ',
  `sushe_number` int(11) DEFAULT '0' COMMENT '已住人员',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`building`,`unit`,`room`,`sushe_number`,`create_time`) values (1,'9','9','9',2,'2021-03-20 09:24:27'),(2,'9','9','101',8,'2021-03-20 09:24:27'),(3,'公寓1','1','101',0,'2021-03-20 11:45:13'),(4,'公寓2','1','101',1,'2021-03-20 13:21:46');

/*Table structure for table `sushe_yonghu` */

DROP TABLE IF EXISTS `sushe_yonghu`;

CREATE TABLE `sushe_yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='人员与宿舍关系';

/*Data for the table `sushe_yonghu` */

insert  into `sushe_yonghu`(`id`,`yonghu_id`,`sushe_id`,`create_time`) values (5,9,2,'2021-03-20 09:24:27'),(6,8,2,'2021-03-20 09:24:27'),(7,7,2,'2021-03-20 09:24:27'),(8,6,2,'2021-03-20 09:24:27'),(9,5,2,'2021-03-20 09:24:27'),(10,10,2,'2021-03-20 09:24:27'),(11,4,2,'2021-03-20 09:24:27'),(12,3,2,'2021-03-20 09:24:27'),(13,11,4,'2021-03-20 13:42:30');

/*Table structure for table `susheweisheng` */

DROP TABLE IF EXISTS `susheweisheng`;

CREATE TABLE `susheweisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍id',
  `weisheng_types` int(11) DEFAULT NULL COMMENT '卫生',
  `weisheng_content` varchar(200) DEFAULT NULL COMMENT '卫生详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '检查时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='宿舍卫生';

/*Data for the table `susheweisheng` */

insert  into `susheweisheng`(`id`,`sushe_id`,`weisheng_types`,`weisheng_content`,`insert_time`,`create_time`) values (8,2,3,'差劲\r\n','2021-03-20 09:24:27','2021-03-20 09:24:27'),(9,1,3,'897\r\n','2021-03-20 09:24:27','2021-03-20 09:24:27'),(10,2,3,'87\r\n','2021-03-20 09:24:27','2021-03-20 09:24:27'),(11,2,2,'还可以\r\n','2021-03-20 09:24:27','2021-03-20 09:24:27');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (39,6,'admin','users','管理员','41n1li8ijv6ldgj2yderguedo0050ysm','2021-03-20 09:53:08','2021-03-20 14:51:35'),(40,1,'a1','yonghu','用户','fmo7yr72ht79bytawz56h3tfpsb5b7qp','2021-03-20 13:49:36','2021-03-20 14:49:37'),(41,2,'a2','yonghu','用户','9evxxyog7qdkhnzbf5htaa1q1hacqqbd','2021-03-20 13:51:22','2021-03-20 14:51:23'),(42,7,'a7','yonghu','用户','kluvgfyu9gqkd8hzre3ie1hsll05s5kc','2021-03-20 13:51:59','2021-03-20 14:54:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-03-20 09:24:27');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级   ',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`banji_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`create_time`) values (1,'a1','123456','张11','17703789991','410224199610232011',2,1,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196222937.jpg','汉',2,'审犯罪','2021-03-20 09:24:27'),(2,'a2','123456','张2','17703789992','410224199610232012',2,2,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196249924.jpg','汉',1,'河南开封','2021-03-20 09:24:27'),(3,'a3','123456','张三','17703789993','410224199610232014',2,1,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196285046.jpg','汉',1,'审犯罪11','2021-03-20 09:24:27'),(4,'a4','123456','张4','17703789994','410224199610232014',2,3,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196332351.jpg','汉',2,'审犯罪9','2021-03-20 09:24:27'),(5,'a5','123456','张5','17703789995','410224199610232015',2,1,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615196370216.jpg','汉',1,'浙江温州','2021-03-20 09:24:27'),(6,'a6','123456','张6','17703789996','410224199610232016',2,4,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615204162797.jpg','汉',2,'审犯罪','2021-03-20 09:24:27'),(7,'a7','123456','张7','17703789997','410224199610232017',2,3,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615204162797.jpg','汉',2,'审犯罪','2021-03-20 09:24:27'),(8,'a8','123456','张8','17703789998','410224199610232018',2,2,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615204162797.jpg','汉',2,'审犯罪','2021-03-20 09:24:27'),(9,'a9','123456','张9','17703789999','410224199610232019',2,4,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615204162797.jpg','汉',2,'审犯罪12','2021-03-20 09:24:27'),(10,'a10','123456','张10','17703789910','410224199610232021',2,3,'http://localhost:8080/xueshenggongyu/file/download?fileName=1615252535923.jpg','维吾尔族',2,'浙江温州1','2021-03-20 09:24:27'),(11,'a11','123456','张11','17703789111','410224199610232011',1,3,'http://localhost:8080/xueshenggongyu/file/download?fileName=1616217669596.jpg','汉',1,'审犯罪','2021-03-20 13:21:15');

/*Table structure for table `yonghuweisheng` */

DROP TABLE IF EXISTS `yonghuweisheng`;

CREATE TABLE `yonghuweisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `weisheng_types` int(11) DEFAULT NULL COMMENT '卫生',
  `weisheng_content` varchar(200) DEFAULT NULL COMMENT '卫生详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '检查时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生卫生';

/*Data for the table `yonghuweisheng` */

insert  into `yonghuweisheng`(`id`,`yonghu_id`,`weisheng_types`,`weisheng_content`,`insert_time`,`create_time`) values (1,9,2,'还可以\r\n','2021-03-20 09:24:27','2021-03-20 09:24:27'),(2,8,3,'差劲1\r\n','2021-03-20 09:24:27','2021-03-20 09:24:27'),(3,10,3,'个人卫生差劲\r\n','2021-03-20 09:24:27','2021-03-20 09:24:27');

/*Table structure for table `zichan` */

DROP TABLE IF EXISTS `zichan`;

CREATE TABLE `zichan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍id',
  `zichan_name` varchar(200) DEFAULT NULL COMMENT '资产名字  ',
  `zichan_types` int(11) DEFAULT NULL COMMENT '资产类型  ',
  `zichan_content` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='宿舍资产信息';

/*Data for the table `zichan` */

insert  into `zichan`(`id`,`sushe_id`,`zichan_name`,`zichan_types`,`zichan_content`,`create_time`) values (3,2,'桌子',1,'桌子的备注\r\n','2021-03-20 11:16:40'),(4,3,'桌子',1,NULL,'2021-03-20 11:45:13'),(5,3,'空调',1,NULL,'2021-03-20 11:45:13'),(6,3,'板凳',1,NULL,'2021-03-20 11:45:13'),(7,3,'床',2,'思思思思\r\n','2021-03-20 11:45:13'),(8,4,'桌子',1,NULL,'2021-03-20 13:21:46'),(9,4,'空调',1,NULL,'2021-03-20 13:21:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
