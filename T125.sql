/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t125`;
CREATE DATABASE IF NOT EXISTS `t125` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t125`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot2eidg/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot2eidg/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot2eidg/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `qicheguihai`;
CREATE TABLE IF NOT EXISTS `qicheguihai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `guihaishijian` datetime DEFAULT NULL COMMENT '归还时间',
  `guihaineirong` longtext COMMENT '归还内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='汽车归还';

DELETE FROM `qicheguihai`;
INSERT INTO `qicheguihai` (`id`, `addtime`, `qichemingcheng`, `qicheleixing`, `pinpai`, `chepaihao`, `guihaishijian`, `guihaineirong`, `yonghuming`, `xingming`, `shouji`, `sfsh`, `shhf`) VALUES
	(71, '2021-05-19 04:20:26', '汽车名称1', '汽车类型1', '品牌1', '车牌号1', '2021-05-19 12:20:26', '归还内容1', '用户名1', '姓名1', '手机1', '是', ''),
	(72, '2021-05-19 04:20:26', '汽车名称2', '汽车类型2', '品牌2', '车牌号2', '2021-05-19 12:20:26', '归还内容2', '用户名2', '姓名2', '手机2', '是', ''),
	(73, '2021-05-19 04:20:26', '汽车名称3', '汽车类型3', '品牌3', '车牌号3', '2021-05-19 12:20:26', '归还内容3', '用户名3', '姓名3', '手机3', '是', ''),
	(74, '2021-05-19 04:20:26', '汽车名称4', '汽车类型4', '品牌4', '车牌号4', '2021-05-19 12:20:26', '归还内容4', '用户名4', '姓名4', '手机4', '是', ''),
	(75, '2021-05-19 04:20:26', '汽车名称5', '汽车类型5', '品牌5', '车牌号5', '2021-05-19 12:20:26', '归还内容5', '用户名5', '姓名5', '手机5', '是', ''),
	(76, '2021-05-19 04:20:26', '汽车名称6', '汽车类型6', '品牌6', '车牌号6', '2021-05-19 12:20:26', '归还内容6', '用户名6', '姓名6', '手机6', '是', '');

DROP TABLE IF EXISTS `qicheruku`;
CREATE TABLE IF NOT EXISTS `qicheruku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `huishoudidian` varchar(200) DEFAULT NULL COMMENT '回收地点',
  `huishoushijian` datetime DEFAULT NULL COMMENT '回收时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='汽车入库';

DELETE FROM `qicheruku`;
INSERT INTO `qicheruku` (`id`, `addtime`, `qichemingcheng`, `qicheleixing`, `pinpai`, `chepaihao`, `huishoudidian`, `huishoushijian`) VALUES
	(51, '2021-05-19 04:20:26', '汽车名称1', '汽车类型1', '品牌1', '车牌号1', '回收地点1', '2021-05-19 12:20:26'),
	(52, '2021-05-19 04:20:26', '汽车名称2', '汽车类型2', '品牌2', '车牌号2', '回收地点2', '2021-05-19 12:20:26'),
	(53, '2021-05-19 04:20:26', '汽车名称3', '汽车类型3', '品牌3', '车牌号3', '回收地点3', '2021-05-19 12:20:26'),
	(54, '2021-05-19 04:20:26', '汽车名称4', '汽车类型4', '品牌4', '车牌号4', '回收地点4', '2021-05-19 12:20:26'),
	(55, '2021-05-19 04:20:26', '汽车名称5', '汽车类型5', '品牌5', '车牌号5', '回收地点5', '2021-05-19 12:20:26'),
	(56, '2021-05-19 04:20:26', '汽车名称6', '汽车类型6', '品牌6', '车牌号6', '回收地点6', '2021-05-19 12:20:26');

DROP TABLE IF EXISTS `qichetoufang`;
CREATE TABLE IF NOT EXISTS `qichetoufang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheshenyanse` varchar(200) DEFAULT NULL COMMENT '车身颜色',
  `zuoweishuliang` varchar(200) DEFAULT NULL COMMENT '座位数量',
  `xiaoshijiage` int NOT NULL COMMENT '小时价格',
  `toufangdiqu` varchar(200) DEFAULT NULL COMMENT '投放地区',
  `toufangdidian` varchar(200) DEFAULT NULL COMMENT '投放地点',
  `toufangshijian` datetime DEFAULT NULL COMMENT '投放时间',
  `cheliangzhuangtai` varchar(200) DEFAULT NULL COMMENT '车辆状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='汽车投放';

