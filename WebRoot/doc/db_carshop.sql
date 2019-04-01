

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `t_bankuai`
-- ----------------------------
DROP TABLE IF EXISTS `t_bankuai`;
CREATE TABLE `t_bankuai` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `jieshao` varchar(255) DEFAULT NULL,
  `banzhu` int(11) DEFAULT NULL,
  `del` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bankuai
-- ----------------------------
INSERT INTO `t_bankuai` VALUES ('1', 'SSH框架', 'struts/hibernate/spring等高级框架的应用', '1', 'no');
INSERT INTO `t_bankuai` VALUES ('2', 'servlet解析', 'jsp/servlet基础知识浅谈', '1', 'no');
INSERT INTO `t_bankuai` VALUES ('3', 'JSP探索', '主要是jsp一些核心技术', '4', 'no');
INSERT INTO `t_bankuai` VALUES ('4', 'AJax应用', '基于ajax异步书刷新知识技术dwr框架等', '4', 'no');
INSERT INTO `t_bankuai` VALUES ('5', 'aaaa', 'aaaaaaaaaaa', '0', 'yes');
INSERT INTO `t_bankuai` VALUES ('6', 'aaa', 'aaa', '0', 'yes');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) DEFAULT NULL,
  `catelog_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('2', '大众', 'no');
INSERT INTO `t_catelog` VALUES ('3', '雪佛兰', 'no');
INSERT INTO `t_catelog` VALUES ('4', '铃木', 'no');
INSERT INTO `t_catelog` VALUES ('5', '日产', 'no');
INSERT INTO `t_catelog` VALUES ('6', '现代', 'no');
INSERT INTO `t_catelog` VALUES ('7', '别克', 'no');
INSERT INTO `t_catelog` VALUES ('8', '福特', 'no');
INSERT INTO `t_catelog` VALUES ('9', '本田', 'no');
INSERT INTO `t_catelog` VALUES ('10', '雪铁龙', 'no');
INSERT INTO `t_catelog` VALUES ('11', '起亚', 'no');
INSERT INTO `t_catelog` VALUES ('12', '其他', 'no');
INSERT INTO `t_catelog` VALUES ('13', null, 'no');
INSERT INTO `t_catelog` VALUES ('14', null, 'no');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL,
  `xiaoleibie_id` int(11) DEFAULT NULL,
  `goods_name` varchar(50) DEFAULT NULL,
  `goods_zuozhe` varchar(255) DEFAULT NULL,
  `goods_mulu` text,
  `goods_pic` varchar(50) DEFAULT NULL,
  `goods_shichangjia` int(11) DEFAULT NULL,
  `goods_tejia` int(11) DEFAULT NULL,
  `fabushi` varchar(255) DEFAULT NULL,
  `goods_Del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '1', '大众宝来 2013款 宝来 1.6 自动 时尚版', '大众宝来 2013款 宝来 1.6 自动 时尚版', '汽车信息描述 :大众宝来 2013款 宝来 1.6 自动 时尚版', '/upload/1396690240973.jpg', '108000', '108000', '2015-09-25 23:13:17', 'no');
