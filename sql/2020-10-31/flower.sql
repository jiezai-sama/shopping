/*
 Navicat Premium Data Transfer

 Source Server         : BENDI
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : flower

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 31/10/2020 17:42:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bigtype
-- ----------------------------
DROP TABLE IF EXISTS `bigtype`;
CREATE TABLE `bigtype`  (
  `bid` int NOT NULL COMMENT '最大分类id',
  `bIgTypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '最大分类名称',
  `selectContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选择原因',
  `selectImgs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选择图片',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bigtype
-- ----------------------------
INSERT INTO `bigtype` VALUES (1, '鲜花', '获评鲜花龙头企业|当日新鲜花材制作|赛事冠军花艺师团队|严选花材|12道严苛品控标准|500万用户信赖好评', '/img/detail/content1/s/1.png|/img/detail/content1/s/2.png|/img/detail/content1/s/3.png|/img/detail/content1/s/4.png|/img/detail/content1/s/5.png|/img/detail/content1/s/6.png', '/img/detail/content1/s/title.png');
INSERT INTO `bigtype` VALUES (2, '永生花', '获评鲜花礼品龙头企业|顺丰包邮·100+城市次日达|厄瓜多尔进口花材|500万用户信赖好评', '/img/detail/content2/s/1.png|/img/detail/content2/s/2.png|/img/detail/content2/s/3.png|/img/detail/content2/s/4.png', '/img/detail/content2/s/title.png');
INSERT INTO `bigtype` VALUES (3, '蛋糕', '获评鲜花礼品龙头企业|品牌蛋糕·品质保障|当日食材·新鲜可口|500万用户信赖好评', '/img/detail/content3/s/1.png|/img/detail/content3/s/2.png|/img/detail/content3/s/3.png|/img/detail/content3/s/4.png', '/img/detail/content3/s/title.png');
INSERT INTO `bigtype` VALUES (4, '礼品', '获评鲜花礼品龙头企业|顺丰包邮·100+城市次日达|臻选品质礼品|500万用户信赖好评', '/img/detail/content4/s/1.png|/img/detail/content3/s/2.png|/img/detail/content3/s/3.png|/img/detail/content3/s/.png', '/img/detail/content4/s/title.png');

-- ----------------------------
-- Table structure for bigtypecontent
-- ----------------------------
DROP TABLE IF EXISTS `bigtypecontent`;
CREATE TABLE `bigtypecontent`  (
  `id` int NOT NULL,
  `bigTypeId` int NOT NULL COMMENT '外键最大分类bid',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bigtypecontent
-- ----------------------------
INSERT INTO `bigtypecontent` VALUES (1, 1, '龙头企业认证·15年品牌', '/img/detail/content1/1.png', '始于2005，多次获中国电子商务协会“鲜花龙头企业”认证。');
INSERT INTO `bigtypecontent` VALUES (2, 1, '12道品控标准 + 送前实拍', '/img/detail/content1/2.png', '行业内率先研发并实施12道严苛品控标准：从花材采购、制作、成品、配送、售后全程覆盖，将产品及服务标准化；每束花均实拍回传总部审核，符合品控标准方可送出。');
INSERT INTO `bigtypecontent` VALUES (3, 1, '花艺设计团队', '/img/detail/content1/3.png', '国内领先的原创花艺：中国花艺博览会赛事冠军花艺师打造团队，坚持原创设计，创作花款迄今已畅销千万束。');
INSERT INTO `bigtypecontent` VALUES (4, 1, '当日新鲜花材制作，极速送达', '/img/detail/content1/4.png', '门店覆盖全国2000+城市，鲜花皆由当地门店花艺师在配送当日使用新鲜A级花材制作，确保鲜花娇艳欲滴！并由专人专车送货上门，最快1小时送达，快人一步！');
INSERT INTO `bigtypecontent` VALUES (5, 1, '客服团队', '/img/detail/content1/5.png', '建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。\r\n\r\n建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。\r\n\r\n建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。');
INSERT INTO `bigtypecontent` VALUES (6, 1, '优秀平台汇聚优秀人才', '/img/detail/content1/6.png', '我们相信优秀的平台环境可以吸引同样气质、热爱花礼行业的优秀人才。');
INSERT INTO `bigtypecontent` VALUES (7, 1, '不只鲜花 · 跨界音乐微电影', '/img/detail/content1/7.png', '联合GIMC打造“勇敢爱”系列原创微电影、赞助《不要音乐》大型音乐旅行节目，全网播放超5000万次。');
INSERT INTO `bigtypecontent` VALUES (9, 2, '顺丰包邮 · 100+城市次日达', '/img/detail/content2/2.png', '顺丰包邮，100+城市次日达:默认选择选择顺丰发货(顺丰未覆盖地区EMS发货)，全国100+城市可享“次日达”服务。我们同时也将根据快递时效及订单配送日期计算好发货时 间，最大程度按要求日期送达。');
INSERT INTO `bigtypecontent` VALUES (10, 2, '厄瓜多尔进口花材', '/img/detail/content2/3.png', '严选世界知名永生花材供应商，优先选择进口高品质花材：绝大多数永生花材来自于全球玫瑰的知名种植基地-厄瓜多尔。花头直径、花瓣数是国产的２倍以上，颜色鲜艳夺人。');
INSERT INTO `bigtypecontent` VALUES (11, 2, '花艺设计团队', '/img/detail/content2/4.png', '国内领先的原创花艺：中国花艺博览会赛事冠军花艺师打造团队，坚持原创设计，创作花款迄今已畅销千万束。');
INSERT INTO `bigtypecontent` VALUES (12, 2, '客服团队', '/img/detail/content2/5.png', '建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。');
INSERT INTO `bigtypecontent` VALUES (13, 2, '优秀平台汇聚优秀人才', '/img/detail/content2/6.png', '我们相信优秀的平台环境可以吸引同样气质、热爱花礼行业的优秀人才。');
INSERT INTO `bigtypecontent` VALUES (14, 2, '不只鲜花 · 跨界音乐微电影', '/img/detail/content2/7.png', '联合GIMC打造“勇敢爱”系列原创微电影、赞助《不要音乐》大型音乐旅行节目，全网播放超5000万次。');
INSERT INTO `bigtypecontent` VALUES (15, 3, '龙头企业认证·15年品牌', '/img/detail/content3/1.png', '始于2005，多次获中国电子商务协会“鲜花龙头企业”认证。');
INSERT INTO `bigtypecontent` VALUES (16, 3, '品牌蛋糕·品质保障', '/img/detail/content3/2.png', '从蛋糕用料、食材健康、制作工艺和卫生标准、设计款式等多个角度考察，严格筛选一线品牌和产品，为用户提供品质上乘、款式新颖的蛋糕产品。');
INSERT INTO `bigtypecontent` VALUES (17, 3, '当日食材·新鲜可口', '/img/detail/content3/3.png', '所有品牌蛋糕，均当天制作当天配送，最大限度保证蛋糕的新鲜和美味。\r\n\r\n所有品牌蛋糕，均当天制作当天配送，最大限度保证蛋糕的新鲜和美味。\r\n\r\n所有品牌蛋糕，均当天制作当天配送，最大限度保证蛋糕的新鲜和美味。\r\n\r\n所有品牌蛋糕，均当天制作当天配送，最大限度保证蛋糕的新鲜和美味。');
INSERT INTO `bigtypecontent` VALUES (18, 3, '客服团队', '/img/detail/content3/4.png', '建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。');
INSERT INTO `bigtypecontent` VALUES (19, 3, '优秀平台汇聚优秀人才', '/img/detail/content3/5.png', '我们相信优秀的平台环境可以吸引同样气质、热爱花礼行业的优秀人才。');
INSERT INTO `bigtypecontent` VALUES (20, 3, '不只鲜花 · 跨界音乐微电影', '/img/detail/content3/6.png', '联合GIMC打造“勇敢爱”系列原创微电影、赞助《不要音乐》大型音乐旅行节目，全网播放超5000万次。');
INSERT INTO `bigtypecontent` VALUES (21, 4, '龙头企业认证·15年品牌', '/img/detail/content4/1.png', '始于2005，多次获中国电子商务协会“鲜花龙头企业”认证。');
INSERT INTO `bigtypecontent` VALUES (22, 4, '顺丰包邮 · 100+城市次日达', '/img/detail/content4/2.png', '顺丰包邮，100+城市次日达:默认选择选择顺丰发货(顺丰未覆盖地区EMS发货)，全国100+城市可享“次日达”服务。我们同时也将根据快递时效及订单配送日期计算好发货时 间，最大程度按要求日期送达。');
INSERT INTO `bigtypecontent` VALUES (23, 4, '臻选品质礼品', '/img/detail/content4/3.png', '专业礼品选品团队，从市场筛选和评测创意、品质、价格各维度表现优秀的品牌和产品，并走访供应商实地考察、多批次随机抽检，最终为用户提供精美、别出心意的 礼品。');
INSERT INTO `bigtypecontent` VALUES (24, 4, '客服团队', '/img/detail/content4/4.png', '建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。');
INSERT INTO `bigtypecontent` VALUES (25, 4, '优秀平台汇聚优秀人才', '/img/detail/content4/5.png', '我们相信优秀的平台环境可以吸引同样气质、热爱花礼行业的优秀人才。');
INSERT INTO `bigtypecontent` VALUES (26, 4, '不只鲜花 · 跨界音乐微电影', '/img/detail/content4/6.png', '联合GIMC打造“勇敢爱”系列原创微电影、赞助《不要音乐》大型音乐旅行节目，全网播放超5000万次。');

-- ----------------------------
-- Table structure for class2
-- ----------------------------
DROP TABLE IF EXISTS `class2`;
CREATE TABLE `class2`  (
  `c2id` int NOT NULL AUTO_INCREMENT COMMENT '二级分类id',
  `c2Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级分类标题',
  `bigId` int NOT NULL COMMENT '所属一级标题id，外键',
  PRIMARY KEY (`c2id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class2
-- ----------------------------
INSERT INTO `class2` VALUES (1, '对象', 1);
INSERT INTO `class2` VALUES (2, '场合', 1);
INSERT INTO `class2` VALUES (3, '花材', 1);
INSERT INTO `class2` VALUES (4, '对象', 2);
INSERT INTO `class2` VALUES (5, '分类', 2);
INSERT INTO `class2` VALUES (6, '品牌', 3);
INSERT INTO `class2` VALUES (7, '品牌', 4);
INSERT INTO `class2` VALUES (8, '对象', 4);
INSERT INTO `class2` VALUES (9, '分类', 4);

-- ----------------------------
-- Table structure for class3
-- ----------------------------
DROP TABLE IF EXISTS `class3`;
CREATE TABLE `class3`  (
  `c3id` int NOT NULL AUTO_INCREMENT COMMENT '三级分类id',
  `c3Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '三级分类名称',
  `c2Id` int NOT NULL COMMENT '所属二级分类id',
  `c3Imgs` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '三级分类图片',
  PRIMARY KEY (`c3id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class3
-- ----------------------------
INSERT INTO `class3` VALUES (1, '送女友鲜花', 1, '/img/class/1/1.png');
INSERT INTO `class3` VALUES (2, '送男性鲜花', 1, '/img/class/1/2.png');
INSERT INTO `class3` VALUES (3, '送长辈鲜花', 1, '/img/class/1/3.png');
INSERT INTO `class3` VALUES (4, '送朋友鲜花', 1, '/img/class/1/4.png');
INSERT INTO `class3` VALUES (5, '爱情鲜花', 2, '/img/class/1/5.png');
INSERT INTO `class3` VALUES (6, '生日鲜花', 2, '/img/class/1/6.png');
INSERT INTO `class3` VALUES (7, '探望慰问', 2, '/img/class/1/7.png');
INSERT INTO `class3` VALUES (8, '商务鲜花', 2, '/img/class/1/8.png');
INSERT INTO `class3` VALUES (9, '祝福庆贺', 2, '/img/class/1/9.png');
INSERT INTO `class3` VALUES (10, '婚庆鲜花', 2, '/img/class/1/10.png');
INSERT INTO `class3` VALUES (11, '道歉鲜花', 2, '/img/class/1/11.png');
INSERT INTO `class3` VALUES (12, '哀思鲜花', 2, '/img/class/1/12.png');
INSERT INTO `class3` VALUES (13, '港澳台鲜花', 2, '/img/class/1/13.png');
INSERT INTO `class3` VALUES (14, '玫瑰', 3, '/img/class/1/14.png');
INSERT INTO `class3` VALUES (15, '康乃馨', 3, '/img/class/1/15.png');
INSERT INTO `class3` VALUES (16, '向日葵', 3, '/img/class/1/16.png');
INSERT INTO `class3` VALUES (17, '百合', 3, '/img/class/1/17.png');
INSERT INTO `class3` VALUES (18, '绣球', 3, '/img/class/1/18.png');
INSERT INTO `class3` VALUES (19, '郁金香', 3, '/img/class/1/19.png');
INSERT INTO `class3` VALUES (20, '扶郎/太阳花', 3, '/img/class/1/20.png');
INSERT INTO `class3` VALUES (21, '马蹄莲', 3, '/img/class/1/21.png');
INSERT INTO `class3` VALUES (22, '送女友', 4, '/img/class/2/1.png');
INSERT INTO `class3` VALUES (23, '送男性', 4, '/img/class/2/2.png');
INSERT INTO `class3` VALUES (24, '送长辈', 4, '/img/class/2/3.png');
INSERT INTO `class3` VALUES (25, '送朋友', 4, '/img/class/2/4.png');
INSERT INTO `class3` VALUES (26, '永生瓶花', 5, '/img/class/2/5.png');
INSERT INTO `class3` VALUES (27, '经典花盒', 5, '/img/class/2/6.png');
INSERT INTO `class3` VALUES (28, '特色永生花', 5, '/img/class/2/7.png');
INSERT INTO `class3` VALUES (29, '巨型玫瑰', 5, '/img/class/2/8.png');
INSERT INTO `class3` VALUES (30, NULL, 6, '/img/class/3/1.png');
INSERT INTO `class3` VALUES (31, NULL, 6, '/img/class/3/2.png');
INSERT INTO `class3` VALUES (32, NULL, 6, '/img/class/3/3.png');
INSERT INTO `class3` VALUES (33, NULL, 6, '/img/class/3/4.png');
INSERT INTO `class3` VALUES (34, NULL, 6, '/img/class/3/5.png');
INSERT INTO `class3` VALUES (35, NULL, 6, '/img/class/3/6.png');
INSERT INTO `class3` VALUES (36, NULL, 6, '/img/class/3/7.png');
INSERT INTO `class3` VALUES (37, NULL, 6, '/img/class/3/8.png');
INSERT INTO `class3` VALUES (38, NULL, 6, '/img/class/3/9.png');
INSERT INTO `class3` VALUES (39, NULL, 6, '/img/class/3/10.png');
INSERT INTO `class3` VALUES (40, NULL, 6, '/img/class/3/11.png');
INSERT INTO `class3` VALUES (41, NULL, 6, '/img/class/3/12.png');
INSERT INTO `class3` VALUES (45, NULL, 7, '/img/class/4/1.png');
INSERT INTO `class3` VALUES (46, NULL, 7, '/img/class/4/2.png');
INSERT INTO `class3` VALUES (47, NULL, 7, '/img/class/4/3.png');
INSERT INTO `class3` VALUES (48, NULL, 7, '/img/class/4/4.png');
INSERT INTO `class3` VALUES (49, NULL, 7, '/img/class/4/5.png');
INSERT INTO `class3` VALUES (50, NULL, 7, '/img/class/4/6.png');
INSERT INTO `class3` VALUES (51, '送女友', 8, '/img/class/4/7.png');
INSERT INTO `class3` VALUES (52, '送男性', 8, '/img/class/4/8.png');
INSERT INTO `class3` VALUES (53, '送长辈', 8, '/img/class/4/9.png');
INSERT INTO `class3` VALUES (54, '送朋友', 8, '/img/class/4/10.png');
INSERT INTO `class3` VALUES (55, '送客户', 8, '/img/class/4/11.png');
INSERT INTO `class3` VALUES (56, '送老师', 8, '/img/class/4/12.png');
INSERT INTO `class3` VALUES (57, '送小孩', 8, '/img/class/4/13.png');
INSERT INTO `class3` VALUES (58, '送领导', 8, '/img/class/4/14.png');
INSERT INTO `class3` VALUES (59, '音乐盒', 9, '/img/class/4/15.png');
INSERT INTO `class3` VALUES (60, '金箔花', 9, '/img/class/4/16.png');
INSERT INTO `class3` VALUES (61, '3D水晶内雕', 9, '/img/class/4/17.png');
INSERT INTO `class3` VALUES (62, '首饰/美妆', 9, '/img/class/4/18.png');
INSERT INTO `class3` VALUES (63, '巧克力', 9, '/img/class/4/19.png');
INSERT INTO `class3` VALUES (64, '公仔/睡枕', 9, '/img/class/4/20.png');
INSERT INTO `class3` VALUES (65, '家居生活', 9, '/img/class/4/21.png');
INSERT INTO `class3` VALUES (66, NULL, 9, NULL);
INSERT INTO `class3` VALUES (67, '摆件/其他', 9, '/img/class/4/22.png');

-- ----------------------------
-- Table structure for classwithpro
-- ----------------------------
DROP TABLE IF EXISTS `classwithpro`;
CREATE TABLE `classwithpro`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `class3Id` int NULL DEFAULT NULL COMMENT '外键',
  `proId` int NULL DEFAULT NULL COMMENT '外键商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of classwithpro
-- ----------------------------

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail`  (
  `did` int NOT NULL AUTO_INCREMENT COMMENT '详情介绍图片id',
  `imgsUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品详情图片地址',
  `proId` int NOT NULL COMMENT '外键pid',
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 246 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES (1, '/img/detail/d1/1.jpg', 1);
INSERT INTO `detail` VALUES (2, '/img/detail/d1/2.jpg', 1);
INSERT INTO `detail` VALUES (3, '/img/detail/d1/3.jpg', 1);
INSERT INTO `detail` VALUES (4, '/img/detail/d1/4.jpg', 1);
INSERT INTO `detail` VALUES (5, '/img/detail/d1/5.jpg', 1);
INSERT INTO `detail` VALUES (6, '/img/detail/d1/6.jpg', 1);
INSERT INTO `detail` VALUES (7, '/img/detail/d1/7.jpg', 1);
INSERT INTO `detail` VALUES (8, '/img/detail/d1/8.jpg', 1);
INSERT INTO `detail` VALUES (9, '/img/detail/d1/9.jpg', 1);
INSERT INTO `detail` VALUES (10, '/img/detail/d1/10.jpg', 1);
INSERT INTO `detail` VALUES (11, '/img/detail/d1/11.jpg', 1);
INSERT INTO `detail` VALUES (12, '/img/detail/d2/1.jpg', 2);
INSERT INTO `detail` VALUES (13, '/img/detail/d2/2.jpg', 2);
INSERT INTO `detail` VALUES (14, '/img/detail/d2/3.jpg', 2);
INSERT INTO `detail` VALUES (15, '/img/detail/d2/4.jpg', 2);
INSERT INTO `detail` VALUES (16, '/img/detail/d2/5.jpg', 2);
INSERT INTO `detail` VALUES (17, '/img/detail/d2/6.jpg', 2);
INSERT INTO `detail` VALUES (18, '/img/detail/d2/7.jpg', 2);
INSERT INTO `detail` VALUES (19, '/img/detail/d2/8.jpg', 2);
INSERT INTO `detail` VALUES (20, '/img/detail/d2/9.jpg', 2);
INSERT INTO `detail` VALUES (21, '/img/detail/d2/10.jpg', 2);
INSERT INTO `detail` VALUES (22, '/img/detail/d2/11.jpg', 2);
INSERT INTO `detail` VALUES (23, '/img/detail/d2/12.jpg', 2);
INSERT INTO `detail` VALUES (24, '/img/detail/d3/1.jpg', 3);
INSERT INTO `detail` VALUES (25, '/img/detail/d3/2.jpg', 3);
INSERT INTO `detail` VALUES (26, '/img/detail/d3/3.jpg', 3);
INSERT INTO `detail` VALUES (27, '/img/detail/d3/4.jpg', 3);
INSERT INTO `detail` VALUES (28, '/img/detail/d3/5.jpg', 3);
INSERT INTO `detail` VALUES (29, '/img/detail/d3/6.jpg', 3);
INSERT INTO `detail` VALUES (30, '/img/detail/d3/7.jpg', 3);
INSERT INTO `detail` VALUES (31, '/img/detail/d3/8.jpg', 3);
INSERT INTO `detail` VALUES (32, '/img/detail/d3/9.jpg', 3);
INSERT INTO `detail` VALUES (33, '/img/detail/d3/10.jpg', 3);
INSERT INTO `detail` VALUES (34, '/img/detail/d3/11.jpg', 3);
INSERT INTO `detail` VALUES (35, '/img/detail/d3/12.jpg', 3);
INSERT INTO `detail` VALUES (36, '/img/detail/d4/1.jpg', 4);
INSERT INTO `detail` VALUES (37, '/img/detail/d4/2.jpg', 4);
INSERT INTO `detail` VALUES (38, '/img/detail/d4/3.jpg', 4);
INSERT INTO `detail` VALUES (39, '/img/detail/d4/4.jpg', 4);
INSERT INTO `detail` VALUES (40, '/img/detail/d4/5.jpg', 4);
INSERT INTO `detail` VALUES (41, '/img/detail/d4/6.jpg', 4);
INSERT INTO `detail` VALUES (42, '/img/detail/d4/7.jpg', 4);
INSERT INTO `detail` VALUES (43, '/img/detail/d4/8.jpg', 4);
INSERT INTO `detail` VALUES (44, '/img/detail/d4/9.jpg', 4);
INSERT INTO `detail` VALUES (45, '/img/detail/d4/10.jpg', 4);
INSERT INTO `detail` VALUES (46, '/img/detail/d4/11.jpg', 4);
INSERT INTO `detail` VALUES (47, '/img/detail/d4/12.jpg', 4);
INSERT INTO `detail` VALUES (48, '/img/detail/d5/1.jpg', 5);
INSERT INTO `detail` VALUES (49, '/img/detail/d5/2.jpg', 5);
INSERT INTO `detail` VALUES (50, '/img/detail/d5/3.jpg', 5);
INSERT INTO `detail` VALUES (51, '/img/detail/d5/4.jpg', 5);
INSERT INTO `detail` VALUES (52, '/img/detail/d5/5.jpg', 5);
INSERT INTO `detail` VALUES (53, '/img/detail/d5/6.jpg', 5);
INSERT INTO `detail` VALUES (54, '/img/detail/d5/7.jpg', 5);
INSERT INTO `detail` VALUES (55, '/img/detail/d5/1.jpg', 0);
INSERT INTO `detail` VALUES (56, '/img/detail/d6/1.jpg', 6);
INSERT INTO `detail` VALUES (57, '/img/detail/d6/2.jpg', 6);
INSERT INTO `detail` VALUES (58, '/img/detail/d6/3.jpg', 6);
INSERT INTO `detail` VALUES (59, '/img/detail/d6/4.jpg', 6);
INSERT INTO `detail` VALUES (60, '/img/detail/d6/5.jpg', 6);
INSERT INTO `detail` VALUES (61, '/img/detail/d6/6.jpg', 6);
INSERT INTO `detail` VALUES (62, '/img/detail/d7/1.jpg', 7);
INSERT INTO `detail` VALUES (63, '/img/detail/d7/2.jpg', 7);
INSERT INTO `detail` VALUES (64, '/img/detail/d7/3.jpg', 7);
INSERT INTO `detail` VALUES (65, '/img/detail/d7/4.jpg', 7);
INSERT INTO `detail` VALUES (66, '/img/detail/d7/5.jpg', 7);
INSERT INTO `detail` VALUES (67, '/img/detail/d7/6.jpg', 7);
INSERT INTO `detail` VALUES (68, '/img/detail/d8/1.jpg', 8);
INSERT INTO `detail` VALUES (69, '/img/detail/d8/2.jpg', 8);
INSERT INTO `detail` VALUES (70, '/img/detail/d8/3.jpg', 8);
INSERT INTO `detail` VALUES (71, '/img/detail/d8/4.jpg', 8);
INSERT INTO `detail` VALUES (72, '/img/detail/d8/5.jpg', 8);
INSERT INTO `detail` VALUES (73, '/img/detail/d8/6.jpg', 8);
INSERT INTO `detail` VALUES (74, '/img/detail/d9/1.jpg', 9);
INSERT INTO `detail` VALUES (75, '/img/detail/d9/2.jpg', 9);
INSERT INTO `detail` VALUES (76, '/img/detail/d9/3.jpg', 9);
INSERT INTO `detail` VALUES (77, '/img/detail/d9/4.jpg', 9);
INSERT INTO `detail` VALUES (78, '/img/detail/d9/5.jpg', 9);
INSERT INTO `detail` VALUES (79, '/img/detail/d9/6.jpg', 9);
INSERT INTO `detail` VALUES (80, '/img/detail/d9/7.jpg', 9);
INSERT INTO `detail` VALUES (81, '/img/detail/d10/1.jpg', 10);
INSERT INTO `detail` VALUES (82, '/img/detail/d10/2.jpg', 10);
INSERT INTO `detail` VALUES (83, '/img/detail/d10/3.jpg', 10);
INSERT INTO `detail` VALUES (84, '/img/detail/d10/4.jpg', 10);
INSERT INTO `detail` VALUES (85, '/img/detail/d10/5.jpg', 10);
INSERT INTO `detail` VALUES (86, '/img/detail/d10/6.jpg', 10);
INSERT INTO `detail` VALUES (87, '/img/detail/d10/7.jpg', 10);
INSERT INTO `detail` VALUES (88, '/img/detail/d11/1.jpg', 11);
INSERT INTO `detail` VALUES (89, '/img/detail/d11/2.jpg', 11);
INSERT INTO `detail` VALUES (90, '/img/detail/d11/3.jpg', 11);
INSERT INTO `detail` VALUES (91, '/img/detail/d11/4.jpg', 11);
INSERT INTO `detail` VALUES (92, '/img/detail/d11/5.jpg', 11);
INSERT INTO `detail` VALUES (93, '/img/detail/d11/6.jpg', 11);
INSERT INTO `detail` VALUES (94, '/img/detail/d11/7.jpg', 11);
INSERT INTO `detail` VALUES (95, '/img/detail/d12/1.jpg', 12);
INSERT INTO `detail` VALUES (96, '/img/detail/d12/2.jpg', 12);
INSERT INTO `detail` VALUES (97, '/img/detail/d12/3.jpg', 12);
INSERT INTO `detail` VALUES (98, '/img/detail/d12/4.jpg', 12);
INSERT INTO `detail` VALUES (99, '/img/detail/d12/5.jpg', 12);
INSERT INTO `detail` VALUES (100, '/img/detail/d12/6.jpg', 12);
INSERT INTO `detail` VALUES (101, '/img/detail/d12/7.jpg', 12);
INSERT INTO `detail` VALUES (102, '/img/detail/d13/1.jpg', 13);
INSERT INTO `detail` VALUES (103, '/img/detail/d13/2.jpg', 13);
INSERT INTO `detail` VALUES (104, '/img/detail/d13/3.jpg', 13);
INSERT INTO `detail` VALUES (105, '/img/detail/d13/4.jpg', 13);
INSERT INTO `detail` VALUES (106, '/img/detail/d13/5.jpg', 13);
INSERT INTO `detail` VALUES (107, '/img/detail/d13/6.jpg', 13);
INSERT INTO `detail` VALUES (108, '/img/detail/d13/7.jpg', 13);
INSERT INTO `detail` VALUES (109, '/img/detail/d13/8.jpg', 13);
INSERT INTO `detail` VALUES (110, '/img/detail/d13/9.jpg', 13);
INSERT INTO `detail` VALUES (111, '/img/detail/d13/10.jpg', 13);
INSERT INTO `detail` VALUES (112, '/img/detail/d13/11.jpg', 13);
INSERT INTO `detail` VALUES (113, '/img/detail/d13/12.jpg', 13);
INSERT INTO `detail` VALUES (114, '/img/detail/d14/1.jpg', 14);
INSERT INTO `detail` VALUES (115, '/img/detail/d14/2.jpg', 14);
INSERT INTO `detail` VALUES (116, '/img/detail/d14/3.jpg', 14);
INSERT INTO `detail` VALUES (117, '/img/detail/d14/4.jpg', 14);
INSERT INTO `detail` VALUES (118, '/img/detail/d14/5.jpg', 14);
INSERT INTO `detail` VALUES (119, '/img/detail/d14/6.jpg', 14);
INSERT INTO `detail` VALUES (120, '/img/detail/d14/7.jpg', 14);
INSERT INTO `detail` VALUES (121, '/img/detail/d14/8.jpg', 14);
INSERT INTO `detail` VALUES (122, '/img/detail/d14/9.jpg', 14);
INSERT INTO `detail` VALUES (123, '/img/detail/d14/10.jpg', 14);
INSERT INTO `detail` VALUES (137, '/img/detail/d15/1.jpg', 15);
INSERT INTO `detail` VALUES (138, '/img/detail/d15/2.jpg', 15);
INSERT INTO `detail` VALUES (139, '/img/detail/d15/3.jpg', 15);
INSERT INTO `detail` VALUES (140, '/img/detail/d15/4.jpg', 15);
INSERT INTO `detail` VALUES (141, '/img/detail/d15/5.jpg', 15);
INSERT INTO `detail` VALUES (142, '/img/detail/d15/6.jpg', 15);
INSERT INTO `detail` VALUES (143, '/img/detail/d15/7.jpg', 15);
INSERT INTO `detail` VALUES (144, '/img/detail/d15/8.jpg', 15);
INSERT INTO `detail` VALUES (145, '/img/detail/d15/9.jpg', 15);
INSERT INTO `detail` VALUES (146, '/img/detail/d15/10.jpg', 15);
INSERT INTO `detail` VALUES (147, '/img/detail/d15/11.jpg', 15);
INSERT INTO `detail` VALUES (148, '/img/detail/d15/12.jpg', 15);
INSERT INTO `detail` VALUES (149, '/img/detail/d15/13.jpg', 15);
INSERT INTO `detail` VALUES (150, '/img/detail/d16/1.jpg', 16);
INSERT INTO `detail` VALUES (151, '/img/detail/d16/2.jpg', 16);
INSERT INTO `detail` VALUES (152, '/img/detail/d16/3.jpg', 16);
INSERT INTO `detail` VALUES (153, '/img/detail/d16/4.jpg', 16);
INSERT INTO `detail` VALUES (154, '/img/detail/d16/5.jpg', 16);
INSERT INTO `detail` VALUES (155, '/img/detail/d16/6.jpg', 16);
INSERT INTO `detail` VALUES (156, '/img/detail/d16/7.jpg', 16);
INSERT INTO `detail` VALUES (157, '/img/detail/d16/8.jpg', 16);
INSERT INTO `detail` VALUES (158, '/img/detail/d16/9.jpg', 16);
INSERT INTO `detail` VALUES (159, '/img/detail/d16/10.jpg', 16);
INSERT INTO `detail` VALUES (160, '/img/detail/d16/11.jpg', 16);
INSERT INTO `detail` VALUES (161, '/img/detail/d16/12.jpg', 16);
INSERT INTO `detail` VALUES (162, '/img/detail/d16/13.jpg', 16);
INSERT INTO `detail` VALUES (163, '/img/detail/d16/14.jpg', 16);
INSERT INTO `detail` VALUES (164, '/img/detail/d16/15.jpg', 16);
INSERT INTO `detail` VALUES (165, '/img/detail/d17/1.jpg', 17);
INSERT INTO `detail` VALUES (166, '/img/detail/d17/2.jpg', 17);
INSERT INTO `detail` VALUES (167, '/img/detail/d17/3.jpg', 17);
INSERT INTO `detail` VALUES (168, '/img/detail/d17/4.jpg', 17);
INSERT INTO `detail` VALUES (169, '/img/detail/d17/5.jpg', 17);
INSERT INTO `detail` VALUES (170, '/img/detail/d17/6.jpg', 17);
INSERT INTO `detail` VALUES (171, '/img/detail/d17/7.jpg', 17);
INSERT INTO `detail` VALUES (172, '/img/detail/d17/8.jpg', 17);
INSERT INTO `detail` VALUES (173, '/img/detail/d18/1.jpg', 18);
INSERT INTO `detail` VALUES (174, '/img/detail/d18/2.jpg', 18);
INSERT INTO `detail` VALUES (175, '/img/detail/d18/3.jpg', 18);
INSERT INTO `detail` VALUES (176, '/img/detail/d18/4.jpg', 18);
INSERT INTO `detail` VALUES (177, '/img/detail/d18/5.jpg', 18);
INSERT INTO `detail` VALUES (178, '/img/detail/d18/6.jpg', 18);
INSERT INTO `detail` VALUES (179, '/img/detail/d18/7.jpg', 18);
INSERT INTO `detail` VALUES (180, '/img/detail/d18/8.jpg', 18);
INSERT INTO `detail` VALUES (181, '/img/detail/d18/9.jpg', 18);
INSERT INTO `detail` VALUES (182, '/img/detail/d18/10.jpg', 18);
INSERT INTO `detail` VALUES (183, '/img/detail/d18/11.jpg', 18);
INSERT INTO `detail` VALUES (184, '/img/detail/d19/1.jpg', 19);
INSERT INTO `detail` VALUES (185, '/img/detail/d19/2.jpg', 19);
INSERT INTO `detail` VALUES (186, '/img/detail/d19/3.jpg', 19);
INSERT INTO `detail` VALUES (187, '/img/detail/d19/4.jpg', 19);
INSERT INTO `detail` VALUES (188, '/img/detail/d19/5.jpg', 19);
INSERT INTO `detail` VALUES (189, '/img/detail/d19/6.jpg', 19);
INSERT INTO `detail` VALUES (190, '/img/detail/d19/7.jpg', 19);
INSERT INTO `detail` VALUES (191, '/img/detail/d19/8.jpg', 19);
INSERT INTO `detail` VALUES (192, '/img/detail/d19/9.jpg', 19);
INSERT INTO `detail` VALUES (193, '/img/detail/d19/10.jpg', 19);
INSERT INTO `detail` VALUES (194, '/img/detail/d19/11.jpg', 19);
INSERT INTO `detail` VALUES (195, '/img/detail/d19/12.jpg', 19);
INSERT INTO `detail` VALUES (196, '/img/detail/d19/13.jpg', 19);
INSERT INTO `detail` VALUES (197, '/img/detail/d19/14.jpg', 19);
INSERT INTO `detail` VALUES (198, '/img/detail/d20/1.jpg', 20);
INSERT INTO `detail` VALUES (199, '/img/detail/d20/2.jpg', 20);
INSERT INTO `detail` VALUES (200, '/img/detail/d20/3.jpg', 20);
INSERT INTO `detail` VALUES (201, '/img/detail/d20/5.jpg', 20);
INSERT INTO `detail` VALUES (202, '/img/detail/d20/7.jpg', 20);
INSERT INTO `detail` VALUES (203, '/img/detail/d20/4.jpg', 20);
INSERT INTO `detail` VALUES (204, '/img/detail/d20/6.jpg', 20);
INSERT INTO `detail` VALUES (205, '/img/detail/d21/1.jpg', 21);
INSERT INTO `detail` VALUES (206, '/img/detail/d21/2.jpg', 21);
INSERT INTO `detail` VALUES (207, '/img/detail/d21/3.jpg', 21);
INSERT INTO `detail` VALUES (208, '/img/detail/d21/4.jpg', 21);
INSERT INTO `detail` VALUES (209, '/img/detail/d21/5.jpg', 21);
INSERT INTO `detail` VALUES (210, '/img/detail/d21/6.jpg', 21);
INSERT INTO `detail` VALUES (211, '/img/detail/d21/7.jpg', 21);
INSERT INTO `detail` VALUES (212, '/img/detail/d21/8.jpg', 21);
INSERT INTO `detail` VALUES (213, '/img/detail/d21/9.jpg', 21);
INSERT INTO `detail` VALUES (214, '/img/detail/d21/10.jpg', 21);
INSERT INTO `detail` VALUES (215, '/img/detail/d21/11.jpg', 21);
INSERT INTO `detail` VALUES (216, '/img/detail/d22/1.jpg', 22);
INSERT INTO `detail` VALUES (217, '/img/detail/d22/2.jpg', 22);
INSERT INTO `detail` VALUES (218, '/img/detail/d22/3.jpg', 22);
INSERT INTO `detail` VALUES (219, '/img/detail/d22/4.jpg', 22);
INSERT INTO `detail` VALUES (220, '/img/detail/d22/5.jpg', 22);
INSERT INTO `detail` VALUES (221, '/img/detail/d22/6.jpg', 22);
INSERT INTO `detail` VALUES (222, '/img/detail/d22/7.jpg', 22);
INSERT INTO `detail` VALUES (223, '/img/detail/d23/1.jpg', 23);
INSERT INTO `detail` VALUES (224, '/img/detail/d23/2.jpg', 23);
INSERT INTO `detail` VALUES (225, '/img/detail/d23/3.jpg', 23);
INSERT INTO `detail` VALUES (226, '/img/detail/d23/4.jpg', 23);
INSERT INTO `detail` VALUES (227, '/img/detail/d23/5.jpg', 23);
INSERT INTO `detail` VALUES (228, '/img/detail/d24/1.jpg', 24);
INSERT INTO `detail` VALUES (229, '/img/detail/d24/2.jpg', 24);
INSERT INTO `detail` VALUES (230, '/img/detail/d24/3.jpg', 24);
INSERT INTO `detail` VALUES (231, '/img/detail/d24/4.jpg', 24);
INSERT INTO `detail` VALUES (232, '/img/detail/d24/5.jpg', 24);
INSERT INTO `detail` VALUES (233, '/img/detail/d24/6.jpg', 24);
INSERT INTO `detail` VALUES (234, '/img/detail/d25/1.jpg', 25);
INSERT INTO `detail` VALUES (235, '/img/detail/d25/2.jpg', 25);
INSERT INTO `detail` VALUES (236, '/img/detail/d25/3.jpg', 25);
INSERT INTO `detail` VALUES (237, '/img/detail/d25/4.jpg', 25);
INSERT INTO `detail` VALUES (238, '/img/detail/d25/5.jpg', 25);
INSERT INTO `detail` VALUES (239, '/img/detail/d25/6.jpg', 25);
INSERT INTO `detail` VALUES (240, '/img/detail/d25/7.jpg', 25);
INSERT INTO `detail` VALUES (241, '/img/detail/d25/8.jpg', 25);
INSERT INTO `detail` VALUES (242, '/img/detail/d25/9.jpg', 25);
INSERT INTO `detail` VALUES (243, '/img/detail/d25/10.jpg', 25);
INSERT INTO `detail` VALUES (244, '/img/detail/d25/11.jpg', 25);
INSERT INTO `detail` VALUES (245, '/img/detail/d25/12.jpg', 25);

-- ----------------------------
-- Table structure for indexbanners
-- ----------------------------
DROP TABLE IF EXISTS `indexbanners`;
CREATE TABLE `indexbanners`  (
  `bid` int NOT NULL AUTO_INCREMENT COMMENT '首页轮播图id',
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `toUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '跳转地址',
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of indexbanners
-- ----------------------------
INSERT INTO `indexbanners` VALUES (1, '/img/index/banners/1.jpg', '/');
INSERT INTO `indexbanners` VALUES (2, '/img/index/banners/2.jpg', '/');
INSERT INTO `indexbanners` VALUES (3, '/img/index/banners/3.jpg', '/');
INSERT INTO `indexbanners` VALUES (4, '/img/index/banners/4.jpg', '/');

-- ----------------------------
-- Table structure for indextype
-- ----------------------------
DROP TABLE IF EXISTS `indextype`;
CREATE TABLE `indextype`  (
  `id` int NOT NULL COMMENT 'id',
  `proId` int NULL DEFAULT NULL COMMENT '外键，pid',
  `grade` int NULL DEFAULT NULL COMMENT '是否属于品味类型。1属于其中高端花盒，2属于主题花束',
  `select` int NULL DEFAULT NULL COMMENT '是否属于甄选类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of indextype
-- ----------------------------
INSERT INTO `indextype` VALUES (1, 11, 0, 2);
INSERT INTO `indextype` VALUES (2, 2, 1, 0);
INSERT INTO `indextype` VALUES (3, 5, 0, 1);
INSERT INTO `indextype` VALUES (4, 1, 1, 0);
INSERT INTO `indextype` VALUES (5, 6, 0, 1);
INSERT INTO `indextype` VALUES (6, 7, 0, 1);
INSERT INTO `indextype` VALUES (7, 8, 0, 1);
INSERT INTO `indextype` VALUES (8, 9, 0, 1);
INSERT INTO `indextype` VALUES (9, 10, 0, 2);
INSERT INTO `indextype` VALUES (10, 11, 0, 2);
INSERT INTO `indextype` VALUES (11, 12, 0, 2);
INSERT INTO `indextype` VALUES (12, 13, 1, 0);
INSERT INTO `indextype` VALUES (13, 14, 1, 0);
INSERT INTO `indextype` VALUES (14, 15, 1, 0);
INSERT INTO `indextype` VALUES (15, 16, 1, 0);
INSERT INTO `indextype` VALUES (16, 17, 1, 0);
INSERT INTO `indextype` VALUES (17, 18, 1, 0);
INSERT INTO `indextype` VALUES (18, 19, 1, 0);
INSERT INTO `indextype` VALUES (19, 20, 1, 0);
INSERT INTO `indextype` VALUES (20, 21, 1, 0);
INSERT INTO `indextype` VALUES (21, 22, 1, 0);
INSERT INTO `indextype` VALUES (22, 23, 1, 0);
INSERT INTO `indextype` VALUES (23, 24, 1, 0);
INSERT INTO `indextype` VALUES (24, 25, 1, 0);

-- ----------------------------
-- Table structure for oneseconds
-- ----------------------------
DROP TABLE IF EXISTS `oneseconds`;
CREATE TABLE `oneseconds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `c3Id` int NULL DEFAULT NULL COMMENT '包含c3的分类',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oneseconds
-- ----------------------------
INSERT INTO `oneseconds` VALUES (1, '送恋人', 1, '/img/index/seconds/1.png');
INSERT INTO `oneseconds` VALUES (2, '送长辈', 3, '/img/index/seconds/2.png');
INSERT INTO `oneseconds` VALUES (3, '送朋友', 4, '/img/index/seconds/3.png');
INSERT INTO `oneseconds` VALUES (4, '生日祝福', 6, '/img/index/seconds/4.png');
INSERT INTO `oneseconds` VALUES (5, '表白求婚', 10, '/img/index/seconds/5.png');
INSERT INTO `oneseconds` VALUES (6, '开业商务', 8, '/img/index/seconds/6.png');
INSERT INTO `oneseconds` VALUES (7, '周年纪念', 9, '/img/index/seconds/7.png');

-- ----------------------------
-- Table structure for probanners
-- ----------------------------
DROP TABLE IF EXISTS `probanners`;
CREATE TABLE `probanners`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id,主键',
  `bannerUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片路径',
  `proId` int NOT NULL COMMENT '外键，商品pid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of probanners
-- ----------------------------
INSERT INTO `probanners` VALUES (1, '/img/detail/b1/1.jpg', 1);
INSERT INTO `probanners` VALUES (2, '/img/detail/b1/2.jpg', 1);
INSERT INTO `probanners` VALUES (3, '/img/detail/b1/3.jpg', 1);
INSERT INTO `probanners` VALUES (4, '/img/detail/b1/4.jpg', 1);
INSERT INTO `probanners` VALUES (5, '/img/detail/b2/1.jpg', 2);
INSERT INTO `probanners` VALUES (6, '/img/detail/b2/2.jpg', 2);
INSERT INTO `probanners` VALUES (7, '/img/detail/b2/3.jpg', 2);
INSERT INTO `probanners` VALUES (8, '/img/detail/b2/4.jpg', 2);
INSERT INTO `probanners` VALUES (9, '/img/detail/b3/1.jpg', 3);
INSERT INTO `probanners` VALUES (10, '/img/detail/b3/2.jpg', 3);
INSERT INTO `probanners` VALUES (11, '/img/detail/b3/3.jpg', 3);
INSERT INTO `probanners` VALUES (12, '/img/detail/b3/4.jpg', 3);
INSERT INTO `probanners` VALUES (13, '/img/detail/b4/1.jpg', 4);
INSERT INTO `probanners` VALUES (14, '/img/detail/b4/2.jpg', 4);
INSERT INTO `probanners` VALUES (15, '/img/detail/b4/3.jpg', 4);
INSERT INTO `probanners` VALUES (16, '/img/detail/b4/4.jpg', 4);
INSERT INTO `probanners` VALUES (17, '/img/detail/b5/1.jpg', 5);
INSERT INTO `probanners` VALUES (18, '/img/detail/b6/1.jpg', 6);
INSERT INTO `probanners` VALUES (19, '/img/detail/b7/1.jpg', 7);
INSERT INTO `probanners` VALUES (20, '/img/detail/b8/1.jpg', 8);
INSERT INTO `probanners` VALUES (21, '/img/detail/b9/1.jpg', 9);
INSERT INTO `probanners` VALUES (22, '/img/detail/b10/1.jpg', 10);
INSERT INTO `probanners` VALUES (23, '/img/detail/b11/1.jpg', 11);
INSERT INTO `probanners` VALUES (24, '/img/detail/b12/1.jpg', 12);
INSERT INTO `probanners` VALUES (25, '/img/detail/b13/1.jpg', 13);
INSERT INTO `probanners` VALUES (26, '/img/detail/b13/2.jpg', 13);
INSERT INTO `probanners` VALUES (27, '/img/detail/b13/3.jpg', 13);
INSERT INTO `probanners` VALUES (28, '/img/detail/b13/4.jpg', 13);
INSERT INTO `probanners` VALUES (29, '/img/detail/b14/1.jpg', 14);
INSERT INTO `probanners` VALUES (30, '/img/detail/b14/2.jpg', 14);
INSERT INTO `probanners` VALUES (31, '/img/detail/b14/3.jpg', 14);
INSERT INTO `probanners` VALUES (32, '/img/detail/b14/4.jpg', 14);
INSERT INTO `probanners` VALUES (37, '/img/detail/b15/1.jpg', 15);
INSERT INTO `probanners` VALUES (38, '/img/detail/b15/2.jpg', 15);
INSERT INTO `probanners` VALUES (39, '/img/detail/b15/3.jpg', 15);
INSERT INTO `probanners` VALUES (40, '/img/detail/b15/4.jpg', 15);
INSERT INTO `probanners` VALUES (41, '/img/detail/b16/1.jpg', 16);
INSERT INTO `probanners` VALUES (42, '/img/detail/b16/2.jpg', 16);
INSERT INTO `probanners` VALUES (43, '/img/detail/b16/4.jpg', 16);
INSERT INTO `probanners` VALUES (44, '/img/detail/b16/3.jpg', 16);
INSERT INTO `probanners` VALUES (45, '/img/detail/b17/1.jpg', 17);
INSERT INTO `probanners` VALUES (46, '/img/detail/b17/2.jpg', 17);
INSERT INTO `probanners` VALUES (47, '/img/detail/b17/3.jpg', 17);
INSERT INTO `probanners` VALUES (48, '/img/detail/b17/4.jpg', 17);
INSERT INTO `probanners` VALUES (49, '/img/detail/b18/1.jpg', 18);
INSERT INTO `probanners` VALUES (50, '/img/detail/b18/2.jpg', 18);
INSERT INTO `probanners` VALUES (51, '/img/detail/b18/3.jpg', 18);
INSERT INTO `probanners` VALUES (52, '/img/detail/b18/4.jpg', 18);
INSERT INTO `probanners` VALUES (53, '/img/detail/b19/1.jpg', 19);
INSERT INTO `probanners` VALUES (54, '/img/detail/b19/2.jpg', 19);
INSERT INTO `probanners` VALUES (55, '/img/detail/b19/3.jpg', 19);
INSERT INTO `probanners` VALUES (56, '/img/detail/b19/4.jpg', 19);
INSERT INTO `probanners` VALUES (57, '/img/detail/b20/1.jpg', 20);
INSERT INTO `probanners` VALUES (58, '/img/detail/b20/2.jpg', 20);
INSERT INTO `probanners` VALUES (59, '/img/detail/b20/3.jpg', 20);
INSERT INTO `probanners` VALUES (60, '/img/detail/b20/4.jpg', 20);
INSERT INTO `probanners` VALUES (61, '/img/detail/b21/1.jpg', 21);
INSERT INTO `probanners` VALUES (62, '/img/detail/b21/2.jpg', 21);
INSERT INTO `probanners` VALUES (63, '/img/detail/b21/3.jpg', 21);
INSERT INTO `probanners` VALUES (64, '/img/detail/b21/4.jpg', 21);
INSERT INTO `probanners` VALUES (65, '/img/detail/b22/1.jpg', 22);
INSERT INTO `probanners` VALUES (66, '/img/detail/b22/2.jpg', 22);
INSERT INTO `probanners` VALUES (67, '/img/detail/b22/3.jpg', 22);
INSERT INTO `probanners` VALUES (68, '/img/detail/b22/4.jpg', 22);
INSERT INTO `probanners` VALUES (69, '/img/detail/b23/1.jpg', 23);
INSERT INTO `probanners` VALUES (70, '/img/detail/b23/2.jpg', 23);
INSERT INTO `probanners` VALUES (71, '/img/detail/b23/3.jpg', 23);
INSERT INTO `probanners` VALUES (72, '/img/detail/b23/4.jpg', 23);
INSERT INTO `probanners` VALUES (73, '/img/detail/b24/1.jpg', 24);
INSERT INTO `probanners` VALUES (74, '/img/detail/b24/2.jpg', 24);
INSERT INTO `probanners` VALUES (75, '/img/detail/b24/3.jpg', 24);
INSERT INTO `probanners` VALUES (76, '/img/detail/b24/4.jpg', 24);
INSERT INTO `probanners` VALUES (77, '/img/detail/b25/1.jpg', 25);
INSERT INTO `probanners` VALUES (78, '/img/detail/b25/2.jpg', 25);
INSERT INTO `probanners` VALUES (79, '/img/detail/b25/3.jpg', 25);
INSERT INTO `probanners` VALUES (80, '/img/detail/b25/4.jpg', 25);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pid` int NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `count` int NOT NULL DEFAULT 0 COMMENT '销量',
  `flowerSay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '花语',
  `material` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '材料',
  `packing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '包装',
  `distribution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配送',
  `gift` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附送',
  `specId` int NULL DEFAULT NULL COMMENT '规格，外键sid',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `bigTypeId` int NULL DEFAULT NULL COMMENT '最大分类id,外键bid',
  `littleTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  `created_at` date NOT NULL COMMENT '发布时间',
  `originalPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '原价',
  `t1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面标题1',
  `t2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面标题2',
  `intr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面介绍',
  `box` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面包装',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '韩式系列/初心不负- 韩式花束系列花艺师全新打造，卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝', 73000, '\r\n以热烈主题的红玫瑰及红色包装，搭配象征白色无暇的桔梗为设计主题，打造全新韩式系列。将这一簇美景包裹在一片雪白中，一条满载希望的丝带扎紧了无限的惊喜，只为将全世界的风景奉献于你怀里', '\r\n韩式花束系列：卡罗拉玫瑰11枝、3头或以上白底粉边洋桔梗5枝（如白底粉边桔梗缺货，可用白色桔梗代替）、大叶尤加利10枝、4枝红豆（红豆属于季节性花材，如缺货用相思梅等类似花材代替）', '红/金色鎏金纸5张、透明雾面纸3张、酒红色罗纹烫金丝带2米', '\r\n全国(小城市请提前一天预定)', '下单填写留言，即免费赠送精美贺卡！', 1, 228.00, 1, '花艺师打造 韩式花束系列', '全新韩式系列', '/img/detail/fm/1.jpg', '2018-09-10', 248.00, '韩式系列/初心不负', '花艺师打造 韩式花束系列', '\r\n 填充了美梦的卡罗拉玫瑰，搭载着可爱的白色洋桔梗，落座于葱郁而芳香的绿叶里，由高端花艺师巧手搭配的韩式新品，落座于葱郁而芳香的绿叶里，由高端花艺师巧手搭配的韩式新品', NULL);
INSERT INTO `product` VALUES (2, '韩式系列/一路向阳-向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝', 67400, '\r\n以秋色和暖阳为设计主题，打造全新韩式系列，在凛冽冬日，你的爱就像一束阳光，照进了我的心中！', '\r\n韩式花束系列：向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝（腊梅花期为11-4月初，其他季节用跳舞兰或其他黄色线状花材代替）', '\r\n姜黄色双面牛皮纸8张、白色雪梨纸1大张、浅粉色罗纹玫瑰金丝带2米', '\r\n请提前一天预定', '\r\n下单填写留言，即免费赠送精美贺卡！', 1, 296.00, 1, '花艺师打造 韩式花束系列', '全新韩式系列', '/img/detail/fm/2.jpg', '2020-09-10', 306.00, '韩式系列/一路向阳', '花艺师打造 韩式花束系列', '花艺师选用阳光灿烂的向日葵，搭配快乐活泼的香槟玫瑰，绽放出热情的魅力，承载美好的期盼之情，你的爱就像一束阳光，照进了我心中', NULL);
INSERT INTO `product` VALUES (3, '韩式系列/公主的假日-戴安娜玫瑰11枝、白色洋桔梗5枝、大叶尤加利10枝', 5304, '\r\n娇羞的粉色戴安娜玫瑰与清新的白色洋桔梗，经过花艺师之手赋予了爱的意义，将这份藏于心底的爱，包裹在粉色中幸会，今晚你好吗？今夜的美妙愿你永远记住，你是我心中最甜美的公主!', '\r\n韩式花束系列：戴安娜玫瑰11枝、3头或以上白色洋桔梗5枝、大叶尤加利10枝', '嫣粉/玫粉色欧雅纸6张、白色OPP雾面纸3张、樱花粉色罗纹烫金丝带2米', '\r\n全国(小城市请提前一天预定)', '\r\n下单填写留言，即免费赠送精美贺卡！', 1, 216.00, 1, '甜美的公主，今夜你最美', '全新韩式系列', '/img/detail/fm/3.jpg', '2019-05-12', 246.00, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (4, '韩式系列/情窦初开-桃红雪山玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝、粉紫色绣球1枝', 731, '\r\n以浅粉及优雅的紫色为设计主题，打造全新韩式系列，一如初见，情窦初开；一路陪伴，直至两鬓斑白', '\r\n韩式花束系列：桃红雪山玫瑰11枝、3头或以上白底粉边洋桔梗5枝、大叶尤加利10枝、粉紫色绣球1枝、粉紫色紫罗兰5枝（紫罗兰花期为12-4月，其他月份用浅紫色金鱼草/浅紫色桔梗/浅紫色风铃花等相似线状花材替代）', '浅紫/香芋紫人造纸7张、白色OPP雾面纸2张、灰蓝色罗纹烫金丝带2米', '全国(小城市请提前一天预定)', '下单填写留言，即免费赠送精美贺卡！', 1, 289.00, 1, '花艺师打造 韩式花束系列', '全新韩式系列', '/img/detail/fm/4.jpg', '2016-09-13', 309.00, NULL, NULL, '', NULL);
INSERT INTO `product` VALUES (5, '赤道花园- 红色玫瑰（红拂）19枝，尤加利叶', 915, '\r\n在靠近赤道的地方，触及“彩虹”！', '\r\nA级红色玫瑰（红拂）19枝，尤加利叶', '深灰色定制礼盒，礼盒尺寸：76*21*13cm', '限送30多个核心城市(其他城市陆续开通中，敬请期待!)', '下单填写留言，即免费赠送精美贺卡！', NULL, 599.00, 1, '高端鲜花', '高端鲜花', '/img/detail/fm/5.jpg', '2017-12-26', 699.00, '赤道花园', '糖果玫瑰', '采撷最娇艳的玫瑰，经设计师妙手点拨，将芬芳馥郁的气息融入，轻轻打开，芬芳扑面袭来，沉醉在那花香醉人的奇幻世界。', '76cm长形礼盒');
INSERT INTO `product` VALUES (6, '情迷尼斯- 粉色玫瑰（糖果）19枝，尤加利叶', 84, '\r\n玫红色的糖果玫瑰，带你进入一个多彩缤纷的甜美世界，所有的宠爱都给你!', '\r\n玫红色玫瑰（糖果）19枝，尤加利叶', '深灰色定制礼盒，礼盒尺寸：76*21*13cm', '限送30多个核心城市(其他城市陆续开通中，敬请期待!)', '下单填写留言，即免费赠送精美贺卡！', NULL, 599.00, 1, '高端鲜花', '高端鲜花', '/img/detail/fm/6.jpg', '2020-09-03', 899.00, '情迷尼斯', '糖果玫瑰', '糖果玫瑰如其名，有着甜美的色彩和香味。为玫瑰定制了专属的礼盒，完美的细节彰显品质。', '76cm长形礼盒');
INSERT INTO `product` VALUES (7, '邂逅西雅图- 玫红色玫瑰（魅惑）19枝，尤加利叶', 111, '\r\n无数邂逅的悸动和满腔的蜜语，都不言而喻，化作绽放的玫瑰俘获你', '\r\n玫红色玫瑰（魅惑）19枝，尤加利叶', '深灰色定制礼盒，礼盒尺寸：76*21*13cm', '限送30多个核心城市(其他城市陆续开通中，敬请期待!)', '下单填写留言，即免费赠送精美贺卡！', NULL, 599.00, 1, '高端鲜花', '高端鲜花', '/img/detail/fm/7.jpg', '2019-10-03', 799.00, '邂逅西雅图', '新娘玫瑰', '新娘玫瑰有着偏成熟韵味的色彩，有着厚实的花瓣、笔直的枝条，毫不逊色于其他赤道玫瑰。为玫瑰定制了专属的礼盒，完美的细节彰显品质。', '76cm长形礼盒');
INSERT INTO `product` VALUES (8, '瓦尔登湖畔- 奶白色玫瑰（小白兔）19枝，尤加利叶', 142, '\r\n我愿将世界上一切美好的东西给你，包括最明媚的阳光和温柔浪漫的月光，剪一段日光，放在夜未央。', '\r\n奶白色玫瑰（小白兔）19枝，尤加利叶', '\r\n深灰色定制礼盒，礼盒尺寸：76*21*13cm', '限送30多个核心城市(其他城市陆续开通中，敬请期待!)', '下单填写留言，即免费赠送精美贺卡！', NULL, 599.00, 1, '高端鲜花', '高端鲜花', '/img/detail/fm/8.jpg', '2018-11-11', 799.00, '瓦尔登湖畔', '小白兔玫瑰', '小白兔玫瑰如它的名字一般，透着可爱的气质。为玫瑰定制了专属的礼盒，完美的细节彰显品质。', '76cm长形礼盒');
INSERT INTO `product` VALUES (9, '天使之吻-A级白粉色玫瑰（红袖或爱莎）19枝，尤加利叶', 263, '你就是我的天使，保护着我的天使，从此我再没有忧伤；你就是我的天使，给我快乐的天使，甚至我学会了飞翔！', '\r\nA级白粉色玫瑰（红袖或爱莎）19枝，尤加利叶', '深灰色定制礼盒，礼盒尺寸：76*21*13cm', '限送30多个核心城市(其他城市陆续开通中，敬请期待!)', '下单填写留言，即免费赠送精美贺卡！', NULL, 599.00, 1, '高端鲜花', '高端鲜花', '/img/detail/fm/9.jpg', '2020-05-05', 699.00, '天使之吻', '红袖玫瑰', '红袖玫瑰有着罕见的双层色彩，渐变的颜色让人迷恋。为玫瑰定制了专属的礼盒，完美的细节彰显品质。', '76cm长形礼盒');
INSERT INTO `product` VALUES (10, '火热的爱- A级红玫瑰1扎、红色多头玫1扎', 210, '\r\n热烈的爱，不变的心，用一捧玫瑰诠释真爱永恒！', '\r\nA级红玫瑰1扎(20枝)、红色多头玫1扎、尤加利叶1扎', '\r\n黑色OPP雾面纸4张、酒红缎带1米', '限送30多个核心城市(其他城市陆续开通中，敬请期待!)', '下单填写留言，即免费赠送精美贺卡！', NULL, 499.00, 1, '高端鲜花', '高端鲜花', '/img/detail/fm/10.jpg', '2020-10-06', 699.00, '火热的爱', '爱情系列之热情奔放', '饱满圆润的花头，紧促的拥抱在一起，红玫瑰与多头红玫瑰的组合，大大小小的花苞们，像极了轻盈的泡泡，花瓣就像裙裾一样层层叠叠，正是我向往中的那片花海，红玫表达的爱简单直接而炙热，除了爱你还是爱你。此花束适合送给热恋中人。', NULL);
INSERT INTO `product` VALUES (11, 'Sunflower-向日葵4朵、黄金球6枝、香槟10枝、白色洋桔梗3枝、绿色康乃馨5枝', 233, '\r\n用明亮的色调宣告“陪伴是最长情的告白”，每一个美好的清晨，内心永远燃着一束火！', 'A级向日葵4朵、黄金球6枝、A级香槟玫瑰10枝、白色洋桔梗3枝、绿色康乃馨5枝', '\r\n爱是静默浅绿色包装纸3张、香槟缎带1米', '限送30多个核心城市(其他城市陆续开通中，敬请期待!)', '下单填写留言，即免费赠送精美贺卡！', NULL, 499.00, 1, '高端鲜花', '高端鲜花', '/img/detail/fm/11.jpg', '2017-12-20', 699.00, 'Sunflower', '青春系列之阳光活力', '黄色，是三原色之一，属于暖色系，是所有颜色中最明亮的颜色。给人轻快、辉煌、透明、醒目，充满希望和活力的色彩印象。', NULL);
INSERT INTO `product` VALUES (12, '爱的陪伴-紫色马蹄莲1扎、紫色紫罗兰1扎、粉色绣球1枝、粉色康乃馨11枝', 171, '\r\n月下树梢清风里，让流萤环抱我安睡，梦里遥远的幸福，她就在我身旁。', '\r\n紫色马蹄莲1扎、紫色紫罗兰1扎（紫罗兰花期为3-6月，其他月份相似线条状花材替代）、深粉色绣球1枝、粉色康乃馨11枝、红色多头玫2枝、尤加利叶2枝', '浅紫香芋人造纸4张、酒红缎带1米', '限送30多个核心城市(其他城市陆续开通中，敬请期待!)', '下单填写留言，即免费赠送精美贺卡！', NULL, 569.00, 1, '高端鲜花', '高端鲜花', '/img/detail/fm/12.jpg', '2020-07-07', 869.00, '爱的陪伴', '母爱系列之梦幻呵护', '幽然的紫色，搭配着深深浅浅的粉，一股恬淡清幽的气息扑面而来。绣球花花瓣紧密，花型大而饱满，姹紫嫣红，宛如一个浪花，当它怒放的时候，一簇簇花开，一片片铺展，为你编织了一个浪漫梦幻的仲夏夜之梦', NULL);
INSERT INTO `product` VALUES (13, '不变的承诺-99枝红玫瑰', 66900, '下雨的时候，给她撑一把雨伞；寒冷的时候，给她一个温暖的臂弯；天黑了，永远有一盏灯为她点亮；晨起时，给她一缕温暖的阳光。爱她，就送她一束99枝的玫瑰花！', '\r\n99枝红玫瑰', '\r\n黑色雪梨纸，黑色条纹纸，玻璃纸卷，酒红色缎带花结', '全国', '下单填写留言，即免费赠送精美贺卡！', NULL, 599.00, 1, '经典99枝，鼎力推荐', '经典99枝', '/img/detail/fm/13.jpg', '2020-10-07', 869.00, '不变的承诺', '经典99枝，鼎力推荐！', '爱情，是世界上最浪漫的存在。如果没有了爱，无法想象这个世界会变成什么。所以，我们要不遗余力的去爱，去表达爱。女生喜欢玫瑰花，就送吧；如果99朵玫瑰能让女生芳心大悦，就送吧。99朵红玫瑰代表此生不渝的爱，表示愿意和对方“执子之手，白头偕老”，愿相爱的人永远相爱！                     ', NULL);
INSERT INTO `product` VALUES (14, '用心爱你-99枝：33枝戴安娜＋66枝红玫瑰', 35000, '不管时空怎么转变，世界怎么改变，你的爱总在我心间。', '33枝戴安娜、66枝红玫瑰、1扎满天星', '\r\n粉色opp雾面纸6张、酒红色缎带2米', '全国', '下单填写留言，即免费赠送精美贺卡！', NULL, 599.00, 1, '与你相守，直到天荒地老', '经典99枝', '/img/detail/fm/14.jpg', '2020-05-26', 769.00, '用心爱你', '与你相守，直到天荒地老', '33枝戴安娜玫瑰组合成一个心形形状，你是我三生三世的爱恋；66枝红玫瑰环绕，周围满天星点缀，我的爱永远不变！合计99朵玫瑰，寓意想和你相守，直到天荒地老....', NULL);
INSERT INTO `product` VALUES (15, '韩式系列/青春有你-苏醒玫瑰16枝、白色洋桔梗5枝、浅蓝绣球1枝', 779, '\r\n青春有你，才温柔又闪光', '\r\n韩式花束系列精选：苏醒玫瑰16枝、3头或以上白色洋桔梗5枝、尤加利10枝、浅紫色紫罗兰5枝（紫罗兰花期为12-4月，其他月份用浅紫色金鱼草/浅紫色桔梗/浅紫色风铃花等相似线状花材替代）、浅蓝绣球1枝、小菊4枝', '浅紫/香芋紫人造纸7张、白色雪梨纸2张、灰蓝色罗纹烫金丝带2米', '\r\n全国(小城市请提前一天预定)', '\r\n下单填写留言，即免费赠送精美贺卡！', NULL, 339.00, 1, '花艺师打造 韩式花束系列', '全新韩式系列', '/img/detail/fm/15.jpg', '2019-05-30', 459.00, '韩式系列/青春有你', '花艺师打造 韩式花束系列', '设计师打造韩式系列精品花束：玫瑰苏醒，以粉嫩浪漫却不失清雅的外表而引人注目，光听名字都觉得超级美好！白桔梗，紫罗兰和紫绣球的点缀让整个花束甜而不腻，尤加利鲜嫩充满希冀，适合送给恋人、闺蜜，愿你怀揣希望去努力，日子总是温柔又闪光', NULL);
INSERT INTO `product` VALUES (16, '甜美公主-白玫瑰22枝，粉佳人粉玫瑰14枝，粉色桔梗5枝', 25300, '再多一点点距离，我就能靠近你。清晰甜美的空气里，爱你到不能呼吸。', '各色玫瑰共36枝：白玫瑰22枝，粉佳人粉玫瑰14枝；粉色桔梗5枝，尤加利0.5扎', '绿色/浅绿色双面人造纸，白咖罗纹带花结', '全国', '\r\n下单填写留言，即免费赠送精美贺卡', NULL, 369.00, 1, '甜美设计 清新典雅', '清新典雅', '/img/detail/fm/16.jpg', '2020-09-09', 399.00, '甜美公主', '甜美设计 清新典雅', '这是一束用心设计的马卡龙色系花束，带着一股少女的气息扑面而来，俏皮、清新的温柔，迷人的色彩，如初恋般让人回到最美好的青春年华', NULL);
INSERT INTO `product` VALUES (17, '忘情巴黎-33枝红玫瑰', 71400, '只想和你忘掉一切烦恼，尽情沉醉在最浪漫的气氛中', '\r\n33枝红玫瑰，石竹梅20枝', '黑色条纹纸，红色缎带花结', '全国', '下单填写留言，即免费赠送精美贺卡！', NULL, 298.00, 1, '浪漫唯美 女神挚爱', '浪漫唯美', '/img/detail/fm/17.jpg', '2020-10-17', 382.00, '忘情巴黎', '浪漫唯美 女神挚爱', '只想和你忘掉一切烦恼，尽情沉醉在最浪漫的气氛中', NULL);
INSERT INTO `product` VALUES (18, '韩式系列/亲爱的你-粉佳人玫瑰16枝、白和粉色洋桔梗各5枝、尤加利10枝、浅紫色小菊3枝、深粉色/浅粉色绣球1枝', 17600, '\r\n我喜欢的样子你都有', '\r\n韩式花束系列：粉佳人玫瑰16枝、3头或以上白色洋桔梗5枝、3头或以上粉色洋桔梗5枝、尤加利10枝、浅紫色小菊3枝、深粉色/浅粉色绣球1枝', '\r\n蓝色人造纸8张、白色雪梨纸2张、粉色罗纹烫金丝带1.5米', '全国(小城市请提前一天预定)', '下单填写留言，即免费赠送精美贺卡！', NULL, 369.00, 1, '花艺师打造 韩式花束系列', '全新韩式系列', '/img/detail/fm/18.jpg', '2020-10-13', 469.00, '韩式系列/青春有你', '花艺师打造 韩式花束系列', '\r\n设计师打造韩式系列精品花束：玫瑰苏醒，以粉嫩浪漫却不失清雅的外表而引人注目，光听名字都觉得超级美好！白桔梗，紫罗兰和紫绣球的点缀让整个花束甜而不腻，尤加利鲜嫩充满希冀，适合送给恋人、闺蜜，愿你怀揣希望去努力，日子总是温柔又闪光', NULL);
INSERT INTO `product` VALUES (19, '粉雪佳人-戴安娜粉玫瑰11枝、白色香水百合2枝、白色洋桔梗5枝', 3084, '鲜花再美美不过你的笑脸，阳光再暖暖不过你的关心！', '\r\n戴安娜粉玫瑰11枝，白色香水百合2枝，白色洋桔梗5枝，栀子叶10枝', '粉色吊花压纹纸5张，粉色条纹缎带1.5米', '\r\n限送100多个主要城市的市区及近郊', '下单填写留言，即免费赠送精美贺卡！', NULL, 219.00, 1, '清新典雅，至臻设计', '清新典雅', '/img/detail/fm/19.jpg', '2017-01-24', 282.00, '月光女神', '小清新设计 清新无比', '白玫瑰搭配绿色桔梗，清新无比，经过花艺师精心设计，彰显气质，高雅，纯洁，一如天使般善良纯洁的你，唯有如此洁白无瑕的白玫瑰能相衬', NULL);
INSERT INTO `product` VALUES (20, '你最珍贵-精品玫瑰礼盒:香槟玫瑰19枝，勿忘我适量', 60500, '\r\n广阔世界，你是我最重要的人，时时刻刻都想陪在你身边，让你的肩膀不再孤单。', '高档礼盒装鲜花:香槟玫瑰19枝，勿忘我适量', '牛皮纸和深咖啡色条纹纸，银色缎带花结，魔力铁山灰包装盒', '\r\n限送100多个主要城市的市区及近郊', '下单填写留言，即免费赠送精美贺卡！', 2, 249.00, 1, '优雅设计 精致甄选', '精致甄选', '/img/detail/fm/20.jpg', '2018-09-20', 329.00, '你最珍贵', '优雅设计 精致甄选', '广阔世界，你是我最重要的人，时时刻刻都想陪在你身边，让你的肩膀不再孤单', NULL);
INSERT INTO `product` VALUES (21, '一往情深-精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎', 128400, '\r\n你的轻柔像阵微风，让我从容不迫，想让你知道，我对你始终一往情深。', '高档礼盒装鲜花:19枝红玫瑰，勿忘我0.1扎', '牛皮纸和深咖啡色条纹纸，银色缎带花结，魔力铁山灰包装盒', '\r\n限送100多个主要城市的市区及近郊', '下单填写留言，即免费赠送精美贺卡！', 2, 249.00, 1, '经典爆款，年销售冠军！', '经典爆款', '/img/detail/fm/21.jpg', '2019-09-18', 315.00, '一往情深', '经典爆款，年销售冠军', '\r\n你的轻柔像阵微风，让我从容不迫，想让你知道，我对你始终一往情深。', NULL);
INSERT INTO `product` VALUES (22, '暖暖-精品玫瑰礼盒:戴安娜19枝，勿忘我适量', 6247, '\r\n爱一个人希望他过更好，打从心里暖暖的，你比自己更重要。', '\r\n高档礼盒装鲜花:戴安娜粉玫瑰19枝，勿忘我适量', '牛皮纸和深咖啡色条纹纸，银色缎带花结，魔力铁山灰包装盒', '\r\n限送100多个主要城市的市区及近郊', '下单填写留言，即免费赠送精美贺卡！', 2, 252.00, 1, '浪漫粉色系', '精致甄选', '/img/detail/fm/22.jpg', '2020-04-29', 319.00, '勿忘我', '优雅设计 精致甄选', '爱一个人希望他过更好，打从心里暖暖的，你比自己更重要。', NULL);
INSERT INTO `product` VALUES (23, '一如初见-精品玫瑰礼盒:白玫瑰19枝，勿忘我适量', 2474, '\r\n人生若只如初见，只愿与你相伴的时光静止，默默体会永恒的滋味。', '\r\n高档礼盒装鲜花:白玫瑰19枝，勿忘我适量', '牛皮纸和深咖啡色条纹纸，银色缎带花结，魔力铁山灰包装盒', '\r\n限送100多个主要城市的市区及近郊', '下单填写留言，即免费赠送精美贺卡！', 2, 356.00, 1, '清新典雅', '精致甄选', '/img/detail/fm/23.jpg', '2019-10-11', 356.00, '一如初见', '精致甄选', '人生若只如初见，只愿与你相伴的时光静止，默默体会永恒的滋味。', NULL);
INSERT INTO `product` VALUES (24, '嫣然一笑-精品玫瑰礼盒:紫玫瑰19枝，勿忘我适量 ', 1808, '回眸一笑百媚生，万千粉黛无颜色，最爱那刹那的娇羞，浑然不知今夕何夕', '高档礼盒装鲜花:紫玫瑰19枝，勿忘我适量', '\r\n牛皮纸和深咖啡色条纹纸，银色缎带花结，魔力铁山灰包装盒', '限送100多个主要城市的市区及近郊', '下单填写留言，即免费赠送精美贺卡！', 2, 278.00, 1, '精品玫瑰', '勿忘我', '/img/detail/fm/24.jpg', '2019-05-23', 356.00, '嫣然一笑', '勿忘我', '\r\n回眸一笑百媚生，万千粉黛无颜色，最爱那刹那的娇羞，浑然不知今夕何夕', NULL);
INSERT INTO `product` VALUES (25, '满天星-浅粉-满天星1扎', 3003, '\r\n我携满天星辰赠你，好教你不逊色人间错落烟火；只有这满天星辰，足够与你相配。', '浅粉满天星1扎', '\r\n粉蓝人造纸9张、浅粉色罗纹玫瑰金丝带2米', '\r\n全国(小城市请提前一天预定)', '\r\n下单填写留言，即免费赠送精美贺卡！', NULL, 198.00, 1, '满天星辰，只因有你', '满天星', '/img/detail/fm/25.jpg', '2019-03-27', 256.00, '满天星-浅粉', '满天星辰，只因有你', '数百朵玲珑细致、洁白无瑕的小花，松松散散聚在一起，宛若无际夜空中的点点繁星，又似人间的璀璨烟火，似雾般朦胧，极具婉约、雅素之美，又如爱人的呼吸般温柔动人。一捧满天星，拥抱生活中的每一点小美好。', NULL);

-- ----------------------------
-- Table structure for senddate
-- ----------------------------
DROP TABLE IF EXISTS `senddate`;
CREATE TABLE `senddate`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `date` int NULL DEFAULT NULL COMMENT '几天后送达',
  `proId` int NULL DEFAULT NULL COMMENT '外键,商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of senddate
-- ----------------------------
INSERT INTO `senddate` VALUES (1, '四川省', 1, 1);
INSERT INTO `senddate` VALUES (2, '北京市', 1, 1);
INSERT INTO `senddate` VALUES (3, '青海省', 3, 1);
INSERT INTO `senddate` VALUES (4, '西藏自治区', 3, 1);
INSERT INTO `senddate` VALUES (5, '陕西省', 1, 1);

-- ----------------------------
-- Table structure for specifications
-- ----------------------------
DROP TABLE IF EXISTS `specifications`;
CREATE TABLE `specifications`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '规格id',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格名称',
  `proId` int NOT NULL COMMENT '外键，商品名称',
  `sid` int NOT NULL COMMENT '规格种类id过',
  `price` decimal(11, 2) NOT NULL COMMENT '价格',
  `imgs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of specifications
-- ----------------------------
INSERT INTO `specifications` VALUES (1, '韩式/初心不负', 1, 1, 228.00, '/img/detail/fm/1.jpg');
INSERT INTO `specifications` VALUES (2, '韩式/一路向阳', 2, 1, 296.00, '/img/detail/fm/2.jpg');
INSERT INTO `specifications` VALUES (3, '韩式/公主的假日', 3, 1, 216.00, '/img/detail/fm/3.jpg');
INSERT INTO `specifications` VALUES (4, '韩式/情窦初开', 4, 1, 289.00, '/img/detail/fm/4.jpg');
INSERT INTO `specifications` VALUES (5, '你最珍贵', 20, 2, 249.00, '/img/detail/fm/20.jpg');
INSERT INTO `specifications` VALUES (6, '一往情深', 21, 2, 249.00, '/img/detail/fm/21.jpg');
INSERT INTO `specifications` VALUES (7, '暖暖', 22, 2, 252.00, '/img/detail/fm/22.jpg');
INSERT INTO `specifications` VALUES (8, '一如初见', 23, 2, 356.00, '/img/detail/fm/23.jpg');
INSERT INTO `specifications` VALUES (9, '嫣然一笑', 24, 2, 278.00, '/img/detail/fm/24.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int NOT NULL COMMENT '用户ID',
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '电话，也是用户名',
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '密码，可为空',
  `sex` int NULL DEFAULT NULL COMMENT '0为女，1为男',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `avatar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '/img/avatar/1.jpg' COMMENT '头像',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '18829234956', '950512qwe', 1, NULL, '/img/avatar/1.jpg', '会吃猫的鱼');

SET FOREIGN_KEY_CHECKS = 1;