DELETE FROM `qichetoufang`;
INSERT INTO `qichetoufang` (`id`, `addtime`, `qichemingcheng`, `qicheleixing`, `pinpai`, `chepaihao`, `cheshenyanse`, `zuoweishuliang`, `xiaoshijiage`, `toufangdiqu`, `toufangdidian`, `toufangshijian`, `cheliangzhuangtai`) VALUES
	(41, '2021-05-19 04:20:26', '汽车名称1', '汽车类型1', '品牌1', '车牌号1', '车身颜色1', '座位数量1', 1, '投放地区1', '投放地点1', '2021-05-19 12:20:26', '空闲'),
	(42, '2021-05-19 04:20:26', '汽车名称2', '汽车类型2', '品牌2', '车牌号2', '车身颜色2', '座位数量2', 2, '投放地区2', '投放地点2', '2021-05-19 12:20:26', '空闲'),
	(43, '2021-05-19 04:20:26', '汽车名称3', '汽车类型3', '品牌3', '车牌号3', '车身颜色3', '座位数量3', 3, '投放地区3', '投放地点3', '2021-05-19 12:20:26', '空闲'),
	(44, '2021-05-19 04:20:26', '汽车名称4', '汽车类型4', '品牌4', '车牌号4', '车身颜色4', '座位数量4', 4, '投放地区4', '投放地点4', '2021-05-19 12:20:26', '空闲'),
	(45, '2021-05-19 04:20:26', '汽车名称5', '汽车类型5', '品牌5', '车牌号5', '车身颜色5', '座位数量5', 5, '投放地区5', '投放地点5', '2021-05-19 12:20:26', '空闲'),
	(46, '2021-05-19 04:20:26', '汽车名称6', '汽车类型6', '品牌6', '车牌号6', '车身颜色6', '座位数量6', 6, '投放地区6', '投放地点6', '2021-05-19 12:20:26', '空闲');