INSERT INTO `t_goods` VALUES ('2', '1', '大众朗逸 2011款 朗逸 1.6 自动 品轩版', '大众朗逸 2011款 朗逸 1.6 自动 品轩版', '汽车描述：大众朗逸 2011款 朗逸 1.6 自动 品轩版', '/upload/1396690327887.jpg', '98000', '98000', '2015-09-25 23:13:17', 'no');
INSERT INTO `t_goods` VALUES ('3', '1', '大众Polo 2013款 POLO 1.4 手动 风尚版', '大众Polo 2013款 POLO 1.4 手动 风尚版', '汽车描述：大众Polo 2013款 POLO 1.4 手动 风尚版', '/upload/1396690394131.jpg', '58000', '58000', '2015-09-25 23:13:17', 'no');
INSERT INTO `t_goods` VALUES ('4', '3', '大众Polo 2011款 POLO 1.6 自动 致尚版', '大众Polo 2011款 POLO 1.6 自动 致尚版', '汽车描述：大众Polo 2011款 POLO 1.6 自动 致尚版', '/upload/1396690576803.jpg', '98000', '98000', '2015-09-25 23:13:17', 'no');
INSERT INTO `t_goods` VALUES ('5', '3', '大众途观 2010款 途观 2.0TSI 自动 四驱', '大众途观 2010款 途观 2.0TSI 自动 四驱', '汽车描述：大众途观 2010款 途观 2.0TSI 自动 四驱', '/upload/1396690716796.jpg', '150000', '150000', '2015-09-25 23:13:17', 'no');
INSERT INTO `t_goods` VALUES ('6', '3', '大众帕萨特 2007款 帕萨特 领驭 2.0MF', '大众帕萨特 2007款 帕萨特 领驭 2.0MF', '汽车描述：大众帕萨特 2007款 帕萨特 领驭 2.0MF大众帕萨特 2007款 帕萨特 领驭 2.0MF', '/upload/1396690832935.jpg', '78000', '78000', '2015-09-25 23:13:17', 'no');
INSERT INTO `t_goods` VALUES ('7', '1', '大众速腾 2010款 速腾 1.4TSI 双离合', '大众速腾 2010款 速腾 1.4TSI 双离合', '大众速腾 2010款 速腾 1.4TSI 双离合', '/upload/1396690910627.jpg', '130000', '130000', '2015-09-25 23:13:17', 'no');
INSERT INTO `t_goods` VALUES ('8', '2', '大众速腾 2014款 速腾 1.4TSI 手动 时尚型', '大众速腾 2014款 速腾 1.4TSI 手动 时尚型', '大众速腾 2014款 速腾 1.4TSI 手动 时尚型', '/upload/1396690951561.jpg', '160000', '160000', '2015-09-25 23:13:17', 'no');
INSERT INTO `t_goods` VALUES ('9', '1', '别克凯越 2008款 1.6 手动 标准版', '别克凯越 2008款 1.6 手动 标准版', '别克凯越 2008款 1.6 手动 标准版别克凯越 2008款 1.6 手动 标准版', '/upload/1396691697208.jpg', '78000', '78000', '2015-09-25 23:13:17', 'no');
INSERT INTO `t_goods` VALUES ('10', '1', '别克英朗 2012款 英朗GT 1.6 自动 时尚版', '别克英朗 2012款 英朗GT 1.6 自动 时尚版', '别克英朗 2012款 英朗GT 1.6 自动 时尚版别克英朗 2012款 英朗GT 1.6 自动 时尚版别克英朗 2012款 英朗GT 1.6 自动 时尚版', '/upload/1396691740286.jpg', '150000', '150000', '2015-09-25 23:13:17', 'no');

-- ----------------------------
-- Table structure for `t_huifu`
-- ----------------------------
DROP TABLE IF EXISTS `t_huifu`;
CREATE TABLE `t_huifu` (
  `id` int(11) NOT NULL,
  `title` varchar(4000) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `zhuti_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_huifu
-- ----------------------------

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL,
  `order_bianhao` varchar(50) DEFAULT NULL,
  `order_date` varchar(50) DEFAULT NULL,
  `order_zhuangtai` varchar(50) DEFAULT NULL,
  `order_songhuodizhi` varchar(50) DEFAULT NULL,
  `order_fukuangfangshi` varchar(50) DEFAULT NULL,
  `order_jine` int(11) DEFAULT NULL,
  `order_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '20150925112345', '2015-09-25 11:23:45', 'yes', '', '货到付款', '108000', '7');
INSERT INTO `t_order` VALUES ('2', '20151019012531', '2015-10-19 01:25:31', 'yes', '', '货到付款', '150000', '7');

