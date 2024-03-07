/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - jishikongjiaoshichaxun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jishikongjiaoshichaxun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jishikongjiaoshichaxun`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/jishikongjiaoshichaxun/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/jishikongjiaoshichaxun/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/jishikongjiaoshichaxun/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'jiaoshi_types','教室类型',1,'教室类型1',NULL,NULL,'2022-02-25 09:39:44'),(2,'jiaoshi_types','教室类型',2,'教室类型2',NULL,NULL,'2022-02-25 09:39:44'),(3,'jiaoshi_types','教室类型',3,'教室类型3',NULL,NULL,'2022-02-25 09:39:44'),(4,'louceng_types','楼层',1,'1层',NULL,NULL,'2022-02-25 09:39:44'),(5,'louceng_types','楼层',2,'2层',NULL,NULL,'2022-02-25 09:39:44'),(6,'louceng_types','楼层',3,'3层',NULL,NULL,'2022-02-25 09:39:44'),(7,'jiaoshishenqing_yesno_types','审核状态',1,'未审核',NULL,NULL,'2022-02-25 09:39:44'),(8,'jiaoshishenqing_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-02-25 09:39:44'),(9,'jiaoshishenqing_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-02-25 09:39:44'),(10,'jiaoshi_order_types','使用状态',1,'使用中',NULL,NULL,'2022-02-25 09:39:44'),(11,'jiaoshi_order_types','使用状态',2,'空闲',NULL,NULL,'2022-02-25 09:39:44'),(12,'sex_types','性别',1,'男',NULL,NULL,'2022-02-25 09:39:44'),(13,'sex_types','性别',2,'女',NULL,NULL,'2022-02-25 09:39:44'),(14,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-02-25 09:39:44'),(15,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-02-25 09:39:44'),(16,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-02-25 09:39:44'),(17,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-02-25 09:39:44'),(18,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-02-25 09:39:44');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-02-25 09:40:03','2022-02-25 09:40:03','2022-02-25 09:40:03'),(2,'帖子标题2',3,NULL,'发布内容2',NULL,1,'2022-02-25 09:40:03','2022-02-25 09:40:03','2022-02-25 09:40:03'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,'2022-02-25 09:40:03','2022-02-25 09:40:03','2022-02-25 09:40:03'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-02-25 09:40:03','2022-02-25 09:40:03','2022-02-25 09:40:03'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-02-25 09:40:03','2022-02-25 09:40:03','2022-02-25 09:40:03'),(6,NULL,NULL,1,'管理回复',5,2,'2022-02-25 13:41:43',NULL,'2022-02-25 13:41:43'),(7,NULL,1,NULL,'用户回复',5,2,'2022-02-25 14:15:40',NULL,'2022-02-25 14:15:40');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教室名称 Search111',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教室图片',
  `jiaoshi_types` int(11) DEFAULT NULL COMMENT '教室类型 Search111',
  `zuowei_number` int(11) DEFAULT NULL COMMENT '座位',
  `jiaoshi_address` varchar(200) DEFAULT NULL COMMENT '教室地点',
  `louceng_types` int(11) DEFAULT NULL COMMENT '楼层',
  `jiaoshi_order_types` int(11) DEFAULT NULL COMMENT '教室状态',
  `jiaoshi_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='教室信息';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`jiaoshi_name`,`jiaoshi_photo`,`jiaoshi_types`,`zuowei_number`,`jiaoshi_address`,`louceng_types`,`jiaoshi_order_types`,`jiaoshi_content`,`create_time`) values (1,'教室名称1','http://localhost:8080/jishikongjiaoshichaxun/upload/1645752515626.jpeg',1,20,'教室地点1',3,1,'详情1','2022-02-25 09:40:03'),(2,'教室名称2','http://localhost:8080/jishikongjiaoshichaxun/upload/1645752507298.jpeg',1,20,'教室地点2',2,1,'详情2','2022-02-25 09:40:03'),(3,'教室名称3','http://localhost:8080/jishikongjiaoshichaxun/upload/1645752497526.jpeg',1,20,'教室地点3',1,1,'详情3','2022-02-25 09:40:03'),(4,'教室名称4','http://localhost:8080/jishikongjiaoshichaxun/upload/1645752489421.jpeg',3,20,'教室地点4',2,1,'详情4','2022-02-25 09:40:03'),(5,'教室名称5','http://localhost:8080/jishikongjiaoshichaxun/upload/1645752482159.jpeg',1,20,'教室地点5',3,2,'详情5','2022-02-25 09:40:03');

