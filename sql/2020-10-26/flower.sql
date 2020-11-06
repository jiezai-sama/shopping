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

 Date: 27/10/2020 21:05:52
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
INSERT INTO `bigtype` VALUES (1, '鲜花', '[\"获评鲜花龙头企业\",\"当日新鲜花材制作\",\"赛事冠军花艺师团队\",\"严选花材\",\"12道严苛品控标准\".\"500万用户信赖好评\"]', '[\"/img/detail/content1/s/1.png\",\"/img/detail/content1/s/2.png\",\"/img/detail/content1/s/3.png\",\"/img/detail/content1/s/4.png\",\"/img/detail/content1/s/5.png\",\"/img/detail/content1/s/6.png\"]', '/img/detail/content1/s/title.png');
INSERT INTO `bigtype` VALUES (2, '永生花', '[\"获评鲜花礼品龙头企业\",\"顺丰包邮·100+城市次日达\",\"厄瓜多尔进口花材\",\"500万用户信赖好评\"]', '[\"/img/detail/content2/s/1.png\",\"/img/detail/content2/s/2.png\",\"/img/detail/content2/s/3.png\",\"/img/detail/content2/s/4.png\"]', '/img/detail/content2/s/title.png');
INSERT INTO `bigtype` VALUES (3, '蛋糕', '[\"获评鲜花礼品龙头企业\",\"品牌蛋糕·品质保障\",\"当日食材·新鲜可口\",\"500万用户信赖好评\"]', '[\"/img/detail/content3/s/1.png\",\"/img/detail/content3/s/2.png\",\"/img/detail/content3/s/3.png\",\"/img/detail/content3/s/4.png\"]', '/img/detail/content3/s/title.png');
INSERT INTO `bigtype` VALUES (4, '礼品', '[\"获评鲜花礼品龙头企业\",\"顺丰包邮·100+城市次日达\",\"臻选品质礼品\",\"500万用户信赖好评\"]', '[\"/img/detail/content4/s/1.png\",\"/img/detail/content3/s/2.png\",\"/img/detail/content3/s/3.png\",\"/img/detail/content3/s/.png\"]', '/img/detail/content3/s/title.png');

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
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail`  (
  `did` int NOT NULL AUTO_INCREMENT COMMENT '详情介绍图片id',
  `imgsUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品详情图片地址',
  `proId` int NOT NULL COMMENT '外键pid',
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
INSERT INTO `detail` VALUES (48, '/img/detail/d4/13.jpg', 4);