-- ----------------------------
-- Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `orderItem_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderItem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('1', '1', '1', '1');
INSERT INTO `t_orderitem` VALUES ('2', '2', '10', '1');

-- ----------------------------
-- Table structure for `t_pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `t_pinglun`;
CREATE TABLE `t_pinglun` (
  `id` int(11) NOT NULL DEFAULT '0',
  `neirong` varchar(500) DEFAULT NULL,
  `shijian` varchar(255) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pinglun
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pw` varchar(50) DEFAULT NULL,
  `user_realname` varchar(50) DEFAULT NULL,
  `user_sex` varchar(50) DEFAULT NULL,
  `user_age` varchar(50) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_tel` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `user_del` varchar(255) DEFAULT NULL,
  `jifen` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('7', 'wenzhixiu', '111111', '文之秀', '女', '22', '南京路', '13555555555', 'wenzhixiu@yahoo.cn', null, 'no', null);
INSERT INTO `t_user` VALUES ('8', 'test', '111111', '文之秀毕业设计', '女', '20', 'xx', '13888888888', '221122', null, 'no', null);

-- ----------------------------
-- Table structure for `t_xiaoleibie`
-- ----------------------------
DROP TABLE IF EXISTS `t_xiaoleibie`;
CREATE TABLE `t_xiaoleibie` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  `catelogId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_xiaoleibie
-- ----------------------------
INSERT INTO `t_xiaoleibie` VALUES ('1', '朗逸', 'no', '2');
INSERT INTO `t_xiaoleibie` VALUES ('2', 'Polo', 'no', '2');
INSERT INTO `t_xiaoleibie` VALUES ('3', '速腾', 'no', '2');
INSERT INTO `t_xiaoleibie` VALUES ('4', '宝来', 'no', '2');
INSERT INTO `t_xiaoleibie` VALUES ('5', '帕沙特', 'no', '2');
INSERT INTO `t_xiaoleibie` VALUES ('6', '甲壳虫', 'no', '2');
INSERT INTO `t_xiaoleibie` VALUES ('7', '途观', 'no', '2');
INSERT INTO `t_xiaoleibie` VALUES ('8', '赛欧', 'no', '3');
INSERT INTO `t_xiaoleibie` VALUES ('9', '科鲁兹', 'no', '3');
INSERT INTO `t_xiaoleibie` VALUES ('10', '丰田', 'no', '5');

-- ----------------------------
-- Table structure for `t_zhuti`
-- ----------------------------
DROP TABLE IF EXISTS `t_zhuti`;
CREATE TABLE `t_zhuti` (
  `id` int(11) NOT NULL,
  `title` varchar(4000) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `fujian` varchar(55) DEFAULT NULL,
  `fujianYuanshiming` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `catelog_id` int(11) NOT NULL,
  `shifouding` varchar(255) DEFAULT NULL,
  `shifoujing` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_zhuti
-- ----------------------------
INSERT INTO `t_zhuti` VALUES ('4', 'J2ME程序运行中如何获知来电或其他与程序本身无关的异常情况', 'J2ME程序运行中如何获知来电或其他与程序本身无关的其他手机异常情况呢？<br />\r\n比如获取来电信息或短信等等', '/upload/1332747101578.doc', '1332747101578.doc', '2014-03-10', '1', '1', '否', '否');
INSERT INTO `t_zhuti` VALUES ('5', '浅谈J2me游戏如何快速移植到Android', '很多J2ME开发者可能都会遇到这样的临时性需求。其实J2ME程序往Android移植，并不是特别麻烦。<br />\r\n经过一番认真学习，小白开始整理起了笔记&hellip;&hellip;<br />', '/upload/1332747101578.doc', '1332747101578.doc', '2014-03-10', '1', '1', '是', '否');
INSERT INTO `t_zhuti` VALUES ('6', 'Android 4.0 为什么模拟器老是提示我谷歌拼音输入法已停止', 'Android 4.0 为什么模拟器老是提示我谷歌拼音输入法已停止', '', '', '2014-03-10', '1', '1', '否', '否');
INSERT INTO `t_zhuti` VALUES ('8', 'jquery+struts2无刷新分页，哪位有例子 ', 'jquery+struts2无刷新分页，哪位有例子', '/upload/1332747101578.doc', '1332747101578.doc', '2014-03-10', '1', '1', '是', '否');
INSERT INTO `t_zhuti` VALUES ('9', '为什么总看到有人说因为用了StringBuilder所以string.Format一定效率高', '为什么总看到有人说因为用了StringBuilder所以string.Format一定效率高', '', '', '2014-03-10', '1', '2', '否', '否');
INSERT INTO `t_zhuti` VALUES ('11', 'VB.NET编写的函数中包含可选数组时，如何初始化数组？', 'VB.NET编写的函数中包含可选数组时，如何初始化数组？', '', '', '2014-03-10', '1', '2', '是', '是');
INSERT INTO `t_zhuti` VALUES ('12', 'win7下用批处理获取IP地址，并赋值给某变量？？？ ', 'win7下用批处理获取IP地址，并赋值给某变量？？？', '', '', '2014-03-10', '1', '3', '否', '否');
INSERT INTO `t_zhuti` VALUES ('13', 'WIN7 使用中突然黑屏，右下角有一小段亮线 ', 'WIN7 使用中突然黑屏，右下角有一小段亮线', '', '', '2014-03-10', '1', '3', '否', '否');
INSERT INTO `t_zhuti` VALUES ('14', '22222222222222222222222222222', '<p>2222222222222222222222222222222222222222222222222222222222</p>', '/upload/1390058938907.jpg', '2.jpg', '2014-03-10', '1', '1', '否', '否');
INSERT INTO `t_zhuti` VALUES ('16', 'sssssssss', '<p>ssssssss</p>', '/upload/1445187352942.jpg', 'banner.jpg', '2015-10-19', '7', '2', '否', '否');
