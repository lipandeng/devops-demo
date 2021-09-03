/*
 Navicat Premium Data Transfer

 Source Server         : 120.78.182.150_3306
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 120.78.182.150:3306
 Source Schema         : quick_coating

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 03/09/2021 14:16:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标题',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作者',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '内容',
  `views` int(11) NULL DEFAULT NULL COMMENT '浏览量',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态1，启用 -1删除, 0 停用',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '4人自驾游失联8天疑坠金沙江 家属:将考虑自行打捞', '郑州报业正观新闻', '重庆小伙带着母亲、女友和堂弟自驾到云南旅游，中途失联，至今已有8天。警方调查后怀疑，车辆于8月24日凌晨在途经四川甘孜州得荣县时，坠崖冲入金沙江中。囿于设备和人员不足，打捞作业需要层层上报，目前暂未开展。', 99, 1, '2021-09-03 06:13:08', '2021-09-03 06:14:19');
INSERT INTO `news` VALUES (2, '阿里巴巴集团将投入1000亿元助力共同富裕', '浙江新闻', '据浙江新闻9月2日消息，记者从阿里巴巴集团获悉，阿里已启动“阿里巴巴助力共同富裕十大行动”，将在2025年前累计投入1000亿元，助力共同富裕。为促进十大行动落地，阿里将成立一个专门的常设机构。据了解，阿里助力共同富裕十大行动将围绕五大方向展开，分别是科技创新、经济发展、高质量就业、弱势群体关爱和共同富裕发展基金。', 45, 1, '2021-09-03 06:13:29', '2021-09-03 06:14:43');
INSERT INTO `news` VALUES (3, '广电总局：不得播出偶像养成类节目', '新华网', '新华社北京9月2日电（记者白瀛、王鹏）国家广播电视总局办公厅2日发出通知，要求广播电视行业坚决抵制违法失德人员，坚决反对唯流量论，不得播出偶像养成类节目，坚决抵制不良“饭圈”文化，坚决抵制泛娱乐化，杜绝“娘炮”等畸形审美，坚决抵制高价片酬，切实加强从业人员管理。\r\n\r\n通知称，广播电视机构和网络视听平台在节目演员和嘉宾选用上要严格把关：政治立场不正确、与党和国家离心离德的人员坚决不用；违反法律法规、冲击社会公平正义底线的人员坚决不用；违背公序良俗、言行失德失范的人员坚决不用。', 136, 1, '2021-09-03 06:15:28', '2021-09-03 06:15:28');

SET FOREIGN_KEY_CHECKS = 1;
