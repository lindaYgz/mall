SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sc_index_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `sc_index_carousel`;
CREATE TABLE `sc_index_carousel` (
  `cid` int(11) NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `href` varchar(128) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_index_carousel
-- ----------------------------
INSERT INTO `sc_index_carousel` VALUES ('1', 'img/bg2.jpg', '轮播广告商品1', 'product_details.html?lid=1');
INSERT INTO `sc_index_carousel` VALUES ('2', 'img/bg1.jpg', '轮播广告商品2', 'product_details.html?lid=2');


-- ----------------------------
-- Table structure for `sc_index_product`
-- ----------------------------
DROP TABLE IF EXISTS `sc_index_product`;
CREATE TABLE `sc_index_product` (
  `pid` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `details` varchar(128) default NULL,
  `pic` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `href` varchar(128) default NULL,
  `seq_recommended` tinyint(4) default NULL,
  `seq_new_arrival` tinyint(4) default NULL,
  `seq_top_sale` tinyint(4) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_index_product
-- ----------------------------
INSERT INTO `sc_index_product` VALUES ('8', 'Apple MacBook Air系列', '酷睿双核i5处理器|256GB SSD|8GB内存|英特尔HD显卡620含共享显卡内存', 'img/index/study_computer_img1.png', '6988.00', 'product_details.html?lid=1', '1', '1', '1');


-- ----------------------------
-- Table structure for `sc_laptop`
-- ----------------------------
DROP TABLE IF EXISTS `sc_laptop`;
CREATE TABLE `sc_laptop` (
  `lid` int(11) NOT NULL auto_increment,
  `family_id` int(11) default NULL,
  `title` varchar(128) default NULL,
  `subtitle` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `promise` varchar(64) default NULL,
  `spec` varchar(64) default NULL,
  `lname` varchar(32) default NULL,
  `os` varchar(32) default NULL,
  `memory` varchar(32) default NULL,
  `resolution` varchar(32) default NULL,
  `video_card` varchar(32) default NULL,
  `cpu` varchar(32) default NULL,
  `video_memory` varchar(32) default NULL,
  `category` varchar(32) default NULL,
  `disk` varchar(32) default NULL,
  `details` varchar(1024) default NULL,
  `shelf_time` bigint(20) default NULL,
  `sold_count` int(11) default NULL,
  `is_onsale` tinyint(1) default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_laptop
-- ----------------------------
 

-- ----------------------------
-- Table structure for `sc_laptop_family`
-- ----------------------------
DROP TABLE IF EXISTS `sc_laptop_family`;
CREATE TABLE `sc_laptop_family` (
  `fid` int(11) NOT NULL auto_increment,
  `fname` varchar(32) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_laptop_family
-- ----------------------------
INSERT INTO `sc_laptop_family` VALUES ('1', 'AppleMacBookAir');
INSERT INTO `sc_laptop_family` VALUES ('2', '小米Air');


-- ----------------------------
-- Table structure for `sc_laptop_pic`
-- ----------------------------
DROP TABLE IF EXISTS `sc_laptop_pic`;
CREATE TABLE `sc_laptop_pic` (
  `pid` int(11) NOT NULL auto_increment,
  `laptop_id` int(11) default NULL,
  `sm` varchar(128) default NULL,
  `md` varchar(128) default NULL,
  `lg` varchar(128) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_laptop_pic
-- ----------------------------
INSERT INTO `sc_laptop_pic` VALUES ('1', '1', 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg');
INSERT INTO `sc_laptop_pic` VALUES ('2', '1', 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg');




-- ----------------------------
-- Table structure for `sc_order`
-- ----------------------------
DROP TABLE IF EXISTS `sc_order`;
CREATE TABLE `sc_order` (
  `aid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `address_id` int(11) default NULL,
  `status` int(11) default NULL,
  `order_time` bigint(20) default NULL,
  `pay_time` bigint(20) default NULL,
  `deliver_time` bigint(20) default NULL,
  `received_time` bigint(20) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_order
-- ----------------------------

-- ----------------------------
-- Table structure for `sc_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `sc_order_detail`;
CREATE TABLE `sc_order_detail` (
  `did` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `sc_receiver_address`
-- ----------------------------
DROP TABLE IF EXISTS `sc_receiver_address`;
CREATE TABLE `sc_receiver_address` (
  `aid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `receiver` varchar(16) default NULL,
  `province` varchar(16) default NULL,
  `city` varchar(16) default NULL,
  `county` varchar(16) default NULL,
  `address` varchar(128) default NULL,
  `cellphone` varchar(16) default NULL,
  `fixedphone` varchar(16) default NULL,
  `postcode` char(6) default NULL,
  `tag` varchar(16) default NULL,
  `is_default` tinyint(1) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_receiver_address
-- ----------------------------

-- ----------------------------
-- Table structure for `sc_shoppingcart_item`
-- ----------------------------
DROP TABLE IF EXISTS `sc_shoppingcart_item`;
CREATE TABLE `sc_shoppingcart_item` (
  `iid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `count` int(11) default NULL,
  `is_checked` tinyint(1) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_shoppingcart_item
-- ----------------------------
INSERT INTO `sc_shoppingcart_item` VALUES ('1', '10', '17', '1', '0');
INSERT INTO `sc_shoppingcart_item` VALUES ('2', '11', '11', '1', '0');
INSERT INTO `sc_shoppingcart_item` VALUES ('3', '12', '1', '1', '1');
INSERT INTO `sc_shoppingcart_item` VALUES ('4', '13', '3', '9', '0');
I

-- ----------------------------
-- Table structure for `sc_user`
-- ----------------------------
DROP TABLE IF EXISTS `sc_user`;
CREATE TABLE `sc_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_user
-- ----------------------------
INSERT INTO `sc_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', '0');
INSERT INTO `sc_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', '1');
INSERT INTO `sc_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1');
INSERT INTO `sc_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
