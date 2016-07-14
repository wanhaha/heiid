/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.7.11 : Database - heiid
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`heiid` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `heiid`;

/*Table structure for table `tp_account_log` */

DROP TABLE IF EXISTS `tp_account_log`;

CREATE TABLE `tp_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '用户id',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户金额',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '冻结金额',
  `pay_points` mediumint(9) NOT NULL COMMENT '支付积分',
  `change_time` int(10) unsigned NOT NULL COMMENT '变动时间',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  `order_sn` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `order_id` int(10) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

/*Data for the table `tp_account_log` */

insert  into `tp_account_log`(`log_id`,`user_id`,`user_money`,`frozen_money`,`pay_points`,`change_time`,`desc`,`order_sn`,`order_id`) values (235,357,'0.00','0.00',100,1468393922,'会员注册赠送积分',NULL,NULL),(234,356,'0.00','0.00',100,1468375841,'会员注册赠送积分',NULL,NULL),(233,355,'0.00','0.00',100,1468375702,'会员注册赠送积分',NULL,NULL),(232,354,'0.00','0.00',100,1468375591,'会员注册赠送积分',NULL,NULL),(231,353,'0.00','0.00',100,1468375518,'会员注册赠送积分',NULL,NULL),(230,352,'0.00','0.00',100,1468375300,'会员注册赠送积分',NULL,NULL),(229,351,'0.00','0.00',100,1468374714,'会员注册赠送积分',NULL,NULL),(228,350,'0.00','0.00',100,1468374527,'会员注册赠送积分',NULL,NULL),(227,349,'0.00','0.00',100,1468374461,'会员注册赠送积分',NULL,NULL),(226,348,'0.00','0.00',100,1468374113,'会员注册赠送积分',NULL,NULL),(225,347,'0.00','0.00',100,1468373937,'会员注册赠送积分',NULL,NULL),(224,346,'0.00','0.00',100,1468373771,'会员注册赠送积分',NULL,NULL),(223,345,'0.00','0.00',100,1468373593,'会员注册赠送积分',NULL,NULL),(222,344,'0.00','0.00',100,1468373532,'会员注册赠送积分',NULL,NULL),(221,343,'0.00','0.00',100,1468373352,'会员注册赠送积分',NULL,NULL),(220,342,'0.00','0.00',100,1468373064,'会员注册赠送积分',NULL,NULL),(219,341,'0.00','0.00',100,1468372955,'会员注册赠送积分',NULL,NULL),(218,340,'0.00','0.00',100,1468372615,'会员注册赠送积分',NULL,NULL),(217,339,'0.00','0.00',100,1468372036,'会员注册赠送积分',NULL,NULL),(216,338,'0.00','0.00',100,1468371781,'会员注册赠送积分',NULL,NULL),(215,337,'0.00','0.00',100,1468371584,'会员注册赠送积分',NULL,NULL),(214,336,'0.00','0.00',100,1468308463,'会员注册赠送积分',NULL,NULL),(213,335,'0.00','0.00',100,1468308292,'会员注册赠送积分',NULL,NULL),(212,334,'0.00','0.00',100,1468308168,'会员注册赠送积分',NULL,NULL),(211,333,'0.00','0.00',100,1468307969,'会员注册赠送积分',NULL,NULL),(210,332,'0.00','0.00',100,1468293972,'会员注册赠送积分',NULL,NULL),(209,331,'0.00','0.00',100,1468293067,'会员注册赠送积分',NULL,NULL),(208,330,'0.00','0.00',100,1468292895,'会员注册赠送积分',NULL,NULL),(207,329,'0.00','0.00',100,1468292353,'会员注册赠送积分',NULL,NULL),(206,328,'0.00','0.00',100,1468291821,'会员注册赠送积分',NULL,NULL),(205,327,'0.00','0.00',100,1468291672,'会员注册赠送积分',NULL,NULL);

/*Table structure for table `tp_ad` */

DROP TABLE IF EXISTS `tp_ad`;

CREATE TABLE `tp_ad` (
  `ad_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '广告位置ID',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '广告类型',
  `ad_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告名称',
  `ad_link` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `ad_code` text NOT NULL COMMENT '图片地址',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '投放时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `link_man` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人',
  `link_email` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人邮箱',
  `link_phone` varchar(60) NOT NULL DEFAULT '' COMMENT '添加人联系电话',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `orderby` smallint(6) DEFAULT '50' COMMENT '排序',
  `target` tinyint(1) DEFAULT '0' COMMENT '是否开启浏览器新窗口',
  `bgcolor` varchar(20) DEFAULT NULL COMMENT '背景颜色',
  PRIMARY KEY (`ad_id`),
  KEY `enabled` (`enabled`),
  KEY `position_id` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `tp_ad` */

insert  into `tp_ad`(`ad_id`,`pid`,`media_type`,`ad_name`,`ad_link`,`ad_code`,`start_time`,`end_time`,`link_man`,`link_email`,`link_phone`,`click_count`,`enabled`,`orderby`,`target`,`bgcolor`) values (1,1,0,'无限惊喜','http://www.99soubao.com','/Public/upload/ad/2016/04-25/571dafa754296.jpg',1451577600,1767715200,'','','',0,1,50,0,'#ffffff'),(2,1,0,'无限惊喜','/index.php?m=Home&amp;c=Goods&amp;a=goodsInfo&amp;id=1','/Public/upload/banner/2015/10-30/5633573b4a217.jpg',1451577600,1864656000,'','','',0,1,50,0,NULL),(3,2,0,'首页banner轮播1','/index.php?m=Home&amp;c=Goods&amp;a=goodsInfo&amp;id=1','/Public/upload/banner/2015/11-04/563a014600063.jpg',1441123200,1731513600,'','','',0,1,50,0,NULL),(4,2,0,'首页banner轮播2','/index.php?m=Home&amp;c=Goods&amp;a=goodsInfo&amp;id=1','/Public/upload/banner/2015/11-04/563a01ccb5dc9.jpg',1443542400,1601481600,'','','',0,1,50,0,NULL),(5,3,0,'客户下单赢4999元红包','http://www.dscxy.com','/Public/upload/banner/2015/11-05/563b3e5d8568d.jpg',1451577600,1832515200,'','','',0,1,50,0,NULL),(6,4,0,'TPshop视频教程','http://www.99soubao.com/tpshop_video/video.php','/Public/upload/ad/2016/03-11/56e29344381c4.jpg',1452614400,1864137600,'','','',0,1,50,0,NULL),(7,5,0,'荣耀畅玩5X优惠购买','http://www.tp-shop.cn','/Public/upload/ad/2016/03-11/56e29344381c4.jpg',1451577600,1863878400,'','','',0,1,50,0,NULL),(8,6,0,'荣耀畅玩5X优惠购买','http://www.99soubao.com','/Public/upload/ad/2016/03-11/56e29344381c4.jpg',1451577600,1768147200,'','','',0,1,50,0,NULL),(9,7,0,'荣耀4C增强版8GB变16GB','http://www.99soubao.com','/Public/upload/ad/2016/03-01/56d539e55544a.jpg',1451577600,1547049600,'','','',0,1,50,0,NULL),(10,8,0,'依旧换新最高能低4428元','http://www.99soubao.com','/Public/upload/ad/2016/03-01/56d5391451968.jpg',1451577600,1546531200,'','','',0,1,50,0,NULL),(11,10,0,'自定义广告名称','javascript:void();','/Public/upload/ad/2016/04-23/571b72a2bb140.jpg',1451577600,1546272000,'','','',0,1,0,0,'#ffd2e9'),(12,10,0,'自定义广告名称','javascript:void();','/Public/upload/ad/2016/04-23/571b73a070a58.jpg',1451577600,1546272000,'','','',0,1,0,0,'#defdb5'),(13,10,0,'自定义广告名称','javascript:void();','/Public/upload/ad/2016/04-23/571b743d86501.jpg',1451577600,1546272000,'','','',0,1,0,0,'#ffffff'),(14,15,0,'自定义广告名称','javascript:void(0);','/Public/upload/ad/2016/04-23/571b74b8ba3fd.png',1451577600,1546272000,'','','',0,1,0,0,'#ffffff'),(15,15,0,'自定义广告名称','javascript:void();','/Public/upload/ad/2016/04-23/571b80a8ab8d1.png',1451577600,1546272000,'','','',0,1,0,0,'#ffffff'),(16,11,0,'自定义广告名称','javascript:void(0);','/Public/upload/ad/2016/04-25/571d89bd99535.jpg',1451577600,1546272000,'','','',0,1,0,0,'#fa2c60'),(17,11,0,'自定义广告名称','javascript:void(0);','/Public/upload/ad/2016/04-25/571d8aab4c95c.jpg',1451577600,1546272000,'','','',0,1,50,0,'#34b304'),(18,11,0,'自定义广告名称','javascript:void(0);','/Public/upload/ad/2016/04-25/571d8b39793fb.jpg',1451577600,1546272000,'','','',0,1,0,0,'#9507b8'),(19,204,0,'自定义广告名称','javascript:void(0);','/Public/upload/ad/2016/04-25/571d8d5860c91.jpg',1451577600,1546272000,'','','',0,1,0,0,'#000000'),(20,204,0,'自定义广告名称','','/Public/upload/ad/2016/04-25/571d8d956510b.jpg',1451577600,1546272000,'','','',0,1,0,0,'#000000'),(21,201,0,'自定义广告名称','javascript:void(0);','/Public/upload/ad/2016/04-25/571d93e4679da.jpg',1451577600,1546272000,'','','',0,1,0,0,'#000000'),(22,203,0,'自定义广告名称','','/Public/upload/ad/2016/04-25/571d940194117.jpg',1451577600,1546272000,'','','',0,1,0,0,'#000000'),(23,100,0,'自定义广告名称','javascript:void(0);','/Public/upload/ad/2016/04-25/571d9661339d6.jpg',1451577600,1546272000,'','','',0,1,0,0,'#000000'),(24,101,0,'自定义广告名称','','/Public/upload/ad/2016/04-25/571d968285f75.jpg',1451577600,1546272000,'','','',0,1,0,0,'#000000'),(25,102,0,'自定义广告名称','','/Public/upload/ad/2016/04-25/571d9698966f5.jpg',1451577600,1546272000,'','','',0,1,0,0,'#000000'),(26,99,0,'自定义广告名称','javascript:void(0);','/Public/upload/ad/2016/04-25/571d9975e6e5f.jpg',1451577600,1546272000,'','','',0,1,0,0,'#000000');

/*Table structure for table `tp_ad_position` */

DROP TABLE IF EXISTS `tp_ad_position`;

CREATE TABLE `tp_ad_position` (
  `position_id` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `position_name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告位置名称',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告位宽度',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告位高度',
  `position_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '广告描述',
  `position_style` text NOT NULL COMMENT '模板',
  `is_open` tinyint(1) DEFAULT '0' COMMENT '0关闭1开启',
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

/*Data for the table `tp_ad_position` */

insert  into `tp_ad_position`(`position_id`,`position_name`,`ad_width`,`ad_height`,`position_desc`,`position_style`,`is_open`) values (1,'首页最顶部大块广告',1200,400,'首页顶部的广告位刚打开时弹出来过一会自动缩回去.','',0),(2,'首页banner广告轮播980*400',980,400,'首页banner广告轮播980*400','',0),(3,'首页中间1200*160广告条',1200,160,'','',0),(4,'首页底部1200*160广告条',1200,160,'首页底部的广告位','',0),(5,'团购页面底部广告1200*160',1200,160,'团购页面底部广告1200*160','',0),(6,'促销商品底部广告1200*160',1200,160,'团购页面底部广告1200*160','',0),(7,'首页公告上方广告位',270,310,'首页公告上方的广告位位置','',0),(8,'首页公告下方广告位',278,312,'首页公告下方广告位','',0),(10,'Index页面自动增加广告位 10 ',0,0,'Index页面','',1),(15,'Index页面自动增加广告位 15 ',0,0,'Index页面','',1),(100,'Index页面自动增加广告位 100 ',0,0,'Index页面','',1),(101,'Index页面自动增加广告位 101 ',0,0,'Index页面','',1),(102,'Index页面自动增加广告位 102 ',0,0,'Index页面','',1),(11,'Channel页面自动增加广告位 11 ',0,0,'Channel页面','',1),(81,'Index页面自动增加广告位 81 ',0,0,'Index页面','',1),(82,'Index页面自动增加广告位 82 ',0,0,'Index页面','',1),(83,'Index页面自动增加广告位 83 ',0,0,'Index页面','',1),(84,'Index页面自动增加广告位 84 ',0,0,'Index页面','',1),(85,'Index页面自动增加广告位 85 ',0,0,'Index页面','',1),(86,'Index页面自动增加广告位 86 ',0,0,'Index页面','',1),(87,'Index页面自动增加广告位 87 ',0,0,'Index页面','',1),(201,'Channel页面自动增加广告位 201 ',0,0,'Channel页面','',1),(204,'Channel页面自动增加广告位 204 ',0,0,'Channel页面','',1),(203,'Channel页面自动增加广告位 203 ',0,0,'Channel页面','',1),(200,'Channel页面自动增加广告位 200 ',0,0,'Channel页面','',1),(207,'Channel页面自动增加广告位 207 ',0,0,'Channel页面','',1),(206,'Channel页面自动增加广告位 206 ',0,0,'Channel页面','',1),(216,'Channel页面自动增加广告位 216 ',0,0,'Channel页面','',1),(212,'Channel页面自动增加广告位 212 ',0,0,'Channel页面','',1),(213,'Channel页面自动增加广告位 213 ',0,0,'Channel页面','',1),(211,'Channel页面自动增加广告位 211 ',0,0,'Channel页面','',1),(209,'Channel页面自动增加广告位 209 ',0,0,'Channel页面','',1),(99,'Index页面自动增加广告位 99 ',0,0,'Index页面','',1),(255,'Index页面自动增加广告位 800 ',0,0,'Index页面','',1),(205,'Channel页面自动增加广告位 205 ',0,0,'Channel页面','',1),(210,'Channel页面自动增加广告位 210 ',0,0,'Channel页面','',1),(232,'Channel页面自动增加广告位 232 ',0,0,'Channel页面','',1),(227,'Channel页面自动增加广告位 227 ',0,0,'Channel页面','',1),(221,'Channel页面自动增加广告位 221 ',0,0,'Channel页面','',1),(214,'Channel页面自动增加广告位 214 ',0,0,'Channel页面','',1),(70,'Index页面自动增加广告位 70 ',0,0,'Index页面','',1),(71,'Index页面自动增加广告位 71 ',0,0,'Index页面','',1),(72,'Index页面自动增加广告位 72 ',0,0,'Index页面','',1);

/*Table structure for table `tp_admin` */

DROP TABLE IF EXISTS `tp_admin`;

CREATE TABLE `tp_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT 'email',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `ec_salt` varchar(10) DEFAULT NULL COMMENT '秘钥',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `last_login` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `nav_list` text NOT NULL COMMENT '权限',
  `lang_type` varchar(50) NOT NULL DEFAULT '' COMMENT 'lang_type',
  `agency_id` smallint(5) unsigned NOT NULL COMMENT 'agency_id',
  `suppliers_id` smallint(5) unsigned DEFAULT '0' COMMENT 'suppliers_id',
  `todolist` longtext COMMENT 'todolist',
  `role_id` smallint(5) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`admin_id`),
  KEY `user_name` (`user_name`) USING BTREE,
  KEY `agency_id` (`agency_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tp_admin` */

insert  into `tp_admin`(`admin_id`,`user_name`,`email`,`password`,`ec_salt`,`add_time`,`last_login`,`last_ip`,`nav_list`,`lang_type`,`agency_id`,`suppliers_id`,`todolist`,`role_id`) values (1,'admin','admin@admin.com','704709c080c6eaf28f487050c6b5dfff',NULL,1467099328,0,'127.0.0.1','','',0,0,NULL,1),(2,'bjgonghuo1','bj@163.com','519475228fe35ad067744465c42a19b2',NULL,1245044099,0,'','商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit','',0,1,'',2),(3,'shhaigonghuo1','shanghai@163.com','4146fecce77907d264f6bd873f4ea27b',NULL,1245044202,0,'','商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit','',0,2,'',2),(4,'wyp001','wyp001@126.com','519475228fe35ad067744465c42a19b2',NULL,1456542538,0,'','','',0,0,NULL,2);

/*Table structure for table `tp_admin_log` */

DROP TABLE IF EXISTS `tp_admin_log`;

CREATE TABLE `tp_admin_log` (
  `log_id` bigint(16) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `admin_id` int(10) DEFAULT NULL COMMENT '管理员id',
  `log_info` varchar(255) DEFAULT NULL COMMENT '日志描述',
  `log_ip` varchar(30) DEFAULT NULL COMMENT 'ip地址',
  `log_url` varchar(50) DEFAULT NULL COMMENT 'url',
  `log_time` int(10) DEFAULT NULL COMMENT '日志时间',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=325 DEFAULT CHARSET=utf8;

/*Data for the table `tp_admin_log` */

insert  into `tp_admin_log`(`log_id`,`admin_id`,`log_info`,`log_ip`,`log_url`,`log_time`) values (324,1,'后台登录','127.0.0.1','/index.php/Admin/Admin/login',1468197342),(323,1,'后台登录','127.0.0.1','/index.php/Admin/Admin/login',1468113576),(322,1,'后台登录','127.0.0.1','/index.php/Admin/Admin/login',1467863890);

/*Table structure for table `tp_admin_role` */

DROP TABLE IF EXISTS `tp_admin_role`;

CREATE TABLE `tp_admin_role` (
  `role_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `act_list` text COMMENT '权限列表',
  `role_desc` varchar(255) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tp_admin_role` */

insert  into `tp_admin_role`(`role_id`,`role_name`,`act_list`,`role_desc`) values (2,'编辑','19,20,23,21,22,35,36,52,53,18,33,34,24,25,26,27,28,29,43,50,30,31,32,39,40,41,42,37,38,49,44,45,46,47,48','违法接口'),(1,'超级管理员','all','管理全站'),(4,'客服','','客服处理订单发货');

/*Table structure for table `tp_area_region` */

DROP TABLE IF EXISTS `tp_area_region`;

CREATE TABLE `tp_area_region` (
  `shipping_area_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '物流配置id',
  `region_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地区id对应region表id',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tp_area_region` */

insert  into `tp_area_region`(`shipping_area_id`,`region_id`) values (15,2),(15,3),(15,5),(15,6),(15,9),(16,1),(16,2),(16,3),(16,5),(16,6),(16,9),(16,456),(23,1);

/*Table structure for table `tp_article` */

DROP TABLE IF EXISTS `tp_article`;

CREATE TABLE `tp_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `cat_id` smallint(5) NOT NULL DEFAULT '0' COMMENT '类别ID',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '文章标题',
  `content` longtext NOT NULL COMMENT '文章内容',
  `author` varchar(30) NOT NULL DEFAULT '' COMMENT '文章作者',
  `author_email` varchar(60) NOT NULL DEFAULT '' COMMENT '作者邮箱',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '文章类型',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `file_url` varchar(255) NOT NULL DEFAULT '' COMMENT '附件地址',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'open_type',
  `link` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `description` mediumtext COMMENT '文章摘要',
  `click` int(11) DEFAULT '0' COMMENT '浏览量',
  `publish_time` int(11) DEFAULT '0' COMMENT '文章发布时间',
  `thumb` varchar(255) DEFAULT '' COMMENT '文章缩略图',
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=291 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `tp_article` */

/*Table structure for table `tp_article_cat` */

DROP TABLE IF EXISTS `tp_article_cat`;

CREATE TABLE `tp_article_cat` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `cat_name` varchar(20) DEFAULT NULL COMMENT '类别名称',
  `cat_type` smallint(6) DEFAULT NULL COMMENT 'cat_type',
  `parent_id` smallint(6) DEFAULT NULL COMMENT '夫级ID',
  `show_in_nav` tinyint(1) DEFAULT '0' COMMENT '是否导航显示',
  `sort_order` smallint(6) DEFAULT '50' COMMENT '排序',
  `cat_desc` varchar(255) DEFAULT NULL COMMENT '分类描述',
  `keywords` varchar(30) DEFAULT NULL COMMENT '搜索关键词',
  `cat_alias` varchar(20) DEFAULT NULL COMMENT '别名',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Data for the table `tp_article_cat` */

/*Table structure for table `tp_brand` */

DROP TABLE IF EXISTS `tp_brand`;

CREATE TABLE `tp_brand` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '品牌表',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `logo` varchar(80) NOT NULL DEFAULT '' COMMENT '品牌logo',
  `desc` text NOT NULL COMMENT '品牌描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌地址',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `cat_name` varchar(128) DEFAULT '' COMMENT '品牌分类',
  `parent_cat_id` int(11) DEFAULT '0' COMMENT '分类id',
  `cat_id` int(10) DEFAULT '0' COMMENT '分类id',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否推荐',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8;

/*Data for the table `tp_brand` */

/*Table structure for table `tp_cart` */

DROP TABLE IF EXISTS `tp_cart`;

CREATE TABLE `tp_cart` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `session_id` char(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'session',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_sn` varchar(60) NOT NULL DEFAULT '' COMMENT '商品货号',
  `goods_name` varchar(120) NOT NULL DEFAULT '' COMMENT '商品名称',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '本店价',
  `member_goods_price` decimal(10,2) DEFAULT '0.00' COMMENT '会员折扣价',
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '购买数量',
  `spec_key` varchar(64) NOT NULL DEFAULT '' COMMENT '商品规格key 对应tp_spec_goods_price 表',
  `spec_key_name` varchar(64) DEFAULT '' COMMENT '商品规格组合名称',
  `bar_code` varchar(64) DEFAULT '' COMMENT '商品条码',
  `selected` tinyint(1) DEFAULT '1' COMMENT '购物车选中状态',
  `add_time` int(11) DEFAULT '0' COMMENT '加入购物车的时间',
  `prom_type` tinyint(1) DEFAULT '0' COMMENT '0 普通订单,1 限时抢购, 2 团购 , 3 促销优惠',
  `prom_id` int(11) DEFAULT '0' COMMENT '活动id',
  `sku` varchar(128) DEFAULT '' COMMENT 'sku',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_cart` */

/*Table structure for table `tp_comment` */

DROP TABLE IF EXISTS `tp_comment`;

CREATE TABLE `tp_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT 'email邮箱',
  `username` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `content` text NOT NULL COMMENT '评论内容',
  `deliver_rank` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '物流评价等级',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `ip_address` varchar(15) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论用户',
  `img` text COMMENT '晒单图片',
  `order_id` mediumint(8) DEFAULT NULL COMMENT '订单id',
  `goods_rank` tinyint(1) DEFAULT NULL COMMENT '商品评价等级',
  `service_rank` tinyint(1) DEFAULT NULL COMMENT '商家服务态度评价等级',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=324 DEFAULT CHARSET=utf8;

/*Data for the table `tp_comment` */

/*Table structure for table `tp_config` */

DROP TABLE IF EXISTS `tp_config`;

CREATE TABLE `tp_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(64) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

/*Data for the table `tp_config` */

insert  into `tp_config`(`id`,`name`,`value`,`inc_type`,`desc`) values (1,'site_url','http://www.tp-shop.cn','shop_info',NULL),(2,'record_no','粤00-86140485号','shop_info',NULL),(3,'store_name','深圳搜豹公司','shop_info',NULL),(4,'store_logo','/Public/images/newLogo.png','shop_info',NULL),(5,'store_title','tpshop｜thinkphp shop ｜TPshop 免费开源系统｜ thinkphp 商城 国内最强大的thinkphp shop b2cb2b开源商城','shop_info',NULL),(6,'store_desc','tpshop｜thinkphp shop ｜TPshop 免费开源系统｜ thinkphp 商城 国内最强大的thinkphp shop b2cb2b开源商城','shop_info',NULL),(7,'store_keyword','tpshop｜thinkphp shop ｜TPshop 免费开源系统｜ thinkphp 商城 国内最强大的thinkphp shop b2cb2b开源商城','shop_info',NULL),(8,'contact','','shop_info',NULL),(9,'phone','15871376283','shop_info',NULL),(10,'address','南山区西丽镇留仙大道1001号','shop_info',NULL),(11,'qq','365720009','shop_info',NULL),(12,'qq2','1273276548','shop_info',NULL),(13,'qq3','703522188','shop_info',NULL),(14,'freight_free','1000000','shopping',NULL),(15,'point_rate','10','shopping',NULL),(16,'is_mark','0','water',NULL),(17,'mark_txt','','water',NULL),(18,'mark_img','','water',NULL),(19,'mark_width','','water',NULL),(20,'mark_height','','water',NULL),(21,'mark_degree','53','water',NULL),(22,'mark_quality','55','water',NULL),(23,'sel','9','water',NULL),(24,'sms_url','https://yunpan.cn/OcRgiKWxZFmjSJ','sms',NULL),(25,'sms_user','','sms',NULL),(26,'sms_pwd','访问密码 080e','sms',NULL),(27,'regis_sms_enable','0','sms',NULL),(28,'sms_time_out','60','sms',NULL),(29,'reg_integral','100','basic',NULL),(30,'file_size','1','basic',NULL),(31,'default_storage','1','basic',NULL),(32,'warning_storage','1','basic',NULL),(33,'tax','6','basic',NULL),(34,'is_remind','0','basic',NULL),(35,'order_finish_time','','basic',NULL),(36,'order_cancel_time','','basic',NULL),(37,'hot_keywords','手机|小米|iphone|三星|华为','basic',NULL),(38,'__hash__','8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453','sms',NULL),(39,'__hash__','8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453','sms',NULL),(40,'app_test','0','basic',NULL),(41,'switch','1','distribut',NULL),(42,'condition','0','distribut',NULL),(43,'name','我的分销商','distribut',NULL),(44,'pattern','1','distribut',NULL),(45,'order_rate','20','distribut',NULL),(46,'first_name','我的一级分销','distribut',NULL),(47,'first_rate','60','distribut',NULL),(48,'second_name','我的二级分销','distribut',NULL),(49,'second_rate','25','distribut',NULL),(50,'third_name','我的三级分销','distribut',NULL),(51,'third_rate','15','distribut',NULL),(52,'date','7','distribut',NULL),(53,'need','1000','distribut',NULL),(54,'min','100','distribut',NULL);

/*Table structure for table `tp_contacts` */

DROP TABLE IF EXISTS `tp_contacts`;

CREATE TABLE `tp_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `tel` varchar(100) DEFAULT NULL COMMENT '电话json{}',
  `level` int(11) DEFAULT NULL COMMENT '0:正常1:极高2:',
  `labs` varchar(255) DEFAULT NULL COMMENT '标签json{}',
  `uid` int(11) DEFAULT NULL COMMENT '所属用户ID',
  `tel1` varchar(30) DEFAULT NULL COMMENT '电话1',
  `tel2` varchar(30) DEFAULT NULL COMMENT '电话2',
  `mobile` varchar(30) DEFAULT NULL COMMENT '手机1',
  `mobile2` varchar(30) DEFAULT NULL COMMENT '手机2',
  `mobile3` varchar(30) DEFAULT NULL COMMENT '手机3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_contacts` */

/*Table structure for table `tp_coupon` */

DROP TABLE IF EXISTS `tp_coupon`;

CREATE TABLE `tp_coupon` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) NOT NULL COMMENT '优惠券名字',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发放类型 0面额模板1 按用户发放 2 注册 3 邀请 4 线下发放',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠券金额',
  `condition` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '使用条件',
  `createnum` int(11) DEFAULT '0' COMMENT '发放数量',
  `send_num` int(11) DEFAULT '0' COMMENT '已领取数量',
  `use_num` int(11) DEFAULT '0' COMMENT '已使用数量',
  `send_start_time` int(11) DEFAULT NULL COMMENT '发放开始时间',
  `send_end_time` int(11) DEFAULT NULL COMMENT '发放结束时间',
  `use_start_time` int(11) DEFAULT NULL COMMENT '使用开始时间',
  `use_end_time` int(11) DEFAULT NULL COMMENT '使用结束时间',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `tp_coupon` */

insert  into `tp_coupon`(`id`,`name`,`type`,`money`,`condition`,`createnum`,`send_num`,`use_num`,`send_start_time`,`send_end_time`,`use_start_time`,`use_end_time`,`add_time`) values (1,'注册优惠券',2,'50.00','200.00',0,0,0,1449840218,1449842218,NULL,1449843218,1449840218),(2,'订单满100优惠券',1,'20.00','100.00',11,1,0,1449763200,1449763200,-28800,1449763200,1449840218),(3,'按用户类型发放',4,'30.00','100.00',0,50,0,1449840218,1449842218,NULL,1449843218,1449840218),(6,'5元券',0,'5.00','50.00',1000,0,0,1450022400,1450281600,1464710400,1480435200,NULL),(7,'50代金券',0,'50.00','500.00',100,0,0,1450022400,1450022400,1464710400,1477929600,NULL),(9,'订单满100送10元代金券',1,'10.00','100.00',100,22,0,1462204800,1464796800,-28800,1467388800,1462155155),(10,'按用户发放优惠券',4,'10.00','100.00',0,0,0,1462204800,1464796800,NULL,1467388800,1462155199),(11,'代金券10块',0,'10.00','100.00',100,0,0,1459958400,1464796800,1464710400,1469894400,1462178614),(12,'5元线下券',4,'7.00','50.00',10,0,0,1463846400,1466438400,1463846400,1469030400,1463826773);

/*Table structure for table `tp_coupon_list` */

DROP TABLE IF EXISTS `tp_coupon_list`;

CREATE TABLE `tp_coupon_list` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `cid` int(8) NOT NULL DEFAULT '0' COMMENT '优惠券 对应coupon表id',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发放类型 1 按订单发放 2 注册 3 邀请 4 按用户发放',
  `uid` int(8) NOT NULL DEFAULT '0' COMMENT '用户id',
  `order_id` int(8) NOT NULL DEFAULT '0' COMMENT '订单id',
  `use_time` int(11) NOT NULL DEFAULT '0' COMMENT '使用时间',
  `code` varchar(10) DEFAULT '' COMMENT '优惠券兑换码',
  `send_time` int(11) NOT NULL DEFAULT '0' COMMENT '发放时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

/*Data for the table `tp_coupon_list` */

/*Table structure for table `tp_daikuan` */

DROP TABLE IF EXISTS `tp_daikuan`;

CREATE TABLE `tp_daikuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(50) DEFAULT NULL COMMENT '贷款名称',
  `name` varchar(50) DEFAULT NULL COMMENT '贷款公司名称',
  `price_low` decimal(3,2) DEFAULT NULL COMMENT '贷款最小金额',
  `content` text COMMENT '贷款描述',
  `status` tinyint(2) DEFAULT NULL COMMENT '贷款状态',
  `level` decimal(4,2) NOT NULL DEFAULT '0.00' COMMENT '贷款诚信门槛',
  `push_time` int(11) DEFAULT NULL COMMENT '放款时间',
  `num` int(11) DEFAULT NULL COMMENT '限贷数量',
  `price_hight` decimal(8,2) DEFAULT NULL COMMENT '贷款最大金额',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '贷款金额池',
  `rates` decimal(3,3) DEFAULT '0.000' COMMENT '贷款利率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_daikuan` */

/*Table structure for table `tp_daikuanlogs` */

DROP TABLE IF EXISTS `tp_daikuanlogs`;

CREATE TABLE `tp_daikuanlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `status` tinyint(2) DEFAULT NULL COMMENT '0放款记录1还款记录',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `push_time` int(11) DEFAULT NULL COMMENT '还款时间',
  `daikuan_id` int(11) DEFAULT NULL COMMENT '贷款项目ID',
  `add_time` int(11) DEFAULT NULL COMMENT '放款时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_daikuanlogs` */

/*Table structure for table `tp_daikuanusers` */

DROP TABLE IF EXISTS `tp_daikuanusers`;

CREATE TABLE `tp_daikuanusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) NOT NULL COMMENT '申请贷款用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '申请贷款用户名称',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '申请贷款金额',
  `real_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '实际发放金额',
  `daikuan_id` int(11) DEFAULT NULL COMMENT '贷款项目ID',
  `status` tinyint(2) DEFAULT NULL COMMENT '放款状态0待审核1审核中2已放款3待还款4已还款',
  `creat_time` int(11) DEFAULT NULL COMMENT '申请时间',
  `push_time` int(11) DEFAULT NULL COMMENT '放款时间',
  `back_time` int(11) DEFAULT NULL COMMENT '最后还款时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_daikuanusers` */

/*Table structure for table `tp_delivery_doc` */

DROP TABLE IF EXISTS `tp_delivery_doc`;

CREATE TABLE `tp_delivery_doc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '发货单ID',
  `order_id` int(11) unsigned NOT NULL COMMENT '订单ID',
  `order_sn` varchar(64) NOT NULL COMMENT '订单编号',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户ID',
  `admin_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `consignee` varchar(64) NOT NULL COMMENT '收货人',
  `zipcode` varchar(6) DEFAULT NULL COMMENT '邮编',
  `mobile` varchar(20) NOT NULL COMMENT '联系手机',
  `country` int(11) unsigned NOT NULL COMMENT '国ID',
  `province` int(11) unsigned NOT NULL COMMENT '省ID',
  `city` int(11) unsigned NOT NULL COMMENT '市ID',
  `district` int(11) unsigned NOT NULL COMMENT '区ID',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `shipping_code` varchar(32) DEFAULT NULL COMMENT '物流code',
  `shipping_name` varchar(64) DEFAULT NULL COMMENT '快递名称',
  `shipping_price` decimal(10,2) DEFAULT '0.00' COMMENT '运费',
  `invoice_no` varchar(255) NOT NULL COMMENT '物流单号',
  `tel` varchar(64) DEFAULT NULL COMMENT '座机电话',
  `note` text COMMENT '管理员添加的备注信息',
  `best_time` int(11) DEFAULT NULL COMMENT '友好收货时间',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发货单';

/*Data for the table `tp_delivery_doc` */

/*Table structure for table `tp_dingo` */

DROP TABLE IF EXISTS `tp_dingo`;

CREATE TABLE `tp_dingo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `sid` int(11) NOT NULL COMMENT '内容ID',
  `content` tinyint(4) DEFAULT NULL COMMENT '0:赞1:踩2:震惊3:呵呵',
  `add_time` int(11) DEFAULT NULL COMMENT '评论时间',
  `is_open` int(11) DEFAULT NULL COMMENT '是否显示',
  `ip_address` varchar(15) DEFAULT '' COMMENT '评论IP地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_dingo` */

/*Table structure for table `tp_feedback` */

DROP TABLE IF EXISTS `tp_feedback`;

CREATE TABLE `tp_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '默认自增ID',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '回复留言ID',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '' COMMENT '留言标题',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '留言类型',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '处理状态',
  `msg_content` text NOT NULL COMMENT '留言内容',
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '留言时间',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_feedback` */

/*Table structure for table `tp_flash_sale` */

DROP TABLE IF EXISTS `tp_flash_sale`;

CREATE TABLE `tp_flash_sale` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL COMMENT '活动标题',
  `goods_id` int(10) NOT NULL COMMENT '参团商品ID',
  `price` float(10,2) NOT NULL COMMENT '活动价格',
  `goods_num` int(10) DEFAULT '1' COMMENT '商品参加活动数',
  `buy_limit` int(11) NOT NULL DEFAULT '1' COMMENT '每人限购数',
  `buy_num` int(11) NOT NULL DEFAULT '0' COMMENT '已购买人数',
  `order_num` int(10) DEFAULT '0' COMMENT '已下单数',
  `description` text COMMENT '活动描述',
  `start_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `is_end` tinyint(1) DEFAULT '0' COMMENT '是否已结束',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tp_flash_sale` */

/*Table structure for table `tp_friend_link` */

DROP TABLE IF EXISTS `tp_friend_link`;

CREATE TABLE `tp_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `link_name` varchar(255) NOT NULL DEFAULT '' COMMENT '链接名称',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `link_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '链接logo',
  `orderby` tinyint(3) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否显示',
  `target` tinyint(1) DEFAULT '1' COMMENT '是否新窗口打开',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`orderby`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tp_friend_link` */

/*Table structure for table `tp_goods` */

DROP TABLE IF EXISTS `tp_goods`;

CREATE TABLE `tp_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `cat_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `extend_cat_id` int(11) DEFAULT '0' COMMENT '扩展分类id',
  `goods_sn` varchar(60) NOT NULL DEFAULT '' COMMENT '商品编号',
  `goods_name` varchar(120) NOT NULL DEFAULT '' COMMENT '商品名称',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '品牌id',
  `store_count` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '库存数量',
  `comment_count` smallint(5) DEFAULT '0' COMMENT '商品评论数',
  `weight` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品重量克为单位',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '本店价',
  `cost_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品成本价',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '商品关键词',
  `goods_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简单描述',
  `goods_content` text COMMENT '商品详细描述',
  `original_img` varchar(255) NOT NULL DEFAULT '' COMMENT '商品上传原始图',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为实物',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否上架',
  `is_free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮0否1是',
  `on_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品上架时间',
  `sort` smallint(4) unsigned NOT NULL DEFAULT '50' COMMENT '商品排序',
  `is_recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否热卖',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品所属类型id，取值表goods_type的cat_id',
  `spec_type` smallint(5) DEFAULT '0' COMMENT '商品规格类型，取值表goods_type的cat_id',
  `give_integral` mediumint(8) DEFAULT '0' COMMENT '购买商品赠送积分',
  `sales_sum` int(11) DEFAULT '0' COMMENT '商品销量',
  `prom_type` tinyint(1) DEFAULT '0' COMMENT '0 普通订单,1 限时抢购, 2 团购 , 3 促销优惠',
  `prom_id` int(11) DEFAULT '0' COMMENT '优惠活动id',
  `commission` decimal(10,2) DEFAULT '0.00' COMMENT '佣金用于分销分成',
  `spu` varchar(128) DEFAULT '' COMMENT 'SPU',
  `sku` varchar(128) DEFAULT '' COMMENT 'SKU',
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_number` (`store_count`),
  KEY `goods_weight` (`weight`),
  KEY `sort_order` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

/*Data for the table `tp_goods` */

/*Table structure for table `tp_goods_attr` */

DROP TABLE IF EXISTS `tp_goods_attr`;

CREATE TABLE `tp_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性id自增',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '属性id',
  `attr_value` text NOT NULL COMMENT '属性值',
  `attr_price` varchar(255) NOT NULL DEFAULT '' COMMENT '属性价格',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=988 DEFAULT CHARSET=utf8;

/*Data for the table `tp_goods_attr` */

/*Table structure for table `tp_goods_attribute` */

DROP TABLE IF EXISTS `tp_goods_attribute`;

CREATE TABLE `tp_goods_attribute` (
  `attr_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `attr_name` varchar(60) NOT NULL DEFAULT '' COMMENT '属性名称',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '属性分类id',
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不需要检索 1关键字检索 2范围检索',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0唯一属性 1单选属性 2复选属性',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT ' 0 手工录入 1从列表中选择 2多行文本框',
  `attr_values` text NOT NULL COMMENT '可选值列表',
  `order` tinyint(3) unsigned NOT NULL DEFAULT '50' COMMENT '属性排序',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;

/*Data for the table `tp_goods_attribute` */

/*Table structure for table `tp_goods_category` */

DROP TABLE IF EXISTS `tp_goods_category`;

CREATE TABLE `tp_goods_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品分类id',
  `name` varchar(90) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '商品分类名称',
  `mobile_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '手机端显示的商品分类名',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `parent_id_path` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '家族图谱',
  `level` tinyint(1) DEFAULT '0' COMMENT '等级',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50' COMMENT '顺序排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `image` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '分类图片',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否推荐为热门分类',
  `cat_group` tinyint(1) DEFAULT '0' COMMENT '分类分组默认0',
  `commission_rate` tinyint(1) DEFAULT '0' COMMENT '分佣比例',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=844 DEFAULT CHARSET=utf8;

/*Data for the table `tp_goods_category` */

/*Table structure for table `tp_goods_collect` */

DROP TABLE IF EXISTS `tp_goods_collect`;

CREATE TABLE `tp_goods_collect` (
  `collect_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`collect_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `tp_goods_collect` */

/*Table structure for table `tp_goods_consult` */

DROP TABLE IF EXISTS `tp_goods_consult`;

CREATE TABLE `tp_goods_consult` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品咨询id',
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id',
  `username` varchar(32) CHARACTER SET utf8 DEFAULT '' COMMENT '网名',
  `add_time` int(11) DEFAULT '0' COMMENT '咨询时间',
  `consult_type` tinyint(1) DEFAULT '1' COMMENT '1 商品咨询 2 支付咨询 3 配送 4 售后',
  `content` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '咨询内容',
  `parent_id` int(11) DEFAULT '0' COMMENT '父id 用于管理员回复',
  `is_show` tinyint(1) DEFAULT '0' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3046 DEFAULT CHARSET=latin1;

/*Data for the table `tp_goods_consult` */

insert  into `tp_goods_consult`(`id`,`goods_id`,`username`,`add_time`,`consult_type`,`content`,`parent_id`,`is_show`) values (1001,13,'6 生锈的18cm',1454874945,3,'约泡就是要直接',0,0),(1002,53,'8 ✎ℳ㎕子凌﹏✍',1451361254,1,'9494斯文点',0,0),(1003,30,'9 生锈的18cm',1449883109,3,'@玉郎 开玩笑的啦',0,0),(1004,65,'5 生锈的18cm',1443158948,1,'我们又不是伪君子',0,0),(1005,55,'5 横瓜徒弟忽忽',1452425961,1,'',0,0),(1006,73,'6 Jumbo',1442255081,1,'@玉郎 玉郎妹妹',0,0),(1007,19,'9 ✎ℳ㎕子凌﹏✍',1454066000,3,'玉狼是我的',0,0),(1008,3,'6 sweet',1442102151,4,'不去什么ktv夜店的',0,0),(1009,104,'7 配对指挥员（临时工王傻根）',1444745726,2,'星巴克',0,0),(1010,71,'2 sweet',1453972660,1,'喝不起',0,0),(1011,56,'6 玉郎',1443027640,3,'我自己租房',0,0),(1012,94,'1 玉郎',1450799105,2,'木有宿舍',0,0),(1013,25,'4 玉郎',1457214242,3,' 我是我家那位的',0,0),(1014,25,'0 玉郎',1449253988,2,'不是群里的某位的',0,0),(1015,81,'8 配对指挥员（临时工王傻根）',1446468031,2,'你是大家的',0,0),(1016,85,'3 横瓜徒弟忽忽',1453589808,4,'',0,0),(1017,35,'4 配对指挥员（临时工王傻根）',1454731508,2,'倒闭了？',0,0),(1018,66,'7 玉郎',1451319066,1,' 难道我要告诉你',0,0),(1019,82,'4 玉郎',1450887171,4,'一个吃货群',0,0),(1020,80,'9 玉郎',1443454261,4,'然后各种浪',0,0),(1021,102,'4 玉郎',1445397523,1,'各种面目都知道了',0,0),(1022,69,'7 玉郎',1457467895,1,'就是玩耍啊',0,0),(1023,103,'9 生锈的18cm',1451425062,4,'@sweet 高潮的意思',0,0),(1024,33,'4 sweet',1456572465,2,'一浪更比一浪高',0,0),(1025,35,'6 ✎ℳ㎕子凌﹏✍',1445952288,3,'天哪',0,0),(1026,63,'5 ✎ℳ㎕子凌﹏✍',1456360473,3,'一潮更比一潮荡',0,0),(1027,30,'5 生锈的18cm',1451861703,3,'晚上街上妹子真多',0,0),(1028,50,'1 生锈的18cm',1451364418,2,'户外直播',0,0),(1029,5,'2 配对指挥员（临时工王傻根）',1447215804,3,'....',0,0),(1030,25,'3 配对指挥员（临时工王傻根）',1445296800,1,'这么晚直播？',0,0),(1031,8,'5 横瓜徒弟忽忽',1447337093,3,'',0,0),(1032,81,'2 配对指挥员（临时工王傻根）',1446730120,4,'怕鬼片啊',0,0),(1033,28,'2 wen',1448648070,2,'好热闹',0,0),(1034,88,'5 wen',1447496878,4,'靠',0,0),(1035,28,'6 生锈的18cm',1441631233,1,'@玉郎 什么事',0,0),(1036,28,'1 生锈的18cm',1452929574,4,'被人搭讪了？',0,0),(1037,69,'2 ✎ℳ㎕子凌﹏✍',1441069085,1,'一剑毛骨悚然的事',0,0),(1038,23,'6 Jumbo',1442980706,1,'@玉郎 什么事',0,0),(1039,29,'0 ✎ℳ㎕子凌﹏✍',1447164124,3,'OMG，这赤裸裸强奸',0,0),(1040,48,'4 ✎ℳ㎕子凌﹏✍',1454302777,2,'我的玉郎就是单纯',0,0),(1041,40,'1 sweet',1441218851,1,'我的玉郎就是单纯',0,0),(1042,64,'5 玉郎',1454968285,1,'我现在懂了哇',0,0),(1043,103,'8 玉郎',1450435765,2,' ',0,0),(1044,41,'6 三年青铜5',1443829730,3,'@✎ℳ㎕子凌﹏ 晕',0,0),(1045,9,'0 玉郎',1457197367,2,'我很精明的',0,0),(1046,87,'6 ✎ℳ㎕子凌﹏✍',1446199613,1,'地瓜呢',0,0),(1047,87,'6 sweet',1446586156,1,'睡觉了',0,0),(1048,62,'8 ✎ℳ㎕子凌﹏✍',1457690434,2,'@三年青铜5 坚持',0,0),(1049,95,'3 sweet',1453904633,1,'夜晚了',0,0),(1050,17,'8 sweet',1457174691,3,'大家睡吧',0,0),(1051,74,'3 Jumbo',1456675297,4,'啥图啊',0,0),(1052,11,'1 玉郎',1454304887,1,'我凑',0,0),(1053,58,'1 玉郎',1456720648,1,'起码出的了门呀',0,0),(1054,38,'7 三年青铜5',1450633519,3,'淡定打比方的',0,0),(1055,3,'9 玉郎',1441283187,2,' ',0,0),(1056,46,' Dc',1452573090,1,'@玉郎 ',0,0),(1057,15,' Dc',1447825413,2,'玉郎',0,0),(1058,75,' 玉郎',1449796097,3,'怎么了@Dc ',0,0),(1059,70,' 玉郎',1456029828,4,'。。。。。。',0,0),(1060,68,' Dc',1445475042,1,'~~你无码了吗?',0,0),(1061,35,' ✎ℳ㎕子凌﹏✍',1452598929,1,'@Jumbo 天哪',0,0),(1062,4,' 配对指挥员（临时工王傻根）',1451962425,3,'现在只看中身材了',0,0),(1063,8,' Dc',1444215218,4,'~~~我知道~',0,0),(1064,27,' ✎ℳ㎕子凌﹏✍',1451910746,3,'撸啊撸，',0,0),(1065,30,' sweet',1453221195,1,'@玉郎 要你干毛',0,0),(1066,58,' 如此的如此。不過如此',1445792503,1,'搞编程就要有耐心',0,0),(1067,13,' 玉郎',1444179359,2,' 真心话',0,0),(1068,30,' 玉郎',1447580199,1,'地瓜，不要',0,0),(1069,69,' 玉郎',1440512210,1,'有家室还有肚腩',0,0),(1070,11,' 玉郎',1445866331,2,'我家那位啊',0,0),(1071,25,' 配对指挥员（临时工王傻根）',1451062250,3,'我白着呢',0,0),(1072,29,' 配对指挥员（临时工王傻根）',1451383402,2,'养我',0,0),(1073,64,' 横瓜徒弟忽忽',1448491976,4,'那我养你把.',0,0),(1074,96,' 玉郎',1440843909,4,'难道我会告诉你们',0,0),(1075,33,' 配对指挥员（临时工王傻根）',1451363890,1,'日',0,0),(1076,27,' ✎ℳ㎕子凌﹏✍',1456300355,3,'心脆',0,0),(1077,83,' 生锈的18cm',1450700492,4,'@玉郎 什么是polo',0,0),(1078,85,' ✎ℳ㎕子凌﹏✍',1445305238,2,'碎',0,0),(1079,80,' Dc',1457504281,4,'玉郎~~',0,0),(1080,78,' 配对指挥员（临时工王傻根）',1446671058,2,'我来作为配对员',0,0),(1081,40,' 玉郎',1446597757,3,'酱紫吗？',0,0),(1082,7,' Dc',1447910316,3,'哔了狗~',0,0),(1083,53,' 玉郎',1455983422,4,'酱紫啊我擦',0,0),(1084,84,' Dc',1450035511,2,'~~~',0,0),(1085,103,' Dc',1444283773,1,'说的对啊~',0,0),(1086,45,' Dc',1445959144,3,'..........',0,0),(1087,96,' Dc',1441941312,4,'靠~~我看到了',0,0),(1088,98,' Dc',1450733714,1,'................',0,0),(1089,85,' Dc',1443218538,4,'你撤回干嘛',0,0),(1090,23,' Jumbo',1445391722,4,'',0,0),(1091,97,' 配对指挥员（临时工王傻根）',1453717953,4,'对@横瓜徒弟忽忽 ',0,0),(1092,21,' Dc',1441745667,1,'~~~',0,0),(1093,52,' 玉郎',1451502054,3,'我会觉得不舒服啦',0,0),(1094,21,' 配对指挥员（临时工王傻根）',1443508050,2,'要婚前试爱',0,0),(1095,98,' Dc',1451893343,4,'~~一点前戏都没?',0,0),(1096,11,' 生锈的18cm',1441971370,4,'@玉郎 好色情啊',0,0),(1097,20,' 配对指挥员（临时工王傻根）',1451314320,3,'日',0,0),(1098,67,' 玉郎',1446248128,4,'我说的实话',0,0),(1099,89,' 配对指挥员（临时工王傻根）',1457527484,4,'舌吻',0,0),(1100,70,' Dc',1444390823,4,'算了~~',0,0),(1101,57,' Dc',1450755336,1,'不讨论了~',0,0),(1102,37,' @全体群员',1450911957,1,'努力，奋斗',0,0),(1103,9,' @全体群员',1448480374,2,'努力，奋斗',0,0),(1104,48,' 配对指挥员（临时工王傻根）',1450624027,3,'加油',0,0),(1105,76,' ✎ℳ㎕子凌﹏✍',1449285101,2,'一瞬间',0,0),(1106,63,' @全体群员',1446159534,4,'努力，奋斗',0,0),(1107,54,' 玉郎',1445812015,3,'没关系啊',0,0),(1108,51,' @全体群员',1453650980,4,'努力，奋斗',0,0),(1109,42,' @全体群员',1455003617,1,'努力，奋斗',0,0),(1110,18,' 配对指挥员（临时工王傻根）',1446570863,4,'努力，奋斗',0,0),(1111,60,' 配对指挥员（临时工王傻根）',1444662405,2,'有触电的感觉吗',0,0),(1112,30,' 生锈的18cm',1455091683,4,'努力奋斗',0,0),(1113,74,' 配对指挥员（临时工王傻根）',1450090882,1,'@玉郎 ',0,0),(1114,35,' 玉郎',1440805940,4,'木有触电啊',0,0),(1115,18,' 配对指挥员（临时工王傻根）',1448811546,3,'有口臭吗',0,0),(1116,92,' @全体群员',1447926136,1,'fighting and strugling ',0,0),(1117,33,' 玉郎',1442646898,1,'应该是联络不够吧',0,0),(1118,91,' @全体群员',1443444769,4,'fighting and strugling ',0,0),(1119,73,' @全体群员',1453399437,1,'fighting and strugling ',0,0),(1120,85,' ✎ℳ㎕子凌﹏✍',1451054339,3,'有口臭的直接踹死',0,0),(1121,39,' @全体群员',1449411664,2,'fighting and strugling ',0,0),(1122,9,' @全体群员',1443147347,3,'fighting and strugling ',0,0),(1123,8,' 玉郎',1444926077,4,'木有口臭',0,0),(1124,13,' 配对指挥员（临时工王傻根）',1457456293,3,'....',0,0),(1125,55,' @全体群员',1443925179,4,'fighting and strugling ',0,0),(1126,76,' @全体群员',1454493676,3,'fighting and strugling ',0,0),(1127,72,' @全体群员',1453091468,4,'fighting and strugling ',0,0),(1128,33,' 配对指挥员（临时工王傻根）',1451471996,2,'怎么才不会有口臭',0,0),(1129,99,' 玉郎',1442927444,1,'哪个？',0,0),(1130,12,' Dc',1448863753,4,'别抽烟~',0,0),(1131,48,' Dc',1447115609,4,'别抽烟~',0,0),(1132,46,' Dc',1443361448,4,'就不口臭了~',0,0),(1133,32,' 清风',1454518461,4,'讨论性技巧？',0,0),(1134,103,' 配对指挥员（临时工王傻根）',1440837581,1,'....',0,0),(1135,82,' 玉郎',1456698500,4,'不是性技巧',0,0),(1136,3,' 玉郎',1452024652,2,'这是问题',0,0),(1137,75,' ✎ℳ㎕子凌﹏✍',1443598226,3,'前戏很重要',0,0),(1138,69,' ✎ℳ㎕子凌﹏✍',1453635160,1,'真的很重',0,0),(1139,62,' ✎ℳ㎕子凌﹏✍',1451060140,4,'要',0,0),(1140,11,' 玉郎',1453161605,2,'什么意思啊',0,0),(1141,91,' 玉郎',1452826742,2,'那个是什么意思啊',0,0),(1142,93,' 配对指挥员（临时工王傻根）',1449996488,4,'会抹胸吗',0,0),(1143,28,' 玉郎',1442620530,3,'。。。。。。拒绝',0,0),(1144,21,' 配对指挥员（临时工王傻根）',1448392308,3,'...',0,0),(1145,95,' 玉郎',1447104007,2,'对',0,0),(1146,102,' 配对指挥员（临时工王傻根）',1453141566,3,'这也拒绝',0,0),(1147,74,' ✎ℳ㎕子凌﹏✍',1452439672,1,'亲爱的男士们',0,0),(1148,36,' Dc',1447976761,2,'没剥光之前',0,0),(1149,53,' Dc',1451810023,3,'别摸~~',0,0),(1150,73,' 配对指挥员（临时工王傻根）',1443090394,3,'哦',0,0),(1151,37,' 玉郎',1441097562,1,'挖槽',0,0),(1152,8,' 玉郎',1453534965,3,' ',0,0),(1153,83,' 配对指挥员（临时工王傻根）',1449124789,3,'有道理',0,0),(1154,34,' 玉郎',1443062972,3,'胸对',0,0),(1155,9,' 玉郎',1446934203,3,'打多一个字',0,0),(1156,44,' 配对指挥员（临时工王傻根）',1440766917,2,'又学到了',0,0),(1157,46,' 玉郎',1447148304,4,'啥？',0,0),(1158,68,' 玉郎',1450359300,1,'。。。。。。',0,0),(1159,33,' 清风',1447809593,3,'乳头也敏感，',0,0),(1160,95,' 清风',1445852620,4,'还有脖子',0,0),(1161,63,' 玉郎',1445340570,2,' 酱紫都讨论',0,0),(1162,98,' Dc',1453639379,1,'~~~',0,0),(1163,98,' 玉郎',1447503734,1,'有',0,0),(1164,61,' Dc',1444492073,1,'.......................',0,0),(1165,97,' liupeike',1451801586,3,'玉狼？',0,0),(1166,1,' 配对指挥员（临时工王傻根）',1450203207,3,'你说了算',0,0),(1167,40,' Dc',1441156624,2,'幸好我喜欢小的',0,0),(1168,100,' 横瓜徒弟忽忽',1455585277,2,'@玉郎 你胸大?',0,0),(1169,61,' Dc',1448711351,4,'.....',0,0),(1170,10,' ✎ℳ㎕子凌﹏✍',1445990784,4,'经过我的判定',0,0),(1171,57,' 玉郎',1449828265,1,'@liupeike 是哒',0,0),(1172,9,' 配对指挥员（临时工王傻根）',1454832230,2,'@玉郎 你胸大?',0,0),(1173,24,' 玉郎',1444169866,3,'不小就是了',0,0),(1174,103,' ✎ℳ㎕子凌﹏✍',1455582113,1,'@玉郎 哈',0,0),(1175,86,' 配对指挥员（临时工王傻根）',1451378656,4,'日',0,0),(1176,50,' 配对指挥员（临时工王傻根）',1443852933,4,'这么自信',0,0),(1177,1,' 生锈的18cm',1454917133,3,'@玉郎 被摸过胸吗',0,0),(1178,1,' 配对指挥员（临时工王傻根）',1450357191,3,'日',0,0),(1179,15,' 配对指挥员（临时工王傻根）',1449587796,3,'那确实大',0,0),(1180,18,' 配对指挥员（临时工王傻根）',1450187386,4,'辛苦了',0,0),(1181,60,' liupeike',1454493148,2,'玉狼，单身？',0,0),(1182,93,' ✎ℳ㎕子凌﹏✍',1444896019,4,'玉郎我女票',0,0),(1183,92,' Dc',1456875687,1,'你们~~太赤裸裸~',0,0),(1184,73,' 配对指挥员（临时工王傻根）',1440895589,4,'...',0,0),(1185,11,' Dc',1442357913,4,'唉~~~不满意',0,0),(1186,98,' 生锈的18cm',1445138597,4,'@玉郎 f杯？',0,0),(1187,101,' 配对指挥员（临时工王傻根）',1442462327,2,'还起的飞了',0,0),(1188,10,' liupeike',1443517542,2,'胸大很好',0,0),(1189,24,' 玉郎',1443891429,1,'不是f',0,0),(1190,97,' Dc',1448384925,1,'还是喜欢小的',0,0),(1191,84,' 玉郎',1453327718,2,'妈蛋',0,0),(1192,92,' 生锈的18cm',1442393245,3,'@玉郎 d？',0,0),(1193,13,' 玉郎',1441273694,2,'而且',0,0),(1194,17,' liupeike',1443295003,4,'玉狼，',0,0),(1195,31,' Jumbo',1441411858,4,'那就是D咯',0,0),(1196,11,' 生锈的18cm',1447782699,4,'你男人好幸福',0,0),(1197,46,' liupeike',1442604710,1,'可以那个？',0,0),(1198,40,' 玉郎',1444448831,2,'并不是妹纸的福利',0,0),(1199,88,' 生锈的18cm',1453694750,4,'可惜不让摸',0,0),(1200,29,' 玉郎',1444025902,4,'不是d',0,0),(1201,34,' 固戍-一年经验',1447344476,1,'胸还不是被摸大的',0,0),(1202,93,' 玉郎',1440506409,4,'妈蛋，不能说',0,0),(1203,39,' Dc',1442116390,2,'D E F ',0,0),(1204,46,' ✎ℳ㎕子凌﹏✍',1441382855,3,'C就够了',0,0),(1205,47,' 配对指挥员（临时工王傻根）',1446312992,3,'.....',0,0),(1206,50,' 生锈的18cm',1446047738,3,'玉狼是天生大胸',0,0),(1207,27,' ✎ℳ㎕子凌﹏✍',1453656781,1,'你们聊的',0,0),(1208,14,' 生锈的18cm',1441473558,2,'不开你玩笑了',0,0),(1209,100,' Hello World',1456250258,4,'18',0,0),(1210,42,' ✎ℳ㎕子凌﹏✍',1449732816,1,'聊别的',0,0),(1211,45,' 生锈的18cm',1457535922,4,'再开下去会出事',0,0),(1212,39,' Hello World',1454558012,4,'里米',0,0),(1213,54,' 玉郎',1450696273,3,'嗯嗯',0,0),(1214,49,' ✎ℳ㎕子凌﹏✍',1448861644,2,'求再蹦个妹子出来',0,0),(1215,30,' 玉郎',1448893812,4,'聊别的',0,0),(1216,73,' 玉郎',1447696214,2,'比如',0,0),(1217,29,' 玉郎',1446391038,4,'大家快去休息吧',0,0),(1218,97,' ✎ℳ㎕子凌﹏✍',1449374222,4,'@Jumbo 多补补',0,0),(1219,76,' 玉郎',1448790453,1,'晚了',0,0),(1220,15,' 玉郎',1448428167,4,'吵不起来',0,0),(1221,92,' Dc',1451434554,4,'擦~~',0,0),(1222,63,' ✎ℳ㎕子凌﹏✍',1448570550,3,'玉郎刀子嘴豆腐心',0,0),(1223,19,' Dc',1452365843,4,'我也是~~',0,0),(1224,24,' 玉郎',1441093870,2,'他脾气太好了',0,0),(1225,54,' 配对指挥员（临时工王傻根）',1448006820,3,'@Jumbo 吃回去',0,0),(1226,77,' ✎ℳ㎕子凌﹏✍',1452390629,1,'这很认真的说',0,0),(1227,55,' 清风',1446119984,4,'真豪放',0,0),(1228,103,' Hello World',1453233324,1,'',0,0),(1229,85,' Jumbo',1444207835,2,'',0,0),(1230,15,' 玉郎',1440854456,3,'朋友认为容易炸毛',0,0),(1231,20,' 清风',1442472874,1,'这个很多都这样，',0,0),(1232,100,' 配对指挥员（临时工王傻根）',1451906527,3,'那我不同居啊',0,0),(1233,97,' 玉郎',1456777602,1,'在广州？',0,0),(1234,8,' 玉郎',1454462035,2,'哪里？',0,0),(1235,8,' Dc',1445204515,2,'..............',0,0),(1236,19,' ✎ℳ㎕子凌﹏✍',1447373480,2,'同居伤的只有自己',0,0),(1237,57,' Dc',1441976116,2,'...................',0,0),(1238,34,' 玉郎',1455953363,3,'噗！@清风 ',0,0),(1239,59,' 清风',1449454906,1,'什么都可以干',0,0),(1240,18,' Dc',1441254183,1,'聊点别的~~~',0,0),(1241,82,' ✎ℳ㎕子凌﹏✍',1451103382,3,'分居品质生活',0,0),(1242,19,' Dc',1451268441,4,'聊点别的~~~',0,0),(1243,62,' 生锈的18cm',1441724046,1,'好活跃',0,0),(1244,99,' Dc',1443808636,1,'同居挺麻烦的~',0,0),(1245,35,' 清风',1457699398,1,'都不上班的嘛？',0,0),(1246,43,' ✎ℳ㎕子凌﹏✍',1454987269,1,'同居做多了，没趣',0,0),(1247,59,' Dc',1451711937,3,'在上班',0,0),(1248,8,' Dc',1456656840,2,'.....',0,0),(1249,34,' ✎ℳ㎕子凌﹏✍',1443944163,4,'吃喝拉撒都不是事',0,0),(1250,32,' 配对指挥员（临时工王傻根）',1455769848,4,'我可以9点起',0,0),(1251,39,' Dc',1448638578,2,'~~~菇凉~~~',0,0),(1252,59,' Hello World',1455498793,4,'和谐',0,0),(1253,44,' ✎ℳ㎕子凌﹏✍',1452497679,3,'12点半了',0,0),(1254,67,' 玉郎',1450916175,1,' 那就好',0,0),(1255,45,' ✎ℳ㎕子凌﹏✍',1444923968,2,'醉了',0,0),(1256,98,' 纸袋',1441954495,2,'。。。',0,0),(1257,82,' 玉郎',1448259945,2,'。。。。。。',0,0),(1258,74,' 纸袋',1446366253,3,'睡了',0,0),(1259,66,' ✎ℳ㎕子凌﹏✍',1444348109,2,'有人在越南吗？',0,0),(1260,27,' 配对指挥员（临时工王傻根）',1443563948,3,'习惯了就好了',0,0),(1261,8,' 玉郎',1456610961,3,'越南？怎么了',0,0),(1262,29,' ✎ℳ㎕子凌﹏✍',1456700082,1,'我要去越南',0,0),(1263,43,' 配对指挥员（临时工王傻根）',1442050999,2,'....',0,0),(1264,4,' Hello World',1444667152,3,'哈哈',0,0),(1265,45,' 配对指挥员（临时工王傻根）',1442450726,4,'你又插了一句',0,0),(1266,66,' 玉郎',1453297660,2,'男人',0,0),(1267,67,' @全体群员',1441812640,2,'岳父在吗',0,0),(1268,31,' @全体群员',1455524105,2,'岳父在吗',0,0),(1269,54,' Hello World',1448439242,1,'岳父',0,0),(1270,58,' ✎ℳ㎕子凌﹏✍',1450738988,1,'越南小王子谁呀？',0,0),(1271,78,' @全体群员',1456053031,4,'岳父岳母在吗',0,0),(1272,60,' 玉郎',1443194808,2,' 我就是你岳父',0,0),(1273,52,' 玉郎',1456756508,3,'怎么了',0,0),(1274,35,' ✎ℳ㎕子凌﹏✍',1454964066,1,'我要去越南出差',0,0),(1275,67,' @全体群员',1453992172,2,'岳父岳母在吗',0,0),(1276,94,' 玉郎',1452499261,4,' 真的假的啊@Dc ',0,0),(1277,3,' 玉郎',1440942522,2,'不过点赞',0,0),(1278,76,' Dc',1445992894,2,'谈不拢.....',0,0),(1279,75,' 生锈的18cm',1448050062,2,'。。',0,0),(1280,86,' 生锈的18cm',1450497464,3,'6',0,0),(1281,27,' Dc',1452297289,3,'........ 不太喜欢~~',0,0),(1282,6,' 蔚狐美工',1447045472,2,'基本确定',0,0),(1283,92,' 玉郎',1442006702,4,'然并卵',0,0),(1284,38,' 配对指挥员（临时工王傻根）',1447449417,1,'我不止穷',0,0),(1285,87,' Dc',1447080804,2,'户籍制度害死人~~',0,0),(1286,7,' 蔚狐美工',1455421801,2,'而且还矮又难看',0,0),(1287,57,' Dc',1448282093,3,'身高长相还行...',0,0),(1288,5,' 玉郎',1444975120,4,'没错',0,0),(1289,97,' ✎ℳ㎕子凌﹏✍',1442033069,1,'何苦',0,0),(1290,5,' 配对指挥员（临时工王傻根）',1442501878,2,'农村人挖你....',0,0),(1291,64,' @全体群员',1453376234,4,'岳父岳母在吗',0,0),(1292,93,' ✎ℳ㎕子凌﹏✍',1453334574,2,'求挖',0,0),(1293,21,' @全体群员',1445254085,4,'岳父岳母在吗',0,0),(1294,81,' @全体群员',1457425707,1,'岳父岳母在吗',0,0),(1295,52,' 配对指挥员（临时工王傻根）',1452429125,2,'这有啥',0,0),(1296,49,' ✎ℳ㎕子凌﹏✍',1456867777,2,'打掉是必须的',0,0),(1297,82,' 玉郎',1456203851,3,'初三时',0,0),(1298,59,' Dc',1454293285,2,'我回答说好~~',0,0),(1299,10,' ✎ℳ㎕子凌﹏✍',1449220765,1,'我的是初二',0,0),(1300,81,' 玉郎',1448554730,4,' ',0,0),(1301,39,' 玉郎',1448422367,3,'绝对是亲妈',0,0),(1302,17,' 配对指挥员（临时工王傻根）',1447684613,4,'继续工作',0,0),(1303,84,' ✎ℳ㎕子凌﹏✍',1456171156,3,'哈哈哈',0,0),(1304,37,' 配对指挥员（临时工王傻根）',1447295433,1,'惬意的很',0,0),(1305,9,' 配对指挥员（临时工王傻根）',1455929633,2,'这社会',0,0),(1306,89,' 配对指挥员（临时工王傻根）',1443539691,3,'还不只一个',0,0),(1307,58,' Dc',1442500296,2,'责任心?',0,0),(1308,25,' ✎ℳ㎕子凌﹏✍',1446069886,4,'担当',0,0),(1309,62,' 玉郎',1452265648,2,'会',0,0),(1310,45,' Dc',1456438519,1,'~~不会~~',0,0),(1311,77,' Dc',1455188187,3,'.............',0,0),(1312,99,' 玉郎',1446498089,2,' ',0,0),(1313,6,' 配对指挥员（临时工王傻根）',1454170414,2,'体液会',0,0),(1314,18,' Dc',1440481097,2,'别担心~~',0,0),(1315,29,' Dc',1446174827,1,'乖~~',0,0),(1316,56,' 玉郎',1441560042,4,' ',0,0),(1317,13,' 玉郎',1452463929,4,'你这是鼓励吗？',0,0),(1318,88,' 配对指挥员（临时工王傻根）',1444807425,4,'叉叉初学会',0,0),(1319,57,' Dc',1445160218,4,'不是~~',0,0),(1320,53,' 玉郎',1450155746,3,' ',0,0),(1321,99,' 玉郎',1446606195,4,'戴套没关系',0,0),(1322,79,' 玉郎',1440797503,3,'记得戴套啊',0,0),(1323,49,' 配对指挥员（临时工王傻根）',1455924359,2,'....',0,0),(1324,95,' Dc',1447985199,3,'尽量靠能力去找',0,0),(1325,22,' Dc',1444697210,4,'.....别花钱....',0,0),(1326,70,' @全体群员',1443031331,2,'叫鸡好危险啊',0,0),(1327,48,' 配对指挥员（临时工王傻根）',1456327250,2,'钱就是能力',0,0),(1328,30,' 玉郎',1453948402,1,'撒比',0,0),(1329,4,' 玉郎',1446196976,2,'啥？',0,0),(1330,90,' @全体群员',1457448910,1,'大家在哪里叫鸡啊',0,0),(1331,44,' ✎ℳ㎕子凌﹏✍',1450148890,3,'说我会找小三',0,0),(1332,66,' @全体群员',1443745355,3,'多少钱一斤啊',0,0),(1333,10,' 玉郎',1441925491,1,'比较决绝的',0,0),(1334,15,' 配对指挥员（临时工王傻根）',1446790238,1,'@玉郎 真的？',0,0),(1335,78,' 配对指挥员（临时工王傻根）',1449809281,2,'到时联系我',0,0),(1336,53,' Dc',1453556058,1,'有老婆出去嫖~~',0,0),(1337,56,' 玉郎',1448622757,4,' ',0,0),(1338,78,' Dc',1451555316,3,'所以只找对的~~',0,0),(1339,37,' 配对指挥员（临时工王傻根）',1441808421,1,'什么是老婆',0,0),(1340,98,' liupeike',1441800511,2,'玉狼是女的？',0,0),(1341,4,' 配对指挥员（临时工王傻根）',1457108773,2,'所以要实践',0,0),(1342,52,' 玉郎',1451764144,1,' ',0,0),(1343,67,' Dc',1455846312,1,'文爱的自己百度~',0,0),(1344,47,' 玉郎',1444658714,3,'@liupeike 女的',0,0),(1345,76,' liupeike',1449563539,4,'玉狼',0,0),(1346,69,' ChinSQ',1453356722,3,'富婆呀',0,0),(1347,56,' liupeike',1443862952,1,'呃',0,0),(1348,9,' 配对指挥员（临时工王傻根）',1455110668,4,'多赚点',0,0),(1349,30,' 玉郎',1451367054,2,'我是没钱啊',0,0),(1350,104,' Dc',1453633051,3,'.......',0,0),(1351,44,' 配对指挥员（临时工王傻根）',1452838343,4,'养几个',0,0),(1352,37,' 配对指挥员（临时工王傻根）',1457496371,4,'我报个名',0,0),(1353,88,' 玉郎',1444699320,2,'我愿意去拼一把',0,0),(1354,88,' liupeike',1441253128,2,'呃',0,0),(1355,22,' 玉郎',1451992484,3,'没那种耐心',0,0),(1356,32,' ChinSQ',1444795823,1,'这想法好',0,0),(1357,9,' 配对指挥员（临时工王傻根）',1454940336,3,'你还真想啊',0,0),(1358,96,' 玉郎',1448076956,1,'我喜欢做销售的',0,0),(1359,32,' liupeike',1453745375,1,'养我这个小白脸吧',0,0),(1360,49,' 勇哥',1453189027,2,'求包养',0,0),(1361,16,' Dc',1446990101,4,'....',0,0),(1362,57,' 配对指挥员（临时工王傻根）',1445484534,1,'去做人事啊',0,0),(1363,64,' 玉郎',1444597015,1,'人事。。。。。',0,0),(1364,90,' 玉郎',1441095980,4,'噗！',0,0),(1365,72,' liupeike',1446228617,3,'我每天陪你一起玩',0,0),(1366,51,' Dc',1448055863,3,'~~~~~',0,0),(1367,58,' Dc',1454247406,4,'我以前也呆不住~',0,0),(1368,5,' liupeike',1444696683,2,'加你的QQ',0,0),(1369,91,' liupeike',1452115882,2,'我们聊聊',0,0),(1370,3,' Dc',1444450941,4,'卖场呆习惯了~',0,0),(1371,3,' Dc',1451916547,4,'也长胖了 ',0,0),(1372,3,' liupeike',1456971137,1,'你有男朋友了？',0,0),(1373,37,' liupeike',1455471898,1,'晕',0,0),(1374,98,' 玉郎',1449249769,2,'有了，哈哈',0,0),(1375,45,' wen',1450024437,2,'真的好速度',0,0),(1376,35,' 玉郎',1444979339,1,' ',0,0),(1377,30,' 玉郎',1455756664,1,'介意',0,0),(1378,55,' ✎ℳ㎕子凌﹏✍',1451112347,2,'说到HR',0,0),(1379,70,' ✎ℳ㎕子凌﹏✍',1452351078,1,'我推掉了',0,0),(1380,1,' 清风',1453541293,1,'还38呢，',0,0),(1381,34,' 清风',1443790179,3,'都39了',0,0),(1382,58,' 玉郎',1447338675,4,' ',0,0),(1383,18,' ✎ℳ㎕子凌﹏✍',1454036469,4,'刚才卡壳了',0,0),(1384,60,' 勇哥',1449716996,3,'丢',0,0),(1385,64,' ✎ℳ㎕子凌﹏✍',1453592445,4,'我也一样',0,0),(1386,32,' 玉郎',1443868753,2,'明天早上快点才行',0,0),(1387,84,' 勇哥',1441580608,4,'睡毛线',0,0),(1388,8,' ✎ℳ㎕子凌﹏✍',1443766448,1,'玉郎，你哪里人？',0,0),(1389,87,' 勇哥',1441423460,2,'年轻人起来嗨',0,0),(1390,58,' 玉郎',1455282582,1,'广州从化的啊',0,0),(1391,3,' ✎ℳ㎕子凌﹏✍',1444683499,3,'我去',0,0),(1392,4,' 勇哥',1454589652,1,'说两句白话来听',0,0),(1393,15,' ✎ℳ㎕子凌﹏✍',1441303226,1,'一个省份',0,0),(1394,63,' liupeike',1452960160,2,'玉狼，要不要玩玩',0,0),(1395,72,' 清风',1449845140,3,'睡觉了，女汉子',0,0),(1396,50,' 玉郎',1440606604,3,'我朋友在睡，不说',0,0),(1397,18,' 勇哥',1444051741,4,'你男朋友在睡',0,0),(1398,23,' 玉郎',1451481488,2,'女的妹纸',0,0),(1399,26,' liupeike',1452205531,1,'玉狼，玩过一夜？',0,0),(1400,99,' 玉郎',1455277308,1,'功力不够，我潜水',0,0),(1401,9,' 玉郎',1449129007,3,'晚安',0,0),(1402,70,' liupeike',1456786566,3,'等等',0,0),(1403,59,' liupeike',1455544672,3,'学到了吹水',0,0),(1404,49,' 勇哥',1457021762,2,'只知道DOm',0,0),(1405,57,' ✎ℳ㎕子凌﹏✍',1447355023,4,'心碎...',0,0),(1406,80,' 玉郎',1448895394,1,'女的',0,0),(1407,9,' 玉郎',1455002562,2,'等5min',0,0),(1408,60,' wen',1447459964,4,'叫他出来一起聊',0,0),(1409,74,' ✎ℳ㎕子凌﹏✍',1455469789,3,'@玉郎 你在解释',0,0),(1410,80,' 勇哥',1451027972,2,'3p',0,0),(1411,71,' ✎ℳ㎕子凌﹏✍',1454359203,4,'哎...睡觉',0,0),(1412,32,' 勇哥',1454131918,4,'洗澡',0,0),(1413,24,' 生锈的18cm',1447013304,4,'@梧桐初恋 ',0,0),(1414,49,' 梧桐初恋',1443204300,2,'少来污蔑我',0,0),(1415,82,' 生锈的18cm',1448754593,3,'有图有真相',0,0),(1416,18,' 如此的如此。不過如此',1444097620,2,'哇去',0,0),(1417,28,' 如此的如此。不過如此',1456005570,1,'还不睡觉？',0,0),(1418,15,' 如此的如此。不過如此',1448644378,3,'你们',0,0),(1419,31,' 玉郎',1441968733,4,'洗完澡了',0,0),(1420,23,' 玉郎',1444897073,3,'你们打算睡觉呢啊',0,0),(1421,49,' 玉郎',1455986586,1,'好困啊',0,0),(1422,59,' ✎ℳ㎕子凌﹏✍',1447368206,2,'狼妹还不睡',0,0),(1423,64,' 玉郎',1446421624,2,'喜欢睡前翻滚一下',0,0),(1424,101,' 玉郎',1440870276,1,'我最嗨？有吗？',0,0),(1425,1,' 玉郎',1446416351,2,'抱着你家女票吧',0,0),(1426,4,' ✎ℳ㎕子凌﹏✍',1445315784,1,'@玉郎 真怕是男的',0,0),(1427,8,' 玉郎',1455729844,2,'说得好像抱过一样',70,0),(1428,59,' 37℃男人',1441556953,2,'@玉郎 是滴',470,0),(1429,16,' 城仔',1441997812,1,'！',1131,0),(1430,68,' 城仔',1457592423,2,'你特么搞基？',389,0),(1431,45,' 勇哥',1445680781,1,'。。。',1126,0),(1432,34,' 城仔',1441362890,4,'@生锈的18cm 基佬',378,0),(1433,71,' 勇哥',1453818751,4,'打盘游戏先',1029,0),(1434,35,' ✎ℳ㎕子凌﹏✍',1449028360,3,'心疼死我',114,0),(1435,66,' 玉郎',1453451719,2,'我凑',516,0),(1436,45,' 玉郎',1450348828,2,'别矫情',570,0),(1437,6,' 生锈的18cm',1448899688,1,'睡吧',561,0),(1438,38,' 玉郎',1449644297,1,'受不了',123,0),(1439,71,' ✎ℳ㎕子凌﹏✍',1444482656,1,'哈',840,0),(1440,91,' ✎ℳ㎕子凌﹏✍',1451234766,1,'嘿嘿',1047,0),(1441,29,' 玉郎',1444520625,1,'大家晚安吧',1028,0),(1442,76,' ✎ℳ㎕子凌﹏✍',1442160234,3,'其实我有点腼腆',417,0),(1443,60,' 玉郎',1453333594,3,'么灰',799,0),(1444,69,' ✎ℳ㎕子凌﹏✍',1444020703,4,'需要就开车过去罗',508,0),(1445,36,' 生锈的18cm',1440681562,3,'造孽啊',1129,0),(1446,46,' 梧桐初恋',1443856172,1,'充气娃娃',995,0),(1447,33,' Wesley.C',1445444531,3,'尿？',392,0),(1448,83,' sweet',1445986641,4,'早起的鸟儿有虫吃',254,0),(1449,26,' Jumbo',1454662501,3,'早起的虫儿被鸟吃',864,0),(1450,52,' 遇见你',1454732110,3,'需要的私聊我',558,0),(1451,93,' 垂钓',1455375469,1,'。。。',920,0),(1452,29,' 那嗰讓涐吢動的陌甡亽✅',1457132579,3,'踢掉踢掉',284,0),(1453,1,' 貌貌',1451903438,2,'举报他',234,0),(1454,93,' 貌貌',1457508048,2,'传销',405,0),(1455,33,' 垂钓',1448566407,2,'嗯 外加卖淫',1082,0),(1456,11,' 小风',1442898516,3,'楼上去买六合彩吧',598,0),(1457,62,' 老司机',1449684375,3,'世界第八大奇迹',538,0),(1458,67,' 玉郎',1452183985,2,'皂',537,0),(1459,61,' 玉郎',1442297344,1,'宝宝困=_=',878,0),(1460,28,' 全体成员',1455124454,4,'群主V587',1196,0),(1461,4,' VPS推荐网(www.vps520.com)',1448005313,2,'大家早',476,0),(1462,76,' 玉郎',1456039923,1,'妹纸走路就行',952,0),(1463,72,' 纸袋',1453848282,3,'额',308,0),(1464,81,' 37℃男人',1441970390,1,'大爷的下雨了',779,0),(1465,33,' 纸袋',1446866250,4,'我没伞',49,0),(1466,17,' 玉郎',1451795860,1,'要挑那种高冷的',352,0),(1467,68,' 玉郎',1448659219,3,'。。~',673,0),(1468,65,' 玉郎',1455276329,2,'现在不下雨了',647,0),(1469,46,' 小黑',1446267188,4,'玉郎又在瞎逼逼',556,0),(1470,97,' 玉郎',1456731798,2,'好困啊',37,0),(1471,47,' 37℃男人',1444010156,1,'在下雨',673,0),(1472,86,' 37℃男人',1443202266,4,'你还在做梦吧，，',798,0),(1473,43,' sunshine girl',1446208125,2,'大家好',698,0),(1474,6,' 玉郎',1453567735,3,'阳光的妹纸你好',6,0),(1475,10,' 玉郎',1457181095,2,'单身吗',307,0),(1476,38,' sunshine girl',1457588204,2,'是啊',1234,0),(1477,24,' 玉郎',1446689063,3,'有男票吗？',474,0),(1478,54,' sunshine girl',1442303672,4,'单身',259,0),(1479,60,' 【司令】搜豹公司-IT宇宙',1453612032,1,'',875,0),(1480,27,' 　　　　　　　　　php_老辉喵 　　　　　',1446594141,4,'节日快乐',655,0),(1481,92,' 狗爷',1447710000,2,'1111',1184,0),(1482,34,' PHP_新手_浦东',1457499610,2,'...哎呀我去',797,0),(1483,94,' Assassin.Qin',1450582969,2,'天天来',1077,0),(1484,50,' Erik-chen',1444780078,3,'我也要我也要',360,0),(1485,40,' PHP_上海3年_猴精',1449270938,4,'1',229,0),(1486,49,' 孤独',1447315547,4,'福利呀',319,0),(1487,9,' HR_猎头_Leo',1448093906,2,'。',914,0),(1488,6,' 台风',1452146016,2,'感谢群主',349,0),(1489,76,' 连少蕊',1451371875,4,'我们过37',208,0),(1490,100,' Assassin.Qin',1446311484,2,'我只看妹子',125,0),(1491,11,' 小康',1446144844,4,'群主是个好人',385,0),(1492,100,' php_laravel',1451411954,2,'群主好人',623,0),(1493,95,' 孤独',1454012813,2,'真相还是 真相',1121,0),(1494,83,' 台风',1454487422,1,'这次是男银哈',216,0),(1495,99,' 猎头-Erik',1444735781,1,'群主我也要相亲',791,0),(1496,24,' Assassin.Qin',1442577891,2,'反正我只看女人',1180,0),(1497,99,' Schneider',1457193751,3,'切',369,0),(1498,102,' 白菜',1454563360,4,'在哪里',591,0),(1499,69,' php_ad',1443866719,4,'谁允许你@我的',831,0),(1500,86,' php_企鹅',1442923828,2,'毕竟妇女节啊',723,0),(1501,86,' 丟鋽',1443634687,2,'祝大家节日快乐',551,0),(1502,53,' php_木',1446539297,3,'这真成相亲群了啊',1251,0),(1503,22,' 猎头-Erik',1443537656,1,'能能',505,0),(1504,81,' 猎头-Erik',1452449766,2,'z',550,0),(1505,57,' 0',1447895625,4,'男的可以么',368,0),(1506,40,' 猎头-Erik',1447695235,3,'只要是妹子都能',895,0),(1507,63,' php_制片人',1443748594,1,'zzz',1114,0),(1508,7,' php_槑鸟',1453875704,4,'真666，群主',661,0),(1509,12,' 猎头-Erik',1452696563,4,'来来来~~',1119,0),(1510,61,' 老鼠会怕喵？',1440751172,3,'0.',823,0),(1511,87,' 老鼠会怕喵？',1444499531,3,'大神们',57,0),(1512,73,' 穹之扉',1447201641,1,'要看脸',1056,0),(1513,54,' 老鼠会怕喵？',1440757500,2,'我擦',204,0),(1514,16,' php_ad',1442987109,4,'hr是靠卖人',1035,0),(1515,95,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(1516,71,' 一顾倾城醉红颜',1449707578,3,'不知道耶',436,0),(1517,80,' php_ad',1446638438,2,'看工资的',224,0),(1518,5,' php_槑鸟',1454403047,1,'我们是相亲',232,0),(1519,87,' 猎头-Erik',1447621406,2,'工资还不高',746,0),(1520,1,' php_乖乖宝宝',1444113516,1,'不相亲',100,0),(1521,90,' 猎头-Erik',1453059376,1,'老板还经常骂我',1178,0),(1522,30,' php_制片人',1440438984,2,'打他',1014,0),(1523,63,' php_槑鸟',1449992344,3,'这不是php的群么',1193,0),(1524,69,' php_乖乖宝宝',1447699453,3,'是的',49,0),(1525,84,' php_制片人',1442740312,3,'错',466,0),(1526,91,' 咱继续、任性',1452934922,4,'别介意',780,0),(1527,23,' php_乖乖宝宝',1452903282,3,'擦，竟然看完了',1273,0),(1528,70,' php_JF',1443185391,2,'我就不加班',282,0),(1529,61,' php_JF',1450241250,2,'卧槽 还可以出国',689,0),(1530,84,' 猎头_Angela',1457330860,2,'考虑一下么 ',830,0),(1531,70,' php-诺言',1456354219,1,'又有人上新闻了',988,0),(1532,4,' php_制片人',1447851328,2,'确定了',799,0),(1533,23,' php_JF',1441002187,1,'',546,0),(1534,9,' 猎头-Erik',1453626797,4,'互联网行业资深HR',1164,0),(1535,101,' 猎头-Erik',1443065156,1,'或者是猎头',338,0),(1536,75,'1 php_JF',1444417266,1,'回来就不见了、',301,0),(1537,71,'0 php_laravel',1449583125,1,'求收留啊',38,0),(1538,73,'9 php-王',1441822734,3,'求收留',483,0),(1539,12,'9 管理员php-林子夕',1447596094,4,'这真的变相亲群了',621,0),(1540,79,'9 管理员php-林子夕',1450163203,1,'当畜生使吗',87,0),(1541,1,'3 php_Judy',1441424062,4,'ios 只做一丢丢',464,0),(1542,69,'1 （前方）',1456478673,2,'哪个犯贱 就去吧',86,0),(1543,11,'4 php_Judy',1452667032,1,'薪资可以谈的 ',540,0),(1544,16,'3 php_Judy',1447809141,2,'真的 哈哈',157,0),(1545,17,'9 搜豹公司-IT宇宙',1451085000,1,'有啥办法',524,0),(1546,101,'0 PHP - loong',1445754609,2,'',1274,0),(1547,96,'8 PHP - loong',1440997969,4,'',92,0),(1548,91,'5 Dayday and up',1454635079,2,'求个PHP 实习机会 ~',512,0),(1549,17,'1 php_焰王',1444005937,1,'传说',219,0),(1550,65,'7 猕猴桃',1444210547,2,'有',146,0),(1551,63,'2 猕猴桃',1447148906,2,'我们招',579,0),(1552,98,'2 Dayday and up',1453361016,3,'公司在哪里 ？',1151,0),(1553,1,'3 1年经验上海求职',1454746876,3,'分开存',848,0),(1554,64,'0 1年经验上海求职',1451846485,2,'一万条放一个文件',603,0),(1555,13,'5 上海-浦东-哥哥',1453839844,2,'有招web前端的么',700,0),(1556,38,'2 咱继续、任性',1443986953,1,'有v',775,0),(1557,72,'5 咱继续、任性',1448747813,3,'我要',1111,0),(1558,99,'4 jeck',1451382422,3,'有的',43,0),(1559,50,'3 第一滴血',1443790781,1,'非要搞成相亲群',456,0),(1560,13,'2 PHP - loong',1443792891,3,'',683,0),(1561,24,'4 第一滴血',1443288750,2,'我也没对象',1009,0),(1562,66,'0 PHP - loong',1442818359,4,'',1068,0),(1563,71,'6 PHP - loong',1451561719,2,'',1146,0),(1564,24,'6 PHP - loong',1452778829,1,'',875,0),(1565,63,'4 Amy',1455649688,3,'先跳槽再相亲。',541,0),(1566,68,'9 花 开 春 夏',1443434297,1,'',1078,0),(1567,76,'8 hr-恰',1442592656,1,'php群在相亲 ',170,0),(1568,70,'6 php-新人',1453664766,4,'...',52,0),(1569,85,'1 php_焰王',1451270625,2,'...',1008,0),(1570,3,'8 上海-有PHP项目',1453230235,3,'。。。ui',72,0),(1571,65,'1 php-新人',1451443594,3,'还好还好',129,0),(1572,48,'1 难离难舍。',1446450703,3,'哪里出问题了。',813,0),(1573,92,'2 难离难舍。',1447431563,4,'进不去数据库。',1109,0),(1574,77,'0 php-孑卝',1454926172,1,'phpstudy好用不',650,0),(1575,38,'0 刘煊颖-上海泽尚网络科技',1443554531,3,'福利 给妹子。',1022,0),(1576,62,'7 刘煊颖-上海泽尚网络科技',1448416641,2,'有兴趣的 小窗。',558,0),(1577,83,'8 刘煊颖-上海泽尚网络科技',1444132500,1,'妹子都单身。',844,0),(1578,83,'4 刘煊颖-上海泽尚网络科技',1448522110,4,'你太没追求。',213,0),(1579,98,'9 猎头',1453485469,1,'节日快乐',249,0),(1580,9,'2 php_对白',1442282578,2,'说薪资才是重点',588,0),(1581,57,'9 刘煊颖-上海泽尚网络科技',1441373437,3,'敢开就敢给。',214,0),(1582,21,'8 Dayday and up',1451298047,3,'初级PHP 要吗 ？',60,0),(1583,38,'9 php_对白',1446676406,2,'对，我没那能力',411,0),(1584,93,'6 猎头-Erik',1445328516,2,'有的私聊我~~',902,0),(1585,15,'5 無 姳<19743159@163.com>',1456434376,4,'但做的还是不错的',518,0),(1586,97,'8 难离难舍。',1445973984,2,'有没有老司机',191,0),(1587,66,'0 刘煊颖-上海泽尚网络科技',1457687345,1,'就维护这个。修BUG',208,0),(1588,7,'6 無 姳<19743159@163.com>',1457554454,3,'环境安装了否？',201,0),(1589,60,'0 难离难舍。',1454755313,4,'安装了',456,0),(1590,3,'1 無 姳<19743159@163.com>',1449829922,2,'发远程',607,0),(1591,77,'7 霸气⑩足',1451958282,3,'....',938,0),(1592,60,'0 hr-恰',1444400391,4,'。。。',1084,0),(1593,90,'4 shayne-谢',1453616251,1,'这啥情况',29,0),(1594,48,'5 上海CTO-Elena',1445585859,2,'是PHP吗',7,0),(1595,72,'2 上海CTO-Elena',1446769219,3,'几年经验',3,0),(1596,45,'4 小不点',1440426328,1,'PHP也会',951,0),(1597,103,'2 上海CTO-Elena',1453017188,1,'急聘',536,0),(1598,25,'9 小不点',1450521797,3,'2年多',992,0),(1599,52,'1 php-3年-仰望',1442120156,1,'走不开啊！',3,0),(1600,65,'1 php-3年-仰望',1445632266,2,'没去过大城市',1103,0),(1601,100,'7 猎头-Erik',1452958126,4,'。。。。',678,0),(1602,37,'3 猎头-Erik',1447357735,3,'群主大大你屌爆了',961,0),(1603,15,'2 猎头-Erik',1455291094,2,'猴赛雷啊',936,0),(1604,17,'1 PHP_ran',1442738203,1,'一二百',239,0),(1605,80,'8 PHP_ran',1453439063,1,'单身码农这么多吗',454,0),(1606,84,'9 猎头-Erik',1453373672,1,'太吓人了',1214,0),(1607,65,'9 猎头-Erik',1451722032,1,'我是单身猎头···',204,0),(1608,6,'1 猎头-Erik',1449024141,3,'大家都是苦逼啊',960,0),(1609,45,'9 PHP_ran',1454460001,4,'猎头还单身',1164,0),(1610,64,'4 PHP_ran',1451289610,2,'太失职了啊。。',451,0),(1611,99,'9 ギ我的世界ㄨ總是空空的ㄉ',1448692969,2,'ps啊',407,0),(1612,29,'6 梧桐',1447210078,2,'UI 有啊',664,0),(1613,97,'7 梧桐',1456020938,2,'PHP 也有',209,0),(1614,80,'8 ギ我的世界ㄨ總是空空的ㄉ',1441105547,4,'因为现在女少男多',1273,0),(1615,14,'5 ギ我的世界ㄨ總是空空的ㄉ',1446203906,2,'物以稀为贵',244,0),(1616,88,'9 猎头-Erik',1454576016,1,'哎···',654,0),(1617,29,'1 ギ我的世界ㄨ總是空空的ㄉ',1440841875,2,'肤浅',188,0),(1618,28,'8 aaa-菜鸡程序猿',1457381485,3,'像我一样有内涵',1080,0),(1619,15,'2 aaa-菜鸡程序猿',1444254844,4,'就会有妹子喜欢',1015,0),(1620,79,'6 aaa-菜鸡程序猿',1453841954,4,'长相什么的',927,0),(1621,49,'3 ギ我的世界ㄨ總是空空的ㄉ',1443482812,4,'我也很有内涵',1101,0),(1622,11,'4 菜鸡程序猿',1448277422,1,'我女票也是程序员',1171,0),(1623,1,'8 猎头-Erik',1442845781,1,'你们这些有女票的',121,0),(1624,3,'2 猎头-Erik',1445007891,4,'都奏凯',185,0),(1625,52,'6 猎头-Erik',1446663750,1,'不爱搭理你们',349,0),(1626,30,'3 猎头-Erik',1448353360,4,'找工作？',246,0),(1627,74,'6 猎头-Erik',1441976719,3,'简历甩我看看',161,0),(1628,65,'6 菜鸡程序猿',1445353828,1,'猎头我肯定没机会',1028,0),(1629,39,'7 猎头-Erik',1450384688,4,'。。。。',531,0),(1630,84,'5 菜鸡程序猿',1457609298,4,'培训出来的',905,0),(1631,27,'8 菜鸡程序猿',1441647656,1,'噗',1135,0),(1632,60,'5 老黄牛_m0o',1454879766,1,'3000',854,0),(1633,11,'5 ギ我的世界ㄨ總是空空的ㄉ',1454645626,1,'2200',348,0),(1634,70,'6 PHP_ran',1441485234,4,'5000',549,0),(1635,67,'3 PHP_ran',1441858594,4,'对啊',444,0),(1636,90,'8 老黄牛_m0o',1456305704,2,'三线',965,0),(1637,69,'6 老黄牛_m0o',1442166562,1,'3000',1098,0),(1638,92,'5 猎头-Erik',1451821172,4,'你算算',477,0),(1639,92,'4 菜鸡程序猿',1442609531,3,'一个月3000能干啥',687,0),(1640,52,'8 猎头-Erik',1449631641,4,'3000能生活',61,0),(1641,8,'5 猎头-Erik',1447507500,3,'就是没品质',184,0),(1642,46,'0 猎头-Erik',1454057110,4,'30000能生活',690,0),(1643,100,'4 猎头-Erik',1443900469,3,'有品质点',564,0),(1644,50,'2 PHP-1年多，求坑',1452137579,1,'对头',741,0),(1645,34,'4 哥有志气身怀绝技',1453388438,4,'月薪3000自家游',203,0),(1646,36,'4 菜鸡程序猿',1448193047,1,'大保健太贵了',1187,0),(1647,92,'2 菜鸡程序猿',1445731406,2,'有那么严重吗',76,0),(1648,83,'0 PHP_ran',1446543516,4,'有啊',405,0),(1649,43,'7 ∫四季ん天空∫',1442529375,3,'我人高大啊',1157,0),(1650,61,'1 PHP_ran',1451508985,3,'而且要提前一站',669,0),(1651,68,'1 PHPer',1448102344,3,'兄弟们怎么看',522,0),(1652,48,'0 菜鸡程序猿',1450129453,2,'培训机构吗',353,0),(1653,37,'4 PHPer',1449490313,4,'这你都知道',446,0),(1654,19,'3 PHP 应届生',1446724922,4,'PHP求职',434,0),(1655,28,'5 菜鸡程序猿',1451013282,2,'我就是培训机构的',603,0),(1656,49,'6 PHPer',1445615391,1,'',586,0),(1657,15,'7 菜鸡程序猿',1456991251,4,'呸',669,0),(1658,11,'9 PHPer',1451120860,3,'他说PHP不好找工作',484,0),(1659,75,'4 PHPer',1454464219,4,'我感觉被他说中了',318,0),(1660,86,'5 猎头-Erik',1450281328,4,'ios也不好找',1104,0),(1661,79,'0 猎头-Erik',1447752188,2,'安卓也不好找',526,0),(1662,40,'3 猎头-Erik',1447416797,1,'Java会好一点',819,0),(1663,3,'9 phper 应届生',1441175156,1,'这就有点扯了',967,0),(1664,54,'6 菜鸡程序猿',1446847266,4,'做的时间长了',605,0),(1665,25,'2 菜鸡程序猿',1456333126,3,'三年经验一甩',17,0),(1666,1,'7 PHPer',1452892735,4,'',138,0),(1667,17,'8 PHPer',1445706094,3,'说的还有点小激动',1251,0),(1668,59,'3 菜鸡程序猿',1452593204,4,'然而现实是',391,0),(1669,57,'4 PHP_ran',1448174063,2,'那你去学java吧',443,0),(1670,100,'1 PHPer',1450268672,3,'跟我一样啊',1041,0),(1671,16,'7 PHPer',1450777032,4,'我就三个月',1169,0),(1672,98,'2 菜鸡程序猿',1450239141,4,'太远了',462,0),(1673,73,'8 菜鸡程序猿',1440555000,3,'地铁过去俩小时',504,0),(1674,28,'0 菜鸡程序猿',1456824610,3,'早上六点起',929,0),(1675,101,'5 菜鸡程序猿',1456387969,4,'到公司八点五十',722,0),(1676,70,'4 PHPer',1457065079,1,'我当时就蒙了',817,0),(1677,73,'7 PHPer',1450755938,2,'',198,0),(1678,95,'4 PHP_ran',1455280548,3,'，，',1101,0),(1679,68,'9 PHPer',1445258906,2,'难啊',1209,0),(1680,77,'3 PHPer',1455791016,2,'学不会',156,0),(1681,58,'2 手留余香',1444216875,4,'去java群吧',827,0),(1682,94,'0 PHP_ran',1445636484,3,'去吧去吧',257,0),(1683,18,'5 菜鸡程序猿',1451949844,2,'没事自学java转型',30,0),(1684,17,'1 菜鸡程序猿',1446416953,4,'报个班什么的',1080,0),(1685,25,'1 php_can',1455497813,1,'这个公司小多了',1091,0),(1686,26,'7 菜鸡程序猿',1445172422,4,'我都找了两周了',998,0),(1687,55,'0 PHPer',1441900781,4,'公交车都做吐了',1085,0),(1688,96,'4 手留余香',1446222891,2,'不全是php',988,0),(1689,80,'6 php_can',1450038750,4,'nice',989,0),(1690,96,'4 小不点',1453888360,1,'我就是做Java的',723,0),(1691,76,'2 春雨竹',1449671719,1,'baidu也用PHP',475,0),(1692,3,'6 春雨竹',1455208829,4,'腾讯也用',1180,0),(1693,16,'7 奇客',1445119688,1,'@小不点 是嘛？',521,0),(1694,99,'9 菜鸡程序猿',1454504297,2,'就要3000',733,0),(1695,81,'2 奇客',1440702656,1,'为啥转java？',800,0),(1696,49,'4 php_can',1456094766,3,'没有最好的语言',357,0),(1697,39,'8 php_can',1440740625,4,'之后最适合的',987,0),(1698,34,'5 php_can',1447020235,4,'只有最适合的',1027,0),(1699,70,'9 小不点',1449553594,2,'PHP做NB了一样的',759,0),(1700,28,'8 php_bug',1448880703,2,'问个tp问题来',1118,0),(1701,45,'0 php_bug',1454181563,2,'这样了 ',1088,0),(1702,4,'2 小不点',1448716172,2,'哈哈',305,0),(1703,43,'9 php_bug',1441664531,2,'有人经历过吗？',352,0),(1704,41,'0 小不点',1450846641,1,'乱码了',863,0),(1705,36,'2 php_can',1450882500,2,'脔割冒险啊',824,0),(1706,10,'8 php_can',1442312109,1,'脔割冒险啊',1167,0),(1707,102,'0 php_bug',1451595469,1,'我还不能开了？',879,0),(1708,91,'0 php_can',1444712578,1,'少了一个<',893,0),(1709,10,'6 php_can',1448123438,1,'这个吧',193,0),(1710,51,'2 php_can',1445088047,4,'看log',1014,0),(1711,43,'1 PHP_ran',1444786406,2,'就是少了个<',1041,0),(1712,72,'6 php_can',1447758516,1,'log都不看',1207,0),(1713,72,'7 php_bug',1445904375,2,'空的',497,0),(1714,25,'3 php_can',1457043985,3,'没辙啦',1146,0),(1715,70,'8 奇客',1455797344,1,'对啊',837,0),(1716,89,'1 奇客',1442704453,1,'很快的',506,0),(1717,14,'2 php_bug',1444225313,1,'·看看',436,0),(1718,34,'2 php_bug',1443619922,3,'这是什么工具',262,0),(1719,82,'5 php_bug',1450068282,2,'我没用过呀',268,0),(1720,39,'1 PHP_ran',1446830391,2,'用sublime text也可以',89,0),(1721,43,'0 php_bug',1443086250,3,'只有vim',9,0),(1722,78,'2 php_can',1456655860,3,'。。',962,0),(1723,77,'5 奇客',1444879219,2,'装sublime吧',633,0),(1724,24,'0 奇客',1442856328,4,'linux上有',1256,0),(1725,56,'0 php_bug',1442487187,3,'直接域名？',516,0),(1726,55,'2 php_bug',1444311797,3,'yum',646,0),(1727,56,'9 php_bug',1457510157,1,'改个东西',632,0),(1728,44,'8 php_can',1448062266,1,'rm -rf 文件夹',108,0),(1729,53,'2 php_bug',1442428125,2,'删了没反应',657,0),(1730,67,'6 php_bug',1441147734,4,'卡这了',615,0),(1731,20,'5 php_can',1453401094,1,'我明白了',266,0),(1732,100,'1 php_can',1445168203,3,'跳出到目录页',544,0),(1733,34,'5 php_bug',1442909062,2,'什么情况',433,0),(1734,12,'1 php_can',1447163672,1,'chmod -R 777 文件夹',869,0),(1735,70,'2 php_bug',1449832032,4,'改过了啊',834,0),(1736,88,'2 php_can',1451454141,2,'是不是没有权限啊',1264,0),(1737,101,'4 【军长】php_bug',1443930000,2,'权限都有',1144,0),(1738,95,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(1739,1,'3 php_can',1446802969,2,'然后就出错了',1037,0),(1740,8,'5 php_can',1449640078,4,'。。。',969,0),(1741,50,'8 php_bug',1445490938,3,'开了debug直接崩了',188,0),(1742,7,'0 php_bug',1452175547,1,'video？',928,0),(1743,18,'1 php_bug',1444313906,2,'config上啊',873,0),(1744,67,'4 php_can',1457006016,4,'这是我的',958,0),(1745,86,'0 php_can',1447591875,3,'quanxian',167,0),(1746,58,'3 php_can',1451171485,3,'权限',735,0),(1747,20,'2 php_bug',1442364844,4,'直接给了最高权限',345,0),(1748,58,'8 php_对白',1456271954,3,'不好',1232,0),(1749,104,'0 php-4年-求坑',1450232813,2,'好找',1081,0),(1750,42,'2 php-4年-求坑',1442067422,2,'个死',825,0),(1751,6,'5 Dayday and up',1440955781,4,'两种答案？',750,0),(1752,85,'5 php_bug',1447437891,3,'就培训php，四个月',490,0),(1753,6,'5 php_can',1453413751,2,'厉害',328,0),(1754,60,'8 缘',1442143359,1,'快速入门就培训',1200,0),(1755,78,'8 php_bug',1457366720,3,'你信了',790,0),(1756,44,'0 缘',1447783828,3,'1万多不是白交的',32,0),(1757,96,'9 php_ad',1457134688,2,'你也信？',511,0),(1758,11,'9 php-4年-求坑',1451399297,4,'你也信？',560,0),(1759,32,'0 php_bug',1457037657,4,'你们居然信了',465,0),(1760,39,'3 缘',1457309766,4,'肯定日常班啊',1159,0),(1761,67,'4 php_can',1444115625,3,'怎么不信啊',327,0),(1762,101,'2 php-4年-求坑',1452555235,4,'钱是那么容易所',204,0),(1763,72,'9 php_ad',1457248595,4,'培训的不能贯通',1073,0),(1764,69,'1 php_ad',1441455703,1,'太急太赶',1270,0),(1765,22,'8 php_bug',1448916563,3,'两年8k',1078,0),(1766,20,'0 天空',1445611172,1,'不会吧',132,0),(1767,97,'0 php_bug',1440719531,2,'什么鬼',16,0),(1768,31,'1 php_ad',1452061641,2,'需要时间融会贯通',365,0),(1769,64,'5 天空',1454257501,1,'2年不到8000',163,0),(1770,77,'7 php_bug',1447847110,1,'我真10k+',345,0),(1771,104,'8 php-js-上海',1442010469,3,'@缘 ',1194,0),(1772,29,'0 php_bug',1454567579,4,'真培训4个月 ',1045,0),(1773,90,'5 php-js-上海',1442858437,2,'哪个培训机构》？',183,0),(1774,67,'8 php_bug',1441983047,2,'学费14800',842,0),(1775,97,'4 php_bug',1443841406,1,'郑州云和',706,0),(1776,62,'8 9',1448973516,2,'你哪个培训机构',709,0),(1777,100,'1 php_ad',1449279375,1,'公司土豪',1137,0),(1778,92,'6 php_bug',1445298984,3,'老师跟我关系可好',323,0),(1779,73,'0 php_ad',1446212344,3,'有基础说个几把',1152,0),(1780,27,'2 花 开 春 夏',1452559454,1,'还得看长相',658,0),(1781,93,'8 天空',1456240313,2,'就是要吹逼',426,0),(1782,49,'1 花 开 春 夏',1440514922,1,'嗯还得会吹',89,0),(1783,33,'0 php_bug',1449123282,2,'正解',1233,0),(1784,28,'8 zero',1448045391,4,'我教你PHP',891,0),(1785,71,'8 php_bug',1446461250,2,'会吹很重要',648,0),(1786,42,'2 缘',1444910859,3,'@php_bug 待遇说下啊',139,0),(1787,80,'3 zero',1452574219,4,'收个几把',948,0),(1788,65,'9 zero',1452711329,3,'你这种人我见多了',108,0),(1789,33,'4 php_bug',1454502188,4,'我对你很失望',506,0),(1790,70,'3 菜鸡程序猿',1441206797,2,'亲戚们对你很失望',474,0),(1791,7,'3 php_bug',1456565157,4,'太牲口了',297,0),(1792,33,'7 php_bug',1449277266,3,'不过',910,0),(1793,81,'2 zero',1445803125,4,'你敢说你说了算吗',1297,0),(1794,31,'1 php_对白',1446682735,4,'新人真的没法混',1093,0),(1795,22,'4 菜鸡程序猿',1443816094,3,'像我们这种萌新',581,0),(1796,38,'8 zero',1455023204,3,'看样子要出绝招了',696,0),(1797,10,'4 zero',1454924063,3,'小企鹅上',423,0),(1798,27,'2 php_bug',1444058672,4,'我的问题咋办',696,0),(1799,21,'0 老黄牛_m0o',1448887032,4,'...',499,0),(1800,77,'5 老黄牛_m0o',1452669141,3,'好有内涵',767,0),(1801,27,'9 php_bug',1447305000,1,'debug开了之后乱码',483,0),(1802,59,'8 奇客',1450614610,3,'……',583,0),(1803,3,'4 奇客',1454497969,4,'还没解决啊你',51,0),(1804,49,'3 php_bug',1442215078,4,'不然呢',1121,0),(1805,27,'9 php_bug',1457505938,4,'我就干其他的去了',178,0),(1806,23,'4 花 开 春 夏',1449070547,3,'你想表达什么?_?',756,0),(1807,72,'6 php_对白',1443368906,1,'@hr-恰 你要我么？',538,0),(1808,57,'3 菜鸡程序猿',1440941015,1,'卧槽(#ﾟДﾟ)',461,0),(1809,11,'6 花 开 春 夏',1450966875,2,'一看就知道是假的',807,0),(1810,22,'9 php_bug',1456706485,4,'ls',1212,0),(1811,23,'6 php_bug',1450059844,2,'帮我看看为何',660,0),(1812,99,'2 十一',1448846953,2,'有在中软干过的吗',84,0),(1813,82,'2 jeck',1444967813,3,'乱码了',1071,0),(1814,57,'6 php_bug',1456242423,4,'懵逼了',653,0),(1815,60,'9 php_bug',1457290782,4,'是啊 ',415,0),(1816,75,'2 jeck',1448652891,4,'可以发3块钱',1292,0),(1817,34,'7 奇客',1456788751,1,'fuck bug',968,0),(1818,24,'3 php-充电',1447678360,1,'fuck bug',378,0),(1819,81,'3 小二哥',1447781719,1,'fuck bug',1105,0),(1820,85,'4 口弦',1457638829,3,'fuck bug',185,0),(1821,72,'4 路上',1451869688,2,'fuck bug',500,0),(1822,27,'6 上海-hr-雪糕',1448294297,3,'fuck bug',387,0),(1823,86,'8 问路',1456092657,4,'fuck bug',129,0),(1824,28,'8 php-充电',1441244765,1,'[谢谢老板]',661,0),(1825,95,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(1826,64,'6 jeck',1440810234,1,'没抢到',681,0),(1827,75,'2 php_bug',1447663594,2,'一毛都米有了',88,0),(1828,7,'6 jeck',1451310704,4,'充电上',122,0),(1829,102,'0 　　　　　　　　　php_老辉喵 　　　　　',1443651562,4,'谁抢的。谁解决。',1068,0),(1830,35,'6 　　　　　　　　　php_老辉喵 　　　　　',1442506172,3,'哈哈哈哈',1260,0),(1831,47,'1 jeck',1457054532,2,'私包给他',981,0),(1832,20,'7 奇客',1453276641,4,'fuck bug',1168,0),(1833,92,'1 php-0.0',1457632501,4,'哈哈，',803,0),(1834,41,'7 php-0.0',1453382110,1,'今天风好大呀',822,0),(1835,4,'4 懒散の青年',1449705469,4,'我擦 又相亲',209,0),(1836,70,'1 【营长】php-王',1447142578,3,'新手要不要',1198,0),(1837,67,'5 【营长】猕猴桃',1454873438,3,'多新？',173,0),(1838,82,'1 【营长】猕猴桃',1456158048,4,'一年有不‘',669,0),(1839,48,'8 【营长】猕猴桃',1442896406,1,'对的',371,0),(1840,51,'1 【司令】php_ls',1450188516,4,'1',212,0),(1841,25,'4 【师长】李子夜',1452654375,4,'因为你是女汉子',477,0),(1842,55,'4 【军长】php_laravel',1450833985,4,'因为你没爆照',801,0),(1843,75,'9 【军长】php_laravel',1453907344,4,'先爆个照',167,0),(1844,68,'8 【军长】php_laravel',1445134453,4,'爆了机会大啊 ',810,0),(1845,70,'2 【军长】php_laravel',1450975313,3,'快点爆吧',415,0),(1846,64,'6 【连长】猎头-Erik',1454689922,3,'萌妹子？？',1216,0),(1847,87,'8 【连长】猎头-Erik',1448178281,2,'在哪里？？',898,0),(1848,18,'1 【司令】php_制片人',1449260391,1,'爆了机会大',393,0),(1849,99,'2 【军长】php_laravel',1449836250,1,'猛妹子',1288,0),(1850,6,'2 【军长】php_laravel',1450445860,4,'爆照啊 ',617,0),(1851,82,'4 php-王',1442989219,2,'逼我是不是',1263,0),(1852,3,'8 李子夜',1445286328,2,'在抠脚呢',261,0),(1853,9,'9 据说昵称真的可以起的很长',1449237188,1,'不爆照说什么啊',495,0),(1854,86,'1 php_laravel',1455381798,4,'麻利点吧',301,0),(1855,61,'3 php_laravel',1455620157,4,'一定',1262,0),(1856,23,'3 php_laravel',1450492266,4,'我给你五毛',412,0),(1857,6,'4 php-王',1449178125,3,'我还是去投简历去',637,0),(1858,98,'3 猎头-Erik',1452217735,1,'我是猎头啊',270,0),(1859,24,'5 猎头-Erik',1451511094,1,'猎头啊',896,0),(1860,79,'3 猎头-Erik',1447598203,2,'爆照给我。',849,0),(1861,90,'5 php-王',1449659063,4,'说的有点小心动',413,0),(1862,43,'4 php-王',1440953672,2,'不过还是不敢爆',523,0),(1863,74,'5 php_laravel',1447942031,4,'那就爆吧',164,0),(1864,67,'4 据说昵称真的可以起的很长',1453884141,4,'没事',269,0),(1865,55,'2 据说昵称真的可以起的很长',1450680000,3,'什么风雨没见过',1123,0),(1866,23,'9 猎头-Erik',1456149610,4,'我胆子大',1061,0),(1867,5,'6 猎头-Erik',1444912969,1,'口味重',366,0),(1868,90,'9 猎头-Erik',1452070079,3,'什么都能接受',1274,0),(1869,3,'8 php_laravel',1452240938,1,'坐等你爆照',168,0),(1870,38,'0 php-王',1445965547,2,'咳咳咳',583,0),(1871,23,'3 php_laravel',1442423906,1,'小马扎已经来了',203,0),(1872,46,'4 php-王',1442156016,2,'吓到我了',1263,0),(1873,39,'2 php_制片人',1454341876,1,'坐等照片',147,0),(1874,89,'7 锦绣山河美如画＿',1444961484,4,'10年。。。。',389,0),(1875,25,'2 锦绣山河美如画＿',1440474844,3,'老手啊',974,0),(1876,105,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(1877,105,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(1878,105,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(1879,105,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(1880,105,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(1881,105,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(1882,105,'3 sweet',1456934648,2,'悦动',0,0),(1883,105,'8 玉郎',1450071796,1,'怎么了',0,0),(1884,105,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(1885,105,'1 三年青铜5',1442992733,1,'SB',0,0),(1886,105,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(1887,105,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(1888,105,'3 sweet',1453904633,1,'夜晚了',0,0),(1889,105,' 玉郎',1447104007,2,'对',0,0),(1890,105,' 清风',1445852620,4,'还有脖子',0,0),(1891,105,' Dc',1447985199,3,'尽量靠能力去找',0,0),(1892,105,' 孤独',1454012813,2,'真相还是 真相',1121,0),(1893,105,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(1894,105,'4 PHP_ran',1455280548,3,'，，',1101,0),(1895,105,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(1896,105,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(1907,106,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(1908,106,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(1909,106,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(1910,106,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(1911,106,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(1912,106,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(1913,106,'3 sweet',1456934648,2,'悦动',0,0),(1914,106,'8 玉郎',1450071796,1,'怎么了',0,0),(1915,106,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(1916,106,'1 三年青铜5',1442992733,1,'SB',0,0),(1917,106,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(1918,106,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(1919,106,'3 sweet',1453904633,1,'夜晚了',0,0),(1920,106,' 玉郎',1447104007,2,'对',0,0),(1921,106,' 清风',1445852620,4,'还有脖子',0,0),(1922,106,' Dc',1447985199,3,'尽量靠能力去找',0,0),(1923,106,' 孤独',1454012813,2,'真相还是 真相',1121,0),(1924,106,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(1925,106,'4 PHP_ran',1455280548,3,'，，',1101,0),(1926,106,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(1927,106,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(1938,107,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(1939,107,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(1940,107,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(1941,107,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(1942,107,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(1943,107,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(1944,107,'3 sweet',1456934648,2,'悦动',0,0),(1945,107,'8 玉郎',1450071796,1,'怎么了',0,0),(1946,107,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(1947,107,'1 三年青铜5',1442992733,1,'SB',0,0),(1948,107,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(1949,107,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(1950,107,'3 sweet',1453904633,1,'夜晚了',0,0),(1951,107,' 玉郎',1447104007,2,'对',0,0),(1952,107,' 清风',1445852620,4,'还有脖子',0,0),(1953,107,' Dc',1447985199,3,'尽量靠能力去找',0,0),(1954,107,' 孤独',1454012813,2,'真相还是 真相',1121,0),(1955,107,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(1956,107,'4 PHP_ran',1455280548,3,'，，',1101,0),(1957,107,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(1958,107,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(1969,108,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(1970,108,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(1971,108,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(1972,108,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(1973,108,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(1974,108,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(1975,108,'3 sweet',1456934648,2,'悦动',0,0),(1976,108,'8 玉郎',1450071796,1,'怎么了',0,0),(1977,108,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(1978,108,'1 三年青铜5',1442992733,1,'SB',0,0),(1979,108,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(1980,108,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(1981,108,'3 sweet',1453904633,1,'夜晚了',0,0),(1982,108,' 玉郎',1447104007,2,'对',0,0),(1983,108,' 清风',1445852620,4,'还有脖子',0,0),(1984,108,' Dc',1447985199,3,'尽量靠能力去找',0,0),(1985,108,' 孤独',1454012813,2,'真相还是 真相',1121,0),(1986,108,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(1987,108,'4 PHP_ran',1455280548,3,'，，',1101,0),(1988,108,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(1989,108,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2000,109,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2001,109,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2002,109,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2003,109,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2004,109,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2005,109,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2006,109,'3 sweet',1456934648,2,'悦动',0,0),(2007,109,'8 玉郎',1450071796,1,'怎么了',0,0),(2008,109,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2009,109,'1 三年青铜5',1442992733,1,'SB',0,0),(2010,109,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2011,109,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2012,109,'3 sweet',1453904633,1,'夜晚了',0,0),(2013,109,' 玉郎',1447104007,2,'对',0,0),(2014,109,' 清风',1445852620,4,'还有脖子',0,0),(2015,109,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2016,109,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2017,109,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2018,109,'4 PHP_ran',1455280548,3,'，，',1101,0),(2019,109,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2020,109,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2031,110,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2032,110,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2033,110,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2034,110,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2035,110,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2036,110,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2037,110,'3 sweet',1456934648,2,'悦动',0,0),(2038,110,'8 玉郎',1450071796,1,'怎么了',0,0),(2039,110,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2040,110,'1 三年青铜5',1442992733,1,'SB',0,0),(2041,110,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2042,110,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2043,110,'3 sweet',1453904633,1,'夜晚了',0,0),(2044,110,' 玉郎',1447104007,2,'对',0,0),(2045,110,' 清风',1445852620,4,'还有脖子',0,0),(2046,110,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2047,110,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2048,110,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2049,110,'4 PHP_ran',1455280548,3,'，，',1101,0),(2050,110,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2051,110,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2062,111,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2063,111,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2064,111,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2065,111,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2066,111,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2067,111,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2068,111,'3 sweet',1456934648,2,'悦动',0,0),(2069,111,'8 玉郎',1450071796,1,'怎么了',0,0),(2070,111,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2071,111,'1 三年青铜5',1442992733,1,'SB',0,0),(2072,111,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2073,111,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2074,111,'3 sweet',1453904633,1,'夜晚了',0,0),(2075,111,' 玉郎',1447104007,2,'对',0,0),(2076,111,' 清风',1445852620,4,'还有脖子',0,0),(2077,111,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2078,111,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2079,111,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2080,111,'4 PHP_ran',1455280548,3,'，，',1101,0),(2081,111,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2082,111,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2093,112,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2094,112,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2095,112,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2096,112,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2097,112,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2098,112,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2099,112,'3 sweet',1456934648,2,'悦动',0,0),(2100,112,'8 玉郎',1450071796,1,'怎么了',0,0),(2101,112,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2102,112,'1 三年青铜5',1442992733,1,'SB',0,0),(2103,112,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2104,112,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2105,112,'3 sweet',1453904633,1,'夜晚了',0,0),(2106,112,' 玉郎',1447104007,2,'对',0,0),(2107,112,' 清风',1445852620,4,'还有脖子',0,0),(2108,112,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2109,112,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2110,112,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2111,112,'4 PHP_ran',1455280548,3,'，，',1101,0),(2112,112,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2113,112,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2124,113,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2125,113,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2126,113,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2127,113,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2128,113,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2129,113,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2130,113,'3 sweet',1456934648,2,'悦动',0,0),(2131,113,'8 玉郎',1450071796,1,'怎么了',0,0),(2132,113,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2133,113,'1 三年青铜5',1442992733,1,'SB',0,0),(2134,113,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2135,113,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2136,113,'3 sweet',1453904633,1,'夜晚了',0,0),(2137,113,' 玉郎',1447104007,2,'对',0,0),(2138,113,' 清风',1445852620,4,'还有脖子',0,0),(2139,113,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2140,113,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2141,113,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2142,113,'4 PHP_ran',1455280548,3,'，，',1101,0),(2143,113,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2144,113,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2155,114,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2156,114,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2157,114,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2158,114,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2159,114,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2160,114,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2161,114,'3 sweet',1456934648,2,'悦动',0,0),(2162,114,'8 玉郎',1450071796,1,'怎么了',0,0),(2163,114,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2164,114,'1 三年青铜5',1442992733,1,'SB',0,0),(2165,114,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2166,114,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2167,114,'3 sweet',1453904633,1,'夜晚了',0,0),(2168,114,' 玉郎',1447104007,2,'对',0,0),(2169,114,' 清风',1445852620,4,'还有脖子',0,0),(2170,114,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2171,114,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2172,114,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2173,114,'4 PHP_ran',1455280548,3,'，，',1101,0),(2174,114,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2175,114,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2186,115,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2187,115,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2188,115,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2189,115,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2190,115,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2191,115,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2192,115,'3 sweet',1456934648,2,'悦动',0,0),(2193,115,'8 玉郎',1450071796,1,'怎么了',0,0),(2194,115,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2195,115,'1 三年青铜5',1442992733,1,'SB',0,0),(2196,115,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2197,115,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2198,115,'3 sweet',1453904633,1,'夜晚了',0,0),(2199,115,' 玉郎',1447104007,2,'对',0,0),(2200,115,' 清风',1445852620,4,'还有脖子',0,0),(2201,115,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2202,115,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2203,115,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2204,115,'4 PHP_ran',1455280548,3,'，，',1101,0),(2205,115,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2206,115,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2217,116,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2218,116,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2219,116,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2220,116,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2221,116,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2222,116,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2223,116,'3 sweet',1456934648,2,'悦动',0,0),(2224,116,'8 玉郎',1450071796,1,'怎么了',0,0),(2225,116,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2226,116,'1 三年青铜5',1442992733,1,'SB',0,0),(2227,116,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2228,116,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2229,116,'3 sweet',1453904633,1,'夜晚了',0,0),(2230,116,' 玉郎',1447104007,2,'对',0,0),(2231,116,' 清风',1445852620,4,'还有脖子',0,0),(2232,116,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2233,116,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2234,116,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2235,116,'4 PHP_ran',1455280548,3,'，，',1101,0),(2236,116,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2237,116,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2248,117,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2249,117,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2250,117,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2251,117,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2252,117,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2253,117,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2254,117,'3 sweet',1456934648,2,'悦动',0,0),(2255,117,'8 玉郎',1450071796,1,'怎么了',0,0),(2256,117,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2257,117,'1 三年青铜5',1442992733,1,'SB',0,0),(2258,117,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2259,117,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2260,117,'3 sweet',1453904633,1,'夜晚了',0,0),(2261,117,' 玉郎',1447104007,2,'对',0,0),(2262,117,' 清风',1445852620,4,'还有脖子',0,0),(2263,117,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2264,117,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2265,117,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2266,117,'4 PHP_ran',1455280548,3,'，，',1101,0),(2267,117,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2268,117,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2279,118,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2280,118,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2281,118,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2282,118,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2283,118,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2284,118,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2285,118,'3 sweet',1456934648,2,'悦动',0,0),(2286,118,'8 玉郎',1450071796,1,'怎么了',0,0),(2287,118,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2288,118,'1 三年青铜5',1442992733,1,'SB',0,0),(2289,118,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2290,118,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2291,118,'3 sweet',1453904633,1,'夜晚了',0,0),(2292,118,' 玉郎',1447104007,2,'对',0,0),(2293,118,' 清风',1445852620,4,'还有脖子',0,0),(2294,118,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2295,118,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2296,118,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2297,118,'4 PHP_ran',1455280548,3,'，，',1101,0),(2298,118,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2299,118,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2310,119,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2311,119,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2312,119,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2313,119,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2314,119,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2315,119,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2316,119,'3 sweet',1456934648,2,'悦动',0,0),(2317,119,'8 玉郎',1450071796,1,'怎么了',0,0),(2318,119,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2319,119,'1 三年青铜5',1442992733,1,'SB',0,0),(2320,119,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2321,119,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2322,119,'3 sweet',1453904633,1,'夜晚了',0,0),(2323,119,' 玉郎',1447104007,2,'对',0,0),(2324,119,' 清风',1445852620,4,'还有脖子',0,0),(2325,119,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2326,119,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2327,119,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2328,119,'4 PHP_ran',1455280548,3,'，，',1101,0),(2329,119,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2330,119,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2341,120,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2342,120,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2343,120,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2344,120,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2345,120,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2346,120,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2347,120,'3 sweet',1456934648,2,'悦动',0,0),(2348,120,'8 玉郎',1450071796,1,'怎么了',0,0),(2349,120,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2350,120,'1 三年青铜5',1442992733,1,'SB',0,0),(2351,120,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2352,120,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2353,120,'3 sweet',1453904633,1,'夜晚了',0,0),(2354,120,' 玉郎',1447104007,2,'对',0,0),(2355,120,' 清风',1445852620,4,'还有脖子',0,0),(2356,120,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2357,120,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2358,120,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2359,120,'4 PHP_ran',1455280548,3,'，，',1101,0),(2360,120,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2361,120,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2372,121,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2373,121,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2374,121,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2375,121,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2376,121,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2377,121,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2378,121,'3 sweet',1456934648,2,'悦动',0,0),(2379,121,'8 玉郎',1450071796,1,'怎么了',0,0),(2380,121,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2381,121,'1 三年青铜5',1442992733,1,'SB',0,0),(2382,121,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2383,121,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2384,121,'3 sweet',1453904633,1,'夜晚了',0,0),(2385,121,' 玉郎',1447104007,2,'对',0,0),(2386,121,' 清风',1445852620,4,'还有脖子',0,0),(2387,121,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2388,121,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2389,121,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2390,121,'4 PHP_ran',1455280548,3,'，，',1101,0),(2391,121,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2392,121,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2403,122,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2404,122,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2405,122,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2406,122,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2407,122,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2408,122,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2409,122,'3 sweet',1456934648,2,'悦动',0,0),(2410,122,'8 玉郎',1450071796,1,'怎么了',0,0),(2411,122,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2412,122,'1 三年青铜5',1442992733,1,'SB',0,0),(2413,122,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2414,122,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2415,122,'3 sweet',1453904633,1,'夜晚了',0,0),(2416,122,' 玉郎',1447104007,2,'对',0,0),(2417,122,' 清风',1445852620,4,'还有脖子',0,0),(2418,122,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2419,122,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2420,122,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2421,122,'4 PHP_ran',1455280548,3,'，，',1101,0),(2422,122,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2423,122,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2434,123,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2435,123,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2436,123,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2437,123,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2438,123,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2439,123,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2440,123,'3 sweet',1456934648,2,'悦动',0,0),(2441,123,'8 玉郎',1450071796,1,'怎么了',0,0),(2442,123,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2443,123,'1 三年青铜5',1442992733,1,'SB',0,0),(2444,123,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2445,123,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2446,123,'3 sweet',1453904633,1,'夜晚了',0,0),(2447,123,' 玉郎',1447104007,2,'对',0,0),(2448,123,' 清风',1445852620,4,'还有脖子',0,0),(2449,123,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2450,123,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2451,123,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2452,123,'4 PHP_ran',1455280548,3,'，，',1101,0),(2453,123,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2454,123,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2465,124,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2466,124,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2467,124,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2468,124,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2469,124,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2470,124,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2471,124,'3 sweet',1456934648,2,'悦动',0,0),(2472,124,'8 玉郎',1450071796,1,'怎么了',0,0),(2473,124,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2474,124,'1 三年青铜5',1442992733,1,'SB',0,0),(2475,124,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2476,124,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2477,124,'3 sweet',1453904633,1,'夜晚了',0,0),(2478,124,' 玉郎',1447104007,2,'对',0,0),(2479,124,' 清风',1445852620,4,'还有脖子',0,0),(2480,124,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2481,124,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2482,124,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2483,124,'4 PHP_ran',1455280548,3,'，，',1101,0),(2484,124,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2485,124,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2496,125,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2497,125,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2498,125,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2499,125,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2500,125,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2501,125,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2502,125,'3 sweet',1456934648,2,'悦动',0,0),(2503,125,'8 玉郎',1450071796,1,'怎么了',0,0),(2504,125,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2505,125,'1 三年青铜5',1442992733,1,'SB',0,0),(2506,125,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2507,125,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2508,125,'3 sweet',1453904633,1,'夜晚了',0,0),(2509,125,' 玉郎',1447104007,2,'对',0,0),(2510,125,' 清风',1445852620,4,'还有脖子',0,0),(2511,125,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2512,125,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2513,125,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2514,125,'4 PHP_ran',1455280548,3,'，，',1101,0),(2515,125,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2516,125,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2527,126,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2528,126,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2529,126,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2530,126,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2531,126,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2532,126,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2533,126,'3 sweet',1456934648,2,'悦动',0,0),(2534,126,'8 玉郎',1450071796,1,'怎么了',0,0),(2535,126,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2536,126,'1 三年青铜5',1442992733,1,'SB',0,0),(2537,126,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2538,126,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2539,126,'3 sweet',1453904633,1,'夜晚了',0,0),(2540,126,' 玉郎',1447104007,2,'对',0,0),(2541,126,' 清风',1445852620,4,'还有脖子',0,0),(2542,126,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2543,126,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2544,126,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2545,126,'4 PHP_ran',1455280548,3,'，，',1101,0),(2546,126,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2547,126,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2558,127,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2559,127,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2560,127,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2561,127,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2562,127,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2563,127,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2564,127,'3 sweet',1456934648,2,'悦动',0,0),(2565,127,'8 玉郎',1450071796,1,'怎么了',0,0),(2566,127,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2567,127,'1 三年青铜5',1442992733,1,'SB',0,0),(2568,127,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2569,127,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2570,127,'3 sweet',1453904633,1,'夜晚了',0,0),(2571,127,' 玉郎',1447104007,2,'对',0,0),(2572,127,' 清风',1445852620,4,'还有脖子',0,0),(2573,127,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2574,127,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2575,127,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2576,127,'4 PHP_ran',1455280548,3,'，，',1101,0),(2577,127,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2578,127,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2589,129,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2590,129,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2591,129,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2592,129,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2593,129,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2594,129,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2595,129,'3 sweet',1456934648,2,'悦动',0,0),(2596,129,'8 玉郎',1450071796,1,'怎么了',0,0),(2597,129,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2598,129,'1 三年青铜5',1442992733,1,'SB',0,0),(2599,129,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2600,129,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2601,129,'3 sweet',1453904633,1,'夜晚了',0,0),(2602,129,' 玉郎',1447104007,2,'对',0,0),(2603,129,' 清风',1445852620,4,'还有脖子',0,0),(2604,129,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2605,129,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2606,129,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2607,129,'4 PHP_ran',1455280548,3,'，，',1101,0),(2608,129,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2609,129,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2620,130,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2621,130,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2622,130,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2623,130,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2624,130,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2625,130,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2626,130,'3 sweet',1456934648,2,'悦动',0,0),(2627,130,'8 玉郎',1450071796,1,'怎么了',0,0),(2628,130,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2629,130,'1 三年青铜5',1442992733,1,'SB',0,0),(2630,130,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2631,130,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2632,130,'3 sweet',1453904633,1,'夜晚了',0,0),(2633,130,' 玉郎',1447104007,2,'对',0,0),(2634,130,' 清风',1445852620,4,'还有脖子',0,0),(2635,130,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2636,130,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2637,130,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2638,130,'4 PHP_ran',1455280548,3,'，，',1101,0),(2639,130,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2640,130,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2651,131,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2652,131,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2653,131,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2654,131,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2655,131,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2656,131,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2657,131,'3 sweet',1456934648,2,'悦动',0,0),(2658,131,'8 玉郎',1450071796,1,'怎么了',0,0),(2659,131,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2660,131,'1 三年青铜5',1442992733,1,'SB',0,0),(2661,131,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2662,131,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2663,131,'3 sweet',1453904633,1,'夜晚了',0,0),(2664,131,' 玉郎',1447104007,2,'对',0,0),(2665,131,' 清风',1445852620,4,'还有脖子',0,0),(2666,131,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2667,131,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2668,131,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2669,131,'4 PHP_ran',1455280548,3,'，，',1101,0),(2670,131,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2671,131,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2682,132,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2683,132,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2684,132,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2685,132,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2686,132,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2687,132,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2688,132,'3 sweet',1456934648,2,'悦动',0,0),(2689,132,'8 玉郎',1450071796,1,'怎么了',0,0),(2690,132,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2691,132,'1 三年青铜5',1442992733,1,'SB',0,0),(2692,132,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2693,132,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2694,132,'3 sweet',1453904633,1,'夜晚了',0,0),(2695,132,' 玉郎',1447104007,2,'对',0,0),(2696,132,' 清风',1445852620,4,'还有脖子',0,0),(2697,132,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2698,132,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2699,132,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2700,132,'4 PHP_ran',1455280548,3,'，，',1101,0),(2701,132,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2702,132,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2713,133,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2714,133,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2715,133,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2716,133,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2717,133,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2718,133,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2719,133,'3 sweet',1456934648,2,'悦动',0,0),(2720,133,'8 玉郎',1450071796,1,'怎么了',0,0),(2721,133,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2722,133,'1 三年青铜5',1442992733,1,'SB',0,0),(2723,133,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2724,133,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2725,133,'3 sweet',1453904633,1,'夜晚了',0,0),(2726,133,' 玉郎',1447104007,2,'对',0,0),(2727,133,' 清风',1445852620,4,'还有脖子',0,0),(2728,133,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2729,133,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2730,133,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2731,133,'4 PHP_ran',1455280548,3,'，，',1101,0),(2732,133,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2733,133,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2744,134,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2745,134,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2746,134,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2747,134,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2748,134,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2749,134,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2750,134,'3 sweet',1456934648,2,'悦动',0,0),(2751,134,'8 玉郎',1450071796,1,'怎么了',0,0),(2752,134,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2753,134,'1 三年青铜5',1442992733,1,'SB',0,0),(2754,134,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2755,134,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2756,134,'3 sweet',1453904633,1,'夜晚了',0,0),(2757,134,' 玉郎',1447104007,2,'对',0,0),(2758,134,' 清风',1445852620,4,'还有脖子',0,0),(2759,134,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2760,134,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2761,134,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2762,134,'4 PHP_ran',1455280548,3,'，，',1101,0),(2763,134,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2764,134,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2775,135,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2776,135,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2777,135,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2778,135,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2779,135,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2780,135,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2781,135,'3 sweet',1456934648,2,'悦动',0,0),(2782,135,'8 玉郎',1450071796,1,'怎么了',0,0),(2783,135,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2784,135,'1 三年青铜5',1442992733,1,'SB',0,0),(2785,135,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2786,135,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2787,135,'3 sweet',1453904633,1,'夜晚了',0,0),(2788,135,' 玉郎',1447104007,2,'对',0,0),(2789,135,' 清风',1445852620,4,'还有脖子',0,0),(2790,135,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2791,135,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2792,135,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2793,135,'4 PHP_ran',1455280548,3,'，，',1101,0),(2794,135,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2795,135,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2806,136,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2807,136,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2808,136,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2809,136,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2810,136,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2811,136,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2812,136,'3 sweet',1456934648,2,'悦动',0,0),(2813,136,'8 玉郎',1450071796,1,'怎么了',0,0),(2814,136,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2815,136,'1 三年青铜5',1442992733,1,'SB',0,0),(2816,136,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2817,136,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2818,136,'3 sweet',1453904633,1,'夜晚了',0,0),(2819,136,' 玉郎',1447104007,2,'对',0,0),(2820,136,' 清风',1445852620,4,'还有脖子',0,0),(2821,136,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2822,136,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2823,136,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2824,136,'4 PHP_ran',1455280548,3,'，，',1101,0),(2825,136,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2826,136,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2837,137,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2838,137,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2839,137,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2840,137,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2841,137,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2842,137,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2843,137,'3 sweet',1456934648,2,'悦动',0,0),(2844,137,'8 玉郎',1450071796,1,'怎么了',0,0),(2845,137,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2846,137,'1 三年青铜5',1442992733,1,'SB',0,0),(2847,137,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2848,137,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2849,137,'3 sweet',1453904633,1,'夜晚了',0,0),(2850,137,' 玉郎',1447104007,2,'对',0,0),(2851,137,' 清风',1445852620,4,'还有脖子',0,0),(2852,137,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2853,137,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2854,137,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2855,137,'4 PHP_ran',1455280548,3,'，，',1101,0),(2856,137,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2857,137,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2868,138,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2869,138,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2870,138,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2871,138,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2872,138,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2873,138,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2874,138,'3 sweet',1456934648,2,'悦动',0,0),(2875,138,'8 玉郎',1450071796,1,'怎么了',0,0),(2876,138,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2877,138,'1 三年青铜5',1442992733,1,'SB',0,0),(2878,138,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2879,138,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2880,138,'3 sweet',1453904633,1,'夜晚了',0,0),(2881,138,' 玉郎',1447104007,2,'对',0,0),(2882,138,' 清风',1445852620,4,'还有脖子',0,0),(2883,138,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2884,138,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2885,138,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2886,138,'4 PHP_ran',1455280548,3,'，，',1101,0),(2887,138,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2888,138,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2899,139,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2900,139,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2901,139,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2902,139,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2903,139,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2904,139,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2905,139,'3 sweet',1456934648,2,'悦动',0,0),(2906,139,'8 玉郎',1450071796,1,'怎么了',0,0),(2907,139,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2908,139,'1 三年青铜5',1442992733,1,'SB',0,0),(2909,139,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2910,139,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2911,139,'3 sweet',1453904633,1,'夜晚了',0,0),(2912,139,' 玉郎',1447104007,2,'对',0,0),(2913,139,' 清风',1445852620,4,'还有脖子',0,0),(2914,139,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2915,139,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2916,139,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2917,139,'4 PHP_ran',1455280548,3,'，，',1101,0),(2918,139,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2919,139,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2930,140,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2931,140,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2932,140,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2933,140,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2934,140,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2935,140,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2936,140,'3 sweet',1456934648,2,'悦动',0,0),(2937,140,'8 玉郎',1450071796,1,'怎么了',0,0),(2938,140,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2939,140,'1 三年青铜5',1442992733,1,'SB',0,0),(2940,140,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2941,140,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2942,140,'3 sweet',1453904633,1,'夜晚了',0,0),(2943,140,' 玉郎',1447104007,2,'对',0,0),(2944,140,' 清风',1445852620,4,'还有脖子',0,0),(2945,140,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2946,140,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2947,140,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2948,140,'4 PHP_ran',1455280548,3,'，，',1101,0),(2949,140,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2950,140,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2961,141,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2962,141,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2963,141,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2964,141,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2965,141,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2966,141,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2967,141,'3 sweet',1456934648,2,'悦动',0,0),(2968,141,'8 玉郎',1450071796,1,'怎么了',0,0),(2969,141,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(2970,141,'1 三年青铜5',1442992733,1,'SB',0,0),(2971,141,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(2972,141,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(2973,141,'3 sweet',1453904633,1,'夜晚了',0,0),(2974,141,' 玉郎',1447104007,2,'对',0,0),(2975,141,' 清风',1445852620,4,'还有脖子',0,0),(2976,141,' Dc',1447985199,3,'尽量靠能力去找',0,0),(2977,141,' 孤独',1454012813,2,'真相还是 真相',1121,0),(2978,141,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(2979,141,'4 PHP_ran',1455280548,3,'，，',1101,0),(2980,141,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(2981,141,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(2992,142,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(2993,142,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(2994,142,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(2995,142,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(2996,142,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(2997,142,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(2998,142,'3 sweet',1456934648,2,'悦动',0,0),(2999,142,'8 玉郎',1450071796,1,'怎么了',0,0),(3000,142,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(3001,142,'1 三年青铜5',1442992733,1,'SB',0,0),(3002,142,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(3003,142,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(3004,142,'3 sweet',1453904633,1,'夜晚了',0,0),(3005,142,' 玉郎',1447104007,2,'对',0,0),(3006,142,' 清风',1445852620,4,'还有脖子',0,0),(3007,142,' Dc',1447985199,3,'尽量靠能力去找',0,0),(3008,142,' 孤独',1454012813,2,'真相还是 真相',1121,0),(3009,142,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(3010,142,'4 PHP_ran',1455280548,3,'，，',1101,0),(3011,142,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(3012,142,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(3023,143,' Chrisevelyn',1446068497,1,'@小小毛 我也94',0,0),(3024,143,'6 Dc',1451833984,3,'安全卫士那块的',0,0),(3025,143,'6 Dc',1443424997,3,'我们这么单纯~',0,0),(3026,143,'3 飞翔☞天成☜自由',1457475046,2,'为啥呀',0,0),(3027,143,'3 丢了幸福的猪',1450566373,2,'人家才来半天好不',0,0),(3028,143,'6 tendollor',1443487382,2,'你们居然说不好',0,0),(3029,143,'3 sweet',1456934648,2,'悦动',0,0),(3030,143,'8 玉郎',1450071796,1,'怎么了',0,0),(3031,143,'3 配对指挥员（临时工王傻根）',1443657714,4,'竟然被看穿了',0,0),(3032,143,'1 三年青铜5',1442992733,1,'SB',0,0),(3033,143,'2 配对指挥员（临时工王傻根）',1449082499,3,'发育到底做了什么',0,0),(3034,143,'0 如此的如此。不過如此',1449639476,3,'酒少喝好',0,0),(3035,143,'3 sweet',1453904633,1,'夜晚了',0,0),(3036,143,' 玉郎',1447104007,2,'对',0,0),(3037,143,' 清风',1445852620,4,'还有脖子',0,0),(3038,143,' Dc',1447985199,3,'尽量靠能力去找',0,0),(3039,143,' 孤独',1454012813,2,'真相还是 真相',1121,0),(3040,143,' php_ad',1445790469,4,'hr经常兼职猎头吧',1235,0),(3041,143,'4 PHP_ran',1455280548,3,'，，',1101,0),(3042,143,'8 php_can',1445079609,3,'不知道真奇葩',106,0),(3043,143,'2 php_bug',1447490625,2,'把我的bug看看呗',967,0),(3044,75,'Kaydi',1464790425,1,'The hoensty of your posting is there for all to see',0,0),(3045,110,'Addrienne',1464794764,1,'A simple and ineleligtnt point, well made. Thanks!',0,0);

/*Table structure for table `tp_goods_images` */

DROP TABLE IF EXISTS `tp_goods_images`;

CREATE TABLE `tp_goods_images` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片id 自增',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `image_url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=544 DEFAULT CHARSET=utf8;

/*Data for the table `tp_goods_images` */

/*Table structure for table `tp_goods_type` */

DROP TABLE IF EXISTS `tp_goods_type`;

CREATE TABLE `tp_goods_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id自增',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `tp_goods_type` */

/*Table structure for table `tp_group_buy` */

DROP TABLE IF EXISTS `tp_group_buy`;

CREATE TABLE `tp_group_buy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '团购ID',
  `title` varchar(255) NOT NULL COMMENT '活动名称',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `price` decimal(10,2) NOT NULL COMMENT '团购价格',
  `goods_num` int(10) DEFAULT '0' COMMENT '商品参团数',
  `buy_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品已购买数',
  `order_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已下单人数',
  `virtual_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '虚拟购买数',
  `rebate` decimal(10,1) NOT NULL COMMENT '折扣',
  `intro` text COMMENT '本团介绍',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品原价',
  `goods_name` varchar(200) NOT NULL COMMENT '商品名称',
  `recommended` tinyint(1) unsigned NOT NULL COMMENT '是否推荐 0.未推荐 1.已推荐',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购商品表';

/*Data for the table `tp_group_buy` */

/*Table structure for table `tp_heiid` */

DROP TABLE IF EXISTS `tp_heiid`;

CREATE TABLE `tp_heiid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `phone` varchar(30) DEFAULT NULL COMMENT '手机',
  `qq` varchar(50) DEFAULT NULL COMMENT 'qq',
  `weixin` varchar(50) DEFAULT NULL COMMENT '微信',
  `content` text COMMENT '描述',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `idcard` varchar(100) DEFAULT NULL COMMENT '身份证',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `businessid` varchar(100) DEFAULT NULL COMMENT '营业执照',
  `taobao` varchar(100) DEFAULT NULL COMMENT '淘宝店铺名称',
  `type` tinyint(2) NOT NULL COMMENT '0:个人1:企业',
  `action` tinyint(4) NOT NULL COMMENT '0:诚信1:招聘2:购物3:合同4:交友5:招聘6:商品',
  `lost` decimal(8,2) DEFAULT NULL COMMENT '损失',
  `price` decimal(8,2) DEFAULT NULL COMMENT '价格',
  `heiid_time` int(11) DEFAULT NULL COMMENT '被黑时间',
  `creattime` int(11) DEFAULT NULL COMMENT '创建时间',
  `uid` int(11) DEFAULT NULL COMMENT '举报用户ID',
  `status` tinyint(2) DEFAULT NULL COMMENT '0：审核1：已审核',
  `sex` tinyint(2) DEFAULT NULL COMMENT '0:男1：女',
  `area` varchar(10) DEFAULT NULL COMMENT '区域',
  `imgs` varchar(200) DEFAULT NULL COMMENT '证据照片',
  `is_show` tinyint(2) DEFAULT NULL COMMENT '是否显示',
  `click` int(11) DEFAULT NULL COMMENT '点击数',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_heiid` */

/*Table structure for table `tp_navigation` */

DROP TABLE IF EXISTS `tp_navigation`;

CREATE TABLE `tp_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '前台导航表',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '导航名称',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否显示',
  `is_new` tinyint(1) DEFAULT '1' COMMENT '是否新窗口',
  `sort` smallint(6) DEFAULT '50' COMMENT '排序',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '链接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tp_navigation` */

/*Table structure for table `tp_order` */

DROP TABLE IF EXISTS `tp_order`;

CREATE TABLE `tp_order` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_sn` varchar(20) NOT NULL DEFAULT '' COMMENT '订单编号',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '发货状态',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人',
  `country` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '国家',
  `province` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '省份',
  `city` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '城市',
  `district` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '县区',
  `twon` int(11) DEFAULT '0' COMMENT '乡镇',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` varchar(60) NOT NULL DEFAULT '' COMMENT '邮政编码',
  `mobile` varchar(60) NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮件',
  `shipping_code` varchar(32) NOT NULL DEFAULT '0' COMMENT '物流code',
  `shipping_name` varchar(120) NOT NULL DEFAULT '' COMMENT '物流名称',
  `pay_code` varchar(32) NOT NULL DEFAULT '' COMMENT '支付code',
  `pay_name` varchar(120) NOT NULL DEFAULT '' COMMENT '支付方式名称',
  `invoice_title` varchar(256) DEFAULT '' COMMENT '发票抬头',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `shipping_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '使用余额',
  `coupon_price` decimal(10,2) DEFAULT '0.00' COMMENT '优惠券抵扣',
  `integral` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用积分',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '使用积分抵多少钱',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应付款金额',
  `total_amount` decimal(10,2) DEFAULT '0.00' COMMENT '订单总价',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `shipping_time` int(11) DEFAULT '0' COMMENT '最后新发货时间',
  `confirm_time` int(10) DEFAULT '0' COMMENT '收货确认时间',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `order_prom_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '活动id',
  `order_prom_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '活动优惠金额',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格调整',
  `user_note` varchar(255) NOT NULL DEFAULT '' COMMENT '用户备注',
  `admin_note` varchar(255) DEFAULT '' COMMENT '管理员备注',
  `parent_sn` varchar(100) DEFAULT NULL COMMENT '父单单号',
  `is_distribut` tinyint(1) DEFAULT '0' COMMENT '是否已分成0未分成1已分成',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_code`),
  KEY `pay_id` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=334 DEFAULT CHARSET=utf8;

/*Data for the table `tp_order` */

/*Table structure for table `tp_order_action` */

DROP TABLE IF EXISTS `tp_order_action`;

CREATE TABLE `tp_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `action_user` int(11) DEFAULT '0' COMMENT '操作人 0 为管理员操作',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '配送状态',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `action_note` varchar(255) NOT NULL DEFAULT '' COMMENT '操作备注',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `status_desc` varchar(255) DEFAULT NULL COMMENT '状态描述',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=391 DEFAULT CHARSET=utf8;

/*Data for the table `tp_order_action` */

/*Table structure for table `tp_order_goods` */

DROP TABLE IF EXISTS `tp_order_goods`;

CREATE TABLE `tp_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id自增',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(120) NOT NULL DEFAULT '' COMMENT '视频名称',
  `goods_sn` varchar(60) NOT NULL DEFAULT '' COMMENT '商品货号',
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '购买数量',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '本店价',
  `cost_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品成本价',
  `member_goods_price` decimal(10,2) DEFAULT '0.00' COMMENT '会员折扣价',
  `give_integral` mediumint(8) DEFAULT '0' COMMENT '购买商品赠送积分',
  `spec_key` varchar(128) NOT NULL DEFAULT '' COMMENT '商品规格key',
  `spec_key_name` varchar(128) NOT NULL DEFAULT '' COMMENT '规格对应的中文名字',
  `bar_code` varchar(64) NOT NULL DEFAULT '' COMMENT '条码',
  `is_comment` tinyint(1) DEFAULT '0' COMMENT '是否评价',
  `prom_type` tinyint(1) DEFAULT '0' COMMENT '0 普通订单,1 限时抢购, 2 团购 , 3 促销优惠',
  `prom_id` int(11) DEFAULT '0' COMMENT '活动id',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '0未发货，1已发货，2已换货，3已退货',
  `delivery_id` int(11) DEFAULT '0' COMMENT '发货单ID',
  `sku` varchar(128) DEFAULT '' COMMENT 'sku',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=356 DEFAULT CHARSET=utf8;

/*Data for the table `tp_order_goods` */

/*Table structure for table `tp_payment` */

DROP TABLE IF EXISTS `tp_payment`;

CREATE TABLE `tp_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `pay_code` varchar(20) NOT NULL DEFAULT '' COMMENT '支付code',
  `pay_name` varchar(120) NOT NULL DEFAULT '' COMMENT '支付方式名称',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0' COMMENT '手续费',
  `pay_desc` text NOT NULL COMMENT '描述',
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'pay_coder',
  `pay_config` text NOT NULL COMMENT '配置',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否货到付款',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否在线支付',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tp_payment` */

/*Table structure for table `tp_pinglun` */

DROP TABLE IF EXISTS `tp_pinglun`;

CREATE TABLE `tp_pinglun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '评论标题',
  `content` text COMMENT '评论内容',
  `uid` int(11) DEFAULT NULL COMMENT '评论用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '0:辟谣1:黑名单2:通讯录3:活动',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '内容ID',
  `add_time` int(11) DEFAULT NULL COMMENT '评论时间',
  `ip_address` varchar(16) NOT NULL DEFAULT '' COMMENT '评论IP地址',
  `is_show` tinyint(1) DEFAULT NULL COMMENT '是否显示',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '评论父ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_pinglun` */

/*Table structure for table `tp_piyao` */

DROP TABLE IF EXISTS `tp_piyao`;

CREATE TABLE `tp_piyao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '辟谣标题',
  `creat_time` int(11) DEFAULT NULL COMMENT '辟谣时间',
  `content` text NOT NULL COMMENT '辟谣内容详情',
  `source` varchar(20) NOT NULL DEFAULT '' COMMENT '谣言来源',
  `author` varchar(20) DEFAULT '' COMMENT '谣言作者',
  `thumb` varchar(255) DEFAULT '' COMMENT 'banner图',
  `description` varchar(255) DEFAULT NULL COMMENT '谣言描述',
  `is_open` tinyint(2) DEFAULT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_piyao` */

/*Table structure for table `tp_plugin` */

DROP TABLE IF EXISTS `tp_plugin`;

CREATE TABLE `tp_plugin` (
  `code` varchar(13) DEFAULT NULL COMMENT '插件编码',
  `name` varchar(55) DEFAULT NULL COMMENT '中文名字',
  `version` varchar(255) DEFAULT NULL COMMENT '插件的版本',
  `author` varchar(30) DEFAULT NULL COMMENT '插件作者',
  `config` text COMMENT '配置信息',
  `config_value` text COMMENT '配置值信息',
  `desc` varchar(255) DEFAULT NULL COMMENT '插件描述',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否启用',
  `type` varchar(50) DEFAULT NULL COMMENT '插件类型 payment支付 login 登陆 shipping物流',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `bank_code` text COMMENT '网银配置信息',
  `scene` tinyint(1) DEFAULT '0' COMMENT '使用场景 0 PC+手机 1 手机 2 PC'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tp_plugin` */

insert  into `tp_plugin`(`code`,`name`,`version`,`author`,`config`,`config_value`,`desc`,`status`,`type`,`icon`,`bank_code`,`scene`) values ('alipay','支付宝支付','1.0','jy_pwn','a:6:{i:0;a:4:{s:4:\"name\";s:14:\"alipay_account\";s:5:\"label\";s:15:\"支付宝帐户\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"alipay_key\";s:5:\"label\";s:21:\"交易安全校验码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:14:\"alipay_partner\";s:5:\"label\";s:17:\"合作者身份ID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:18:\"alipay_private_key\";s:5:\"label\";s:6:\"秘钥\";s:4:\"type\";s:8:\"textarea\";s:5:\"value\";s:0:\"\";}i:4;a:4:{s:4:\"name\";s:17:\"alipay_pay_method\";s:5:\"label\";s:19:\" 选择接口类型\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:24:\"使用担保交易接口\";i:1;s:30:\"使用即时到帐交易接口\";}}i:5;a:4:{s:4:\"name\";s:7:\"is_bank\";s:5:\"label\";s:18:\"是否开通网银\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:3:\"否\";i:1;s:3:\"是\";}}}','a:6:{s:14:\"alipay_account\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:18:\"alipay_private_key\";s:0:\"\";s:17:\"alipay_pay_method\";s:1:\"2\";s:7:\"is_bank\";s:1:\"2\";}','支付宝插件 ',1,'payment','logo.jpg','a:8:{s:12:\"招商银行\";s:9:\"CMB-DEBIT\";s:18:\"中国工商银行\";s:10:\"ICBC-DEBIT\";s:12:\"交通银行\";s:10:\"COMM-DEBIT\";s:18:\"中国建设银行\";s:9:\"CCB-DEBIT\";s:18:\"中国民生银行\";s:4:\"CMBC\";s:12:\"中国银行\";s:9:\"BOC-DEBIT\";s:18:\"中国农业银行\";s:3:\"ABC\";s:12:\"上海银行\";s:6:\"SHBANK\";}',2),('cod','到货付款','1.0','IT宇宙人','a:1:{i:0;a:4:{s:4:\"name\";s:9:\"code_desc\";s:5:\"label\";s:12:\"配送描述\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}','a:1:{s:9:\"code_desc\";s:9:\"545234234\";}','货到付款插件 ',1,'payment','logo.jpg','N;',0),('weixin','微信支付','1.0','IT宇宙人','a:4:{i:0;a:4:{s:4:\"name\";s:5:\"appid\";s:5:\"label\";s:20:\"绑定支付的APPID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:5:\"mchid\";s:5:\"label\";s:9:\"商户号\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:3:\"key\";s:5:\"label\";s:18:\"商户支付密钥\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:9:\"appsecret\";s:5:\"label\";s:57:\"公众帐号secert（仅JSAPI支付的时候需要配置)\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}','a:4:{s:5:\"appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:3:\"key\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";}','微信支付插件 ',1,'payment','logo.jpg','N;',0),('alipay','支付宝快捷登陆','1.0','彭老师','a:2:{i:0;a:4:{s:4:\"name\";s:14:\"alipay_partner\";s:5:\"label\";s:17:\"合作者身份ID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"alipay_key\";s:5:\"label\";s:15:\"安全检验码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}','a:2:{s:14:\"alipay_partner\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";}','支付宝快捷登陆插件 ',1,'login','logo.jpg','N;',0),('weixin','微信登陆','1.0','彭老师','a:2:{i:0;a:4:{s:4:\"name\";s:5:\"appid\";s:5:\"label\";s:17:\"开放平台appid\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:6:\"secret\";s:5:\"label\";s:18:\"开放平台secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}',NULL,'微信登陆插件 ',0,'login','logo.jpg','N;',0),('shentong','申通物流','1.0','宇宙人','N;',NULL,'申通物流插件 ',1,'shipping','logo.jpg','N;',NULL),('shunfeng','顺丰物流','1.0','shunfeng','N;',NULL,'顺丰物流插件 ',1,'shipping','logo.jpg','N;',NULL),('qq','QQ登陆','1.0','彭老师','a:2:{i:0;a:4:{s:4:\"name\";s:6:\"app_id\";s:5:\"label\";s:6:\"app_id\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"app_secret\";s:5:\"label\";s:10:\"app_secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}','a:2:{s:6:\"app_id\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}','QQ登陆插件 ',1,'login','logo.jpg','N;',0),('alipayMobile','手机网站支付宝','1.0','宇宙人','a:6:{i:0;a:4:{s:4:\"name\";s:14:\"alipay_account\";s:5:\"label\";s:15:\"支付宝帐户\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"alipay_key\";s:5:\"label\";s:21:\"交易安全校验码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:14:\"alipay_partner\";s:5:\"label\";s:17:\"合作者身份ID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:18:\"alipay_private_key\";s:5:\"label\";s:6:\"秘钥\";s:4:\"type\";s:8:\"textarea\";s:5:\"value\";s:0:\"\";}i:4;a:4:{s:4:\"name\";s:17:\"alipay_pay_method\";s:5:\"label\";s:19:\" 选择接口类型\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:24:\"使用担保交易接口\";i:1;s:30:\"使用即时到帐交易接口\";}}i:5;a:4:{s:4:\"name\";s:7:\"is_bank\";s:5:\"label\";s:18:\"是否开通网银\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:3:\"否\";i:1;s:3:\"是\";}}}','a:6:{s:14:\"alipay_account\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:18:\"alipay_private_key\";s:0:\"\";s:17:\"alipay_pay_method\";s:1:\"2\";s:7:\"is_bank\";s:1:\"2\";}','手机端网站支付宝 ',1,'payment','logo.jpg','N;',1),('unionpay','银联在线支付','1.0','奇闻科技','a:4:{i:0;a:4:{s:4:\"name\";s:12:\"unionpay_mid\";s:5:\"label\";s:9:\"商户号\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:15:\"777290058130619\";}i:1;a:4:{s:4:\"name\";s:21:\"unionpay_cer_password\";s:5:\"label\";s:25:\" 商户私钥证书密码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:6:\"000000\";}i:2;a:4:{s:4:\"name\";s:13:\"unionpay_user\";s:5:\"label\";s:19:\" 企业网银账号\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:12:\"123456789001\";}i:3;a:4:{s:4:\"name\";s:17:\"unionpay_password\";s:5:\"label\";s:19:\" 企业网银密码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:6:\"789001\";}}','a:4:{s:12:\"unionpay_mid\";s:0:\"\";s:21:\"unionpay_cer_password\";s:0:\"\";s:13:\"unionpay_user\";s:0:\"\";s:17:\"unionpay_password\";s:0:\"\";}','银联在线支付插件 ',1,'payment','logo.jpg','N;',0),('helloworld','HelloWorld插件','v1.2.0,v1.2.1','IT宇宙人','N;',NULL,'适合v1.2.0 , v1.2.1',0,'function','logo.jpg','N;',NULL),('bestexpress','百世汇通','1.0','bestexpress','N;',NULL,'百世汇通插件 ',0,'shipping','logo.jpg','N;',NULL),('ztoexpress','中通快递','1.0','ztoexpress','N;',NULL,'中通快递插件 ',0,'shipping','logo.jpg','N;',NULL);

/*Table structure for table `tp_prom_goods` */

DROP TABLE IF EXISTS `tp_prom_goods`;

CREATE TABLE `tp_prom_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `name` varchar(60) NOT NULL COMMENT '促销活动名称',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '促销类型',
  `expression` varchar(100) NOT NULL COMMENT '优惠体现',
  `description` text COMMENT '活动描述',
  `start_time` int(11) NOT NULL COMMENT '活动开始时间',
  `end_time` int(11) NOT NULL COMMENT '活动结束时间',
  `is_close` tinyint(1) DEFAULT '0',
  `group` varchar(255) DEFAULT NULL COMMENT '适用范围',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tp_prom_goods` */

/*Table structure for table `tp_prom_order` */

DROP TABLE IF EXISTS `tp_prom_order`;

CREATE TABLE `tp_prom_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL COMMENT '活动名称',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '活动类型',
  `money` float(10,2) DEFAULT '0.00' COMMENT '最小金额',
  `expression` varchar(100) DEFAULT NULL COMMENT '优惠体现',
  `description` text COMMENT '活动描述',
  `start_time` int(11) DEFAULT NULL COMMENT '活动开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '活动结束时间',
  `is_close` tinyint(1) DEFAULT '0',
  `group` varchar(255) DEFAULT NULL COMMENT '适用范围',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tp_prom_order` */

insert  into `tp_prom_order`(`id`,`name`,`type`,`money`,`expression`,`description`,`start_time`,`end_time`,`is_close`,`group`) values (1,'订单满300送代金券30元',3,300.00,'12','&lt;p&gt;订单满300送代金券30元&lt;br/&gt;&lt;/p&gt;',1463760000,1556640000,0,NULL);

/*Table structure for table `tp_rebate_log` */

DROP TABLE IF EXISTS `tp_rebate_log`;

CREATE TABLE `tp_rebate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分成记录表',
  `user_id` int(11) DEFAULT '0' COMMENT '获佣用户',
  `buy_user_id` int(11) DEFAULT '0' COMMENT '购买人id',
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '购买人名称',
  `order_sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '订单编号',
  `order_id` int(11) DEFAULT '0' COMMENT '订单id',
  `goods_price` decimal(10,2) DEFAULT '0.00' COMMENT '订单商品总额',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '获佣金额',
  `level` tinyint(1) DEFAULT '1' COMMENT '获佣用户级别',
  `create_time` int(11) DEFAULT '0' COMMENT '分成记录生成时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '0未付款,1已付款, 2等待分成(已收货) 3已分成, 4已取消',
  `confirm_time` int(11) DEFAULT '0' COMMENT '确定分成或者取消时间',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '如果是取消, 有取消备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tp_rebate_log` */

/*Table structure for table `tp_region` */

DROP TABLE IF EXISTS `tp_region`;

CREATE TABLE `tp_region` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(32) DEFAULT NULL COMMENT '地区名称',
  `level` tinyint(4) DEFAULT NULL COMMENT '地区等级 分省市县区',
  `parent_id` int(10) DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47498 DEFAULT CHARSET=gbk;

/*Data for the table `tp_region` */


/*Table structure for table `tp_region2` */

DROP TABLE IF EXISTS `tp_region2`;

CREATE TABLE `tp_region2` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(20) NOT NULL COMMENT '地区名称',
  `parent_id` int(11) DEFAULT NULL COMMENT '父id',
  `level` tinyint(1) DEFAULT NULL COMMENT '地区等级',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3524 DEFAULT CHARSET=gbk;

/*Data for the table `tp_region2` */

insert  into `tp_region2`(`id`,`name`,`parent_id`,`level`) values (1,'北京市',0,1),(2,'天津市',0,1),(3,'河北省',0,1),(4,'山西省',0,1),(5,'内蒙古自治区',0,1),(6,'辽宁省',0,1),(7,'吉林省',0,1),(8,'黑龙江省',0,1),(9,'上海市',0,1),(10,'江苏省',0,1),(11,'浙江省',0,1),(12,'安徽省',0,1),(13,'福建省',0,1),(14,'江西省',0,1),(15,'山东省',0,1),(16,'河南省',0,1),(17,'湖北省',0,1),(18,'湖南省',0,1),(19,'广东省',0,1),(20,'广西壮族自治区',0,1),(21,'海南省',0,1),(22,'重庆市',0,1),(23,'四川省',0,1),(24,'贵州省',0,1),(25,'云南省',0,1),(26,'西藏自治区',0,1),(27,'陕西省',0,1),(28,'甘肃省',0,1),(29,'青海省',0,1),(30,'宁夏回族自治区',0,1),(31,'新疆维吾尔自治区',0,1),(32,'台湾省',0,1),(33,'香港特别行政区',0,1),(34,'澳门特别行政区',0,1),(35,'市辖区',1,2),(36,'县',1,2),(37,'市辖区',2,2),(38,'县',2,2),(39,'石家庄市',3,2),(40,'唐山市',3,2),(41,'秦皇岛市',3,2),(42,'邯郸市',3,2),(43,'邢台市',3,2),(44,'保定市',3,2),(45,'张家口市',3,2),(46,'承德市',3,2),(47,'沧州市',3,2),(48,'廊坊市',3,2),(49,'衡水市',3,2),(50,'太原市',4,2),(51,'大同市',4,2),(52,'阳泉市',4,2),(53,'长治市',4,2),(54,'晋城市',4,2),(55,'朔州市',4,2),(56,'晋中市',4,2),(57,'运城市',4,2),(58,'忻州市',4,2),(59,'临汾市',4,2),(60,'吕梁市',4,2),(61,'呼和浩特市',5,2),(62,'包头市',5,2),(63,'乌海市',5,2),(64,'赤峰市',5,2),(65,'通辽市',5,2),(66,'鄂尔多斯市',5,2),(67,'呼伦贝尔市',5,2),(68,'巴彦淖尔市',5,2),(69,'乌兰察布市',5,2),(70,'兴安盟',5,2),(71,'锡林郭勒盟',5,2),(72,'阿拉善盟',5,2),(73,'沈阳市',6,2),(74,'大连市',6,2),(75,'鞍山市',6,2),(76,'抚顺市',6,2),(77,'本溪市',6,2),(78,'丹东市',6,2),(79,'锦州市',6,2),(80,'营口市',6,2),(81,'阜新市',6,2),(82,'辽阳市',6,2),(83,'盘锦市',6,2),(84,'铁岭市',6,2),(85,'朝阳市',6,2),(86,'葫芦岛市',6,2),(87,'长春市',7,2),(88,'吉林市',7,2),(89,'四平市',7,2),(90,'辽源市',7,2),(91,'通化市',7,2),(92,'白山市',7,2),(93,'松原市',7,2),(94,'白城市',7,2),(95,'延边朝鲜族自治州',7,2),(96,'哈尔滨市',8,2),(97,'齐齐哈尔市',8,2),(98,'鸡西市',8,2),(99,'鹤岗市',8,2),(100,'双鸭山市',8,2),(101,'大庆市',8,2),(102,'伊春市',8,2),(103,'佳木斯市',8,2),(104,'七台河市',8,2),(105,'牡丹江市',8,2),(106,'黑河市',8,2),(107,'绥化市',8,2),(108,'大兴安岭地区',8,2),(109,'市辖区',9,2),(110,'县',9,2),(111,'南京市',10,2),(112,'无锡市',10,2),(113,'徐州市',10,2),(114,'常州市',10,2),(115,'苏州市',10,2),(116,'南通市',10,2),(117,'连云港市',10,2),(118,'淮安市',10,2),(119,'盐城市',10,2),(120,'扬州市',10,2),(121,'镇江市',10,2),(122,'泰州市',10,2),(123,'宿迁市',10,2),(124,'杭州市',11,2),(125,'宁波市',11,2),(126,'温州市',11,2),(127,'嘉兴市',11,2),(128,'湖州市',11,2),(129,'绍兴市',11,2),(130,'金华市',11,2),(131,'衢州市',11,2),(132,'舟山市',11,2),(133,'台州市',11,2),(134,'丽水市',11,2),(135,'合肥市',12,2),(136,'芜湖市',12,2),(137,'蚌埠市',12,2),(138,'淮南市',12,2),(139,'马鞍山市',12,2),(140,'淮北市',12,2),(141,'铜陵市',12,2),(142,'安庆市',12,2),(143,'黄山市',12,2),(144,'滁州市',12,2),(145,'阜阳市',12,2),(146,'宿州市',12,2),(147,'巢湖市',12,2),(148,'六安市',12,2),(149,'亳州市',12,2),(150,'池州市',12,2),(151,'宣城市',12,2),(152,'福州市',13,2),(153,'厦门市',13,2),(154,'莆田市',13,2),(155,'三明市',13,2),(156,'泉州市',13,2),(157,'漳州市',13,2),(158,'南平市',13,2),(159,'龙岩市',13,2),(160,'宁德市',13,2),(161,'南昌市',14,2),(162,'景德镇市',14,2),(163,'萍乡市',14,2),(164,'九江市',14,2),(165,'新余市',14,2),(166,'鹰潭市',14,2),(167,'赣州市',14,2),(168,'吉安市',14,2),(169,'宜春市',14,2),(170,'抚州市',14,2),(171,'上饶市',14,2),(172,'济南市',15,2),(173,'青岛市',15,2),(174,'淄博市',15,2),(175,'枣庄市',15,2),(176,'东营市',15,2),(177,'烟台市',15,2),(178,'潍坊市',15,2),(179,'济宁市',15,2),(180,'泰安市',15,2),(181,'威海市',15,2),(182,'日照市',15,2),(183,'莱芜市',15,2),(184,'临沂市',15,2),(185,'德州市',15,2),(186,'聊城市',15,2),(187,'滨州市',15,2),(188,'荷泽市',15,2),(189,'郑州市',16,2),(190,'开封市',16,2),(191,'洛阳市',16,2),(192,'平顶山市',16,2),(193,'安阳市',16,2),(194,'鹤壁市',16,2),(195,'新乡市',16,2),(196,'焦作市',16,2),(197,'濮阳市',16,2),(198,'许昌市',16,2),(199,'漯河市',16,2),(200,'三门峡市',16,2),(201,'南阳市',16,2),(202,'商丘市',16,2),(203,'信阳市',16,2),(204,'周口市',16,2),(205,'驻马店市',16,2),(206,'武汉市',17,2),(207,'黄石市',17,2),(208,'十堰市',17,2),(209,'宜昌市',17,2),(210,'襄樊市',17,2),(211,'鄂州市',17,2),(212,'荆门市',17,2),(213,'孝感市',17,2),(214,'荆州市',17,2),(215,'黄冈市',17,2),(216,'咸宁市',17,2),(217,'随州市',17,2),(218,'恩施土家族苗族自治州',17,2),(219,'省直辖行政单位',17,2),(220,'长沙市',18,2),(221,'株洲市',18,2),(222,'湘潭市',18,2),(223,'衡阳市',18,2),(224,'邵阳市',18,2),(225,'岳阳市',18,2),(226,'常德市',18,2),(227,'张家界市',18,2),(228,'益阳市',18,2),(229,'郴州市',18,2),(230,'永州市',18,2),(231,'怀化市',18,2),(232,'娄底市',18,2),(233,'湘西土家族苗族自治州',18,2),(234,'广州市',19,2),(235,'韶关市',19,2),(236,'深圳市',19,2),(237,'珠海市',19,2),(238,'汕头市',19,2),(239,'佛山市',19,2),(240,'江门市',19,2),(241,'湛江市',19,2),(242,'茂名市',19,2),(243,'肇庆市',19,2),(244,'惠州市',19,2),(245,'梅州市',19,2),(246,'汕尾市',19,2),(247,'河源市',19,2),(248,'阳江市',19,2),(249,'清远市',19,2),(250,'东莞市',19,2),(251,'中山市',19,2),(252,'潮州市',19,2),(253,'揭阳市',19,2),(254,'云浮市',19,2),(255,'南宁市',20,2),(256,'柳州市',20,2),(257,'桂林市',20,2),(258,'梧州市',20,2),(259,'北海市',20,2),(260,'防城港市',20,2),(261,'钦州市',20,2),(262,'贵港市',20,2),(263,'玉林市',20,2),(264,'百色市',20,2),(265,'贺州市',20,2),(266,'河池市',20,2),(267,'来宾市',20,2),(268,'崇左市',20,2),(269,'海口市',21,2),(270,'三亚市',21,2),(271,'省直辖县级行政单位',21,2),(272,'市辖区',22,2),(273,'县',22,2),(274,'市',22,2),(275,'成都市',23,2),(276,'自贡市',23,2),(277,'攀枝花市',23,2),(278,'泸州市',23,2),(279,'德阳市',23,2),(280,'绵阳市',23,2),(281,'广元市',23,2),(282,'遂宁市',23,2),(283,'内江市',23,2),(284,'乐山市',23,2),(285,'南充市',23,2),(286,'眉山市',23,2),(287,'宜宾市',23,2),(288,'广安市',23,2),(289,'达州市',23,2),(290,'雅安市',23,2),(291,'巴中市',23,2),(292,'资阳市',23,2),(293,'阿坝藏族羌族自治州',23,2),(294,'甘孜藏族自治州',23,2),(295,'凉山彝族自治州',23,2),(296,'贵阳市',24,2),(297,'六盘水市',24,2),(298,'遵义市',24,2),(299,'安顺市',24,2),(300,'铜仁地区',24,2),(301,'黔西南布依族苗族自治州',24,2),(302,'毕节地区',24,2),(303,'黔东南苗族侗族自治州',24,2),(304,'黔南布依族苗族自治州',24,2),(305,'昆明市',25,2),(306,'曲靖市',25,2),(307,'玉溪市',25,2),(308,'保山市',25,2),(309,'昭通市',25,2),(310,'丽江市',25,2),(311,'思茅市',25,2),(312,'临沧市',25,2),(313,'楚雄彝族自治州',25,2),(314,'红河哈尼族彝族自治州',25,2),(315,'文山壮族苗族自治州',25,2),(316,'西双版纳傣族自治州',25,2),(317,'大理白族自治州',25,2),(318,'德宏傣族景颇族自治州',25,2),(319,'怒江傈僳族自治州',25,2),(320,'迪庆藏族自治州',25,2),(321,'拉萨市',26,2),(322,'昌都地区',26,2),(323,'山南地区',26,2),(324,'日喀则地区',26,2),(325,'那曲地区',26,2),(326,'阿里地区',26,2),(327,'林芝地区',26,2),(328,'西安市',27,2),(329,'铜川市',27,2),(330,'宝鸡市',27,2),(331,'咸阳市',27,2),(332,'渭南市',27,2),(333,'延安市',27,2),(334,'汉中市',27,2),(335,'榆林市',27,2),(336,'安康市',27,2),(337,'商洛市',27,2),(338,'兰州市',28,2),(339,'嘉峪关市',28,2),(340,'金昌市',28,2),(341,'白银市',28,2),(342,'天水市',28,2),(343,'武威市',28,2),(344,'张掖市',28,2),(345,'平凉市',28,2),(346,'酒泉市',28,2),(347,'庆阳市',28,2),(348,'定西市',28,2),(349,'陇南市',28,2),(350,'临夏回族自治州',28,2),(351,'甘南藏族自治州',28,2),(352,'西宁市',29,2),(353,'海东地区',29,2),(354,'海北藏族自治州',29,2),(355,'黄南藏族自治州',29,2),(356,'海南藏族自治州',29,2),(357,'果洛藏族自治州',29,2),(358,'玉树藏族自治州',29,2),(359,'海西蒙古族藏族自治州',29,2),(360,'银川市',30,2),(361,'石嘴山市',30,2),(362,'吴忠市',30,2),(363,'固原市',30,2),(364,'中卫市',30,2),(365,'乌鲁木齐市',31,2),(366,'克拉玛依市',31,2),(367,'吐鲁番地区',31,2),(368,'哈密地区',31,2),(369,'昌吉回族自治州',31,2),(370,'博尔塔拉蒙古自治州',31,2),(371,'巴音郭楞蒙古自治州',31,2),(372,'阿克苏地区',31,2),(373,'克孜勒苏柯尔克孜自治州',31,2),(374,'喀什地区',31,2),(375,'和田地区',31,2),(376,'伊犁哈萨克自治州',31,2),(377,'塔城地区',31,2),(378,'阿勒泰地区',31,2),(379,'省直辖行政单位',31,2),(380,'东城区',35,3),(381,'西城区',35,3),(382,'崇文区',35,3),(383,'宣武区',35,3),(384,'朝阳区',35,3),(385,'丰台区',35,3),(386,'石景山区',35,3),(387,'海淀区',35,3),(388,'门头沟区',35,3),(389,'房山区',35,3),(390,'通州区',35,3),(391,'顺义区',35,3),(392,'昌平区',35,3),(393,'大兴区',35,3),(394,'怀柔区',35,3),(395,'平谷区',35,3),(396,'密云县',36,3),(397,'延庆县',36,3),(398,'和平区',37,3),(399,'河东区',37,3),(400,'河西区',37,3),(401,'南开区',37,3),(402,'河北区',37,3),(403,'红桥区',37,3),(404,'塘沽区',37,3),(405,'汉沽区',37,3),(406,'大港区',37,3),(407,'东丽区',37,3),(408,'西青区',37,3),(409,'津南区',37,3),(410,'北辰区',37,3),(411,'武清区',37,3),(412,'宝坻区',37,3),(413,'宁河县',38,3),(414,'静海县',38,3),(415,'蓟　县',38,3),(416,'市辖区',39,3),(417,'长安区',39,3),(418,'桥东区',39,3),(419,'桥西区',39,3),(420,'新华区',39,3),(421,'井陉矿区',39,3),(422,'裕华区',39,3),(423,'井陉县',39,3),(424,'正定县',39,3),(425,'栾城县',39,3),(426,'行唐县',39,3),(427,'灵寿县',39,3),(428,'高邑县',39,3),(429,'深泽县',39,3),(430,'赞皇县',39,3),(431,'无极县',39,3),(432,'平山县',39,3),(433,'元氏县',39,3),(434,'赵　县',39,3),(435,'辛集市',39,3),(436,'藁城市',39,3),(437,'晋州市',39,3),(438,'新乐市',39,3),(439,'鹿泉市',39,3),(440,'市辖区',40,3),(441,'路南区',40,3),(442,'路北区',40,3),(443,'古冶区',40,3),(444,'开平区',40,3),(445,'丰南区',40,3),(446,'丰润区',40,3),(447,'滦　县',40,3),(448,'滦南县',40,3),(449,'乐亭县',40,3),(450,'迁西县',40,3),(451,'玉田县',40,3),(452,'唐海县',40,3),(453,'遵化市',40,3),(454,'迁安市',40,3),(455,'市辖区',41,3),(456,'海港区',41,3),(457,'山海关区',41,3),(458,'北戴河区',41,3),(459,'青龙满族自治县',41,3),(460,'昌黎县',41,3),(461,'抚宁县',41,3),(462,'卢龙县',41,3),(463,'市辖区',42,3),(464,'邯山区',42,3),(465,'丛台区',42,3),(466,'复兴区',42,3),(467,'峰峰矿区',42,3),(468,'邯郸县',42,3),(469,'临漳县',42,3),(470,'成安县',42,3),(471,'大名县',42,3),(472,'涉　县',42,3),(473,'磁　县',42,3),(474,'肥乡县',42,3),(475,'永年县',42,3),(476,'邱　县',42,3),(477,'鸡泽县',42,3),(478,'广平县',42,3),(479,'馆陶县',42,3),(480,'魏　县',42,3),(481,'曲周县',42,3),(482,'武安市',42,3),(483,'市辖区',43,3),(484,'桥东区',43,3),(485,'桥西区',43,3),(486,'邢台县',43,3),(487,'临城县',43,3),(488,'内丘县',43,3),(489,'柏乡县',43,3),(490,'隆尧县',43,3),(491,'任　县',43,3),(492,'南和县',43,3),(493,'宁晋县',43,3),(494,'巨鹿县',43,3),(495,'新河县',43,3),(496,'广宗县',43,3),(497,'平乡县',43,3),(498,'威　县',43,3),(499,'清河县',43,3),(500,'临西县',43,3),(501,'南宫市',43,3),(502,'沙河市',43,3),(503,'市辖区',44,3),(504,'新市区',44,3),(505,'北市区',44,3),(506,'南市区',44,3),(507,'满城县',44,3),(508,'清苑县',44,3),(509,'涞水县',44,3),(510,'阜平县',44,3),(511,'徐水县',44,3),(512,'定兴县',44,3),(513,'唐　县',44,3),(514,'高阳县',44,3),(515,'容城县',44,3),(516,'涞源县',44,3),(517,'望都县',44,3),(518,'安新县',44,3),(519,'易　县',44,3),(520,'曲阳县',44,3),(521,'蠡　县',44,3),(522,'顺平县',44,3),(523,'博野县',44,3),(524,'雄　县',44,3),(525,'涿州市',44,3),(526,'定州市',44,3),(527,'安国市',44,3),(528,'高碑店市',44,3),(529,'市辖区',45,3),(530,'桥东区',45,3),(531,'桥西区',45,3),(532,'宣化区',45,3),(533,'下花园区',45,3),(534,'宣化县',45,3),(535,'张北县',45,3),(536,'康保县',45,3),(537,'沽源县',45,3),(538,'尚义县',45,3),(539,'蔚　县',45,3),(540,'阳原县',45,3),(541,'怀安县',45,3),(542,'万全县',45,3),(543,'怀来县',45,3),(544,'涿鹿县',45,3),(545,'赤城县',45,3),(546,'崇礼县',45,3),(547,'市辖区',46,3),(548,'双桥区',46,3),(549,'双滦区',46,3),(550,'鹰手营子矿区',46,3),(551,'承德县',46,3),(552,'兴隆县',46,3),(553,'平泉县',46,3),(554,'滦平县',46,3),(555,'隆化县',46,3),(556,'丰宁满族自治县',46,3),(557,'宽城满族自治县',46,3),(558,'围场满族蒙古族自治县',46,3),(559,'市辖区',47,3),(560,'新华区',47,3),(561,'运河区',47,3),(562,'沧　县',47,3),(563,'青　县',47,3),(564,'东光县',47,3),(565,'海兴县',47,3),(566,'盐山县',47,3),(567,'肃宁县',47,3),(568,'南皮县',47,3),(569,'吴桥县',47,3),(570,'献　县',47,3),(571,'孟村回族自治县',47,3),(572,'泊头市',47,3),(573,'任丘市',47,3),(574,'黄骅市',47,3),(575,'河间市',47,3),(576,'市辖区',48,3),(577,'安次区',48,3),(578,'广阳区',48,3),(579,'固安县',48,3),(580,'永清县',48,3),(581,'香河县',48,3),(582,'大城县',48,3),(583,'文安县',48,3),(584,'大厂回族自治县',48,3),(585,'霸州市',48,3),(586,'三河市',48,3),(587,'市辖区',49,3),(588,'桃城区',49,3),(589,'枣强县',49,3),(590,'武邑县',49,3),(591,'武强县',49,3),(592,'饶阳县',49,3),(593,'安平县',49,3),(594,'故城县',49,3),(595,'景　县',49,3),(596,'阜城县',49,3),(597,'冀州市',49,3),(598,'深州市',49,3),(599,'市辖区',50,3),(600,'小店区',50,3),(601,'迎泽区',50,3),(602,'杏花岭区',50,3),(603,'尖草坪区',50,3),(604,'万柏林区',50,3),(605,'晋源区',50,3),(606,'清徐县',50,3),(607,'阳曲县',50,3),(608,'娄烦县',50,3),(609,'古交市',50,3),(610,'市辖区',51,3),(611,'城　区',51,3),(612,'矿　区',51,3),(613,'南郊区',51,3),(614,'新荣区',51,3),(615,'阳高县',51,3),(616,'天镇县',51,3),(617,'广灵县',51,3),(618,'灵丘县',51,3),(619,'浑源县',51,3),(620,'左云县',51,3),(621,'大同县',51,3),(622,'市辖区',52,3),(623,'城　区',52,3),(624,'矿　区',52,3),(625,'郊　区',52,3),(626,'平定县',52,3),(627,'盂　县',52,3),(628,'市辖区',53,3),(629,'城　区',53,3),(630,'郊　区',53,3),(631,'长治县',53,3),(632,'襄垣县',53,3),(633,'屯留县',53,3),(634,'平顺县',53,3),(635,'黎城县',53,3),(636,'壶关县',53,3),(637,'长子县',53,3),(638,'武乡县',53,3),(639,'沁　县',53,3),(640,'沁源县',53,3),(641,'潞城市',53,3),(642,'市辖区',54,3),(643,'城　区',54,3),(644,'沁水县',54,3),(645,'阳城县',54,3),(646,'陵川县',54,3),(647,'泽州县',54,3),(648,'高平市',54,3),(649,'市辖区',55,3),(650,'朔城区',55,3),(651,'平鲁区',55,3),(652,'山阴县',55,3),(653,'应　县',55,3),(654,'右玉县',55,3),(655,'怀仁县',55,3),(656,'市辖区',56,3),(657,'榆次区',56,3),(658,'榆社县',56,3),(659,'左权县',56,3),(660,'和顺县',56,3),(661,'昔阳县',56,3),(662,'寿阳县',56,3),(663,'太谷县',56,3),(664,'祁　县',56,3),(665,'平遥县',56,3),(666,'灵石县',56,3),(667,'介休市',56,3),(668,'市辖区',57,3),(669,'盐湖区',57,3),(670,'临猗县',57,3),(671,'万荣县',57,3),(672,'闻喜县',57,3),(673,'稷山县',57,3),(674,'新绛县',57,3),(675,'绛　县',57,3),(676,'垣曲县',57,3),(677,'夏　县',57,3),(678,'平陆县',57,3),(679,'芮城县',57,3),(680,'永济市',57,3),(681,'河津市',57,3),(682,'市辖区',58,3),(683,'忻府区',58,3),(684,'定襄县',58,3),(685,'五台县',58,3),(686,'代　县',58,3),(687,'繁峙县',58,3),(688,'宁武县',58,3),(689,'静乐县',58,3),(690,'神池县',58,3),(691,'五寨县',58,3),(692,'岢岚县',58,3),(693,'河曲县',58,3),(694,'保德县',58,3),(695,'偏关县',58,3),(696,'原平市',58,3),(697,'市辖区',59,3),(698,'尧都区',59,3),(699,'曲沃县',59,3),(700,'翼城县',59,3),(701,'襄汾县',59,3),(702,'洪洞县',59,3),(703,'古　县',59,3),(704,'安泽县',59,3),(705,'浮山县',59,3),(706,'吉　县',59,3),(707,'乡宁县',59,3),(708,'大宁县',59,3),(709,'隰　县',59,3),(710,'永和县',59,3),(711,'蒲　县',59,3),(712,'汾西县',59,3),(713,'侯马市',59,3),(714,'霍州市',59,3),(715,'市辖区',60,3),(716,'离石区',60,3),(717,'文水县',60,3),(718,'交城县',60,3),(719,'兴　县',60,3),(720,'临　县',60,3),(721,'柳林县',60,3),(722,'石楼县',60,3),(723,'岚　县',60,3),(724,'方山县',60,3),(725,'中阳县',60,3),(726,'交口县',60,3),(727,'孝义市',60,3),(728,'汾阳市',60,3),(729,'市辖区',61,3),(730,'新城区',61,3),(731,'回民区',61,3),(732,'玉泉区',61,3),(733,'赛罕区',61,3),(734,'土默特左旗',61,3),(735,'托克托县',61,3),(736,'和林格尔县',61,3),(737,'清水河县',61,3),(738,'武川县',61,3),(739,'市辖区',62,3),(740,'东河区',62,3),(741,'昆都仑区',62,3),(742,'青山区',62,3),(743,'石拐区',62,3),(744,'白云矿区',62,3),(745,'九原区',62,3),(746,'土默特右旗',62,3),(747,'固阳县',62,3),(748,'达尔罕茂明安联合旗',62,3),(749,'市辖区',63,3),(750,'海勃湾区',63,3),(751,'海南区',63,3),(752,'乌达区',63,3),(753,'市辖区',64,3),(754,'红山区',64,3),(755,'元宝山区',64,3),(756,'松山区',64,3),(757,'阿鲁科尔沁旗',64,3),(758,'巴林左旗',64,3),(759,'巴林右旗',64,3),(760,'林西县',64,3),(761,'克什克腾旗',64,3),(762,'翁牛特旗',64,3),(763,'喀喇沁旗',64,3),(764,'宁城县',64,3),(765,'敖汉旗',64,3),(766,'市辖区',65,3),(767,'科尔沁区',65,3),(768,'科尔沁左翼中旗',65,3),(769,'科尔沁左翼后旗',65,3),(770,'开鲁县',65,3),(771,'库伦旗',65,3),(772,'奈曼旗',65,3),(773,'扎鲁特旗',65,3),(774,'霍林郭勒市',65,3),(775,'东胜区',66,3),(776,'达拉特旗',66,3),(777,'准格尔旗',66,3),(778,'鄂托克前旗',66,3),(779,'鄂托克旗',66,3),(780,'杭锦旗',66,3),(781,'乌审旗',66,3),(782,'伊金霍洛旗',66,3),(783,'市辖区',67,3),(784,'海拉尔区',67,3),(785,'阿荣旗',67,3),(786,'莫力达瓦达斡尔族自治旗',67,3),(787,'鄂伦春自治旗',67,3),(788,'鄂温克族自治旗',67,3),(789,'陈巴尔虎旗',67,3),(790,'新巴尔虎左旗',67,3),(791,'新巴尔虎右旗',67,3),(792,'满洲里市',67,3),(793,'牙克石市',67,3),(794,'扎兰屯市',67,3),(795,'额尔古纳市',67,3),(796,'根河市',67,3),(797,'市辖区',68,3),(798,'临河区',68,3),(799,'五原县',68,3),(800,'磴口县',68,3),(801,'乌拉特前旗',68,3),(802,'乌拉特中旗',68,3),(803,'乌拉特后旗',68,3),(804,'杭锦后旗',68,3),(805,'市辖区',69,3),(806,'集宁区',69,3),(807,'卓资县',69,3),(808,'化德县',69,3),(809,'商都县',69,3),(810,'兴和县',69,3),(811,'凉城县',69,3),(812,'察哈尔右翼前旗',69,3),(813,'察哈尔右翼中旗',69,3),(814,'察哈尔右翼后旗',69,3),(815,'四子王旗',69,3),(816,'丰镇市',69,3),(817,'乌兰浩特市',70,3),(818,'阿尔山市',70,3),(819,'科尔沁右翼前旗',70,3),(820,'科尔沁右翼中旗',70,3),(821,'扎赉特旗',70,3),(822,'突泉县',70,3),(823,'二连浩特市',71,3),(824,'锡林浩特市',71,3),(825,'阿巴嘎旗',71,3),(826,'苏尼特左旗',71,3),(827,'苏尼特右旗',71,3),(828,'东乌珠穆沁旗',71,3),(829,'西乌珠穆沁旗',71,3),(830,'太仆寺旗',71,3),(831,'镶黄旗',71,3),(832,'正镶白旗',71,3),(833,'正蓝旗',71,3),(834,'多伦县',71,3),(835,'阿拉善左旗',72,3),(836,'阿拉善右旗',72,3),(837,'额济纳旗',72,3),(838,'市辖区',73,3),(839,'和平区',73,3),(840,'沈河区',73,3),(841,'大东区',73,3),(842,'皇姑区',73,3),(843,'铁西区',73,3),(844,'苏家屯区',73,3),(845,'东陵区',73,3),(846,'新城子区',73,3),(847,'于洪区',73,3),(848,'辽中县',73,3),(849,'康平县',73,3),(850,'法库县',73,3),(851,'新民市',73,3),(852,'市辖区',74,3),(853,'中山区',74,3),(854,'西岗区',74,3),(855,'沙河口区',74,3),(856,'甘井子区',74,3),(857,'旅顺口区',74,3),(858,'金州区',74,3),(859,'长海县',74,3),(860,'瓦房店市',74,3),(861,'普兰店市',74,3),(862,'庄河市',74,3),(863,'市辖区',75,3),(864,'铁东区',75,3),(865,'铁西区',75,3),(866,'立山区',75,3),(867,'千山区',75,3),(868,'台安县',75,3),(869,'岫岩满族自治县',75,3),(870,'海城市',75,3),(871,'市辖区',76,3),(872,'新抚区',76,3),(873,'东洲区',76,3),(874,'望花区',76,3),(875,'顺城区',76,3),(876,'抚顺县',76,3),(877,'新宾满族自治县',76,3),(878,'清原满族自治县',76,3),(879,'市辖区',77,3),(880,'平山区',77,3),(881,'溪湖区',77,3),(882,'明山区',77,3),(883,'南芬区',77,3),(884,'本溪满族自治县',77,3),(885,'桓仁满族自治县',77,3),(886,'市辖区',78,3),(887,'元宝区',78,3),(888,'振兴区',78,3),(889,'振安区',78,3),(890,'宽甸满族自治县',78,3),(891,'东港市',78,3),(892,'凤城市',78,3),(893,'市辖区',79,3),(894,'古塔区',79,3),(895,'凌河区',79,3),(896,'太和区',79,3),(897,'黑山县',79,3),(898,'义　县',79,3),(899,'凌海市',79,3),(900,'北宁市',79,3),(901,'市辖区',80,3),(902,'站前区',80,3),(903,'西市区',80,3),(904,'鲅鱼圈区',80,3),(905,'老边区',80,3),(906,'盖州市',80,3),(907,'大石桥市',80,3),(908,'市辖区',81,3),(909,'海州区',81,3),(910,'新邱区',81,3),(911,'太平区',81,3),(912,'清河门区',81,3),(913,'细河区',81,3),(914,'阜新蒙古族自治县',81,3),(915,'彰武县',81,3),(916,'市辖区',82,3),(917,'白塔区',82,3),(918,'文圣区',82,3),(919,'宏伟区',82,3),(920,'弓长岭区',82,3),(921,'太子河区',82,3),(922,'辽阳县',82,3),(923,'灯塔市',82,3),(924,'市辖区',83,3),(925,'双台子区',83,3),(926,'兴隆台区',83,3),(927,'大洼县',83,3),(928,'盘山县',83,3),(929,'市辖区',84,3),(930,'银州区',84,3),(931,'清河区',84,3),(932,'铁岭县',84,3),(933,'西丰县',84,3),(934,'昌图县',84,3),(935,'调兵山市',84,3),(936,'开原市',84,3),(937,'市辖区',85,3),(938,'双塔区',85,3),(939,'龙城区',85,3),(940,'朝阳县',85,3),(941,'建平县',85,3),(942,'喀喇沁左翼蒙古族自治县',85,3),(943,'北票市',85,3),(944,'凌源市',85,3),(945,'市辖区',86,3),(946,'连山区',86,3),(947,'龙港区',86,3),(948,'南票区',86,3),(949,'绥中县',86,3),(950,'建昌县',86,3),(951,'兴城市',86,3),(952,'市辖区',87,3),(953,'南关区',87,3),(954,'宽城区',87,3),(955,'朝阳区',87,3),(956,'二道区',87,3),(957,'绿园区',87,3),(958,'双阳区',87,3),(959,'农安县',87,3),(960,'九台市',87,3),(961,'榆树市',87,3),(962,'德惠市',87,3),(963,'市辖区',88,3),(964,'昌邑区',88,3),(965,'龙潭区',88,3),(966,'船营区',88,3),(967,'丰满区',88,3),(968,'永吉县',88,3),(969,'蛟河市',88,3),(970,'桦甸市',88,3),(971,'舒兰市',88,3),(972,'磐石市',88,3),(973,'市辖区',89,3),(974,'铁西区',89,3),(975,'铁东区',89,3),(976,'梨树县',89,3),(977,'伊通满族自治县',89,3),(978,'公主岭市',89,3),(979,'双辽市',89,3),(980,'市辖区',90,3),(981,'龙山区',90,3),(982,'西安区',90,3),(983,'东丰县',90,3),(984,'东辽县',90,3),(985,'市辖区',91,3),(986,'东昌区',91,3),(987,'二道江区',91,3),(988,'通化县',91,3),(989,'辉南县',91,3),(990,'柳河县',91,3),(991,'梅河口市',91,3),(992,'集安市',91,3),(993,'市辖区',92,3),(994,'八道江区',92,3),(995,'抚松县',92,3),(996,'靖宇县',92,3),(997,'长白朝鲜族自治县',92,3),(998,'江源县',92,3),(999,'临江市',92,3),(1000,'市辖区',93,3),(1001,'宁江区',93,3),(1002,'前郭尔罗斯蒙古族自治县',93,3),(1003,'长岭县',93,3),(1004,'乾安县',93,3),(1005,'扶余县',93,3),(1006,'市辖区',94,3),(1007,'洮北区',94,3),(1008,'镇赉县',94,3),(1009,'通榆县',94,3),(1010,'洮南市',94,3),(1011,'大安市',94,3),(1012,'延吉市',95,3),(1013,'图们市',95,3),(1014,'敦化市',95,3),(1015,'珲春市',95,3),(1016,'龙井市',95,3),(1017,'和龙市',95,3),(1018,'汪清县',95,3),(1019,'安图县',95,3),(1020,'市辖区',96,3),(1021,'道里区',96,3),(1022,'南岗区',96,3),(1023,'道外区',96,3),(1024,'香坊区',96,3),(1025,'动力区',96,3),(1026,'平房区',96,3),(1027,'松北区',96,3),(1028,'呼兰区',96,3),(1029,'依兰县',96,3),(1030,'方正县',96,3),(1031,'宾　县',96,3),(1032,'巴彦县',96,3),(1033,'木兰县',96,3),(1034,'通河县',96,3),(1035,'延寿县',96,3),(1036,'阿城市',96,3),(1037,'双城市',96,3),(1038,'尚志市',96,3),(1039,'五常市',96,3),(1040,'市辖区',97,3),(1041,'龙沙区',97,3),(1042,'建华区',97,3),(1043,'铁锋区',97,3),(1044,'昂昂溪区',97,3),(1045,'富拉尔基区',97,3),(1046,'碾子山区',97,3),(1047,'梅里斯达斡尔族区',97,3),(1048,'龙江县',97,3),(1049,'依安县',97,3),(1050,'泰来县',97,3),(1051,'甘南县',97,3),(1052,'富裕县',97,3),(1053,'克山县',97,3),(1054,'克东县',97,3),(1055,'拜泉县',97,3),(1056,'讷河市',97,3),(1057,'市辖区',98,3),(1058,'鸡冠区',98,3),(1059,'恒山区',98,3),(1060,'滴道区',98,3),(1061,'梨树区',98,3),(1062,'城子河区',98,3),(1063,'麻山区',98,3),(1064,'鸡东县',98,3),(1065,'虎林市',98,3),(1066,'密山市',98,3),(1067,'市辖区',99,3),(1068,'向阳区',99,3),(1069,'工农区',99,3),(1070,'南山区',99,3),(1071,'兴安区',99,3),(1072,'东山区',99,3),(1073,'兴山区',99,3),(1074,'萝北县',99,3),(1075,'绥滨县',99,3),(1076,'市辖区',100,3),(1077,'尖山区',100,3),(1078,'岭东区',100,3),(1079,'四方台区',100,3),(1080,'宝山区',100,3),(1081,'集贤县',100,3),(1082,'友谊县',100,3),(1083,'宝清县',100,3),(1084,'饶河县',100,3),(1085,'市辖区',101,3),(1086,'萨尔图区',101,3),(1087,'龙凤区',101,3),(1088,'让胡路区',101,3),(1089,'红岗区',101,3),(1090,'大同区',101,3),(1091,'肇州县',101,3),(1092,'肇源县',101,3),(1093,'林甸县',101,3),(1094,'杜尔伯特蒙古族自治县',101,3),(1095,'市辖区',102,3),(1096,'伊春区',102,3),(1097,'南岔区',102,3),(1098,'友好区',102,3),(1099,'西林区',102,3),(1100,'翠峦区',102,3),(1101,'新青区',102,3),(1102,'美溪区',102,3),(1103,'金山屯区',102,3),(1104,'五营区',102,3),(1105,'乌马河区',102,3),(1106,'汤旺河区',102,3),(1107,'带岭区',102,3),(1108,'乌伊岭区',102,3),(1109,'红星区',102,3),(1110,'上甘岭区',102,3),(1111,'嘉荫县',102,3),(1112,'铁力市',102,3),(1113,'市辖区',103,3),(1114,'永红区',103,3),(1115,'向阳区',103,3),(1116,'前进区',103,3),(1117,'东风区',103,3),(1118,'郊　区',103,3),(1119,'桦南县',103,3),(1120,'桦川县',103,3),(1121,'汤原县',103,3),(1122,'抚远县',103,3),(1123,'同江市',103,3),(1124,'富锦市',103,3),(1125,'市辖区',104,3),(1126,'新兴区',104,3),(1127,'桃山区',104,3),(1128,'茄子河区',104,3),(1129,'勃利县',104,3),(1130,'市辖区',105,3),(1131,'东安区',105,3),(1132,'阳明区',105,3),(1133,'爱民区',105,3),(1134,'西安区',105,3),(1135,'东宁县',105,3),(1136,'林口县',105,3),(1137,'绥芬河市',105,3),(1138,'海林市',105,3),(1139,'宁安市',105,3),(1140,'穆棱市',105,3),(1141,'市辖区',106,3),(1142,'爱辉区',106,3),(1143,'嫩江县',106,3),(1144,'逊克县',106,3),(1145,'孙吴县',106,3),(1146,'北安市',106,3),(1147,'五大连池市',106,3),(1148,'市辖区',107,3),(1149,'北林区',107,3),(1150,'望奎县',107,3),(1151,'兰西县',107,3),(1152,'青冈县',107,3),(1153,'庆安县',107,3),(1154,'明水县',107,3),(1155,'绥棱县',107,3),(1156,'安达市',107,3),(1157,'肇东市',107,3),(1158,'海伦市',107,3),(1159,'呼玛县',108,3),(1160,'塔河县',108,3),(1161,'漠河县',108,3),(1162,'黄浦区',109,3),(1163,'卢湾区',109,3),(1164,'徐汇区',109,3),(1165,'长宁区',109,3),(1166,'静安区',109,3),(1167,'普陀区',109,3),(1168,'闸北区',109,3),(1169,'虹口区',109,3),(1170,'杨浦区',109,3),(1171,'闵行区',109,3),(1172,'宝山区',109,3),(1173,'嘉定区',109,3),(1174,'浦东新区',109,3),(1175,'金山区',109,3),(1176,'松江区',109,3),(1177,'青浦区',109,3),(1178,'南汇区',109,3),(1179,'奉贤区',109,3),(1180,'崇明县',110,3),(1181,'市辖区',111,3),(1182,'玄武区',111,3),(1183,'白下区',111,3),(1184,'秦淮区',111,3),(1185,'建邺区',111,3),(1186,'鼓楼区',111,3),(1187,'下关区',111,3),(1188,'浦口区',111,3),(1189,'栖霞区',111,3),(1190,'雨花台区',111,3),(1191,'江宁区',111,3),(1192,'六合区',111,3),(1193,'溧水县',111,3),(1194,'高淳县',111,3),(1195,'市辖区',112,3),(1196,'崇安区',112,3),(1197,'南长区',112,3),(1198,'北塘区',112,3),(1199,'锡山区',112,3),(1200,'惠山区',112,3),(1201,'滨湖区',112,3),(1202,'江阴市',112,3),(1203,'宜兴市',112,3),(1204,'市辖区',113,3),(1205,'鼓楼区',113,3),(1206,'云龙区',113,3),(1207,'九里区',113,3),(1208,'贾汪区',113,3),(1209,'泉山区',113,3),(1210,'丰　县',113,3),(1211,'沛　县',113,3),(1212,'铜山县',113,3),(1213,'睢宁县',113,3),(1214,'新沂市',113,3),(1215,'邳州市',113,3),(1216,'市辖区',114,3),(1217,'天宁区',114,3),(1218,'钟楼区',114,3),(1219,'戚墅堰区',114,3),(1220,'新北区',114,3),(1221,'武进区',114,3),(1222,'溧阳市',114,3),(1223,'金坛市',114,3),(1224,'市辖区',115,3),(1225,'沧浪区',115,3),(1226,'平江区',115,3),(1227,'金阊区',115,3),(1228,'虎丘区',115,3),(1229,'吴中区',115,3),(1230,'相城区',115,3),(1231,'常熟市',115,3),(1232,'张家港市',115,3),(1233,'昆山市',115,3),(1234,'吴江市',115,3),(1235,'太仓市',115,3),(1236,'市辖区',116,3),(1237,'崇川区',116,3),(1238,'港闸区',116,3),(1239,'海安县',116,3),(1240,'如东县',116,3),(1241,'启东市',116,3),(1242,'如皋市',116,3),(1243,'通州市',116,3),(1244,'海门市',116,3),(1245,'市辖区',117,3),(1246,'连云区',117,3),(1247,'新浦区',117,3),(1248,'海州区',117,3),(1249,'赣榆县',117,3),(1250,'东海县',117,3),(1251,'灌云县',117,3),(1252,'灌南县',117,3),(1253,'市辖区',118,3),(1254,'清河区',118,3),(1255,'楚州区',118,3),(1256,'淮阴区',118,3),(1257,'清浦区',118,3),(1258,'涟水县',118,3),(1259,'洪泽县',118,3),(1260,'盱眙县',118,3),(1261,'金湖县',118,3),(1262,'市辖区',119,3),(1263,'亭湖区',119,3),(1264,'盐都区',119,3),(1265,'响水县',119,3),(1266,'滨海县',119,3),(1267,'阜宁县',119,3),(1268,'射阳县',119,3),(1269,'建湖县',119,3),(1270,'东台市',119,3),(1271,'大丰市',119,3),(1272,'市辖区',120,3),(1273,'广陵区',120,3),(1274,'邗江区',120,3),(1275,'郊　区',120,3),(1276,'宝应县',120,3),(1277,'仪征市',120,3),(1278,'高邮市',120,3),(1279,'江都市',120,3),(1280,'市辖区',121,3),(1281,'京口区',121,3),(1282,'润州区',121,3),(1283,'丹徒区',121,3),(1284,'丹阳市',121,3),(1285,'扬中市',121,3),(1286,'句容市',121,3),(1287,'市辖区',122,3),(1288,'海陵区',122,3),(1289,'高港区',122,3),(1290,'兴化市',122,3),(1291,'靖江市',122,3),(1292,'泰兴市',122,3),(1293,'姜堰市',122,3),(1294,'市辖区',123,3),(1295,'宿城区',123,3),(1296,'宿豫区',123,3),(1297,'沭阳县',123,3),(1298,'泗阳县',123,3),(1299,'泗洪县',123,3),(1300,'市辖区',124,3),(1301,'上城区',124,3),(1302,'下城区',124,3),(1303,'江干区',124,3),(1304,'拱墅区',124,3),(1305,'西湖区',124,3),(1306,'滨江区',124,3),(1307,'萧山区',124,3),(1308,'余杭区',124,3),(1309,'桐庐县',124,3),(1310,'淳安县',124,3),(1311,'建德市',124,3),(1312,'富阳市',124,3),(1313,'临安市',124,3),(1314,'市辖区',125,3),(1315,'海曙区',125,3),(1316,'江东区',125,3),(1317,'江北区',125,3),(1318,'北仑区',125,3),(1319,'镇海区',125,3),(1320,'鄞州区',125,3),(1321,'象山县',125,3),(1322,'宁海县',125,3),(1323,'余姚市',125,3),(1324,'慈溪市',125,3),(1325,'奉化市',125,3),(1326,'市辖区',126,3),(1327,'鹿城区',126,3),(1328,'龙湾区',126,3),(1329,'瓯海区',126,3),(1330,'洞头县',126,3),(1331,'永嘉县',126,3),(1332,'平阳县',126,3),(1333,'苍南县',126,3),(1334,'文成县',126,3),(1335,'泰顺县',126,3),(1336,'瑞安市',126,3),(1337,'乐清市',126,3),(1338,'市辖区',127,3),(1339,'秀城区',127,3),(1340,'秀洲区',127,3),(1341,'嘉善县',127,3),(1342,'海盐县',127,3),(1343,'海宁市',127,3),(1344,'平湖市',127,3),(1345,'桐乡市',127,3),(1346,'市辖区',128,3),(1347,'吴兴区',128,3),(1348,'南浔区',128,3),(1349,'德清县',128,3),(1350,'长兴县',128,3),(1351,'安吉县',128,3),(1352,'市辖区',129,3),(1353,'越城区',129,3),(1354,'绍兴县',129,3),(1355,'新昌县',129,3),(1356,'诸暨市',129,3),(1357,'上虞市',129,3),(1358,'嵊州市',129,3),(1359,'市辖区',130,3),(1360,'婺城区',130,3),(1361,'金东区',130,3),(1362,'武义县',130,3),(1363,'浦江县',130,3),(1364,'磐安县',130,3),(1365,'兰溪市',130,3),(1366,'义乌市',130,3),(1367,'东阳市',130,3),(1368,'永康市',130,3),(1369,'市辖区',131,3),(1370,'柯城区',131,3),(1371,'衢江区',131,3),(1372,'常山县',131,3),(1373,'开化县',131,3),(1374,'龙游县',131,3),(1375,'江山市',131,3),(1376,'市辖区',132,3),(1377,'定海区',132,3),(1378,'普陀区',132,3),(1379,'岱山县',132,3),(1380,'嵊泗县',132,3),(1381,'市辖区',133,3),(1382,'椒江区',133,3),(1383,'黄岩区',133,3),(1384,'路桥区',133,3),(1385,'玉环县',133,3),(1386,'三门县',133,3),(1387,'天台县',133,3),(1388,'仙居县',133,3),(1389,'温岭市',133,3),(1390,'临海市',133,3),(1391,'市辖区',134,3),(1392,'莲都区',134,3),(1393,'青田县',134,3),(1394,'缙云县',134,3),(1395,'遂昌县',134,3),(1396,'松阳县',134,3),(1397,'云和县',134,3),(1398,'庆元县',134,3),(1399,'景宁畲族自治县',134,3),(1400,'龙泉市',134,3),(1401,'市辖区',135,3),(1402,'瑶海区',135,3),(1403,'庐阳区',135,3),(1404,'蜀山区',135,3),(1405,'包河区',135,3),(1406,'长丰县',135,3),(1407,'肥东县',135,3),(1408,'肥西县',135,3),(1409,'市辖区',136,3),(1410,'镜湖区',136,3),(1411,'马塘区',136,3),(1412,'新芜区',136,3),(1413,'鸠江区',136,3),(1414,'芜湖县',136,3),(1415,'繁昌县',136,3),(1416,'南陵县',136,3),(1417,'市辖区',137,3),(1418,'龙子湖区',137,3),(1419,'蚌山区',137,3),(1420,'禹会区',137,3),(1421,'淮上区',137,3),(1422,'怀远县',137,3),(1423,'五河县',137,3),(1424,'固镇县',137,3),(1425,'市辖区',138,3),(1426,'大通区',138,3),(1427,'田家庵区',138,3),(1428,'谢家集区',138,3),(1429,'八公山区',138,3),(1430,'潘集区',138,3),(1431,'凤台县',138,3),(1432,'市辖区',139,3),(1433,'金家庄区',139,3),(1434,'花山区',139,3),(1435,'雨山区',139,3),(1436,'当涂县',139,3),(1437,'市辖区',140,3),(1438,'杜集区',140,3),(1439,'相山区',140,3),(1440,'烈山区',140,3),(1441,'濉溪县',140,3),(1442,'市辖区',141,3),(1443,'铜官山区',141,3),(1444,'狮子山区',141,3),(1445,'郊　区',141,3),(1446,'铜陵县',141,3),(1447,'市辖区',142,3),(1448,'迎江区',142,3),(1449,'大观区',142,3),(1450,'郊　区',142,3),(1451,'怀宁县',142,3),(1452,'枞阳县',142,3),(1453,'潜山县',142,3),(1454,'太湖县',142,3),(1455,'宿松县',142,3),(1456,'望江县',142,3),(1457,'岳西县',142,3),(1458,'桐城市',142,3),(1459,'市辖区',143,3),(1460,'屯溪区',143,3),(1461,'黄山区',143,3),(1462,'徽州区',143,3),(1463,'歙　县',143,3),(1464,'休宁县',143,3),(1465,'黟　县',143,3),(1466,'祁门县',143,3),(1467,'市辖区',144,3),(1468,'琅琊区',144,3),(1469,'南谯区',144,3),(1470,'来安县',144,3),(1471,'全椒县',144,3),(1472,'定远县',144,3),(1473,'凤阳县',144,3),(1474,'天长市',144,3),(1475,'明光市',144,3),(1476,'市辖区',145,3),(1477,'颍州区',145,3),(1478,'颍东区',145,3),(1479,'颍泉区',145,3),(1480,'临泉县',145,3),(1481,'太和县',145,3),(1482,'阜南县',145,3),(1483,'颍上县',145,3),(1484,'界首市',145,3),(1485,'市辖区',146,3),(1486,'墉桥区',146,3),(1487,'砀山县',146,3),(1488,'萧　县',146,3),(1489,'灵璧县',146,3),(1490,'泗　县',146,3),(1491,'市辖区',147,3),(1492,'居巢区',147,3),(1493,'庐江县',147,3),(1494,'无为县',147,3),(1495,'含山县',147,3),(1496,'和　县',147,3),(1497,'市辖区',148,3),(1498,'金安区',148,3),(1499,'裕安区',148,3),(1500,'寿　县',148,3),(1501,'霍邱县',148,3),(1502,'舒城县',148,3),(1503,'金寨县',148,3),(1504,'霍山县',148,3),(1505,'市辖区',149,3),(1506,'谯城区',149,3),(1507,'涡阳县',149,3),(1508,'蒙城县',149,3),(1509,'利辛县',149,3),(1510,'市辖区',150,3),(1511,'贵池区',150,3),(1512,'东至县',150,3),(1513,'石台县',150,3),(1514,'青阳县',150,3),(1515,'市辖区',151,3),(1516,'宣州区',151,3),(1517,'郎溪县',151,3),(1518,'广德县',151,3),(1519,'泾　县',151,3),(1520,'绩溪县',151,3),(1521,'旌德县',151,3),(1522,'宁国市',151,3),(1523,'市辖区',152,3),(1524,'鼓楼区',152,3),(1525,'台江区',152,3),(1526,'仓山区',152,3),(1527,'马尾区',152,3),(1528,'晋安区',152,3),(1529,'闽侯县',152,3),(1530,'连江县',152,3),(1531,'罗源县',152,3),(1532,'闽清县',152,3),(1533,'永泰县',152,3),(1534,'平潭县',152,3),(1535,'福清市',152,3),(1536,'长乐市',152,3),(1537,'市辖区',153,3),(1538,'思明区',153,3),(1539,'海沧区',153,3),(1540,'湖里区',153,3),(1541,'集美区',153,3),(1542,'同安区',153,3),(1543,'翔安区',153,3),(1544,'市辖区',154,3),(1545,'城厢区',154,3),(1546,'涵江区',154,3),(1547,'荔城区',154,3),(1548,'秀屿区',154,3),(1549,'仙游县',154,3),(1550,'市辖区',155,3),(1551,'梅列区',155,3),(1552,'三元区',155,3),(1553,'明溪县',155,3),(1554,'清流县',155,3),(1555,'宁化县',155,3),(1556,'大田县',155,3),(1557,'尤溪县',155,3),(1558,'沙　县',155,3),(1559,'将乐县',155,3),(1560,'泰宁县',155,3),(1561,'建宁县',155,3),(1562,'永安市',155,3),(1563,'市辖区',156,3),(1564,'鲤城区',156,3),(1565,'丰泽区',156,3),(1566,'洛江区',156,3),(1567,'泉港区',156,3),(1568,'惠安县',156,3),(1569,'安溪县',156,3),(1570,'永春县',156,3),(1571,'德化县',156,3),(1572,'金门县',156,3),(1573,'石狮市',156,3),(1574,'晋江市',156,3),(1575,'南安市',156,3),(1576,'市辖区',157,3),(1577,'芗城区',157,3),(1578,'龙文区',157,3),(1579,'云霄县',157,3),(1580,'漳浦县',157,3),(1581,'诏安县',157,3),(1582,'长泰县',157,3),(1583,'东山县',157,3),(1584,'南靖县',157,3),(1585,'平和县',157,3),(1586,'华安县',157,3),(1587,'龙海市',157,3),(1588,'市辖区',158,3),(1589,'延平区',158,3),(1590,'顺昌县',158,3),(1591,'浦城县',158,3),(1592,'光泽县',158,3),(1593,'松溪县',158,3),(1594,'政和县',158,3),(1595,'邵武市',158,3),(1596,'武夷山市',158,3),(1597,'建瓯市',158,3),(1598,'建阳市',158,3),(1599,'市辖区',159,3),(1600,'新罗区',159,3),(1601,'长汀县',159,3),(1602,'永定县',159,3),(1603,'上杭县',159,3),(1604,'武平县',159,3),(1605,'连城县',159,3),(1606,'漳平市',159,3),(1607,'市辖区',160,3),(1608,'蕉城区',160,3),(1609,'霞浦县',160,3),(1610,'古田县',160,3),(1611,'屏南县',160,3),(1612,'寿宁县',160,3),(1613,'周宁县',160,3),(1614,'柘荣县',160,3),(1615,'福安市',160,3),(1616,'福鼎市',160,3),(1617,'市辖区',161,3),(1618,'东湖区',161,3),(1619,'西湖区',161,3),(1620,'青云谱区',161,3),(1621,'湾里区',161,3),(1622,'青山湖区',161,3),(1623,'南昌县',161,3),(1624,'新建县',161,3),(1625,'安义县',161,3),(1626,'进贤县',161,3),(1627,'市辖区',162,3),(1628,'昌江区',162,3),(1629,'珠山区',162,3),(1630,'浮梁县',162,3),(1631,'乐平市',162,3),(1632,'市辖区',163,3),(1633,'安源区',163,3),(1634,'湘东区',163,3),(1635,'莲花县',163,3),(1636,'上栗县',163,3),(1637,'芦溪县',163,3),(1638,'市辖区',164,3),(1639,'庐山区',164,3),(1640,'浔阳区',164,3),(1641,'九江县',164,3),(1642,'武宁县',164,3),(1643,'修水县',164,3),(1644,'永修县',164,3),(1645,'德安县',164,3),(1646,'星子县',164,3),(1647,'都昌县',164,3),(1648,'湖口县',164,3),(1649,'彭泽县',164,3),(1650,'瑞昌市',164,3),(1651,'市辖区',165,3),(1652,'渝水区',165,3),(1653,'分宜县',165,3),(1654,'市辖区',166,3),(1655,'月湖区',166,3),(1656,'余江县',166,3),(1657,'贵溪市',166,3),(1658,'市辖区',167,3),(1659,'章贡区',167,3),(1660,'赣　县',167,3),(1661,'信丰县',167,3),(1662,'大余县',167,3),(1663,'上犹县',167,3),(1664,'崇义县',167,3),(1665,'安远县',167,3),(1666,'龙南县',167,3),(1667,'定南县',167,3),(1668,'全南县',167,3),(1669,'宁都县',167,3),(1670,'于都县',167,3),(1671,'兴国县',167,3),(1672,'会昌县',167,3),(1673,'寻乌县',167,3),(1674,'石城县',167,3),(1675,'瑞金市',167,3),(1676,'南康市',167,3),(1677,'市辖区',168,3),(1678,'吉州区',168,3),(1679,'青原区',168,3),(1680,'吉安县',168,3),(1681,'吉水县',168,3),(1682,'峡江县',168,3),(1683,'新干县',168,3),(1684,'永丰县',168,3),(1685,'泰和县',168,3),(1686,'遂川县',168,3),(1687,'万安县',168,3),(1688,'安福县',168,3),(1689,'永新县',168,3),(1690,'井冈山市',168,3),(1691,'市辖区',169,3),(1692,'袁州区',169,3),(1693,'奉新县',169,3),(1694,'万载县',169,3),(1695,'上高县',169,3),(1696,'宜丰县',169,3),(1697,'靖安县',169,3),(1698,'铜鼓县',169,3),(1699,'丰城市',169,3),(1700,'樟树市',169,3),(1701,'高安市',169,3),(1702,'市辖区',170,3),(1703,'临川区',170,3),(1704,'南城县',170,3),(1705,'黎川县',170,3),(1706,'南丰县',170,3),(1707,'崇仁县',170,3),(1708,'乐安县',170,3),(1709,'宜黄县',170,3),(1710,'金溪县',170,3),(1711,'资溪县',170,3),(1712,'东乡县',170,3),(1713,'广昌县',170,3),(1714,'市辖区',171,3),(1715,'信州区',171,3),(1716,'上饶县',171,3),(1717,'广丰县',171,3),(1718,'玉山县',171,3),(1719,'铅山县',171,3),(1720,'横峰县',171,3),(1721,'弋阳县',171,3),(1722,'余干县',171,3),(1723,'鄱阳县',171,3),(1724,'万年县',171,3),(1725,'婺源县',171,3),(1726,'德兴市',171,3),(1727,'市辖区',172,3),(1728,'历下区',172,3),(1729,'市中区',172,3),(1730,'槐荫区',172,3),(1731,'天桥区',172,3),(1732,'历城区',172,3),(1733,'长清区',172,3),(1734,'平阴县',172,3),(1735,'济阳县',172,3),(1736,'商河县',172,3),(1737,'章丘市',172,3),(1738,'市辖区',173,3),(1739,'市南区',173,3),(1740,'市北区',173,3),(1741,'四方区',173,3),(1742,'黄岛区',173,3),(1743,'崂山区',173,3),(1744,'李沧区',173,3),(1745,'城阳区',173,3),(1746,'胶州市',173,3),(1747,'即墨市',173,3),(1748,'平度市',173,3),(1749,'胶南市',173,3),(1750,'莱西市',173,3),(1751,'市辖区',174,3),(1752,'淄川区',174,3),(1753,'张店区',174,3),(1754,'博山区',174,3),(1755,'临淄区',174,3),(1756,'周村区',174,3),(1757,'桓台县',174,3),(1758,'高青县',174,3),(1759,'沂源县',174,3),(1760,'市辖区',175,3),(1761,'市中区',175,3),(1762,'薛城区',175,3),(1763,'峄城区',175,3),(1764,'台儿庄区',175,3),(1765,'山亭区',175,3),(1766,'滕州市',175,3),(1767,'市辖区',176,3),(1768,'东营区',176,3),(1769,'河口区',176,3),(1770,'垦利县',176,3),(1771,'利津县',176,3),(1772,'广饶县',176,3),(1773,'市辖区',177,3),(1774,'芝罘区',177,3),(1775,'福山区',177,3),(1776,'牟平区',177,3),(1777,'莱山区',177,3),(1778,'长岛县',177,3),(1779,'龙口市',177,3),(1780,'莱阳市',177,3),(1781,'莱州市',177,3),(1782,'蓬莱市',177,3),(1783,'招远市',177,3),(1784,'栖霞市',177,3),(1785,'海阳市',177,3),(1786,'市辖区',178,3),(1787,'潍城区',178,3),(1788,'寒亭区',178,3),(1789,'坊子区',178,3),(1790,'奎文区',178,3),(1791,'临朐县',178,3),(1792,'昌乐县',178,3),(1793,'青州市',178,3),(1794,'诸城市',178,3),(1795,'寿光市',178,3),(1796,'安丘市',178,3),(1797,'高密市',178,3),(1798,'昌邑市',178,3),(1799,'市辖区',179,3),(1800,'市中区',179,3),(1801,'任城区',179,3),(1802,'微山县',179,3),(1803,'鱼台县',179,3),(1804,'金乡县',179,3),(1805,'嘉祥县',179,3),(1806,'汶上县',179,3),(1807,'泗水县',179,3),(1808,'梁山县',179,3),(1809,'曲阜市',179,3),(1810,'兖州市',179,3),(1811,'邹城市',179,3),(1812,'市辖区',180,3),(1813,'泰山区',180,3),(1814,'岱岳区',180,3),(1815,'宁阳县',180,3),(1816,'东平县',180,3),(1817,'新泰市',180,3),(1818,'肥城市',180,3),(1819,'市辖区',181,3),(1820,'环翠区',181,3),(1821,'文登市',181,3),(1822,'荣成市',181,3),(1823,'乳山市',181,3),(1824,'市辖区',182,3),(1825,'东港区',182,3),(1826,'岚山区',182,3),(1827,'五莲县',182,3),(1828,'莒　县',182,3),(1829,'市辖区',183,3),(1830,'莱城区',183,3),(1831,'钢城区',183,3),(1832,'市辖区',184,3),(1833,'兰山区',184,3),(1834,'罗庄区',184,3),(1835,'河东区',184,3),(1836,'沂南县',184,3),(1837,'郯城县',184,3),(1838,'沂水县',184,3),(1839,'苍山县',184,3),(1840,'费　县',184,3),(1841,'平邑县',184,3),(1842,'莒南县',184,3),(1843,'蒙阴县',184,3),(1844,'临沭县',184,3),(1845,'市辖区',185,3),(1846,'德城区',185,3),(1847,'陵　县',185,3),(1848,'宁津县',185,3),(1849,'庆云县',185,3),(1850,'临邑县',185,3),(1851,'齐河县',185,3),(1852,'平原县',185,3),(1853,'夏津县',185,3),(1854,'武城县',185,3),(1855,'乐陵市',185,3),(1856,'禹城市',185,3),(1857,'市辖区',186,3),(1858,'东昌府区',186,3),(1859,'阳谷县',186,3),(1860,'莘　县',186,3),(1861,'茌平县',186,3),(1862,'东阿县',186,3),(1863,'冠　县',186,3),(1864,'高唐县',186,3),(1865,'临清市',186,3),(1866,'市辖区',187,3),(1867,'滨城区',187,3),(1868,'惠民县',187,3),(1869,'阳信县',187,3),(1870,'无棣县',187,3),(1871,'沾化县',187,3),(1872,'博兴县',187,3),(1873,'邹平县',187,3),(1874,'市辖区',188,3),(1875,'牡丹区',188,3),(1876,'曹　县',188,3),(1877,'单　县',188,3),(1878,'成武县',188,3),(1879,'巨野县',188,3),(1880,'郓城县',188,3),(1881,'鄄城县',188,3),(1882,'定陶县',188,3),(1883,'东明县',188,3),(1884,'市辖区',189,3),(1885,'中原区',189,3),(1886,'二七区',189,3),(1887,'管城回族区',189,3),(1888,'金水区',189,3),(1889,'上街区',189,3),(1890,'邙山区',189,3),(1891,'中牟县',189,3),(1892,'巩义市',189,3),(1893,'荥阳市',189,3),(1894,'新密市',189,3),(1895,'新郑市',189,3),(1896,'登封市',189,3),(1897,'市辖区',190,3),(1898,'龙亭区',190,3),(1899,'顺河回族区',190,3),(1900,'鼓楼区',190,3),(1901,'南关区',190,3),(1902,'郊　区',190,3),(1903,'杞　县',190,3),(1904,'通许县',190,3),(1905,'尉氏县',190,3),(1906,'开封县',190,3),(1907,'兰考县',190,3),(1908,'市辖区',191,3),(1909,'老城区',191,3),(1910,'西工区',191,3),(1911,'廛河回族区',191,3),(1912,'涧西区',191,3),(1913,'吉利区',191,3),(1914,'洛龙区',191,3),(1915,'孟津县',191,3),(1916,'新安县',191,3),(1917,'栾川县',191,3),(1918,'嵩　县',191,3),(1919,'汝阳县',191,3),(1920,'宜阳县',191,3),(1921,'洛宁县',191,3),(1922,'伊川县',191,3),(1923,'偃师市',191,3),(1924,'市辖区',192,3),(1925,'新华区',192,3),(1926,'卫东区',192,3),(1927,'石龙区',192,3),(1928,'湛河区',192,3),(1929,'宝丰县',192,3),(1930,'叶　县',192,3),(1931,'鲁山县',192,3),(1932,'郏　县',192,3),(1933,'舞钢市',192,3),(1934,'汝州市',192,3),(1935,'市辖区',193,3),(1936,'文峰区',193,3),(1937,'北关区',193,3),(1938,'殷都区',193,3),(1939,'龙安区',193,3),(1940,'安阳县',193,3),(1941,'汤阴县',193,3),(1942,'滑　县',193,3),(1943,'内黄县',193,3),(1944,'林州市',193,3),(1945,'市辖区',194,3),(1946,'鹤山区',194,3),(1947,'山城区',194,3),(1948,'淇滨区',194,3),(1949,'浚　县',194,3),(1950,'淇　县',194,3),(1951,'市辖区',195,3),(1952,'红旗区',195,3),(1953,'卫滨区',195,3),(1954,'凤泉区',195,3),(1955,'牧野区',195,3),(1956,'新乡县',195,3),(1957,'获嘉县',195,3),(1958,'原阳县',195,3),(1959,'延津县',195,3),(1960,'封丘县',195,3),(1961,'长垣县',195,3),(1962,'卫辉市',195,3),(1963,'辉县市',195,3),(1964,'市辖区',196,3),(1965,'解放区',196,3),(1966,'中站区',196,3),(1967,'马村区',196,3),(1968,'山阳区',196,3),(1969,'修武县',196,3),(1970,'博爱县',196,3),(1971,'武陟县',196,3),(1972,'温　县',196,3),(1973,'济源市',196,3),(1974,'沁阳市',196,3),(1975,'孟州市',196,3),(1976,'市辖区',197,3),(1977,'华龙区',197,3),(1978,'清丰县',197,3),(1979,'南乐县',197,3),(1980,'范　县',197,3),(1981,'台前县',197,3),(1982,'濮阳县',197,3),(1983,'市辖区',198,3),(1984,'魏都区',198,3),(1985,'许昌县',198,3),(1986,'鄢陵县',198,3),(1987,'襄城县',198,3),(1988,'禹州市',198,3),(1989,'长葛市',198,3),(1990,'市辖区',199,3),(1991,'源汇区',199,3),(1992,'郾城区',199,3),(1993,'召陵区',199,3),(1994,'舞阳县',199,3),(1995,'临颍县',199,3),(1996,'市辖区',200,3),(1997,'湖滨区',200,3),(1998,'渑池县',200,3),(1999,'陕　县',200,3),(2000,'卢氏县',200,3),(2001,'义马市',200,3),(2002,'灵宝市',200,3),(2003,'市辖区',201,3),(2004,'宛城区',201,3),(2005,'卧龙区',201,3),(2006,'南召县',201,3),(2007,'方城县',201,3),(2008,'西峡县',201,3),(2009,'镇平县',201,3),(2010,'内乡县',201,3),(2011,'淅川县',201,3),(2012,'社旗县',201,3),(2013,'唐河县',201,3),(2014,'新野县',201,3),(2015,'桐柏县',201,3),(2016,'邓州市',201,3),(2017,'市辖区',202,3),(2018,'梁园区',202,3),(2019,'睢阳区',202,3),(2020,'民权县',202,3),(2021,'睢　县',202,3),(2022,'宁陵县',202,3),(2023,'柘城县',202,3),(2024,'虞城县',202,3),(2025,'夏邑县',202,3),(2026,'永城市',202,3),(2027,'市辖区',203,3),(2028,'师河区',203,3),(2029,'平桥区',203,3),(2030,'罗山县',203,3),(2031,'光山县',203,3),(2032,'新　县',203,3),(2033,'商城县',203,3),(2034,'固始县',203,3),(2035,'潢川县',203,3),(2036,'淮滨县',203,3),(2037,'息　县',203,3),(2038,'市辖区',204,3),(2039,'川汇区',204,3),(2040,'扶沟县',204,3),(2041,'西华县',204,3),(2042,'商水县',204,3),(2043,'沈丘县',204,3),(2044,'郸城县',204,3),(2045,'淮阳县',204,3),(2046,'太康县',204,3),(2047,'鹿邑县',204,3),(2048,'项城市',204,3),(2049,'市辖区',205,3),(2050,'驿城区',205,3),(2051,'西平县',205,3),(2052,'上蔡县',205,3),(2053,'平舆县',205,3),(2054,'正阳县',205,3),(2055,'确山县',205,3),(2056,'泌阳县',205,3),(2057,'汝南县',205,3),(2058,'遂平县',205,3),(2059,'新蔡县',205,3),(2060,'市辖区',206,3),(2061,'江岸区',206,3),(2062,'江汉区',206,3),(2063,'乔口区',206,3),(2064,'汉阳区',206,3),(2065,'武昌区',206,3),(2066,'青山区',206,3),(2067,'洪山区',206,3),(2068,'东西湖区',206,3),(2069,'汉南区',206,3),(2070,'蔡甸区',206,3),(2071,'江夏区',206,3),(2072,'黄陂区',206,3),(2073,'新洲区',206,3),(2074,'市辖区',207,3),(2075,'黄石港区',207,3),(2076,'西塞山区',207,3),(2077,'下陆区',207,3),(2078,'铁山区',207,3),(2079,'阳新县',207,3),(2080,'大冶市',207,3),(2081,'市辖区',208,3),(2082,'茅箭区',208,3),(2083,'张湾区',208,3),(2084,'郧　县',208,3),(2085,'郧西县',208,3),(2086,'竹山县',208,3),(2087,'竹溪县',208,3),(2088,'房　县',208,3),(2089,'丹江口市',208,3),(2090,'市辖区',209,3),(2091,'西陵区',209,3),(2092,'伍家岗区',209,3),(2093,'点军区',209,3),(2094,'猇亭区',209,3),(2095,'夷陵区',209,3),(2096,'远安县',209,3),(2097,'兴山县',209,3),(2098,'秭归县',209,3),(2099,'长阳土家族自治县',209,3),(2100,'五峰土家族自治县',209,3),(2101,'宜都市',209,3),(2102,'当阳市',209,3),(2103,'枝江市',209,3),(2104,'市辖区',210,3),(2105,'襄城区',210,3),(2106,'樊城区',210,3),(2107,'襄阳区',210,3),(2108,'南漳县',210,3),(2109,'谷城县',210,3),(2110,'保康县',210,3),(2111,'老河口市',210,3),(2112,'枣阳市',210,3),(2113,'宜城市',210,3),(2114,'市辖区',211,3),(2115,'梁子湖区',211,3),(2116,'华容区',211,3),(2117,'鄂城区',211,3),(2118,'市辖区',212,3),(2119,'东宝区',212,3),(2120,'掇刀区',212,3),(2121,'京山县',212,3),(2122,'沙洋县',212,3),(2123,'钟祥市',212,3),(2124,'市辖区',213,3),(2125,'孝南区',213,3),(2126,'孝昌县',213,3),(2127,'大悟县',213,3),(2128,'云梦县',213,3),(2129,'应城市',213,3),(2130,'安陆市',213,3),(2131,'汉川市',213,3),(2132,'市辖区',214,3),(2133,'沙市区',214,3),(2134,'荆州区',214,3),(2135,'公安县',214,3),(2136,'监利县',214,3),(2137,'江陵县',214,3),(2138,'石首市',214,3),(2139,'洪湖市',214,3),(2140,'松滋市',214,3),(2141,'市辖区',215,3),(2142,'黄州区',215,3),(2143,'团风县',215,3),(2144,'红安县',215,3),(2145,'罗田县',215,3),(2146,'英山县',215,3),(2147,'浠水县',215,3),(2148,'蕲春县',215,3),(2149,'黄梅县',215,3),(2150,'麻城市',215,3),(2151,'武穴市',215,3),(2152,'市辖区',216,3),(2153,'咸安区',216,3),(2154,'嘉鱼县',216,3),(2155,'通城县',216,3),(2156,'崇阳县',216,3),(2157,'通山县',216,3),(2158,'赤壁市',216,3),(2159,'市辖区',217,3),(2160,'曾都区',217,3),(2161,'广水市',217,3),(2162,'恩施市',218,3),(2163,'利川市',218,3),(2164,'建始县',218,3),(2165,'巴东县',218,3),(2166,'宣恩县',218,3),(2167,'咸丰县',218,3),(2168,'来凤县',218,3),(2169,'鹤峰县',218,3),(2170,'仙桃市',219,3),(2171,'潜江市',219,3),(2172,'天门市',219,3),(2173,'神农架林区',219,3),(2174,'市辖区',220,3),(2175,'芙蓉区',220,3),(2176,'天心区',220,3),(2177,'岳麓区',220,3),(2178,'开福区',220,3),(2179,'雨花区',220,3),(2180,'长沙县',220,3),(2181,'望城县',220,3),(2182,'宁乡县',220,3),(2183,'浏阳市',220,3),(2184,'市辖区',221,3),(2185,'荷塘区',221,3),(2186,'芦淞区',221,3),(2187,'石峰区',221,3),(2188,'天元区',221,3),(2189,'株洲县',221,3),(2190,'攸　县',221,3),(2191,'茶陵县',221,3),(2192,'炎陵县',221,3),(2193,'醴陵市',221,3),(2194,'市辖区',222,3),(2195,'雨湖区',222,3),(2196,'岳塘区',222,3),(2197,'湘潭县',222,3),(2198,'湘乡市',222,3),(2199,'韶山市',222,3),(2200,'市辖区',223,3),(2201,'珠晖区',223,3),(2202,'雁峰区',223,3),(2203,'石鼓区',223,3),(2204,'蒸湘区',223,3),(2205,'南岳区',223,3),(2206,'衡阳县',223,3),(2207,'衡南县',223,3),(2208,'衡山县',223,3),(2209,'衡东县',223,3),(2210,'祁东县',223,3),(2211,'耒阳市',223,3),(2212,'常宁市',223,3),(2213,'市辖区',224,3),(2214,'双清区',224,3),(2215,'大祥区',224,3),(2216,'北塔区',224,3),(2217,'邵东县',224,3),(2218,'新邵县',224,3),(2219,'邵阳县',224,3),(2220,'隆回县',224,3),(2221,'洞口县',224,3),(2222,'绥宁县',224,3),(2223,'新宁县',224,3),(2224,'城步苗族自治县',224,3),(2225,'武冈市',224,3),(2226,'市辖区',225,3),(2227,'岳阳楼区',225,3),(2228,'云溪区',225,3),(2229,'君山区',225,3),(2230,'岳阳县',225,3),(2231,'华容县',225,3),(2232,'湘阴县',225,3),(2233,'平江县',225,3),(2234,'汨罗市',225,3),(2235,'临湘市',225,3),(2236,'市辖区',226,3),(2237,'武陵区',226,3),(2238,'鼎城区',226,3),(2239,'安乡县',226,3),(2240,'汉寿县',226,3),(2241,'澧　县',226,3),(2242,'临澧县',226,3),(2243,'桃源县',226,3),(2244,'石门县',226,3),(2245,'津市市',226,3),(2246,'市辖区',227,3),(2247,'永定区',227,3),(2248,'武陵源区',227,3),(2249,'慈利县',227,3),(2250,'桑植县',227,3),(2251,'市辖区',228,3),(2252,'资阳区',228,3),(2253,'赫山区',228,3),(2254,'南　县',228,3),(2255,'桃江县',228,3),(2256,'安化县',228,3),(2257,'沅江市',228,3),(2258,'市辖区',229,3),(2259,'北湖区',229,3),(2260,'苏仙区',229,3),(2261,'桂阳县',229,3),(2262,'宜章县',229,3),(2263,'永兴县',229,3),(2264,'嘉禾县',229,3),(2265,'临武县',229,3),(2266,'汝城县',229,3),(2267,'桂东县',229,3),(2268,'安仁县',229,3),(2269,'资兴市',229,3),(2270,'市辖区',230,3),(2271,'芝山区',230,3),(2272,'冷水滩区',230,3),(2273,'祁阳县',230,3),(2274,'东安县',230,3),(2275,'双牌县',230,3),(2276,'道　县',230,3),(2277,'江永县',230,3),(2278,'宁远县',230,3),(2279,'蓝山县',230,3),(2280,'新田县',230,3),(2281,'江华瑶族自治县',230,3),(2282,'市辖区',231,3),(2283,'鹤城区',231,3),(2284,'中方县',231,3),(2285,'沅陵县',231,3),(2286,'辰溪县',231,3),(2287,'溆浦县',231,3),(2288,'会同县',231,3),(2289,'麻阳苗族自治县',231,3),(2290,'新晃侗族自治县',231,3),(2291,'芷江侗族自治县',231,3),(2292,'靖州苗族侗族自治县',231,3),(2293,'通道侗族自治县',231,3),(2294,'洪江市',231,3),(2295,'市辖区',232,3),(2296,'娄星区',232,3),(2297,'双峰县',232,3),(2298,'新化县',232,3),(2299,'冷水江市',232,3),(2300,'涟源市',232,3),(2301,'吉首市',233,3),(2302,'泸溪县',233,3),(2303,'凤凰县',233,3),(2304,'花垣县',233,3),(2305,'保靖县',233,3),(2306,'古丈县',233,3),(2307,'永顺县',233,3),(2308,'龙山县',233,3),(2309,'市辖区',234,3),(2310,'东山区',234,3),(2311,'荔湾区',234,3),(2312,'越秀区',234,3),(2313,'海珠区',234,3),(2314,'天河区',234,3),(2315,'芳村区',234,3),(2316,'白云区',234,3),(2317,'黄埔区',234,3),(2318,'番禺区',234,3),(2319,'花都区',234,3),(2320,'增城市',234,3),(2321,'从化市',234,3),(2322,'市辖区',235,3),(2323,'武江区',235,3),(2324,'浈江区',235,3),(2325,'曲江区',235,3),(2326,'始兴县',235,3),(2327,'仁化县',235,3),(2328,'翁源县',235,3),(2329,'乳源瑶族自治县',235,3),(2330,'新丰县',235,3),(2331,'乐昌市',235,3),(2332,'南雄市',235,3),(2333,'市辖区',236,3),(2334,'罗湖区',236,3),(2335,'福田区',236,3),(2336,'南山区',236,3),(2337,'宝安区',236,3),(2338,'龙岗区',236,3),(2339,'盐田区',236,3),(2340,'市辖区',237,3),(2341,'香洲区',237,3),(2342,'斗门区',237,3),(2343,'金湾区',237,3),(2344,'市辖区',238,3),(2345,'龙湖区',238,3),(2346,'金平区',238,3),(2347,'濠江区',238,3),(2348,'潮阳区',238,3),(2349,'潮南区',238,3),(2350,'澄海区',238,3),(2351,'南澳县',238,3),(2352,'市辖区',239,3),(2353,'禅城区',239,3),(2354,'南海区',239,3),(2355,'顺德区',239,3),(2356,'三水区',239,3),(2357,'高明区',239,3),(2358,'市辖区',240,3),(2359,'蓬江区',240,3),(2360,'江海区',240,3),(2361,'新会区',240,3),(2362,'台山市',240,3),(2363,'开平市',240,3),(2364,'鹤山市',240,3),(2365,'恩平市',240,3),(2366,'市辖区',241,3),(2367,'赤坎区',241,3),(2368,'霞山区',241,3),(2369,'坡头区',241,3),(2370,'麻章区',241,3),(2371,'遂溪县',241,3),(2372,'徐闻县',241,3),(2373,'廉江市',241,3),(2374,'雷州市',241,3),(2375,'吴川市',241,3),(2376,'市辖区',242,3),(2377,'茂南区',242,3),(2378,'茂港区',242,3),(2379,'电白县',242,3),(2380,'高州市',242,3),(2381,'化州市',242,3),(2382,'信宜市',242,3),(2383,'市辖区',243,3),(2384,'端州区',243,3),(2385,'鼎湖区',243,3),(2386,'广宁县',243,3),(2387,'怀集县',243,3),(2388,'封开县',243,3),(2389,'德庆县',243,3),(2390,'高要市',243,3),(2391,'四会市',243,3),(2392,'市辖区',244,3),(2393,'惠城区',244,3),(2394,'惠阳区',244,3),(2395,'博罗县',244,3),(2396,'惠东县',244,3),(2397,'龙门县',244,3),(2398,'市辖区',245,3),(2399,'梅江区',245,3),(2400,'梅　县',245,3),(2401,'大埔县',245,3),(2402,'丰顺县',245,3),(2403,'五华县',245,3),(2404,'平远县',245,3),(2405,'蕉岭县',245,3),(2406,'兴宁市',245,3),(2407,'市辖区',246,3),(2408,'城　区',246,3),(2409,'海丰县',246,3),(2410,'陆河县',246,3),(2411,'陆丰市',246,3),(2412,'市辖区',247,3),(2413,'源城区',247,3),(2414,'紫金县',247,3),(2415,'龙川县',247,3),(2416,'连平县',247,3),(2417,'和平县',247,3),(2418,'东源县',247,3),(2419,'市辖区',248,3),(2420,'江城区',248,3),(2421,'阳西县',248,3),(2422,'阳东县',248,3),(2423,'阳春市',248,3),(2424,'市辖区',249,3),(2425,'清城区',249,3),(2426,'佛冈县',249,3),(2427,'阳山县',249,3),(2428,'连山壮族瑶族自治县',249,3),(2429,'连南瑶族自治县',249,3),(2430,'清新县',249,3),(2431,'英德市',249,3),(2432,'连州市',249,3),(2433,'市辖区',252,3),(2434,'湘桥区',252,3),(2435,'潮安县',252,3),(2436,'饶平县',252,3),(2437,'市辖区',253,3),(2438,'榕城区',253,3),(2439,'揭东县',253,3),(2440,'揭西县',253,3),(2441,'惠来县',253,3),(2442,'普宁市',253,3),(2443,'市辖区',254,3),(2444,'云城区',254,3),(2445,'新兴县',254,3),(2446,'郁南县',254,3),(2447,'云安县',254,3),(2448,'罗定市',254,3),(2449,'市辖区',255,3),(2450,'兴宁区',255,3),(2451,'青秀区',255,3),(2452,'江南区',255,3),(2453,'西乡塘区',255,3),(2454,'良庆区',255,3),(2455,'邕宁区',255,3),(2456,'武鸣县',255,3),(2457,'隆安县',255,3),(2458,'马山县',255,3),(2459,'上林县',255,3),(2460,'宾阳县',255,3),(2461,'横　县',255,3),(2462,'市辖区',256,3),(2463,'城中区',256,3),(2464,'鱼峰区',256,3),(2465,'柳南区',256,3),(2466,'柳北区',256,3),(2467,'柳江县',256,3),(2468,'柳城县',256,3),(2469,'鹿寨县',256,3),(2470,'融安县',256,3),(2471,'融水苗族自治县',256,3),(2472,'三江侗族自治县',256,3),(2473,'市辖区',257,3),(2474,'秀峰区',257,3),(2475,'叠彩区',257,3),(2476,'象山区',257,3),(2477,'七星区',257,3),(2478,'雁山区',257,3),(2479,'阳朔县',257,3),(2480,'临桂县',257,3),(2481,'灵川县',257,3),(2482,'全州县',257,3),(2483,'兴安县',257,3),(2484,'永福县',257,3),(2485,'灌阳县',257,3),(2486,'龙胜各族自治县',257,3),(2487,'资源县',257,3),(2488,'平乐县',257,3),(2489,'荔蒲县',257,3),(2490,'恭城瑶族自治县',257,3),(2491,'市辖区',258,3),(2492,'万秀区',258,3),(2493,'蝶山区',258,3),(2494,'长洲区',258,3),(2495,'苍梧县',258,3),(2496,'藤　县',258,3),(2497,'蒙山县',258,3),(2498,'岑溪市',258,3),(2499,'市辖区',259,3),(2500,'海城区',259,3),(2501,'银海区',259,3),(2502,'铁山港区',259,3),(2503,'合浦县',259,3),(2504,'市辖区',260,3),(2505,'港口区',260,3),(2506,'防城区',260,3),(2507,'上思县',260,3),(2508,'东兴市',260,3),(2509,'市辖区',261,3),(2510,'钦南区',261,3),(2511,'钦北区',261,3),(2512,'灵山县',261,3),(2513,'浦北县',261,3),(2514,'市辖区',262,3),(2515,'港北区',262,3),(2516,'港南区',262,3),(2517,'覃塘区',262,3),(2518,'平南县',262,3),(2519,'桂平市',262,3),(2520,'市辖区',263,3),(2521,'玉州区',263,3),(2522,'容　县',263,3),(2523,'陆川县',263,3),(2524,'博白县',263,3),(2525,'兴业县',263,3),(2526,'北流市',263,3),(2527,'市辖区',264,3),(2528,'右江区',264,3),(2529,'田阳县',264,3),(2530,'田东县',264,3),(2531,'平果县',264,3),(2532,'德保县',264,3),(2533,'靖西县',264,3),(2534,'那坡县',264,3),(2535,'凌云县',264,3),(2536,'乐业县',264,3),(2537,'田林县',264,3),(2538,'西林县',264,3),(2539,'隆林各族自治县',264,3),(2540,'市辖区',265,3),(2541,'八步区',265,3),(2542,'昭平县',265,3),(2543,'钟山县',265,3),(2544,'富川瑶族自治县',265,3),(2545,'市辖区',266,3),(2546,'金城江区',266,3),(2547,'南丹县',266,3),(2548,'天峨县',266,3),(2549,'凤山县',266,3),(2550,'东兰县',266,3),(2551,'罗城仫佬族自治县',266,3),(2552,'环江毛南族自治县',266,3),(2553,'巴马瑶族自治县',266,3),(2554,'都安瑶族自治县',266,3),(2555,'大化瑶族自治县',266,3),(2556,'宜州市',266,3),(2557,'市辖区',267,3),(2558,'兴宾区',267,3),(2559,'忻城县',267,3),(2560,'象州县',267,3),(2561,'武宣县',267,3),(2562,'金秀瑶族自治县',267,3),(2563,'合山市',267,3),(2564,'市辖区',268,3),(2565,'江洲区',268,3),(2566,'扶绥县',268,3),(2567,'宁明县',268,3),(2568,'龙州县',268,3),(2569,'大新县',268,3),(2570,'天等县',268,3),(2571,'凭祥市',268,3),(2572,'市辖区',269,3),(2573,'秀英区',269,3),(2574,'龙华区',269,3),(2575,'琼山区',269,3),(2576,'美兰区',269,3),(2577,'市辖区',270,3),(2578,'五指山市',271,3),(2579,'琼海市',271,3),(2580,'儋州市',271,3),(2581,'文昌市',271,3),(2582,'万宁市',271,3),(2583,'东方市',271,3),(2584,'定安县',271,3),(2585,'屯昌县',271,3),(2586,'澄迈县',271,3),(2587,'临高县',271,3),(2588,'白沙黎族自治县',271,3),(2589,'昌江黎族自治县',271,3),(2590,'乐东黎族自治县',271,3),(2591,'陵水黎族自治县',271,3),(2592,'保亭黎族苗族自治县',271,3),(2593,'琼中黎族苗族自治县',271,3),(2594,'西沙群岛',271,3),(2595,'南沙群岛',271,3),(2596,'中沙群岛的岛礁及其海域',271,3),(2597,'万州区',272,3),(2598,'涪陵区',272,3),(2599,'渝中区',272,3),(2600,'大渡口区',272,3),(2601,'江北区',272,3),(2602,'沙坪坝区',272,3),(2603,'九龙坡区',272,3),(2604,'南岸区',272,3),(2605,'北碚区',272,3),(2606,'万盛区',272,3),(2607,'双桥区',272,3),(2608,'渝北区',272,3),(2609,'巴南区',272,3),(2610,'黔江区',272,3),(2611,'长寿区',272,3),(2612,'綦江县',273,3),(2613,'潼南县',273,3),(2614,'铜梁县',273,3),(2615,'大足县',273,3),(2616,'荣昌县',273,3),(2617,'璧山县',273,3),(2618,'梁平县',273,3),(2619,'城口县',273,3),(2620,'丰都县',273,3),(2621,'垫江县',273,3),(2622,'武隆县',273,3),(2623,'忠　县',273,3),(2624,'开　县',273,3),(2625,'云阳县',273,3),(2626,'奉节县',273,3),(2627,'巫山县',273,3),(2628,'巫溪县',273,3),(2629,'石柱土家族自治县',273,3),(2630,'秀山土家族苗族自治县',273,3),(2631,'酉阳土家族苗族自治县',273,3),(2632,'彭水苗族土家族自治县',273,3),(2633,'江津市',274,3),(2634,'合川市',274,3),(2635,'永川市',274,3),(2636,'南川市',274,3),(2637,'市辖区',275,3),(2638,'锦江区',275,3),(2639,'青羊区',275,3),(2640,'金牛区',275,3),(2641,'武侯区',275,3),(2642,'成华区',275,3),(2643,'龙泉驿区',275,3),(2644,'青白江区',275,3),(2645,'新都区',275,3),(2646,'温江区',275,3),(2647,'金堂县',275,3),(2648,'双流县',275,3),(2649,'郫　县',275,3),(2650,'大邑县',275,3),(2651,'蒲江县',275,3),(2652,'新津县',275,3),(2653,'都江堰市',275,3),(2654,'彭州市',275,3),(2655,'邛崃市',275,3),(2656,'崇州市',275,3),(2657,'市辖区',276,3),(2658,'自流井区',276,3),(2659,'贡井区',276,3),(2660,'大安区',276,3),(2661,'沿滩区',276,3),(2662,'荣　县',276,3),(2663,'富顺县',276,3),(2664,'市辖区',277,3),(2665,'东　区',277,3),(2666,'西　区',277,3),(2667,'仁和区',277,3),(2668,'米易县',277,3),(2669,'盐边县',277,3),(2670,'市辖区',278,3),(2671,'江阳区',278,3),(2672,'纳溪区',278,3),(2673,'龙马潭区',278,3),(2674,'泸　县',278,3),(2675,'合江县',278,3),(2676,'叙永县',278,3),(2677,'古蔺县',278,3),(2678,'市辖区',279,3),(2679,'旌阳区',279,3),(2680,'中江县',279,3),(2681,'罗江县',279,3),(2682,'广汉市',279,3),(2683,'什邡市',279,3),(2684,'绵竹市',279,3),(2685,'市辖区',280,3),(2686,'涪城区',280,3),(2687,'游仙区',280,3),(2688,'三台县',280,3),(2689,'盐亭县',280,3),(2690,'安　县',280,3),(2691,'梓潼县',280,3),(2692,'北川羌族自治县',280,3),(2693,'平武县',280,3),(2694,'江油市',280,3),(2695,'市辖区',281,3),(2696,'市中区',281,3),(2697,'元坝区',281,3),(2698,'朝天区',281,3),(2699,'旺苍县',281,3),(2700,'青川县',281,3),(2701,'剑阁县',281,3),(2702,'苍溪县',281,3),(2703,'市辖区',282,3),(2704,'船山区',282,3),(2705,'安居区',282,3),(2706,'蓬溪县',282,3),(2707,'射洪县',282,3),(2708,'大英县',282,3),(2709,'市辖区',283,3),(2710,'市中区',283,3),(2711,'东兴区',283,3),(2712,'威远县',283,3),(2713,'资中县',283,3),(2714,'隆昌县',283,3),(2715,'市辖区',284,3),(2716,'市中区',284,3),(2717,'沙湾区',284,3),(2718,'五通桥区',284,3),(2719,'金口河区',284,3),(2720,'犍为县',284,3),(2721,'井研县',284,3),(2722,'夹江县',284,3),(2723,'沐川县',284,3),(2724,'峨边彝族自治县',284,3),(2725,'马边彝族自治县',284,3),(2726,'峨眉山市',284,3),(2727,'市辖区',285,3),(2728,'顺庆区',285,3),(2729,'高坪区',285,3),(2730,'嘉陵区',285,3),(2731,'南部县',285,3),(2732,'营山县',285,3),(2733,'蓬安县',285,3),(2734,'仪陇县',285,3),(2735,'西充县',285,3),(2736,'阆中市',285,3),(2737,'市辖区',286,3),(2738,'东坡区',286,3),(2739,'仁寿县',286,3),(2740,'彭山县',286,3),(2741,'洪雅县',286,3),(2742,'丹棱县',286,3),(2743,'青神县',286,3),(2744,'市辖区',287,3),(2745,'翠屏区',287,3),(2746,'宜宾县',287,3),(2747,'南溪县',287,3),(2748,'江安县',287,3),(2749,'长宁县',287,3),(2750,'高　县',287,3),(2751,'珙　县',287,3),(2752,'筠连县',287,3),(2753,'兴文县',287,3),(2754,'屏山县',287,3),(2755,'市辖区',288,3),(2756,'广安区',288,3),(2757,'岳池县',288,3),(2758,'武胜县',288,3),(2759,'邻水县',288,3),(2760,'华莹市',288,3),(2761,'市辖区',289,3),(2762,'通川区',289,3),(2763,'达　县',289,3),(2764,'宣汉县',289,3),(2765,'开江县',289,3),(2766,'大竹县',289,3),(2767,'渠　县',289,3),(2768,'万源市',289,3),(2769,'市辖区',290,3),(2770,'雨城区',290,3),(2771,'名山县',290,3),(2772,'荥经县',290,3),(2773,'汉源县',290,3),(2774,'石棉县',290,3),(2775,'天全县',290,3),(2776,'芦山县',290,3),(2777,'宝兴县',290,3),(2778,'市辖区',291,3),(2779,'巴州区',291,3),(2780,'通江县',291,3),(2781,'南江县',291,3),(2782,'平昌县',291,3),(2783,'市辖区',292,3),(2784,'雁江区',292,3),(2785,'安岳县',292,3),(2786,'乐至县',292,3),(2787,'简阳市',292,3),(2788,'汶川县',293,3),(2789,'理　县',293,3),(2790,'茂　县',293,3),(2791,'松潘县',293,3),(2792,'九寨沟县',293,3),(2793,'金川县',293,3),(2794,'小金县',293,3),(2795,'黑水县',293,3),(2796,'马尔康县',293,3),(2797,'壤塘县',293,3),(2798,'阿坝县',293,3),(2799,'若尔盖县',293,3),(2800,'红原县',293,3),(2801,'康定县',294,3),(2802,'泸定县',294,3),(2803,'丹巴县',294,3),(2804,'九龙县',294,3),(2805,'雅江县',294,3),(2806,'道孚县',294,3),(2807,'炉霍县',294,3),(2808,'甘孜县',294,3),(2809,'新龙县',294,3),(2810,'德格县',294,3),(2811,'白玉县',294,3),(2812,'石渠县',294,3),(2813,'色达县',294,3),(2814,'理塘县',294,3),(2815,'巴塘县',294,3),(2816,'乡城县',294,3),(2817,'稻城县',294,3),(2818,'得荣县',294,3),(2819,'西昌市',295,3),(2820,'木里藏族自治县',295,3),(2821,'盐源县',295,3),(2822,'德昌县',295,3),(2823,'会理县',295,3),(2824,'会东县',295,3),(2825,'宁南县',295,3),(2826,'普格县',295,3),(2827,'布拖县',295,3),(2828,'金阳县',295,3),(2829,'昭觉县',295,3),(2830,'喜德县',295,3),(2831,'冕宁县',295,3),(2832,'越西县',295,3),(2833,'甘洛县',295,3),(2834,'美姑县',295,3),(2835,'雷波县',295,3),(2836,'市辖区',296,3),(2837,'南明区',296,3),(2838,'云岩区',296,3),(2839,'花溪区',296,3),(2840,'乌当区',296,3),(2841,'白云区',296,3),(2842,'小河区',296,3),(2843,'开阳县',296,3),(2844,'息烽县',296,3),(2845,'修文县',296,3),(2846,'清镇市',296,3),(2847,'钟山区',297,3),(2848,'六枝特区',297,3),(2849,'水城县',297,3),(2850,'盘　县',297,3),(2851,'市辖区',298,3),(2852,'红花岗区',298,3),(2853,'汇川区',298,3),(2854,'遵义县',298,3),(2855,'桐梓县',298,3),(2856,'绥阳县',298,3),(2857,'正安县',298,3),(2858,'道真仡佬族苗族自治县',298,3),(2859,'务川仡佬族苗族自治县',298,3),(2860,'凤冈县',298,3),(2861,'湄潭县',298,3),(2862,'余庆县',298,3),(2863,'习水县',298,3),(2864,'赤水市',298,3),(2865,'仁怀市',298,3),(2866,'市辖区',299,3),(2867,'西秀区',299,3),(2868,'平坝县',299,3),(2869,'普定县',299,3),(2870,'镇宁布依族苗族自治县',299,3),(2871,'关岭布依族苗族自治县',299,3),(2872,'紫云苗族布依族自治县',299,3),(2873,'铜仁市',300,3),(2874,'江口县',300,3),(2875,'玉屏侗族自治县',300,3),(2876,'石阡县',300,3),(2877,'思南县',300,3),(2878,'印江土家族苗族自治县',300,3),(2879,'德江县',300,3),(2880,'沿河土家族自治县',300,3),(2881,'松桃苗族自治县',300,3),(2882,'万山特区',300,3),(2883,'兴义市',301,3),(2884,'兴仁县',301,3),(2885,'普安县',301,3),(2886,'晴隆县',301,3),(2887,'贞丰县',301,3),(2888,'望谟县',301,3),(2889,'册亨县',301,3),(2890,'安龙县',301,3),(2891,'毕节市',302,3),(2892,'大方县',302,3),(2893,'黔西县',302,3),(2894,'金沙县',302,3),(2895,'织金县',302,3),(2896,'纳雍县',302,3),(2897,'威宁彝族回族苗族自治县',302,3),(2898,'赫章县',302,3),(2899,'凯里市',303,3),(2900,'黄平县',303,3),(2901,'施秉县',303,3),(2902,'三穗县',303,3),(2903,'镇远县',303,3),(2904,'岑巩县',303,3),(2905,'天柱县',303,3),(2906,'锦屏县',303,3),(2907,'剑河县',303,3),(2908,'台江县',303,3),(2909,'黎平县',303,3),(2910,'榕江县',303,3),(2911,'从江县',303,3),(2912,'雷山县',303,3),(2913,'麻江县',303,3),(2914,'丹寨县',303,3),(2915,'都匀市',304,3),(2916,'福泉市',304,3),(2917,'荔波县',304,3),(2918,'贵定县',304,3),(2919,'瓮安县',304,3),(2920,'独山县',304,3),(2921,'平塘县',304,3),(2922,'罗甸县',304,3),(2923,'长顺县',304,3),(2924,'龙里县',304,3),(2925,'惠水县',304,3),(2926,'三都水族自治县',304,3),(2927,'市辖区',305,3),(2928,'五华区',305,3),(2929,'盘龙区',305,3),(2930,'官渡区',305,3),(2931,'西山区',305,3),(2932,'东川区',305,3),(2933,'呈贡县',305,3),(2934,'晋宁县',305,3),(2935,'富民县',305,3),(2936,'宜良县',305,3),(2937,'石林彝族自治县',305,3),(2938,'嵩明县',305,3),(2939,'禄劝彝族苗族自治县',305,3),(2940,'寻甸回族彝族自治县',305,3),(2941,'安宁市',305,3),(2942,'市辖区',306,3),(2943,'麒麟区',306,3),(2944,'马龙县',306,3),(2945,'陆良县',306,3),(2946,'师宗县',306,3),(2947,'罗平县',306,3),(2948,'富源县',306,3),(2949,'会泽县',306,3),(2950,'沾益县',306,3),(2951,'宣威市',306,3),(2952,'市辖区',307,3),(2953,'红塔区',307,3),(2954,'江川县',307,3),(2955,'澄江县',307,3),(2956,'通海县',307,3),(2957,'华宁县',307,3),(2958,'易门县',307,3),(2959,'峨山彝族自治县',307,3),(2960,'新平彝族傣族自治县',307,3),(2961,'元江哈尼族彝族傣族自治县',307,3),(2962,'市辖区',308,3),(2963,'隆阳区',308,3),(2964,'施甸县',308,3),(2965,'腾冲县',308,3),(2966,'龙陵县',308,3),(2967,'昌宁县',308,3),(2968,'市辖区',309,3),(2969,'昭阳区',309,3),(2970,'鲁甸县',309,3),(2971,'巧家县',309,3),(2972,'盐津县',309,3),(2973,'大关县',309,3),(2974,'永善县',309,3),(2975,'绥江县',309,3),(2976,'镇雄县',309,3),(2977,'彝良县',309,3),(2978,'威信县',309,3),(2979,'水富县',309,3),(2980,'市辖区',310,3),(2981,'古城区',310,3),(2982,'玉龙纳西族自治县',310,3),(2983,'永胜县',310,3),(2984,'华坪县',310,3),(2985,'宁蒗彝族自治县',310,3),(2986,'市辖区',311,3),(2987,'翠云区',311,3),(2988,'普洱哈尼族彝族自治县',311,3),(2989,'墨江哈尼族自治县',311,3),(2990,'景东彝族自治县',311,3),(2991,'景谷傣族彝族自治县',311,3),(2992,'镇沅彝族哈尼族拉祜族自治县',311,3),(2993,'江城哈尼族彝族自治县',311,3),(2994,'孟连傣族拉祜族佤族自治县',311,3),(2995,'澜沧拉祜族自治县',311,3),(2996,'西盟佤族自治县',311,3),(2997,'市辖区',312,3),(2998,'临翔区',312,3),(2999,'凤庆县',312,3),(3000,'云　县',312,3),(3001,'永德县',312,3),(3002,'镇康县',312,3),(3003,'双江拉祜族佤族布朗族傣族自治县',312,3),(3004,'耿马傣族佤族自治县',312,3),(3005,'沧源佤族自治县',312,3),(3006,'楚雄市',313,3),(3007,'双柏县',313,3),(3008,'牟定县',313,3),(3009,'南华县',313,3),(3010,'姚安县',313,3),(3011,'大姚县',313,3),(3012,'永仁县',313,3),(3013,'元谋县',313,3),(3014,'武定县',313,3),(3015,'禄丰县',313,3),(3016,'个旧市',314,3),(3017,'开远市',314,3),(3018,'蒙自县',314,3),(3019,'屏边苗族自治县',314,3),(3020,'建水县',314,3),(3021,'石屏县',314,3),(3022,'弥勒县',314,3),(3023,'泸西县',314,3),(3024,'元阳县',314,3),(3025,'红河县',314,3),(3026,'金平苗族瑶族傣族自治县',314,3),(3027,'绿春县',314,3),(3028,'河口瑶族自治县',314,3),(3029,'文山县',315,3),(3030,'砚山县',315,3),(3031,'西畴县',315,3),(3032,'麻栗坡县',315,3),(3033,'马关县',315,3),(3034,'丘北县',315,3),(3035,'广南县',315,3),(3036,'富宁县',315,3),(3037,'景洪市',316,3),(3038,'勐海县',316,3),(3039,'勐腊县',316,3),(3040,'大理市',317,3),(3041,'漾濞彝族自治县',317,3),(3042,'祥云县',317,3),(3043,'宾川县',317,3),(3044,'弥渡县',317,3),(3045,'南涧彝族自治县',317,3),(3046,'巍山彝族回族自治县',317,3),(3047,'永平县',317,3),(3048,'云龙县',317,3),(3049,'洱源县',317,3),(3050,'剑川县',317,3),(3051,'鹤庆县',317,3),(3052,'瑞丽市',318,3),(3053,'潞西市',318,3),(3054,'梁河县',318,3),(3055,'盈江县',318,3),(3056,'陇川县',318,3),(3057,'泸水县',319,3),(3058,'福贡县',319,3),(3059,'贡山独龙族怒族自治县',319,3),(3060,'兰坪白族普米族自治县',319,3),(3061,'香格里拉县',320,3),(3062,'德钦县',320,3),(3063,'维西傈僳族自治县',320,3),(3064,'市辖区',321,3),(3065,'城关区',321,3),(3066,'林周县',321,3),(3067,'当雄县',321,3),(3068,'尼木县',321,3),(3069,'曲水县',321,3),(3070,'堆龙德庆县',321,3),(3071,'达孜县',321,3),(3072,'墨竹工卡县',321,3),(3073,'昌都县',322,3),(3074,'江达县',322,3),(3075,'贡觉县',322,3),(3076,'类乌齐县',322,3),(3077,'丁青县',322,3),(3078,'察雅县',322,3),(3079,'八宿县',322,3),(3080,'左贡县',322,3),(3081,'芒康县',322,3),(3082,'洛隆县',322,3),(3083,'边坝县',322,3),(3084,'乃东县',323,3),(3085,'扎囊县',323,3),(3086,'贡嘎县',323,3),(3087,'桑日县',323,3),(3088,'琼结县',323,3),(3089,'曲松县',323,3),(3090,'措美县',323,3),(3091,'洛扎县',323,3),(3092,'加查县',323,3),(3093,'隆子县',323,3),(3094,'错那县',323,3),(3095,'浪卡子县',323,3),(3096,'日喀则市',324,3),(3097,'南木林县',324,3),(3098,'江孜县',324,3),(3099,'定日县',324,3),(3100,'萨迦县',324,3),(3101,'拉孜县',324,3),(3102,'昂仁县',324,3),(3103,'谢通门县',324,3),(3104,'白朗县',324,3),(3105,'仁布县',324,3),(3106,'康马县',324,3),(3107,'定结县',324,3),(3108,'仲巴县',324,3),(3109,'亚东县',324,3),(3110,'吉隆县',324,3),(3111,'聂拉木县',324,3),(3112,'萨嘎县',324,3),(3113,'岗巴县',324,3),(3114,'那曲县',325,3),(3115,'嘉黎县',325,3),(3116,'比如县',325,3),(3117,'聂荣县',325,3),(3118,'安多县',325,3),(3119,'申扎县',325,3),(3120,'索　县',325,3),(3121,'班戈县',325,3),(3122,'巴青县',325,3),(3123,'尼玛县',325,3),(3124,'普兰县',326,3),(3125,'札达县',326,3),(3126,'噶尔县',326,3),(3127,'日土县',326,3),(3128,'革吉县',326,3),(3129,'改则县',326,3),(3130,'措勤县',326,3),(3131,'林芝县',327,3),(3132,'工布江达县',327,3),(3133,'米林县',327,3),(3134,'墨脱县',327,3),(3135,'波密县',327,3),(3136,'察隅县',327,3),(3137,'朗　县',327,3),(3138,'市辖区',328,3),(3139,'新城区',328,3),(3140,'碑林区',328,3),(3141,'莲湖区',328,3),(3142,'灞桥区',328,3),(3143,'未央区',328,3),(3144,'雁塔区',328,3),(3145,'阎良区',328,3),(3146,'临潼区',328,3),(3147,'长安区',328,3),(3148,'蓝田县',328,3),(3149,'周至县',328,3),(3150,'户　县',328,3),(3151,'高陵县',328,3),(3152,'市辖区',329,3),(3153,'王益区',329,3),(3154,'印台区',329,3),(3155,'耀州区',329,3),(3156,'宜君县',329,3),(3157,'市辖区',330,3),(3158,'渭滨区',330,3),(3159,'金台区',330,3),(3160,'陈仓区',330,3),(3161,'凤翔县',330,3),(3162,'岐山县',330,3),(3163,'扶风县',330,3),(3164,'眉　县',330,3),(3165,'陇　县',330,3),(3166,'千阳县',330,3),(3167,'麟游县',330,3),(3168,'凤　县',330,3),(3169,'太白县',330,3),(3170,'市辖区',331,3),(3171,'秦都区',331,3),(3172,'杨凌区',331,3),(3173,'渭城区',331,3),(3174,'三原县',331,3),(3175,'泾阳县',331,3),(3176,'乾　县',331,3),(3177,'礼泉县',331,3),(3178,'永寿县',331,3),(3179,'彬　县',331,3),(3180,'长武县',331,3),(3181,'旬邑县',331,3),(3182,'淳化县',331,3),(3183,'武功县',331,3),(3184,'兴平市',331,3),(3185,'市辖区',332,3),(3186,'临渭区',332,3),(3187,'华　县',332,3),(3188,'潼关县',332,3),(3189,'大荔县',332,3),(3190,'合阳县',332,3),(3191,'澄城县',332,3),(3192,'蒲城县',332,3),(3193,'白水县',332,3),(3194,'富平县',332,3),(3195,'韩城市',332,3),(3196,'华阴市',332,3),(3197,'市辖区',333,3),(3198,'宝塔区',333,3),(3199,'延长县',333,3),(3200,'延川县',333,3),(3201,'子长县',333,3),(3202,'安塞县',333,3),(3203,'志丹县',333,3),(3204,'吴旗县',333,3),(3205,'甘泉县',333,3),(3206,'富　县',333,3),(3207,'洛川县',333,3),(3208,'宜川县',333,3),(3209,'黄龙县',333,3),(3210,'黄陵县',333,3),(3211,'市辖区',334,3),(3212,'汉台区',334,3),(3213,'南郑县',334,3),(3214,'城固县',334,3),(3215,'洋　县',334,3),(3216,'西乡县',334,3),(3217,'勉　县',334,3),(3218,'宁强县',334,3),(3219,'略阳县',334,3),(3220,'镇巴县',334,3),(3221,'留坝县',334,3),(3222,'佛坪县',334,3),(3223,'市辖区',335,3),(3224,'榆阳区',335,3),(3225,'神木县',335,3),(3226,'府谷县',335,3),(3227,'横山县',335,3),(3228,'靖边县',335,3),(3229,'定边县',335,3),(3230,'绥德县',335,3),(3231,'米脂县',335,3),(3232,'佳　县',335,3),(3233,'吴堡县',335,3),(3234,'清涧县',335,3),(3235,'子洲县',335,3),(3236,'市辖区',336,3),(3237,'汉滨区',336,3),(3238,'汉阴县',336,3),(3239,'石泉县',336,3),(3240,'宁陕县',336,3),(3241,'紫阳县',336,3),(3242,'岚皋县',336,3),(3243,'平利县',336,3),(3244,'镇坪县',336,3),(3245,'旬阳县',336,3),(3246,'白河县',336,3),(3247,'市辖区',337,3),(3248,'商州区',337,3),(3249,'洛南县',337,3),(3250,'丹凤县',337,3),(3251,'商南县',337,3),(3252,'山阳县',337,3),(3253,'镇安县',337,3),(3254,'柞水县',337,3),(3255,'市辖区',338,3),(3256,'城关区',338,3),(3257,'七里河区',338,3),(3258,'西固区',338,3),(3259,'安宁区',338,3),(3260,'红古区',338,3),(3261,'永登县',338,3),(3262,'皋兰县',338,3),(3263,'榆中县',338,3),(3264,'市辖区',339,3),(3265,'市辖区',340,3),(3266,'金川区',340,3),(3267,'永昌县',340,3),(3268,'市辖区',341,3),(3269,'白银区',341,3),(3270,'平川区',341,3),(3271,'靖远县',341,3),(3272,'会宁县',341,3),(3273,'景泰县',341,3),(3274,'市辖区',342,3),(3275,'秦城区',342,3),(3276,'北道区',342,3),(3277,'清水县',342,3),(3278,'秦安县',342,3),(3279,'甘谷县',342,3),(3280,'武山县',342,3),(3281,'张家川回族自治县',342,3),(3282,'市辖区',343,3),(3283,'凉州区',343,3),(3284,'民勤县',343,3),(3285,'古浪县',343,3),(3286,'天祝藏族自治县',343,3),(3287,'市辖区',344,3),(3288,'甘州区',344,3),(3289,'肃南裕固族自治县',344,3),(3290,'民乐县',344,3),(3291,'临泽县',344,3),(3292,'高台县',344,3),(3293,'山丹县',344,3),(3294,'市辖区',345,3),(3295,'崆峒区',345,3),(3296,'泾川县',345,3),(3297,'灵台县',345,3),(3298,'崇信县',345,3),(3299,'华亭县',345,3),(3300,'庄浪县',345,3),(3301,'静宁县',345,3),(3302,'市辖区',346,3),(3303,'肃州区',346,3),(3304,'金塔县',346,3),(3305,'安西县',346,3),(3306,'肃北蒙古族自治县',346,3),(3307,'阿克塞哈萨克族自治县',346,3),(3308,'玉门市',346,3),(3309,'敦煌市',346,3),(3310,'市辖区',347,3),(3311,'西峰区',347,3),(3312,'庆城县',347,3),(3313,'环　县',347,3),(3314,'华池县',347,3),(3315,'合水县',347,3),(3316,'正宁县',347,3),(3317,'宁　县',347,3),(3318,'镇原县',347,3),(3319,'市辖区',348,3),(3320,'安定区',348,3),(3321,'通渭县',348,3),(3322,'陇西县',348,3),(3323,'渭源县',348,3),(3324,'临洮县',348,3),(3325,'漳　县',348,3),(3326,'岷　县',348,3),(3327,'市辖区',349,3),(3328,'武都区',349,3),(3329,'成　县',349,3),(3330,'文　县',349,3),(3331,'宕昌县',349,3),(3332,'康　县',349,3),(3333,'西和县',349,3),(3334,'礼　县',349,3),(3335,'徽　县',349,3),(3336,'两当县',349,3),(3337,'临夏市',350,3),(3338,'临夏县',350,3),(3339,'康乐县',350,3),(3340,'永靖县',350,3),(3341,'广河县',350,3),(3342,'和政县',350,3),(3343,'东乡族自治县',350,3),(3344,'积石山保安族东乡族撒拉族自治县',350,3),(3345,'合作市',351,3),(3346,'临潭县',351,3),(3347,'卓尼县',351,3),(3348,'舟曲县',351,3),(3349,'迭部县',351,3),(3350,'玛曲县',351,3),(3351,'碌曲县',351,3),(3352,'夏河县',351,3),(3353,'市辖区',352,3),(3354,'城东区',352,3),(3355,'城中区',352,3),(3356,'城西区',352,3),(3357,'城北区',352,3),(3358,'大通回族土族自治县',352,3),(3359,'湟中县',352,3),(3360,'湟源县',352,3),(3361,'平安县',353,3),(3362,'民和回族土族自治县',353,3),(3363,'乐都县',353,3),(3364,'互助土族自治县',353,3),(3365,'化隆回族自治县',353,3),(3366,'循化撒拉族自治县',353,3),(3367,'门源回族自治县',354,3),(3368,'祁连县',354,3),(3369,'海晏县',354,3),(3370,'刚察县',354,3),(3371,'同仁县',355,3),(3372,'尖扎县',355,3),(3373,'泽库县',355,3),(3374,'河南蒙古族自治县',355,3),(3375,'共和县',356,3),(3376,'同德县',356,3),(3377,'贵德县',356,3),(3378,'兴海县',356,3),(3379,'贵南县',356,3),(3380,'玛沁县',357,3),(3381,'班玛县',357,3),(3382,'甘德县',357,3),(3383,'达日县',357,3),(3384,'久治县',357,3),(3385,'玛多县',357,3),(3386,'玉树县',358,3),(3387,'杂多县',358,3),(3388,'称多县',358,3),(3389,'治多县',358,3),(3390,'囊谦县',358,3),(3391,'曲麻莱县',358,3),(3392,'格尔木市',359,3),(3393,'德令哈市',359,3),(3394,'乌兰县',359,3),(3395,'都兰县',359,3),(3396,'天峻县',359,3),(3397,'市辖区',360,3),(3398,'兴庆区',360,3),(3399,'西夏区',360,3),(3400,'金凤区',360,3),(3401,'永宁县',360,3),(3402,'贺兰县',360,3),(3403,'灵武市',360,3),(3404,'市辖区',361,3),(3405,'大武口区',361,3),(3406,'惠农区',361,3),(3407,'平罗县',361,3),(3408,'市辖区',362,3),(3409,'利通区',362,3),(3410,'盐池县',362,3),(3411,'同心县',362,3),(3412,'青铜峡市',362,3),(3413,'市辖区',363,3),(3414,'原州区',363,3),(3415,'西吉县',363,3),(3416,'隆德县',363,3),(3417,'泾源县',363,3),(3418,'彭阳县',363,3),(3419,'市辖区',364,3),(3420,'沙坡头区',364,3),(3421,'中宁县',364,3),(3422,'海原县',364,3),(3423,'市辖区',365,3),(3424,'天山区',365,3),(3425,'沙依巴克区',365,3),(3426,'新市区',365,3),(3427,'水磨沟区',365,3),(3428,'头屯河区',365,3),(3429,'达坂城区',365,3),(3430,'东山区',365,3),(3431,'乌鲁木齐县',365,3),(3432,'市辖区',366,3),(3433,'独山子区',366,3),(3434,'克拉玛依区',366,3),(3435,'白碱滩区',366,3),(3436,'乌尔禾区',366,3),(3437,'吐鲁番市',367,3),(3438,'鄯善县',367,3),(3439,'托克逊县',367,3),(3440,'哈密市',368,3),(3441,'巴里坤哈萨克自治县',368,3),(3442,'伊吾县',368,3),(3443,'昌吉市',369,3),(3444,'阜康市',369,3),(3445,'米泉市',369,3),(3446,'呼图壁县',369,3),(3447,'玛纳斯县',369,3),(3448,'奇台县',369,3),(3449,'吉木萨尔县',369,3),(3450,'木垒哈萨克自治县',369,3),(3451,'博乐市',370,3),(3452,'精河县',370,3),(3453,'温泉县',370,3),(3454,'库尔勒市',371,3),(3455,'轮台县',371,3),(3456,'尉犁县',371,3),(3457,'若羌县',371,3),(3458,'且末县',371,3),(3459,'焉耆回族自治县',371,3),(3460,'和静县',371,3),(3461,'和硕县',371,3),(3462,'博湖县',371,3),(3463,'阿克苏市',372,3),(3464,'温宿县',372,3),(3465,'库车县',372,3),(3466,'沙雅县',372,3),(3467,'新和县',372,3),(3468,'拜城县',372,3),(3469,'乌什县',372,3),(3470,'阿瓦提县',372,3),(3471,'柯坪县',372,3),(3472,'阿图什市',373,3),(3473,'阿克陶县',373,3),(3474,'阿合奇县',373,3),(3475,'乌恰县',373,3),(3476,'喀什市',374,3),(3477,'疏附县',374,3),(3478,'疏勒县',374,3),(3479,'英吉沙县',374,3),(3480,'泽普县',374,3),(3481,'莎车县',374,3),(3482,'叶城县',374,3),(3483,'麦盖提县',374,3),(3484,'岳普湖县',374,3),(3485,'伽师县',374,3),(3486,'巴楚县',374,3),(3487,'塔什库尔干塔吉克自治县',374,3),(3488,'和田市',375,3),(3489,'和田县',375,3),(3490,'墨玉县',375,3),(3491,'皮山县',375,3),(3492,'洛浦县',375,3),(3493,'策勒县',375,3),(3494,'于田县',375,3),(3495,'民丰县',375,3),(3496,'伊宁市',376,3),(3497,'奎屯市',376,3),(3498,'伊宁县',376,3),(3499,'察布查尔锡伯自治县',376,3),(3500,'霍城县',376,3),(3501,'巩留县',376,3),(3502,'新源县',376,3),(3503,'昭苏县',376,3),(3504,'特克斯县',376,3),(3505,'尼勒克县',376,3),(3506,'塔城市',377,3),(3507,'乌苏市',377,3),(3508,'额敏县',377,3),(3509,'沙湾县',377,3),(3510,'托里县',377,3),(3511,'裕民县',377,3),(3512,'和布克赛尔蒙古自治县',377,3),(3513,'阿勒泰市',378,3),(3514,'布尔津县',378,3),(3515,'富蕴县',378,3),(3516,'福海县',378,3),(3517,'哈巴河县',378,3),(3518,'青河县',378,3),(3519,'吉木乃县',378,3),(3520,'石河子市',379,3),(3521,'阿拉尔市',379,3),(3522,'图木舒克市',379,3),(3523,'五家渠市',379,3);

/*Table structure for table `tp_remittance` */

DROP TABLE IF EXISTS `tp_remittance`;

CREATE TABLE `tp_remittance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分销用户转账记录表',
  `user_id` int(11) DEFAULT '0' COMMENT '汇款的用户id',
  `bank_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '收款银行名称',
  `account_bank` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '银行账号',
  `account_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '开户人名称',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '汇款金额',
  `status` tinyint(1) DEFAULT NULL COMMENT '0汇款失败 1汇款成功',
  `create_time` int(11) DEFAULT '0' COMMENT '汇款时间',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '汇款备注',
  `admin_id` int(11) DEFAULT '0' COMMENT '管理员id',
  `withdrawals_id` int(11) DEFAULT '0' COMMENT '提现申请表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tp_remittance` */

insert  into `tp_remittance`(`id`,`user_id`,`bank_name`,`account_bank`,`account_name`,`money`,`status`,`create_time`,`remark`,`admin_id`,`withdrawals_id`) values (1,1,'支付宝','5464646@qq.com','黄女士','100.00',1,1466420011,'测试通过',1,1);

/*Table structure for table `tp_return_goods` */

DROP TABLE IF EXISTS `tp_return_goods`;

CREATE TABLE `tp_return_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '退货申请表id自增',
  `order_id` int(11) DEFAULT '0' COMMENT '订单id',
  `order_sn` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '订单编号',
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id',
  `type` tinyint(1) DEFAULT '0' COMMENT '0退货1换货',
  `reason` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '退换货原因',
  `imgs` varchar(512) CHARACTER SET utf8 DEFAULT '' COMMENT '拍照图片路径',
  `addtime` int(11) DEFAULT '0' COMMENT '申请时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '0申请中1客服理中2已完成',
  `remark` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '客服备注',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `spec_key` varchar(64) CHARACTER SET utf8 DEFAULT '' COMMENT '商品规格key 对应tp_spec_goods_price 表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tp_return_goods` */

/*Table structure for table `tp_shipping` */

DROP TABLE IF EXISTS `tp_shipping`;

CREATE TABLE `tp_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '表 id',
  `shipping_code` varchar(20) NOT NULL DEFAULT '' COMMENT '快递代号',
  `shipping_name` varchar(120) NOT NULL DEFAULT '' COMMENT '快递名称',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `insure` varchar(10) NOT NULL DEFAULT '0' COMMENT '保险',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tp_shipping` */

insert  into `tp_shipping`(`shipping_id`,`shipping_code`,`shipping_name`,`shipping_desc`,`insure`,`enabled`) values (1,'post_express','邮政快递包裹','邮政快递包裹的描述内容。','1%',1),(2,'yto','圆通速递','上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务','0',1),(3,'city_express','城际快递','配送的运费是固定的','0',1),(4,'flat','市内快递','固定运费的配送方式内容','0',1),(5,'sto_express','申通快递','江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元','0',1),(6,'post_mail','邮局平邮','邮局平邮的描述内容。','0',1),(7,'fpd','运费到付','所购商品到达即付运费','0',1);

/*Table structure for table `tp_shipping_area` */

DROP TABLE IF EXISTS `tp_shipping_area`;

CREATE TABLE `tp_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '' COMMENT '配送区域名称',
  `shipping_code` varchar(50) NOT NULL DEFAULT '0' COMMENT '物流id',
  `config` text NOT NULL COMMENT '配置首重续重等...序列化存储',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '是否默认',
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_code`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `tp_shipping_area` */

insert  into `tp_shipping_area`(`shipping_area_id`,`shipping_area_name`,`shipping_code`,`config`,`update_time`,`is_default`) values (25,'全国其他地区','shunfeng','a:4:{s:12:\"first_weight\";s:4:\"1000\";s:13:\"second_weight\";s:4:\"2000\";s:5:\"money\";s:2:\"12\";s:9:\"add_money\";s:1:\"2\";}',NULL,1),(24,'全国其他地区','shentong','a:4:{s:12:\"first_weight\";s:4:\"1000\";s:5:\"money\";s:1:\"7\";s:13:\"second_weight\";s:4:\"2000\";s:9:\"add_money\";s:1:\"2\";}',1465035690,1);

/*Table structure for table `tp_sms_log` */

DROP TABLE IF EXISTS `tp_sms_log`;

CREATE TABLE `tp_sms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机号',
  `session_id` varchar(128) DEFAULT '' COMMENT 'session_id',
  `add_time` int(11) DEFAULT '0' COMMENT '发送时间',
  `code` varchar(10) DEFAULT '' COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

/*Data for the table `tp_sms_log` */

insert  into `tp_sms_log`(`id`,`mobile`,`session_id`,`add_time`,`code`) values (84,'18675512548','1468291820',1468291803,'9620'),(85,'18675512548','865863028289069',1468292342,'2381'),(86,'18636451646','1468308366',1468308351,'9699'),(87,'18673664399','1468371591',1468371573,'8180'),(88,'18625545665','1468380173',1468380150,'5736'),(89,'13695585665','1468380250',1468380228,'4713'),(90,'18625362542','[&quot;18625362542&quot;]',1468380821,'3927'),(91,'13652524266','[&quot;13652524266&quot;]',1468380907,'2450'),(92,'18675512548','[&quot;18675512548&quot;]',1468381026,'6351'),(102,'18675512548','865863028289069',1468393907,'5610');

/*Table structure for table `tp_spec` */

DROP TABLE IF EXISTS `tp_spec`;

CREATE TABLE `tp_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格表',
  `type_id` int(11) DEFAULT '0' COMMENT '规格类型',
  `name` varchar(55) DEFAULT NULL COMMENT '规格名称',
  `order` int(11) DEFAULT '50' COMMENT '排序',
  `search_index` tinyint(1) DEFAULT '0' COMMENT '是否需要检索',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `tp_spec` */

/*Table structure for table `tp_spec_goods_price` */

DROP TABLE IF EXISTS `tp_spec_goods_price`;

CREATE TABLE `tp_spec_goods_price` (
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '规格键名',
  `key_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '规格键名中文',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `store_count` int(11) unsigned DEFAULT '10' COMMENT '库存数量',
  `bar_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '商品条形码',
  `sku` varchar(128) CHARACTER SET utf16 DEFAULT '' COMMENT 'SKU'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tp_spec_goods_price` */

/*Table structure for table `tp_spec_image` */

DROP TABLE IF EXISTS `tp_spec_image`;

CREATE TABLE `tp_spec_image` (
  `goods_id` int(11) DEFAULT '0' COMMENT '商品规格图片表id',
  `spec_image_id` int(11) DEFAULT '0' COMMENT '规格项id',
  `src` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '商品规格图片路径'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tp_spec_image` */

/*Table structure for table `tp_spec_item` */

DROP TABLE IF EXISTS `tp_spec_item`;

CREATE TABLE `tp_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格项id',
  `spec_id` int(11) DEFAULT NULL COMMENT '规格id',
  `item` varchar(54) DEFAULT NULL COMMENT '规格项',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

/*Data for the table `tp_spec_item` */

/*Table structure for table `tp_system_module` */

DROP TABLE IF EXISTS `tp_system_module`;

CREATE TABLE `tp_system_module` (
  `mod_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `module` enum('top','menu','module') DEFAULT 'module',
  `level` tinyint(1) DEFAULT '3',
  `ctl` varchar(20) DEFAULT '',
  `act` varchar(30) DEFAULT '',
  `title` varchar(20) DEFAULT '',
  `visible` tinyint(1) DEFAULT '1',
  `parent_id` smallint(6) DEFAULT '0',
  `orderby` smallint(6) DEFAULT '50',
  `icon` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

/*Data for the table `tp_system_module` */

insert  into `tp_system_module`(`mod_id`,`module`,`level`,`ctl`,`act`,`title`,`visible`,`parent_id`,`orderby`,`icon`) values (1,'top',1,'','','系统',1,0,50,'0'),(2,'top',1,'','','设置',1,0,50,'0'),(3,'top',1,'','','会员',1,0,50,'0'),(4,'top',1,'','','商家',1,0,50,'0'),(5,'top',1,'','','内容',1,0,50,'0'),(6,'top',1,'','','运营',1,0,50,'fa-home'),(7,'menu',2,'','','权限管理',1,1,2,'fa-cog'),(8,'menu',2,'','','模块管理',1,1,3,'fa-table'),(9,'menu',2,'','','网站设置',1,2,50,'fa-pencil'),(10,'menu',2,'','','会员管理',1,3,50,'fa-user'),(11,'menu',2,'','','商品管理',1,4,50,'fa-tasks'),(12,'menu',2,'','','内容管理',1,5,50,'fa-navicon'),(13,'menu',2,'','','广告管理',1,6,50,'fa-star'),(14,'menu',2,'','','促销管理',1,4,50,'fa-retweet'),(15,'menu',2,'','','插件工具',1,6,20,'fa-plug'),(16,'menu',2,'','','微信管理',1,6,50,'fa-home'),(17,'menu',2,'','','订单管理',1,4,50,'fa-flag'),(18,'module',3,'Comment','index','评论管理',1,10,50,'0'),(19,'module',3,'Admin','role','角色管理',1,7,50,'0'),(20,'module',3,'Admin','index','管理员列表',1,7,50,'0'),(21,'module',3,'System','menu','菜单管理',1,8,50,'0'),(22,'module',3,'System','module','模块管理',1,8,50,'0'),(23,'module',3,'Admin','log','管理员日志',1,7,50,'0'),(24,'module',3,'Goods','categoryList','商品分类',1,11,50,'0'),(25,'module',3,'Goods','goodsList','商品列表',1,11,50,'0'),(26,'module',3,'Goods','goodsTypeList','商品类型',1,11,50,'0'),(27,'module',3,'Goods','specList','商品规格',1,11,50,'0'),(28,'module',3,'Goods','goodsAttributeList','商品属性',1,11,50,'0'),(29,'module',3,'Goods','brandList','商品品牌',1,11,50,'0'),(30,'module',3,'Order','index','订单列表',1,17,50,'0'),(31,'module',3,'Order','delivery_list','发货单列表',1,17,50,'0'),(32,'module',3,'Order','return_list','退货单列表',1,17,50,'0'),(33,'module',3,'User','levelList','会员等级',1,10,50,'0'),(34,'module',3,'User','index','会员列表',1,10,50,'0'),(35,'module',3,'System','index','网站设置',1,9,50,'0'),(36,'module',3,'System','navigationList','导航设置',1,9,50,'0'),(37,'module',3,'Ad','positionList','广告位',1,13,50,'0'),(38,'module',3,'Ad','adList','广告列表',1,13,50,'0'),(39,'module',3,'Article','categoryList','文章分类',1,12,50,'0'),(40,'module',3,'Article','articleList','文章列表',1,12,50,'0'),(41,'module',3,'Article','linkList','友情链接',1,12,50,'0'),(42,'module',3,'Topic','topicList','专题列表',1,12,50,'0'),(43,'module',3,'Coupon','index','优惠券',1,14,50,'0'),(44,'module',3,'Wechat','index','公众号管理',1,16,50,'0'),(45,'module',3,'Wechat','menu','微信菜单管理',1,16,50,'0'),(46,'module',3,'Wechat','text','文本回复',1,16,50,'0'),(47,'module',3,'Wechat','img','图文回复',1,16,50,'0'),(48,'module',3,'Wechat','nes','组合回复',1,16,50,'0'),(49,'module',3,'Plugin','index','插件列表',1,15,50,'0'),(50,'module',3,'Promotion','index','组合促销',0,14,50,'0'),(51,'menu',2,'','','模板管理',1,2,50,'fa-book'),(52,'module',3,'Template','templateList?t=pc','PC端模板',1,51,50,'0'),(53,'module',3,'Template','templateList?t=mobile','手机端模板',1,51,50,'0'),(54,'module',3,'Tools','index','数据备份',1,15,50,NULL),(55,'menu',2,'','','报表统计',1,6,50,'fa-bar-chart'),(56,'module',3,'report','index','销售概况',1,55,50,NULL),(57,'module',3,'report','saleTop','销售排行',1,55,50,NULL),(58,'module',3,'report','userTop','会员排行',1,55,50,NULL),(59,'module',3,'Promotion','group_buy_list','团购管理',1,14,50,NULL),(60,'module',3,'report','saleList','销售明细',1,55,50,NULL),(61,'module',3,'report','user','会员统计',1,55,50,NULL),(62,'module',3,'Promotion','flash_sale','限时抢购',1,14,50,NULL),(63,'module',3,'Tools','restore','数据还原',1,15,50,NULL),(64,'module',3,'Order','add_order','添加订单',1,17,50,NULL),(65,'module',3,'report','finance','财务统计',1,55,50,NULL),(66,'module',3,'Admin','role_info','编辑角色',0,7,50,NULL),(67,'module',3,'Admin','role_save','保存角色',0,7,50,NULL),(68,'module',3,'Admin','roleDel','删除角色',0,7,50,NULL),(69,'module',3,'Admin','admin_info','编辑管理员',0,7,50,NULL),(70,'module',3,'Admin','adminHandle','保存管理员',0,7,50,NULL),(71,'module',3,'System','create_menu','添加菜单',0,8,50,NULL),(72,'module',3,'System','menuSave','保存菜单',0,8,50,NULL),(73,'module',3,'System','ctl_detail','添加控制模块',0,8,50,NULL),(74,'module',3,'System','ctlSave','保存控制模块',0,8,50,NULL),(75,'module',3,'System','handle','保存设置',0,9,50,NULL),(76,'module',3,'System','addEditNav','保存导航',0,9,50,NULL),(77,'module',3,'Template','changeTemplate','切换模板',0,51,50,NULL),(78,'module',3,'System','delNav','删除导航',0,9,50,NULL),(79,'module',3,'Comment','detail','评论详情',0,10,50,NULL),(80,'module',3,'Comment','op','评论回复',0,10,50,NULL),(81,'module',3,'Comment','del','删除评论',0,10,50,NULL),(82,'module',3,'User','level','新增等级',0,10,50,NULL),(83,'module',3,'User','levelHandle','保存等级',0,10,50,NULL),(84,'module',3,'User','detail','查看会员',0,10,50,NULL),(85,'module',3,'User','account_log','会员消费记录',0,10,50,NULL),(86,'module',3,'User','account_edit','会员资金调节',0,10,50,NULL),(87,'module',3,'User','address','会员收货地址',0,10,50,NULL),(88,'module',3,'Goods','addEditGoods','新增商品',0,11,50,NULL),(89,'module',3,'Goods','addEditCategory','编辑商品分类',0,11,50,NULL),(90,'module',3,'Goods','delGoodsCategory','删除商品分类',0,11,50,NULL),(91,'module',3,'Goods','changeGoodsField','修改商品字段',0,11,50,NULL),(92,'module',3,'Goods','addEditGoodsType','编辑商品类型',0,11,50,NULL),(93,'module',3,'Goods','addEditGoodsAttribute','编辑商品属性',0,11,50,NULL),(94,'module',3,'Goods','delGoods','删除商品',0,11,50,NULL),(95,'module',3,'Goods','delGoodsType','删除商品类型',0,11,50,NULL),(96,'module',3,'Goods','delGoodsAttribute','删除商品属性',0,11,50,NULL),(97,'module',3,'Goods','delGoodsSpec','删除商品规格',0,11,50,NULL),(98,'module',3,'Goods','addEditSpec','编辑商品规格',0,11,50,NULL),(99,'module',3,'Goods','addEditBrand','编辑品牌',0,11,50,NULL),(100,'module',3,'Goods','delBrand','删除品牌',0,11,50,NULL),(101,'module',3,'Coupon','coupon_info','添加优惠券',0,14,50,NULL),(102,'module',3,'Promotion','group_buy','添加团购',0,14,50,NULL),(103,'module',3,'Promotion','groupbuyHandle','保存团购',0,14,50,NULL),(104,'module',3,'Promotion','get_goods','选择商品',0,14,50,NULL),(105,'module',3,'Coupon','coupon_info','编辑优惠券',0,14,50,NULL),(106,'module',3,'Coupon','del_coupon','删除优惠券',0,14,50,NULL),(107,'module',3,'Coupon','send_coupon','发放优惠券',0,14,50,NULL),(108,'module',3,'Order','edit_order','编辑订单',0,17,50,NULL),(109,'module',3,'Order','split_order','拆分订单',0,17,50,NULL),(110,'module',3,'Order','deatil','订单详情',0,17,50,NULL),(111,'module',3,'Order','editprice','修改订单金额',0,17,50,NULL),(112,'module',3,'Order','delete_order','删除订单',0,17,50,NULL),(113,'module',3,'Order','pay_cancel','取消付款',0,17,50,NULL),(114,'module',3,'Order','order_print','订单打印',0,17,50,NULL),(115,'module',3,'Order','shipping_print','打印快递',0,17,50,NULL),(116,'module',3,'Order','deliveryHandle','发货处理',0,17,50,NULL),(117,'module',3,'Order','delivery_info','发货单详情',0,17,50,NULL),(118,'module',3,'Order','return_info','退货单信息',0,17,50,NULL),(119,'module',3,'Order','return_del','删除退货单',0,17,50,NULL),(120,'module',3,'Order','order_action','订单流程处理',0,17,50,NULL),(121,'module',3,'Order','export_order','导出订单',0,17,50,NULL),(122,'module',3,'Order','search_goods','搜索商品',0,17,50,NULL),(123,'module',3,'Order','add_return_goods','生成退货单',0,17,50,NULL),(124,'module',3,'Article','category','编辑文章分类',0,12,50,NULL),(125,'module',3,'Article','categoryHandle','保存文章分类',0,12,50,NULL),(126,'module',3,'Article','article','编辑文章',0,12,50,NULL),(127,'module',3,'Article','aticleHandle','保存文章',0,12,50,NULL),(128,'module',3,'Article','link','编辑友情链接',0,12,50,NULL),(129,'module',3,'Article','linkHandle','保存友情链接',0,12,50,NULL),(130,'module',3,'Topic','topic','新增专题',0,12,50,NULL),(131,'module',3,'Topic','topicHandle','保存专题',0,12,50,NULL),(132,'module',3,'Ad','position','添加广告位',0,13,50,NULL),(133,'module',3,'Ad','positionHandle','保存广告位',0,13,50,NULL),(134,'module',3,'Ad','ad','添加广告',0,13,50,NULL),(135,'module',3,'Ad','adHandle','保存广告',0,13,50,NULL),(136,'module',3,'Tools','backup','生成备份文件',0,15,50,NULL),(137,'module',3,'Tools','restoreData','还原SQL文件',0,15,50,NULL),(138,'module',3,'Tools','optimize','优化数据表',0,15,50,NULL),(139,'module',3,'Tools','repair','修改数据表',0,15,50,NULL),(140,'module',3,'Tools','restoreUpload','上传SQL文件',0,15,50,NULL),(141,'module',3,'Tools','downFile','下载SQL文件',0,15,50,NULL),(142,'module',3,'Tools','delSqlFiles','删除SQL文件',0,15,50,NULL),(143,'module',3,'Promotion','prom_order_list','订单促销',1,14,50,NULL),(144,'module',3,'Promotion','bargain','砍价管理',0,14,50,NULL),(146,'module',3,'Promotion','prom_goods_list','商品促销',1,14,50,NULL),(153,'menu',2,'','','辟谣管理',1,5,50,'fa-flag'),(154,'module',3,'Piyao','index','辟谣列表',1,153,50,NULL),(155,'module',3,'Piyao','add','增加辟谣',0,153,50,NULL),(156,'module',3,'Piyao','del','删除辟谣',0,153,50,NULL),(157,'module',3,'Piyao','edit','编辑辟谣',0,153,50,NULL),(158,'module',3,'Piyao','coment','辟谣评论',1,153,50,NULL),(159,'module',3,'Piyao','save','保存辟谣',0,153,50,NULL),(160,'menu',2,'','','黑名单管理',1,5,50,'fa-book'),(161,'module',3,'Heiid','index','黑名单列表',1,160,50,NULL),(162,'module',3,'Heiid','add','新增黑名单',0,160,50,NULL),(163,'module',3,'Heiid','edit','编辑黑名单',0,160,50,NULL),(164,'module',3,'Heiid','save','保存黑名单',0,160,50,NULL),(165,'module',3,'Heiid','del','删除黑名单',0,160,50,NULL),(166,'menu',2,'','','诚信管理',1,5,50,'fa-user'),(167,'module',3,'Chengxin','daikuan','诚信贷款',1,166,50,NULL),(168,'module',3,'Chengxin','detail','诚信贷款详情',0,166,50,NULL),(169,'module',3,'Chengxin','zuche','诚信租车',1,166,50,NULL),(170,'module',3,'Chengxin','zhusu','诚信住宿',1,166,50,NULL),(171,'module',3,'Chengxin','jiaoyou','诚信交友',1,166,50,NULL),(172,'module',3,'Chengxin','zhaopin','诚信招聘',1,166,50,NULL);

/*Table structure for table `tp_topic` */

DROP TABLE IF EXISTS `tp_topic`;

CREATE TABLE `tp_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `topic_title` varchar(100) DEFAULT NULL COMMENT '专题标题',
  `topic_image` varchar(100) DEFAULT NULL COMMENT '专题封面',
  `topic_background_color` varchar(20) DEFAULT NULL COMMENT '专题背景颜色',
  `topic_background` varchar(100) DEFAULT NULL COMMENT '专题背景图',
  `topic_content` text COMMENT '专题详情',
  `topic_repeat` varchar(20) DEFAULT '' COMMENT '背景重复方式',
  `topic_state` tinyint(1) DEFAULT '1' COMMENT '专题状态1-草稿、2-已发布',
  `topic_margin_top` tinyint(3) DEFAULT '0' COMMENT '正文距顶部距离',
  `ctime` int(11) DEFAULT NULL COMMENT '专题创建时间',
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tp_topic` */

insert  into `tp_topic`(`topic_id`,`topic_title`,`topic_image`,`topic_background_color`,`topic_background`,`topic_content`,`topic_repeat`,`topic_state`,`topic_margin_top`,`ctime`) values (1,'小米5手机专题','/Public/upload/topic/2016/02-20/56c814f3ae981.jpg','#000000','/Public/upload/topic/2016/02-20/56c8150dd970b.png','<!doctype html>\r\n<html lang=\"zh-CN\" xml:lang=\"zh-CN\">\r\n<head>\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\" />\r\n<meta charset=\"UTF-8\" />\r\n<title>小米手机 5 概述 － 小米手机官网</title>\r\n<meta name=\"viewport\" content=\"width=1226\" />\r\n<link rel=\"shortcut icon\" href=\"http://s01.mifile.cn/favicon.ico\" type=\"image/x-icon\" />\r\n<link rel=\"icon\" href=\"http://s01.mifile.cn/favicon.ico\" type=\"image/x-icon\" />\r\n<link rel=\"stylesheet\" href=\"http://s01.mifile.cn/css/base.min.css?v2016a\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"http://s01.mifile.cn/css/product/mi5/index.min.css?749bd4\" />\r\n<script type=\"text/javascript\">var _head_over_time = (new Date()).getTime();</script>\r\n</head>\r\n<body>\r\n<div class=\"xm-product-box\">\r\n    <div class=\"hd nav-bar_xg J_headNav\">\r\n\r\n    </div>\r\n\r\n\r\n    <div id=\"overall\" class=\"mi5-overall \">\r\n        <div class=\"J_miOneScroller\">\r\n            <div class=\"section section-start\" data-title=\"综述\" data-shrik=\'0\'>           \r\n                <div class=\"side-text\">\r\n                    <h2 class=\"title font\">小米手机5<br>十余项黑科技，很轻狠快</h2>\r\n                    <p class=\"content\">骁龙820处理器 / 最大可选4GB内存、128GB闪存<br>4轴防抖相机 / 3D陶瓷机身 / 3D玻璃机身</p>\r\n                    <p class=\"price\">\r\n                        1999 <span>元起</span>\r\n                    </p>\r\n                    <p class=\'link\' style=\'font-family:\"Helvetica Neue\",Helvetica,Arial,\"Microsoft Yahei\",\"Hiragino Sans GB\",\"Heiti SC\",\"WenQuanYi Micro Hei\",sans-serif\'>\r\n                        <span class=\'play-logo\'>\r\n                            <i class=\"iconfont\">&#xe601;</i>\r\n                        </span>\r\n                        <a href=\"javascript:void(0);\" class=\'J_videoBtn\' data-video=\'XMTQ4MDU2MTkzMg\'  data-video-title=\'小米手机5 外观视频\'>外观视频</a> \r\n                        \r\n                        <span class=\'play-logo\'>\r\n                            <i class=\"iconfont\">&#xe601;</i>\r\n                        </span>  \r\n                        <a href=\"javascript:void(0);\" class=\'J_videoBtn\' data-video=\'XMTQ4MDU2MTU5Ng==\'  data-video-title=\'4 轴防抖视频\' >4 轴防抖视频</a> \r\n                        \r\n                    </p>\r\n                </div>  \r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-12.jpg\" alt=\"\">\r\n            </div>\r\n            <div class=\"section section-grade\" data-title=\'性能\' data-shrik=\'1\'>\r\n                <div class=\"side-text side-text-a common-section center\">\r\n                    <h2 class=\"title\">14 万分，快得有点狠</h2>\r\n                    <p class=\"content\">\r\n                        CPU 性能翻倍的骁龙 820 处理器，提速 87% 的 UFS 闪存，快 40% 的 Adreno 530 图形引擎，<br>快 100% 的双通道 LPDDR4，Antutu 跑分性能测试高达惊人的 14 万分。\r\n                    </p>\r\n                    <a class=\"href-link\" href=\'/mi5/features/\' target=\'_blank\'> 了解性能 &gt;</a>\r\n                </div>\r\n                <ul class=\"side-text side-text-b\">\r\n                    <li>\r\n                        <h2 class=\"side-title\">\r\n                            骁龙820\r\n                        </h2>\r\n                        <p class=\"side-cont\">旗舰处理器</p>\r\n                    </li>\r\n                    <li class=\'mid\'>\r\n                        <h2 class=\"side-title\">\r\n                            4GB\r\n                        </h2>\r\n                        <p class=\"side-cont\">可选最大内存</p>\r\n                    </li>\r\n                    <li>\r\n                        <h2 class=\"side-title\">\r\n                            128GB\r\n                        </h2>\r\n                        <p class=\"side-cont\">可选最大闪存</p>\r\n                    </li>\r\n                </ul>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-8.jpg\" alt=\"\">\r\n            </div>\r\n            <div class=\"section section-feel\" data-title=\'设计\'  data-shrik=\'2\'>\r\n                <div class=\"side-text common-section center\">\r\n                    <h2 class=\"title\">129克，手感轻得不真实</h2>\r\n                    <p class=\"descText\">5.15\" 大屏幕，整机仅 129 克。<br>还有 3D 纤细侧腰，曲面玻璃的温润手感。握在手中的一刻，仿佛轻轻握住整个世界的倒影。</p>\r\n                    <a class=\"href-link\" href=\'/mi5/design/\' target=\'_blank\'>了解设计&gt;</a>\r\n                </div>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-13.jpg\" alt=\"\">\r\n            </div>            \r\n            <div class=\"section section-camera\" data-title=\'相机\'  data-shrik=\'3\'>\r\n                <div class=\"side-text common-section center\">\r\n                    <h2 class=\"title\">4 轴防抖相机，感动、激动、不抖动</h2>\r\n                    <p class=\"descText\">采用源自专业相机的 4 轴光学防抖技术，比一般手机 2 轴防抖效果更佳，<br>阳光、暗光、运动、单手，都能稳定记录，清晰成像。</p>\r\n                    <a class=\"href-link\" href=\'/mi5/camera/\' target=\'_blank\'>了解相机&gt;</a>\r\n                </div>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-14.jpg\" alt=\"\">\r\n                <ul class=\"pic-block J_picGlass\">\r\n                    <li class=\"pic-a\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            蓝宝石<br>镜头保护玻璃\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-b\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            6P镜片组\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-c\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            4轴光学防抖\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-d\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            索尼新一代<br>16MP感光元件\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-e\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            DTI<br>深槽隔离技术\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-f\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            暗光增强<br>夜景防抖\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class=\"section section-highlight\" data-title=\'屏幕\'  data-shrik=\'4\'>\r\n                <div class=\"side-text common-section\">\r\n                    <h2 class=\"title\">16颗灯省电高亮屏幕<br>鲜艳通透</h2>\r\n                    <p class=\"descText\">屏幕深度定制，在仅有 5.15\" 屏幕上精密排布 16 颗 LED 灯珠，亮度提升 30%，色彩依旧鲜艳。灯光下看起来更通透，阳光下看得更清晰，这才是好屏幕应有的亮度。</p>\r\n                    <a class=\"href-link\" href=\'/mi5/screen\' target=\'_blank\'>了解屏幕&gt;</a>\r\n                </div>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-24.jpg\" alt=\"\">\r\n            </div>\r\n            \r\n            <div class=\"section section-miui\" data-title=\'操作系统\'   data-shrik=\'5\'>\r\n                <div class=\"side-text common-section center\">\r\n                    <h2 class=\"title\">MIUI 7 再升级，1.7亿 用户的新惊喜</h2>\r\n                    <p class=\"descText\">好看、好用的 MIUI 系统，在小米5 上有了新惊喜。离线一键换机、<br>手机远程锁定防丢失，还有美颜视频电话等有趣的新玩法。</p>\r\n                    <p class=\"href-link\">\r\n                        <span class=\'play-logo\'>\r\n                            <i class=\"iconfont\">&#xe601;</i>\r\n                        </span>\r\n                        <a href=\"javascript:void(0);\" class=\'J_videoBtn\' data-video=\'XMTQ4MDYzMjkyOA\'  data-video-title=\'一键换机演示\'>一键换机演示</a> \r\n                        \r\n                        <a class=\"link-url\"  href=\'/mi5/features#miui\' target=\'_blank\'>了解操作系统&gt; </a>\r\n                    </p>\r\n                </div>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-21.jpg\" alt=\"\">\r\n            </div>\r\n            \r\n            <div class=\"section section-version \" data-title=\'版本选择\'  data-shrik=\'5\'>\r\n                <div class=\"side-text common-section\">\r\n                    <h2 class=\"title\">\r\n                        哪一款是你的最爱？\r\n                    </h2>\r\n                    <h3 class=\"sub-title\">\r\n                    <!--    对比机型-->\r\n                    </h3>\r\n                </div>\r\n                <ul class=\"version-list\">\r\n                    <li class=\'left show-a\'>\r\n                        <div class=\"v-img-list\">\r\n                            <div class=\"img-a\"></div>\r\n                            <div class=\"img-b\"></div>\r\n                            <div class=\"img-c\"></div>\r\n                        </div>\r\n                        <div class=\"v-col-circle\">\r\n                            \r\n                            <div class=\"circle-c J_circle\" data-cls=\'show-a\'>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\"circle-a J_circle\"  data-cls=\'show-b\'>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\"circle-b J_circle\"  data-cls=\'show-c\'>\r\n                                <i></i>\r\n                            </div>\r\n                        </div>\r\n                        <h2 class=\"v-title\">\r\n                            标准版<span> |</span> 1999元 \r\n                        </h2>\r\n                        <p class=\"v-content\">\r\n                            骁龙820 最高主频 1.8GHz<br>3GB LPDDR4 + 32GB UFS 闪存、3D曲面玻璃机身\r\n                        </p>\r\n                    </li>\r\n                    <li class=\'mid show-b\'>\r\n                        <div class=\"v-img-list\">\r\n                            <div class=\"img-a\"></div>\r\n                            <div class=\"img-b\"></div>\r\n                            <div class=\"img-c\"></div>\r\n                        </div>\r\n                        <div class=\"v-col-circle\">\r\n                            <div class=\"circle-c J_circle\" data-cls=\'show-a\'>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\"circle-a J_circle\"  data-cls=\'show-b\'>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\"circle-b J_circle\"  data-cls=\'show-c\'>\r\n                                <i></i>\r\n                            </div>\r\n                        </div>\r\n                        <h2 class=\"v-title\">\r\n                            高配版 <span> |</span> 2299元 \r\n                        </h2>\r\n                        <p class=\"v-content\">\r\n                            骁龙820 最高主频 2.15GHz<br>3GB LPDDR4 + 64GB UFS 闪存、3D曲面玻璃机身\r\n                        </p>\r\n                    </li> \r\n                    <li  class=\'right show-c\'>\r\n                        <div class=\"v-img-list\">\r\n                            <div class=\"img-a\"></div>\r\n                            <div class=\"img-b\"></div>\r\n                            <div class=\"img-c\"></div>\r\n                        </div>\r\n                        <div class=\"v-col-circle\">\r\n                            <div class=\"circle-b\">\r\n                                <i></i>\r\n                            </div>\r\n                        </div>\r\n                        <h2 class=\"v-title\">\r\n                            尊享版 <span> |</span> 2699元 \r\n                        </h2>\r\n                        <p class=\"v-content\">\r\n                            骁龙820 最高主频 2.15GHz<br>4GB LPDDR4 + 128GB UFS 闪存、3D陶瓷机身\r\n                        </p>\r\n                    </li> \r\n                </ul>\r\n            </div> \r\n        </div>\r\n    </div>\r\n    \r\n</div>\r\n\r\n\r\n\r\n\r\n</div>\r\n<div id=\"J_modalVideo\" class=\"modal modal-video fade modal-hide\">\r\n    <div class=\"modal-hd\">\r\n        <h3 class=\"title\">视频播放</h3>\r\n        <a class=\"close\" data-dismiss=\"modal\" href=\"javascript: void(0);\"><i class=\"iconfont\">&#xe602;</i></a>\r\n    </div>\r\n    <div class=\"modal-bd\">\r\n        <div class=\"loading\"><div class=\"loader\"></div></div>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div id=\"J_modalWeixin\" class=\"modal fade modal-hide modal-weixin\" data-width=\"480\" data-height=\"520\">\r\n        <div class=\"modal-hd\">\r\n            <a class=\"close\" data-dismiss=\"modal\"><i class=\"iconfont\">&#xe602;</i></a>\r\n            <h3>小米手机官方微信二维码</h3>\r\n        </div>\r\n        <div class=\"modal-bd\">\r\n            <p style=\"margin: 0 0 10px;\">打开微信，点击右上角的“+”，选择“扫一扫”功能，<br/>对准下方二维码即可。</p>\r\n            <img alt=\"\" src=\"http://c1.mifile.cn/f/i/2014/cn/qr.png\" width=\"375\" height=\"375\" />\r\n        </div>\r\n    </div>\r\n<!-- .modal-weixin END -->\r\n<div class=\"modal modal-hide modal-bigtap-queue\" id=\"J_bigtapQueue\">\r\n    <div class=\"modal-body\">\r\n        <span class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\"><i class=\"iconfont\">&#xe602;</i></span>\r\n        <h3>正在排队，请稍候喔！</h3>\r\n        <p class=\"queue-tip\">抱歉，目前排队人数较多，导致服务器压力山大，请您耐心排队等待，<br>我们将在稍后告诉您排队结果。</p>\r\n        <div class=\"queue-animate\">\r\n            <div id=\"J_mituWalking\" class=\"mitu-walk\"> </div>\r\n            <div class=\"animate-mask animate-mask-left\"></div>\r\n            <div class=\"animate-mask animate-mask-right\"></div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<!-- .xm-dm-queue END -->\r\n<div id=\"J_bigtapError\" class=\"modal modal-hide modal-bigtap-error\">\r\n    <span class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\"><i class=\"iconfont\">&#xe602;</i></span>\r\n    <div class=\"modal-body\">\r\n        <h3>抱歉，网络拥堵无法连接服务器</h3>\r\n        <p  class=\"error-tip\">由于访问人数太多导致服务器压力山大，请您稍后再重试。</p>\r\n        <p >\r\n            <a class=\"btn btn-primary\" id=\"J_bigtapRetry\">重试</a>\r\n        </p>\r\n    </div>\r\n</div>\r\n<!-- .xm-dm-error END -->\r\n<div id=\"J_modal-globalSites\" class=\"modal fade modal-hide modal-globalSites\" data-width=\"640\">\r\n       <div class=\"modal-hd\">\r\n            <a class=\"close\" data-dismiss=\"modal\"><i class=\"iconfont\">&#xe602;</i></a>\r\n            <h3>Select Region</h3>\r\n        </div>\r\n        <div class=\"modal-bd\">\r\n            <h3>Welcome to Mi.com</h3>\r\n            <p class=\"modal-globalSites-tips\">Please select your country or region</p>\r\n            <p class=\"modal-globalSites-links clearfix\">\r\n                <a href=\"http://www.mi.com/index.html\">Mainland China</a>\r\n                <a href=\"http://www.mi.com/hk/\">Hong Kong</a>\r\n                <a href=\"http://www.mi.com/tw/\">TaiWan</a>\r\n                <a href=\"http://www.mi.com/sg/\">Singapore</a>\r\n                <a href=\"http://www.mi.com/my/\">Malaysia</a>\r\n                <a href=\"http://www.mi.com/ph/\">Philippines</a>\r\n                <a href=\"http://www.mi.com/in/\">India</a>\r\n                <a href=\"http://www.mi.com/id/\">Indonesia</a>\r\n                <a href=\"http://br.mi.com/\">Brasil</a>\r\n                <a href=\"http://www.mi.com/en/\">Global Home</a>\r\n            </p>\r\n        </div>\r\n    </div>\r\n<!-- .modal-globalSites END -->\r\n<script src=\"http://s01.mifile.cn/js/base.min.js?v2016a\"></script>\r\n<script>\r\n(function() {\r\n    MI.namespace(\'GLOBAL_CONFIG\');\r\n    MI.GLOBAL_CONFIG = {\r\n        orderSite: \'http://order.mi.com\',\r\n        wwwSite: \'http://www.mi.com\',\r\n        cartSite: \'http://cart.mi.com\',\r\n        itemSite: \'http://item.mi.com\',\r\n        assetsSite: \'http://s01.mifile.cn\',\r\n        listSite: \'http://list.mi.com\',\r\n        searchSite: \'http://search.mi.com\',\r\n        mySite: \'http://my.mi.com\',\r\n        damiaoSite: \'http://tp.hd.mi.com/\',\r\n        damiaoGoodsId:[\"2160200002\",\"2134900369\",\"2160400010\",\"2160700016\",\"2160700017\",\"2160700024\"],\r\n        logoutUrl: \'http://order.mi.com/site/logout\',\r\n        staticSite: \'http://static.mi.com\',\r\n        quickLoginUrl: \'https://account.xiaomi.com/pass/static/login.html\'\r\n    };\r\n    MI.setLoginInfo.orderUrl = MI.GLOBAL_CONFIG.orderSite + \'/user/order\';\r\n    MI.setLoginInfo.logoutUrl = MI.GLOBAL_CONFIG.logoutUrl;\r\n    MI.setLoginInfo.init(MI.GLOBAL_CONFIG);\r\n    MI.miniCart.init();\r\n    MI.updateMiniCart();\r\n})();\r\n</script>\r\n<script type=\"text/javascript\" src=\"http://s01.mifile.cn/js/product/mi5/index.min.js?a1bfe2\"></script>\r\n<script src=\"http://c1.mifile.cn/f/i/15/stat/js/xmsg_ti.js\"></script>\r\n<script>\r\nvar _msq = _msq || [];\r\n_msq.push([\'setDomainId\', 100]);\r\n_msq.push([\'trackPageView\']);\r\n(function() {\r\n    var ms = document.createElement(\'script\');\r\n    ms.type = \'text/javascript\';\r\n    ms.async = true;\r\n    ms.src = \'http://c1.mifile.cn/f/i/15/stat/js/xmst.js\';\r\n    var s = document.getElementsByTagName(\'script\')[0];\r\n    s.parentNode.insertBefore(ms, s);\r\n})();\r\n</script>\r\n</body>\r\n</html>\r\n \r\n','repeat',2,10,1455953179);

/*Table structure for table `tp_user_address` */

DROP TABLE IF EXISTS `tp_user_address`;

CREATE TABLE `tp_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `country` int(11) NOT NULL DEFAULT '0' COMMENT '国家',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省份',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '城市',
  `district` int(11) NOT NULL DEFAULT '0' COMMENT '地区',
  `twon` int(11) DEFAULT '0' COMMENT '乡镇',
  `address` varchar(120) NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` varchar(60) NOT NULL DEFAULT '' COMMENT '邮政编码',
  `mobile` varchar(60) NOT NULL DEFAULT '' COMMENT '手机',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '默认收货地址',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

/*Data for the table `tp_user_address` */

/*Table structure for table `tp_user_level` */

DROP TABLE IF EXISTS `tp_user_level`;

CREATE TABLE `tp_user_level` (
  `level_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `level_name` varchar(30) DEFAULT NULL COMMENT '头衔名称',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '等级必要金额',
  `discount` smallint(4) DEFAULT NULL COMMENT '折扣',
  `describe` varchar(200) DEFAULT NULL COMMENT '头街 描述',
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tp_user_level` */

insert  into `tp_user_level`(`level_id`,`level_name`,`amount`,`discount`,`describe`) values (1,'注册会员','0.00',100,'注册会员'),(2,'铜牌会员','10000.00',98,'铜牌会员'),(3,'白银会员','30000.00',95,'白银会员'),(4,'黄金会员','50000.00',92,'黄金会员'),(5,'钻石会员','100000.00',90,'钻石会员'),(6,'超级VIP','200000.00',88,'超级VIP');

/*Table structure for table `tp_users` */

DROP TABLE IF EXISTS `tp_users`;

CREATE TABLE `tp_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮件',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 保密 1 男 2 女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户金额',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '冻结金额',
  `distribut_money` decimal(10,2) DEFAULT '0.00' COMMENT '累积分佣金额',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '消费积分',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '默认收货地址',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `mobile` varchar(20) NOT NULL COMMENT '手机号码',
  `mobile_validated` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证手机',
  `oauth` varchar(10) DEFAULT '' COMMENT '第三方来源 wx weibo alipay',
  `openid` varchar(100) DEFAULT NULL COMMENT '第三方唯一标示',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `province` int(6) DEFAULT '0' COMMENT '省份',
  `city` int(6) DEFAULT '0' COMMENT '市区',
  `district` int(6) DEFAULT '0' COMMENT '县',
  `email_validated` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证电子邮箱',
  `nickname` varchar(50) DEFAULT NULL COMMENT '第三方返回昵称',
  `level` tinyint(1) DEFAULT '1' COMMENT '会员等级',
  `discount` decimal(10,2) DEFAULT '1.00' COMMENT '会员折扣，默认1不享受',
  `total_amount` decimal(10,2) DEFAULT '0.00' COMMENT '消费累计额度',
  `is_lock` tinyint(1) DEFAULT '0' COMMENT '是否被锁定冻结',
  `is_distribut` tinyint(1) DEFAULT '0' COMMENT '是否为分销商 0 否 1 是',
  `first_leader` int(11) DEFAULT '0' COMMENT '第一个上级',
  `second_leader` int(11) DEFAULT '0' COMMENT '第二个上级',
  `third_leader` int(11) DEFAULT '0' COMMENT '第三个上级',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '诚信宣言',
  PRIMARY KEY (`user_id`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=358 DEFAULT CHARSET=utf8;

/*Data for the table `tp_users` */

insert  into `tp_users`(`user_id`,`email`,`password`,`sex`,`birthday`,`user_money`,`frozen_money`,`distribut_money`,`pay_points`,`address_id`,`reg_time`,`last_login`,`last_ip`,`qq`,`mobile`,`mobile_validated`,`oauth`,`openid`,`head_pic`,`province`,`city`,`district`,`email_validated`,`nickname`,`level`,`discount`,`total_amount`,`is_lock`,`is_distribut`,`first_leader`,`second_leader`,`third_leader`,`describe`) values (1,'dsads@dsadsp.com','519475228fe35ad067744465c42a19b2',2,627494400,'100.00','0.00','0.00',18828,1,1245048540,1245048540,'0.0.0.0','','13800138006',0,'',NULL,NULL,0,0,0,0,'guangmu',1,'1.00','979.06',0,0,0,0,0,''),(2,'vip@dsads.com','e10adc3949ba59abbe56e057f20f883e',0,19490101,'0.00','0.00','0.00',0,0,1245048540,0,'','','',0,'',NULL,NULL,0,0,0,0,NULL,1,'1.00','0.00',0,0,0,0,0,''),(5,'zuanshi@qqh.com','e10adc3949ba59abbe56e057f20f883e',1,19550101,'99996925.39','0.00','0.00',5281,3,1245048540,1444134213,'127.0.0.1','398145057','13800138070',0,'',NULL,NULL,0,0,0,0,NULL,1,'1.00','0.00',0,0,0,0,0,''),(336,'','fb19e826eca758a10b4e12e13dcb741f',0,0,'0.00','0.00','0.00',100,0,1468308463,0,'','','13698546646',1,'',NULL,'',0,0,0,0,'13698546646',1,'1.00','0.00',0,1,0,0,0,''),(334,'','519475228fe35ad067744465c42a19b2',0,0,'0.00','0.00','0.00',100,0,1468308168,0,'','','18636451645',1,'',NULL,NULL,0,0,0,0,'18636451645',1,'1.00','0.00',0,1,0,0,0,''),(335,'','519475228fe35ad067744465c42a19b2',0,0,'0.00','0.00','0.00',100,0,1468308292,0,'','','18636451646',1,'',NULL,'/Public/upload/userhead2016/07-12/57849ab6d4d50.png',0,0,0,0,'18636451646',1,'1.00','0.00',0,1,0,0,0,''),(333,'','519475228fe35ad067744465c42a19b2',0,0,'0.00','0.00','0.00',100,0,1468307969,0,'','','18636362536',1,'',NULL,NULL,0,0,0,0,'18636362536',1,'1.00','0.00',0,1,0,0,0,''),(332,'','519475228fe35ad067744465c42a19b2',0,0,'0.00','0.00','0.00',100,0,1468293972,0,'','','18675512548',1,'',NULL,NULL,0,0,0,0,'18675512548',1,'1.00','0.00',0,1,0,0,0,''),(337,'','519475228fe35ad067744465c42a19b2',0,0,'0.00','0.00','0.00',100,0,1468371584,0,'','','18673664399',1,'',NULL,'',0,0,0,0,'18673664399',1,'1.00','0.00',0,1,0,0,0,''),(338,'','519475228fe35ad067744465c42a19b2',0,0,'0.00','0.00','0.00',100,0,1468371781,0,'','','18637665458',1,'',NULL,'',0,0,0,0,'18637665458',1,'1.00','0.00',0,1,0,0,0,''),(339,'','63673c2b8d96bbaa6bc7af3d079497e6',0,0,'0.00','0.00','0.00',100,0,1468372036,0,'','','18634669846',1,'',NULL,'',0,0,0,0,'18634669846',1,'1.00','0.00',0,1,0,0,0,''),(340,'','990238e4c4bcbba98e62eed59cb46809',0,0,'0.00','0.00','0.00',100,0,1468372615,0,'','','18366459565',1,'',NULL,'',0,0,0,0,'18366459565',1,'1.00','0.00',0,1,0,0,0,''),(341,'','519475228fe35ad067744465c42a19b2',0,0,'0.00','0.00','0.00',100,0,1468372955,0,'','','18634665458',1,'',NULL,'',0,0,0,0,'18634665458',1,'1.00','0.00',0,1,0,0,0,''),(342,'','1d245a1b046be27e9c4fa5e70c93879b',0,0,'0.00','0.00','0.00',100,0,1468373064,0,'','','18676648949',1,'',NULL,'',0,0,0,0,'18676648949',1,'1.00','0.00',0,1,0,0,0,''),(343,'','d862e42a5190c20304faaf08afa74036',0,0,'0.00','0.00','0.00',100,0,1468373352,0,'','','18646546666',1,'',NULL,'',0,0,0,0,'18646546666',1,'1.00','0.00',0,1,0,0,0,''),(344,'','1ec7e215fb38624325c0db0fa6f828cc',0,0,'0.00','0.00','0.00',100,0,1468373532,0,'','','18634656466',1,'',NULL,'',0,0,0,0,'18634656466',1,'1.00','0.00',0,1,0,0,0,''),(345,'','217c1942ad884e213a0e742846f246f8',0,0,'0.00','0.00','0.00',100,0,1468373593,0,'','','18676554665',1,'',NULL,'',0,0,0,0,'18676554665',1,'1.00','0.00',0,1,0,0,0,''),(346,'','93cf7fd2c322fd83d6b69d9803059088',0,0,'0.00','0.00','0.00',100,0,1468373771,0,'','','18675254854',1,'',NULL,'',0,0,0,0,'18675254854',1,'1.00','0.00',0,1,0,0,0,''),(347,'','57235ce3aba15e415b7a91b177a122ab',0,0,'0.00','0.00','0.00',100,0,1468373937,0,'','','18634655466',1,'',NULL,'',0,0,0,0,'18634655466',1,'1.00','0.00',0,1,0,0,0,''),(348,'','990238e4c4bcbba98e62eed59cb46809',0,0,'0.00','0.00','0.00',100,0,1468374113,0,'','','18634655488',1,'',NULL,'',0,0,0,0,'18634655488',1,'1.00','0.00',0,1,0,0,0,''),(349,'','519475228fe35ad067744465c42a19b2',0,0,'0.00','0.00','0.00',100,0,1468374461,0,'','','18654565558',1,'',NULL,'',0,0,0,0,'18654565558',1,'1.00','0.00',0,1,0,0,0,''),(350,'','7038fcaf68849ccd5b96794fc84f3f33',0,0,'0.00','0.00','0.00',100,0,1468374527,0,'','','18635256655',1,'',NULL,'',0,0,0,0,'18635256655',1,'1.00','0.00',0,1,0,0,0,''),(351,'','af17259c927f9f74802060bdd22fe43a',0,0,'0.00','0.00','0.00',100,0,1468374714,0,'','','18636526963',1,'',NULL,'',0,0,0,0,'好纠结',1,'1.00','0.00',0,1,0,0,0,'undefined'),(352,'','990238e4c4bcbba98e62eed59cb46809',0,0,'0.00','0.00','0.00',100,0,1468375300,0,'','','18634695589',1,'',NULL,'',0,0,0,0,'经济学家',1,'1.00','0.00',0,1,0,0,0,'undefined'),(353,'','e3b5117b1c38e8c0be9157e6c8fdc6f9',0,0,'0.00','0.00','0.00',100,0,1468375518,0,'','','18634658796',1,'',NULL,'',0,0,0,0,'18634658796',1,'1.00','0.00',0,1,0,0,0,''),(354,'','990238e4c4bcbba98e62eed59cb46809',0,0,'0.00','0.00','0.00',100,0,1468375591,0,'','','13695665877',1,'',NULL,'',0,0,0,0,'姐姐大家',1,'1.00','0.00',0,1,0,0,0,'那些经济学家'),(355,'','1ec7e215fb38624325c0db0fa6f828cc',0,0,'0.00','0.00','0.00',100,0,1468375702,0,'','','18365667559',1,'',NULL,'',0,0,0,0,'拒绝',1,'1.00','0.00',0,1,0,0,0,'还很喜欢'),(356,'','f52f1702a66db6db340e352f42a64241',2,0,'0.00','0.00','0.00',100,0,1468375841,0,'','','13697584559',1,'',NULL,'',0,0,0,0,'好几',1,'1.00','0.00',0,1,0,0,0,'不能等你'),(357,'','519475228fe35ad067744465c42a19b2',0,0,'0.00','0.00','0.00',100,0,1468393922,0,'','','18675512536',1,'',NULL,'',0,0,0,0,'18675512536',1,'1.00','0.00',0,1,0,0,0,'');

/*Table structure for table `tp_withdrawals` */

DROP TABLE IF EXISTS `tp_withdrawals`;

CREATE TABLE `tp_withdrawals` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '提现申请表',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `create_time` int(11) DEFAULT '0' COMMENT '申请日期',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '提现金额',
  `bank_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '银行名称 如支付宝 微信 中国银行 农业银行等',
  `account_bank` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '银行账号',
  `account_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '银行账户名 可以是支付宝可以其他银行',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '提现备注',
  `status` tinyint(1) DEFAULT '0' COMMENT '提现状态0申请中1申请成功2申请失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tp_withdrawals` */

insert  into `tp_withdrawals`(`id`,`user_id`,`create_time`,`money`,`bank_name`,`account_bank`,`account_name`,`remark`,`status`) values (1,1,1466248005,'100.00','支付宝','5464646@qq.com','黄女士','测试通过',1),(2,175,1466419671,'300.00','支付宝','973798467','李小玲','',0);

/*Table structure for table `tp_wx_img` */

DROP TABLE IF EXISTS `tp_wx_img`;

CREATE TABLE `tp_wx_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `keyword` char(255) NOT NULL COMMENT '关键词',
  `desc` text NOT NULL COMMENT '简介',
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL COMMENT '创建时间',
  `uptatetime` varchar(13) NOT NULL COMMENT '更新时间',
  `token` char(30) NOT NULL COMMENT 'token',
  `title` varchar(60) NOT NULL COMMENT '标题',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='微信图文';

/*Data for the table `tp_wx_img` */

insert  into `tp_wx_img`(`id`,`keyword`,`desc`,`pic`,`url`,`createtime`,`uptatetime`,`token`,`title`,`goods_id`,`goods_name`) values (18,'改变关键字','这里是描述秒速改变改变','/Public/upload/banner/2015/11-10/5641dff44e322.jpg','http://www.tpshop.com/index.php/Admin/Wechat/add_img/id/326/edit/1','1447159325','1447162878','vjotae1439949952','标题改变',0,''),(21,'iphone','漂亮的手机1千块钱抢购了.','http://www.tp-shop.cn/Public/upload/weixin/2016/05-28/574943d30ded2.jpg','http://demo.tp-shop.cn/index.php/Home/Goods/goodsInfo/id/1.html','1464419295','','eesops1462769263','iphone 1千块限时抢购',0,'');

/*Table structure for table `tp_wx_keyword` */

DROP TABLE IF EXISTS `tp_wx_keyword`;

CREATE TABLE `tp_wx_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `keyword` char(255) NOT NULL COMMENT '关键词',
  `pid` int(11) NOT NULL COMMENT '对应表ID',
  `token` varchar(60) NOT NULL COMMENT 'token',
  `type` varchar(30) DEFAULT 'TEXT' COMMENT '关键词操作类型',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;

/*Data for the table `tp_wx_keyword` */

insert  into `tp_wx_keyword`(`id`,`keyword`,`pid`,`token`,`type`) values (280,'孤鸿寡鹄',5,'vjotae1439949952','TEXT'),(281,'包包',6,'vjotae1439949952','TEXT'),(324,'车型的谁',9,'vjotae1439949952','TEXT'),(325,'你好',10,'eesops1462769263','TEXT'),(326,'你坏',11,'eesops1462769263','TEXT'),(328,'iphone',21,'eesops1462769263','IMG');

/*Table structure for table `tp_wx_menu` */

DROP TABLE IF EXISTS `tp_wx_menu`;

CREATE TABLE `tp_wx_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `level` tinyint(1) DEFAULT '1' COMMENT '菜单级别',
  `name` varchar(50) NOT NULL COMMENT 'name',
  `sort` int(5) DEFAULT '0' COMMENT '排序',
  `type` varchar(20) DEFAULT '' COMMENT '0 view 1 click',
  `value` varchar(255) DEFAULT NULL COMMENT 'value',
  `token` varchar(50) NOT NULL COMMENT 'token',
  `pid` int(11) DEFAULT '0' COMMENT '上级菜单',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `tp_wx_menu` */

insert  into `tp_wx_menu`(`id`,`level`,`name`,`sort`,`type`,`value`,`token`,`pid`) values (28,1,'搜豹官网',0,'view','http://www.tp-shop.cn/index.php/Mobile/','eesops1462769263',0),(29,1,'TPshop商城',0,'view','http://www.tp-shop.cn/index.php/Mobile/','eesops1462769263',0);

/*Table structure for table `tp_wx_news` */

DROP TABLE IF EXISTS `tp_wx_news`;

CREATE TABLE `tp_wx_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `keyword` char(255) NOT NULL COMMENT 'keyword',
  `createtime` varchar(13) NOT NULL COMMENT '创建时间',
  `uptatetime` varchar(13) NOT NULL COMMENT '更新时间',
  `token` char(30) NOT NULL COMMENT 'token',
  `img_id` varchar(50) DEFAULT NULL COMMENT '图文组合id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='微信图文';

/*Data for the table `tp_wx_news` */

/*Table structure for table `tp_wx_text` */

DROP TABLE IF EXISTS `tp_wx_text`;

CREATE TABLE `tp_wx_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `uname` varchar(90) NOT NULL COMMENT '用户名',
  `keyword` char(255) NOT NULL COMMENT '关键词',
  `precisions` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'precisions',
  `text` text NOT NULL COMMENT 'text',
  `createtime` varchar(13) NOT NULL COMMENT '创建时间',
  `updatetime` varchar(13) NOT NULL COMMENT '更新时间',
  `click` int(11) NOT NULL COMMENT '点击',
  `token` char(30) NOT NULL COMMENT 'token',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='文本回复表';

/*Data for the table `tp_wx_text` */

insert  into `tp_wx_text`(`id`,`uid`,`uname`,`keyword`,`precisions`,`text`,`createtime`,`updatetime`,`click`,`token`) values (5,27,'','孤鸿寡鹄',0,'啊飒飒','1439958307','1439958307',0,'vjotae1439949952'),(6,13,'','sas',0,'sasqa','1447072140','1447072140',0,'tiyykb1446817155'),(9,0,'','车型的谁',0,'好久好久双方都发生sfdgdfd','1447078190','',0,'vjotae1439949952'),(10,0,'','你好',0,'你也很好,','1462772293','',0,'eesops1462769263'),(11,0,'','你坏',0,'你也很坏','1462777159','',0,'eesops1462769263');

/*Table structure for table `tp_wx_user` */

DROP TABLE IF EXISTS `tp_wx_user`;

CREATE TABLE `tp_wx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `uid` int(11) NOT NULL COMMENT 'uid',
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `aeskey` varchar(256) NOT NULL DEFAULT '' COMMENT 'aeskey',
  `encode` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'encode',
  `appid` varchar(50) NOT NULL DEFAULT '' COMMENT 'appid',
  `appsecret` varchar(50) NOT NULL DEFAULT '' COMMENT 'appsecret',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL COMMENT 'token',
  `w_token` varchar(150) NOT NULL DEFAULT '' COMMENT '微信对接token',
  `create_time` varchar(13) NOT NULL COMMENT 'create_time',
  `updatetime` varchar(13) NOT NULL COMMENT 'updatetime',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `share_ticket` varchar(150) NOT NULL COMMENT '分享ticket',
  `share_dated` char(15) NOT NULL COMMENT 'share_dated',
  `authorizer_access_token` varchar(200) NOT NULL COMMENT 'authorizer_access_token',
  `authorizer_refresh_token` varchar(200) NOT NULL COMMENT 'authorizer_refresh_token',
  `authorizer_expires` char(10) NOT NULL COMMENT 'authorizer_expires',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `web_access_token` varchar(200) NOT NULL COMMENT ' 网页授权token',
  `web_refresh_token` varchar(200) NOT NULL COMMENT 'web_refresh_token',
  `web_expires` char(10) NOT NULL COMMENT '过期时间',
  `qr` varchar(200) NOT NULL COMMENT 'qr',
  `menu_config` text COMMENT '菜单',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `uid_2` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='微信公共帐号';

/*Data for the table `tp_wx_user` */

insert  into `tp_wx_user`(`id`,`uid`,`wxname`,`aeskey`,`encode`,`appid`,`appsecret`,`wxid`,`weixin`,`headerpic`,`token`,`w_token`,`create_time`,`updatetime`,`tplcontentid`,`share_ticket`,`share_dated`,`authorizer_access_token`,`authorizer_refresh_token`,`authorizer_expires`,`type`,`web_access_token`,`web_refresh_token`,`web_expires`,`qr`,`menu_config`) values (25,0,'搜豹公司','',0,'wxe7','5352dc2','gh_b6','wyp5','/Public/upload/weixin/2016/05-09/573016497ba11.jpg','eesops1462769263','so','','','','','','','','',4,'HMF4YDTQ-C_EsY00LK6TDajT3x_ftJTdFbyx1rd3kDVd6NQXYvcoKWHMj1O_1AcukyS0t5lzmPcnRtuIu6UqAa8gGnsLUESKQfB0DVWF72J3jhuaHJQ0p7uQm9hMeILQWPEcAAABUJ','','1466761574','/Public/upload/weixin/2016/05-09/573016665a893.jpg',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;