/*Table structure for table `jiaoshi_order` */

DROP TABLE IF EXISTS `jiaoshi_order`;

CREATE TABLE `jiaoshi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教室',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '购买的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `jiaoshi_order_types` int(11) DEFAULT NULL COMMENT '使用状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='座位使用';

/*Data for the table `jiaoshi_order` */

insert  into `jiaoshi_order`(`id`,`jiaoshi_id`,`yonghu_id`,`buy_zuowei_number`,`buy_zuowei_time`,`jiaoshi_order_types`,`insert_time`,`create_time`) values (87,5,1,'1,2,3,4,5,6','2022-02-25',2,'2022-02-25 13:46:53','2022-02-25 13:46:53'),(88,5,1,'6,8','2022-02-23',2,'2022-02-25 13:47:19','2022-02-25 13:47:19');

/*Table structure for table `jiaoshishenqing` */

DROP TABLE IF EXISTS `jiaoshishenqing`;

CREATE TABLE `jiaoshishenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教室',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoshi_text` text COMMENT '使用原因',
  `jiaoshishenqing_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `jiaoshishenqing_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='教室申请';

/*Data for the table `jiaoshishenqing` */

insert  into `jiaoshishenqing`(`id`,`jiaoshi_id`,`yonghu_id`,`jiaoshi_text`,`jiaoshishenqing_yesno_types`,`jiaoshishenqing_yesno_text`,`insert_time`,`create_time`) values (1,1,2,'使用原因1',3,'审核意见随意填写','2022-02-25 09:40:03','2022-02-25 09:40:03'),(2,2,3,'使用原因2',2,'审核意见随意填写','2022-02-25 09:40:03','2022-02-25 09:40:03'),(3,3,3,'使用原因3',2,'22','2022-02-25 09:40:03','2022-02-25 09:40:03'),(4,4,2,'使用原因4',2,'22','2022-02-25 09:40:03','2022-02-25 09:40:03'),(5,5,2,'使用原因5',2,'通过','2022-02-25 09:40:03','2022-02-25 09:40:03');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/jishikongjiaoshichaxun/upload/news1.jpg','2022-02-25 09:40:03','公告详情1','2022-02-25 09:40:03'),(2,'公告标题2',1,'http://localhost:8080/jishikongjiaoshichaxun/upload/news2.jpg','2022-02-25 09:40:03','公告详情2','2022-02-25 09:40:03'),(3,'公告标题3',2,'http://localhost:8080/jishikongjiaoshichaxun/upload/news3.jpg','2022-02-25 09:40:03','公告详情3','2022-02-25 09:40:03'),(4,'公告标题4',1,'http://localhost:8080/jishikongjiaoshichaxun/upload/news4.jpg','2022-02-25 09:40:03','公告详情4','2022-02-25 09:40:03'),(5,'公告标题5',1,'http://localhost:8080/jishikongjiaoshichaxun/upload/news5.jpg','2022-02-25 09:40:03','公告详情5','2022-02-25 09:40:03');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','8nf0y8slxwpdw0aqe9xs91xy045bhlpo','2022-02-24 21:46:29','2022-02-25 15:13:33'),(2,1,'admin','users','管理员','pefck9kex221m5c23jy42jn0vr77j5yg','2022-02-25 09:25:27','2022-02-25 14:43:40');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/jishikongjiaoshichaxun/upload/yonghu1.jpg','17703786901','410224199610232001','1@qq.com',2,1,'2022-02-25 09:40:03'),(2,'a2','123456','用户姓名2','http://localhost:8080/jishikongjiaoshichaxun/upload/yonghu2.jpg','17703786902','410224199610232002','2@qq.com',1,1,'2022-02-25 09:40:03'),(3,'a3','123456','用户姓名3','http://localhost:8080/jishikongjiaoshichaxun/upload/yonghu3.jpg','17703786903','410224199610232003','3@qq.com',2,1,'2022-02-25 09:40:03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
