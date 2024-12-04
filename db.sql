/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssme175a
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssme175a` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssme175a`;

/*Table structure for table `bisai` */

DROP TABLE IF EXISTS `bisai`;

CREATE TABLE `bisai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanduimingcheng` varchar(200) DEFAULT NULL COMMENT '战队名称',
  `saiqu` varchar(200) DEFAULT NULL COMMENT '赛区',
  `zhanduijieshao` varchar(200) DEFAULT NULL COMMENT '战队介绍',
  `duibiaozhaopian` varchar(200) DEFAULT NULL COMMENT '队标照片',
  `zhanduichengyuan` longtext COMMENT '战队成员',
  `zhanduishuju` longtext COMMENT '战队数据',
  `jinqibisai` longtext COMMENT '近期比赛',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='比赛';

/*Data for the table `bisai` */

insert  into `bisai`(`id`,`addtime`,`zhanduimingcheng`,`saiqu`,`zhanduijieshao`,`duibiaozhaopian`,`zhanduichengyuan`,`zhanduishuju`,`jinqibisai`,`thumbsupnum`,`crazilynum`) values (31,'2021-03-14 11:54:48','edg','lpl','123','http://localhost:8080/ssme175a/upload/1615694467871.jpg','<p>测试，这里可以上传照片</p>','<p>测试</p>','<p>测试</p>',1,1),(32,'2021-03-14 11:54:48','战队名称2','赛区2','战队介绍2','http://localhost:8080/ssme175a/upload/bisai_duibiaozhaopian2.jpg','战队成员2','战队数据2','近期比赛2',2,2),(33,'2021-03-14 11:54:48','战队名称3','赛区3','战队介绍3','http://localhost:8080/ssme175a/upload/bisai_duibiaozhaopian3.jpg','战队成员3','战队数据3','近期比赛3',3,3),(34,'2021-03-14 11:54:48','战队名称4','赛区4','战队介绍4','http://localhost:8080/ssme175a/upload/bisai_duibiaozhaopian4.jpg','战队成员4','战队数据4','近期比赛4',4,4),(35,'2021-03-14 11:54:48','战队名称5','赛区5','战队介绍5','http://localhost:8080/ssme175a/upload/bisai_duibiaozhaopian5.jpg','战队成员5','战队数据5','近期比赛5',5,5),(36,'2021-03-14 11:54:48','战队名称6','赛区6','战队介绍6','http://localhost:8080/ssme175a/upload/bisai_duibiaozhaopian6.jpg','战队成员6','战队数据6','近期比赛6',6,6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssme175a/upload/1615694563283.jpg'),(2,'picture2','http://localhost:8080/ssme175a/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssme175a/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussbisai` */

DROP TABLE IF EXISTS `discussbisai`;

CREATE TABLE `discussbisai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='比赛评论表';

/*Data for the table `discussbisai` */

insert  into `discussbisai`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-03-14 11:54:48',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-03-14 11:54:48',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-03-14 11:54:48',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-03-14 11:54:48',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-03-14 11:54:48',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-03-14 11:54:48',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussxuanshou` */

DROP TABLE IF EXISTS `discussxuanshou`;

CREATE TABLE `discussxuanshou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615694747256 DEFAULT CHARSET=utf8 COMMENT='选手评论表';

/*Data for the table `discussxuanshou` */

insert  into `discussxuanshou`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-14 11:54:48',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-14 11:54:48',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-14 11:54:48',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-14 11:54:48',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-14 11:54:48',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-14 11:54:48',6,6,'用户名6','评论内容6','回复内容6'),(1615694747255,'2021-03-14 12:05:46',41,1615694256120,'123','123','');

/*Table structure for table `discussyingxiong` */

DROP TABLE IF EXISTS `discussyingxiong`;

CREATE TABLE `discussyingxiong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='英雄评论表';

/*Data for the table `discussyingxiong` */

insert  into `discussyingxiong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-03-14 11:54:48',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-03-14 11:54:48',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-03-14 11:54:48',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-03-14 11:54:48',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-03-14 11:54:48',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-03-14 11:54:48',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615694759804 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (72,'2021-03-14 11:54:48',2,'用户名2','留言内容2','回复内容2'),(73,'2021-03-14 11:54:48',3,'用户名3','留言内容3','回复内容3'),(74,'2021-03-14 11:54:48',4,'用户名4','留言内容4','回复内容4'),(75,'2021-03-14 11:54:48',5,'用户名5','留言内容5','回复内容5'),(76,'2021-03-14 11:54:48',6,'用户名6','留言内容6','回复内容6'),(1615694759803,'2021-03-14 12:05:59',1615694256120,'123','456','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='游戏资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-03-14 11:54:48','测试','测试','http://localhost:8080/ssme175a/upload/news_picture1.jpg','<p>这里可以发表游戏资讯</p>'),(62,'2021-03-14 11:54:48','标题2','简介2','http://localhost:8080/ssme175a/upload/news_picture2.jpg','内容2'),(63,'2021-03-14 11:54:48','标题3','简介3','http://localhost:8080/ssme175a/upload/news_picture3.jpg','内容3'),(64,'2021-03-14 11:54:48','标题4','简介4','http://localhost:8080/ssme175a/upload/news_picture4.jpg','内容4'),(65,'2021-03-14 11:54:48','标题5','简介5','http://localhost:8080/ssme175a/upload/news_picture5.jpg','内容5'),(66,'2021-03-14 11:54:48','标题6','简介6','http://localhost:8080/ssme175a/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615694740845 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615694740844,'2021-03-14 12:05:39',1615694256120,41,'xuanshou','测试','http://localhost:8080/ssme175a/upload/1615694506072.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1615694256120,'123','yonghu','用户','s4fa1nz5o7x44ky9smshivxmdqpsiron','2021-03-14 11:57:48','2021-03-14 13:04:47'),(2,1,'abo','users','管理员','38cgaw0fwqhyo5ay223g6oog3yggr2ag','2021-03-14 11:58:41','2021-03-14 12:59:16');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-14 11:54:48');

/*Table structure for table `xuanshou` */

DROP TABLE IF EXISTS `xuanshou`;

CREATE TABLE `xuanshou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `suoshuzhandui` varchar(200) DEFAULT NULL COMMENT '所属战队',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dangqianduanwei` varchar(200) DEFAULT NULL COMMENT '当前段位',
  `dangqianfenshu` int(11) DEFAULT NULL COMMENT '当前分数',
  `jinqibisaijilu` longtext COMMENT '近期比赛记录',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='选手';

/*Data for the table `xuanshou` */

insert  into `xuanshou`(`id`,`addtime`,`mingcheng`,`suoshuzhandui`,`zhaopian`,`dangqianduanwei`,`dangqianfenshu`,`jinqibisaijilu`,`xiangqing`,`thumbsupnum`,`crazilynum`) values (41,'2021-03-14 11:54:48','测试','测试','http://localhost:8080/ssme175a/upload/1615694506072.jpg','最强王者',1700,'<p>测试</p>','<p>测试</p>',2,1),(42,'2021-03-14 11:54:48','名称2','所属战队2','http://localhost:8080/ssme175a/upload/xuanshou_zhaopian2.jpg','黑铁',2,'近期比赛记录2','详情2',2,2),(43,'2021-03-14 11:54:48','名称3','所属战队3','http://localhost:8080/ssme175a/upload/xuanshou_zhaopian3.jpg','黑铁',3,'近期比赛记录3','详情3',3,3),(44,'2021-03-14 11:54:48','名称4','所属战队4','http://localhost:8080/ssme175a/upload/xuanshou_zhaopian4.jpg','黑铁',4,'近期比赛记录4','详情4',4,4),(45,'2021-03-14 11:54:48','名称5','所属战队5','http://localhost:8080/ssme175a/upload/xuanshou_zhaopian5.jpg','黑铁',5,'近期比赛记录5','详情5',5,5),(46,'2021-03-14 11:54:48','名称6','所属战队6','http://localhost:8080/ssme175a/upload/xuanshou_zhaopian6.jpg','黑铁',6,'近期比赛记录6','详情6',6,6);

/*Table structure for table `yingxiong` */

DROP TABLE IF EXISTS `yingxiong`;

CREATE TABLE `yingxiong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingxiongmingcheng` varchar(200) DEFAULT NULL COMMENT '英雄名称',
  `zhenming` varchar(200) DEFAULT NULL COMMENT '真名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jinengjieshao` longtext COMMENT '技能介绍',
  `beijingjieshao` longtext COMMENT '背景介绍',
  `yingxiongjiqiao` longtext COMMENT '英雄技巧',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='英雄';

/*Data for the table `yingxiong` */

insert  into `yingxiong`(`id`,`addtime`,`yingxiongmingcheng`,`zhenming`,`leixing`,`zhaopian`,`jinengjieshao`,`beijingjieshao`,`yingxiongjiqiao`,`thumbsupnum`,`crazilynum`) values (21,'2021-03-14 11:54:48','五五开','卢本伟','法师','照片1','<p>测试<img src=\"http://localhost:8080/ssme175a/upload/1615694424514.jpg\"></p><p>这里可以插入照片，进行技能的详细介绍</p>','s2职业选手','我真的1没有开挂',1,1),(22,'2021-03-14 11:54:48','英雄名称2','真名2','法师','照片2','技能介绍2','背景介绍2','英雄技巧2',2,2),(23,'2021-03-14 11:54:48','英雄名称3','真名3','法师','照片3','技能介绍3','背景介绍3','英雄技巧3',3,3),(24,'2021-03-14 11:54:48','英雄名称4','真名4','法师','照片4','技能介绍4','背景介绍4','英雄技巧4',4,4),(25,'2021-03-14 11:54:48','英雄名称5','真名5','法师','照片5','技能介绍5','背景介绍5','英雄技巧5',5,5),(26,'2021-03-14 11:54:48','英雄名称6','真名6','法师','照片6','技能介绍6','背景介绍6','英雄技巧6',6,6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615694256121 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`xingming`,`mima`,`zhaopian`,`nianling`,`xingbie`,`shouji`,`youxiang`,`gerenjianjie`) values (11,'2021-03-14 11:54:48','用户1','姓名1','123456','http://localhost:8080/ssme175a/upload/yonghu_zhaopian1.jpg','年龄1','性别1','手机1','邮箱1','个人简介1'),(12,'2021-03-14 11:54:48','用户2','姓名2','123456','http://localhost:8080/ssme175a/upload/yonghu_zhaopian2.jpg','年龄2','性别2','手机2','邮箱2','个人简介2'),(13,'2021-03-14 11:54:48','用户3','姓名3','123456','http://localhost:8080/ssme175a/upload/yonghu_zhaopian3.jpg','年龄3','性别3','手机3','邮箱3','个人简介3'),(14,'2021-03-14 11:54:48','用户4','姓名4','123456','http://localhost:8080/ssme175a/upload/yonghu_zhaopian4.jpg','年龄4','性别4','手机4','邮箱4','个人简介4'),(15,'2021-03-14 11:54:48','用户5','姓名5','123456','http://localhost:8080/ssme175a/upload/yonghu_zhaopian5.jpg','年龄5','性别5','手机5','邮箱5','个人简介5'),(16,'2021-03-14 11:54:48','用户6','姓名6','123456','http://localhost:8080/ssme175a/upload/yonghu_zhaopian6.jpg','年龄6','性别6','手机6','邮箱6','个人简介6'),(1615694256120,'2021-03-14 11:57:36','123','123','123','http://localhost:8080/ssme175a/upload/1615694369767.jpg','123','男','31','23','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
