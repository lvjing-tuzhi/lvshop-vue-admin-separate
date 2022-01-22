/*
 Navicat MySQL Data Transfer

 Source Server         : upupw
 Source Server Type    : MySQL
 Source Server Version : 100318
 Source Host           : localhost:3306
 Source Schema         : lvshop

 Target Server Type    : MySQL
 Target Server Version : 100318
 File Encoding         : 65001

 Date: 22/01/2022 18:47:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, 'baidu', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fqqpublic.qpic.cn%2Fqq_public%2F0%2F0-2401864875-9EC8A9F92679977181AC20547CE6C8F7%2F0%3Ffmt%3Djpg%26size%3D117%26h%3D600%26w%3D900%26ppv%3D1.jpg&refer=http%3A%2Fhttps://img2.baidu.com/it/u=671937847,1721037349&fm=253&fmt=auto&app=138&f=JPEG?w=563&h=500', '百度图片测试', '2022-01-05 10:38:53', 'banner', 'https://www.usts.edu.cn/images/dt.jpg');
INSERT INTO `file` VALUES (6, '百度图片2', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '百度图片', '2022-01-05 10:31:50', 'banner', 'https://qlogo1.store.qq.com/qzone/542918096/542918096/100?1596621072');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 3) NULL DEFAULT NULL,
  `maxPrice` decimal(10, 3) NULL DEFAULT NULL,
  `minPrice` decimal(10, 3) NULL DEFAULT NULL,
  `covers` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photos` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `describt` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sales` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sendTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` int NULL DEFAULT NULL,
  `categoryId` int NULL DEFAULT NULL,
  `services` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recommendType` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shopId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '十点抢劵', NULL, NULL, NULL, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'week', 'https://www.usts.edu.cn/images/dt.jpg', NULL);
INSERT INTO `product` VALUES (2, '好物特卖', NULL, NULL, NULL, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'week', 'https://www.usts.edu.cn/images/dt.jpg', NULL);
INSERT INTO `product` VALUES (3, '内购福利', NULL, NULL, NULL, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'week', 'https://www.usts.edu.cn/images/dt.jpg', NULL);
INSERT INTO `product` VALUES (4, '初秋上市', NULL, NULL, NULL, 'https://img1.baidu.com/it/u=554382795,404172800&fm=26&fmt=auto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'week', 'https://www.usts.edu.cn/images/dt.jpg', NULL);
INSERT INTO `product` VALUES (5, '流行女装上衣', 50.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '流行女装标题', '流行女装描述', '10', '11', '72', 5, 6, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'pop', NULL, 1);
INSERT INTO `product` VALUES (6, '新款男装裤子', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '新款男装裤子标题', '新款男装裤子描述', '100', '122', '24', 5, 5, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'new', NULL, 1);
INSERT INTO `product` VALUES (7, '精选鞋子', 200.000, 300.000, 100.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '精选鞋子标题', '精选鞋子描述', '3', '200', '12', 9, 9, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'sell', NULL, 1);
INSERT INTO `product` VALUES (8, '流行女装上衣1', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '流行女装标题1', '流行女装描述1', '10', '11', '72', 5, 6, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'pop', NULL, 1);
INSERT INTO `product` VALUES (9, '流行女装上衣2', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '流行女装标题2', '流行女装描述2', '10', '11', '72', 5, 6, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'pop', NULL, 1);
INSERT INTO `product` VALUES (10, '流行女装上衣3', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '流行女装标题3', '流行女装描述3', '10', '11', '72', 5, 6, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'pop', NULL, 1);
INSERT INTO `product` VALUES (11, '流行女装上衣4', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '流行女装标题4', '流行女装描述4', '10', '11', '72', 5, 6, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'pop', NULL, 1);
INSERT INTO `product` VALUES (12, '流行女装上衣5', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '流行女装标题5', '流行女装描述5', '10', '11', '72', 5, 6, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'pop', NULL, 1);
INSERT INTO `product` VALUES (13, '流行女装上衣6', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '流行女装标题6', '流行女装描述6', '10', '11', '72', 5, 6, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'pop', NULL, 1);
INSERT INTO `product` VALUES (14, '新款男装裤子1', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '新款男装裤子标题1', '新款男装裤子描述1', '100', '122', '24', 5, 5, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'new', NULL, 1);
INSERT INTO `product` VALUES (15, '新款男装裤子2', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '新款男装裤子标题2', '新款男装裤子描述2', '100', '122', '24', 5, 5, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'new', NULL, 1);
INSERT INTO `product` VALUES (16, '新款男装裤子3', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '新款男装裤子标题3', '新款男装裤子描述3', '100', '122', '24', 5, 5, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'new', NULL, 1);
INSERT INTO `product` VALUES (17, '新款男装裤子4', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '新款男装裤子标题4', '新款男装裤子描述4', '100', '122', '24', 5, 5, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'new', NULL, 1);
INSERT INTO `product` VALUES (18, '新款男装裤子5', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '新款男装裤子标题5', '新款男装裤子描述5', '100', '122', '24', 5, 5, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'new', NULL, 1);
INSERT INTO `product` VALUES (19, '新款男装裤子6', 100.000, 200.000, 90.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '新款男装裤子标题6', '新款男装裤子描述6', '100', '122', '24', 5, 5, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'new', NULL, 1);
INSERT INTO `product` VALUES (20, '精选鞋子1', 200.000, 300.000, 100.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '精选鞋子标题1', '精选鞋子描述1', '3', '200', '12', 9, 9, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'sell', NULL, 1);
INSERT INTO `product` VALUES (21, '精选鞋子2', 200.000, 300.000, 100.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '精选鞋子标题2', '精选鞋子描述2', '3', '200', '12', 9, 9, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'sell', NULL, 1);
INSERT INTO `product` VALUES (22, '精选鞋子3', 200.000, 300.000, 100.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '精选鞋子标题3', '精选鞋子描述3', '3', '200', '12', 9, 9, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'sell', NULL, 1);
INSERT INTO `product` VALUES (23, '精选鞋子4', 200.000, 300.000, 100.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '精选鞋子标题4', '精选鞋子描述4', '3', '200', '12', 9, 9, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'sell', NULL, 1);
INSERT INTO `product` VALUES (24, '精选鞋子5', 200.000, 300.000, 100.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '精选鞋子标题5', '精选鞋子描述5', '3', '200', '12', 9, 9, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'sell', NULL, 1);
INSERT INTO `product` VALUES (25, '精选鞋子6', 200.000, 300.000, 100.000, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5吕竟的分隔符https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5', '精选鞋子标题6', '精选鞋子描述6', '3', '200', '12', 9, 9, '延货必赔吕竟的分隔符退货补运费吕竟的分隔符全国包邮吕竟的分隔符七天无理由', 'sell', NULL, 1);

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int NULL DEFAULT NULL,
  `cover` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES (1, '上衣', 0, 'https://qlogo1.store.qq.com/qzone/542918096/542918096/100?1596621072');
INSERT INTO `product_category` VALUES (2, '裤子', 0, 'https://qlogo1.store.qq.com/qzone/1970593115/1970593115/100?1596621072');
INSERT INTO `product_category` VALUES (3, '裙子', 0, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5');
INSERT INTO `product_category` VALUES (4, '内衣', 0, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5');
INSERT INTO `product_category` VALUES (5, '鞋子', 0, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372d0b828175a27fb07eabc00d5');
INSERT INTO `product_category` VALUES (6, 'T恤', 1, 'https://qlogo1.store.qq.com/qzone/542918096/542918096/100?1596621072');
INSERT INTO `product_category` VALUES (7, '牛仔裤', 2, 'https://qlogo1.store.qq.com/qzone/1970593115/1970593115/100?1596621072');
INSERT INTO `product_category` VALUES (8, '连衣裙', 3, 'https://qlogo1.store.qq.com/qzone/542918096/542918096/100?1596621072');
INSERT INTO `product_category` VALUES (9, '运动鞋', 5, 'https://qlogo1.store.qq.com/qzone/1970593115/1970593115/100?1596621072');
INSERT INTO `product_category` VALUES (10, '保暖内衣', 4, 'https://qlogo1.store.qq.com/qzone/542918096/542918096/100?1596621072');

-- ----------------------------
-- Table structure for product_order
-- ----------------------------
DROP TABLE IF EXISTS `product_order`;
CREATE TABLE `product_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `color` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isPay` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1为已支付，0为未支付，-1为在购物车',
  `userId` int NULL DEFAULT NULL,
  `productId` int NULL DEFAULT NULL,
  `createDate` timestamp(6) NULL DEFAULT current_timestamp(6),
  `judge` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `judgeDate` timestamp NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_order
-- ----------------------------
INSERT INTO `product_order` VALUES (1, '女装上衣', 20.00, '红色', 'M', '1', 1, 5, '2022-01-07 10:34:11.800000', '萨拉大家阿里山可见度', '2022-01-07 13:17:22');
INSERT INTO `product_order` VALUES (2, '女装上衣', 20.00, '红色', 'M', '1', 1, 6, '2022-01-07 10:34:11.800000', '大苏打撒旦', '2022-01-07 13:17:24');
INSERT INTO `product_order` VALUES (3, '女装上衣', 20.00, '红色', 'M', '1', 1, 7, '2022-01-07 10:34:11.800000', '实打实打算', '2022-01-07 13:17:25');
INSERT INTO `product_order` VALUES (4, '女装上衣', 20.00, '红色', 'M', '1', 1, 8, '2022-01-07 10:34:11.800000', '大苏打撒旦', '2022-01-07 13:17:26');
INSERT INTO `product_order` VALUES (5, '女装上衣', 20.00, '红色', 'M', '1', 1, 9, '2022-01-07 10:34:11.800000', '现场秩序', '2022-01-07 13:17:27');
INSERT INTO `product_order` VALUES (6, '女装上衣', 20.00, '红色', 'M', '1', 1, 10, '2022-01-07 10:34:11.800000', '阿文哇', '2022-01-07 13:17:28');
INSERT INTO `product_order` VALUES (7, '女装上衣', 20.00, '红色', 'M', '1', 1, 11, '2022-01-07 10:34:11.800000', '撒大苏打', '2022-01-07 13:17:29');
INSERT INTO `product_order` VALUES (8, '女装上衣', 20.00, '红色', 'M', '1', 1, 12, '2022-01-07 10:34:11.800000', '恶趣味请问', '2022-01-07 13:17:30');
INSERT INTO `product_order` VALUES (9, '女装上衣', 20.00, '红色', 'M', '1', 1, 13, '2022-01-07 10:34:11.800000', '撒旦撒旦', '2022-01-07 13:17:32');
INSERT INTO `product_order` VALUES (10, '女装上衣', 20.00, '红色', 'M', '1', 1, 14, '2022-01-07 10:34:11.800000', '实打实大苏打', '2022-01-07 13:17:33');
INSERT INTO `product_order` VALUES (11, '女装上衣', 20.00, '红色', 'M', '1', 1, 15, '2022-01-07 10:34:11.800000', '现在辞职', '2022-01-07 13:17:35');
INSERT INTO `product_order` VALUES (12, '女装上衣', 20.00, '红色', 'M', '1', 1, 16, '2022-01-07 10:34:11.800000', '2饿', '2022-01-07 13:17:36');
INSERT INTO `product_order` VALUES (13, '女装上衣', 20.00, '红色', 'M', '1', 1, 17, '2022-01-07 10:34:11.800000', '撒旦', '2022-01-07 13:17:37');
INSERT INTO `product_order` VALUES (14, '女装上衣', 20.00, '红色', 'M', '1', 1, 18, '2022-01-07 10:34:11.800000', '阿瑟东1', '2022-01-07 13:17:39');
INSERT INTO `product_order` VALUES (15, '女装上衣', 20.00, '红色', 'M', '1', 1, 19, '2022-01-07 10:34:11.800000', '委屈', '2022-01-07 13:17:41');
INSERT INTO `product_order` VALUES (16, '女装上衣', 20.00, '红色', 'M', '1', 1, 20, '2022-01-07 10:34:11.800000', '饿啊哇', '2022-01-07 13:17:42');
INSERT INTO `product_order` VALUES (17, '女装上衣', 20.00, '红色', 'M', '1', 1, 21, '2022-01-07 10:34:11.800000', ' 阿斯顿', '2022-01-07 13:17:43');
INSERT INTO `product_order` VALUES (18, '女装上衣', 20.00, '红色', 'M', '1', 1, 22, '2022-01-07 10:34:11.800000', '大苏打撒旦', '2022-01-07 13:17:45');
INSERT INTO `product_order` VALUES (19, '女装上衣ssd', 20.00, '红色', 'M', '1', 1, 23, '2022-01-07 13:14:34.326724', '啊实打实打算', '2022-01-07 13:17:46');
INSERT INTO `product_order` VALUES (20, '女装上衣', 20.00, '红色', 'M', '1', 1, 24, '2022-01-07 10:34:11.800000', '啊实打实打算', '2022-01-07 13:17:47');
INSERT INTO `product_order` VALUES (21, '女装上衣aaaaa', 20.00, '红色', 'M', '1', 1, 25, '2022-01-07 10:34:11.800000', '啊实打实打算', '2022-01-07 14:32:04');
INSERT INTO `product_order` VALUES (22, '女装上衣sa', 20.00, '红色', 'XX', '1', 1, 5, '2022-01-07 10:34:11.800000', '这是第二条', '2022-01-07 13:17:22');
INSERT INTO `product_order` VALUES (26, '流行女装上衣1', 50.00, '红色', 'M', '-1', 1, 5, '2022-01-08 17:02:25.717434', NULL, '2022-01-08 18:30:34');
INSERT INTO `product_order` VALUES (27, '流行女装上衣1', 50.00, '红色', 'M', '-1', 1, 5, '2022-01-08 18:28:42.045395', NULL, '2022-01-08 18:30:34');
INSERT INTO `product_order` VALUES (28, '新款男装裤子3', 50.00, '红色', 'M', '-1', 1, 16, '2022-01-08 18:30:16.582595', NULL, '2022-01-08 22:05:03');
INSERT INTO `product_order` VALUES (29, '流行女装上衣3', 50.00, '红色', 'M', '-1', 1, 10, '2022-01-08 19:24:33.085766', NULL, '2022-01-08 22:05:03');
INSERT INTO `product_order` VALUES (30, '流行女装上衣1', 50.00, '红色', 'M', '1', 1, 8, '2022-01-08 19:26:30.570066', NULL, '2022-01-08 22:16:35');
INSERT INTO `product_order` VALUES (31, '流行女装上衣2', 50.00, '红色', 'M', '-1', 1, 9, '2022-01-08 19:26:34.630168', NULL, '2022-01-08 22:05:04');
INSERT INTO `product_order` VALUES (32, '流行女装上衣5', 50.00, '红色', 'M', '1', 1, 12, '2022-01-08 19:27:42.329108', NULL, '2022-01-08 22:11:18');
INSERT INTO `product_order` VALUES (33, '流行女装上衣5', 50.00, '红色', 'M', '-1', 1, 12, '2022-01-08 19:27:42.405975', NULL, '2022-01-08 19:27:42');
INSERT INTO `product_order` VALUES (34, '精选鞋子1', 180.00, '红色', 'M', '1', 1, 20, '2022-01-08 19:49:45.354212', NULL, '2022-01-08 22:05:25');
INSERT INTO `product_order` VALUES (35, '流行女装上衣', 50.00, '红色', 'M', '-1', 1, 5, '2022-01-08 19:50:17.365512', NULL, '2022-01-08 19:50:17');
INSERT INTO `product_order` VALUES (36, '流行女装上衣', 50.00, '红色', 'M', '-1', 1, 5, '2022-01-08 19:50:28.916912', NULL, '2022-01-08 19:50:28');
INSERT INTO `product_order` VALUES (37, '流行女装上衣', 50.00, '红色', 'M', '-1', 1, 5, '2022-01-08 19:50:55.591049', NULL, '2022-01-08 19:50:55');
INSERT INTO `product_order` VALUES (38, '流行女装上衣1', 50.00, '红色', 'M', '1', 1, 8, '2022-01-08 19:56:40.085493', NULL, '2022-01-08 22:20:53');
INSERT INTO `product_order` VALUES (39, '流行女装上衣1', 50.00, '红色', 'M', '-1', 1, 8, '2022-01-08 20:04:43.363866', NULL, '2022-01-08 20:04:43');
INSERT INTO `product_order` VALUES (40, '流行女装上衣1', 50.00, '红色', 'M', '-1', 2, 8, '2022-01-09 15:16:16.087872', NULL, '2022-01-09 15:16:16');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descript` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sales` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, '兔子女装店', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fqqpublic.qpic.cn%2Fqq_public%2F0%2F0-2401864875-9EC8A9F92679977181AC20547CE6C8F7%2F0%3Ffmt%3Djpg%26size%3D117%26h%3D600%26w%3D900%26ppv%3D1.jpg&refer=http%3A%2Fhttps://img2.baidu.com/it/u=671937847,1721037349&fm=253&fmt=auto&app=138&f=JPEG?w=563&h=500', '4.66', '5', '38', '98573');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '兔子', 'admin', 'admin', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201606%2F17%2F20160617195313_wAm4X.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1643848989&t=2dd52372');
INSERT INTO `user` VALUES (2, '1', '1', '2', 'upload/92fab3a0-9fa1-4311-946c-3a03f81c101e.jpg');

SET FOREIGN_KEY_CHECKS = 1;