-- ----------------------------
-- Table structure for indextype
-- ----------------------------
DROP TABLE IF EXISTS `indextype`;
CREATE TABLE `indextype`  (
  `id` int NOT NULL COMMENT 'id',
  `proId` int NULL DEFAULT NULL COMMENT '外键，pid',
  `grade` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '品味类型',
  `select` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '甄选类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of indextype
-- ----------------------------

-- ----------------------------
-- Table structure for probanners
-- ----------------------------
DROP TABLE IF EXISTS `probanners`;
CREATE TABLE `probanners`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id,主键',
  `bannerUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片路径',
  `proId` int NOT NULL COMMENT '外键，商品pid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
  `specId` int NOT NULL COMMENT '规格，外键sid',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `bigTypeId` int NULL DEFAULT NULL COMMENT '最大分类id,外键bid',
  `littleTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  `created_at` date NOT NULL COMMENT '发布时间',
  `originalPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '原价',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '韩式系列/初心不负- 韩式花束系列花艺师全新打造，卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝', 73000, '\r\n以热烈主题的红玫瑰及红色包装，搭配象征白色无暇的桔梗为设计主题，打造全新韩式系列。将这一簇美景包裹在一片雪白中，一条满载希望的丝带扎紧了无限的惊喜，只为将全世界的风景奉献于你怀里', '\r\n韩式花束系列：卡罗拉玫瑰11枝、3头或以上白底粉边洋桔梗5枝（如白底粉边桔梗缺货，可用白色桔梗代替）、大叶尤加利10枝、4枝红豆（红豆属于季节性花材，如缺货用相思梅等类似花材代替）', '红/金色鎏金纸5张、透明雾面纸3张、酒红色罗纹烫金丝带2米', '\r\n全国(小城市请提前一天预定)', '下单填写留言，即免费赠送精美贺卡！', 1, 228.00, 1, '花艺师打造 韩式花束系列', '全新韩式系列', '/img/detail/fm/1.jpg', '2018-09-10', 248.00);
INSERT INTO `product` VALUES (2, '韩式系列/一路向阳-向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝', 67400, '\r\n以秋色和暖阳为设计主题，打造全新韩式系列，在凛冽冬日，你的爱就像一束阳光，照进了我的心中！', '\r\n韩式花束系列：向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝（腊梅花期为11-4月初，其他季节用跳舞兰或其他黄色线状花材代替）', '\r\n姜黄色双面牛皮纸8张、白色雪梨纸1大张、浅粉色罗纹玫瑰金丝带2米', '\r\n请提前一天预定', '\r\n下单填写留言，即免费赠送精美贺卡！', 1, 296.00, 1, '花艺师打造 韩式花束系列', '全新韩式系列', '/img/detail/fm/2.jpg', '2020-09-10', 306.00);
INSERT INTO `product` VALUES (3, '韩式系列/公主的假日-戴安娜玫瑰11枝、白色洋桔梗5枝、大叶尤加利10枝', 5304, '\r\n娇羞的粉色戴安娜玫瑰与清新的白色洋桔梗，经过花艺师之手赋予了爱的意义，将这份藏于心底的爱，包裹在粉色中幸会，今晚你好吗？今夜的美妙愿你永远记住，你是我心中最甜美的公主!', '\r\n韩式花束系列：戴安娜玫瑰11枝、3头或以上白色洋桔梗5枝、大叶尤加利10枝', '嫣粉/玫粉色欧雅纸6张、白色OPP雾面纸3张、樱花粉色罗纹烫金丝带2米', '\r\n全国(小城市请提前一天预定)', '\r\n下单填写留言，即免费赠送精美贺卡！', 1, 216.00, 1, '甜美的公主，今夜你最美', '全新韩式系列', '/img/detail/fm/3.jpg', '2019-05-12', 246.00);
INSERT INTO `product` VALUES (4, '韩式系列/情窦初开-桃红雪山玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝、粉紫色绣球1枝', 731, '\r\n以浅粉及优雅的紫色为设计主题，打造全新韩式系列，一如初见，情窦初开；一路陪伴，直至两鬓斑白', '\r\n韩式花束系列：桃红雪山玫瑰11枝、3头或以上白底粉边洋桔梗5枝、大叶尤加利10枝、粉紫色绣球1枝、粉紫色紫罗兰5枝（紫罗兰花期为12-4月，其他月份用浅紫色金鱼草/浅紫色桔梗/浅紫色风铃花等相似线状花材替代）', '浅紫/香芋紫人造纸7张、白色OPP雾面纸2张、灰蓝色罗纹烫金丝带2米', '全国(小城市请提前一天预定)', '下单填写留言，即免费赠送精美贺卡！', 1, 289.00, 1, '花艺师打造 韩式花束系列', '全新韩式系列', '/img/detail/fm/4.jpg', '2016-09-13', 309.00);

-- ----------------------------
-- Table structure for specifications
-- ----------------------------
DROP TABLE IF EXISTS `specifications`;
CREATE TABLE `specifications`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '规格id',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格名称',
  `proId` int NOT NULL COMMENT '外键，商品名称',
  `sid` int NOT NULL COMMENT '规格种类id过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of specifications
-- ----------------------------
INSERT INTO `specifications` VALUES (1, '韩式/初心不负', 1, 1);
INSERT INTO `specifications` VALUES (2, '韩式/一路向阳', 2, 1);
INSERT INTO `specifications` VALUES (3, '韩式/公主的假日', 3, 1);
INSERT INTO `specifications` VALUES (4, '韩式/情窦初开', 4, 1);

SET FOREIGN_KEY_CHECKS = 1;