DROP TABLE IF EXISTS `qichexinxi`;
CREATE TABLE IF NOT EXISTS `qichexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `cheshenyanse` varchar(200) DEFAULT NULL COMMENT '车身颜色',
  `zuoweishuliang` varchar(200) DEFAULT NULL COMMENT '座位数量',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='汽车信息';

DELETE FROM `qichexinxi`;
INSERT INTO `qichexinxi` (`id`, `addtime`, `qichemingcheng`, `qicheleixing`, `pinpai`, `cheshenyanse`, `zuoweishuliang`, `chepaihao`) VALUES
	(31, '2021-05-19 04:20:26', '汽车名称1', '汽车类型1', '品牌1', '车身颜色1', '座位数量1', '车牌号1'),
	(32, '2021-05-19 04:20:26', '汽车名称2', '汽车类型2', '品牌2', '车身颜色2', '座位数量2', '车牌号2'),
	(33, '2021-05-19 04:20:26', '汽车名称3', '汽车类型3', '品牌3', '车身颜色3', '座位数量3', '车牌号3'),
	(34, '2021-05-19 04:20:26', '汽车名称4', '汽车类型4', '品牌4', '车身颜色4', '座位数量4', '车牌号4'),
	(35, '2021-05-19 04:20:26', '汽车名称5', '汽车类型5', '品牌5', '车身颜色5', '座位数量5', '车牌号5'),
	(36, '2021-05-19 04:20:26', '汽车名称6', '汽车类型6', '品牌6', '车身颜色6', '座位数量6', '车牌号6');

DROP TABLE IF EXISTS `shiyongdingdan`;
CREATE TABLE IF NOT EXISTS `shiyongdingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qicheleixing` varchar(200) DEFAULT NULL COMMENT '汽车类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `xiaoshijiage` int DEFAULT NULL COMMENT '小时价格',
  `shiyongshizhang` int NOT NULL COMMENT '使用时长',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `shiyongshijian` datetime DEFAULT NULL COMMENT '使用时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='使用订单';

DELETE FROM `shiyongdingdan`;
INSERT INTO `shiyongdingdan` (`id`, `addtime`, `qichemingcheng`, `qicheleixing`, `pinpai`, `chepaihao`, `xiaoshijiage`, `shiyongshizhang`, `zongjiage`, `shiyongshijian`, `yonghuming`, `xingming`, `shouji`, `sfsh`, `shhf`, `ispay`) VALUES
	(61, '2021-05-19 04:20:26', '汽车名称1', '汽车类型1', '品牌1', '车牌号1', 1, 1, '总价格1', '2021-05-19 12:20:26', '用户名1', '姓名1', '手机1', '是', '', '未支付'),
	(62, '2021-05-19 04:20:26', '汽车名称2', '汽车类型2', '品牌2', '车牌号2', 2, 2, '总价格2', '2021-05-19 12:20:26', '用户名2', '姓名2', '手机2', '是', '', '未支付'),
	(63, '2021-05-19 04:20:26', '汽车名称3', '汽车类型3', '品牌3', '车牌号3', 3, 3, '总价格3', '2021-05-19 12:20:26', '用户名3', '姓名3', '手机3', '是', '', '未支付'),
	(64, '2021-05-19 04:20:26', '汽车名称4', '汽车类型4', '品牌4', '车牌号4', 4, 4, '总价格4', '2021-05-19 12:20:26', '用户名4', '姓名4', '手机4', '是', '', '未支付'),
	(65, '2021-05-19 04:20:26', '汽车名称5', '汽车类型5', '品牌5', '车牌号5', 5, 5, '总价格5', '2021-05-19 12:20:26', '用户名5', '姓名5', '手机5', '是', '', '未支付'),
	(66, '2021-05-19 04:20:26', '汽车名称6', '汽车类型6', '品牌6', '车牌号6', 6, 6, '总价格6', '2021-05-19 12:20:26', '用户名6', '姓名6', '手机6', '是', '', '未支付');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(3, 1, 'admin', 'users', '管理员', 'onri8b908gtukxis43omaic8gsb8zw66', '2024-04-07 03:50:38', '2024-04-07 04:52:18'),
	(4, 11, '用户1', 'yonghu', '用户', 'b17co0tlkg3latqubwxrnlffv6a9l2wx', '2024-04-07 03:53:22', '2024-04-07 04:53:22');

DROP TABLE IF EXISTS `toufangdiqu`;
CREATE TABLE IF NOT EXISTS `toufangdiqu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) NOT NULL COMMENT '地区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='投放地区';

DELETE FROM `toufangdiqu`;
INSERT INTO `toufangdiqu` (`id`, `addtime`, `diqu`) VALUES
	(21, '2021-05-19 04:20:26', '地区1'),
	(22, '2021-05-19 04:20:26', '地区2'),
	(23, '2021-05-19 04:20:26', '地区3'),
	(24, '2021-05-19 04:20:26', '地区4'),
	(25, '2021-05-19 04:20:26', '地区5'),
	(26, '2021-05-19 04:20:26', '地区6');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-19 04:20:26');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shengri` date DEFAULT NULL COMMENT '生日',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `xingbie`, `shengri`, `shenfenzheng`, `shouji`) VALUES
	(11, '2021-05-19 04:20:26', '用户1', '123456', '姓名1', '男', '2021-05-19', '440300199101010001', '13823888881'),
	(12, '2021-05-19 04:20:26', '用户2', '123456', '姓名2', '男', '2021-05-19', '440300199202020002', '13823888882'),
	(13, '2021-05-19 04:20:26', '用户3', '123456', '姓名3', '男', '2021-05-19', '440300199303030003', '13823888883'),
	(14, '2021-05-19 04:20:26', '用户4', '123456', '姓名4', '男', '2021-05-19', '440300199404040004', '13823888884'),
	(15, '2021-05-19 04:20:26', '用户5', '123456', '姓名5', '男', '2021-05-19', '440300199505050005', '13823888885'),
	(16, '2021-05-19 04:20:26', '用户6', '123456', '姓名6', '男', '2021-05-19', '440300199606060006', '13823888886');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
