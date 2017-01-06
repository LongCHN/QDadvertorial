/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : advertorial

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2016-12-18 12:27:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `about`
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `entitle` text,
  `content` text,
  `encontent` text,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('4', '公司简介', '', '<DIV class=\"m_l_div m_l_one small\">\r\n<H2>平台简介</H2>\r\n<P>国内最大的软文推广平台，合作网络媒体1000余家，日均发稿3000篇以上，服务企业客户5000余家，专注于软文营销。</P></DIV>\r\n<DIV class=\"m_l_div m_l_two small\">\r\n<H2>优势发稿</H2>\r\n<P>全部采用资源包月、直编合作、软文交换的合作方式，确保低价、快速、稳定的发布渠道，平台供货代理300余家。</P></DIV>\r\n<DIV class=\"m_l_div m_l_three small\">\r\n<H2>方便快捷</H2>\r\n<P>您仅需注册账号、充值所需费用（无最低限额，冲多有惠），提交稿件，即可选择千余家网络媒体快速发布。</P></DIV>\r\n<DIV class=\"m_l_div m_l_four small\">\r\n<H2>企业保障</H2>\r\n<P>最新推出软文免费策划、软文收录查询、软文效果跟踪、软文删稿重发、软文定时发布、更多服务为您免费定制。</P></DIV>', '', '1', '2013-09-18');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminUser` varchar(255) DEFAULT NULL,
  `AdminPass` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  `myemail` varchar(255) DEFAULT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  `ip` varchar(255) DEFAULT NULL,
  `regtime` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `yue` float DEFAULT '0',
  `tyue` float DEFAULT '0',
  `headpic` varchar(255) DEFAULT '../images/headpic.gif	',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2', 'admin', '2abbce842837ec1f147f0d59f467fcf9', null, null, null, null, '1', '112.225.183.147', null, '2016-12-18 11:34:26', '0', '0', '../images/headpic.gif	');

-- ----------------------------
-- Table structure for `anli_class`
-- ----------------------------
DROP TABLE IF EXISTS `anli_class`;
CREATE TABLE `anli_class` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigClass` varchar(255) DEFAULT NULL,
  `enBigClass` varchar(255) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of anli_class
-- ----------------------------

-- ----------------------------
-- Table structure for `anli_info`
-- ----------------------------
DROP TABLE IF EXISTS `anli_info`;
CREATE TABLE `anli_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `title` text,
  `entitle` text,
  `nd` int(11) DEFAULT '1',
  `content` text,
  `encontent` text,
  `data` varchar(255) DEFAULT '',
  `tj` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of anli_info
-- ----------------------------

-- ----------------------------
-- Table structure for `appkf_info`
-- ----------------------------
DROP TABLE IF EXISTS `appkf_info`;
CREATE TABLE `appkf_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `weburl` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of appkf_info
-- ----------------------------
INSERT INTO `appkf_info` VALUES ('129', 'vip01', '', '178', '2013101493086', '网站应用开发需求', '腾讯高级应用开发', '', '230', '网站应用开发需求', '', '', '2013-10-14 08:39:16', '', '0', '0', '1');
INSERT INTO `appkf_info` VALUES ('130', 'vip01', '', '179', '2013101493086', '网站应用开发需求', '腾讯普通应用开发', '', '200', '网站应用开发需求', '特殊原因，不能实现。', '', '2013-10-14 08:39:16', '2013-10-14 08:48:24', '3', '0', '0');
INSERT INTO `appkf_info` VALUES ('131', 'vip01', '', '176', '2013101493086', '网站应用开发需求', '新浪高级应用开发', 'http://www.sina.com.cn/', '80', '网站应用开发需求', '', '', '2013-10-14 08:39:16', '2013-10-14 08:47:38', '2', '1', '0');

-- ----------------------------
-- Table structure for `ask_class`
-- ----------------------------
DROP TABLE IF EXISTS `ask_class`;
CREATE TABLE `ask_class` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigClass` varchar(255) DEFAULT NULL,
  `enBigClass` varchar(255) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ask_class
-- ----------------------------
INSERT INTO `ask_class` VALUES ('28', '已回复', '', '1', '2013-09-19');
INSERT INTO `ask_class` VALUES ('29', '未回复', '', '2', '2013-09-19');

-- ----------------------------
-- Table structure for `ask_discuss`
-- ----------------------------
DROP TABLE IF EXISTS `ask_discuss`;
CREATE TABLE `ask_discuss` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `recontent` text,
  `data` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ask_discuss
-- ----------------------------
INSERT INTO `ask_discuss` VALUES ('79', 'admin', '13772844834611', '尊敬的客户：<br />\r\n			　　您反馈的问题，我们已收到，并正在处理中...请耐心等待我们的处理结果，谢谢！', '2013-10-02 12:34:48', '0');
INSERT INTO `ask_discuss` VALUES ('80', 'admin', '13770231578873', '支付宝系统异常，请稍等再试！', '2013-10-02 01:05:48', '0');
INSERT INTO `ask_discuss` VALUES ('81', 'vip01', '13770231578873', '那我稍候再试，谢谢！', '2013-10-02 01:27:15', '0');
INSERT INTO `ask_discuss` VALUES ('82', 'admin', '13770231578873', '好的，有问题请继续向我们反馈，谢谢您对我们工作的支持。', '2013-10-02 01:30:22', '0');

-- ----------------------------
-- Table structure for `ask_info`
-- ----------------------------
DROP TABLE IF EXISTS `ask_info`;
CREATE TABLE `ask_info` (
  `ID` int(1) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `content` text,
  `encontent` text,
  `data` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ask_info
-- ----------------------------
INSERT INTO `ask_info` VALUES ('67', 'vip02', '13769389137314', '充值失败但已扣款', '<p>充值提示失败，但款项已扣掉，麻烦检查确认一下。</p>', '', '2013-09-19', '0', '0', '0');
INSERT INTO `ask_info` VALUES ('68', 'vip01', '13769389138313', '软文发布失败', '<p>不知道怎么回事，执行了操作却发布失败。</p>', '', '2013-09-19', '0', '0', '0');
INSERT INTO `ask_info` VALUES ('69', 'vip01', '13770231578873', '不能充值问题', '<p>为什么使用支付宝不能充值？<br/></p>', '', '2013-09-19', '2', '1', '0');
INSERT INTO `ask_info` VALUES ('70', 'vip01', '13772844834611', '请问如何充值？', '<p>我不会充值，请问如何充值？</p>', '', '2013-09-19', '1', '0', '0');
INSERT INTO `ask_info` VALUES ('71', 'vip01', '1377284727600', '如何申请代写软文？', '<p>请问如何申请代写软文？</p>', '', '2013-09-19', '0', '0', '0');
INSERT INTO `ask_info` VALUES ('72', 'admin', '2013092282379', '富软文', '', '', '2013-09-22', '1', '0', '0');
INSERT INTO `ask_info` VALUES ('73', 'vip01', '2013092295001', 'xxxxxxxxx', '<p>xxxxxxxxxxxxxxxxx</p>', '', '2013-09-22', '1', '0', '0');

-- ----------------------------
-- Table structure for `bank_info`
-- ----------------------------
DROP TABLE IF EXISTS `bank_info`;
CREATE TABLE `bank_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `accnumber` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `propic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of bank_info
-- ----------------------------
INSERT INTO `bank_info` VALUES ('9', '张三丰', '15288986891', 'http://www.alipay.com', '../images/yinhang_01.png');

-- ----------------------------
-- Table structure for `caiwu`
-- ----------------------------
DROP TABLE IF EXISTS `caiwu`;
CREATE TABLE `caiwu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `trade_id` varchar(255) DEFAULT NULL,
  `VipUser` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `leixing` varchar(255) DEFAULT NULL,
  `jine` float DEFAULT '0',
  `flag` int(11) DEFAULT '0',
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of caiwu
-- ----------------------------
INSERT INTO `caiwu` VALUES ('30', '2013090381452', '', 'admin', 'admin', '账号充值', '500', '1', '2013-09-18 03:13:45');
INSERT INTO `caiwu` VALUES ('31', '2013090382366', '', 'vip01', 'admin', '账号代充值', '500', '1', '2013-09-18 03:13:58');
INSERT INTO `caiwu` VALUES ('32', '2013090344848', '', 'vip02', 'admin', '账号代充值', '500', '1', '2013-09-18 03:14:07');
INSERT INTO `caiwu` VALUES ('33', '2013090353645', '', 'vip03', 'admin', '账号代充值', '500', '1', '2013-09-18 03:14:16');
INSERT INTO `caiwu` VALUES ('34', '2013092127552', '', 'vip01', 'vip01', '软文发稿', '90', '3', '2013-09-21 04:19:48');
INSERT INTO `caiwu` VALUES ('35', '2013092276847', '', 'vip01', 'vip01', '软文代写', '50', '3', '2013-09-22 09:31:24');
INSERT INTO `caiwu` VALUES ('36', '2013092253447', '', 'vip04', 'admin', '账号代充值', '123', '1', '2013-09-22 10:11:14');
INSERT INTO `caiwu` VALUES ('37', '2013092286023', '', 'vip04', 'admin', '账号代充值', '100', '1', '2013-09-22 10:11:30');
INSERT INTO `caiwu` VALUES ('38', '2013092259898', '', 'admin', 'admin', '软文发稿', '50', '3', '2013-09-22 10:19:32');
INSERT INTO `caiwu` VALUES ('39', '2013092226964', '', 'admin', 'admin', '软文发稿', '330', '3', '2013-09-22 10:20:36');
INSERT INTO `caiwu` VALUES ('40', '2013092264938', '', 'admin', 'admin', '账号充值', '500', '1', '2013-09-22 10:21:43');
INSERT INTO `caiwu` VALUES ('41', '2013092546232', '', 'vip02', 'admin', '发稿费用', '0', '6', '2013-09-25 04:58:31');
INSERT INTO `caiwu` VALUES ('42', '2013092546232', '', 'admin', 'admin', '发稿利润', '20', '6', '2013-09-25 04:58:31');
INSERT INTO `caiwu` VALUES ('43', '2013092567219', '', 'vip02', 'admin', '发稿费用', '10', '6', '2013-09-25 08:43:47');
INSERT INTO `caiwu` VALUES ('44', '2013092567219', '', 'admin', 'admin', '发稿利润', '10', '6', '2013-09-25 08:43:47');
INSERT INTO `caiwu` VALUES ('45', '2013092533365', '', 'vip01', 'admin', '软文拒稿', '70', '5', '2013-09-25 09:08:34');
INSERT INTO `caiwu` VALUES ('46', '2013092579175', '', 'vip01', 'vip01', '软文发稿', '60', '3', '2013-09-25 10:13:37');
INSERT INTO `caiwu` VALUES ('47', '2013092631305', '', 'vip01', 'vip01', '软文发稿', '60', '3', '2013-09-26 02:16:24');
INSERT INTO `caiwu` VALUES ('48', '2013092753450', '', 'vip01', 'vip01', '软文删单', '60', '5', '2013-09-27 03:04:21');
INSERT INTO `caiwu` VALUES ('49', '2013092771014', '', 'vip01', 'vip01', '软文发稿', '70', '3', '2013-09-27 04:41:01');
INSERT INTO `caiwu` VALUES ('50', '2013092760071', '', 'vip01', 'vip01', '软文发稿', '130', '3', '2013-09-27 04:42:05');
INSERT INTO `caiwu` VALUES ('51', '2013092733408', '', 'vip01', 'vip01', '软文代写', '50', '3', '2013-09-27 04:46:21');
INSERT INTO `caiwu` VALUES ('52', '2013092772853', '', 'vip01', 'vip01', '软文代写', '100', '3', '2013-09-27 04:48:00');
INSERT INTO `caiwu` VALUES ('53', '2013092751303', '', 'vip01', 'admin', '账号代充值', '3000', '1', '2013-09-27 04:48:56');
INSERT INTO `caiwu` VALUES ('54', '2013092732566', '', 'vip01', 'vip01', '软文代写', '150', '3', '2013-09-27 04:49:23');
INSERT INTO `caiwu` VALUES ('55', '2013092773966', '', 'vip02', 'vip02', '软文发稿', '120', '3', '2013-09-27 05:02:00');
INSERT INTO `caiwu` VALUES ('56', '2013092747264', '', 'vip04', 'admin', '账号代充值', '1000', '1', '2013-09-27 05:09:21');
INSERT INTO `caiwu` VALUES ('57', '2013092743109', '', 'vip04', 'vip04', '软文代写', '150', '3', '2013-09-27 05:09:54');
INSERT INTO `caiwu` VALUES ('58', '2013092791343', '', 'vip04', 'vip04', '软文发稿', '90', '3', '2013-09-27 05:10:55');
INSERT INTO `caiwu` VALUES ('59', '2013092719345', '', 'vip04', 'vip04', '软文发稿', '50', '3', '2013-09-27 05:11:41');
INSERT INTO `caiwu` VALUES ('60', '2013092720431', '', 'vip02', 'admin', '软文拒稿', '70', '5', '2013-09-27 01:36:58');
INSERT INTO `caiwu` VALUES ('61', '2013092768098', '', 'vip02', 'admin', '发稿费用', '10', '6', '2013-09-27 01:38:29');
INSERT INTO `caiwu` VALUES ('62', '2013092768098', '', 'admin', 'admin', '发稿利润', '60', '6', '2013-09-27 01:38:29');
INSERT INTO `caiwu` VALUES ('63', '2013092861583', '', 'admin', 'admin', '软文发稿', '10', '3', '2013-09-28 02:42:53');
INSERT INTO `caiwu` VALUES ('64', '2013092821038', '', 'admin', 'admin', '软文发稿', '10', '3', '2013-09-28 04:08:27');
INSERT INTO `caiwu` VALUES ('65', '2013092988285', '', 'admin', 'admin', '账号充值', '800', '1', '2013-09-29 06:05:32');
INSERT INTO `caiwu` VALUES ('66', '2013092928468', '', 'vip05', 'admin', '账号代充值', '800', '1', '2013-09-29 06:05:51');
INSERT INTO `caiwu` VALUES ('67', '2013092957032', '', 'vip05', 'vip05', '软文发稿', '380', '3', '2013-09-29 06:16:42');
INSERT INTO `caiwu` VALUES ('68', '2013092910928', '', 'vip05', 'vip05', '软文发稿', '220', '3', '2013-09-29 06:50:01');
INSERT INTO `caiwu` VALUES ('69', '2013092923861', '', 'vip05', 'admin', '账号代充值', '800', '1', '2013-09-29 07:22:28');
INSERT INTO `caiwu` VALUES ('70', '2013092990375', '', 'vip05', 'vip05', '软文发稿', '320', '3', '2013-09-29 07:23:32');
INSERT INTO `caiwu` VALUES ('71', '2013092983583', '', 'admin', 'admin', '软文发稿', '130', '3', '2013-09-29 07:45:12');
INSERT INTO `caiwu` VALUES ('72', '2013092919654', '', 'admin', 'admin', '软文发稿', '130', '3', '2013-09-29 07:59:32');
INSERT INTO `caiwu` VALUES ('73', '2013092971270', '', 'admin', 'admin', '软文发稿', '30', '3', '2013-09-29 08:13:19');
INSERT INTO `caiwu` VALUES ('74', '2013092919107', '', 'admin', 'admin', '软文发稿', '160', '3', '2013-09-29 08:19:30');
INSERT INTO `caiwu` VALUES ('75', '2013092960067', '', 'vip01', 'vip01', '软文发稿', '150', '3', '2013-09-29 08:32:55');
INSERT INTO `caiwu` VALUES ('76', '2013092972166', '', 'admin', 'admin', '软文发稿', '130', '3', '2013-09-29 08:42:24');
INSERT INTO `caiwu` VALUES ('77', '2013092937976', '', 'admin', 'admin', '软文发稿', '130', '3', '2013-09-29 08:43:23');
INSERT INTO `caiwu` VALUES ('78', '2013092941802', '', 'admin', 'admin', '软文发稿', '130', '3', '2013-09-29 08:46:56');
INSERT INTO `caiwu` VALUES ('79', '2013092933453', '', 'vip01', 'vip01', '软文发稿', '150', '3', '2013-09-29 08:47:25');
INSERT INTO `caiwu` VALUES ('80', '2013092931071', '', 'vip05', 'vip05', '软文发稿', '200', '3', '2013-09-29 08:48:10');
INSERT INTO `caiwu` VALUES ('81', '2013092918517', '', 'admin', 'admin', '软文发稿', '160', '3', '2013-09-29 09:08:55');
INSERT INTO `caiwu` VALUES ('82', '2013092946142', '', 'admin', 'admin', '软文发稿', '30', '3', '2013-09-29 09:10:34');
INSERT INTO `caiwu` VALUES ('83', '2013092912298', '', 'vip01', 'vip01', '软文发稿', '210', '3', '2013-09-29 09:11:19');
INSERT INTO `caiwu` VALUES ('84', '2013092928704', '', 'vip01', 'vip01', '软文发稿', '60', '3', '2013-09-29 09:11:37');
INSERT INTO `caiwu` VALUES ('85', '2013092992320', '', 'vip05', 'vip05', '软文发稿', '320', '3', '2013-09-29 09:12:27');
INSERT INTO `caiwu` VALUES ('86', '2013092924883', '', 'vip05', 'vip05', '软文发稿', '120', '3', '2013-09-29 09:12:47');
INSERT INTO `caiwu` VALUES ('87', '2013092952371', '', 'admin', 'admin', '发稿利润', '20', '6', '2013-09-29 09:27:56');
INSERT INTO `caiwu` VALUES ('88', '2013092952080', '', 'vip02', 'vip02', '软文删单', '50', '5', '2013-09-29 10:10:00');
INSERT INTO `caiwu` VALUES ('89', '2013100174226', '', 'vip01', 'vip01', '软文代写', '50', '3', '2013-10-01 04:11:06');
INSERT INTO `caiwu` VALUES ('90', '2013100147641', '', 'vip01', 'vip01', '代写删单', '50', '5', '2013-10-01 04:24:53');
INSERT INTO `caiwu` VALUES ('91', '2013100193616', '', 'admin', 'admin', '软文代写', '50', '3', '2013-10-01 05:22:43');
INSERT INTO `caiwu` VALUES ('92', '2013100118080', '', 'vip01', 'vip01', '软文代写', '50', '3', '2013-10-01 05:36:31');
INSERT INTO `caiwu` VALUES ('93', '2013100250844', '', 'vip02', 'admin', '提现结款', '300', '6', '2013-10-02 05:50:27');
INSERT INTO `caiwu` VALUES ('94', '2013100414328', '', 'admin', 'admin', '发稿利润', '-30', '6', '2013-10-04 07:40:07');
INSERT INTO `caiwu` VALUES ('95', '2013100480153', '', 'admin', 'admin', '发稿利润', '20', '6', '2013-10-04 07:50:28');
INSERT INTO `caiwu` VALUES ('96', '2013100484775', '', 'admin', 'admin', '发稿利润', '70', '6', '2013-10-04 08:06:12');
INSERT INTO `caiwu` VALUES ('97', '2013100438660', '', 'admin', 'admin', '发稿利润', '60', '6', '2013-10-04 08:23:42');
INSERT INTO `caiwu` VALUES ('98', '2013101469474', '', 'vip01', 'vip01', '微营销发稿', '200', '3', '2013-10-14 02:36:20');
INSERT INTO `caiwu` VALUES ('99', '2013101498868', '', 'vip01', 'vip01', '社区发稿', '200', '3', '2013-10-14 05:06:57');
INSERT INTO `caiwu` VALUES ('100', '2013101433296', '', 'admin', 'admin', '发稿利润', '50', '6', '2013-10-14 06:06:45');
INSERT INTO `caiwu` VALUES ('101', '2013101433384', '', 'admin', 'admin', '发稿利润', '30', '6', '2013-10-14 06:08:08');
INSERT INTO `caiwu` VALUES ('102', '2013101419173', '', 'vip01', 'vip01', '会员发稿', '250', '3', '2013-10-14 06:33:44');
INSERT INTO `caiwu` VALUES ('103', '2013101437913', '', 'admin', 'admin', '发稿利润', '60', '6', '2013-10-14 06:54:30');
INSERT INTO `caiwu` VALUES ('104', '2013101465014', '', 'vip01', 'vip01', '会员发稿', '300', '3', '2013-10-14 07:07:11');
INSERT INTO `caiwu` VALUES ('105', '2013101431014', '', 'admin', 'admin', '发稿利润', '80', '6', '2013-10-14 07:19:00');
INSERT INTO `caiwu` VALUES ('106', '2013101482138', '', 'vip01', 'vip01', '门户合作发稿', '350', '3', '2013-10-14 07:31:09');
INSERT INTO `caiwu` VALUES ('107', '2013101438569', '', 'admin', 'admin', '发稿利润', '60', '6', '2013-10-14 07:40:23');
INSERT INTO `caiwu` VALUES ('108', '2013101480749', '', 'vip01', 'vip01', '活动发稿', '163', '3', '2013-10-14 07:52:38');
INSERT INTO `caiwu` VALUES ('109', '2013101433296', '', 'admin', 'admin', '发稿利润', '30', '6', '2013-10-14 08:01:40');
INSERT INTO `caiwu` VALUES ('110', '2013101488140', '', 'vip01', 'vip01', '群发发稿', '190', '3', '2013-10-14 08:14:33');
INSERT INTO `caiwu` VALUES ('111', '2013101475882', '', 'admin', 'admin', '发稿利润', '10', '6', '2013-10-14 08:27:44');
INSERT INTO `caiwu` VALUES ('112', '2013101493086', '', 'vip01', 'vip01', '应用开发发稿', '510', '3', '2013-10-14 08:39:16');
INSERT INTO `caiwu` VALUES ('113', '2013101492045', '', 'admin', 'admin', '发稿利润', '50', '6', '2013-10-14 08:47:49');
INSERT INTO `caiwu` VALUES ('114', '2013101499409', '', 'vip01', 'vip01', '应用开发删单', '230', '5', '2013-10-14 08:49:17');
INSERT INTO `caiwu` VALUES ('115', '2013101649811', '', 'vip02', 'admin', '账号代充值', '500', '1', '2013-10-16 05:08:17');
INSERT INTO `caiwu` VALUES ('116', '2013101628355', '', 'vip02', 'admin', '提现结款', '100', '6', '2013-10-16 05:29:40');
INSERT INTO `caiwu` VALUES ('117', '2013101615427', '', 'vip02', 'admin', '提现结款', '100', '6', '2013-10-16 05:34:34');
INSERT INTO `caiwu` VALUES ('118', '2013101616726', '', 'vip02', 'admin', '提现结款', '500', '6', '2013-10-16 05:52:57');
INSERT INTO `caiwu` VALUES ('119', '2014012178334', '', 'admin', 'admin', '软文发稿', '30', '3', '2014-01-21 07:49:44');
INSERT INTO `caiwu` VALUES ('120', '2014012190527', '', 'admin', 'admin', '软文发稿', '30', '3', '2014-01-21 08:13:51');
INSERT INTO `caiwu` VALUES ('121', '2014072260210', '', 'admin', 'admin', '账号充值', '8', '1', '2014-07-22 15:32:12');
INSERT INTO `caiwu` VALUES ('122', '2016110440182', null, 'admin', 'admin', '软文发稿', '10', '3', '2016-11-04 10:01:32');
INSERT INTO `caiwu` VALUES ('123', '2016110445760', null, 'admin', 'admin', '软文发稿', '120', '3', '2016-11-04 14:37:51');
INSERT INTO `caiwu` VALUES ('124', '2016110454612', null, 'admin', 'admin', '软文发稿', '10', '3', '2016-11-04 17:14:58');
INSERT INTO `caiwu` VALUES ('125', '2016110479606', null, 'admin', 'admin', '软文发稿', '120', '3', '2016-11-04 17:34:11');
INSERT INTO `caiwu` VALUES ('126', '2016110470540', null, '青岛火一五信息科技有限公司', 'admin', '账号代充值', '200', '1', '2016-11-04 17:46:19');
INSERT INTO `caiwu` VALUES ('127', '2016110458721', null, '青岛火一五信息科技有限公司', 'admin', '账号代充值', '1000', '1', '2016-11-04 17:46:28');
INSERT INTO `caiwu` VALUES ('128', '2016110453725', null, 'vip06', 'admin', '账号代充值', '1000', '1', '2016-11-04 18:19:09');
INSERT INTO `caiwu` VALUES ('129', '2016110462495', null, 'vip06', 'vip06', '软文发稿', '200', '3', '2016-11-04 06:20:03');
INSERT INTO `caiwu` VALUES ('130', '2016110453862', null, 'admin', 'admin', '软文发稿', '120', '3', '2016-11-04 19:05:42');
INSERT INTO `caiwu` VALUES ('131', '2016110429651', null, 'admin', 'admin', '软文发稿', '10', '3', '2016-11-04 19:06:56');
INSERT INTO `caiwu` VALUES ('132', '2016121890672', null, '青岛火一五信息科技有限公司', 'admin', '账号代充值', '100', '1', '2016-12-18 11:36:29');
INSERT INTO `caiwu` VALUES ('133', 'RWZTC20161218115246', null, 'vip06', 'vip06', '支付宝充值', '0.01', '1', '');

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `entitle` text,
  `content` text,
  `encontent` text,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('5', '联系我们', '', '<P><STRONG><FONT style=\"FONT-SIZE: 16pt\">联系方式： </FONT></STRONG></P>\r\n<P>公司电话：4000020172 </P>\r\n<P>企业 Q Q：800023525 </P>\r\n<P>经理Q Q：775925816 </P>\r\n<P>公司邮箱：775925816@qq.com </P>\r\n<P>联系人：朱先生</P>', '', '1', '2013-09-18');

-- ----------------------------
-- Table structure for `daixie_discuss`
-- ----------------------------
DROP TABLE IF EXISTS `daixie_discuss`;
CREATE TABLE `daixie_discuss` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `recontent` text,
  `data` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of daixie_discuss
-- ----------------------------
INSERT INTO `daixie_discuss` VALUES ('79', 'vip01', '2013092276847', '要求已更新，请重新看要求。', '2013-10-01 09:02:21', '0');
INSERT INTO `daixie_discuss` VALUES ('80', 'vip01', '2013092276847', '稿件要求已再次修改，请查看。', '2013-10-02 03:51:48', '0');
INSERT INTO `daixie_discuss` VALUES ('81', 'admin', '2013092276847', '已经按要求再次作了修改，请审阅。', '2013-10-02 06:57:07', '0');
INSERT INTO `daixie_discuss` VALUES ('82', 'vip01', '2013092276847', '最好能突出产品的卖点。', '2013-10-02 07:06:44', '0');
INSERT INTO `daixie_discuss` VALUES ('83', 'admin', '2013092276847', '能详细说一下你们公司的产品有什么卖点吗？', '2013-10-02 07:25:26', '0');

-- ----------------------------
-- Table structure for `daixie_info`
-- ----------------------------
DROP TABLE IF EXISTS `daixie_info`;
CREATE TABLE `daixie_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `pianshu` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `content` text,
  `encontent` text,
  `data` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of daixie_info
-- ----------------------------
INSERT INTO `daixie_info` VALUES ('74', 'vip01', '2013092276847', '好鞋网：购鞋新选择，低价买好鞋', '1', '50', '<p>1、推广对象：好鞋网<br />\r\n2、文章体裁：不限<br />\r\n3、文章标题：不限<br />\r\n4、宣传要点：宣传好鞋网的产品价低，物廉，品质好。<br />\r\n5、其他要求：<br />\r\n5、软文案例：没有<br />\r\n若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。</p>', '<p><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\">　　若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\">若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。</span></span></p>\r\n<p><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\">　　若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\">若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。</span></span></span></span></p>\r\n<p><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\">　　若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\">若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。</span></span></span></span></span></span></p>\r\n<p><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\"><span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\">　　若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<span style=\"color:#444444;font-family:??????;font-size:medium;background-color:#ffffff;\">若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。</span></span></span></span></span></span></span></span></p>', '2013-09-22 09:31:24', '3', '0', '0');
INSERT INTO `daixie_info` VALUES ('75', 'vip01', '2013092733408', 'haohaod ', '1', '50', '<p>1、推广对象：<br/>2、文章体裁：<br/>3、文章标题：<br/>4、宣传要点：<br/>5、其他要求：<br/>5、软文案例：<br/>若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<br/></p>', '', '2013-09-27 04:46:21', '4', '0', '0');
INSERT INTO `daixie_info` VALUES ('76', 'vip01', '2013092772853', 'kkkk', '2', '100', '<p>1、推广对象：<br/>2、文章体裁：<br/>3、文章标题：<br/>4、宣传要点：<br/>5、其他要求：<br/>5、软文案例：<br/>若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<br/></p>', '', '2013-09-27 04:48:00', '1', '0', '0');
INSERT INTO `daixie_info` VALUES ('77', 'vip01', '2013092732566', 'dafgadsg', '3', '150', '<p>1、推广对象：<br/>2、文章体裁：<br/>3、文章标题：<br/>4、宣传要点：<br/>5、其他要求：<br/>5、软文案例：<br/>若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<br/></p>', '', '2013-09-27 04:49:23', '5', '0', '0');
INSERT INTO `daixie_info` VALUES ('78', 'vip04', '2013092743109', 'test it', '3', '150', '<p>1、推广对象：<br/>2、文章体裁：<br/>3、文章标题：<br/>4、宣传要点：<br/>5、其他要求：<br/>5、软文案例：<br/>若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<br/></p>', '<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　美国人最后终于开始体会到买一套好的西装而被穿一件大量生产的廉价衬衫毁坏了整个效果，实在是一件愚蠢的事。因此在这个阶层的人群中，“哈特威</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　”衬衫就开始流行了。</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\"><br style=\"padding:0px;margin:0px auto;\" />\r\n</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　首先，“哈特威”衬衫耐穿性极长??这是多年的事了。其次，因为“哈特威”</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　剪裁??低斜度及“为顾客定制的”??衣领，使得您看起来更年轻、更高贵。</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　整件衬衣不惜工本的剪裁，因而使您更为“舒适”。</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\"><br style=\"padding:0px;margin:0px auto;\" />\r\n</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　下摆很长，可深入您的裤腰。钮扣是用珍珠母做成??非常大，也非常有男子气</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　。甚至缝纫上也存在着一种南北战争前的高雅。</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\"><br style=\"padding:0px;margin:0px auto;\" />\r\n</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　最重要的是“哈特威”使用从世界各角落进口的最有名的布匹来缝制他们的衬衫</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　??从英国来的棉毛混纺的斜纹布，从苏格兰奥斯特拉德地方来的毛织波纹绸，</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　从英属西印度群岛来的海岛棉，从印度来的手织绸，从英格兰曼彻斯特来的宽幅</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　细毛布，从巴黎来的亚麻细布，在穿了这么完美风格的衬衫，会使您得到众多的</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　内心满足。</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\"><br style=\"padding:0px;margin:0px auto;\" />\r\n</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　“哈特威”衬衫是缅因州的小城渥特威的一个小公司的虔诚的手艺人所缝制的。</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　他们老老小小的在那里工作了已整整114年。</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\"><br style=\"padding:0px;margin:0px auto;\" />\r\n</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　您如果想在离您最近的店家买到“哈特威”衬衫，请写张明信片到“G?F?哈特</p>\r\n<p style=\"padding:0px;margin-bottom:10px;line-height:25px;text-indent:2em;color:#444444;font-size:14px;font-family:??????;-webkit-text-size-adjust:none;\">　　威”缅因州?渥特威城，即复。</p>', '2013-09-27 05:09:54', '2', '0', '0');
INSERT INTO `daixie_info` VALUES ('79', 'vip01', '2013100174226', '代写“哈特威”衬衫宣传软文', '1', '50', '1、推广对象：“哈特威”衬衫<br />\r\n2、文章体裁：不限<br />\r\n3、文章标题：不限<br />\r\n4、宣传要点：<br />\r\n5、其他要求：<br />\r\n5、软文案例：<br />\r\n若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<br />', '', '2013-10-01 04:11:06', '0', '0', '1');
INSERT INTO `daixie_info` VALUES ('80', 'admin', '2013100193616', '代写宣传公司宣传性软文', '1', '50', '1、推广对象：<br />\r\n2、文章体裁：<br />\r\n3、文章标题：<br />\r\n4、宣传要点：<br />\r\n5、其他要求：<br />\r\n5、软文案例：<br />\r\n若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<br />', '', '2013-10-01 05:22:43', '0', '0', '0');
INSERT INTO `daixie_info` VALUES ('81', 'vip01', '2013100118080', '代写红木船公司宣传性软文', '1', '50', '1、推广对象：红木船公司<br />\r\n2、文章体裁：不限<br />\r\n3、文章标题：不限<br />\r\n4、宣传要点：<br />\r\n5、其他要求：<br />\r\n5、软文案例：<br />\r\n若能提供一篇您认为不错的软文链接给我们，对我们的写作方向很有参考作用，写出的文章也能比较达到您预期的要求。<br />', '', '2013-10-01 05:36:31', '0', '0', '0');

-- ----------------------------
-- Table structure for `diqu_class`
-- ----------------------------
DROP TABLE IF EXISTS `diqu_class`;
CREATE TABLE `diqu_class` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigClass` varchar(255) DEFAULT NULL,
  `enBigClass` varchar(255) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of diqu_class
-- ----------------------------
INSERT INTO `diqu_class` VALUES ('30', '北京', '', '1', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('31', '上海', '', '2', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('32', '广东', '', '3', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('33', '浙江', '', '4', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('34', '天津', '', '5', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('35', '重庆', '', '6', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('36', '湖北', '', '7', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('37', '湖南', '', '8', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('38', '河北', '', '9', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('39', '河南', '', '10', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('40', '东北', '', '11', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('41', '山西', '', '12', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('42', '江苏', '', '13', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('43', '江西', '', '14', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('44', '四川', '', '15', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('45', '辽宁', '', '16', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('46', '吉林', '', '17', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('47', '甘肃', '', '18', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('48', '青海', '', '19', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('49', '海南', '', '20', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('50', '安徽', '', '21', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('51', '福建', '', '22', '2013-09-18');
INSERT INTO `diqu_class` VALUES ('52', '其他地区', '', '23', '2013-09-18');

-- ----------------------------
-- Table structure for `huiyuan_info`
-- ----------------------------
DROP TABLE IF EXISTS `huiyuan_info`;
CREATE TABLE `huiyuan_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `weburl` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of huiyuan_info
-- ----------------------------
INSERT INTO `huiyuan_info` VALUES ('129', 'vip01', '', '158', '2013101419173', '代写宣传软文', '新浪普通会员', '', '100', '代写宣传软文', '违规内容。', '', '2013-10-14 06:33:44', '2013-10-14 06:54:57', '3', '0', '0');
INSERT INTO `huiyuan_info` VALUES ('130', 'vip01', '', '160', '2013101419173', '代写宣传软文', '腾讯普通会员', 'http://www.qq.com/', '150', '代写宣传软文', '', '', '2013-10-14 06:33:44', '2013-10-14 06:54:14', '2', '1', '0');

-- ----------------------------
-- Table structure for `huodong_info`
-- ----------------------------
DROP TABLE IF EXISTS `huodong_info`;
CREATE TABLE `huodong_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `weburl` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of huodong_info
-- ----------------------------
INSERT INTO `huodong_info` VALUES ('129', 'vip01', '', '172', '2013101480749', '活动：购鞋有优惠，不容错过', '腾讯促销活动', '', '83', '活动：购鞋有优惠，不容错过', '特殊原因，取消活动。', '', '2013-10-14 07:52:38', '2013-10-14 08:02:26', '3', '0', '0');
INSERT INTO `huodong_info` VALUES ('130', 'vip01', '', '170', '2013101480749', '活动：购鞋有优惠，不容错过', '新浪促销活动', 'http://www.sina.com.cn/', '80', '活动：购鞋有优惠，不容错过', '', '', '2013-10-14 07:52:38', '2013-10-14 08:01:31', '2', '1', '0');

-- ----------------------------
-- Table structure for `media_class`
-- ----------------------------
DROP TABLE IF EXISTS `media_class`;
CREATE TABLE `media_class` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigID` int(11) DEFAULT '0',
  `SmallClass` varchar(255) DEFAULT NULL,
  `enSmallClass` varchar(255) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of media_class
-- ----------------------------
INSERT INTO `media_class` VALUES ('30', '46', '工业贸易', '', '1', '2013-09-18');
INSERT INTO `media_class` VALUES ('31', '46', '生活消费', '', '2', '2013-09-19');
INSERT INTO `media_class` VALUES ('32', '46', '女性时尚', '', '3', '2013-09-19');
INSERT INTO `media_class` VALUES ('33', '46', '娱乐休闲', '', '4', '2013-09-19');
INSERT INTO `media_class` VALUES ('34', '46', '游戏网站', '', '5', '2013-09-19');
INSERT INTO `media_class` VALUES ('35', '46', '汽车网站', '', '6', '2013-09-19');
INSERT INTO `media_class` VALUES ('36', '46', '教育培训', '', '7', '2013-09-19');
INSERT INTO `media_class` VALUES ('37', '46', '酒店旅游', '', '8', '2013-09-19');
INSERT INTO `media_class` VALUES ('38', '46', '健康医疗', '', '9', '2013-09-19');
INSERT INTO `media_class` VALUES ('39', '46', '房产家居', '', '10', '2013-09-19');
INSERT INTO `media_class` VALUES ('40', '46', '财经商业', '', '11', '2013-09-19');
INSERT INTO `media_class` VALUES ('41', '46', '新闻资讯', '', '12', '2013-09-19');
INSERT INTO `media_class` VALUES ('42', '46', 'IT-科技', '', '13', '2013-09-19');
INSERT INTO `media_class` VALUES ('43', '46', '套餐系列', '', '14', '2013-09-19');
INSERT INTO `media_class` VALUES ('44', '46', '最新秒杀', '', '15', '2013-09-19');
INSERT INTO `media_class` VALUES ('45', '46', '十元专区', '', '16', '2013-09-19');
INSERT INTO `media_class` VALUES ('46', '47', '微博营销', '', '17', '');
INSERT INTO `media_class` VALUES ('47', '47', '微信营销', '', '18', '');
INSERT INTO `media_class` VALUES ('48', '48', '大社区', '', '19', '');
INSERT INTO `media_class` VALUES ('49', '48', '小社区', '', '20', '');
INSERT INTO `media_class` VALUES ('50', '49', '高级会员', '', '21', '');
INSERT INTO `media_class` VALUES ('51', '49', '普通会员', '', '22', '');
INSERT INTO `media_class` VALUES ('52', '50', '高级水军', '', '23', '');
INSERT INTO `media_class` VALUES ('53', '50', '普通水军', '', '24', '');
INSERT INTO `media_class` VALUES ('54', '51', '大门户', '', '25', '');
INSERT INTO `media_class` VALUES ('55', '51', '小门户', '', '26', '');
INSERT INTO `media_class` VALUES ('56', '52', '优惠活动', '', '27', '');
INSERT INTO `media_class` VALUES ('57', '52', '促销活动', '', '28', '');
INSERT INTO `media_class` VALUES ('58', '53', 'QQ群发', '', '29', '');
INSERT INTO `media_class` VALUES ('59', '53', '微博群发', '', '30', '');
INSERT INTO `media_class` VALUES ('60', '54', '高级应用开发', '', '31', '');
INSERT INTO `media_class` VALUES ('61', '54', '普通应用开发', '', '32', '');

-- ----------------------------
-- Table structure for `media_info`
-- ----------------------------
DROP TABLE IF EXISTS `media_info`;
CREATE TABLE `media_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `sh` int(11) DEFAULT '0',
  `nav_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `small_id` int(11) DEFAULT NULL,
  `medianame` text,
  `medialx` varchar(255) DEFAULT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `anliurl` varchar(255) DEFAULT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `xinwenyuan` varchar(255) DEFAULT NULL,
  `zhmh` varchar(255) DEFAULT NULL,
  `diqu` varchar(255) DEFAULT NULL,
  `fans` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `dlprice` int(11) DEFAULT '0',
  `scprice` int(11) DEFAULT '0',
  `content` text,
  `neirong` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `data` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `tj` varchar(255) DEFAULT '../images/stars.gif',
  `hyprice` int(11) NOT NULL DEFAULT '0',
  `zjdlprice` int(11) NOT NULL DEFAULT '0',
  `gjdlprice` int(11) NOT NULL DEFAULT '0',
  `rkjibie` varchar(255) NOT NULL DEFAULT '没有入口',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of media_info
-- ----------------------------
INSERT INTO `media_info` VALUES ('73', '', '1', '46', '30', '0', '中国网-民企', '', 'http://minqi.china.com.cn/', 'http://minqi.china.com.cn/', '可带网址', '非新闻源', '中国网', '其他地区', '0', '130', '50', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('74', '', '1', '46', '30', '0', '中工网', '', 'http://news.workercn.cn/', 'http://news.workercn.cn/', '可带网址', '百度新闻源', ' ', '其他地区', '0', '150', '50', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('75', '', '1', '46', '30', '0', '中国低碳网', '', 'http://www.ditan360.com/', 'http://www.ditan360.com/', '可带网址', '百度新闻源', '', '其他地区', '0', '150', '80', '70', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('76', '', '1', '46', '30', '0', '中国建材采购网', '', 'http://www.jiancai365.cn/', 'http://www.jiancai365.cn/', '可带网址', '非新闻源', '', '其他地区', '0', '220', '100', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('77', '', '1', '46', '30', '0', '中国建筑装饰网', '', 'http://www.ccd.com.cn/', 'http://www.ccd.com.cn/', '可带网址', '百度新闻源', '', '其他地区', '0', '180', '70', '10', '', '', '2013-09-02', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('78', '', '1', '46', '30', '0', '地宝网', '', 'http://www.tiboo.cn/', 'http://www.tiboo.cn/', '可带网址', '非新闻源', '', '其他地区', '0', '170', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('79', '', '1', '46', '30', '0', '中国家电网', '', 'http://www.cheaa.com/', 'http://www.cheaa.com/', '可带网址', '百度新闻源', ' ', '其他地区', '0', '170', '80', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('80', '', '1', '46', '30', '0', '中华橱柜网', '', 'http://www.chinachugui.com/', 'http://www.chinachugui.com/', '可带网址', '非新闻源', '', '其他地区', '0', '180', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('81', '', '1', '46', '30', '0', '世界工厂网', '', 'http://ch.gongchang.com/', 'http://ch.gongchang.com/', '文本链接', '非新闻源', '', '其他地区', '0', '150', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('82', '', '1', '46', '30', '0', '中国工业网', '', 'http://www.ecgoods.com/', 'http://www.ecgoods.com/', '文本链接', '非新闻源', '', '其他地区', '0', '130', '60', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('83', '', '1', '46', '31', '0', '洛阳网-生活', '', 'http://life.lyd.com.cn/', 'http://life.lyd.com.cn/system/2013/01/21/010223640.shtml', '可带网址', '非新闻源', '', '其他地区', '0', '130', '20', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('84', '', '1', '46', '31', '0', '中国青年网-生活', '', 'http://www.youth.cn/', 'http://www.youth.cn/mscj/sh/jdxw/201307/t20130717_3546744.htm', '可带网址', '非新闻源', '', '其他地区', '0', '150', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('85', '', '1', '46', '31', '0', '东方网-生活', '', 'http://life.eastday.com/', 'http://life.eastday.com/eastday/dfsh/node719470/node719472/u1a7441643.html', '不能带网址', '非新闻源', '', '其他地区', '0', '130', '60', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('86', '', '1', '46', '31', '0', '中青在线', '', 'http://life.cyol.com/', 'http://life.cyol.com/content/2013-07/10/content_8695409.htm', '文本链接', '百度新闻源', ' ', '其他地区', '0', '180', '80', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('87', '', '1', '46', '31', '0', '现代消费网', '', 'http://www.xdxfdb.com/', 'http://www.xdxfdb.com/html/2013/0711/55172.shtml', '文本链接', '非新闻源', '', '其他地区', '0', '120', '60', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('88', '', '1', '46', '31', '0', '中国广播网-开发', '', 'http://www.cnr.cn/', 'http://www.cnr.cn/kfqpd/sp/201305/t20130527_512677831.shtml', '文本链接', '非新闻源', '', '其他地区', '0', '100', '50', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('89', '', '1', '46', '31', '0', '中国日报网-消费', '', 'http://xf.chinadaily.com.cn/', 'http://xf.chinadaily.com.cn/html/2013/0701/11285.shtml', '文本链接', '非新闻源', '中国日报网', '其他地区', '0', '90', '45', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('90', '', '1', '46', '31', '0', '中国日报网-网视', '', 'http://www.wschina.com.cn/', 'http://www.wschina.com.cn/2012/1119/106858.shtml', '文本链接', '非新闻源', '中国日报网', '其他地区', '0', '100', '50', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('91', '', '1', '46', '31', '0', '中国日报网-食品', '', 'http://sp.chinadaily.com.cn/', 'http://sp.chinadaily.com.cn/info/20130123/97366.html', '文本链接', '非新闻源', '中国日报网', '其他地区', '0', '120', '60', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('92', '', '1', '46', '31', '0', '中国网-生活', '', 'http://live.china.com.cn/', 'http://live.china.com.cn/2013-01/18/content_5681423.htm', '可带网址', '非新闻源', '中国网', '其他地区', '0', '120', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('93', '', '1', '46', '32', '0', '凤凰网-时尚', '', 'http://life.lyd.com.cn/', 'http://life.lyd.com.cn/system/2013/01/21/010223640.shtml', '文本链接', '百度新闻源', '凤凰网', '其他地区', '0', '130', '20', '10', '', '', '2013-09-21', '0', '../images/stars5.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('94', '', '1', '46', '32', '0', 'TOM-风尚', '', 'http://post.lady.tom.com/', 'http://post.lady.tom.com/s/FD000AB33449.html', '文本链接', '非新闻源', 'TOM网', '其他地区', '0', '100', '50', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('95', '', '1', '46', '32', '46', '中国经济网-时尚', '', 'http://fashion.ce.cn/', 'http://fashion.ce.cn/', '可带网址', '非新闻源', '', '其他地区', '0', '150', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('96', '', '1', '46', '32', '0', '中国服装网', '', 'http://www.efu.com.cn/', 'http://www.efu.com.cn/', '可超链接', '谷歌新闻源', '', '湖北', '0', '170', '70', '10', '<p>法大使馆</p>', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('97', '', '1', '46', '32', '0', '品牌世家', '', 'http://biz.ppsj.com.cn/', 'http://biz.ppsj.com.cn/2009-8-22/1918862341.html', '可带网址', '百度新闻源', ' ', '其他地区', '0', '150', '70', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('98', '', '1', '46', '32', '0', '中国早教网', '', 'http://www.zaojiao.com/', 'http://www.zaojiao.com/', '可带网址', '非新闻源', '', '其他地区', '0', '160', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('99', '', '1', '46', '32', '0', '父母网', '', 'http://www.fumu.com/', 'http://www.fumu.com/', '可带网址', '非新闻源', '', '其他地区', '0', '160', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('100', '', '1', '46', '32', '0', '中国孕育网', '', 'http://www.5721.net/', 'http://www.5721.net/', '可带网址', '非新闻源', '', '其他地区', '0', '150', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('101', '', '1', '46', '32', '0', '瑞丽网-亲子', '', 'http://www.rayli.com.cn/baby/', 'http://www.rayli.com.cn/baby/', '可带网址', '非新闻源', '', '其他地区', '0', '180', '90', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('102', '', '1', '46', '32', '0', '亲亲宝贝网', '', 'http://www.qbaobei.com/', 'http://www.qbaobei.com/', '可带网址', '非新闻源', '', '其他地区', '0', '190', '90', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('103', '', '1', '46', '33', '0', 'TOM-体育', '', 'http://post.sports.tom.com/', 'http://post.sports.tom.com/s/520009516186.html', '文本链接', '百度新闻源', 'TOM网', '其他地区', '0', '100', '50', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('104', '', '1', '46', '33', '0', 'TOM-娱乐', '', 'http://post.yule.tom.com/', 'http://post.yule.tom.com/21001DBA705.html', '文本链接', '百度新闻源', 'TOM网', '其他地区', '0', '100', '50', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('105', '', '1', '46', '33', '0', '中国经济网-娱乐', '', 'http://ent.ce.cn/', 'http://ent.ce.cn/', '可带网址', '非新闻源', '中国经济网', '其他地区', '0', '150', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('106', '', '1', '46', '33', '0', '国家艺术网', '', 'http://www.zggjysw.com/', 'http://www.zggjysw.com/', '可带网址', '非新闻源', '', '其他地区', '0', '130', '60', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('107', '', '1', '46', '33', '0', '第一视频网', '', 'http://www.v1.cn/', 'http://www.v1.cn/', '可带网址', '非新闻源', '', '其他地区', '0', '150', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('108', '', '1', '46', '33', '0', '美悦时尚网', '', 'http://www.27.cn/', 'http://www.27.cn/', '可带网址', '非新闻源', '', '其他地区', '0', '180', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('109', '', '1', '46', '33', '0', '粉丝网', '', 'http://www.ifensi.com/', 'http://www.ifensi.com/', '文本链接', '百度新闻源', ' ', '其他地区', '0', '200', '80', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('110', '', '1', '46', '33', '0', '大旗网-娱乐', '', 'http://ent.daqi.com/', 'http://ent.daqi.com/', '文本链接', '非新闻源', '', '其他地区', '0', '170', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('111', '', '1', '46', '33', '0', '尚趣网', '', 'http://www.vsuch.com/', 'http://www.vsuch.com/', '文本链接', '非新闻源', '', '其他地区', '0', '170', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('112', '', '1', '46', '33', '0', '搜刮音乐-娱乐资讯', '', 'http://news.sogua.com/ent/', 'http://news.sogua.com/ent/', '文本链接', '非新闻源', '', '其他地区', '0', '180', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('113', '', '1', '46', '34', '0', '硅谷动力-游戏', '', 'http://games.enet.com.cn/', 'http://games.enet.com.cn/article/A1120130607025.html', '可带网址', '百度新闻源', ' ', '其他地区', '0', '230', '100', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('114', '', '1', '46', '34', '0', '766游戏网', '', 'http://news.766.com/', 'http://news.766.com/dl/2013-08-16/2107159.shtml', '可带网址', '百度新闻源', '', '其他地区', '0', '230', '120', '100', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('115', '', '1', '46', '34', '0', '5617网游网', '', 'http://news.5617.com/', 'http://news.5617.com/news/detail/1041513', '不能带网址', '非新闻源', '', '其他地区', '0', '200', '90', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('116', '', '1', '46', '34', '0', '265G游戏网', '', 'http://www.265g.com/', 'http://www.265g.com/news/gamenews/399081.html', '可带网址', '百度新闻源', ' ', '其他地区', '0', '230', '90', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('117', '', '1', '46', '34', '0', '光明网-游戏', '', 'http://game.gmw.cn/', 'http://game.gmw.cn/2013-08/17/content_8630130.htm', '可带网址', '非新闻源', '', '其他地区', '0', '280', '110', '70', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('118', '', '1', '46', '34', '0', '新手村', '', 'http://www.xinshoucun.com/', 'http://www.xinshoucun.com/', '可带网址', '非新闻源', '', '其他地区', '0', '150', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('119', '', '1', '46', '34', '0', '游戏王国', '', 'http://www.noyes.cn/', 'http://www.noyes.cn/', '可带网址', '非新闻源', '', '其他地区', '0', '150', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('120', '', '1', '46', '34', '0', '中关村游戏', '', 'http://game.zol.com.cn/', 'http://game.zol.com.cn/', '可带网址', '百度新闻源', ' ', '北京', '0', '220', '100', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('121', '', '1', '46', '34', '0', '游久网', '', 'http://news.uuu9.com/', 'http://news.uuu9.com/2013/201308/297877.shtml', '可带网址', '百度新闻源', '', '其他地区', '0', '230', '100', '90', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('122', '', '1', '46', '34', '0', '7yx游戏网', '', 'http://www.7yx.com.cn/', 'http://www.7yx.com.cn/html/2013/0815/1376552669.html', '不能带网址', '非新闻源', '', '其他地区', '0', '180', '100', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('123', '', '1', '46', '35', '0', '凤凰网-汽车', '', 'http://hefei.auto.ifeng.com/', 'http://hefei.auto.ifeng.com/shangqing/2013/0625/1896.html', '可带网址', '非新闻源', '凤凰网', '其他地区', '0', '150', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('124', '', '1', '46', '35', '0', 'TOM-汽车', '', 'http://auto.tom.com/', 'http://auto.tom.com/2013-05-14/0D5C/00676451.html', '文本链接', '百度新闻源', ' ', '其他地区', '0', '100', '50', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('125', '', '1', '46', '35', '0', '东方网-汽车', '', 'http://dateauto.eastday.com/', 'http://dateauto.eastday.com/', '文本链接', '非新闻源', '', '其他地区', '0', '180', '80', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('126', '', '1', '46', '35', '0', '千龙网-汽车', '', 'http://auto.qianlong.com/', 'http://auto.qianlong.com/', '文本链接', '非新闻源', '千龙网', '其他地区', '0', '150', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('127', '', '1', '46', '35', '0', '卡车之家', '', 'http://www.16888.com/', 'http://www.16888.com/', '文本链接', '百度新闻源', ' ', '北京', '0', '180', '80', '10', '', '', '2013-09-18', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('128', '', '1', '46', '35', '0', '都市汽车网', '', 'http://www.citymotors.com.cn/', 'http://www.citymotors.com.cn/', '文本链接', '非新闻源', '', '北京', '0', '180', '80', '30', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('129', '', '1', '46', '35', '0', '搜车吧', '', 'http://www.soche8.com/', 'http://www.soche8.com/', '文本链接', '非新闻源', '', '上海', '0', '170', '70', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('130', '', '1', '46', '35', '0', '汽车大世界', '', 'http://www.mycar168.com/', 'http://www.mycar168.com/', '可带网址', '非新闻源', '', '北京', '0', '280', '190', '140', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('131', '', '1', '46', '35', '0', '汽车殿堂', '', 'http://www.car136.com/', 'http://www.car136.com/', '文本链接', '非新闻源', '', '北京', '0', '30', '20', '10', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('132', '', '1', '46', '35', '0', '汽车江湖网', '', 'http://www.qc188.com/', 'http://www.qc188.com/', '文本链接', '非新闻源', '', '北京', '0', '180', '80', '60', '', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('133', 'vip02', '1', '46', '35', '0', '汽车江湖网', '', 'http://www.qc188.com/', 'http://www.qc188.com/', '可超链接', '非新闻源', '', '北京', '0', '120', '60', '30', '<p>合作</p>', '', '2013-10-20', '0', '../images/stars3.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('134', 'vip02', '0', '46', '30', '0', '哈哈镜', '', '后台', '发', '可超链接', '', ' ', '广东', '0', '100', '80', '50', '<p>test的</p>', '', '2013-09-27', '0', '../images/stars1.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('135', 'vip02', '1', '46', '34', '46', '游戏有戏', '', '发的噶大使馆', '发的三国杀', '文本链接', '非新闻源', '', '广东', '0', '99', '88', '55', '<p>放大师傅</p>', '', '2013-10-04', '0', '../images/stars5.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('136', 'vip02', '0', '46', '36', '0', '是事实还是', '', '发撒的', '发', '可超链接', '网页收录', '中国广播网', '上海', '0', '80', '70', '60', '<p>发生大幅<br/></p>', '', '2013-09-27', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('137', 'vip02', '1', '46', '30', '46', '汽车江湖网', '', 'http://www.qc188.com/', 'http://life.lyd.com.cn/system/2013/01/21/010223640.shtml', '可带网址', '非新闻源', '', '北京', '0', '80', '60', '40', '<p>312312431414</p>', '', '2013-09-29', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('138', 'vip02', '0', '46', '30', '46', 'IT科技信息网', '', 'http://www.qc188.com/', 'http://www.qc188.com/', '文本链接', '', ' ', '北京', '0', '0', '0', '10', '', '', '2013-09-28', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('139', 'vip02', '1', '46', '42', '0', 'IT科技信息网', '', 'http://www.qc188.com/', 'http://www.qc188.com/', '可超链接', '非新闻源', '', '北京', '0', '50', '30', '10', '', '', '2013-10-04', '0', '../images/stars2.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('140', 'vip02', '1', '46', '41', '0', '中国新闻日报网', '', 'http://life.lyd.com.cn/', 'http://www.ccd.com.cn/', '可超链接', '非新闻源', '', '北京', '0', '200', '150', '120', '推荐', '', '2013-10-04', '0', '../images/stars3.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('142', '', '0', '46', '30', '0', 'ccc12312', '', 'http://www.qc188.com/', 'http://www.qc188.com/', ' ', '非新闻源', ' ', '北京', '0', '120', '80', '50', '', '', '2013-10-04', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('143', '', '0', '46', '30', '46', 'bbb1231231', '', 'http://www.qc188.com/', 'http://www.qc188.com/', '可超链接', '非新闻源', ' ', '北京', '0', '200', '100', '88', '', '', '2013-10-04', '0', '../images/stars2.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('144', 'vip02', '0', '46', '38', '0', '中国健康网', '', 'http://www.qc188.com/', 'http://www.qc188.com/', '可带网址', '非新闻源', ' ', '北京', '0', '0', '0', '38', '', '', '2013-10-04', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('145', '', '0', '46', '30', '0', 'd123123', '', 'http://life.lyd.com.cn/', 'http://www.qc188.com/', '不能带连接', '非新闻源', ' ', '北京', '0', '80', '60', '30', '', '', '2013-10-04', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('147', '', '1', '47', '46', '0', '新浪微博大号01', '', 'http://www.sina.com.cn/', '', '', '非新闻源', '新浪网', '北京', '0', '160', '100', '50', '', '', '2013-10-13', '0', '../images/stars3.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('148', '', '1', '47', '46', '0', '新浪微博大号02', '', 'http://www.sina.com.cn/', '', '', '非新闻源', '新浪网', '北京', '0', '200', '120', '80', '', '', '2013-10-13', '0', '../images/stars4.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('149', '', '1', '47', '46', '0', '新浪微博大号03', '', 'http://www.sina.com.cn/', '', '', '非新闻源', '新浪网', '北京', '0', '170', '110', '70', '', '', '2013-10-13', '0', '../images/stars5.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('150', '', '1', '47', '47', '0', '腾讯微信大号01', '', 'http://www.qq.com/', '', '', '非新闻源', '腾讯网', '北京', '0', '200', '120', '80', '', '', '2013-10-13', '0', '../images/stars3.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('151', '', '1', '47', '47', '0', '腾讯微信大号02', '', 'http://www.qq.com/', '', '', '非新闻源', '腾讯网', '北京', '0', '180', '120', '70', '', '', '2013-10-13', '0', '../images/stars2.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('152', '', '1', '47', '47', '49', '腾讯微信大号03', '', 'http://www.qq.com/', 'http://www.qq.com/', '', '非新闻源', '腾讯网', '北京', '0', '170', '100', '50', '', '', '2013-10-13', '0', '../images/stars4.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('153', '', '1', '48', '48', '0', '新浪大社区', '', 'http://www.sina.com.cn/', '', '', '非新闻源', '新浪网', '北京', '0', '120', '80', '50', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('154', '', '1', '48', '49', '0', '新浪小社区', '', 'http://www.sina.com.cn/', '', '', '非新闻源', '新浪网', '北京', '0', '240', '120', '80', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('155', '', '1', '48', '48', '0', '腾讯大社区', '', 'http://www.qq.com/', '', '', '非新闻源', '腾讯网', '北京', '0', '180', '130', '70', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('156', '', '1', '48', '49', '48', '腾讯小社区', '', 'http://www.qq.com/', 'http://www.qq.com/', '', '非新闻源', '腾讯网', '北京', '0', '100', '60', '30', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('157', '', '1', '49', '50', '0', '新浪高级会员', '', 'http://www.sina.com.cn/', '', '', '非新闻源', '新浪网', '北京', '0', '300', '200', '100', '', '', '2013-10-14', '0', '../images/stars5.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('158', '', '1', '49', '51', '0', '新浪普通会员', '', 'http://www.sina.com.cn/', '', '', '非新闻源', '新浪网', '北京', '0', '150', '100', '50', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('159', '', '1', '49', '50', '0', '腾讯高级会员', '', 'http://www.qq.com/', '', ' ', '非新闻源', '腾讯网', '北京', '0', '260', '190', '120', '', '', '2013-10-14', '0', '../images/stars2.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('160', '', '1', '49', '51', '0', '腾讯普通会员', '', 'http://www.qq.com/', 'http://www.qq.com/', '', '非新闻源', '腾讯网', '北京', '0', '220', '150', '90', '', '', '2013-10-14', '0', '../images/stars2.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('161', '', '1', '50', '52', '0', '新浪高级水军', '', 'http://www.sina.com.cn/', '', ' ', '非新闻源', '新浪网', '北京', '0', '430', '300', '230', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('162', '', '1', '50', '53', '0', '新浪普通水军', '', 'http://www.sina.com.cn/', '', ' ', '非新闻源', '新浪网', '北京', '0', '250', '180', '100', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('163', '', '1', '50', '52', '0', '腾讯高级水军', '', 'http://www.qq.com/', '', ' ', '非新闻源', '腾讯网', '北京', '0', '400', '320', '238', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('164', '', '1', '50', '53', '0', '腾讯普通水军', '', 'http://www.qq.com/', 'http://www.qq.com/', '', '非新闻源', '腾讯网', '北京', '0', '180', '120', '80', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('165', '', '1', '51', '54', '0', '新浪大门户', '', 'http://www.sina.com.cn/', '', ' ', '非新闻源', '新浪网', '北京', '0', '430', '380', '300', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('166', '', '1', '51', '55', '0', '新浪小门户', '', 'http://www.sina.com.cn/', '', ' ', '非新闻源', '新浪网', '北京', '0', '300', '200', '120', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('167', '', '1', '51', '54', '0', '腾讯大门户', '', 'http://www.qq.com/', '', ' ', '非新闻源', '腾讯网', '北京', '0', '510', '420', '380', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('168', '', '1', '51', '55', '0', '腾讯小门户', '', 'http://www.qq.com/', 'http://www.qq.com/', '', '非新闻源', '腾讯网', '北京', '0', '240', '150', '90', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('169', '', '1', '52', '56', '0', '新浪优惠活动', '', 'http://www.sina.com.cn/', '', ' ', '非新闻源', '新浪网', '北京', '0', '180', '120', '100', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('170', '', '1', '52', '57', '0', '新浪促销活动', '', 'http://www.sina.com.cn/', '', ' ', '非新闻源', '新浪网', '北京', '0', '110', '80', '50', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('171', '', '1', '52', '56', '0', '腾讯优惠活动', '', 'http://www.qq.com/', '', ' ', '非新闻源', '腾讯网', '北京', '0', '230', '112', '90', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('172', '', '1', '52', '57', '0', '腾讯促销活动', '', 'http://www.qq.com/', '', '', '非新闻源', '腾讯网', '北京', '0', '130', '83', '43', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('173', '', '1', '53', '58', '0', '腾讯QQ群发', '', 'http://www.qq.com/', '', '', '非新闻源', '腾讯网', '北京', '0', '40', '30', '20', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('174', '', '1', '53', '59', '0', '腾讯微博群发', '', 'http://www.qq.com/', '', '', '非新闻源', '腾讯网', '北京', '0', '80', '60', '50', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('175', '', '1', '53', '59', '0', '新浪微博群发', '', 'http://www.sina.com.cn/', 'http://www.sina.com.cn/', '', '非新闻源', '新浪网', '北京', '0', '200', '100', '80', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('176', '', '1', '54', '60', '0', '新浪高级应用开发', '', 'http://www.sina.com.cn/', '', '', '非新闻源', '新浪网', '北京', '0', '130', '80', '30', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('177', '', '1', '54', '61', '0', '新浪普通应用开发', '', 'http://www.sina.com.cn/', '', ' ', '非新闻源', '新浪网', '北京', '0', '450', '280', '120', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('178', '', '1', '54', '60', '0', '腾讯高级应用开发', '', 'http://www.qq.com/', '', ' ', '非新闻源', '腾讯网', '北京', '0', '400', '230', '150', '', '', '2013-10-14', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('179', '', '1', '54', '61', '0', '腾讯普通应用开发', '', 'http://www.qq.com/', '', '', '非新闻源', '腾讯网', '北京', '0', '500', '200', '120', '', '', '2014-04-04', '0', '../images/stars.gif', '0', '0', '0', '没有入口');
INSERT INTO `media_info` VALUES ('180', 'vip02', '0', '47', '46', '0', '腾讯微信大号03', '', 'http://www.qq.com/', 'http://www.qq.com/', ' ', '非新闻源', '腾讯网', '北京', '10000', '0', '0', '100', '', '', '2013-10-20', '0', '../images/stars.gif', '0', '0', '0', '没有入口');

-- ----------------------------
-- Table structure for `media_small`
-- ----------------------------
DROP TABLE IF EXISTS `media_small`;
CREATE TABLE `media_small` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigClass` varchar(255) DEFAULT NULL,
  `enBigClass` varchar(255) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of media_small
-- ----------------------------
INSERT INTO `media_small` VALUES ('46', '10元秒杀', '', '1', '2013-10-03');
INSERT INTO `media_small` VALUES ('47', '20元秒杀', '', '2', '2013-10-04');
INSERT INTO `media_small` VALUES ('48', '30元秒杀', '', '3', '2013-10-04');
INSERT INTO `media_small` VALUES ('49', '100元秒杀', '', '4', '2013-10-04');

-- ----------------------------
-- Table structure for `menhuhz_info`
-- ----------------------------
DROP TABLE IF EXISTS `menhuhz_info`;
CREATE TABLE `menhuhz_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `weburl` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of menhuhz_info
-- ----------------------------
INSERT INTO `menhuhz_info` VALUES ('129', 'vip01', '', '166', '2013101482138', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '新浪小门户', '', '200', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '有敏感性内容，不允许发。', '', '2013-10-14 07:31:09', '2013-10-14 07:41:18', '3', '0', '0');
INSERT INTO `menhuhz_info` VALUES ('130', 'vip01', '', '168', '2013101482138', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '腾讯小门户', 'http://www.qq.com/', '150', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '', '', '2013-10-14 07:31:09', '2013-10-14 07:40:12', '2', '1', '0');

-- ----------------------------
-- Table structure for `menhu_class`
-- ----------------------------
DROP TABLE IF EXISTS `menhu_class`;
CREATE TABLE `menhu_class` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigClass` varchar(255) DEFAULT NULL,
  `enBigClass` varchar(255) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of menhu_class
-- ----------------------------
INSERT INTO `menhu_class` VALUES ('30', '新浪网', '', '1', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('31', '搜狐网', '', '2', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('32', '腾讯网', '', '3', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('33', '网易网', '', '4', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('34', '凤凰网', '', '5', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('35', '中华网', '', '6', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('36', '人民网', '', '7', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('37', '央视网', '', '8', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('38', '千龙网', '', '9', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('39', '新华网', '', '10', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('40', '中国网', '', '11', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('41', '慧聪网', '', '12', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('42', 'TOM网', '', '13', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('43', '21CN网', '', '14', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('44', '中国日报网', '', '15', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('45', '中国经济网', '', '16', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('46', '中国新闻网', '', '17', '2013-09-18');
INSERT INTO `menhu_class` VALUES ('47', '中国广播网', '', '18', '2013-09-18');

-- ----------------------------
-- Table structure for `moon`
-- ----------------------------
DROP TABLE IF EXISTS `moon`;
CREATE TABLE `moon` (
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moon
-- ----------------------------

-- ----------------------------
-- Table structure for `nav_class`
-- ----------------------------
DROP TABLE IF EXISTS `nav_class`;
CREATE TABLE `nav_class` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigClass` varchar(255) DEFAULT NULL,
  `enBigClass` varchar(255) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of nav_class
-- ----------------------------
INSERT INTO `nav_class` VALUES ('46', '软文发布', '', '1', '2014-02-12');
INSERT INTO `nav_class` VALUES ('47', '微营销', '', '2', '2013-10-04');
INSERT INTO `nav_class` VALUES ('48', '社区', '', '3', '2013-10-04');
INSERT INTO `nav_class` VALUES ('49', '会员', '', '4', '2013-10-04');
INSERT INTO `nav_class` VALUES ('50', '水军', '', '5', '2013-10-04');
INSERT INTO `nav_class` VALUES ('51', '门户合作', '', '6', '2013-10-04');
INSERT INTO `nav_class` VALUES ('52', '活动', '', '7', '2013-10-04');
INSERT INTO `nav_class` VALUES ('53', '群发', '', '8', '2013-10-04');
INSERT INTO `nav_class` VALUES ('54', '应用开发', '', '9', '2013-10-04');

-- ----------------------------
-- Table structure for `news_class`
-- ----------------------------
DROP TABLE IF EXISTS `news_class`;
CREATE TABLE `news_class` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigClass` varchar(255) DEFAULT NULL,
  `enBigClass` varchar(255) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of news_class
-- ----------------------------
INSERT INTO `news_class` VALUES ('28', '新闻中心', '', '1', '2013-09-18');
INSERT INTO `news_class` VALUES ('29', '发稿帮助', '', '2', '2013-09-18');

-- ----------------------------
-- Table structure for `news_info`
-- ----------------------------
DROP TABLE IF EXISTS `news_info`;
CREATE TABLE `news_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `title` text,
  `entitle` text,
  `nd` int(11) DEFAULT '1',
  `content` text,
  `encontent` text,
  `data` varchar(255) DEFAULT '',
  `tj` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of news_info
-- ----------------------------
INSERT INTO `news_info` VALUES ('67', '28', '软文有什么用？', '软文街', '1', '　　1. 让用户更容易接受广告 \r\n<P style=\"TEXT-ALIGN: left; TEXT-INDENT: 2em\">现在广告信息太多太杂，消费者都很理性，不喜欢硬性推销的广告，他们愿意自己去寻找自己所需要的信息。所以软文不似硬性广告那样会遭到用户抵触，能让客户放下心中芥蒂，更容易去接受。</P>\r\n<P style=\"TEXT-ALIGN: left; TEXT-INDENT: 2em\">2. 给用户带去良好的阅读体验</P>\r\n<P style=\"TEXT-ALIGN: left; TEXT-INDENT: 2em\">优秀的软文多半都具有权威性、专业性或则趣味性、娱乐性，能给用户带去良好的阅读享受，叫用户在读软文时忘了广告的存在，全身心地投入这种享受里。因此更易获得用户的喜爱，获得良好的口碑。</P>\r\n<P style=\"TEXT-ALIGN: left; TEXT-INDENT: 2em\">3. 成本费用低，承载信息量大，效果好</P>\r\n<P style=\"TEXT-ALIGN: left; TEXT-INDENT: 2em\">普通的广告投入费用很高，而且所能承载的信息量十分有限，尤其是纸张媒体上的图片广告，有些甚至只有豆腐干大小，受版面和字数限制，无法将广告信息完整地表达清楚。而软文广告投入费用低，而且所能承载的信息量大，相应的投资回报也高得多。</P>', '', '2013-09-18', '0');
INSERT INTO `news_info` VALUES ('68', '28', '我们能发布哪些媒体', '软文街', '1', '<P>　　很多企业在软文发布上，很纠结网络媒体该如何选择，软文街媒体库将国内网站进行横向和纵向的分类划分。方便企业进行媒体的选择。</P>\r\n<P>　　更多最新资源请联系客服。</P>', '', '2013-09-18', '0');
INSERT INTO `news_info` VALUES ('69', '28', '企业如何进行软文营销', '软文街', '1', '<P>　　软文从2009年成就\"脑白金\"至今已经疯狂了5年，2009-2011年也是第一个软文高潮，各企业开始重视软文和积极模仿；从2012年\"清华清茶\" 的整版模式开始进入另一个高潮，专业软文写手和团队开始浮出水面。但是从2013年开始，软文的辉煌时期已过，进入了平稳期，软文的媒体也开始上涨，几乎与硬广告持平，使软文被迫开始创新。</P>\r\n<P>　　平面软文可开发潜力有限，随着网络和娱乐文化的兴盛，未来软文的发展方向是\"潜藏式广告\"??把软文的功夫运用到营销每个环节，类似\"大腕\"和\"天下无贼\"式的软性营销将是中国企业的必由之路。&nbsp; </P>\r\n<P>　　软文街为您提供全方位的软文服务，具体可加上我们企业QQ进行洽谈！</P>', '', '2013-09-18', '0');
INSERT INTO `news_info` VALUES ('71', '29', '关于软文发布后的有效期时间说明', '软文街', '1', '<p style=\"text-align:left;text-indent:2em;\">1、99%情况下，在本平台发布的稿件是永久保存在新闻网上的；</p>\r\n<p style=\"text-align:left;text-indent:2em;\">2、如果稿件存在违法、负面、涉嫌虚假宣传、政治敏感内容及链接，因上级检查被新闻媒体编辑人员删稿的，本平台不予退款；</p>\r\n<p style=\"text-align:left;text-indent:2em;\">3、如果稿件内容及链接正规，但被新闻媒体编辑删稿的，本平台承诺如下：</p>\r\n<p style=\"text-align:left;text-indent:2em;\">（1）6个月内删稿的，可申请重发，重发不了可100%全额退款；</p>\r\n<p style=\"text-align:left;text-indent:2em;\">（2）6个月后删稿的，我们可协助与媒体沟通尽量恢复，但不再保证恢复或退款；</p>\r\n<p style=\"text-align:left;text-indent:2em;\">谢谢支持与理解！</p>', '', '2013-09-28', '0');
INSERT INTO `news_info` VALUES ('72', '29', '软文发布教程（一）', '软文街', '1', '<p>　　1、咨询在线客服，获取最新的开户充值优惠活动，让您</p>\r\n<p>　　2、用户自行在<a href=\"http://www.sina.com.cn/reg.php\">http://www.sina.com.cn/reg.php</a> 或者联系客服代开账号，拥有属于您的核心代理商账户。</p>\r\n<p>　　3、用户可在后台<span style=\"color:#0070c0;\">【在线充值】</span>页面使用包括支付宝、财付通、或网银转账等方式进行充值，如有困难请联系在线客服为您解答。</p>\r\n<p>　　4、用户在后台<span style=\"color:#0070c0;\">【软文发布】</span>提交稿件，客服会迅速将您的稿件审核后提交到编辑部门，发布成功您在后台就能看到文字链接地址了。</p>\r\n<p>　　5、没有稿件怎么办？请注意<span style=\"color:#0070c0;\">【代写文章】</span>，用户录入自己网站相关资料和需要类型的稿件后，客服会会立刻将您的要求整理好发送到代写部，写完后您在后台就能查到文章了，如果觉得稿件不是很满意，请在后台<span style=\"color:#0070c0;\">【提交工单】</span>，输入相应的ID和不满意之处，客服会立刻给您回消息。</p>', '', '2013-10-19', '0');

-- ----------------------------
-- Table structure for `page_seo`
-- ----------------------------
DROP TABLE IF EXISTS `page_seo`;
CREATE TABLE `page_seo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigClass` varchar(255) DEFAULT NULL,
  `enBigClass` varchar(255) DEFAULT NULL,
  `Title` text,
  `enTitle` text,
  `KeyWords` text,
  `enKeyWords` text,
  `Descr` text,
  `enDescr` text,
  `paixu` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of page_seo
-- ----------------------------
INSERT INTO `page_seo` VALUES ('1', '会员注册', 'reg', '会员注册', '', '会员注册', '', '会员注册', '', '1');
INSERT INTO `page_seo` VALUES ('2', '会员登录', 'login', '会员登录', '', '会员登录', '', '会员登录', '', '2');
INSERT INTO `page_seo` VALUES ('3', '新闻中心', 'news', '新闻中心', '', '新闻中心', '', '新闻中心', '', '3');
INSERT INTO `page_seo` VALUES ('4', '合作媒体', 'media', '合作媒体', '', '合作媒体', '', '合作媒体', '', '4');
INSERT INTO `page_seo` VALUES ('5', '软文案例', 'anli', '软文案例', '', '软文案例', '', '软文案例', '', '5');
INSERT INTO `page_seo` VALUES ('6', '软文价格', 'price', '软文价格', '', '软文价格', '', '软文价格', '', '6');
INSERT INTO `page_seo` VALUES ('7', '软文套餐', 'taocan', '软文套餐', '', '软文套餐', '', '软文套餐', '', '7');
INSERT INTO `page_seo` VALUES ('8', '软文代写', 'daixie', '软文代写', '', '软文代写', '', '软文代写', '', '8');
INSERT INTO `page_seo` VALUES ('9', '联系我们', 'contact', '联系我们', '', '联系我们', '', '联系我们', '', '9');

-- ----------------------------
-- Table structure for `piclink_class`
-- ----------------------------
DROP TABLE IF EXISTS `piclink_class`;
CREATE TABLE `piclink_class` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigClass` varchar(255) DEFAULT NULL,
  `enBigClass` varchar(255) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `propic` varchar(255) DEFAULT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of piclink_class
-- ----------------------------
INSERT INTO `piclink_class` VALUES ('38', '火一五信息科技', '', '1', '', '', 'http://www.huo15.com/');

-- ----------------------------
-- Table structure for `qunfa_info`
-- ----------------------------
DROP TABLE IF EXISTS `qunfa_info`;
CREATE TABLE `qunfa_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `weburl` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of qunfa_info
-- ----------------------------
INSERT INTO `qunfa_info` VALUES ('129', 'vip01', '', '175', '2013101488140', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '新浪微博群发', '', '100', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '', '', '2013-10-14 08:14:33', '', '0', '0', '0');
INSERT INTO `qunfa_info` VALUES ('130', 'vip01', '', '174', '2013101488140', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '腾讯微博群发', 'http://www.sina.com.cn/', '60', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '', '', '2013-10-14 08:14:33', '2013-10-14 08:27:28', '2', '1', '0');
INSERT INTO `qunfa_info` VALUES ('131', 'vip01', '', '173', '2013101488140', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '腾讯QQ群发', '', '30', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '腾讯封锁，群发不了。', '', '2013-10-14 08:14:33', '2013-10-14 08:29:04', '3', '0', '0');

-- ----------------------------
-- Table structure for `ruanwen_info`
-- ----------------------------
DROP TABLE IF EXISTS `ruanwen_info`;
CREATE TABLE `ruanwen_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `weburl` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ruanwen_info
-- ----------------------------
INSERT INTO `ruanwen_info` VALUES ('85', 'vip01', '0', '0', '2013092127552', '穿“哈特威”衬衫的男人', '品牌世家', 'http://www.sina.com.cn', '70', '<p>　　美国人最后终于开始体会到买一套好的西装而被穿一件大量生产的廉价衬衫毁坏了整个效果，实在是一件愚蠢的事。因此在这个阶层的人群中，“哈特威</p><p>　　”衬衫就开始流行了。</p><p><br/></p><p>　　首先，“哈特威”衬衫耐穿性极长??这是多年的事了。其次，因为“哈特威”</p><p>　　剪裁??低斜度及“为顾客定制的”??衣领，使得您看起来更年轻、更高贵。</p><p>　　整件衬衣不惜工本的剪裁，因而使您更为“舒适”。</p><p><br/></p><p>　　下摆很长，可深入您的裤腰。钮扣是用珍珠母做成??非常大，也非常有男子气</p><p>　　。甚至缝纫上也存在着一种南北战争前的高雅。</p><p><br/></p><p>　　最重要的是“哈特威”使用从世界各角落进口的最有名的布匹来缝制他们的衬衫</p><p>　　??从英国来的棉毛混纺的斜纹布，从苏格兰奥斯特拉德地方来的毛织波纹绸，</p><p>　　从英属西印度群岛来的海岛棉，从印度来的手织绸，从英格兰曼彻斯特来的宽幅</p><p>　　细毛布，从巴黎来的亚麻细布，在穿了这么完美风格的衬衫，会使您得到众多的</p><p>　　内心满足。</p><p><br/></p><p>　　“哈特威”衬衫是缅因州的小城渥特威的一个小公司的虔诚的手艺人所缝制的。</p><p>　　他们老老小小的在那里工作了已整整114年。</p><p><br/></p><p>　　您如果想在离您最近的店家买到“哈特威”衬衫，请写张明信片到“G?F?哈特</p><p>　　威”缅因州?渥特威城，即复。</p>', '不允许发敏感性文章。', '', '2013-09-21 04:19:48', '', '3', '1', '0');
INSERT INTO `ruanwen_info` VALUES ('86', 'vip01', '0', '0', '2013092127552', '穿“哈特威”衬衫的男人', '凤凰网-时尚', 'http://www.hongmuchuan.com', '20', '<p>　　美国人最后终于开始体会到买一套好的西装而被穿一件大量生产的廉价衬衫毁坏了整个效果，实在是一件愚蠢的事。因此在这个阶层的人群中，“哈特威</p><p>　　”衬衫就开始流行了。</p><p><br/></p><p>　　首先，“哈特威”衬衫耐穿性极长??这是多年的事了。其次，因为“哈特威”</p><p>　　剪裁??低斜度及“为顾客定制的”??衣领，使得您看起来更年轻、更高贵。</p><p>　　整件衬衣不惜工本的剪裁，因而使您更为“舒适”。</p><p><br/></p><p>　　下摆很长，可深入您的裤腰。钮扣是用珍珠母做成??非常大，也非常有男子气</p><p>　　。甚至缝纫上也存在着一种南北战争前的高雅。</p><p><br/></p><p>　　最重要的是“哈特威”使用从世界各角落进口的最有名的布匹来缝制他们的衬衫</p><p>　　??从英国来的棉毛混纺的斜纹布，从苏格兰奥斯特拉德地方来的毛织波纹绸，</p><p>　　从英属西印度群岛来的海岛棉，从印度来的手织绸，从英格兰曼彻斯特来的宽幅</p><p>　　细毛布，从巴黎来的亚麻细布，在穿了这么完美风格的衬衫，会使您得到众多的</p><p>　　内心满足。</p><p><br/></p><p>　　“哈特威”衬衫是缅因州的小城渥特威的一个小公司的虔诚的手艺人所缝制的。</p><p>　　他们老老小小的在那里工作了已整整114年。</p><p><br/></p><p>　　您如果想在离您最近的店家买到“哈特威”衬衫，请写张明信片到“G?F?哈特</p><p>　　威”缅因州?渥特威城，即复。</p>', '', '', '2013-09-21 04:19:48', '2013-09-25 08:57:57', '2', '1', '0');
INSERT INTO `ruanwen_info` VALUES ('87', 'admin', '0', '0', '2013092259898', '123123123', '中国网-民企', '', '50', '<p><br/>123123123123132</p>', '', '', '2013-09-22 10:19:32', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('88', 'admin', '0', '0', '2013092226964', '12313123', '中工网', '', '50', '<p><br/>123123123123123123123</p>', '', '', '2013-09-22 10:20:36', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('89', 'admin', '0', '0', '2013092226964', '12313123', '中国网-民企', '', '50', '<p><br/>123123123123123123123</p>', '', '', '2013-09-22 10:20:36', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('90', 'admin', '0', '0', '2013092226964', '12313123', '中国建筑装饰网', '', '70', '<p><br/>123123123123123123123</p>', '', '', '2013-09-22 10:20:36', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('91', 'admin', '0', '0', '2013092226964', '12313123', '地宝网', '', '80', '<p><br/>123123123123123123123</p>', '', '', '2013-09-22 10:20:36', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('92', 'admin', '0', '0', '2013092226964', '12313123', '中国家电网', '', '80', '<p><br/>123123123123123123123000</p>', '', '', '2013-09-22 10:20:36', '', '1', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('93', 'vip01', '0', '0', '2013092579175', '穿“哈特威”衬衫的男人', '汽车江湖网', '', '60', '<p>　　美国人最后终于开始体会到买一套好的西装而被穿一件大量生产的廉价衬衫毁坏了整个效果，实在是一件愚蠢的事。因此在这个阶层的人群中，“哈特威</p><p>　　”衬衫就开始流行了。</p><p><br/></p><p>　　首先，“哈特威”衬衫耐穿性极长??这是多年的事了。其次，因为“哈特威”</p><p>　　剪裁??低斜度及“为顾客定制的”??衣领，使得您看起来更年轻、更高贵。</p><p>　　整件衬衣不惜工本的剪裁，因而使您更为“舒适”。</p><p><br/></p><p>　　下摆很长，可深入您的裤腰。钮扣是用珍珠母做成??非常大，也非常有男子气</p><p>　　。甚至缝纫上也存在着一种南北战争前的高雅。</p><p><br/></p><p>　　最重要的是“哈特威”使用从世界各角落进口的最有名的布匹来缝制他们的衬衫</p><p>　　??从英国来的棉毛混纺的斜纹布，从苏格兰奥斯特拉德地方来的毛织波纹绸，</p><p>　　从英属西印度群岛来的海岛棉，从印度来的手织绸，从英格兰曼彻斯特来的宽幅</p><p>　　细毛布，从巴黎来的亚麻细布，在穿了这么完美风格的衬衫，会使您得到众多的</p><p>　　内心满足。</p><p><br/></p><p>　　“哈特威”衬衫是缅因州的小城渥特威的一个小公司的虔诚的手艺人所缝制的。</p><p>　　他们老老小小的在那里工作了已整整114年。</p><p><br/></p><p>　　您如果想在离您最近的店家买到“哈特威”衬衫，请写张明信片到“G?F?哈特</p><p>　　威”缅因州?渥特威城，即复。</p>', '', '', '2013-09-25 10:13:37', '', '0', '0', '1');
INSERT INTO `ruanwen_info` VALUES ('94', 'vip01', '0', '0', '2013092631305', '穿“哈特威”衬衫的男人', '汽车江湖网', '', '60', '<p>　　美国人最后终于开始体会到买一套好的西装而被穿一件大量生产的廉价衬衫毁坏了整个效果，实在是一件愚蠢的事。因此在这个阶层的人群中，“哈特威</p><p>　　”衬衫就开始流行了。</p><p><br/></p><p>　　首先，“哈特威”衬衫耐穿性极长??这是多年的事了。其次，因为“哈特威”</p><p>　　剪裁??低斜度及“为顾客定制的”??衣领，使得您看起来更年轻、更高贵。</p><p>　　整件衬衣不惜工本的剪裁，因而使您更为“舒适”。</p><p><br/></p><p>　　下摆很长，可深入您的裤腰。钮扣是用珍珠母做成??非常大，也非常有男子气</p><p>　　。甚至缝纫上也存在着一种南北战争前的高雅。</p><p><br/></p><p>　　最重要的是“哈特威”使用从世界各角落进口的最有名的布匹来缝制他们的衬衫</p><p>　　??从英国来的棉毛混纺的斜纹布，从苏格兰奥斯特拉德地方来的毛织波纹绸，</p><p>　　从英属西印度群岛来的海岛棉，从印度来的手织绸，从英格兰曼彻斯特来的宽幅</p><p>　　细毛布，从巴黎来的亚麻细布，在穿了这么完美风格的衬衫，会使您得到众多的</p><p>　　内心满足。</p><p><br/></p><p>　　“哈特威”衬衫是缅因州的小城渥特威的一个小公司的虔诚的手艺人所缝制的。</p><p>　　他们老老小小的在那里工作了已整整114年。</p><p><br/></p><p>　　您如果想在离您最近的店家买到“哈特威”衬衫，请写张明信片到“G?F?哈特</p><p>　　威”缅因州?渥特威城，即复。</p>', '', '', '2013-09-26 02:16:24', '', '1', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('95', 'vip01', '0', '0', '2013092771014', '穿“哈特威”衬衫的男人', '中国青年网-生活', '', '70', '<p>　　美国人最后终于开始体会到买一套好的西装而被穿一件大量生产的廉价衬衫毁坏了整个效果，实在是一件愚蠢的事。因此在这个阶层的人群中，“哈特威</p><p>　　”衬衫就开始流行了。</p><p><br/></p><p>　　首先，“哈特威”衬衫耐穿性极长??这是多年的事了。其次，因为“哈特威”</p><p>　　剪裁??低斜度及“为顾客定制的”??衣领，使得您看起来更年轻、更高贵。</p><p>　　整件衬衣不惜工本的剪裁，因而使您更为“舒适”。</p><p><br/></p><p>　　下摆很长，可深入您的裤腰。钮扣是用珍珠母做成??非常大，也非常有男子气</p><p>　　。甚至缝纫上也存在着一种南北战争前的高雅。</p><p><br/></p><p>　　最重要的是“哈特威”使用从世界各角落进口的最有名的布匹来缝制他们的衬衫</p><p>　　??从英国来的棉毛混纺的斜纹布，从苏格兰奥斯特拉德地方来的毛织波纹绸，</p><p>　　从英属西印度群岛来的海岛棉，从印度来的手织绸，从英格兰曼彻斯特来的宽幅</p><p>　　细毛布，从巴黎来的亚麻细布，在穿了这么完美风格的衬衫，会使您得到众多的</p><p>　　内心满足。</p><p><br/></p><p>　　“哈特威”衬衫是缅因州的小城渥特威的一个小公司的虔诚的手艺人所缝制的。</p><p>　　他们老老小小的在那里工作了已整整114年。</p><p><br/></p><p>　　您如果想在离您最近的店家买到“哈特威”衬衫，请写张明信片到“G?F?哈特</p><p>　　威”缅因州?渥特威城，即复。</p>', '', '', '2013-09-27 04:41:01', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('96', 'vip01', '0', '0', '2013092760071', 'test', '中青在线', '', '80', '<p>飞阿斯蒂芬</p>', '', '', '2013-09-27 04:42:05', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('97', 'vip01', '0', '0', '2013092760071', 'test', '中国网-民企', '', '50', '<p>飞阿斯蒂芬</p>', '', '', '2013-09-27 04:42:05', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('98', 'vip02', '0', '0', '2013092773966', '放大师傅', '中国青年网-生活', 'http://www.sina.com.cn', '70', '<p>发挥个人啊</p>', '不允许发敏感信息。', '', '2013-09-27 05:02:00', '', '3', '1', '0');
INSERT INTO `ruanwen_info` VALUES ('99', 'vip02', '0', '0', '2013092773966', '放大师傅', '中国网-民企', '', '50', '<p>发挥个人啊！超乎正常人的水准</p>', '', '', '2013-09-27 05:02:00', '', '0', '0', '1');
INSERT INTO `ruanwen_info` VALUES ('100', 'vip04', '0', '0', '2013092791343', 'fabuyit', '中国经济网-时尚', 'http://www.sina.com.cn', '70', '<p>fdsf&nbsp;</p>', '', '', '2013-09-27 05:10:55', '', '2', '1', '0');
INSERT INTO `ruanwen_info` VALUES ('101', 'vip04', '0', '0', '2013092791343', 'fabuyit', '凤凰网-时尚', '', '20', '<p>fdsf&nbsp;</p>', '', '', '2013-09-27 05:10:55', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('102', 'vip04', '0', '0', '2013092719345', 'fabuyit', 'TOM-风尚', '', '50', '<p>fdsf&nbsp;</p>', '', '', '2013-09-27 05:11:41', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('103', 'admin', '0', '0', '2013092861583', '穿“哈特威”衬衫的男人', '中工网', '', '10', '　　美国人最后终于开始体会到买一套好的西装而被穿一件大量生产的廉价衬衫毁坏了整个效果，实在是一件愚蠢的事。因此在这个阶层的人群中，“哈特威”衬衫就开始流行了。\r\n\r\n\r\n\r\n\r\n　　首先，“哈特威”衬衫耐穿性极长??这是多年的事了。其次，因为“哈特威”剪裁低斜度及“为顾客定制的”??衣领，使得您看起来更年轻、更高贵。\r\n\r\n　　整件衬衣不惜工本的剪裁，因而使您更为“舒适”。\r\n\r\n\r\n\r\n\r\n　　下摆很长，可深入您的裤腰。钮扣是用珍珠母做成??非常大，也非常有男子气。甚至缝纫上也存在着一种南北战争前的高雅。\r\n\r\n\r\n\r\n\r\n　　最重要的是“哈特威”使用从世界各角落进口的最有名的布匹来缝制他们的衬衫从英国来的棉毛混纺的斜纹布，从苏格兰奥斯特拉德地方来的毛织波纹绸，从英属西印度群岛来的海岛棉，从印度来的手织绸，从英格兰曼彻斯特来的宽幅\r\n\r\n　　细毛布，从巴黎来的亚麻细布，在穿了这么完美风格的衬衫，会使您得到众多的内心满足。\r\n\r\n\r\n\r\n\r\n　　“哈特威”衬衫是缅因州的小城渥特威的一个小公司的虔诚的手艺人所缝制的。他们老老小小的在那里工作了已整整114年。\r\n\r\n\r\n\r\n\r\n　　您如果想在离您最近的店家买到“哈特威”衬衫，请写张明信片到“哈特威”缅因州?渥特威城，即复。\r\n', '', '', '2013-09-28 02:42:53', '', '1', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('104', 'admin', '0', '0', '2013092821038', '穿“哈特威”衬衫的男人', '中国工业网', '', '10', '<p>　　美国人最后终于开始体会到买一套好的西装而被穿一件大量生产的廉价衬衫毁坏了整个效果，实在是一件愚蠢的事。因此在这个阶层的人群中，“哈特威”衬衫就开始流行了。</p>\r\n<p><br />\r\n</p>\r\n<p>　　首先，“哈特威”衬衫耐穿性极长??这是多年的事了。其次，因为“哈特威”剪裁低斜度及“为顾客定制的”??衣领，使得您看起来更年轻、更高贵。</p>\r\n<p>　　整件衬衣不惜工本的剪裁，因而使您更为“舒适”。</p>\r\n<p><br />\r\n</p>\r\n<p>　　下摆很长，可深入您的裤腰。钮扣是用珍珠母做成??非常大，也非常有男子气。甚至缝纫上也存在着一种南北战争前的高雅。</p>\r\n<p><br />\r\n</p>\r\n<p>　　最重要的是“哈特威”使用从世界各角落进口的最有名的布匹来缝制他们的衬衫从英国来的棉毛混纺的斜纹布，从苏格兰奥斯特拉德地方来的毛织波纹绸，从英属西印度群岛来的海岛棉，从印度来的手织绸，从英格兰曼彻斯特来的宽幅</p>\r\n<p>　　细毛布，从巴黎来的亚麻细布，在穿了这么完美风格的衬衫，会使您得到众多的内心满足。</p>\r\n<p><br />\r\n</p>\r\n<p>　　“哈特威”衬衫是缅因州的小城渥特威的一个小公司的虔诚的手艺人所缝制的。他们老老小小的在那里工作了已整整114年。</p>\r\n<p><br />\r\n</p>\r\n<p>　　您如果想在离您最近的店家买到“哈特威”衬衫，请写张明信片到“哈特威”缅因州?渥特威城，即复。</p>', '', '', '2013-09-28 04:08:27', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('105', 'vip05', 'vip02', '0', '2013092910928', '好鞋网：购鞋新选择，低价买好鞋', '中国日报网-消费', '', '45', '<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　网购是新一代年轻人喜欢的购物方式，在买鞋这个方面也是一样。面对网络满目琳琅鞋商，但是相信有的消费者也发现了，绝大部分的地方的产品都有共同特点，要么漫天要价，要么质量低廉，那么消费者怎么才能买到物美价廉的品牌鞋呢?笔者了解到近期在专业的B2C鞋商中有一匹黑马股映入眼帘，好鞋网www.haoxie.net成立仅仅一年之际成功跻身行业5强，其中“品牌折扣区”备受消费者喜爱，产品真正的做到物美价廉穿好鞋!与好鞋网的企业文化不谋而合：“打造一流的好鞋购物平台”。它能够给我们全新的购鞋体验，全新的消费感受。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　好鞋网www.haoxie.net在2011年成立，经历过一年的发展，已然赢得了无数顾客群体的青睐。这主要是放心鞋网针对顾客的商业模式与以往完全不同：非常知名的品牌、正规品质鞋源渠道、吸引力强的折扣。这就是好鞋网强有力吸引顾客的方式，也是为什么购鞋的顾客会选择好鞋网站的原因。便宜没好鞋?那就上好鞋网，超低的折扣买好鞋!现在好鞋网的平台正在颠覆这个长久的观念。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　这个时代人们的生活方式已然发生了很大改变，以往的实体店的销售方式不再流行，真正走在前沿的乃是网购，网购是藏着商机的地方。但是我们也都知道，现在很多的网购场所竞争的力度也是相当的激烈的，而要在其中看到转机，渠道是必不可少的，而现在受到消费者青睐的好鞋网www.haoxie.net脱颖而出，在众多的消费者心目中已经树立了良好的形象，是我们买鞋子的最好去处。来源浙江在线)</span>', '', '', '2013-09-29 06:50:01', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('106', 'vip05', 'vip02', '0', '2013092910928', '好鞋网：购鞋新选择，低价买好鞋', '中国网-民企', 'http://www.hongmuchuan.com/', '50', '<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　网购是新一代年轻人喜欢的购物方式，在买鞋这个方面也是一样。面对网络满目琳琅鞋商，但是相信有的消费者也发现了，绝大部分的地方的产品都有共同特点，要么漫天要价，要么质量低廉，那么消费者怎么才能买到物美价廉的品牌鞋呢?笔者了解到近期在专业的B2C鞋商中有一匹黑马股映入眼帘，好鞋网www.haoxie.net成立仅仅一年之际成功跻身行业5强，其中“品牌折扣区”备受消费者喜爱，产品真正的做到物美价廉穿好鞋!与好鞋网的企业文化不谋而合：“打造一流的好鞋购物平台”。它能够给我们全新的购鞋体验，全新的消费感受。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　好鞋网www.haoxie.net在2011年成立，经历过一年的发展，已然赢得了无数顾客群体的青睐。这主要是放心鞋网针对顾客的商业模式与以往完全不同：非常知名的品牌、正规品质鞋源渠道、吸引力强的折扣。这就是好鞋网强有力吸引顾客的方式，也是为什么购鞋的顾客会选择好鞋网站的原因。便宜没好鞋?那就上好鞋网，超低的折扣买好鞋!现在好鞋网的平台正在颠覆这个长久的观念。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　这个时代人们的生活方式已然发生了很大改变，以往的实体店的销售方式不再流行，真正走在前沿的乃是网购，网购是藏着商机的地方。但是我们也都知道，现在很多的网购场所竞争的力度也是相当的激烈的，而要在其中看到转机，渠道是必不可少的，而现在受到消费者青睐的好鞋网www.haoxie.net脱颖而出，在众多的消费者心目中已经树立了良好的形象，是我们买鞋子的最好去处。来源浙江在线)</span>', '', '', '2013-09-29 06:50:01', '2013-09-29 09:27:16', '2', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('107', 'vip05', 'vip02', '0', '2013092990375', '好鞋网：购鞋新选择，低价买好鞋', '汽车江湖网', 'http://www.sina.com.cn', '80', '<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　网购是新一代年轻人喜欢的购物方式，在买鞋这个方面也是一样。面对网络满目琳琅鞋商，但是相信有的消费者也发现了，绝大部分的地方的产品都有共同特点，要么漫天要价，要么质量低廉，那么消费者怎么才能买到物美价廉的品牌鞋呢?笔者了解到近期在专业的B2C鞋商中有一匹黑马股映入眼帘，好鞋网www.haoxie.net成立仅仅一年之际成功跻身行业5强，其中“品牌折扣区”备受消费者喜爱，产品真正的做到物美价廉穿好鞋!与好鞋网的企业文化不谋而合：“打造一流的好鞋购物平台”。它能够给我们全新的购鞋体验，全新的消费感受。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　好鞋网www.haoxie.net在2011年成立，经历过一年的发展，已然赢得了无数顾客群体的青睐。这主要是放心鞋网针对顾客的商业模式与以往完全不同：非常知名的品牌、正规品质鞋源渠道、吸引力强的折扣。这就是好鞋网强有力吸引顾客的方式，也是为什么购鞋的顾客会选择好鞋网站的原因。便宜没好鞋?那就上好鞋网，超低的折扣买好鞋!现在好鞋网的平台正在颠覆这个长久的观念。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　这个时代人们的生活方式已然发生了很大改变，以往的实体店的销售方式不再流行，真正走在前沿的乃是网购，网购是藏着商机的地方。但是我们也都知道，现在很多的网购场所竞争的力度也是相当的激烈的，而要在其中看到转机，渠道是必不可少的，而现在受到消费者青睐的好鞋网www.haoxie.net脱颖而出，在众多的消费者心目中已经树立了良好的形象，是我们买鞋子的最好去处。来源浙江在线)</span>', '', '', '2013-09-29 07:23:32', '2013-09-29 09:25:14', '2', '1', '0');
INSERT INTO `ruanwen_info` VALUES ('108', 'vip05', 'vip02', '0', '2013092990375', '好鞋网：购鞋新选择，低价买好鞋', '中国新闻日报网', '', '150', '<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　网购是新一代年轻人喜欢的购物方式，在买鞋这个方面也是一样。面对网络满目琳琅鞋商，但是相信有的消费者也发现了，绝大部分的地方的产品都有共同特点，要么漫天要价，要么质量低廉，那么消费者怎么才能买到物美价廉的品牌鞋呢?笔者了解到近期在专业的B2C鞋商中有一匹黑马股映入眼帘，好鞋网www.haoxie.net成立仅仅一年之际成功跻身行业5强，其中“品牌折扣区”备受消费者喜爱，产品真正的做到物美价廉穿好鞋!与好鞋网的企业文化不谋而合：“打造一流的好鞋购物平台”。它能够给我们全新的购鞋体验，全新的消费感受。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　好鞋网www.haoxie.net在2011年成立，经历过一年的发展，已然赢得了无数顾客群体的青睐。这主要是放心鞋网针对顾客的商业模式与以往完全不同：非常知名的品牌、正规品质鞋源渠道、吸引力强的折扣。这就是好鞋网强有力吸引顾客的方式，也是为什么购鞋的顾客会选择好鞋网站的原因。便宜没好鞋?那就上好鞋网，超低的折扣买好鞋!现在好鞋网的平台正在颠覆这个长久的观念。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　这个时代人们的生活方式已然发生了很大改变，以往的实体店的销售方式不再流行，真正走在前沿的乃是网购，网购是藏着商机的地方。但是我们也都知道，现在很多的网购场所竞争的力度也是相当的激烈的，而要在其中看到转机，渠道是必不可少的，而现在受到消费者青睐的好鞋网www.haoxie.net脱颖而出，在众多的消费者心目中已经树立了良好的形象，是我们买鞋子的最好去处。来源浙江在线)</span>', '', '', '2013-09-29 07:23:32', '', '1', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('109', 'admin', '', '0', '2013092983583', '好鞋网：购鞋新选择，低价买好鞋', '中国新闻日报网', '', '130', '<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　网购是新一代年轻人喜欢的购物方式，在买鞋这个方面也是一样。面对网络满目琳琅鞋商，但是相信有的消费者也发现了，绝大部分的地方的产品都有共同特点，要么漫天要价，要么质量低廉，那么消费者怎么才能买到物美价廉的品牌鞋呢?笔者了解到近期在专业的B2C鞋商中有一匹黑马股映入眼帘，好鞋网www.haoxie.net成立仅仅一年之际成功跻身行业5强，其中“品牌折扣区”备受消费者喜爱，产品真正的做到物美价廉穿好鞋!与好鞋网的企业文化不谋而合：“打造一流的好鞋购物平台”。它能够给我们全新的购鞋体验，全新的消费感受。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　好鞋网www.haoxie.net在2011年成立，经历过一年的发展，已然赢得了无数顾客群体的青睐。这主要是放心鞋网针对顾客的商业模式与以往完全不同：非常知名的品牌、正规品质鞋源渠道、吸引力强的折扣。这就是好鞋网强有力吸引顾客的方式，也是为什么购鞋的顾客会选择好鞋网站的原因。便宜没好鞋?那就上好鞋网，超低的折扣买好鞋!现在好鞋网的平台正在颠覆这个长久的观念。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　这个时代人们的生活方式已然发生了很大改变，以往的实体店的销售方式不再流行，真正走在前沿的乃是网购，网购是藏着商机的地方。但是我们也都知道，现在很多的网购场所竞争的力度也是相当的激烈的，而要在其中看到转机，渠道是必不可少的，而现在受到消费者青睐的好鞋网www.haoxie.net脱颖而出，在众多的消费者心目中已经树立了良好的形象，是我们买鞋子的最好去处。来源浙江在线)</span>', '', '', '2013-09-29 07:45:12', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('110', 'admin', '', '0', '2013092919654', '好鞋网：购鞋新选择，低价买好鞋', '中国新闻日报网', '', '130', '<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　网购是新一代年轻人喜欢的购物方式，在买鞋这个方面也是一样。面对网络满目琳琅鞋商，但是相信有的消费者也发现了，绝大部分的地方的产品都有共同特点，要么漫天要价，要么质量低廉，那么消费者怎么才能买到物美价廉的品牌鞋呢?笔者了解到近期在专业的B2C鞋商中有一匹黑马股映入眼帘，好鞋网www.haoxie.net成立仅仅一年之际成功跻身行业5强，其中“品牌折扣区”备受消费者喜爱，产品真正的做到物美价廉穿好鞋!与好鞋网的企业文化不谋而合：“打造一流的好鞋购物平台”。它能够给我们全新的购鞋体验，全新的消费感受。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　好鞋网www.haoxie.net在2011年成立，经历过一年的发展，已然赢得了无数顾客群体的青睐。这主要是放心鞋网针对顾客的商业模式与以往完全不同：非常知名的品牌、正规品质鞋源渠道、吸引力强的折扣。这就是好鞋网强有力吸引顾客的方式，也是为什么购鞋的顾客会选择好鞋网站的原因。便宜没好鞋?那就上好鞋网，超低的折扣买好鞋!现在好鞋网的平台正在颠覆这个长久的观念。</span><br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<br style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\" />\r\n<span style=\"color:#333333;font-family:宋体;font-size:14px;line-height:24px;text-align:left;background-color:#e7f0f7;\">　　这个时代人们的生活方式已然发生了很大改变，以往的实体店的销售方式不再流行，真正走在前沿的乃是网购，网购是藏着商机的地方。但是我们也都知道，现在很多的网购场所竞争的力度也是相当的激烈的，而要在其中看到转机，渠道是必不可少的，而现在受到消费者青睐的好鞋网www.haoxie.net脱颖而出，在众多的消费者心目中已经树立了良好的形象，是我们买鞋子的最好去处。来源浙江在线)</span>', '', '', '2013-09-29 07:59:32', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('111', 'admin', '', '0', '2013092971270', '穿“哈特威”衬衫的男人', '汽车江湖网', 'http://www.sina.com.cn', '30', '1', '', '', '2013-09-29 08:13:19', '2013-09-29 10:01:56', '2', '1', '0');
INSERT INTO `ruanwen_info` VALUES ('112', 'admin', 'vip02', '0', '2013092919107', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '中国新闻日报网', '', '130', '', '', '', '2013-09-29 08:19:30', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('113', 'admin', 'vip02', '0', '2013092919107', '妙手攒机 宏图三胞网络DIY装机挑战赛即将启动', '汽车江湖网', '', '30', '', '不允许发敏感文章内容。', '', '2013-09-29 08:19:30', '2013-09-29 10:00:48', '3', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('114', 'vip01', '', '140', '2013092960067', '代写宣传公司宣传性软文', '中国新闻日报网', '', '150', '', '内容含攻击性语言，不允许发。', '', '2013-09-29 08:32:55', '2013-09-29 10:05:49', '3', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('115', 'admin', 'vip02', '140', '2013092941802', '12313123', '中国新闻日报网', '', '130', '', '不能发此类文章。', '', '2013-09-29 08:46:56', '2013-09-29 10:06:43', '3', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('116', 'vip01', 'vip02', '140', '2013092933453', '放大师傅', '中国新闻日报网', '', '150', '', '', '', '2013-09-29 08:47:25', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('117', 'vip05', 'vip02', '140', '2013092931071', 'ok0410410', '中国新闻日报网', '', '200', '', '', '', '2013-09-29 08:48:10', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('118', 'admin', 'vip02', '133', '2013092918517', '穿衬衫的男人', '汽车江湖网', '', '30', '', '', '', '2013-09-29 09:08:55', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('119', 'admin', 'vip02', '140', '2013092918517', '穿衬衫的男人', '中国新闻日报网', '', '130', '', '', '', '2013-09-29 09:08:55', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('120', 'admin', 'vip02', '133', '2013092946142', '穿衬衫的男人', '汽车江湖网', '', '30', '', '', '', '2013-09-29 09:10:34', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('121', 'vip01', 'vip02', '133', '2013092912298', '放大师傅', '汽车江湖网', '', '60', '', '', '', '2013-09-29 09:11:19', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('122', 'vip01', 'vip02', '140', '2013092912298', '放大师傅', '中国新闻日报网', '', '150', '', '', '', '2013-09-29 09:11:19', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('123', 'vip01', 'vip02', '133', '2013092928704', '放大师傅', '汽车江湖网', '', '60', '', '', '', '2013-09-29 09:11:37', '', '1', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('124', 'vip05', 'vip02', '133', '2013092992320', '代写宣传软文', '汽车江湖网', 'http://www.hongmuchuan.com', '120', '', '', '', '2013-09-29 09:12:27', '2013-10-04 08:22:58', '2', '1', '0');
INSERT INTO `ruanwen_info` VALUES ('125', 'vip05', 'vip02', '140', '2013092992320', '代写宣传软文', '中国新闻日报网', 'http://www.hongmuchuan.com', '200', '', '', '', '2013-09-29 09:12:27', '2013-10-04 08:05:40', '2', '1', '0');
INSERT INTO `ruanwen_info` VALUES ('126', 'vip05', 'vip02', '133', '2013092924883', '代写宣传软文', '汽车江湖网', 'http://www.1451.com/', '120', '', '', '', '2013-09-29 09:12:47', '2013-10-04 08:17:31', '2', '1', '0');
INSERT INTO `ruanwen_info` VALUES ('127', 'admin', '', '146', '2014012178334', '123', 'BC24234', 'http://www.123.com/', '30', '', '', '', '2014-01-21 07:49:44', '2014-01-21 07:53:10', '2', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('128', 'admin', '', '146', '2014012190527', '134564', 'BC24234', 'http://www.123.com/', '30', '', '', '', '2014-01-21 08:13:51', '2014-01-21 20:17:29', '2', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('129', 'admin', '', '123', '2016110440182', '测试', '凤凰网-汽车', '', '10', '放松放松', null, null, '2016-11-04 10:01:32', '2016-11-04 10:02:06', '2', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('130', 'admin', 'vip02', '140', '2016110445760', '测试来源网址', '中国新闻日报网', null, '120', 'http://www.hou15.com', null, null, '2016-11-04 14:37:51', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('131', 'admin', '', '125', '2016110454612', '这里是测试的上传稿件', '东方网-汽车', null, '10', 'huo15com->/huo15template/upload/20161104/20161104171430148.docx', null, null, '2016-11-04 17:14:58', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('132', 'admin', 'vip02', '140', '2016110479606', '测试上传稿件2', '中国新闻日报网', null, '120', 'huo15com->/huo15template/upload/20161104/20161104173405829.docx', null, null, '2016-11-04 17:34:11', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('133', 'vip06', 'vip02', '140', '2016110462495', '上传稿件1', '中国新闻日报网', null, '200', 'huo15com->/huo15template/upload/20161104/20161104181957991.docx', null, null, '2016-11-04 06:20:03', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('134', 'admin', 'vip02', '140', '2016110453862', '测试12', '中国新闻日报网', null, '120', 'huo15com->/huo15template/upload/20161104/20161104190529535.docx', null, null, '2016-11-04 19:05:42', '', '0', '0', '0');
INSERT INTO `ruanwen_info` VALUES ('135', 'admin', '', '131', '2016110429651', '测试3', '汽车殿堂', null, '10', 'http://www.hou15.com', null, null, '2016-11-04 19:06:56', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `shequ_info`
-- ----------------------------
DROP TABLE IF EXISTS `shequ_info`;
CREATE TABLE `shequ_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `weburl` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shequ_info
-- ----------------------------
INSERT INTO `shequ_info` VALUES ('129', 'vip01', '', '154', '2013101498868', '好鞋网：购鞋新选择，低价买好鞋', '腾讯社区', '', '120', '好鞋网：购鞋新选择，低价买好鞋', '内容违规', '', '2013-10-14 05:06:57', '2013-10-14 06:08:49', '3', '0', '0');
INSERT INTO `shequ_info` VALUES ('130', 'vip01', '', '153', '2013101498868', '好鞋网：购鞋新选择，低价买好鞋', '新浪社区', 'http://www.345234.com/', '80', '好鞋网：购鞋新选择，低价买好鞋', '', '', '2013-10-14 05:06:57', '2013-10-14 06:07:51', '2', '1', '0');

-- ----------------------------
-- Table structure for `shuijun_info`
-- ----------------------------
DROP TABLE IF EXISTS `shuijun_info`;
CREATE TABLE `shuijun_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `weburl` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shuijun_info
-- ----------------------------
INSERT INTO `shuijun_info` VALUES ('129', 'vip01', '', '164', '2013101465014', '代写宣传公司宣传性软文', '腾讯普通水军', '', '120', '代写宣传公司宣传性软文', '内容不符合规定。', '', '2013-10-14 07:07:11', '2013-10-14 07:19:35', '3', '0', '0');
INSERT INTO `shuijun_info` VALUES ('130', 'vip01', '', '162', '2013101465014', '代写宣传公司宣传性软文', '新浪普通水军', 'http://www.qq.com/', '180', '代写宣传公司宣传性软文', '', '', '2013-10-14 07:07:11', '2013-10-14 07:18:50', '2', '1', '0');

-- ----------------------------
-- Table structure for `spider_temp_tab`
-- ----------------------------
DROP TABLE IF EXISTS `spider_temp_tab`;
CREATE TABLE `spider_temp_tab` (
  `spider` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_temp_tab
-- ----------------------------
INSERT INTO `spider_temp_tab` VALUES (0x4D5A4B45524E454C33322E444C4C00004C6F61644C696272617279410000000047657450726F63416464726573730000557061636B42794477696E6740000000504500004C010200000000000000000000000000E0000E210B0100360090000000100100000000003D9502000010000000A00000000000100010000000020000040000000000000004000000000000000010030000020000000000000200000000001000001000000000100000100000000000001000000009980200DD020000F19702001400000000C001009000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002E557061636B000000B00100001000000000000000000000000000000000000000000000600000E02E727372630000000050010000C00100E6DA000000020000000000000000000000000000600000E088010010E89A02101B0000000E000000001000106B970210B7970210BA970210C8970210A3970210FC0F0010DE960210E0960210809502101DBA0110ED970210FFAF0110D2960210000400007C070000C40B0000B30200006604000090C0011000000000FFFFFFFF01000000010000000100000001000000000000000000000000000000010000008800008018000080000000000000000000000000000002006500000038000080660000006000008000000000000000000000000000000100040800005000000090000100004400000000000000000000000000000000000000000000000001000408000078000000904401005C3C000000000000000000000300420049004E00459398EDB4853493541907B2DE1FCBD640CD0773DF2017D5F39748433F6D90C556F2B1C13F1BE3BCB417F756A33186E453B17FAF31E8157911B03DA9AAF41F2277AFFFEC07571BFAE8214B0FF18AF2F7C0AD2D95A1FF0F487658E587923BC1CE9D2C2698C74B940C5842BF55C7DA2026563C174C45C6C5E08E95B030390EF0886BD124043AED5B1631B138955065FA05FBFCC1C0B81636C51C7F18BCCC846AC8305F5C5134FD92A3E9CB2BB5D99EE1E21A6F5D2929597C59B61E8925C1675138746F1F549D1B8A0C35B7DAB30B46A401737162D316FB50723E8A98CA5D6D298259015FE6E1C0A402790E15A965807B488C73E6915FFD6E57D333C0D86EF3A562E0BF0BCCBE4BC7CCB560BC2DF75D593904F638EAE6A964C33F4E123A1D3C213B184373BF34C66ED68B368316156E32F6FA63E02ADD3B03893F73AF8ABD1099C48C1D0C886314167008EF255D5C2C3539FB781D6D39AA432D654C702F15DF0A339530889ADFEFDE4B9DF29D2E8FA7E4317FDA1B0588A22265EB53C317BC6EA94FA1981968D5A60921FF60F9E9559123AEAA8D1E91E38FB1A2FB1D2075454E8EF226538ED8307DB2C99CD396B5C6DA829569C3875F317A4BFF429B0528D204AF4284FC05207901D48E52B386E5D44C69A2E8E3086F137F1D0694ECD619ECC97AF83A97D5A0598701B386BD704864C72B3858824FC94082DA933D5FADB23EF3DEE6528CD4CB2EEFE2F2B03D17857940D70222D541B2523F4E7D5B8EE46CABA89830D664DEFB08F798E83818CDE2701B8C5D37FC6C5C045AE468EFCA8B8D5B62B60811C21DAE6B86DEFFA3824E7581435C0BC67555C2D498047554B52D0BFC909911E94CE5D6D3A72659B0EE25F2B40BE7D239115256D8C2687AFC7E075A2557F974D9130D76E09955235ED4AFBC03891D8CC489C8A6F0AA00CFA41CEFFD29DF70EDD17679477C4EDD29023C807A55E8DFE614FEFE44AD759CFCA628D9DA21B68E2D6A7AB33D62B175FB858C94158923278F256E96EFF885E3EAFA12B09ECABFA54D523A3C33270510FD821A0F56E24D3BFAA815A6BD4E2EBA52E52A940037728E2CBCD8278FE714384A4BFC887797B071BB440B010A9D0DB60CBACEE05907B7B08E20DBA7F45FFD21265BC47086F8275C1C5071AFAEB7CE0336E0A5FACF0A7923597C7F4EE7B54512B38608C8CE06ACD05CFCDD68EC58F288889EF615623409BC88DD3B09B8BE22FCC199755426B4B0704EC21AE1A3E7EFE21CF6952456F3743D8D76E1D02E7F7815EA30FEB20F279FA9CF827D7618C1C182BE35A5AB2EB9F611057B493EFF526A75513347A1DCE859F1D8D5CC9E842F55F82211B2FA26CE53C5F133AFD31531C50324A5429B74FAB0746EED031ACB0D02344E1B495BCA244AE6EBA4DCD3DA28419A064C22E895880FD2485C3E6861B6E06A4E43959B9D0633774EA85692B12408F6867903F8B9BF790973680440D4822238690617AF451D0EEBF942D4C98637E9BA092B38DCDC608F330722CC255A4FEB5D2A3CB268518EBF43231D9630AC95AE22FF0B8640335FEBCAF6A3066BE83F03673636639E7CB025963D4071886EF072BF9F6F5AD0E0A407734B77320CB1FC6A6A07D14D36403AC1B849EBA998B5F64D59ECFA4E30200D84D236A12B1B11ACAE3E4D74CA5368657F93B4D80CC5356C5537FFAB7D3F792A03912A01D94C03F4F097824586708ECC7CBD1DB4B7E24A0F2E45121629B9C2BC92716B790246C4A4159FD9E4958FC13A4A72C1D799078D601F3EBA6457AE19A68877841D343175F3B692EC219C3A059931421596335AF3121670EF9602FCE94DE822922D7F1C357F7719B2A63DE4A0C9B648297326B5A32082462E6BD83457F5C415A418209B4DEECBB66F26383D9244F08E0AEE60659808DBD2A4744865F6B6A0950ED88138A0C6496245C84D60CAABEF5FACC467F114DD3B695E39FB076887147BE54B8FF924AAD0E159F4DA839D7B67EA764B3E5906AD36BC3C476584BB38B7F009CEDAB0E6D89BB9EC76E3228E559B69C763BCBE2804DFBC4C6EBA24173214DD72F455EAF170E5AFC8B7A1FFAC801DCD05A53AAEF649F67F1D11CF249CDCF2E33A7D93E872D323A836A78BE609996B592F3BB5FD8F6B952FD09D66647DCC055AA681B8AF88597D510DAAE5255D2318B9B5E116B83B06C8A644010D677C683684ABD9B677AC444EC7163218E4708336B0D12BBB660FE9BC21E49D2EFC76D74E26C71D6C945267FD7D664FE5385ABC834F661FE715B0924E9C63F5F6C88CB0EE11B44393A9113F6C17D56BD982A00CD4811653669C3A1B9535260742017659CF380FBF76AE37B92863BC94923F3990658DB72C9C64BC29D4C2C03EC0C1C74E3558F66092C1D78D710D52A2C96CC6CAD8729D9385016B36C9D231986CB60E8CFEB37AACF1205B9CBAD985834C8B4B9D435E17DBC94967B5EB3E32E2A0423744951B1A087D85A822663DE7A3F9C2253F7366D02E161B9B3A18FDEE2946D741D3F2A5B0D0F3217E54D9CC97C8A62ABCA1B114240CCE3576A7131069751AF5A280721DF185CAACE01A618F57CD8DC52E03A85048ADB2D6F31D9D136817602EE2C38F694E6CB9EB2E830ABF46B8A2F4ECF4FBD190E357D774E1DBE9DE09650EA97486D41BB406C36D07DFA66C8347720158494C21EF841D6219AA0D3C8DD1CD33C3734E49EE574928BB0B1B28F86F0ECED7C8FC50E93868455D6419ED7BFFE464315490DE54AB89437CD6F9F2E71FD59E4C5863EC3F83E4760EDC9BC51A9C55A4B253C7966EB110259221449C131B3B328630EA1DA1D8553D05FE6830902950A48D623396EDD5280A1BBB165D1EAB1A77F157D1B7870C4411850752BAB0B6FB688D268901C2D8E456E3EE0614D1DD30A138F33661268FD83EB720F5953C280949F7760372DDFBCFD9FA54CED88FE574DA013246AEEA3BD41B72C6DBF603ADCC21E5B7DE44345D2A972EC002761A886B55579B8FF13286F668504C3290D15DBEF81B1E96AD946A6466B7128D0AC11FB7FAD4FE60B6C70E687C5665827A1DED9326F329C3DACB0DBD25AC1ADCDC3ECCAB7D97DB8C55B96AFD5504BDE724CA1489EF6108B25DA9555F78111A6A04C30AE62961ADE9CB8C02BE27BA9984C0104AB80376719A08047D821B0BF60E1A29A6D7D377760B053AE91BF8057156E5B593A7DC8058F05E2DA4CA217CF5BE8881E00FA9D1F7A618820A0F0B2BA6175DBCA0B6F035BC24EBE83198B5A90EBDE91E8954581DA67159639F40F37210A1BD8BF14DC987FD37B1A5FE69BDA234E6D7F70D9CA0531039F19FD054904EEA5B7A52EC468E5345437D0737B1495DC7249EA4CFA6F48C2E3E6158D5F0F1EFD1BAFB4D7FE0B0DCE7AD98E8D3F57BB708A8AEA83A0EEA3DDC00394DFCDFAFD308B6B24FA20C7625D2FCD6A5FAE7D273EC98EEA794BFE979DC3123FFC32C197BDCA6321B57785908E6D19AB6F536A8DF7E1E05BADED7A4EBC007766C508A13394F51803BEEA47FAC0ED97C25ED9888DDC6DC6219E704C6A132CD04CFF7447B2DF742108D0272366B11B2C4767464B460251DE4CE3CE6D193589D14AEC9B97766A6883E4DBF1DCA0EDF32F8980EBF2F9C935DCC56FA6E0B29798EA458E6EDC0AF271E6814FA425548E41FC8F641B8AD487A20812E4EB25063746B3D4244B101031580A0119D649CA5F32A68B11E7D5741A5AD7682FA8FAFBE5AFF113269B9A47923F81D3A028615F8C6E7B38E78E443CB2A49D91C2A7757A99DF35AAA71DFD21E0B5591AF970E6D2F239FF7E2D76ACD9967AD6FC30D460D552F1930461E9B86A92D358618FA3B539029603A3260FC65D57A5909E35777A633D9093911FC636BFE3745A7510CB4633092223F5315F6745A604AC0365ABAE8968B19677F840B1502E21B638CEFFD5075B3D3688EAB91379DFEED65BEAA5F7CA5B971DBC53C6C000B259DEA5D6FD84B2E12090331A45299D807D3C12545F84710D36168CA4F277C8FA3982806FAEF71D73860B58F8DB7A3116AF13418100C8E905651B538B5C1853FB194C574A918B8F0426152253FF3DB5AF8289080FE0D7BF2B9D907C54EB2604D8F4E3865D8C7E8659ACD1928182206C0EFAD42664B6EF473F74D7A8D681273590A487F250C143BD18253C3DF904B620F4203757B029D8B41BFBCB9ACE3D5E7673386DAB5E3E486A3F49BBF89F5A4C67E0C1067C0ADF6BBDFA43CD6289C1E45E46FC4F236A708684F9461787A90F6FD9A1F55690BBB3DDFCB94D960C39F58110ACD1A4538B6AE85B06E4024610575BC3069A2B90B07E01096854E1E8BD00260BD495F975C8543030031C6FBCD201BF384F27F72AF8C9CE354EF66A27FBC04DC0BB34F7A67518575D78BCAC95243F1743B0F843F7806D1B6278766E05E90694A328230B378516ECE63E46180A0C2D3972674FA8DE29C864198E66173BEA93F54995BFAA4B1E8638BA111187E26161D23DDBAFF9A1DDE6C8601B6C1C5E0658A153685DE38E7A92A39D34587D67D10DA2D7A01E70AC5488B16D0002229154101F0D5F6AFD6636F7E376A3D5842861F8C5642B81676A5A3DC14DE9BFE1E3011CB9E4CDD6A1AFA87E84F86EE792A090F48F9540A23EB0928CF8D9F52A44ACBA76C827494BB6EF8971F1690D441F0BA8322B5CB15EE105E95AB47F560ECEF4D5046C75DED3523549B3A2A0C878906AF9EF17BDDB57D82A437932D9B6802CF178E34F9C4764054F01902258E7D2317B9A98E78BC273E406D6FD2D33C4270CFD4596FEDEC01C4F9E6216F73A71E930B208D247DCEEE69F0D1F55A179C70B69F71C0E8A8B4CFDD89CDB1908D6D96B33D98A26456F79F26C744F9F7508983324CC354C1F20F89480C8C506FA04F59CB8AE99F8BF4AE9BA8B06F6AA052B695AA5DA8143EEFDA5B3A4D65B0333F944861D2D53503236151731F4B262D66597865FFEBC3474F3566B56F4BA520E9FD933C304EF9CA43BD6336E9B82E0E76724C1820AA1BC231AE694CF759938C29C210CB676885A65B4AE212F4382788458EA9A136BFC9BFED6F159E0844C4DB54A3BAC68D95CC91623F7E1476F8F736C131097DAF671157F18D67116A2D273FA9E53375955BB7BB6ECB3518E7F05DD9248A1E26607708AB2A67904C44325FBE219E04512DA82E93D466FA33A7D00D70D1CD45D650F3BF001BD7A2D0AE1C545FB75FB6AF69BBDE85E358E272B26DD2EA189DB0A41C1131EC3882D5B72E3A643E02527909758BA4BD542746B60D822B35884B828A12B683AA4ABD4861F7A249BBC0DBC12559E88C2BCE5BF5AA35C0B17C69794ABBC5765E7EABCA36EBFB7318998F974D42F3DF2564E29ABE38E7671D25702051346B86FA36F6B71DAE27E7506E5A5A790658646AB672BB825857890107E837992AB33AD751963C155D5D85DBCA61092ACCB9E38C4589DB3487082068F2DFC818FE05F8CE8A18DFC6716E0466E87D79AD6BF1353B0A34BE96416D0F44C44A9563FDBC2C093875A385ECFDC6E11A488964690333669E8DC714957E0E1B3CE29C2309BD17CCC74520CDA658381385821F44137A3486A682FCEFC2E111D8304264538A64E8ACB6E791960342463F970C4D250E154F28B66A5A7011BF7942C04E053804C100E79A1CBC4278F689AB9A3BD4669928BCAD4C165644B53695FC7910A2129A872E548DE830EF3B7EE255E7B6480F06F9FD895E84E5B5E038FFC0389317E95A79DBE8C95C8B8BCAEF5A524ABD85DA966E905D2DB3946D56EEE8F5006CE54EEA02C035AF841BDCF95509422FC24329E6A03BF6EAFBEFE5B6FFE19F45A63CEB73EF8BCB0EA9E3030D27C3D6A8DDD88B041DC47FB229431498262A8887785DD8657C055229DAD916A71360AA931BD7E158B6C17E3A2D8CEFD88F77E40EBBCFA4DB96B89D6F51402D7E325A8E64FE1FAB085568DC5F373BCE2BD05B24EB60F87214FA162086D5521D39EE0EB565F86F338FF996E3FCF4A9DC36F3A32CDCC356EFF69CC0F5BACEA0F331494796D808168B83EEB8489C0F687052C709E7558005E7D34AA60424265CC8A656D065CA83B78ED51D0A2A6F1768C3048ADE80275469CA6091A5720D56E36C1C5DC0F6FA344259D34C2324821EDE5CE0DDF1B9D9132270A6C2ACE863D258B5377F3DABD660A0C4D59278FA23F056D76B077812E7DB036500BDD1BB333043FF1AA5267ED828EE5AF9E4CDBDEEA851F3234F93700E681F13B5EACB938E03851D4E80F319D5DC8E6439FA41475D6F133D131CEBEFE4DB7F3A7C0B9D62511805373E2A5CCB637B81FD27FDDF03EB72D74BF20B54E00A501ACF1A61ABA9D994055402D838B85930912630335E5B545C0058D9474E5AC355A5F630F8AE6E3860BF8A62798926179A3BC9C2E7264752EA7A0B45BB6053169504510E70A043D3EFDC5AF76A2E1DF04C2A2B7CF96DFF5E8F212510D9DFEC01B425107C9C8FA7500637A27EFF7BB7EB7935566BFAF5D37323DEF1740318875BA2E0CEA9DD3AE9AB7D0BF74AD9FB7C87C91A62AAFD80B8661F28D5148D92A4F8F80167B786751A40EDCA8B3DE8C2BB05C7CD682865AC3493377CBA23A4E1FEA18299336E7533E38AF3598ACDE9646C1D6164B3FA8059AAA522824F6FFB90C12B4827D0E0302153F2126201BB6B588875CAB0D346A7DC8749654F503F01BD9A4E672A88104829417BFD2E344B435FD111CE7FF27B56C81B44C487DF01E63F0BA70228AD76FA2B4E0D5A57D7F63827AFC2328A3F6B679EB581C9247689BAF8057FC892BF5B323F19091B085BFD1625D7458D8A8A8BA3248FE992FE9EDB14DAFE34355234271D9CEAF4E9E298C02743BE6B5488A8E248BAAE788E793301078EBC3824424374A0624404D6CE2D268FCF0052A20125E71295EEA2B0C395ECB2F4BC20EFD7270E4B00F2A17DE04A587C4E17BDBB07713F830BE090C4200DB5477F75E44C9714D4EEE288E438FD3C6887E5B08BA6F2F015DC749871FED99AC7BB5D25DE80FF396F0139C1A98ECF25971383068CD71083D9A3D11F73860372EFEB266DA459D9E3F49D7C6A47E034BA7D97142CC6183BDCD38B0881AE18061070E767F68835D8E51DD585DBB6597B8E66EA60A553D876BD355B83D2C1340385ECFACDA26D65C744AA6D025DD393EC353778C0C24DF4ABCE8F96006856CE322CC902AED08AD19EC4C01EA392DDD15EA0B6F25FAB35CC314169C440E9552E5DCFBF02A7EB924C8F40E7299245D550CED955F57DDA2B95770DE0F80041384F26F075CF4EEB0B893F5A3844E9779B5ED0C83810F6FF31836F6C289A7BDFC95E9D452F931E6DAD9252D97220485E59AEA90FA8DF84B17E993F1627AC66A7CE4920EB63FD7F27B0969E7E19FB83F8252623818CD78CA73414CBB5BE0F242ED5FBE337FAFB88CC3D203B5CBC73DAEF664635F7C9DB24A6A7795AB7F2FEC1D47CDA394CA4367013911174E0A7949C6A8993483C76891B248803A5BE67DEED96CF301A14AB61246BE742EB8E3A09D3C619AD9F3320FF53B99C2B6B2F41B009D629CE0DF2494836158FBE4BF7E3460D88CB212C99A4DECF3F9CCEC071F494269D7BD570B5EA0FCA07485E5326A4A6727E7E0C101375E4239535EE6B0D63A20C3C9BFC5D0DD9940348C3421673039371AE3074698E7167C70FC635ECB2DAA207AAF4570043F2DADB1AF007B930D979CC0DA729BAFF0E077DF062AD3F2BCBD4E9DAEBD96F90FE9946CD88EEE0D72A9ED035AF0BFCEB843A2399468088A24D8B999403438FC99F0DA8E4A91A939953FFAF7251CA3FD466FF2110AFB33242E278C6B072F5ED3DF4C1482D28722874F0B1F30226BF336699766333DC331ABF7EC09466BE15ECEAA2BC8D6B21BA56D5E960B7B485466AC92F03B3AE98BDC441686E2D89975756DD922BDE9F8760C6A9A21E046D9F38AD2477E5C11E306B7F335EB5BDC198C28A28139B4944F43CD22B6798E89ED772271A43F1C802DB013D047977DFD98361A4EE89186DBFE61FBFA02432AC4645F0DED7E6EC07E82F102922C1917082529E3A364B43196E93C1EC6353A0F972165D63B2086E43D31C21E28136E72F338FFEEA68BCA8490D58227D435DCD2DEFED8CA49CF486AB29B7E776220E66C20636F1F551D54BAE83B4996EC68D656F1A29B82D806F5498F29178F503919D517835F289D4B5F679D61C4F91522ED8AB502B544346ED3B3C2FC949A149A24A703AA524A38A233323A02FE5FD220884D708999F227CC27F800B6B00C4CAE107DEF5B0CB9CA4336875662AF9622231B38521463432C4B7EF837569EFBAD1FB7D6CA953E28D1D0E520B0C98FD74A424A6C06D41A60D7CD6E8EE721847ACF03F996C371C321A83BF15D37C72AAA44B51BF5A7E8CAF1C3787EEE48AAF372F010931CFF21682968B2033BF4809203203EC61566F96FCD2ACD00172D91E9BFB5B8025652263281D985B316040DDEF4AEAC0F8E3542B41B76FF98B5D0303854AAA254C3A841867BB25C65FCBC2271814B525BE74B3401B240FE5FA3AB12175AF55366C7A839FA2C7FF59F85BF0B51943DF5C12537CA78AE77C176C5E4002A87893A62C256F0C4F86778E4E059C0AA20E75BFC5C2835F4DF0FCD7AC1171F49A8CE39EC5B6A2F69B995997DC62F7638C6E379846045E4A6EE0C1DFD162E2655B45769FA10E87BFD6B4A488477DD4F8E70CDBDBEEFF66DAA8715F286AC7A73506871CC21E4F7EF300B6C295C78C1B3E5D6031D7FB3BE5B5635BDB92BF94C3F4E4335724182FACAA37C5D65FF165913FF61CD8971D178A62444E45D6C92B19BC9A1B21FEBE3715A1F9F916AAAB25910986DA22C736954BFBF8B0C0281B1EF97B9851B12FF39D1AD97DBECDE06FB708A588F4BC99DC5D52F1AB87407B40C1E06D23761E354A2DFDE9324F64B7D3391C5D2857904A12965011BD2D1F5D6E5FADC4D4ACD5605167F10172DFBDF466EF9F34FD1B5B290D426BB3C4C812DE12616016C6DFED62615F522342A1157218CC54ECB2874A3FFF11D97810C5D667413CF74008B6BA55CF547D7AD1E10930DA17F15A7B9979DCDEC0191F00FECC45A8321F0EC2C4C2ABC963F8BDF34F3D05B8DB7591880C0E36EA294CA4E483BE57094ADDBF9EDAE51F8B0C97BF47861304E7B304F3591F1F2E6F2B287B3CE9E64FEFAD5E811725B9A41EA799735AC307790582E651E16020BCB3C4A4C34735B4C6527703674D5506D63E7A5A5511018DD34532CA896906E1B8C9DCFAB3AE32E52727F9322CA39609CFBCF058E20920C673E7AF34CC8F3450B3A52E16DEB895CDB2E412D26B88B9C2837BCB7F82C9992CDBE9DEA677A34E4D9C612CB2DCDBCC9A2EB11D77558410C483844A7A9CCA54E1A2A2D74D131817DBBEFA63405BBBE04C659868FE80CF240DAF9C26EEBDB898077E59114A226BCD0D8A24E2EDEDB73F18128661F5ED021B14CCD6C706AD72DD68614248496FDA0E7428AC21269C6CDFD567800CF258F031DE85D46A1DD9F962ACC481085A1078E95F9A839D5C08E55C2652879D2C2506429689612ED4A6431B1E2302965B00F9AE4C6520F18711EE8E618D4DCA0D4927B88381CC0D5FE9652F29A3E45FAF1918A1663B0A117FC3BA17640C01D60B305D4AA89AFC9A50517E78BD488B66C4BDA8ED57E3BA56270478BEBB4737580F1F77785CB60BFCDFE840E9053D3B5F06750ADCFBFE713CB46A1DF4B7A828A4F3C8117E208A7B3D8D934B408478101D29DBA20493B57A443962E2969F3165A200FE6DED2692A029CB1F9C138E25C14903129B018EBA648D93C2079A614DD03D948FDEA6E877B748FFF6A7D396BC58E096CA72A525CB67594841F95A99EA9351CCDA548A7B7B2311EC672B27E535EDAC3C2BBEEEC863B4ED848B53488189AB6BFEA6BD376E5280F0F4F5A1D526FBCC91A97A3D21F044235D6BED56284C19C41F4CFA3F31598E7DCB31FA761E61A9BF57F19DAA3BA5634E5A37CB7BDDC6115D436F9B3A0E56FC0ADBBC4B34E8C0E25643D7B9BDB32267F524B2965A37E5070DB5FB5B612D249EC12960128F7980D700B2253A5FAB0FEA4AA9735144D640D7F25A34282A3517F2DFE39D595C4C68A525E1ED92EBBDC50798B5B62FA8A694E61AF9DB663F2F0F6BEC86EC451FA0B08584C23FEAB9804DCAF95899FE80206103A841F88FFD663D3D475EB4633FF36702AFAD9EB4C8B666014D89C21EFF0F1036B6FE2845D5E24870E45D61F89EB8ED87A70289500391151D89ED889CDA7FFF8575A19E9B824AA2B28A9FF22A7B603BC6C91BFDD38B01303C2FBCD51D62A5FD73DB8305FF84D7436901D0C3B613B6BAE8216D15E357181B6CCCB325DCB1EC9E41F5282165E6333011AE090F9FE001A3A2D8F3E47C1FCBB651C0040AE1FD3A593934B8E838AD397BA115433DFF9F55E62DAE5D5F768CD6A5BECB121AAA08CD3F1E83F4AC69EB191247573ECC66C6C9FAA7DC5F97E3405DBF86A9211C9450C62218C5F14F3719B0A1EBB7E9128E8989070E8921EB4E0552339B34D02B2B80D12A966AB63562EC61688D46B3BEACF361793D9F2DF65024473DD785B8AD4A5B98FCD1385CD2CB78E01061D0E8E23B437022F42A2F8EA396B44C1ABF35B644EFACBB064345EABA265093EB75D6FF9371EDCE1D3EB1ECBB364C55DB41E0287554AF06CA4B0DB4875A5D2C8F1ABA69771790D792B06AC064A9D12854E2324A485CCF5A4FE6AD39C3A57FF30C8A83B341BBC69E9DBBB89530B2009A30B5BFF3ADF3505311DD291208D47EDD288BCF6BBFF26A2877254B4DCEED90A3F7A4A5B2F7594F02E43E07B635A4EE8B182C4FEF7282352A655BCB4E8D7FA68365712B23AD0BD600DC3D5F39AF26290A4DD8564B68D1C985CEF5434C461D8206BAC6D7C0D1E55EAB379C5A8B1C17EEEACE75590C78BC63A59E3A72827C0584500CA48CCFC2A65E16B3527950ADE1F945F1DC31044F0B56FFD1D372014A9B347D85D63D0EFE03D1BD6AE0FC95D5703DDDFA091098EA4B8228EC77FB6FA192C969343232C3EA5896D9A39503C528564D8BABFEBDE7C85C9BA14AEAE5C012C41A75450EE464298D6AF1CDB03E44211D2C6796BABEC9D335446977AA552A51DFDF7D61CC8BA4ADA1D5674321BA172AABCB7E82CAA3E497923DE2A466CA1E908B118B4DD07FA6FB40901F3D6E0D6AF3DCBEB2B678E44899B8663F1E91CD00A32F21C407965AA89CC3D6A43B5D9A4472C756E6620A82F22FDEEE5E4D416698F75DAFB1F4E19B4114B65E4EF6DE33348CC5292A67E598EB84EDD47841EA6145AE1A9FEDA9D2A41983AF77596A87083AB0C88E27BDE0BA0CB96B5EC0641B2C7B82455E3B72013FE5112E3CA8657E5A785FE8BF5FC2D2073BD75910A12215949867C1FD5A9639F6AA9640BBBC7E59194BD165DEA0402F949E8BAAD329F46FA16CEF4390FAF9B7111E2575FE16E1B76639CA0079AFBDD03741AA148754AD5D7DDE6B4321EE295003A0B23001A2CDF27F263A71876958295FE9B3721C1F04EA2EEBBE98BDDD7F0AF338A88B9BD57DC88710D28F573E2A2D905D713AF99D492C129B2D539277D7418B1D357A74ADBE27585C25BD2C16C9F39F66CED1F5472F2DA1B92C195B5AA84737C1C51A7A1BDE1344BAE614912654EF6643E3D820B121DD2631CB6D497AA826C4EB79DC98C6B8A9BAC431659610A6C7D1511A6FDA5B7769C847B59052F072B2AF69D47EFCA50F39AFAD47158BA81FE287D725D07003BB58F0ECDF7467992F63B6E413B932D70AAE0930E0F1FF762F3D004526D89A388C690A20B949F574D6C248D6AB42696437DCFBC9FEFEEB40742DD3C10D2F5F22C05E8E7C0FABBFA12AAF186A79B47F3C7E0CBCC2D0152FF2AEA736096537A3C9C1F936BA96BB64733907701EFD65A619C788B589A7F15702BCF2F0AF62857B9F8A7E343156ED3E483FD08F34957354DAEED6827C67B34F6B3461DFDB2BD3C8D390FB31930C3822FB7F694A22F3239D012F706DABFF10B03F0E66869BE4A435EFF24469DAC80754839D8933E1E781B965826EB53C47FC53BC2A85386CCE1DD07FED6DC16390562BA8362BDC541919893CC2CCBF5565BA3B37166A31221DE542D5B11EF0381D32E8ED8A4C8789A219721F821B38E2106CDA68C2C6D2088FA5B3D1B9C2F8C543EF40555D9F667186FEFEF64B54DBAE5A906DAD48CD02E0FDB4500AA492E7EFC6D5698DCE363563BBD606179DC7821B9A736C31F39DEF29F10E40DAFDC52D29B591178223B5E84F1983DD54A62981D8EAB5B674D80C70627135AD90C1BCBDC2A9BDC926653CD56078EDA264B9C9226FC4C9B549FC4CF73CDD41A7C26616755E7F8A1450F5236D1BA0C378188AE71D5344EADF7D04DFC122AF44D59E9C263A258739C34082D88C0760ED5067BAABD00485A3339E19AFA4FFCA023AC57C936FA78B1C7C04DC0D94F2542DFABB0F3AC3A7536D7D1384EDF06729FF08EBA1B7A7F5DD3F78F154F51F6092DB8DBB91F8D0EA81065F4D0C431276A68F416022BE7EFA82D735613025C3F593C7D57B15643BE8AD7126102ACE4EC9A82B32B3CA4CA9140AEC4D9F0172C7E7DCB22FD06E0B9D3BB1AE41B5C8A7D35E043E75F30EEF7C0ABD7D10BBE23847DAB51B9031FC61F1F8A05CF395970D66D2193DE952644EFD0DA226DC1858DF23950E1D871D93CE5D1008E5DBA83545A24CA5FC3012E126FA3950B6ECE8849D4AB945583614E3B2AFEBD234049766B6E735956E93FDDC17911129AE13BED1594C03D0F5D92929C3CB685172BAFEE4C9D0EF45EA41E453ED07DF0AEE980FB563D6DDDE1FFD0774120946DB1246DA6CE55C76D31F93C495E100ED6A5AFD7D193112BF1C068430E038320BE0499EC8C524580700909AB767DF81D86DEBDCE5C01748F010EF0E9862027EB951A5018C4DA0382B6C3DC8F76FAC6FDECD4A0CB9A2B34D48BA009947706D3C720FD882B7CC73405A308A6784D14389D8D781B819FF556F012E88BC1638C35C62A060F6C30FD399E963EE82B2588B4DCC001307E69CFD9F6FDF6E611B0B69F22E3D02AB78A09691312B6EFF74499CBBB852E412ECB166FFBF7C6D3BE3413A19A584C830CEA1CD5E9A1F52EB37CA558292E827787745AE7C7041F981CF94A513584B3486E2632C9DBCA0C5908502F8CFB53D002E36B3CF3DF31EC7DA8E79169EC2F39918142AF1788ECA5CD67E60E13DFAF37ECC0D9CC5FD33215F54253F6CBE0F72E655C53D1C318875D83E140AE2D667B0CBD4BD2B904AC6B6BC39C9B431A84D73D94E1A4644D25F25D109A7FE65DF560E07BCC96DEF81D4FA67D771A50C99A80B53B75E39FB7B16113898DA773476C4F43D69EC5C4B89C0F9EE0A41559004700836A86F1402169C6243AFCBB13A0CF722B67A85B020DFB57F9D34FCD8A86028A530F67F054FA672FED0B6CE0E0495DDB45C1308B67F05B57DED97AAC9F3C087CD065D5525FC9909DE4A8BA79F26966101BBA6DC997CBAB1A9B2FC5889929EBCB2D6CE8D4B1CF60FE18EF4110096151EB83654B78B1B0770B4F7EBFB47ED2169AF66C6570C71AE66F512CE87DC40C9F2C0E0E5E5E5887DD6C4DEF7B0E61E8E2BDBAC4927D9461554A1684A255B37BBAB86C26EE00AD27843586CC3AD15EF05CB3367BA063F9802E60C01D067ABE98B294BC517189A328C0B73B69BFEE6A0639354325E27163B2BD4F02981252285F33AF416BF68F81DB991CCA2E64D4F276C7641222712C81FDB111B7B89292C4FA78F76C8A9BD7363386ED8D5B002CD63F7C80DCA98F8F2C086ED00BB0570FD5F8305656589E567E86DB83089867A92E0B4C141D00E71B0CE6C594949A3A222738D5D11355D808B0D925B361186D4F23075FE362A38D3AE8BFD38CE21265F7E28D8798AB41CCCD1B367E279DCA2F50FCA29E8565AC7CEC5764DC88E366F7283B98049C671F51705663D411D3D744003A49A3B3D53F382659226CCE498713C9DBDA079908118E08BB78F39961E3E1FBBC8329BC809755F1C3178161BC7011A7CBF7718AC3D3CEBCE2DD720FB454CF087AA80C3890391EAA2D10E43CD465467150DF8D39BF42305D62D5642B362E4461ADA6A3C3D6E1072EBF3A9FDC2E79E558D169B618209CD736AC0763E1F100BF14ED582949F085956906293CF50DC3B078B23F717C63454DCF2EDC2CC5E2006D66CE2ADA717AFA877D0882809CC103DFBBB112E3293E7C7DB37761CA570349E07B8C5ECE29E59BE7BB9EA662F87782650AFB6B9E4B30D61B217AF634B90F0DC80E6DD60ABE6EF7270782DF88785984ADA2070BBBE515B0CD65CFD2A05E134613FF5E9271663FD6C1D9D01489AD2535E9B2D869AF61CDC7A5A62A2B35CF84C3C9D5DD7B20B932B3F90DDEE8B131F42DAEA24FB5D71414537CB78BAFCB0ECBE49F22316264A9A655BF3CD5CA9222522A4DCB985A9F8FC59264D205EB0E0ABD2974797FA1E349727F0ACFFA2C13DE54510A3C2C22DB848A866F255D77586BF7CAE2DDE55504A3E5E3E80A263DB3564841986ED426AE055358386CBE3367A7FDE5A474D43BC3735554D89221F265FF0DDC681F79187406A825F51887177B7862877A5B45728CBE29D067D8A6C71E8C3F5A591CAC6B638B780C37F762D1EA33F38D15DC024431B4A2411002E2B23979E7C5FD8E162B21276A45716E90140FF011C1A24681671F4ED17D2FC6DC01717C2AB64DFDE04FD45F1E5BEC95F202F54A78FB97CDC802B02B200807CC893B923FE8329A68A41FDCBAFF41852FC9BC8E7AD5D5842D58040413776B59EE1F30EEE03B0166823D3A2B1E4F0B2601B5DBE77D959BEA8CE745F93C54DB824BBD9D1B0227DB684E54ECACA813E377B70CED62446215D18648984A2E57A430DECEC917447851153A097735BE296A4A39110812431A300B5DF0F4687854BC19B13079075547C53901DEEA9E40BB666874B18675CAFB6489DCCBA1E0CB451CE673106FBD5BD0998ABAFCD3E4673C475D2932BECFB7377ABE977E61CBDC2DBAF157CB6C400E994DA71220774936C8BE7B400E4672B43B669B290A2D7D549D53806AB1E0241B74BCD1F112380B3325106B433EC1BBB9AF1FE5DA10C95661632EEDF0D88DE0163AEA3EC5381E361DFF44EEE7CCC76F166760F1D32049A4F3C05084E4F1BBB56856D2DE22CF2A4A84577CFF05BB6AC94D69562D21FC4DA5DD722AEC6A8C453ED6B3534165E3E28DEBC8AD203C10B87CF72387EAC7ABC5074C0A85AC450DCE12C348F6C0A55D7468C153A41E0E9C88D1706DB258596B950B5B4335F427B0A2F9D64ACD06D2138DFE432274450F2B503AF17141914ACCCEB362F3DD347F96EEE27FE35E70D40C59C70FF0A7937F6B8C36478BE5C8DD7D33BB6B6FA0F26D8EDE01D902A5A2C7F4A9CA7E73A0E709816D0922A96840B95E815B556769154F2ED939F29DF0F3E3F3A7F38E7EF034562B079F1B5B6A154383DD16B45EC6E3758261B6998DB2610DCB27088C37220521D294C397F31DC29F2C19D3B70267AAA121230E9E55A5EACFF0C5B9BFE88B74B83DA1E71BCAAF6D2A838F9387ECB744A944480C4058A2F0316E988EC56C7DF3B618F4DC95D4768BB80DE0DEC27B63631F1167D8362FA3763BAB484A74899DF9B197F28A02C489FA71B084D1EFD532A8B2E77A4307F1059042D1FEBD95E4F01F4C1585EA26CDDCCE03BF698514538E04978584CB9564CD342BF119190C405C2293A36F75B2378CF03E85C29889C82D6F031700D8A9EBC00CB171E42A5753EE3160F8BFCDD9C0701908E6FE554E69FD01CBC0477D7758B449A7674016FE2BCE8756DA160823A84A66CE94A37DF8019B2C93D6A4EAB7C173211E41FDDF31DAF84C998600E70926A28A25E494EF785BB21C61F0054FD922ED3A27FCA4085FB8BF892EA31961D3B43D146E86130943E71D488D8B484409C56D74E77CF8B2D7867007DB9EE43A0CB9F50C71368F2904B671B9FC03209B8F2071479512C4E4A8B8FE265BDFBAD204D016A79BA29EE6677BD3F9718BC00601EA26B98B0D3CA6D692E3B4BD1BBD4EE5FA1264C65100111FDAB2E18747589DBCE8A95A0AA52741585DA0FCE2690B389D059C8E8036822A9AA5BA19E81D26DD81025CF29C5F15BC9F91CAB963042FFC561B2F15E1DB38BFB4D508943A140A61E1A4D550A5E1A3B33F85E7BA06EADA96EE61EDAB269C82298D6869592DF17485D1D750D2F36DE8742CD2270DA1B939661F0193D3EBFCFE13D3BCE5BFA5A416C9C68672C824F93DE370723E3107C3F3F8035104F8CB95D27F47B2B1ABC30917F542F80F668A84B3048A9EF93B1DA6B1CE9EB9EA113383B3E7C206E91DE68F566E63D99846167AB3E00B959BD42B3BA1C9E0D83EF89743CDDCC897D8697AE63C5C177606447CA19BE90A958900131DEDE2816B7AAF3D36EC880609E949B2D07DC3505BE844581EE48059683297085311DB2ADD3B83B5D636F217F3A3FB2DAE769AE8E6302ABC3D35761B4D7CD1653DA8491601948C3500078D79BEA30E4DC28D3C2E8A9C6C67F7BEE958A062DBA83E8B5623F2382C1B373DDF5A17F06DD1817D85A6AB89E571E3CBF2EAC366ECBF44AE7DBAF0DC2F19CC1655CEF4DDB8B32F880D44FC5595331F452E53779040D8939D88E04F66EA99F9E7E2B5B3FB985FD683FBC06F4357B74B28F2370C0AD615F5B8B4758FAA4A92805B8B1DB56EF6FE4ECE833ECA711811CE87A8E1DF3F40B358FD1E6001F48D3D103C846D52C869B0D06D0067C55806E7F3A5C32E12FE2F12DB1C870B3986395C8BAEE31418BA2C72F238C7539CCB8A80405EE76DE2CE34729223C7FEC8F409AEFF5D471A76FE01CBBB5AD917120DBE022C78C08776F72B04C56EDB9BC3A35538D7AE44CDE5E4E70FBEB10E33B15807C560DE69ECF40E4A91F146A6CBFD76AAB01B755510086A2B6E77C52A9F98A1B0AB068AE7E8C04C6396FD4A34E8DBC9E49488A60DC829A30AE34AAAFA453DEBFBEB6EB88DACAEF91CC28DDDAD1CCD9617A6C1F89F6771187408D4280931BA431EA01798BAA3C7C2508932C76F36FEF4623A8E2D98AEFA5B8F6C44A1C13DEBD9323801D245E360A39F0F3AE2BB0464EC6B7490096E6413DA0E4601392D1C849F4A5FA9C7D497F4F716E1E3AD5897CD1631D14AF8E949E502F2E5A65D8B3F23813512390CF147EFA03333AEC9A43EC2F0C764D7EE8EB3DDB1009B7D3FE3566ABF2C588789D9F472974960FE5F0C4F347A8BB711B560DDD1D8DEBDD185CE8615B06373FED625ABB5DB15565833B60A547BB75A73F9275BC7BC2A9BF48F82D62AFD627339CBD6B2EDD1205B6B73F87B89358F1F8D88936994487DE5C2605C4F1A37080247BEDAC01F7535A5EAD2687F6718C070E23C884F49789E9394A1FBB75BAD8A0F3766B8BFABD33D37BD8E3CB61426BADFF804F977EF99B855C86E4B019CFE3A021792662218B31A5FDE64AC4EFAE68A3B48A93C6B4707DF076C9BD3D90DE9B3F1243284F43FBCE30B9BB00B554A216BF32A54B06E28A8BCAF2D986FFF58A4533A519BE9C9BF56B6802ACCFDA380A3EA1A749C9E4361B55BB44C124E2ECB1279AB11E25FA81073B6DB2B01BDFB6F0C689B90A4BFA826DF9A7F2B513130FBB054548A1371F0832DBF6B347C4C567BED3916D1A10188A5C1E07E4A85024F250529904A8BCAF8BAB0022E2C63A94A3B1E94998490BE660A514B3D78B3A1701F6A8E31837D5C6AC317B70A7C2B51A303D523061B22FF33AF4683ADABB58CEF2A0C9501238418E979C82EE4EF6B82A217DF79224B112306EE52B8ED193EB08C9DA5E20B2A2AF836FD3E9CF55810239C5BDACB7FD7E027A5D8F4D12524B2E3D5BEAF7F81C11FBB252EE799DD0F0FEC8579A5032FFF17D2625C47128B5E7171D4DA3D631180C9B02D2F509B77E3F847F6721F8F72CBF386BB7C48738008974685FC1F064747D5BA8F4A3610DBB5A13A3C148D44AB587E507DE05A135F2588404691884927E9BB4B04A356260202BC37435EF12223AE695D4330CFBAD73413867D1F4794323A1D292C5C2FAB19B015F63CD17B14FA5DB18D5DC9D8EDD498E445718845465C4B3FB30655742E8D4C8FAF1B4778F1530DAD392B1FBEAE9D712DA6E5822043E5E5B137438C3EDAB2B828E4BC6305F971FF67BBCF08F15884425E4968F3099988F02D9E2215A6E194257982BFCC6F5AE96936A111077B4C965E37BFFAEF8752BFD9A1F3A2CCC7991FC37D8E7D4839D32039118DF140390A886B92AE8A6AD805D3AA1791F3E7887F4673A74907A69575241B0122D3174DC68DA208B7490C27DA0CF0E0B1EAD68A23E92C9C211FD42842D28F71275554656BE06E18FCB3ACB363142470253B2D40E11B287DAB8D705A8F2B4BEC94A3ADC1CE72231738C07BB411A9D235BEA1056902C0E83B042B5062809A94F45965842DB5C56AEA31E9D046C77C9E14D87D764FE0E6C887DE519E9BA3B30F0B29DE6F90E808384F5095946226B9D5E44A0CE9486B8ADE46BF14A41C6CF536D1889F4C91D1028F5502B56FA66C38B3EFC8FF1CD855297A0DBF3ECE720DA3AEAA1DC628C05955778C4A2F30C8E6381AB70E2DB64D00117AACD1F2FB5579C249D291AD8BA5FB0DBFF38EFF8E9B50092F825FA9D33EC561F2069DE3057C5606BBDE234A2F13552F6C023AD4100211F0ECCA478E3DFBAC23B4CB2DA79A368F9BB354251BC22DAF7BCAD09C1BA6A4F88E6419EBACE91379F01F014C86105D5B65CBDC399EF30CFF3A73C29342D9CB8E403F04DB0BDDBB01AC8B76EB2934E5416E337F7C9E0902F72143ECC0E50C7B20B82FF5A672ABAFC09356F758F8E74E3093B61CB3A0362E751574EB5A50166BF6AD75971CBFD6AFF7AA8891BB783E06BE575267A7447967B4977AB061C704B0FC1BB0B8622A0B104695F9F377662EDF30DD5C2ACAD9F0A55BBAFE905B13DED1199404F55E71F666BCDE5B7A851D74F52624F9AFD1BBC4D14EC4C36D273F2C3B5AD8084440443C8B22F38B5214B5AFB9EFF6A2EF8822D1A83ECA260D885E696B0F1D84B8E9F4C02ADD490EBDC0DCA8FCD3C5C4D794BCF3CEA4A1ED675750895D12E33F82DE0AA674E9D4150D0161ABC5D1A21A07D7EBAB95BE849672A5DB395C6BE57D8654D64841DC169D0EF39262868E7A9FE365BCC4C5EE464FFBF1679DD8621EA8FBE7A5FF40475AE65BFD92869B462601EAC17FEC54026996DE3415B8D491382124840184BCE757A975F2E10598AC4FCB6BC7014FF5796955AEA79B81114B1211FDA278BF1BECCBAE95FD8EAA32FE439A4D46BAFDFF1A79E8F512B529D102D3BE109816B66DF175F70185B82B99B03BAD0D908B7C7CAE78156E09E6AAA40D5A5E8AC22656AB24A1F5F3AFC796E1272B10B52EDBB72CDF8F924963F1E171E39ADE35A08D09ECE4DCFDFEC36F42A99E5E95D541390674536592D1823885FC56ACB0255832E56029F7A586AC5596985F39166B60B1A4B1709CD625C3CB8B6D543ED4E9101438F254E957B432DDA17014A76E51E78D4BACF49A8BD392E3B709D2A0F4CC6623CC415835E0AFC2DA4B8BB7A2FEE2BFE6DE8DD0FE10824A1534B9897F4E9E8282AF3FD2EE8F22C33009B012B11ECE4FFB1440D0FEC19AF0FD6A1B9E938F5AFD06424D4F21F462CE62DE2BEBA5E1A232280BAF31470C9DE922E2313A4F64F6E400AA536D53AA70821EEAB6569671BC60AAF771C89AD688DB253E37545A0D3D1B21A99F09CE989E4980169312AE5BE8E8FECA90F2475AD8F7FECADC2D233E170E174A57F6A13C51D0A0A9892FCAA0B157910403475ED31933C5D6B8F28FEA07B063536F1202946730B406BEB36E17B53D4BFEDF217C9B9F2F03FBC53898D4435BCBE5B11B69284640BF8A137EA422C7EF181848F745C102E7BE58C016BC3319E05EFE7DE88F9F59F3C01E487017D530B8A9AB767A6ACFBF392844A48F010EF0BC2FA4E47CBDED63F49200D7665F05A45EE9098C9A4C640A1C12E6AB36AAD4B6F8EC9ECE000A04CA50D8E2757E2715C8CF6073B3CD0ADEF20995B0BBC958472B941482887B01F4992ECA9E58585CF68FB4B8CB852C9432C52613C0AAA89485F3DACF709AC66FC7F122134D914AC40B576DA4AAE62E85507DE7505E30A8601A2253DB11900D7FDB5A42A9700741E1EF66871389C2E016FA16F039AAC9EFD1864374168359934A05BD3A41777D7C503CE277A2E7DB63E130DFD1CD352A54A42B3F87F18696EC7B66751B1B926F85C76EF56C735D8CB7E06A10AB7E9BB86ADC2EB85173D69CFD8C19116DB95675A4E2239BEE23FF5030E29782D0497FED4572572B5C09F67B2FD0E08C5894AA6C11D79551CAEEAE8E769A111DB0F04875895274A83683605DCFDE3A805627F8DD7D2468AD6B36FB7E42B840DE27AEFE8B2427874E53DBC4177BE008B0A0BDED486C164A559F18EE727C9C99B7E6D1468B39F7C9210FE2983755BF999C264998094173E21698D21719672FAF4EF3C454BB82B57B9866BE3AC7112A97C13C7AA934BBFF1E6D948177FEB855C2C5A7587B73C27392F6ABBBCF47A4D379664DBACC14E7E861C602F11D1B3DD1D272092F48B48996FC1D2CF4E611C8633FC7FF9F9DCA88494073B1F56010F95C131BC878708FBCE5577B82743B089D548AA1EDEF7CD645FEA5E755B45C048B7C26A53188159A242F2143E3AC677307C037F904C2D2FCD3D6230063C564F1FAE0466F5ED68FAF96F2BD94B0627D9F8BEA2C9DDEE4605E1A55C7B104B6869A95CE485E2F789B038490664D1691A693EA85DE3F8BB481A3A7FE3EEBEF38CFD0E0D6DEDF1EADD330B1B66AE246AA21C2186FB2278F40144E37E8B5C574F9D7A7B807BCE8E2ACB8EACF72575150C4077706EA23D172344453E17E1EB1BAFA7C5C85D459409683C9CAF982EDB85595CAE8686E1C029CE01BC5629BBCC77229D95B35B835AC279E0E871085D65524913A5C4BE1B955B9292D2E309A93B21949D6506B18F0D8B4525D18333ECB5B7F0061F5AED91F20D8745E0D47C357464745023597133A183021767EC2582C1998247CDFCFFEB3149CD81DB2D6B61074473258868AEE979BFDCBF77030EBF9F95A1E8762BE25378FA273D57CE8011FC998038D3796EDE393B0C83AB3E5BD936895D3DB1AF983E4A007C9DF724B56B509F2C40A8E71E904806C51D63B68130951E8969996A49A22EC6F450A01925E4B2D2CD8DE7F3BE69DE8648C3FA809DC6D349D9FECA84DA41A739476DEF056C510C81AECF112CDD0340BA86284E2919DCC41D750E68CDF5AAB63F2C5E7EBEAE40AACC0FB109A6B84DF7953EC9F5B0D83FDF19155C4BAC7CAF0DB74661553277D829CD9993D8FB887516A00EE4547378C898B835B4AFE2CCAECBE079A1C4916C52827252C8752F861C4CB7D7C0250F974973C5C3CF4C73D2BCCE6E9F4DBCCFE23FA4015634CAEA4894BB161B5BCD7B4EA658EB7F6CD129B4B4DE5A35C8BCC10442A1F94756A745E5DCBAEAC3C2E38AF7514FB141D598C0CEC652B5DF77B25208A3BE96A144A22D56713035AB2F5C977EEE0261E439CE63724BE5C36D7BDD1F01BCC57841DF35F07C45F41574F274094DB53C7CD5E9C44C988DEB73F9A29204446E13E30CA4AB39E1992E563E63A1DFE65BE20B13AA29F6D0E18F881243F901DD17BCD3AF50A888E149754457498C00C9A1471C7C3C25C28FC336020FA8411BC3E3DB26EA8A2CD46ECB6DC954D6FF7B47FD0009750A6FCDA790BEDFC0700717EA30B61EB0E59C024F2CF48FACB6EAD6F9CAE3F2F2963760017911147DCECD098279810D091DAE7A43D2F9717075BD291EA7B357F1FBD4951CDC22B64122A0681B4BFB44091B25C7285253A529D7B5C5A84FBD14165FD8E06D231B19E0DF6804DB907651F9B13938190057DA7C60918F4E248326C5AEF7E85103BA4097FB64EC06E9AE28CB9CCB5C3F251490ECB7DE758CF1C20A8DF200203F3C650797D340B5F5BC68EADE188809F760CACFEF51E597103CC82EEDC70E1C7DACC19CB2259C1499D1DBAB36F3240ED96BC259C94FF32388E5F822DDE4E7D381B54A6D0C2252D707035A747E4A79E406F8E7E8C7F175B3589C6DA647FAB6F241695E66D5B96B660FB46DEC08F9F18A348BC96AB9951D05F31BE5D33229A87B14DDC1E44C57462C6F8464A8282B698A5EF759D258A189BC597CA88C52DF1FF2F7D38173C059FC66F3D6F375B6406BE766641FED9DBDB09CD9DA02DEAA7FDCADECE2187290F969EA7A65AFEA79D3CA444557525E14D14FF802C14E81219AE67069CB923583F5258FA5E0235CF2DA061A188BFC1F67F8395F81165669FA04EDB1E5B8FDECA9DE3ED1B651B1BC2C07FD7FCB543559F38B659EBAF966450862627974B0151CC2D75DD2D4B61556BCE123CE4C2873767D81D3FC171BF3E199D033A5B682D1C29781AF03748F6F7871C11C366600D43A5495902DF816D4DCFF0BEB45DBA45A690EB40A4970E60E83A30E6FA6A91D4CECC3F41F70BC0307E9A62CC6BA3B26195F915720AD6AD7AFE52651A56938A39F8FB65E957201D634121FC84C4C392C4B0B8114560CB4B1436DB01B0E7644BA5850DB822585B97511B70A86581ACBC93BB1D980EBB0387F06B1B0A23823DF46794F2CF00866D1D6153A772F04FF2A4ECEC06155448E36EDB3641C80DCA23408A3AE9FAFFCD2124FDCB2849C6E00A878659BCB06ABCE7F3FDA5A7C05A2F038784DF41F2AB57E866E2DBB4AE4C5AC67C49C4721B93280941007110FAB4D31A40DCC15A01C0F114E3C44094BC8FD627B5A0FAD04BDBAA0B78158FFA302C94B2DF09787388E915EE8C96F92D2AAEDA566FED3D9FD1EA952C2B1FD42E493EA688AAC7B56032395EA9EE896507B30B755EC6907EA7C8836DD7AAE4CE3122CA85E380DF7804B097F0EC69FDEBD6AE243D8B03628DACFF883A89CDE4E3E86DAE83B0D8C46E4325405E26AEF46781F64096D5B994817A99108DC343444A254AD3A820E701A71338C906617A8EC3EC7EA9D9942E511321783E2954664CC351062828ADD7F0D781AA41F21A3C0A625178E4B4F9F2CD69ECA3914464BBDD7CF65D17E5630F00B7F371BF27F76CBD620CA0E9E3993B328299003A0D2F5545C7DB0516E9256567F23DF6370D8E64BE00BDCD852782B8CE52442DE93DB9ABFF8F197C0B7365E2505986586ECBDF3D9D11EAA2D9858BCBECFEB4F3048356E39BD0FDE5F6F720CE38B669A250D3857AD28CCD80D5510069682087345942B72D9BEA6BA07602F77B47DF66D1683B66273546DAE0CA6C5A696034A2D48230FE515174EE4D4C21A06916C17CF1F247D5CB650475000BAB3F622B34D583C5D1E961F568210C1D7520A408E42AEDBAD11A7F9D2829255190BA94AF6044C66F5512518987FBAAA98B5925B1C7B0C9AFC07BFCB68214AE64C4C7511DD6E71F5969382BEAEC43A73D69065A75858F614CCE9D0193B5656C297AE22540F3074FA1AB7172BE594CC40C8EDA8EA9C029F654391E41507588F34C7C935005C24D6D51D98C71CFEB6F64E05A5D1363B6FE9876AE2ED77372DA427E6982B253F51AB223DCD494AEE1208EAAAEB9572FE537C2456465723A693781877E64E050716947B66005491A0FE35424E572CDC5F5C706445ED029F48CD0BFF24E9F0F3FBA37A802C26B8FB66852108B58EA2307667EBFD2852331684C06D796887D2D9F2FF80D8472DCE0D68F9904B0B96C34BE6C845ED77F15074655DB75A2D2FDC0E3FB16B5D0E4166A08EC7CE7E222EADC81052AA198C410BC3E7F42C31DD41B354D6B433C763467B8CDC22D4CEE8DF2B40F2FB176527A874ED559C603824B980891C0D63A76E29B76D52387AD9F161CFFD91F1B27E2CB33B8D968BB8C54ADA0E77FAB6F943A59BB6FFE894FB9F342D50AE9C6B6066EFBC6A3B53C15427CB26F2E8AD58795293A67DD802DFA1323F496F20AAAE6F2C307B2F5CA7FC1E817DD0403FB7F5163E1307EDFB4AB21F9EF4D5DEA2C5FC5F97294C7403CED344C3A8640C7C877E6CDA14E6BD164A4CAF8FE2BEA0AC99EE096A8DFF0E98B4F079EA4BED6BC3879BCA306F03A08015423AED4B4938B4F86A8382DE2E7B9F23ED86A308514AF8244920C1672C96D56F97E545801F62ABD03C475A075C97814DA88FF6F7000A62585258F697C1CB27D6DC20C2D0A85EB8C91604985A3E80FC0ABE29C87611A3037E8BE4E2E1E890D73725EE3EAA6D87D1AF08CA6573EC42CD1EE8E319F2286FF0EFE42123CF245582B135FAD5DD6126F73A8FF95C999468A79693FE53D5D50FD19941384F0F9E4DBA45CEB49ED54FD4CD5141786336BD1A60D499E432AF436B45181CE07A2DE0143CA64D33A5166B749C8C34EF90A64E7AE5861BBF2E3815D1B5918AFF642BAC8E29FBCFDEAB605159795CA426973EC2B674F44463D8965378572CADC4122C0288A1657B24012AF41A82B5BBE9EA09F3D21B29BE15B355990434CBADEEC168685BFFA7DE050ED985CBC63133BD3324F53000CE55830BEA5534152A5B2EBA22C108446F756405E038A4793798EC972E2C1952466FB2CD0CADA132AD6D744E58A2ABB6B40E3DCD0ED9A04FB4875939762887862477161C72114F57FFF1AE7C47A7620D1B2DF7F1F1394B98CDA7BD7F5DDC88C08E3C1FF45345B21C612A67654EC627EEA0D400138100245732530F0312FAAC7DBE89BD9F4857832CB7C293E5A74EB3D386C8A03853BDC8C717F002950CCC10F4CAE73D3E19127E0639EEA34C1F810C5794688132F1A0DE221C5E6119C7F47B07809734149514334A64714DCC1EC3A01DD510A00E24DC8550466A97E8FF7C9F357AFF45601D841D49A845DCA2164AF4BB5E3EA62DD2033492A07FDAA1AC9BD5B168716226359F17F243D26DBF85F3098C168FB9C1ED2CD824EB5BAC0DE81DB52783CB18BA1E3234246DEC6A8575DFC10C7709C5DD0640917C90AB8A274DD6C38425BE84DDE28EBFA85232E6E13F01810E5E5B1088F065F06C0FCA0CF35B80B16BB8FDC972A315D9B0495ED9B7C83D1605DC8331D641FD6AA9D95731A4B65D182FC758DFC14E65EB4FC5020370788E5FB589CFE575FE9FF99BE418D87566E627EE3090675EBBA27E324602CDE0B5EB92555E3D25F1ACB86C1C547029D0CE24E82E02578951E556DA9C680EE8641590AE6F4206786E85642B317E364B348FBD0AC6AD2FBEB1689261652FE785125839EC11050976C9CE52179E57D576F7A8B22BCC8BD2FD8A6E2557E4A586CFBD5E9C45441AAB93493044ED99FCD45D2B07E4535EE5B4AAD80E9D18053EAB871B0584D0CE41B6C65CD8F40A0FEE835B736D76E5491602C1034AAF7E07F2945E8F14BEEDCEC7CBA86124F98648F4F578914B78C820C16EC021F510D6BB1D7F876D43FACCFE650F9ACE5AF141EE769B71736060BEF45C380AAA145121361FECEB53DA49D1DE800460D303D9E5062B76D94A54C64C8E69E807BA5B2ABACB571BEB8DE41694284D0BE2742AFF1A7A82F0D4C9735B5BDA2C18CB0E00548D6EF99383A4FD1048E55E3C80572B14C73F00DCD904C37310DBD6C89A32BBF75E7DB82E17240269D53A16B4BBB4FE99858A8CA3186792A27A1005BB91111CD3F3C7285A9F7A593AB0079F1B450569F2E675EB955C9667C77363C3F4C9B68C6682F7CDDECC11E56D814D182C49E7A8E8FC23BE9D44F97334837C6FBA903679AE4E88E85642C3F0421D3ABD8394E30413196234FFB74E46338102A18883463BCBC9CEE2EC4E68C2184E951E9294F351E7CD7390B4FD8F699E72B142B62E35DFD92CCFDC432EC21C32D643722CA1223F14CD75B56806FB51FE5ADE1958B5D7748A6CED267FD73E5A9D1C5357D0C55397989C272C527C8AA09ADA7D0A94442188606EFD2D861DC0BFE7998F8B541629A74C1B2320E8FD5FDD5BC37F6D39117A44A3887FCB09FF1959EC69275C890E5C7EE4E1E65159D5911814CB75735838C41140DA85EB5CEAF39496279D73FAC5C21E3047881E29EF080AD048B0F94FD18740D014C50E20867F4B3371FE5604F0EB7EB90982EAD3EE42F4CD90E4779284ECF59AA2FC66E97E7FA2614DD94BBF4BA85477890FD02A3B72B800EF45B813EC8253D1015BBF467BBF79D8A9190CB5B2C7D80517BA9E46D8930A2E40A821A574D5F18FB886D3E4640222CC87B9940C962333AACD145DB5CBB4851B84D0058B2EC4E63DF8679EA9A1D93F59FD13D2E206C7AA2F10E211300E687CB8539F70650B2651E3B76869C7417DE21323F424BECD6CB6A8976D1CCF28F3AEC4C17999CBEBF4BE810D658AEB97AFBB5D465AE01CB1643DADAE72F6C11F96180EB0943EB754B910E4635F5F16C6C464B14C21EDC8B7C2BF92639CF0D82CB7AE6E7A9DB387530E90F8AF971E0994F6206B65C5DB97FA672198D209BB3A1EC4E5C764E03720773310D6AFD4634F51B75FE2022B6F88D612FA4E754706DBC9D8EF7975E5A6F495180DAAFEBCFBF90E3F9C165305B2CC51D9CB131D9738A6E79C9F2B764AC7DA3835592F13D07A631F8E093ABB24F1BDEABD706F259C7D14BB59723EE49EE2B16E8D04E2082283B1E8889C0033BF9848601EB2D2097500972EE3899C3980881B702ED227BB04B058749920C21E015A667A4344A6E095A54E3F8E2939FE6FD1DEF3608E65ACD8EF5FA5F17358D2CBBF874A9D7762CAB58AFA4016609454DC2AA18123ECB1C292C1ED79737F26D3867C4D6E25B1F28A337FAA39C30F34675557B9F2FCE65FC7EC627534FF74BDA4DCB201D5A34FAED0FFF09BCD57FF1A3DBF6530F998B4BB26AFCE3A624355D46EF5637DCB7D727F52D81A1FA004CD8C77937B3F811B703DE39A54F73C084B8E5B7081F659B838AD467AB0C6007DAA08B32A58B312BA94428EF3529C656FA85FA696A743C9273679FB765FA4DFBAD4FEFE50DFB7D237E5022922D9AC787E1CFDA2C7B75919A3E79CCEEAAB414E0069E927E20165ADDB9CCC919333EA4FEED8AE1F202BB5B52D9FFB7A2812E237261BD8F9BCF189ADAC92284B29212A8807233DBA4857DF1988CF8AAD9D65D4642D7569750822DD29FEF42DE813CC0B226D229E0A3AC4A3D8503B32694FE886AB503AA9644E565ADEDED7DEE756D04EA122DCCF3F77675707CE901189AB1CEC589E21B367095FD069B0DB1334792AEB7A84538BCAC5F1BEA2FDB51AB897F3201B83C418F9DCF1B983D8F4BE1FD75B031B088C64B25C556C86144A533A89DAF53E1801ED42FDCF7FE7F3D7D6EE25295C46053CC23F88E725765CC0FE90349DEE34D485653D3CDDE350A84753C219D5D67C6CC13F20668E166BCDCB4FC09D2C12029E0EADD0F255C15D0E37FB2D306B32E0727D26E0EAA5D45BA571C2F2DD93C9F42ACE0CE083FF3A37CAE790491F3D14A823A102B8356EDEB775F615F40C79C51F35D5215D20D72CB452726C2543A0693ED8CE280F58BF4466C3E2CBDAC73200A072FB089709F8444930A21C852A0A4D20A46690930FA400F902D6EFA875F87372ACCBF3B0D51F07787C2B8943E3E5CA1E93CF11DCCA5F866EFC7824E8C7E49D2A15E4EB2A4FDD51F791DFA39644B16F197D01DE33A9EEA16E7CB95647399A7F337AA97E9BE4227BE5E175B764DCDABA5A37E04EE9F57B73A725495F95B52497B113D7C5880CD52CBE0C21F3719ED52B9B61B71CD7D7F262BDC32683816CEEFBDF0EB27052E2E897368B32619E9D70EE214AECF00C2CDB7B995C6D844E0281DCB26D6FF2606A869D7954EDFCA1DEC3A50D1BA14390ABD818468D983C8BDFEE27649C4EBFD9EAC6DB08AFE18666EE31BA86A1AB8276BEA6774823B814BA70A3ACB3AB267AC56E80A515F328401E6867628C1687723D05227D6725DB302CF8A05DDCFC86C2C0C556EE28DD33EE22FB212A84DD2701825ED9E8B63734C13E60A0000DA2510D4ACFBE21873B819CD571986B601BD774480F58879BA68059BF7896225B9860C56B124F3AE2B1A734CA1B93115EACE077CDF6777DF1F71CCAEA0019F078DD65389C61FCAD630B18B5D991ADD1E7EE8F7386AAEFFC6D093B072F3D10F6698FE0CE28CEA29D8A6AB862A4A23C1EFA942954E4FA2FC85C952E942A040DF190371F695FE8CD90A62E280D7AC1F96E6123CB96C3F0A4CD460A045C3544073EF5250DB4AB55B712DDF6D8C39820730912387B71D95D6DF4631B865EAA74DDC179737A54099A1E7C287354D17E75ACE72C30A7EE1BDF36F2A2011BA8D35DE8107450201E4DB7D4DDD1C9EB9C37440FD15EF14C2ECC2D03C4DA4783C4E0E864D7A9BE3EC3CA087C24447C66DBBECEA515A4D8B21AEADBFBA91CE037E7A78A6F1B68483DAE9E0E4CE9059109BC209C5B347A10E3C3685C7B0B5510A7B0741035CE46A6BCFE4271C8D630AB64A289516899BA8341820BCAB3C700BB95F7A74D7489009C90F97FA9F829CC6DF8C20933C9D6299E25B1F490F16BCE38317D0C2272D327D3B1FD8C3A556E9E6CF8BFCCE0CCD95A22028F2BA362D9966D5373BF5851D5A214DC83B6509077BFCAA1A29A34DFC016602DEF74BE1F5BAA303275C0299C42EB8218AB99EF34788F87F7C5A17B2A356528DB3D8AF997A824B1AA197BBE0FAEF3FD7F2C41FB544AC435C586C9D38424E8EDF504C9C9E22406CB5B3BB7A4653BAEF3316B409955C4F02556366AAF5E589DBEAD80898ED79146CF582497D680E7D5787D65776B936336193F31FC2ED6122C3F16CFF99BB05BCE8C5413DE6E179BEAC50F0E6BC3AD33C66EC62696F223831F56622E9A1570D964C7B13EE983FF4DE03838605B5B0E8C333B10DDE4A867E32F17A3A7BC5E2B2E3AFC6A02A5C311CE5F8B5B12DC928079F870EC07E9F7FB9E63910E79F201261CC6B517CBD773864B1E88582187F1BE630187091BB5D7B799AC2C3B5204E2F4E544D68D0572FF3C9CC0BE24E1BD7040747DB31E06A83D754691E40B5E7FB0E637A889ECD6992D3F0FE35D31357AF87E66DE8F8CDB6FB3C9D1A0A70D6C9F779CF00919BEEE4A7343744F858FCB98A0C8EA399174986D2751B8B24EC3CFAE031CBAA6FFD19EA413E370E269833EEA85C79E951475357B5B4602E9290C6580D85DA014B1DAFD7A886DA5BEC813904150BD3DD106D37CB2F61168FFA18E0C37CB77FD5D988A19D101555FCDBB8BFD21F63E2141CB02A9E98B80D962C23E6DADCD66F56778C68827A0BFDD34FE3EF53CD1C056ADF7141FCDAB60B2FF1F245F4F9A835FD316A8786B886FD60176DA324353989A0472640165F5DCB233BFABC87F2DF1BA1D5BD7190FA070A181FE67922025014EEC7C8C559BD449B9BD33E63CA050EC1135C249664095C2E7F3610E39F2A23E0727D7C52D25D9F455211671BDAB2D90A06FFC8DA6F305372EA5D671D0436C829A80C9135F7C5F8C0A83D4CD4100D70BF52E4AABC9CECB7BB667606A6C9C429AF148A03450161B81580FC44F68DE0B0D5D375D87B0A401CD17403CE351B0D800107A2A201C9B5DA1AE777AA7C5E17FAD1B98AA795EFD339B7ECFF136021CBFA7DB69C032EAB46B1FD203BBEC8E48494C97B1F0E578A1BEAF7D98B7D93F9F41B02D5760FC169DFA68C7F9634E3AB35C473F1AF859EC60CA205D1A65CB5A5671FD6A9E696BACC594EED3905F4271B821811FA1E54789B3215A4F3E28EB3E890639034DE266B5F12E7982640E7945DA2535A0CA4711F3F9988762EF0CD929964FFF36CAFA4768C45C394B911875D946CB7CF51BF5E04B84B0B65C2F11A64E9CD2E20C2BADC1D9FC32DE959EBA6393B76C75B957518E66D080C606196C1A7B641FFC820448A0E4C9D09176FA1FD5E9DFE313B8CA5BC0793FCED56A9CE1CD59A1DBDAB0FABEB9544769ECA207D4E2B4A56594CB1A026265C1B28ADF5FFC31962C9CE44E13326AD11EB876B39953345B7FE133A56FDFA4D206D7505096D479C7450974E1117F8D959313FD2FD6E2B5A9BA5B5D76BF7AB4D2CF054E74988206454B094093128A1E943B69451D2FB49EA71D821DB1F2D25344FC75CB914E1D6443C6D6B77EF49BC2183858571CAEEFF829AFD6402BA80CD922E4EA57096EAF065E7FD3770274FCEF7689174FE8F434065957BDBF88B108FA072037F32FAA0C66C335AFFABE01863ED017E13CE12BC665C4D9EC4BC593A8025D14A4370494CB1E72F82A0016501E013FDA6D22B366A0E3A9FB46BC6E49937A5A97D0E25BEC22108BC9C928C068871A708115643301BB64D6519C9E0439CCF9D701936D52CDA7DF358238A83CC1FC19D784ECC16718B5C6EB6789467437C57164FFEC71079680C06DB274966ABE33F3099F9AF6F1C9406972B75998A15A4ED30DE165F50734A97E27009DD29BB06B794893A805F7CD25616938C117AF9B7EEA9AC3843EE955601D8F918C8C306727F6A2C8FDB1B96CCFFA4E5F5C922ABF8F824FC53FE49950766FB7EC60D2E4B3FE3FD20FA7C89CF83785FA777BF9AC95EFA565DF3F287A553660B5ACD6DEDE4231B972D3A2E2CC8882EFDF33D2CAFBFEA77D5322925678C1C9E4C228A3DB51827AF4B86D35EFD3EC5469209FEE514AE0F14D0F45E481A9638919DF61B1923F38E0DA7B2A4E22296C2690991204F22AAA6B0F544E2F863E329213C6C2263E5DCEF62DCD2088A0B122E5DA7303A0B4DD5A6CD949CB61B51DB7C7F7727F80C8D03A4238BBB0EF8C1F7E29EA891BDE053F4E443D1BC3030E5FE5133921E8DFD375A631E06A43D448EF384272BAC8BC10AA6FF8F3D89F1AE76B15BB1E805E970D56DE39AAF1A77A7C77D235EE89C444D1FCF316721416BCDFAD8FB7B5E6F9C1BA4B0ED2AA5295F3EADFD819B19DE20D18E503A2098894F2CDFA9DCC97EA1348066A5303C403CE033361B1A3332C58C085D3730A3528CAED308C9615417FE44675D9ACB3FF7EF01290920EEB7A78FCBA8069356E7724972538E1DBD32EFF0D2FE7534452CFED7F7276C04D940F002331D447F23A2D3210AF0881133AE3DE9FF69C29D83E59B8FDD1FE8F47F6567E8A9FA7A555CA7B13A472CE735171C4CBF8D7D121B9A79635317117B0CC5E5E1A34E3ACE51EDBFED68179D034097FEB9462E39424C7D8D58C56D2B7FB575D109B709ED8379F5A5257E1F2652CC2B99896D64B5FA666D0600139EADF3BBA593ED26F47BB9EDB899DACDFB4711348CAEB9BFC909254BBA81997E9E1A874F8CDB9A53B425815D7DE3CCA2FA1C43FEFED58D41E78A689DE4C22B876BCEF5E7E1D04EEA481BAFDD26D46132F60E017D1437B83FA0E111D7C45198467F3E539EFA6CFF8D5D7E2B1BF3F9C2AE00DA8BEB027CE2254A15DF12743F20587408FE1322BA975860074DA7C85BB0A99B250125B1F5083D6F1CC593814CB8361ADDD096A84AF10E80096AFF0893F961A37468963D9507BF3C71570B23AB1C8B00A0C5D479F0ECDA5B12919A7C911C24031D49787599C50DF0F7996EC1C76809AF1F45C34456F3289A6AD8C238AE2DE0ECB5C1B1C6E400C62A3198C0EA6F78B094BAF58D1FF0476178799AE7E74AB3C2E461B45FC7921CEA99682BE661C7493DE0CFC7E06AF2A681B58AC203A0207010B959FDF30BCB57B05639C163D0D2BDC3C25C5B514C0BB5625073E711BC26852FBA3A0BCF36E1C6D7DDBAEE501AC39E1A53964741F6B5C466DF4B7BFEADD5ED90E97C9CF153EDCD1DC49CA6233C086D7C9BF96A9BA19B8C1343D106C5A0025B15F3039AD43E1A6FC288794495B4BD247D8440D567FFB586726FF139A2E3E56B63373821C28497B5234715A97F46C8973C337E9B02FD26E2A6C31E0FE5C89E7411B14F882E5D8C1C94FB46FF8EDFA530D94D3A596010D4E997630C9BF49FB7988B8058B3261B8E0C6F88DDD369F8DC31ED2741BA46A29F0BAE972736D7C11AC26D6A027766738CE2D1BA640A75D95C4527B06FA940E03E53CE8D5CB92CB9529AA4D8ABB786CBDC09FD1BD9745489DC58C4649B83316D3B91BDB99FADE0B51AB68BAD4533903D1C2CB8ED9B97ED428EF5D44318A51844CCB0AC8F51DF04BF03C8576E2502DE8B42DD6EC2AB427203DFE4698744A57E389AE6A025CC78A5131E1BEB1849F63DB66DE48DDD71F17C3367FE3C3689136F6D35BAA4C648343A58202684ED8E73601F8E4E50A6EBDF18D2D0B3222FCCCA48C2DB9A1CDA8747F22373ED26A8099CC9A29E7866CBFC8835DDB12CE6625CD9A9653E911C79D365BA37D9722D2D9871D65E6F979E0525E15088EDCC5F31E022A6F06194E495E26656595578C740AC1E4CB673C270D173190AB5574F9DBCA78089A876C6773E01FAEF109B55AC49A802FFACDF3F55DA7F4781E687621F0F9C4BF40A3C4262BA70103672BF9F7FA7D24BA0B6DA2A1AB73B57977900261F21455484B3339ED43D48BA5AEE68A8C7632E630BDE9FA498DBD2B03163474B50B24709B5AE4F5B625EC072D6CDD9081DDBDA9AB7196A45E0F234107E2E1932835E048747AD246EBC86C56A94606CDC4D4E36F57BE44F91111B7C594CF2707E9FF266C374BDC52B7355B0ECEED289DC5E8A905704C48152A40E8442F6AA2A2D902A321A33176D5A9E2535B84293DC644F2BE625E9B3F99A13631963C95CD13B43E737F579ED03D59DBBA62A824C71BB07B2CA6B0CDC783AA17A9B9771A94CDB8402637917B4C58BA5D92AC72C7BC686496A15B4EF3C21AC3BC3DCE808DC6E44FA75A0792DA765E5441AF4CAA30C33AC85AE636140BEA5CDAACA29A335A8E4327C31699F11616EC00600D1630CE7063F796328CA0FC8C3B0E09B3292E48BACC8BCE8FA521605667CBFD37FAF33F96D3F1446342AD9C9901D6FA7DE5D6C62E6724D3C656C0C78812E64D621FD6D93A9BAEBF934221E889E9B07165089B618FFBBAF48E934062F22465C63473033648AB3BA434273F6AE896B3C155E05A8A3EA6256FAA37C72C503E69AD9EE8174CCF8BF9548D256799AE57D22B877C7A0C83C430895DA3669BA88724329F10AEB803D9500C5AD559175910E26890A03E9EEF2CAB1F96DD036C959D236FE3320A0EA23E9ADC30616209BC5940D86A9473C4E4C0C3F57D6266B52A04E731B7D1A530AFD78A7C85433CE6E338825FA3DF14C17435FBAEA924712972B489BDBC6FAAB07EDE2844DE776D6DB6ABE5E5383D98519589C199D2420BD99F4C72B407B96F186159E5EE929F4337D54AF997360D329F2A7B251A63018182556539FE2C158E1E2ED7C00C34B804BD6AFCA6962CD6AF8EDB4D4181A256A77269634497151AECFC03573DA3EBB3F626599A0E8E924D6B79E47A67CDA46B5FA751948733C1001F5BB41C3623FF67C9BD53B427865ABAC76009B661A86C46C56B67252E409A9DDC9CB5492F49C79713CF364D5D0D222C025371806EA4A6714B446ED7609727E04F2B0F172F58237C7AA31C017DA0585A3C2577E9C8A87CEDB1D0FD06B3202282562060012C96761C6FFC643DB42B194C4BCADCFAD0633DB2CD0ED8BF18F0EDC8764090AAD35DF60415F10090B1381E21B0035D48D8384B7DC8FAAF96BC3F43ABCE53625D218C8637B13558B06E33CF6FA7A9C93DA2FEACD0FE8EC8534E5003F9C13FEBFA979C0094CCA6FE90A48F6618DA44F2218930EDE1E2FE623ED1D6048B460524904D561C15A004038083C0D455ADCD351A471E6425369D9355FD9DAC3ACD836D018F6103D6FD116FB1D1E013C8CC4D6215FF367E176EB4699AE188A4F898E329002D89045E9608BBB0B64574EE5607A7ACC7579CA4248BB905A56403A2372257CC1A25EF2C194BDB34C45ABE775F3CFF1D7759271AF9A60C449BB7E13D4AFD44710F485DECAB029D352C9ABB025A5B1DD9A03E12D5422DB125BF9643FA213E2CD3C190C32E2FB73FFB5A3EED322E70676765850816B6B1CCEDDE60782F5FF5956729BFCFC4DA2DD16012F2C535481E73EDC301DF382E3DE4D75B34243531972A37130BC8BDFBC0308C376F8AE3ABC288A1FCFF5C92A8F03E08439BFC9D6E30530678C1E0EFA90C60064DEA31E33EA0E0772890611CC58C2D36A342F1CDC3A560946D18DBCFBD3D32541BB0F6B68F25E31D466710E393EDF27D47B206E56F86FC5AFBF95EB9D6E09B94B0328C30485C964D5587DB460047852B234B48E65BB3BE2CC19B36AA245C61AD741445E982061F23AFE21E5CFC6056EAB703E034609FB5BE0338FEFF596216D3E47A1D2F37FFC26A21EFA2416032EBF77CF6802885D9904E7EF7C4812B253CAE5A00284E01DE283A109F73BC6EF4936D2002E68DD07566166B0DF04417594A8B1E2AA316009DCA4081E76EE0175E8D01BC29F26D75A0B10DD639D4B603458F821EB5DFD22E1AC209A4813EF6A985CEE436E1D16A07AC2240E794B0633FB5F47B989D6DF3CDF7163874C392771ADDF688B6279C9A7D7D0A4DCFEE19CA7C6F93C27824323AC5F08153C1F59C499EAA8AD0A1BA67C41FDDDA39DCAC6494F47EB5E835675F15CD7F9D8DF893C155DC979BD4EBB10CFEA3BC33D44622CA8D4455C2E168FF768C58B95A3AD8D1627F7124076DFB5E89E0B8A0480DC4D4CCA143619B853447F8FFE4E1BCD44705BF5A7FE71BF8E66F957923CF42540CEE3ABDE4D161A8AE5A61440B7756400ABBF994D87C664ECA7009EC0B0E07D366CF53D845EF8B754931AEE7C58335834CDFBDBA9D754F822949C3E6BE61D2CD385C84AD4D1D8F56277BCDBA80BAF1C2D04ED5D289D20EC27760032B3D47E4CAEA6780264A771A870DF95E2F68D35B73A0B760662584B6A161E8EA7D54FAA863C163C8BE404597567A89E4E9DA52C35718AEC85145289B297E9364DAE41EA3F38380613D66D75EB44B7313B4A07A74A45347AC576D1E5DDAF7782CAD26ED7D6C622E176EA3E6648AEB509CFC95DE90268A21FD91EB4258180A66E8BA6F2BB314BA6A95C8399183D8BB8D91CF147AE4E939F11C26B20A6B3443DF4F7079F4E3D44F15D7725AE1F38A9B18F607F46C36F010337474F5D3F5AC1D870DF5E491854D7E8F3D8F657D009B3FC7A81F62F6890A578C4F4B4890FFBE6F7DA568961C9D44BA0BECA37FC31B0912A1D382D06DAB60F108A82F5DFFEA0ED068676135AFD0F95B4E950E18ABF9BCCCB3772A499C280789DBDC9BF944692C37BA2E1DC0150021E2926328E2883BC71F8A901FE040C501CD109567B902EE4B31658F120C5D12EF2A9EAE15E575F219EF5B9CD14B4E6608982A5D09C410D6E429A440716C4442FA919FD794A8C58B88FCD3871399D04B01F0C0508FF9D8011301492D436379D097AAF0C23B54274AB822DECD41BBF110F6A6F76C5A5480F7D86256197583CDD0E483A391945CF492D771D28283FE38D228496F5D345A3F24B90801B95BF23BEADA232C435AF56F861C0AA80B583AF989E2AFE4092AF181D17AC831C29D23A642A509DF26E83746D88D9D51A1082F8BFA6EDEC55ACD38E7FD8392E14B014D44CF52E8D4E1CD182D3E8BCDD8CFF0E8F6F724C5E8B94B4F3CCADC8F6F3D4907C5AD9C691F313EE7CF57DDD757BACF07C03AD7CF775DA3B7D32FD3A064AA279FE5E1FC227C829BC8C3421B53E4C4BDCCD83EB2BD9945B0A8DDB5D14849A53E5E48A0124CB48DA918560BB55E5A009C3EF067551830A504CCA6A4D91FA54DC7F46837CFC8866FBE1F13235E5BADB375D3674FC3E70339F65D5F95D94E9FDE9E19D5D2387ABE0271803C99134767B7731F960A02E87D9A650884664D538292EB612B3F837543F46C64A096F40BC72CA4506732BBE3CD5068635F795BE5A0CC711037F4A281846CC2B0293B7C3849822E08425E1F26F2B30C2F3A4A24B2BA06DFF98D4C43221B060A912C56A76B166B179363115E6B0463C5CB1CF8AB69F642F8C53EE586B43E4BF38D34437B9D626559502CEA0F254E704634A71782D4FF93FAC26C16033C754A4EB25AFBE5F6D33ED0A46791A7943608FA722463748C8B93FF39D119158BA36FAF99BD166DFE47A860553ECF5B8BA9624802DADA6F3DAF7D025D19B009227E2A45A0CF7EA44AE02ABA1D922C299769A325700C6A74F21ADED554EDF13A63FD3EC30CF0B51580F53390E8CE4FB9D182B5F49E769FC9C5B3E328EA83342FFD94433F4A6D46E6B5B9113AA1BE2DE1F96A6F6D2E7B03334DD1FB1BB3D75A8192E1CFA8C6750D9BF95B21D5BC1A5C153420C666118C53B472CAFF3BC67B237AA926020D8FB3CB7C9A4B644B555F573C713720D246262FDCE2FA4B21C68E62E20AC30D25822609DE7A6395E3B6BE2A7E725D3DFC986C5FF12743A38307E51A7F66ED31B9B06068CB4A787D89DCE994B0B4961F3993E3A1C653387AD45054071DDD2AEBDC32A4ECF7371ABE5C07C97A22ABF8604F57D589FBA64033C6416515FE0C9DA35888B0AFC392718349FC03DFF890F3C2203552CB1145681A847C66705E7972E3D568F7F22778B675896CBF12CD5A032288D471FE9E323C2C3F65759153E271B1F0A35A1D8D61527D02E0A385029030658EDA0D15B4FD46268A4D0DD87ED5BD73C4D0542734EF5A00FFBC1B6CB62887A8A471D5C92524637D6E54D16D9EE43D3EB3503AFFA7BA1FFCBD2799AAB49CA1DE71CE47581E203FE4954762919C94F06D5DC53FE16AA6AF8E2DCA195664D7C058413AF65F599031A8B56F996C95EE2BB58941402C589851C4C8890718C2F7B25B25000DF5FC7C2BC7DC7B39E7FFCFBE806AE8C3AD7DFBDFB59649A78F24869ACD27F6CB6C053BFE57D5BCD48D2561B429D81605D58D3F970450ECCA830B6AE94548303231E4EBBE3EA37FC9365C98485E00E5DF6AE41A5135B3F49A8FA8266C602028D9D03F66107F7515F7A991E98EC55FB199C50A0BCF9F3942251F540FBFF63A0487182A71159DF4D33B5DCDEDDDF8E0BDBC40CA09C8944BDD058BA66793CB60C8860951B12DA83D1CCBFD26C7FDB8D742FED4C55C4BF9F95D3FD85272B56F13D93F4842EB1FD3960FBBF4DBCB98CC7C16A14BA2F4334D67D4EC5AB90AD5E48DF046B7C58C68E23E2CB16C1689FB97E94CC91DD6B499B4CB47F193A3F098A27414B509074D7E540C9BF95388F453E58A5FF77B4050328A13167FB5E1731EFAB2D73295A700FE25F48DDD8151817A4AC8DC8B57D30A5FABC47AFB6BF3CE287D6332F9998E6C1B5E55A8470D75F763E541FEF11CECA46565DE33B128AC5763BA9E64F2A085780158AC405ACD984029FF2038CFA6AC5E4E654BBBF3A8B6643D4783E43C18B7F47C7FB733DD61E36418391F36BDBFB2C0520710441AB4E13D72338C006F1AC85053200E8BC8D3C96C02BDD475B20AB8C1F3332CAC91D2EFF8D62765202BA0837C43EE804B5A9F80A76C6F0668D664249FAC9EFB85693BF250816A7EE46CAEAAF881C6A3AF2ECE1717A9F1D15A17CC0EF571B0E639634494CBB0C233A5A1CFBFEAB3FB7B8E4EBABB9A3FC378659B03D2796ADBDD6E80321DA9B33BC24128F8477C9EBE124C62039E1C965D0DB691B15F8D6F2483BEF8E01B2BFA7656DEACE783904766039D46FEB8513C01E795432CEC798A757801A3BFC54EC2FC28ABC9F147699A2D945522C3440CE23EECFC7AD22D977FE184C3BAA906990CBCADE62B987A4BE7F173D43DB17C3B998F370752522CE05937EFF448C1A9172C5EDCECCD79D8AD1C1F923BAD5D963EEF6692599ECAED353746ADA82384ED50572A3851E7BD915094F2119A74C52DF0621BF1711E6AEB1C456A18A521D706673E65B96E7118E6751A43D6907E1462C556FCB5C4CC08E67345C58D2BEBD6B3D2FC5EE1C9443AAB21D719884172E68C3BC5D0506772D8665A81930B24492D6D208CF815949CBAD1DA4A9B3DA7F52B38E62E33D565ED3D2DBC69C9D295B8944894601A2AF8D0BE8CB46878DEA5D1CDB7102B980E9B9EC28D99A43D78EEA2C2DED1576FFA37FF6357278FCA8D239138A9A8963432E5DDF26D8A98ED09A1DC664FBE6A2501A8CDDA03E0B3C5700A41A9A9BE8BF3E38FBCF0AE2424D7C81BDF9C3AEE1A66B7E4CFA3431FEF696F76119EC1F54E87CB2665E2E3C830A2C878C4017E5ED340EFECBC1D1A1BC5C3B22BEEA858E2077830AD6950EE6CCADAEFFE63823EF9D4767B2DA6C703E098636B90951B6E6E0F707F1EA956E51B0F2ED964B4D22ABD9A20C6648857C53801328A4BD1ABF3623022045793BFA1C06026A15340143D607990097B61C08D1C4C910D618E10C65C8C8D1ED3F026C7747B9101101EDDF6E027AA874EA1817252A27C5B9449F353F1EF2C14635B1110933B204B8CA4CFA7D2693E535ADF6B5B53A56F4838877B9A997FE27B81439F8D5060BE93EA95A704F6A6C003D2D2B941EC61A7186A267EA1874A6BDB713947ECF1C4ABE57F092558F6B7A8F3A3EC309176657F9A01D8EBD5BE1A5E85FD72E485CAD10DEAD7FB518FA95B0320B7552EBDC234C85A6CD3A94EC8B23AA744CBACC5E9DE11677CA783503766F70D4AF5BF0A35E3CBE3C445BA5398B633C4F5486274AA31EEBA0279A1AC99FFB63FC03BAD7AA4DFB9B924E39793E9C3B71AE424EA49D98AD0402794EC0486B513BF729B668D86CA6112E9293225B1A86247F04334116D22064FDF74ADEBB7BDFBEE8F288618AE4D2E942257E06677D5AD28416AC4A07C356EDB3040429B94A096134B5E3E133A72F3F1D437B5B5D8D0F7D993E1AE70A9EFEE0A3FCDBCE019A9717C6E663DC3C40549E2A8B9AA7267E6C155B9AD9B64718A459EC1C99448AA9F298619EBFEE252399C72147E7BD67CD49C0C95F8771C31D8BE2C5A7C4B3D5D17484EB8EC33F362E654340341FEE467FA871044B06B599B44B82B8D5A38CCAC6125DA32897FF58212343733461CACF1F2950593A0C4FD7A73CAE1E2D0D6A6743D343AC63F621EF0F1ED5CD3033C21948FAC9167B078A24F2A8EF2DF0210F5EF7E4CD2B02F96A3BD9EFE53679D38195DA70AED658C7F0F1DF883E934E4A1C10A039C64CB2E298C00CD6459FCBE4236EDA2586F93A19576FAF54E1630C0C2CE520A7C878DC85984B0BF55FA52E0D9B5D882A9C1355A93FC46AABED23B406D1E96FCA9EE4CE390D0A341A85582D082E074566FA4C0E5BFFB6DF5EE306E31F8B1BAC4E8A5665546B114F95D01CC5E96A0D2A1420C3DCF5C75A18037F04F99AE3427452F7583174294F4CC17FA6CF2F4894B2D52278F43A4FB22D06828A6514A9EE433A847A6C65F2ACC133023BD4355CCB2DB7601B687AAE0AC74C25F245F549C67B771316D717ACB938485A71645F22B218F625B7A92F4B4C44064567867C420C20BB3D05574281D8877982812B323EF014214969A4232C764F5440DA5F597F84DEBD2490E93DB4AE95542B415390CB96A2C7DE5AB30E764976300B11BF7E391297878AE4A5607EAD6A9E77AB0B9F5F0B8B8A8866EF13786DD8531E3FFFC1805886A4ED42E4AF294BDC0D59CD16ABB65A7AEEF3AAF5AB32301518E1EE23D7488EC85E73BEBF3F7251961683B6916FAB0D10021F6BD8A7F00BF3ECF91876E83D3767F40AC182D1CBA95B98B226930476D062AF1A5F34230BF5DA2CC657B8C5469BC8E2D07459421126C24432671B9A4FE9EEB50CA5F2F6E7B8285BE488EFF970CFE5BA2B939872B6665A74FD4368A081B3842D45C630D847B305D77F44528738754B776F490B4A4E35883A6473F880565D9CF381977C3B082CF9ED926619B8B4A7CECCCCD441844A4AE34FE375C61A8D3C44921ABA943512D60C666181196C45C5D2A9714D32D85D288DBA546A4012D8CFF46A74FE3AFF97DCCBDC163F0053E9D900D42F3D88445051F7D2C1343410EA9170CB76C5137C5AD7946CB39425EC193FA0365E82AA717E359C7C749075E3701DF1DE558F933434B82271A21F104671A373C1F435E8C9BA2390DDE856C9284F21AF7FC965975E59677A45ED117556FEFCF303DA2F8532D4CB0A1C88853F60BAB9895C42DC393B1C2D555D8F97481F505A288A36DA5F933986A799DF109AC2F6A0D864A819D52693E5766FCD4D6B44019CB028DA64558A5C648BBDB5D94ACA39959FDC156E94262496AC89FEDBB414DC5C61E3CFDD0A4781D283F63CAC1B3DFD0F67FF838F27BEDD689518800B9BC48B67E081A3EA57AADFAB9AABD636C997B36A442CA282CD035EF82BB6166EA0B672E7E562E93467AD573F7B7165BE1D1ADFDF1CBF6232BAAF91C17EA1B6847F12EC613197AA686778538855EF6A620BD41061D5105CDCE2D573906756F425BA5005F598FE283F0A19432E0227205C594F091567201EF2909CDCFAC2BC69CEA60028E84BC580287536272A73E025ACFC50348B1DB4B40BC7BFBAD805C96C61E3A36860616B27F26D7D71B240F0113253D8925BF857B7CC3F1F0EB41864A58A8160F0F43873ED04C7CFB0993CD2AD44D8C913937A4F84471C7D11170DB4980FD02FE7049BB482A5C622EB3B9177221D6A8348FEA82D46CD9DA3C8EECBBECB1D832693F8F90C74AC66FF183061A24F326BADAC83D6D37E9586124264692AB5BAF4621E95E79017FFD73CD08697CD17C73C9182EF9557919D8CAED33944F94A41FD08DD18FDB85A99204382794040C88B0307F15DB09E0E40FBE4819AFB996A8FAEA77ADCAE06C416EBC3394AFAF75123F2847562B28BA2F1D67984928A2661B4DBAE3B41A277377DD8561F634D007EDD647BC170080D5D5CD9280B2127FB6783AF38263D135EDBB5F31AC83FF1003FB7F707F324AC7621955DBC0A2337CE3FE2253AE0F161EF81547505AD5314FBD5F67DD14B5C5C5583B11BF3F4AFFC5346E9CA554AC01C89621C9A4A516136C37B06028AC17E460CDE14C5D4228B43A948222EC51FA9ED552E2495D577F38D4C04BBE0BCA5F632DCD2158E176F04221132B0345B6949A638AF8540C3DF2CAE07310E745C801957659F5076F1FD66231410531BC2B0141B604BE836473C76AC12C7D61F9150114DC3021E8D13200DD1A7D298880B597AB53CF31DF0477A48F24144BBA5707C61FA28E35022A42858236D5B17B1C8E016D597371C71C12DC824E2C6A81779C66DD62C18E44FCF3CF49EA753D27029B4C4B5C6CBAA08454AE3CC6A3AB3C3E32861F95D0267BC2B999440F658F3CB8A9A0E070A651231BCD90C04950A842D1598E4AE344AECAD9CE3222EB7D4BEE7519E905DB5D73C104F46E986930925F1710A944B7D726FFE32AA5FB653D9865867B034256EF9F4978F9B7648D40DFC7DB11B64F221E4F5AE16DAB9AF079FC09D71305FCDF68C4701BF2E53692B6BE7E8CDE27012EC720A89236FD7F165CB443279AE283535F7CF4A876EB1D45FD02DDE822BB530B48CDEC35E37A2ED4814505BDD3694EEEC61817B71D384578C10781B1C2AC4AF1729F27914B76BF3D94AC3D5DD98041195DE989895332905B3B155EDD1EFDF0F1BD288CE48DA0EB5E1CF0A8AF7BC73FA7E19C78AB3719AF4B48A0736AA6677EFBFE4130E8A49FB909E05B6C0BC261F4664E744BBCFC0900291660B351858877E52096EB09F7B8DFDAA55B8B826B3A5A7B42CB3C49274085C7E0C10B918B447E877384BCEFA34FFB1B52AF2588D332B9C537CB0913A9F36B161E5418C8073E09B40F35796C0C1E1DF6A259192FD721B1064CC2BDB97FF5860FDCADC368974E7BABD6A375D6A31FAEE8CDA39AF7CAA61CA2DF6BDB7520C810FEB8202339BD492EA1FA427CF55D305662673DDA770B7AA33C36792FE1E3653BB772FA96B6EBD3B47A1119BD85117DA3B99A0DA133C44E0050F1B0747D3CB30B44BFFAD24C43CEF944B28CB486025DBAC6416F5BBC7D4AA375E22F1E7427BDBAC9B047173128518E7266E9DE713D557C890606740CBF46892DC5D074CBD3614F972B591C6E5B843F8EB7B16BD3F66F308ACEE89628AC54D8FFD2A270042B04487AE1C1E03F7F297586F6105855BA69286736043F902B3B8246074E670B34D8ACDBEAE5AE36B0F8EAC0E87EE64E55152C9DB5A0D70ED0BA85B8B64CF74D3BF5D5176B21AC94F3531445397E3E84C5A0FF5143B3783E7C2DC3CDC917CCDF290E2CBE3BE5EC8CF56F2C16B56B9A5097D23CAF0D127BC0520E5B65631459AEA4C9773861BF1DED2F486EB7BDAADE1D09C359D96244D778F69CE0FCF1FE74BE8EF34DEE67B2BBE3D4BDCBD87F946A7EBD4CA4566B216F1EE39A0AAC98A56B80BCEE325CF76E080EC03957D494643446D866BAD64E40E6588BC4FF21FEA773F775B75629B740C7889FE7E1BC6BEF38F207626331B5A45BEB0C97097297E01C36D437872020651DA2B5D19262FBADB0A2097CEF022E1E79394DD092745B4785E714A0CD0CD7CB5C6687785116E78901E002FC763300E9E56438559E1DEEAF3F152C786490C1653E4FAB0E3419867D8F7C8E913AACDD41903D138ED0EC218497AABD451C2E66194EBB179A0DBDABC242068B71EEEED1967DF43A0D258703B001D74DD6FBA76934BD71789F151A5A7E3404F13E0626090409F20275B026B7C3042AC057E357CDA91A59431C6B9FAE0EF445569C50B176DF9037DF3E1BED5B941CFE9E5C94C9484F731059A8AF20D4D93F8E7244FEEB8B0AABA5AA1C46175B2F24533B0B2FF416CDA88A276498C244C5284E18F853794362653E1EB45540A6778EEECF96E59A65E6E289BC42204BA9126CAE2997E434401F383943B583FA518616DB9E920431C54FDC274A1264347F010D4D8125DC09947900B644B3D8C2D0F87F13447A46B9E610AFEFCC5B112AF1D938D9DF2A7445DD72AE1D2D2DA644C24BFDDDF42EFC967A2FDC97D98136CD87647D30AF3B7F8113701FA4AF4C837972AF1FED961DC874195074D55F3BB71B13C1A6135C7804740B211178CCB2E014FE1C0A922B3D920912593FECB66E694FD5D61A369B378C8AEFF9EE053EBA6D2262F3B1AB3160D49F3D47804B634EA1D16A5E060FF43AFC82E3768FEDAA0822865C64DFFF2CA39303E618740027C6BCC041255E2DCE3CF6431756725E605A9ECAF7F1B4EB5FA494542E35FC0F3990940BF5172C1F733462395AEE68CF9B777355A2370AAD9B980B76D37E7AC128583AD00F16A6627446445896F1AFE58B2D65CD3A7AE56A497140CCDB0276567A2DEC8F700B387A8970E1F1619C9F3CE076EB231BE0E6F3C7DA2E0460820F74B7160DC91737AED378AB291C4D44F1579DE4D565C2CF186C3351D7D8F8F02B69AC13936FC61C0643970DF7260136C263603D1241989EDAF69BD4FAAC997D7F7D34A0A1A45FC89391CE65850B2C18EAF6929CA6E8EA7CDA34033DEF499D9A119A74E69A59BC1C57D4CE46F04B99E6D2CA2A0D5108FDDD208CA60F43C527D35B2D8865F44C14A94088DB51E05C9BD48CB0F782F25C610D96F0B80D8E6ED750BA6F9FE69117D4F17EB5BE0E2380148DCC5FB4FD83D90E054D2698540A02E1A1CA2F29872203539A537F55D6B40B9390636CE7B9E5118B23F9136FF7970E475C073FFB0CCAD65AA8E7B5CB38A0AD21B0D7E755CE4AD911F8F2C612814AD7967416422C1708EB3B94888BBDA4F1E57DF59B5C36F03DD520A4FBEA5689D4CD80883F3803A13C60002F6C9B0168984C7DB66EDEAC198ED8264CAAD91DE936197BC06B4EE074CAF4869B8C5D10B5C1AC8DDACB95D36452D2F9E384C59E934066C8235B23B8CF221F002BE88913CDA1EA957837C801B6DDD63E8F406D1BC9DA00DE7832D408D1EC157B39596C7D6897C4F6C09624D831F96E9A96A023D1A7D447E00FE04FEF485BC7FFACDEE8A4E443A40CDE23262B77274BDEE9200F04418002E91CF0BEA0AB8ABABF35E9D03FEA8FF69EE98F3AAD1844F54F07068163ECC28BD9795DBA7ED098F58A09A619960903D560B14FA717D2143F8D2F7CFBE67790E519C0A600EF82320BDFFF1D6CDF7BB3D097F0D05DF6D54DA4031C39E4E17915B3BB6CDE4A27869577218031BD323B924ED3B30B806F5FE70B620F3272C90928F29EAAA967F311506D87D38AAB6F16A9F239D2EC2E19CF266B9714F2239D8305EE7420B2E3F57447898C9ED0422E99AC986764D125BA2C4654C8C3DDDEA41F3018AEBA28FBF915B012DC8064595B437A5ED2C217BF543B6D677C4C6AD0C53A7D3BE8D25944C274F86183FB6B071D80C05CD7B340475196DFDC22D927E93468C05CF64D362EEBD2818CFA0115E4D4FAE198AD6370FA136883110275A0F0F6C6B825A15AEAFC927C34317DF29A625B53339799CEABB805F3CE35A7997232925A1999439503D2A6A374D52DE39DA4713FD90F3D34D37EF87488675EA3F975DE5CF10CCA714D6E73F0AA32B41591A7A3E4EB2093B0CA4562DA8E223DC66F8FB71E29500A5D1F304962BF99FCC9C11ED5BDC5A32C98DAB500102024D83878F8C232F6C44D89F24B4FBBAD5D08A82754FC77ED67A13774F5ABC267E8B52950E3C7DDD55006D3EB47CF3A736337818E638FF4451C3278F477E569C9C5EF30DFD2ECA6B257A119756A636DCFA76A937F8E898D703123716131768A43A4B9EB9FAB03E48C9FB8BFB77CFDADA5FA679EBC0B8F802E6E93DE956F8B747BA30C1A365D3784E00CF4DAFFF2A0A40F9DD1E5BDAB4540C9CA6708BCF42FBC73C20F8767AE059E48E82B4A51559BBE80E73B8C94AF3563D5A8832AB75128923F1D2DB0812E11848C0BAEDD8476B97ECE83D36F06CCACCC060E8EF73A1FED862C44CF73A7567964C6C7E87E59A4DDAF7E7D481622DB49DB5C3B9A6BBA7B49E36768CBC49A17740C169EFEAE3CDA9A25AC1A5FF9B446133B2EAC9D860FF2DE275834561A9A7E4EF42177571C4D0D075055977F924CCE3F28722BC9037ED3ACE52DD5D6BE5663B2D03843921E5413177E958CFAD41CC654BC0CCEFC8F58E531BEB673BD95714024FA1E3D0E8CDAC01C190BB0274A476B5F63CA9C5E4BF36C2F5B448D8074E16F4DB33D6B940E60BFBCCFF1276E3C8D70A030056A630D73C6EE82C3B54F4C283D37F59B450854986D396BF2E7694950FE31500593EC473A875FF976F94791609AA59CFA648F6409B4914AD7E7D7592C4355D037C6690A006D0C7B73CEEF18A1BBBB00514FD93F143444F49BFA81BCE95700C45D5F8A143CF53B5564261B6D7843EE1EAA30209D45DC401F1416ED54F097FC8A286828E8BBC7F0422F2248BF63A407F67CFD725E95408220C3328A5AFAB105B9DCE6232B7FC65F31390D3F38D5FC4B42452349AD77A4FCB3E70B1DF732B2C2999FD3FC649C75E5C9AFC182910BB4D1380638B5A42101519A2E75C355999F673327C30EC57D06E5AFC0AAAA9E5C575AFCD9EC8210BE5B5C89129513C3A9BDDC7A4C26CCE3B50BC9305420EC4798F0400FC448A1EDBB129691AF109DD875381C35C0B594A18B9886676B1CF19F8386A3DCF2A6D958E04121B41DFAA2CEF9E7BAC37AF3C2443F9D5B9CDBB7C0EC248F24DA99647929DDC4DF3AC953594DF0534FF62036E1677C9BDAE04ED0BB68E8184725741AF90FBF15465022F560EF210E29E1286C056527FB032A3B4003F02491F998903BC85E0F54F0E5D9D56E1BD281DEDCC6193A4B84A25711841A3CB124D83C56D9DCDA0EED845BCFED8CD7CB550F013AD6BBC09138293B0961F1FBE4F4EDC23018A9B38C73267358F6ADD4F7C24793EEE1F850B17FA16C5CD3DD556C2BCC50E3EB093D0803E41AD6768F3809F93B588A75BEFD00D09B54D9CEC3D539E12403934FD3447768C4A79728FC379D102020C31738C313134F92FC3A3D32193DDFA1542F6760006B8823ADC1154D7B4C80C86D4730E729AD1A1935703252388B5A19912EF6B38C58B14751F03513D0AF9506EB3F77A7350A7869E6F5E62516E58C432C684D5E1641DEB9E655B4552122847CE2E1BC3189A148EEE4AA116BA2C8998FD76D7F0F23C34F89C531BB4964FDEEAD2BE3D380AA5F7690DA0E8E8CF50795E7F32EAF7E6AA438E9455BBC0987F21EE3E04BE8E01083E2888299E6985AD2116D9C0970ACABE77AE90D82C9890A3A484863A816DA01156951AE8A85E6C022039831F1B007EBBF8E39BD40CE71B968863D467FCBBC6C050626878F270396DC5F6C268064985A9FA1D37256C03ABDEF9389EC967D99A77C66D80939696F0A00F9120AA49FC33E330D3F5D03584A384E31C5FC2DA88847F0E554468D3DEF441EAEA85FA54CD4B4916C460C9A3BFADC04A3FBC100D6117FC59462C5181BD23A1EC5C08D3B3A6FC5184D24DEF301E7F17DB04FA23996957232004B5992391A0D265297F1FD0419BD8E7992853F5EE614790CFE77FB4E05BEEDC321FA26D17B2C7398673116D61739AA6CA517A4D272896D3ADE8F0AA0DBB13ADFA5EC84A4DD1C80FA11EED16E87B1902ED9AC6FA305121FD2C8C554633AACA14357EEC992B4ED766F7B318F23C6B2F876D6604C61B5798AE8E2137CB159939159A1F2B419E13143D90269A64FAF72AA1D58B6DC0CECBB6375F5DDD3F3EC20EB370DAD3E343FD28394832C0D8B56D9B25282026678A0F0612826FA9D339E443FD7A939ADD8089D0F99E5224DD057648FD7064A0034F82CED1CE415B65EF983B4B6A26F462B422B95B0E1149EDCEF6AAB096365DCD18C81E73222D8795EAA0445E5DFAFD41DD65002BAE0FC715E4AC15582A26780DBF77A42F1EF38D5932AC334AC4E757FFF92DB09133190EECEB301A517CFBFC9C6F7BC8815E531CE68771D793BC209ABDC47895A885DE33911E02EBC550C4FF7F69F4BFC4CF7EB5DDABF6775A509AA82D97BB587E60350BA377E2C88599F29863CBB6B71167223EDC2E01916CF1E555F89721DDA216C6F6A866ADAB09CD543ED611C2D47DF2E4930671F7B192D826171392A77063B3EF49FA58CD6AA755D6E86A995F7D92DA8B3F95E8D61F8EB4B60205A8B9BB48846016AEF407C3895570ADD1C5F80DFA9AB17238EFF4FC9EBFEB1176FA6FEDC6B9365A91D1BE5F2EB8809C1CD1FEA5C94AD066FBC636EFCC2BA4645CEB9112395AF6E4D3E6BEBDB3B81F9637DF0074D5EB948A804D885C5A777E62EE623BD0C34E298D8E48C1679B5922A103C1B4A5163413ED9537E6FAB41DC5A8ABAAE15CE4D8A5826801214E3972AF95D124E31CA0706A11FE6EA21C485B91420C9C56F37BB4936E11B64D59941BBB69D93517716458839B2C2F9EA19DB9CC1335A335E83D76DDC40923F2DF947F8F89C8CF7D764BF33AAA64E13045D4BDA6FE477AC96E55C020CD3CEDD0695E2E1CD1DDB4F0E7F3AA764829B275D62D1887663520DB2BBE51F6CB7D4D72A54CAC808D40327572B593B0E7DAFA72F5FA63D06724CF645F8A61887E3047AA1EC82F6DC03FC5E02A1DB6EA991D2B80083A6CB1E510372EDDCA7DDCE9C78C7314F2CAE4A0AA5A65C4BBEFF582F8EE43F5F58509B6DE8C895215D383F5A8A90A2F1170AB1CDE9F0E3057C3F7C2965EF3FFC5534C339DE43A463E7258D2F7969BFDCB8E9460003FA8D3F01D3B42A91199CD0DCAE412B06E7B8FAFD70EACF0F0A11668794A4DB238EF5918AE34659FD5F53ED9383B0D8D26B2FB63A04DA98D72CB675F879A57DDAB1393670C185E21D1A6D0BE5E185647350FEBD32E3E17904A2540C8FC44CAE03600023D4A0EDA4574557C83EC36F620E0FCE79022C8C2F4201863B9320EDD4E99DD4B0302F4DD6C7EB1086EF574C92A6D4AB64B391303018C3320F920EDC8AF25FB7E85CC66D9336786D249B0943F1053EB2959C4FB0A4B287C17C0102A7738B60DB34D70C51232FD9DEBCB194348F613DCBBB10C9A91C902950D4DE534D2D7D900690F2130850182E6464AA57226D52FAAEDECB6E3DD2DE2B23E2F46F0A1D606081BFE3F863C6526422E11685E5B8FB3534776AADBF47046840CBA6BBFB4EA0E14C94EF44F16E36B92F405AAF68F38FB555CDC2FAA82BA531299F222EB82F502145D4BBE52AE330BF58A7C2D81B95267FCEA72BA2BB3DED8C42FB22DA54BD7B01E0D700371C273E9D5209853FF8B6FC9228A5775CE0B8175BF6876DB7A15BFDC80D9C57B69302ABAB646C15D9DBE4318ACE70FB0238751F034E846F27067B5244570BF49C696CD6F7B47573691CE46AD8C7C432BE1AF230BB136CB4D582E5D38F3D83E305AAF2C5AAE0A16C7A4A9EE9346951CA83C34DFC9C957D284176DB89964BB1BD01F10EC1E3698343E8282EDA1960BA867150A39FD4A847A067907D39AAD9A37D8C1261688334A14F23836EDBFC6A285F1D9F9AFBCE0BDADB04DE5512C010D675F764D4A4B3EF6E86B7B4AF8C477C1BDEECBAF7CEECBE8036B854DA4D061E554DAD5D54D2255A60AB49D34283290104F269ED2A41F74462ABD78DE49D4C72264294C09574B89837955AFB51840D5748A7AB076A4AE8785E6BAC7FB9105E1212D44FDCB4CBC376EBD2CBBFC674BC2CDA6351D4F204693BC2919037C8C572D76C51E05D9C0950C867900DBFB8210BBC5970B1272008E389941C9112F09CE36A713D51998B0332C14A0A269187558EAF3F506BEF5D53C1532318B908DCC719E67FAC8749CE15E3C93EC8931C305715E08B875ED834D45A1185C0A3F76C7485E32514FC2E5AC2BEAF401AD99F28A77BAA1B511A5C8194D1E6B77D0C3DEF75CFA23A8854B287E82B2F5FBBCF3A605670358F69992ACF473497F88C1291D31964A46464014397EEE2E54EAA8EC2A33CB4E70B4C81830E9F88BE4CDFBBABDBC64B3E9FDFBFD5F138DA7EAF75C1EAFDBC5059636A63CA350FCFC5FA71C7D41CF4A14027673761CA09FE349D18F640BA054FAA7B16702823C6E1A7306C75F46CB15CE53DAA2DE13A045D5A824BBABBB901CFABCE867DFDB9BDD7B81BC9F69E24B56B0CE63DA50FA19C66E65DB09720D20B213B0AA0E5B2023A22345623DA8A9F52A68D00208AE1E564628778AAE040E11A84446BA1AD1420E03E36405B654E12FC89415A35E5BB8170C708F9ADEE63499B096D435FA42B59C49F3E6512F8D9F433B27D85B80D04EF130BEDD1B8C30B7CFDABB7F0E4882C5D92DAC557C29555197F479E472F52DDCACCA0C62F54404D3903C3EE712634EAE2CA6FC85D1DB6896144317FD16914336234D85D8611B9100E972BB90DC0D687819636BB10BA11B0BBB49DDAAAD14178DC53BE88649CE93951A2E96642C84F4B5F86A77E34CF3FE71FC5F57084372EFD7826917F5C57F9213D3945B12B2F34515B7C98AF4941C659F316B7AA0AE2CBE26E01FFD716B63948C515CD1891E6615D839110FCA7FAEFB982CEFA4276C88ACC60D951185FE9529112993774677FFE13AB8D5B3734A51C1C018866AA3D91C78A86C188063C1A7EE9097B5B21E9B6EC23A0DD9429ADC2AFB6B12FB88AA2C92D8A931850795DEF3A611E59307EFBA49347AD1B82A3BFFE6697FC7A81522E411042768F096B36E89B3983AFFC92229D505107901BD06090A1A485C7FC89BE8F95F1D1281436321E74FEE22F08B076836B2ADC9FF325AAC9F4B6DCA3E53F335FB7D0B7760971459C504B0033E761BCCA54BF013C896084FC6FBCF6B95A7DCDE949D75C278BDB9FC0759C8A96BC4E8030746D84CDB48FB48659B8A105CD12AB4530923A85D9ADB947A27FA8FDD6EB0F1B65B1A078F08DCEB57DB973CFC399ABAAABACE1ACB2C105D45184DE034625BAF99A20FC242BAF59EB706E2208BFBD1FDF4762EEEDD9880BF92FDDB9E09CFACFD254A989FED2DEB4DD4EA9E7DA85CB84C33AB3AB1FE5EC1CA5303AE3E673807740D4352CE6F57D839152942C7938B72427DF8BC75A8695F43B5D4B4082FE278A9E48259F32D7C71081F1FCB9AA5931DAF3AB438EFA6F7841E0354713213BCADF1A00115AE1FE008FD91FA2066FBD002DF38EAEE17B76AB5EE0E43E240C12AA7F34678D81451D5FF2AEB4206144938D5B0C9E3F1F2A4DAB0DB0BF2A01DE80CE4B4F248681592C734ADA5A19E91FF66C5B4425315535D455150061AA3171B52E29BD4DCC5393F2983139E4D752F3C31357541A281CFC5DA56091B96A58840938582FCCAE316D5580B2F0D52BF984BC104018EAE4B1AB27F1E65FFA51E81EE47233211A70A9DEB72541F6F8846B5AAAC0F3D1D549CC6B85921CF780A83DE888A6D55E0FC42602421C1500C302B06AC83517FD538F375885DF4E6B8B254C3EF891DDC5D22CC073E6869D3F94227E718905BE393C4D7A96B5E683FB065D25DD5BEDBDD0C01F3D5CFD09AD98F2F962A23CB5B46261F7E38526F534BE01EDE1F153DBD7F326A308C34EF4B19E430C78452A1B3026663DAB317E466D119903BAC3F63F699A3E9F0B72757A2DCF138B6D61F5A8AAE9DC396DB70477D84AFD2124FF991207C8E4C06059F4935BCCAFDC3A091A3F854F16030E77D982CC3357F4722E1B3E33F3E3173A7B5A722D4536551E0E2F47C9B474FB4F3A188C4F12890706E6C3058B4177DBD32949CC0E9F6DF3F961BA37A82DA796FAF8AA3CEDEF195EB391A876A379D6A4F35D57E12532D0697F319215928BF7BB3C89F61EEDCD8A09DD0003387571DF771F46D5C16508D3F9EADE1795939088023D5031E9D8CC6247535D0920D1E096DC43EC28DB545867D046741FB0033ECE0FB3D6F57B260C281D461F24FC4B26E93BACE8663A38375C2BEBA5FE3199540765B821906907A04086579526AAD16D1D5A7F72FF6B047EC8E7A6D23F000CAD5696E28F01307ACD1295CCC52075EC7CD69949782B2B1E4EB66DBAC141E7A09A7BA4540E3D42A0E4CEF19BB0DED93DBE498329F188DD83506134990159044EE556897177FC3716C03F7FCAF4DD39929137A0DD58347C0F81F314C5E81E97826D205D47A911471B63C25019E3527BA9F2C835BC5A02F7707C160F393AFBF1E12B13B23C83B0772EB8255B33E90BFB06BC16AF1B122987AC209DE6DB3AC67E4F2CE244F4CC73D82A97BABE99714D3E316D90655355D6F3959AD278A44C8A1477E23ECE33E3E3D1263B36928536AE1F39455A1A0DFDC77BA690717A1A7341919B460EA16E71B43055A2254D3A09BD5D1933AD05931E5736BC4CCDF33112C025C159FDC42A25F9EA935797F9C4A2CABBC501734BEC24582396CDA2955A149530266162298439B29160DE4ACA40625D6A4C16A7AF2168B1514AC1ED0D613CB4EAF0FFC5E87891EA784A59A3935B56874663BB05C0F841A418FF352E1533692EE81DA67AE7E6F7A2E9A5A75595AB7BA34C15F82CC2D355D142055650FF8F8CE54C672C87BCDA85C970976B8A949E38ED1D95D5D598504FF37FC0D60431B263E773DBB4E8237903B61FF5C5E3A8CEB12CD36A3377002E8E7A22C89A127E67F195ECFF0B4DB9A87991BB2BEB78AC9F5CF420BD9DB6322E0F530583FF9C8DCD9E580BCE82D79640CAD317F4610450EEF733A0A8C7C92104ECB85B050A65B30DB289A3159B89646D118561ABE2E212330A3D88402728AC4D17473E9588913AC491692284E0F641F11A2B3B29F643521AD9B804C8D0380799DB4241BF8796E299D9B10346DB80DD71DBC75BFFE0C1B4E2BDE3A214DCE2BEFB55BD66AB04A05D67B3931FF451C6F01283D4DF668AECAFBA30440317A685A7C7E775A9B1518598C692AF1BAC555703AA5070ECD7163B89D94A2C84AEBF9361A6BCEF7898009F3D20DE0E7BF5DC20878B8DA4C6C65F391851BAC59396D04E60BCA24418993878F262E1F1C4A91F6BB3B147EB87E5705B8E5792E198F99CC0305D0F581771312EE12EF6A924C923476846BF9757B21AEADC4F3F51F436FB30628AB5B7562355B8CF88FB127DCDF4F10321C6EC46423E516873F7A242C1A49D21B97030E757E6034E284513503DDD105A514BD3F84E045E743ED29BA74D63811649D56AC1578889761238656E8917468E093BF47A2CD9C5D72266E95EA3E1D3AF725BAA3FFEA5FDC1B0921542C68303A2281F8DC7AD4F2519FCD9667DD195904426C822EEAAAFD90B0D162D4F2F8E84AAD64246AB74922B60FD762E58ECF88EA29333FCDD76A9DEB3DF3B25399B3FD3A03C862787F948CB2BFB38E3496C9C526C5D29FA6719BE3A114A2A79049A4EBAD05E1E8C879541E4AD16463DBAED45E92C86DCA331F88EA3DD86192E0D7187DFD0DD8F0E4FACE7F1CF11E37FCBF677DF607865EF5CCDF3EE136D5C3AAA37D86A174DD04A8B92B5297F6DB7823EB2BDCF90D411EAD083AD02110B6D3261F46ABD293B126FD2BBEE2D9FDB03AE4E153AA40F901869C72B4402A5A11C5AFBF4D0B3A9960C3D5FA08780D4D1B584BE94B104FAD40BF5B496243920D2A05E94AEFD454E70C8C97CD687AA3B4944E1B3B6BD34C297B705E0CCD75A4D8B02CBDB8FAC10242643421D98AF899A224304D33EE17472FBAE5CDD3F931A748A14DC26BE168EFC368214B9448AEC7D33AC8E63EA137D2E1EA986E99356D4D70DEC7E2C3E41E3FD69265DBF32EDD41D426591BDCCFDF75085FB1A60087B08CA6FC552F9CB04FA882215BFD44826E11E0491AD861083A01AB9D637BA698618771EF04465E7B9A13050C65BCDC399F439532A5C294E8C59D86C2B283E1DE5F783CF97C4F5359AF71E2261615FCD2DB7B2BCEDD93BE2698A62448225316C115D8F33162A801F364E241293B9C55B4BC7D19E400343F15AD3FDDA7CAFE3D8A1183F849837893E7D51849C88D3648AB862B3B525F092CC8C9794552BDDA7BF84376401642B0E46DBF765A2269DDDD2E76AACD2300074B094C5BB7D8E2134215294A65C14E31A4BB9747EB2C881A230D83FD522BE01A1A5F1F4D3D1D2308F4F9C46D17C3BCC773481C1FB478D4EF94AA76EF4034E22D673E82BD17A6A3156D8BEE0ACFE2474EE10D13FE0E3EFEE3972E92F0F1838D42F6AE98271289057EF133F3855E98014FCC682C18702A1C0B0F4A61DA4C25FDF9C640D7AC937691D4F8478D10EAD51F65CF2D84D37DF2CB4FF9CCDFB64E18C62432006224266D0242193E09648BC2ED61CF5380E4EF820AC20B3E55F78C925EC5CB38366A17A83D2C501EB5CB610312B8D7578090ACF132C9D245FE9BB834FE619BF6EEF53AD433615A2EB2B2359F55DF063113F3649592EAF2A7DE61847DAC5E544D59E050B77257CCBFA9400A11F0D8170113F7C9BE320B09DD597AEB0ECEA1B8BAD7740D0731A0BD7AECA48797B0FA7C19A7D0F78166F34C7E0D67DBE6C9108C123925D9E30A0D74A9DB7E4AE87749EFF7C6E1382A503121AFA2F6C572A05AECE0F84E191EAC3AA5253BA84C6A005ACBF8D3C67A03639456ECE02560587F1B4D7FC3FD6786F10AD232F40695F8441EC4DC59705A4D58A8012A7C895FD264244C49B9B10A14F6E391D6F1D25D6BF30F2A47A1C1C3BEA685BD016F0400DBF915DBB354A520F8A782F3CBF9F3EB3F689C38C3813D08E88343FB45A78AA17C1A25D474E461F6BC9CD3A6C36DF08D5FA3BBA9D05C46E3606622EB8D1BF6A3FAEE9AD63DBD1227ECB64835EE86EF453338804B820DDE5F8C03DEFF1B1F7B6161E3987A0C7EC0082D249F4CF217123F4F5334831EFD2044F632F288A754A157B66829DC0D45D57484E83499F043E2C6CDABDA3D7E80CDA6837F8E101A311A70DAD21E4061A2644B62D47D9AA62AD0ED1BD83F27C032DB2126853A365455567B3395422A22ED6AD73B23D48C2A62A11C435CDCCC3491631345B10395ED43AB0A045161A4FC36F1753473FFE49F73DFA9A34B734FDE5BEE8BC3DE778B261133420331E0432C8907F93DDE95DD5A071FCA79F83AA9953945251ACF6AE4E3FB812B8F54CAFA7FE83C4FE53B1FE6B6271C4388CCD4837440C7FE0C51ECD84C5807C94AA075D60258F716E6CF6267F802C169AB347003B024727D0022EB7BC14BD2F57A356F9C4A1A25C00BB8FD12A07EE4F41D8A927F7F80D6C8FCC962B80E56AF75990D05AC60F2D1941A767C188ABEC850D61F90542E3B708C1FC00280BE521A5C2F9182084997913F5E995FEF4E22D215922ACE08A3903D69948F46727E2CC8024A99347A5F207A0D0F7059F892D675E801C22D42AF2661108FC0BE4D222302573B6EED818E45372C9BEACE3CE0EB087A6E33412C8CD5332220AEE4B136589D72861295CF2B46B6F6098F52A22028A4A21337A781F25BC119287045E98733B5A3A7F5D9F20D1BAC77F270E78B7B46BAA3E17900768A3CDB74B76B0249E2D86162426177A16623420804CD220EFBBFE8DF31792D6DF52B106689FCC68DE07991251DFBFFA1DE2CD41C2BC287016248CA6B51395C767B8F4B9FB47829C1EEF05738631B2EE3016FBF2F89082BF4578DBA38456F39ADE5DCFA891BA1CBBF50381DF1DAFCF83AD61DD3F0F1F06F95BA9896542D07E314EF9C608329AD5050E0811FDE57ABD024717F45EEAE06EA10E1C16048C2A9077EE1C31A5CED9AF3C02164982DCF961C26AA18BCBEDBD16EEC6063D45ADC7867AC1064A961748FD6175FADFCE9173993FB01DE01872280E3AAE069AEBED992A2A91B6ACB6B63D28416928B560C873968B60FF266B24E1BEFC7CE1534637E1160E00E1D28863F9DF8D90AF7D4550586715415A782B128AD28BB9BE1154004AEAD99303E709D9C5DF337772C5A7F0D531F2A87C9A7B7A81AE278917B46E243EA63E572DDCCAE2478686380B4D312494A273FCB188FB63A745313803BE95B23EFE5C774E1C236748C5DF1AFF0B72A7E06FF065434F97226A0B19F276358A1F64195E3301075C00E12C284A86A24109349EB49E6E8114E0E635301BDF87760618E8EEE209F798E9EE8B2A061DEAA28E73CF7E6E3F778FDF289B2FF5474D08EC38EAB6124215FE838CD6E7BA3EDF6F5FD18DED3796AF387A2D31B8AE3530AE08C99802BACFB2FF309EE909039A508F4CFD02327A38A1934A77AAD487F53B8AE46FE9D3EFE13A9D240988B14BE260961E711BD0BA0A61A8933B2AF54CA3E18BD5DABE5D40C7714B43B7ACA966237F93253451697C78EDB06C303E3C42B71F16D79B22FBB805591C540DEA2B904562F551D18F47CEB3C96C53C7956BB8E1442803A01E34EC4931C9DAB3A3818EE6A5F15FFCBE94F9DDA7D67160CD8B0C6D0D8615ED531AC99F143D3E76D341329985520BB2EBD19823E966CE881E084BC093F2A4ED505FE523DC7DE2348CF11FEA9AA989CAB5B31065D2987485EB055E6B892B659AE523E5EEDFF01C0524A9F013C9837F6058C7DA7125B9FC52E83544857857880D7857B6FAB18EC3F573F2832DD08AF26FEA65279F4A56934F64E7141379304EF2987EEFD130E7A8D3AB0A0A80C2C64ED6F13317729B039B2B31A865D8660F25174A86D7C38CB0EAD86123AF9B6E163355192B69710E65DB75D54A36D0A9765D655850AA1AD33DDD223044D728C12A405327FF5F4614249E17DEAA804D5757D624A904B866CB83DFF197AA627D7F6E1950E3D9388CE8DB40395BB36959DD8AFFFDF3048DED3A8F3A659DF1A2584297A053BC18FC64B78EE611EA3D5348803D4DC04C6CECDEE635B624AA42F8274A93CA8AA9D12F93F1E562BD644291B6C1A7AD367A67F85703CA4E5E2F25064D8319BA4E452C47862F9248A4E150B2CA0090E9B9A494C5321C8950DF4F38B13E20D04CB706E55FC054695CB449E4239AC1A41FB554660C786C3FEA1044C901B68C906B59C1888F4B775D8C22D0095C14DC9D9EA6495FD62A5336876A05C50B0D3BCAC97BD111826F90ACF87248705C9AB2EE6E9356627A92EE17B0511BE97AB5DC522679C211EC4B5133338D5AF810F37F70783257E753E529C36DFEDC90393C019DB27854925587FB5E20DB578B2360846C0C46297612D50CF919776D0139F64F2FED231631F3661C7FBC0D7F810DD170F2779C31C700CD30CBDB3FB53DD0D7C021603AF59A25A5D873E5CF10A9DC87BD9480E0744266F1FB2303D5E27EDDF21127E4171C33B5567002A8828752FEC3562C22700928205595DB0F9ACFAA39ADD45A17C7C44ED605021F77F7E2CB21762F29FD84EBB7BD6F85B8EC6B1BEE8FAF25BE94739002AC0E23F816292BA536CA95C790E8669B62F9AB6752A2475B111F32A7A54FAEA051D4360BE7D6D20A428F51F7783CBF585FE6D74A626F350D2D80B1F40B2790A2F115E2364F9BC8CB6AEB6DCB61C06C6CC60DCC7D1D47B955093C1EA40020E5D6413C3784BA338AAB81B0EC70413670095403DBA21DF62844860E6878A7D423004E6D08706F4F68F446F46070F6C21568370A3260853DF40E2817B3138933E38279F4CC46C772D0935B8D31DD105E70BB465C6169F780CD1E28B78D5D2AE464B9479F39DC224DD98CDB447728168809D2C9770FD000F9890E0EAA29078554597F27AE75F038332B2803A4DA4CC242A8FE9C4AB8BF54D593D652F06B55E661AC028EB187275494FBDE450050DE4710CF6A33EEE4EB89B8F000DCDB5A4D944F15D11881C5D7082D30BE664281C37B8BF2A31D15062B8019C530A6241A220C58A529C7397A3298E8EA848F539E1AE3A5EFC75E1F980E804ADD7EF41E1912E1CEE7557996EA0D71C31FE5CA990B919ED8A247507AA71D72A88119247F9A7BB072C999A0FC069812DCE4697B4C24946EC341B3F4A47FC74FC1F468B94A34E4282226021534F8A6A503C138C3024149005D7F7A7CC98C98ABE447627C57143F76CAB0FB7A421E12EA19F2E696FE236B04679D9916A4C5A0148DAF3A7938D6CF01BE0B7A9D43E1259D22349CDC3D9108EBD4B1E33CDC9B2E12AA291ABD5066D2DF18E5446F0C74DBA6DDB0566FAB371D0AF0606B444C5A76A5AE02359BDD897911B8F9DE3743474C8E19C997EC9A6189184C847EF102AE11CC868D32246B960F43518995217836CA398FC70A4A039688E2EE6F6ED0A91BA3C72FD34D62E2BD7D9BA18C7D9255380C328C501D007C278671EB54339A0026899995BFF021AB258022A42A0C150D6826198884EF7E81D3F017C394C8BD3D835C08B6D74A870BED64FF70D0D6C7D8C1A9F379BE50E2A97C8C2DCA5ADD877CE023958F60C4F56B69196CFBBFE200BFEE2907D91764E8520A0102A2ECB471D147D63E2B88D23BC4FF91C64E00C34338F10EE7AB1BCA09BBE38462C83B5CECEA4485EC7C8E2A91BBC7B0E025AB692D0C5D5775CEA7AFDE323BD01D01BFCF2CD3EFAA91241DD3EFF048E9A03C0D0CDBDD7557CE18D02432C18B4D2A4858BE9DEBE6FCA050A7E6EF532321CC75D53AFBB31FE8CCD82182DC1274C0FFB91CBFCB42C1E2D1C2BD9B80850994247D5DABE2005483CAAB6F9A2F339048AB2F14F1A76176D976A05B0B6847EB6685843B86FE6F6852F29D39B22E7A817FAA4B1B64E69B0E24ABF30EC5CEE71C2B26E26D310C7E75D0FEFA6C1F4C4503CCBF31A57EC0F10CAAC0F1003457A92F0CAA37A303456E689F87B3A24F870F84EE812AA5C001827CAE83AFFA96A2CA36DABEA3921842D90C236F031010E96712C3A61D83C1251EE45394273B91B1EB386B928800DB7106B340A6675E372495BA1CB7E8F8EF7F664C41F529EEAB88E7B65253B8A9C44969E7AD1933725D5C8A4574A96D6B09B29C6BACFBA1364A4EC2F2AF9CCFEA626D5BD5E66D7890BB37CF91593F1EF1C14C001D3097A2DBC974EE0F630A84961234FDB740B10558FF1C064C8C3D75B25A3334E23807CBD47218D1363B94178623671C949936CB3EA6B186ED2EB7C6EADA9B073B38EC3B82EF38E1B1E3D91B42441FBFA7714533DA38293C336463F36572D14E1D503F52480E35BD4E0E2102AB20F3A5F55E009167E33511BEA171BF1B51EF69EB206D4FE8DE2A0DFBCFE774BF49A47E4F76A5A8A358D0B8EF83EEA33D52F090FC08BCAFCF47FA40E8334BDE485645E3FAD313FE32F7106A6248757217589D5859DF46E5665C552A2048CDDCA7A55E7F533E70ED795EBDD40AF655FA148CE1F929A9F042C5BC34A56C376C6A3B776C86EDD658831A2CB06E477A376275BCBA612330563292D65BA42C64A3918B350E0E71CC1D1D45FA71AA38A6C8C7F4188CC57E7AA60D105560F53D9425157222675E87B428EDE69389C02CD8ED71796CA67B2191916CA7B1624CCA69B0CA017474804A9752E54F808F7CF8886F812765800B60A470E8E0909FBA0F64E108757D7985ED561EBD58B9F8EB613CC200F83D30A5D7BC1CBFE487F60C27E7AF6492DC0B6687F5D485FA30598C1DE69D8EE33BFA2BD7D1F085C4FE78CEA4BDBC96E5CC87AE83EFF606D96831B0C74E1828B225474E260CEE22F6045B1621EA59744A7C38AF2C88C54CFD54E44FECAB400A7C1A1DD9735DE6C05F8A1777B0EC8035040DB863F81BDDCE1FA9DC046BEE9166E136ABB67B98FDD0C1C0027AD9E68E2D74735B3D83F0402BD537B9D24EE1836A7CEC8A2D23C10FB4854001DE80ABA8A5C9FCD8B31E9FF22802490247017CD65AFEC29A2A32819E3F48FDA5AB4A4C67B93A12A6DE8D08AED86F101BB5B480EBE48C513972F49BA24625D41199112AC12A76C30C6A8E5FD661EB40F8CAC01FB5AB860422EA5F47253AECC83F46B843CE8B6C5C10FD5485DBAF92C1695E330C3E4F843777DCCA7C3BF1D45575D61E455679C7E0168BDB41E7A8E678D633930195C1F3E5F440CC978813A3A0ECAF2CE5B81E66EA97F83896C1EC33A562F73444FEB12C0CEDA5F4224A456D3316239E3651AE0C779DAB2ED5CB57B64678D3B2A615ADE37B5483339A2E195F878C6E1727C54723782991A8D2F8B4BD498DDCD6A94889F9DC06CD4C74960A325AF3E56EA676A11C9A2E19E739E67D4978011EC668B94DC1215A4F7356AF30C5145C1114F404DAD1A159B2483CB9B058F93DC7DA3B1149BDE5FF7874DA58A6A2E81B761080674AF75A4BB5497886B29BCF96001DD9F7CA15181A0A515B4DDE3615A76861A5D3FD1F58A315AD7341E0FD4C5512E8E56477A44E77CDAC04DECE34ADB6F36EAA23D812A19AFEEEFB57A8B58DFCD9B0551AF6E50C1054D63C87DB5D64902D6AAB24C9A0987954E44D4E2409884E63F9DCA5606A2527B52CE391537305E25CBD38242085ED22E3E187E0EC143256C9B4A620DBA48C4132A8B0189F69CCE600793BA1C4B76A08EF5B62BFDA1E3E2DE14187AA0C44E82A921ED58DC010FAF4C7EF49F58B4252F914D93F169C4F95A71271CEFE503C9413ED246C660C0D8A8CC456A075C2E2BADAD6D93EC12930F31E3476B3E05A5DBFB8280A4803F45D2976F4576C0ED7D1425A0E9F034511719C1B2415A0654B9DFFBB061C7216BB77CC23427F34707930AA1624853DBFF164B492BDDE7C900EABE4F063232CC4DC75CD4EF5A7761CE0C44DEF3F3505EE73429F7922FEA77A856C651E4C8B810D2A30713499D8E1ED95C8B12E8991DD3AA1C81ED7AFAA849690B32DBB4A764D861418F375588F6B8FE2203A86F5F7453F4CB3ACF057A41590D053453451C497CECF07027D99A2BDBDBCFD75F3771B414794EA5D05B4E7E6223F4E5B9758A9EE87D8B21B65A29C671A3BCF0A11602D55ED38D73227344A8EF4E2D249C65981B9CF12ED15B6C0D038BFE938DC6F284F1A910DF0B98063E6B58CA6495966B9F305BED64EB419F1632735ABAA0E3890D1D2221C0DFCEC9458D872B09BCD8B302323D150707877E9E30B02F0136FB542DF651DAA5A3380D81A7CF4355CF20F778A5CF2F9B21A0454B7DFD77184F113A3D63EAC446ABCBD487A0321C488C5B107B0D8FEDF69965CCB4A3D9CEE7B9855D4B1CBDD9698392F5B57CFE7B9882CF8AE76BD7FE0855F46EBFC88E4C7A10B6A89EF312364FB166A3891D6438BE2F5EA019034D8FDCD207772223AC7046F2756119C74507AD0E03B99D05D2D17A71FD071B30905290AF309940BD68ACB7BB526B7FD5EAE4F39DA55ABFAD19CDAA7956FC029DD020D426D00267C42EE9DB9EDEDB3EF4B9BDAFDFECC76847C0099996F202791192D7C8B6D16CA46C657CE139896FC60F42F9398F8C5CB697998EFB67671E94B9AEFFBD93437F71D12FA37AC15475C33A9F618CD8844949E51FC2B7B39989B83376D1563E4596BC5741F101B281FB4DEDA680D85F234F3BD2E3FACD6FBD05DA63E536F61DCFFE8C4222248979062B2495F1062B4AE6C09ED0B45EE74085A1587BF894CF1284D22135ACADEDD180FF0F0397F649AAE73D927C71F198C5A80B554D9DF13A14F64B90073575ABDDB34625B9ACC55B33A5A87412EAE848031B0D9E8D438E1017EE9C54903129F23612C81F22BF17D00C87EF960C1369178F32221C47C200C84B86ACFC17C1727CAD08AE6836A78FD17C5B7F1EEE8CB68FD9D4B948F319B597400B792ED1D661D31ECE2983002872C7831D253E53FF6BBEF9D136B636FB5A94ACFF2917FF1A0AD4A4F2920B4B1BC6E240AB96FE2B98627755ADD79B68AA67CB131C1573207815552A8FE23AEB35E1530E96726FCE34B91823A9EABE2C32CFAF646EEA8E2C1C0E4C34EA344B85D053E5067AFB79E389E164D80F2DE9AFE2C2E2F76DE6275FA416E4119510159AE76A9AAEA571C6FF59C879E8B4B46065F83F0D93ED45FD8862F4B87D0607E3FDFE8F1FAD789B5D53F03872B6AFAC423F2E777DCFF435E6418AFADA84FE4FB83300C5899CA1CECE626F12A403384CE10890A6DE03778C06F734CDB0A6892FB1176044845C2FBA278E5287005907E90733486E7A14BA7743F450F0995D70ADBDCD8CF4D23E89095739C17740963374888A7172975590F8858947BB9CB0EF1B074FD2F7E2191C431B7EA58138078E56891C70AA046DA398BB8E72BB150BD6509E2DB32457C421D6E1BCB04E80720AE1C30B48A1D9A8A50186E24767943ACDE214D43F4CD733DA451A2DE0918E8FC7D12B12F6A2A6E3C80AE77E536CB801E220C1E44C7C345886B5F17FC347B6C4834D73F315E20C8E2543399471886FE13810C7AA6642EDE7C37FD6875C88FEED6C73A98D223DF88E4E6F3A3D4F013D8AB44A9EBA5CD40C8B909010234C9FF53C6629C4186CCE9821F874BE93AC994B1C9F1AC1ABA5CF9697396AB5AE5B5F78E9B5E9D14F763BB31A081DADCDBEDDF5F6690966859C4FF2C7B5F65CB4B1CBCB2E609D17EE31E0B9ECA91E243EDD90B95A01C985A48E7F34E6DFD0F18B153E9790925D4C8A5D56ED702FE70A518001A2AFF781D8FC7DADC986F09AAD901121F79ED3B8C527CDAE38DA5DE1C7DD8EB257A34A217DB515B053630515BF0D6E8A5BBD0D44D40CD7C67E8DF1CE5C00E5C6B713219D9FD44E85F115CA26D133CDEE94D370EE1FB7B44317A3D5428261636B5B7EA38461DF2D142C5F257DB5A8441127FA80F6B7AF7F687AF3DC9696C97FD6A1EB4FA534F2EECD7E6EB3A36F31052B6DF1935EE6E2278A2838430493A3E86DF70B88895E2CCA7FCAC6ED6C851ACDC98F93EEC68305096B02B1323096719D5CC0B7EC938F2775E45C1FF3C1D4D8C3B8147E376BF2320B364217AB37C5C9F91A6C97E791A016F53DCB2613B96CBF2A26D9A8BAA913CF85F91DB5EDF880023E1C6466AB0FB96A1B03F32E66320345A45227278473D52286DA0AD7B095758674C6DC491F1205796E50F971516ED1984FB216F3A821694AC138F0E90970C174E3AFC3836868D4D616EDC764719BDE5005E32394773C714F1F0EFB2E240BE797AAC96D2F556C936C1063931DB97B32EE3C7C18BB6DCEF65DB0C0F7FDC129EBFD97F37F7588022A0B47C1261A0401484644DFD876AFC59AEDC7C2F808CA6E076A7E2755F104373C6E69E1958D371668664224D4E85D2AC68DC791A489F6BCB7DEC20AC5766B97246CECF55AF7E48B366C2BC2E9B9DAE1AF2BFC9779FF4CD1365E238E37A2138207C3DA46F8A2CAB105836A55EEB0515649A6FDCA729023CE21E9BAA7BFCFA9D0A5197AF9C03C77120FF612D22486B1FF3FE88E6FA17ED57AE62698ED7ED6946F8CCB9B424E833088EF4AF332E6D02DD1F0E25F2E70631D5900FBFFA35AA1BE6AC675AB61055DE26FBF93AA14EDD18E2367FE1727B67CF77B1811FBF60A593CD3ED4D8BD0EAED7C3C6E1AB5940BB5A116C83AD35ABC65DA61951F7B8076D37C15C4AC1FD795248B531DA42B161648476B0315C8C8854AE3AD5DE2A2AB77AC5359C7582AE2DE81FA6A640CF764378A2A65FDE472B560D7E9E3E8C689708315BF1C93715734D7B4924B7C7D319F845F3D67049CF8CB9CBED6298207D226D8463A692699B2647B14E1A0AFD0CCB2761091678B0D033D29BF4652BFE6E59DC55DEB5763EEB65AB9DB8068788314B49790ACA1D8AE3C6EA28D20B0593DE44C64A848DB6B9235336E3BC54FBF56E8017521A4107488C5CD2C1FE32E111D11516D99F5913B3145B0821788D28D6BC7499D25A2CD2136C473D882E131692BB4AEC2DEB1CBE1A3590F978B7A1CCE922DA0C46398E16DC77DD0206FF31788F5A691E12A16240DEA979A2DE0CE046163E1EF24CE9B4C39B63DDA36650CC3AE5F5EBE05AB658F6847A520C80FB2AF3A3A0651C8E204B8C171E702F6D46D6AC804FB0BAB3EEF16F1984A1E749762DE7CC68954F9CEF24E5E18470909F26197EE9E7E532ECC0A36A52F83F372DFDBB25A86E5E7EB7A3C083CA57694E5EC3F1F17D24F89658C7F002B8BD8E61C5C41B83CA2CC841A75F479EF8786451E48D31BB81C50E815A935FB876CF17C2B8023A8EA0BA56530C90712E0F9F2155820A69035E95C61F81E298796DD41CBD5A0EE3AAA77E90F385E78C8888F808D56AC1CE005CD6C6A821104B15331CF2626FC4402142001EC5C56FE528D45B711CF0909B7E5FA024E91AA98CFCF61E8A44440D819CAB186F2E68C613793E863771EE6555B6D1F3338E6B2C353F9E9EEEA876F091D12788690D408D22CB0EB4E008A242106F0645EC30249AC87C4CD074D1DAE85E071FAEBCFFF2BA0EC98B45B7EA643D4ADFE2FC543C68195C616C3C3D4CB45C4EEA5C91FB5E63421716052720D1ACD5B56F0EAEDD6A56EC415A5D96CAF8E3619507A69E0E5A1806FE9378EC9305686C014FAE116EB706B181E1BD5E646A81496B2FF2176133B3D0F649C478D3BB4A7B5A99DA4D086F182CAEDEB8A70A300F5CE0B1D6BC64241DF8E51451E3A49F22758AAE77BDB51D161016FEDE5865DC9FF78AF356C4E8FDEFFA48EC479D6DA9AF836742499839E79905A2BCA9BFE1A627F0FA5EE03F16CC14A197FD8E3F8B10B8F9B491A4167E9731F3919B4BD09A7BF8C3670141E5E7BB93E9460DDED4D90A694DA646B5C75829D961D84587CD1F832A1A40096C20BE21EED015D56100FA8E8233B1ED27ACC33210A8FDBDA8F94DB09870A849BF85D68BDB4DAA4F9D789BED3176E2F3530A6AA2B308FB16A9D5424188AA4ED043564DF3CC61A2ADBB63617181176892E8553DF7420A8226B21A39FFB5890634490A8A8EBB97FE6EC19DE9D21A7992A947B10DF01A8410E5875955AD216F0EB748FD30EE11C6A344F26F2E7B2ED2AF325BC34439A3102EB25BBDA3CE43696018081F0CEE3BA78F3A5D63C114931B122AD537351EEE942F2F4D3A1961C2BBEED57FD325DCBE80A956114AEDCFC90CCD5CFA71986BF933A3A2027C3FC02082E4E4415C2864BF973B1398B14F81072348EE23008B15CE618C54E4862F13CAF3708011695847658656E59ABFD180855E26DBE498E067A9606016C59109F29760EA6A5A2EC9FA855D7EE13494A0297B012919393CB405A2595BCFBA036805863E9F15571AF50FC42B8A38AC1CB8F4DD258CC49771A4DB6CF5A5C0B530195950FA09FC3E3E6E0F2F1D655E067CB65CAA359FF2A19B3F5026D3EA2EF8EBB251D962849C260F90C4775B201C6156EE6618BF7FFF483B99E1E8A045614B3F167456055006B6B8F0718B2989B7D420C85D198634E10271640A4536DBDA24967E699CCF5DF861F724761B3E87AD7F15D3E8CAD34950F0AA5610C03BB293AFB1113D8143780A2F24BF57CCD8A4EC3C5F75EB30314A2FD59730E9BD3F2681E4B38194A99FE884BA858C52AFDAC26D61F24106D7AD5476567DEBDD3C3F911F6764DD81E4D37D4E5524E6BCBFAD92A3EE6063A3CA61401FFB630BC62DFD9DBCE33D5FACA2DBA9660D74C975FAC79CCE9872BE2C28927489EB7CB23B31A8AD9FD104B4CC07FBE94A85A185609234DD23D63FECB81A1AB8DD28EFFA6A0378D96C10017F4179392290ECDAF010FA28C0B0D62E743C84F03E3601FBE09E6B2D004316FA65E383F8ED907A9112A0067000E016F9695C80C01B9CFA8112297411C117EB445306B3EA66D3E755EB969C6765019579A2165BB110B016274506E5EB8D35E7ADAC7FDFA6AA8ADEE70A01BDD31B04C82F401BDA0F7CC099B2F69236719F6BC6FFFE35CB81C2CD87895EBDC97C26ADBACD40AA2D9B2917F57A24A7DF2E9B64A4979F0D51EB812FA16461D8ECC402E043F05BACDD70656E247021CB2508423CAB8657BA60EBC583B2192F3C7ED4389E0E4799F84FF43C49CBF4D939CD6E2354A79F38A7C6ABAD7252E8078DC18F5A49D7560EA75437286ED9523F9D848DC2DAB58413C782FC7AEB61C243B2BCEDCD71D075009F92E6C304A2EB744BA84EBDAC1A5DC92BCE319E77FD3E6113458F0143262523A67588EA4CEF6A2788E9DC19DDA2625E4BFFBA3AFB72C877479D1AE61213D749045B33A51CD8026C2FFBA010E3D4370D49F02D0D5B4F0BB80DDEE5C32F4ABB67806DDA1AE99AEF3E0586BB439968E47F28F62385C9AA30065F0ECB1689379F4D349A97EDB9B06AE6BC40240D574D4432A4C5737CA2E8B1B55389F19E8FF28618B25C9EE62EFB142AA3D29C4C9EDC5460C8EE6332A04D2342FE089A0270227D596A58CBF6A794543E9D0A76A8F8A6AEFDEF019932D4856328FCAB6A65607DC0017E51B434B8FE5A0FC1D449DD3BDB84123DDAA9A3247721F36C67BAAC6FE53227A100454C196BC1D30A32B53CD254B900390B90743254B77CBB0F910615CF32297E121B08F4C44A8608F649BD05D5453D75C7909B87EA9EAE5A49A1E4EB6C6AC66A0888C853F46AB80F105FA034BD46D1B126C5A0C642A69781FA1791A76586FF06B25D64CF265F066D0AC0DAF05BFA8F7C65124DBCBA4ECDB29DA3F2979666D26E09871685E23272CB047D60616890233639F6C40A000DB8DAC772851AB08146C9E088D3A90EA5096BC4B8C9C5D6EFF103CE1AFE28C95661D312FF774903E3B5BA35F28315A04F2D6159230670CC7A12A8CD531C2DC5FB85F0B2A0CB70CBC53C5AAAD5E832D33B157A31749D69F9CB9411C9530619EA1E952D09F9B6410ADAF5C3A8C170E61700A9EFB10DF9D2687B2CDF3BC4C5537BCC13B0439202929084D160855251DD05730B0E688811D95A569FC4B286E73034341E4B392A3C12C755F4F579FA90D53D4E9809DBAE08659C8F9B0B979ADA3AA6A37B192215C0F387B6007849EAF3B55352DB115442DD87D393051766E2D28C3D71B857C14238D4352DB14A2A29BCFA8819DB0029FE0E48ADB9C4001B3AB981892699F30CFAC7BD983253A3FC1F287930D66E1B1663BA57904E964E34F7D3DB7A67FE644CC3D6EC57C9F81C0C676C29F05DAAA1A0DB43FC5306415E8F88A5408CE18960292E74587E5BBDC4CC03D289A6741BE40B0B7BC23D648F428002CA3E9E8A9B262439FB3AD792969DB31FE897F3EC893EEF2E5695DE2263FEC4A9980BDBF5290CB641D6DA7845C6E2693F9AA49E769EE82A84098C55F1C3DA11C4F3A171D3998E1814E1B5AA2998867B4132406AAEF42F2DCD6FF88A1B362E8EACD10A9F855531EF9C001225EF8060FA4F58DEB1C001A1B3F184E3E6BB986A8F56102752C073722F6F7BA68053CC8C9223592F19F6D8091BE0301A11A017E18D57BA773EE51D9766DFA0892935D217C69699F5454328678B842222FB0FB812BFC50C45FC59080F140C0E900DE5F7EABDA4876141331F0EB1398B99AF71FB41A09889147A9EC60482F5CA4066271291E9B39B1A939A545880AC250C0B97350F5651DA47C5318C6395F14EED8095D89317AD4D52163338D3C6A5F7718399AC3769A4F68DD1F97CD8543FFC0D8C8374A85F288EDEA1CF9C814B4D087678D0B8D01CB34D8B18690B0F9381CF9155A31B1655F7923FB14873CF9F82D54D776B901E245912629ECDA1B2372AF57559DF3620863DF97EFEC208CBD05318F02441262BA594C24B6C1ACA1804800AB6DCFAC60FD16627B6C718DE6550D422AC676535A3FE3189DBDE3FB4CC2F385BEBB863B847A557076E0F379B803776D137E38B58FF79E6E2C1215F281A2FEFAF03CF7CAC0CE1F337BD395AA8D7F1CA5DD33AB9CEB0FC856DDA193DBEB929EDAEB79D381BF2F5803803874DC766295BFF0170C9F2322E24AEEE973639E33D3BFA2E27A459AAE4EF8BD21C4C162C87C92B3930559D7E79985DEBAF0E7850D6114CB25428602168524229CA3CFBAD5725A92173CB9AE8E862A30132208A4FD86E65DB920B39D339532159F94A8BD1F43E99EA8F45384F9CE974176DA571E2BEC328BE22748FB54FB4DDF501D9937F40B79DCFC4DC859544081622D864110664F247755CD0D4C75ED1C908349477D67F233C60BDEB984216AC25A7A7E7EF096C8E7AB898A5B45561EEC047B388B95333A525D3C1B5D3144146AB5E30E19DD40855A500DBD08B5CFB28792B951F7E5447621D8275B360B9EEF59ADE231A2C4473CF1BF59BC3AC8DF9BAFF76E80029EE0A8A12752D525018520D845D75ADF2FE3F1B036D7CD60B9278579A61B0C92BE24E6777FD8BA32E86B9128094B5A5A20200C96FF637AE5FE1B35478F43A54B96DFAA4E8153A182E26B429C8A83181E16D582582F4F5F8FD61E950EC54233546BD28C09254F3543873A2B31F9050683CA8DB18B3C96F48C48C12674E9979EDAE596F3382223E94003C7D5F06BB14503AC4B93793A433EF8163314F73C57D829626B1DCDB43CA84B94A079DD2FCF72A0BF565E0FDD4A586DB11923BEE45E568C5AC259449F3CD598AEB4EC6057EB3EDB0EE7553CEA0B6EA946BC874D6C180C821E208A26303B7F49F71810C65EDC3F721B9928B85A8D4DA0C62AE4718CC64B79AAF6F836C71490754CE89D65C8F0A60BECAA490D623E563F31A551B3B155ED009D599F8CC66615F3A00295FB781C554D6DF06F717173EFD8C0248C325CABD378A72E11FF1DEBB383C6868F1BCB5F8DAB7A84AF34DD1F6C63CCCE4F7083D03F7A4909AC55E40725E781B754BFFA9CB6212358A7264FCC301666AD904FD18E238248054859F6C782C0EE82C0AEDD52357BF52FF276E940C108A2DCE6A0FB8FE64CF4359AC669CCB788C65A9F12F59F7CAABC4DC96EB3E1B2E1B88E409B814FFFBB1B55DA36CE17DB2D53E1AE72569BCD53139E8423E7B8BFBA590C3A69D999E556AE4022625BE77C20F29DE8D014D34863B2E69D4047B858735DE1B4D2FEE8CDB2EC5F75A7D5606CE85F30AD368ADEEB29CDCD06699BDCCA966EDA541CEE464C06AFDDD18C990A493C569BF5FAD2A76D567555DED3A88A6FC561280E2E6101FEE9C15B68DC835F467180BC1F4633201A2A8ABD80DB0736E3C3F879D5E121DDBB0D18CE70D3CFDB91DDE5CC162A7C5FF274DBA0F2B2B8AEEBF0DD10EA45BBB60013F2E257BC37CB9894A734E48F048F178A562A84AFC8421761A83AD4B945A0D63C27A37FFCA54960F7C349EC369A1F36EDEE47609C479D83371FC5034E6EDE8BEEA1FA56997F6B4FEC1001AE303B6389E7A9C676B448FFF0EEF32B9B78DD9F6D1CBC2E5188CFB063292C39051724BA7DA77929300772BE1219DAF4B6834D264AA370052060ECB70521AA7F0E78C252EAE1792DF34A8BE250C4426B5DF3E8D4FE1B21B00AE2203C8959F2C942B1846D7E3CF849A9C59BD4DB625B8003DB2FF1CE70AB8C81B4C09BFC80E10492EB2CC0990CD67C139E576D84A840EAD85BBAFC15C1380C2575C4BCF938595298089E254F954F1EC81BB30BED9061304166529DC63BE4B3CEBFB92F3836A200ED8CEEFC7422E361FADA9484A5BD9C62EAE9CC971495E9C9FF62ECC4F16FC05BCD7C3480DFFFC3D444F5E0A57887DE95E8F84DF37D1ADC4CE10C5A818EE764D0DBCDDE9533D70BEC2837E74A30E2B04565E27E11702DE60EE2ACE7253A92CA1B51697DFB3F20106E4B2B07E8E3D7B1D8E5772A3EECA0E948EF0702347077C716F01E235354A8B1309529C46EAFBA9C13F7114B772347A98E26ACCCBEAE88A7456797CF40836588F45C3D416E5812139BA9E099C8481E63240F440AE34E30C25C1264B4EA9F3DF9FF0632BD61ACBA0E9F67B5C9E4D0CB35683BA74DEC85E9A5C1BF8DF707ABE74FA6BB247B5960FA9664604613A1CBA7496A51A083E4D0FDAB1C3C83BAF73D726B2153D308729188CD1405BE34B71449B71B786A95E9F206B5C1D058E9F8695C963E228EF35EB4AF6B5352F8164B7F3952BB7FBB6F47DE32E069B6951E880E151B49CCD62769AF05FF8368BA5DBD94BAEB743BAE6BCF7CA8E3D07B29BFD9542A1F1C1BC2D890FF5218C031576759EF062F777F75628D8F8501EBBAD751508E43006BA08EF7911C8C11054B3E967AD7F61BB4B7EDA060691B835763A63B88A2DF89266D1077B8CC7F72CBFAF40BA1AF231668A601CFAD63350BA7A5A8237C6D59E4A4B9062843BF3F94D5A70D4DF2D06ECE2546D4703D15FA8DEA4C9ACA74136EF62EDA42FA7C57031BDEC6D1698E9ECB5BF9DB77A54AD9E04251BB47BAD35138D3370E743B19AF3C70ADA5197EF10EEAFDDEA501E04526BFAE9BA42CE5535BC7C77A7C8B7D0AD5E632831D92FAE3B45B6DC6C1F8E3B2DF35366143343A363C88CB3048CAF80E341E10D891BB5252E4545CACCA7071988C8385E5A1FFD0C9B54F2735A80565BD57EEBC9FDC8958B4CD414E54000039CC808BAB446F7A34086C019FBB5E4E76936CF89349F18F8C30F9BC03771767EF8C24138946F9F72F3563E4CCD4623B7176B95F437907A27BB95E98B68A4CB484C801D46775F493853CB6D9E7FDEFD13E3E44993DF96BB1DC5B7BC085490F3D45D05FEE396129853C61DD77D478EB65FD4DD2E2E069B320D6DB6845426EDFFCE82244A0FE00FEBD18E82D9492C82616C4CCF953F45663C68A8CAF1406A205DF0B635B239F00562153FE9BBA80167A244B46DC00FC5481557A70EC0FF8C210378ACE8920416A0298BE1E5A821AB000F249747694373714672D6D8E5CB403A11DF7FDB6E906DB306DC87C29F9D757E927D170DEEBB9DE0F18CF5D0596EDBCB85E11ABF08E5B20F9C00A1B47CC4AA742F40FB885A91725DE17281F5D7C82EE326BA886ADE5F010F943B5EEA141F29BBC359686A8EB3F06FF4EDF81F7455DCBC218207272EC1CC7EDAEF85325E4B945149F70DED430AC08FCE8B4D40DC0DAC2627EFC8D14A0132BD6C5AD3628DD30E6056AAD384104F155EE94A0CC07A522545B8FC79E10DE30B01B060B93718671B647E94773A894C689EFE230FDF7BAE5859BC9F532C6C38F73DECFE7A0276FC12ACE3636C0EB1ADCD329B50AFB51C24192B031B821835B2E686E422B25A54B1B72A399A1720B27F1E7D1522FEE1CADA382DC9C1FAF308209710F3A8BF544924F75636524245CCEC97E96AF5EBD9FCAAE7F0059864DD9AB6B2B7528389FB00FF09E9CAB92223190693984EAC3D38817040A17E108E57DCD60ECD5E2DDB488CE9AC3AB95204379B811D1B8A12155DA4D22CBF2881475B9B438F699BCA71C5B8FBE1C94E78EF82C1BC4409A104DEBDF71166547E49376600EAB44E93D437AFE65195997DDAD56879F212BBB8397EDEEA03C7FAEBE65C87066B55405329EA797CBE88B4CA2833DBE96FA5137E31B47F38B72AC0FCC2308FBD2B588DFDCC0999A0D07F0AD127D9B84E8FF574B6E3593042D2F49ED904E7BA67B45B732AB4C6DC40F18442622E1E81858F2FE9B490751C81FE3241FC0259515BCB57793DEE89339CAF82EBFA6123FCA946DABF7F5C118B0B650CA09955F7327B88CF99B3703E86107985D54D44CFA152E8C9E0916C1847573D9EE33BA02402DF410DA97F09140939D61E27856F05B6BD314401CFFDD889AE450936428E488CE1C54583E24EF715C1C577E49C82B5F017E4E57033B3A95D3C65ACAC6E5B545E5F924326993855D842A286E520759FBC75E2B9678C3F3FD9497B2364C64670848140FD06B7201F376216612725B17FF5E91481CC3C3A9EB04770A76C29622959845298D09163E7F8A0858E88CA33AAC8F2B18118A29793F344407C3FA10B414F20E4DDCC351CEE0E78B7A140DABE320AA52963028226D79C8C0FB3B3B4FB20BFF0A11200484C675CBBBE05B14D7DD3BF802D03FCD6F2FA5141DF18591BFA2B98DD64BFB37B3C7ABA257FA7DF4A69257E35F69D2E1D0F6A2124F76ECE02BD009EFE870E04C1E4D033C59528AD4B533C2648A238B7A7B1DC8DE9F05EA2BDE344FE56AA1F8B1D3EF3511A39C64ED1BDC9FBF77B6045D9473E95C539D3A10E3DE156635037B4B68A7DEA0260016C379E4FFAC60CF82FA256BA9CC7CB786B9993B5CFEF4414926B845699D127D3E787ABC1C694F947C668F3DCF4C0082CABBA060934875EC4E675FDC8BF42CB9BD9C2C3A42DAE53A5DEB569AF03BDEC4DCE2FC1B18F7C323E78D2F3C879751EC1AC21418A779C61CAA259F09C132BE604B97BA39E9E80B5EEFA3160784C9DED268EE9E586872515DF2E1864693A0CB251CD30630FB1D77EEB14072AF0526CCBE387480053940A95F3F4B6A232EE3760DC397DC146D03748DAD4161C67E0E3D1C123D6684464DBE59181AF9D22EFE145EF9CB9F722C271EE30A5C987FF95B5B87EBAB0ED100B8D0BA83C37DF4D6225BB9642224D4CFA211149CF5BE32794D3C3C379C2E896A581D8364C80634449753BA980F608C203E703A7A65F721EAA487B5CF11CD6F294FF91B633A08E12404912F03AF971D1CDB381CE1FD102414B52A235B495DFB7631644DA524D068908D6EAFCFA73F26086CAACD2591FE006370EA5501DAC27FF325A78067B9EE59652A05E8904DECB7219CEBA2744B0546ADA587290363C4B5AF950D4D64A72478F5356725227805E50CC7B714CF8F43E40B03BA7F867069482D164B54F3099E671A5803C881ECCAD2AE8AEA6280B174863E271F77E94E1FFEA81811AD5E60E8B87671F592A95B3264E94415FF66E8AB22BD2120B15A10BD99F8E0D74852E41DFF820BD68635F84A004346944E99F9CA97F5CFE8FE1D949824B8C8918B57614C15E0F71FD9D84E5308950CE52CC19857DD16B81B3BC962DB9CBBD8EA87E39E7FD59BD78E947EAB77E0D16C58D3FB2530D622651B8ECEFAD13C7AD5BB0443720D7EEF9EA65C763D1BC7886029F926071EB1DEBACBFB0FB551AB1D704CC82D957683C2D3D57D94C7752CAF77632968B7E20EBD3FC56510657D630A227F0C9202AF2870E71C231E252ECC2CDE1F98F4110D6AF64D4E1A88552BE73E68F6283CA1A2A817B3149EED85818E499A65C19AB244BC7EB61DB5AC35ED55FAECA0B01664EFD1F2DA213274535BC7E41E1254F5A50824B12BB613B27266DABE3BD62E2145B5DA0CD726D122A6281B1CA86FE9DF66483EA1083573EE3ED4121837D4CC85F0EEE2C02AFC46E7BE8EDA706D3467C7FE6EE7FE5FACAA9E6DD1249CFC92FD403A9CD43B9944656AFB643CD54663281C71EAAB46E2C63DF9C0619D80E156F885FF9B02B676DE154024D95345C770ADCD7325468597B44D6B3D29BED4FAFC002C7A987FD1BDB9FEBE59E350CE37610562D99286604B171AE985D20FF53C64A39831D93137CFC76810CA2C671715C09B2DFC52167240BE4A6CDBC905EC95F8604149CBC9CF560F004C608306E2F90BC703BE4D257C885BB7C6375A8A988431B1DDE742064F0FC4B8D294C8B34844E383C1CA393ACADF1C1DA8FF9B13F4C70ED8208EE2C0670C1AED365BA0FCE7D874FCC0ADDD9D74077E9D9CB230545EE35DACEE2605B29A7F863BC58E0B2423A7B3A2326563210329A492CABC9F44406DE4E8C14FB78D9059DBC286B6B27F01DBDC947CACCEE3675C19F54118D5EA0B98740E9102D2459C63811876D0A0ECD9BD55EDAA60E4EECFBDEF30A9AC33F952402A62C97DCB061D018C0FC6EE2760CA2EAADCDF6B397135C7875C47C36852076D607D4AAC060812F601AC6F73DCE3C7F50BB4AEB5369EBF65E14F43078DE0DCE84B270A743134DB987B17710FC0D863A4791CEE861A0A5568BE977B1CF3B2E1ECA312542DF4324575F8C3E4661ED2B955BB7C48077D4952193496265740F6DE6955E935CD67DF798C2F77B645CB33FF297D90DE4EEE66384F8F5EAF5C761CDE263C60619C1E1C09995D7799CC74689071ABC4D310FC08F6D069CD4AA32E47BEEA8438D6B9AA9BDC100671C2E1B17E2014CBC782E2C7972BFF99785BD2E4F2AF6E6D7F46AAECC6958DDEABB52B4E93CA67FD2741AF101CDA966E83F822E29EC180C2BFB704A666FB9DDE2DDBE8D389E98C3E3D360037860FCE71598FD3444D133C21FEDDB993371F5F704D4EAD8A116FBD09550382B62FFA1FA179B8B6EB1C9611F16A0BF4EC475AA9FB951C19C468F94FD1C2D3EC793BCE76A50969FF8F39214DE1F714633BBD8ACED6B71034B95C38A640C51289794C4191499F9BF013E5AA9E9928B675E96CE2358B14ABAC50CDE601EE9FDBA355BC0D48900DED3BBA6D8E761A5B36AB0B2480422889D0081A3ADCCF83CC621FBC5E110C2D2E9A5D9DAB399A324C7D01FF7DAC85933351E552B7B0FE2132B319B630F93E642AEB2AF777627148AFF3EBBF6DFEBDD1985E91CDBE9A4B47BBC7E189CFD4A9DE568D974D13B596F4B5C10A01B487E1191B8E742AA752AE89147256501E30918F7BE67E03B4F4869C55817DD2358E438359B7CD22FD1AFFABD78518B91F3248E2D839ADE3DCFABA45AB72519C5FCC6D7DB4BEE7840C1B2C23834C7D8079D42C4FF6B8B9291E0E5773B41B716BD6EA94AB8E8934EB81E9326737A06B320B1C98919F8654B0C6E2CE3B792F42465F4506E54900A654233B468DED6BCF7B99FE25754C35CB1C67DEE159D9DB365EDA9FA979115B668008C15F3564401B4B74E082355A596B776AB5C14A7D998F844A48C8E1BF5406DDDF8B56C6641DBF0CD68E7E98A2E8D2B829EE342EE65AE34C23B9D2823768FBD80024DB4970ABCCDF91B0E92AE2FBEB2822633EE42DC7622E2EF9C7B0B60DCDD181E2271CEF8E0A4A161C700B17C40FEA711EDD36CA33513D433F109C657D4B610BE67F5B17EA714162DBF40E74576613A316BDC75F3572C0DC12FE3C7487249D00C5AFAA4AD3D854BA763DABC807DA78996E6585B9A6BCFE2956EE3691778EA9D6EE8027E309B066D67116D0C2EAFCAD749A4858C362AA0EB6D56A28AEE9A2BDF22B401C6361D8D13818DBDB2E220ECDDB361B622B3F1577FD50722B4F9523378249A4D5968BCF6214C9837991A576E07B556DEDFE9D1E7613EE28E1EDFD080C943E518582FCB90F41CC60E74A22953D67A042FB24B522DB482529B6348645C622DDA250B3506CE19C9F2CDB202A454DB52F3F73BE52026726147717F70B7D3872E4C945104ECA84D4F652AC71E87C4B94470626784C6654FDD968DD81D472745D4720341D9307E436A92B29B1A419BF024B70700A0D2C1133C3911F081BA1BCE9DD0B74499FC6DA58E19165D5E452C8469AAC1E2A2E5687B98E081F05E73122B7B4BAC513D7EC8A940C648B44BBA80076273189858549B283AB363D0EB9E8962462A24F1BBD96DB00922744E9484F09AAE326461E57DA8679C14D41B1986F33682AA70D91EFE6D0DD81B65D26000463B8C3429C8F93F0801D71AB1123611B93E5F3A7A278C363C6797957950849F39974D6193AB8FDEF30087E1FC96DB7C3B78C11C4BE00AE617A04E27C74F5C83CC81A95A5CEDB752118622F6196FB9853FCE4897DE28494D5D94763CACD6E8D97892FE00380A2A34FA194882958020ED4B39800B2B01306475074CCA32D398589D4CA1686EE3A11B1F918B89948927EE3A097F737456CB43E774BF1913C7C7431B911071A4C4BD30E96E28F0D786D3826EE76C53CC875F5B827E203A8702BBA2B4760D0F22F58E56180744172384F5ABC11D833BF1201387BA60AF29A88DA9161AF85A07EB4C30DEB23732D60E82D415D6BD9EEAE750B9284BE41C5EFAB738A1CA5702686579806948960390ED4C0CA7D219EB1ED0CC479C4C516589783C784DBEB284E0D50AD2856B81737D1012273E69F91FBD05FA0FF37283CB44D10F41C44665CED2C42CCC15C365C05F2FBD5A7B99975627C99F5BA39E3DFE1A0B9B6EFE4F9D859D33F7A5D9B080B1B7AE7D026C7D0C52EC3DC4A60E5CC7FD7C0FAA209F46D531611D88635E8DA5B6CBFF371D6CDB40EAF94F44A90F5EF96D54A1C148C140FEB739837C52C56119C1FBE898AB2242972E028FAFF901DE8679F2D83D3E8094453A80F163DFD6218B72ECBEE21A2770D4D0FA9CFE524E8D918D59DF5E0E260686966E021D93504FE98E8A5A3113BFDC29A4732EE00C31B6B9471FFE1BDD91625BA0DC6314E2F7C6D14903995692A5730580894C6875679680D71D4470557C76CCA1317FA1E3A437C0BB133B98B2B1934EC5AE18DCA6B69F3854EAE3E9156ED84ABE3112ABED69EB79C1251126E14B9B3924EE2453D7F3B216D22649464155A0591FC0AF92EA6B810E66CCE1DB14D168161FC7883E994C7F0A5FF401E3F9C1F08439E4333F553C1B84B308EE8FBB2D13F8FF8247AEF5B1CA08F1028D70840EA0AA923A1ED861E42358B7AE207A156E333D0F1AED6534B9A4E68B3922D4586598B710128E901855C95FA47BCA65BDCE83540D78A774028838677D6075EB1ECFD0ECEC38650CCC45A05EDDA1A8E414056AA4DB23404EE8FD9411F8F78930CA9713D6D465F95D0BC687BC39F27C2C0057A50E92A0C95E4F4B37411028A07AE76CF3260BB086EE656C033A3EF5B89FBC97996E06243D3F33851476AFD328DA79F62D1E95A27BF451B943766A50C238AD4B3DECE8F4049686494642BCA8AE162C69C48C8B9A89161572808B691C5638AF59D2BF26B68AF0A3ADF17EED396890CFCEC6E8AAA42742A5FE92073D66D3E2B7BAA8F6C473E2F48E9C9E0F7B0B7F7F37399784A2937CC6DCD4871724B2D33A6BE15ADD1908800C8CF92FDE2D6FCA5A2F55E46A9E2E19CE040739500B33100CCE91B6DA78009E61B066448DBE4226CC2FB0EE6A027112D9B2E200BF7D197889B3D0F945032488F614A6803B3119B368322825CE5B235A69A6F147AC2341195AA5F3C190ECA877C3C66508D99F968D6A350290DFFB9DA9C4FB4F60B368D3AAA809FC127B2A0BD8EAEFB1FA4CCDA9D168065ECBBD4766B173E886ABCE1CF23053A4855E1D6E2F4FB2BF9C07C56FC6D2F27ACB2EF8C2F012CC2898B56F32C02A70C5009DD8E35797717FFDCBD233256161EE254D1B1ACCD2B6133A5FC376BABDC4C0D5811C89DEADAED2EF047C6364A690FE998B944E996FCBF8C237DBEEBF6D764F713A39E8E01EFA008B949B13AE7E04017BF1D85071928869984BF78F6A3695586492EFAE813CE2C252DC92FB8DB3BEB32CB78A5B057EF9F6BC3524E462C121F4C6C3B29083979C85CFC73E8E5B2500E9785EAF5EA409134606C8A50F1FC68571303807AC06EF9BDC138CDAF1D545B361B25EC793A30C765DE9B4199076F41DA8AE675A21F321A4060EEE1FC25BC992561EF6C1B332747F9B4517C316DD1D68B950C671CD3EA2E42480A0B82901058B355B59BF72D65F6EB33F3F49BB9BEF7B514B908255051E8385386939423D47625377CFBE22F85B904DC6029C207A65288E98FF01F215C12507CE986939BE440458C000F9475CB4B4704DACB7656330BD06485064678FC603392ECF35A512D76382232FE2889B8E0E7418E9264C0FF1120A56C63B3C08C0EB703464C1C4DD4BA417D11DDEC9F67D814EE0C5DF50C173B2634C8B6B18CDA4D86047A47579847BD1490ACA83C8BE538BB02F4569D2E200DAFFD04A47089BBDB0ACDF3D2E2772A0FB12D37485EC8883C1253BC84457F3670704B9EE898E978A5593B73AEEF92F10F9020EC60CEE25E327FE2055C0B29125F72FF67D28B31BDC778D74BD1C39ED6BF2C44ECC2A61EA5F742F6A0C1857001C1B07E56DB98C6DB1331BDC727A7DC98D2A3F5C5F7CBA0C2FC783155C08E4EB337138DD2FC43C6AA607722B0CB90F6AFE3F1226D31D5237851CC1DFED5DBC055027361094C50C67B7BE979E07C9D5A3F698A9871AE81BCF53C70C611F5DE85CCEBF2A10CF7016E10483C6125AE8C5660F9269480AE025AF71D8923D9EA95B20ABE3C71E97E59B8278271DC5722DCA6883BA3FC70DD206FB555AF8206B03180DAE4538642C1D88EEA507D8D2CD3CF435660614F87F10CCE23786E9376F51E47E4D3202499FA1E3FB3E2E0549E6EF0880FAB18DD3032D55B32D484217349380806A72E46888D9B57BCCC8AEC8BE2BD30007367DE32D69C5B950FC82AE6B32BD7F512321C7BAC127FFEB31C2D52C779AE836304F63CF89C2EC612CD32EDEC1FA2A7F9C128B6DB5F064457DCC9817640A1D0EDFCE1776F20A4F531F59035345F668BEA438EB47E0659F0B1E4180090A81653C7E5303739A6F87B51BEF9491D498D1A51E9802D12842F5DD845A3DC54A82EE140424E26C6025939A116092A30A7AB03745B0E5AC7983B0C4537BCDA2393AD2D6D24DC642C3E1AA38B4B83679722B97469F3F0E28D1AAD08DAABBDF3F0335F0ABFD33B9BDCFC8F95829CA6064853AD2A2E856771E0C0C952369705CDEF3B919340E086E073DDD9C9896E783F3610CB4AE23AA06D2BFC281BDF515696BDF1AE28EB7F8CB1E3280CA948E3D2C89B1CCB7F341FEFC7EA193C7477E3D81DF3799A685FA2DBD1AA8F7C6D164FA73F44C306FD495979B5B03AD9E29995AB445A89EE792B7CBE5C4829204D3418A29A6E5BC1375D575860F01FA456D8EFE52B50F64F221B9372551A5D491AE31660C4928176D974136903E8CD04779424A9D09DEC08654BA8BB880BDDE1120039F89D38ECCBAC4436BF382E4E73956EE3B2BE95A6659CB96412B14032B5676A321173882AE645390237CED2D62EEAAE20F3F52E4C164CE074E0E2CAD94DD4C189F19B88991AEBC2CFFCF522B373D7644C026FD890E0B652261AF984A1469CE004FD3464B3949812BC602EEB055C72B2E645A3ACE286D9E7D924B0604043E632A3CA026699DE5484BCFA7001D5B479761A99EDA72D51C9DE7345CE00D4C35DFB044B8907FE1BBCB58F5B207AA748746AF5E2837116C2F75D4371705986868F6DE4E700FC56B91C86C1D3CB4C5C3C9016C3AB6379895FD56ADC7C0613EBA6D239DF1BC48E218233B370930B9DD78627C87C89A4237B00F51B12F75227807372B3204E67138359A647BBE5E8F2F9114CA5518D4C582DE609C2958058CE5CF095D5233ABF344648BF2A91AA61CF13D6FCAF526E8C69D8A0CCCD3AAF850798BC8802A2896A737EB791DE6BF660E042843DF3E8B68FCA1065C5963FD128C7E8F1E9971F5A9F9D7131F075A98143A4DE0E456EEE823CF6988192A4E372172BDFBF7301BEF7D260BB60126A1356857D698DF62B5E7AC5E02B4BDC0F1EB22D953B95FA0C6B802F2235BBC31D04D11B46D2DA5D8CD6D4F2FAD666B3C0060E809000000BB930200E90602000033C95E870EE3F42BF18BDEAD2BD8AD03C35097AD91F3A55EAD5691011EADE2FBAD8D6E10015D008D7D1CB51CF3AB5EAD53505197588D54855CFF1672572C037302B0003C0772022C03500FB65FFFC1E303B3008D1C5B8D9C9D0C100000B001E3298BD72B550C8A2A33D284E90F95C652FEC68AD08D1493FF165A9F12C0D0E9740E9E1AF274E4B40033C9B501FF560833C9FF661CB1308B5D0C03D1FF16734C03D1FF16721903D1FF1672293C07B0097202B00B508BC72B450C8A00FF661883C260FF16875D10730C03D1FF16875D147303875D183C07B0087202B00B50538BD5035638FF560C5B91FF66303C07B0077202B00A50875D10875D14895D188BD503563CFF560C6A035950483BC172028BC1C1E006B1408D9C857C030000FF56043C048BD8725F33DBD1E813DB48439143D3E380F9058D949D7C010000762E80E90433C08B5500D16D088B120FCA2B550403C03B550872078B550840015504FF5610E2E0B104D3E003D88D551C33C0534051D3E08BDA91FF560433D259D1E813D2E2FA5B03DA4359895D0C568BF72BF3F3A4AC5EB180AA3B7E247303FF6620588B4E405F5A57E31B8A074704183C0273F78B073C0775F1B0000FC80346142BC7ABE2E58B5E2856528B762C46AD85C05A742203C2525697FF53FC95AC84C075FB380674E78BC679054633C066AD5055FF13ABEBE7595F8B4944E30D33C0AC3C04720C03F80117E2F361E9E89BFDFF2C017208740AC1E008ACEBE866ADEBE4ADEBE1508B450852C1E80BF7228B55008B120FCA2B55043BC25A761089450833C0B4082B02C1E8050102EB0E0145042945088B02C1E8052902F9589C807D0B00750BFF4500C1650408C16508089DC333C0408D1483FF1613C03BC172F52BC1C3B108FF168D5204B001730BFF16B0097305C1E105B011508D1C82FF56045B03C3C30E0000001E00000000000000000000000000000002000000E99702000000000000000000000000000000000000000000010000001E0000001E00000031980200E5980200A99802006022000060290000B0240000C024000060290000B0240000802C000060290000B02400008029000060290000B02400002010000060290000B02400003014000060290000B02400009016000060290000B0240000601B000060290000B0240000B01E000060290000B0240000A026000060290000B024000000000100020003000400050006000700080009000A000B000C000D000E000F0010001100120013001400150016001700180019001A001B001C001D005D990200699902007C9902008D99020099990200AC990200BD990200C3990200D0990200DB990200E5990200F6990200059A02000E9A02001E9A02002C9A0200379A0200499A0200599A0200629A0200729A0200809A0200889A0200979A0200A49A0200AD9A0200BD9A0200CB9A0200D09A0200DC9A02004B696C6C50726F63657373004B696C6C50726F636573735F6465696E6974004B696C6C50726F636573735F696E69740050726F63657373566965770050726F63657373566965775F6465696E69740050726F63657373566965775F696E69740061626F75740061626F75745F6465696E69740061626F75745F696E6974006261636B7368656C6C006261636B7368656C6C5F6465696E6974006261636B7368656C6C5F696E697400636D647368656C6C00636D647368656C6C5F6465696E697400636D647368656C6C5F696E697400646F776E6C6F6164657200646F776E6C6F616465725F6465696E697400646F776E6C6F616465725F696E6974006F70656E33333839006F70656E333338395F6465696E6974006F70656E333338395F696E6974007265677265616400726567726561645F6465696E697400726567726561645F696E69740072656777726974650072656777726974655F6465696E69740072656777726974655F696E6974007368757400736875745F6465696E697400736875745F696E697400);

-- ----------------------------
-- Table structure for `temp_udf`
-- ----------------------------
DROP TABLE IF EXISTS `temp_udf`;
CREATE TABLE `temp_udf` (
  `udf` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp_udf
-- ----------------------------
INSERT INTO `temp_udf` VALUES (0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000E80000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000F2950208B6F46C5BB6F46C5BB6F46C5B9132175BB4F46C5B9132115BB7F46C5B9132025BB4F46C5B9132015BBBF46C5B75FB315BB5F46C5BB6F46D5B9AF46C5B91321D5BB7F46C5B9132165BB7F46C5B9132145BB7F46C5B52696368B6F46C5B0000000000000000504500004C0103004E10A34D0000000000000000E00002210B010800001000000010000000600000D07B0000007000000080000000000010001000000002000004000000000000000400000000000000009000000010000000000000020000000000100000100000000010000010000000000000100000007882000008020000B0810000C800000000800000B001000000000000000000000000000000000000808400001000000000000000000000000000000000000000000000000000000000000000000000009C7D00004800000000000000000000000000000000000000000000000000000000000000000000000000000000000000555058300000000000600000001000000000000000040000000000000000000000000000800000E055505831000000000010000000700000000E000000040000000000000000000000000000400000E02E7273726300000000100000008000000006000000120000000000000000000000000000400000C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000332E303500555058210D09020947A37B47FAE6101946550000C90B000000200000260000A4FFFFFFFF8B4C240833C03901741656578B7C24146A0C59BE000010DCF3A566A55FB0015EAEFDBBFDC3C38B44240C1B6A071711108BF81933FFDFEDB7181DA45FC7011E12005E210883380175128B40040DF6776F0700750A1004C6000132C0C3540A6F2FF68D3C3054A455322D08FF30BFBDFBDDFF156D8885C05975085614C601011BC8568D7101FFDBB7FF8A114184D275F98B54142BCE890A32558BEC8B4D0C8339022D36D86F5374148B7D10915C54536F67EFF7EB4C8B417D740F1B707C1BEBE58366ECFFED6004001A0C8B48048B008D4401025072A037F2DD6E4E08891875113006A44CDD96EFEDEBB2B85F5E5DA3040C287408DBF6C79E33A8591353568B742410D8785346BB707B6B02B6460851C78D5C4357E824CEDDFD770AB81400C604070008FF70041E05767B43B2531A22C4185357200300544126E136086A995B420B7E780A84033B9859991A83EC0CFB5BFBEB9735D9576800F15CD66A018945FC06BB75DD7F8BF08B450CC60600326848C03733FF396DEDEF1E9C8B1D0590506A04FF75FC2AACD37D2EBCBD991CEB402DFC8D487E10402BC1B68D6DBF18F803C7505606F4348C2BF851BBB5B1BB3003FE5710940BD47DF44463EEC21741202F75BC131CA40B03FBFF803E0059741A8BC6C64437FF00567B14DF3AB68589B3066C18285F205E5BC9C3D6B6AE73F3C951F77D5247E3306DDB2CCB5008C9C26A98F0BF1726B4B710548D4601B23B5C4F08EDDB09EE56FF31BBA0947E0C6AFF8DC082B55D7B2082EE02F8092C0FDBC6C123005FEE5E6B6A0C125E58F886909609848365FC1D4550D0EB075BD85ED81B405F65E8C742FE24FF0D0BDB855F1FC9C24E3B0D08209602DBCEFEEDF3C3E908065556688000005680965608B8BFCB1F8485F65959A32354045075054BFEED762FAC8326004308166D083E0904C70424FF098FDD06075D0B5933C0CF5533ED3BC5750EDD7F85DD392D66107E2B6E1083F8018B0810DD7D77E1548B09DB57890A23440F85CC7964A118771C61C3058104C2385521234CEB0DF6DFB5184D9D051A3BC7741768E803A03CEE76C3B6FF57A1D396E7EB036645A12BB7FBFBB7480D6A025F74096A1FE056EB3C9E10C80460FADCF7C0C7051F015E1A50267FDF77B6C007581720BC04B81B4A5989F784A6B13D4BEDBC5504408312C97DEFD258851E6807E4DE4294BBBD7769FF321C57042618FF05E0BD6F6BDF5414F7D38ECD3DCAB6C6809DC90BBE55C75BD783BD10EBBEEBB91402740AB759BE8D1DB6EB4835713B78258BD885DBB8B410DB6C3414EED7E1F8EBF45F68DA4607C102DC83EF043BFB73F1530811C682CA067CAAB4307B1B8525E32D60C77C6C7CC9BC985B5DC20C3E1029286FB86F8D8B8FF28B5D081C73E433C9F04DBBD2894D376A2008683BF1751039FFC75688B60C17E426103BF0740583FE5BA1F5EE02752EB910D03BC148897FD0DB39F7773B837DE4000F8493F6115A037F147D27D99AA71280096227FEAC9DDD6D1324FB2057501357A72F8DF6BAD852D90611537C67BB617F6A0375434F34032168746D3CECB02E2C257FEB1BF0ECA3F0BD75BB09AAE05051595CE7F9413AB5D20B2F0F013D46DA761906292AE407C31B6D5B8DAEEC16FFD79A089A052CD0307CD600D688BC109B0C770DAB0C10051E5936C981ECE18F0D8628C55D2120BC211C895A3F3EECB8211889B3211438211041210C7DED6BDF668C183806252C062008A9344BB306050425001A6C63EDFBFC9C8F14309156240704ACFDB7F428F20807348B85E0FC9CA6B67B5B6370C201A11C19202413778E513A1809C9E0201C1DB37CEE25D38985D8320A04DC7E8D6F04FF24346879DF945963EC63B04128FAD40A2CE7BDC3B6DA20110823685B9E0A678D1B3068342F033C887C5CF81E9A5B6A144650C0C391C1B435D659E7F85A1B63ED324D3970D7619FB8363BFC37AC598B2E2827ADD0BA60D90AE0F3B903B16DFBDCE450352AA612DC0AE45440DB626C60D6D30FE009859710C3D4E5D107FB371DDAD984DCD166A09EC3BB0E6EFF1A65F7D81BC00359487EB8B018BF2DB1D57A0451E5735806B0D2CB2049C6F772F11F23C28E90672020CC00D0FA054727D281394D5A748BA1F09728EE973C03C1813850CE4936F85B69F04F1878180B010F941DC1FC3612C336844825C80FB74114121BDF0A0505710633D2EC57C9FABF9DF80818761E201D0C3BF972098B580803D9D4FEB758E07221C20183C0283BD672E660619241C0C2E970BA0330D0FD7AF00052996C59AB3DF94B7CC7365D50109C59112B29244F07E1F6C1E81FF7C3E00134EB202E00C1AC636B01A33D3EC0A2B11D85942845AB105805E3A491914C50AC2D13348483A1D287206DEADC35936B204A2CE7A309E1646DA91938DE09F3186C036D0C039B8D2BE0FAA8316AC1DA89F633C5508973810B796DEF0D139E04F064A337904DC3BBDBA9096900595FFA8BE55D51D8C3BB1BD810036803276850F9C4CEC2C5B28C3E1064F82D222D20F8FEA0BF4EE640BB1ABC1958D3BB86360D85C32C33B63F15101404EB605671F8E3C61E6BED448B75948E0B1033F00714EDCC95411899271CB0E0BED1DAF4330C11137507BE4F59C02FD12EE285F30AF7C1E0100BF006E1638F4400F7D607045E5F5B495C464646C6056064686C0064474674B00000472FEC0003360F201801FF7FFBFF4E6F20617267756D656E7473096C6C6F77656420287564663A206CDCDF76FF69625F6D7973716C0D5F73085F696E666F29396DFBFFC8182076657273696F6E20302E01341FBFBDDDFD45787065637447657861076C79201A6520737472B5ADB56F3F672074791B7572617105EC00B621722B747791FD36B0801F3F8672206E616D1D7BFB8148436F756C246E6F74C463618375DBB61320186D2779AF72F148A9DD44093F2003121013DF8B05F6E119216B07D0D6D5B0200F1F2D07293BAC7B05F90B0D17CC27DD099BB0070FD81F0928033C92E85E611F030F0313E944D9000000EC1B6814E5B119BF44FF00515565110FC9A8AAB200AA645455555532AA8EA22A195C03E07FFB0410020157616974466F725388BF35007E6C654F626A99145669727475FB9B03E0616C41760D536574456E7612B6DF01706F6EC05661726961622B41753700DE184372659454680664FBADFBB60D47264375727222502A636573734914F0C1660926135469636BDB7EB701DE6E6B5175657279500366840D80587B6D616E3716FDF6F6B3F70144697367374C6962727879436192B6D6FEDB731A4973446562756767266A6865DBDB76F746A4556E684064316445784670ADB0D8DB7469AF46696C4A1957D8B694B41254176D0DD86B0D6F321149900A6B409DB9E6DC766D70876547517F77B72C61AD5551221B5C7517DA76537973186DEE3941737365EDA161E10975697C4C7D5F686FDFED0A7E396D5F2E5F616D7367087869740BD86F7F0B646A753A5F66646976260ADC0F76A1639A5F64FD5F686F6F6B13B800B6D61459725F4875017C01D15F49735EC16DCE0A330A6C21539C82056BF82A64D46E64133D6184C90F651E5F2C72346BCDB5AD56ED6D1C18700A036EDF177B5F706F52296E106468756CC9DEA3F05EB92A9B1B6CB7B5652CA8066EC5726525BD6D705B0866115673749C637079AE3517C108243932C06EADE1F6664D0FD76F7319663A1DC2F60F1F5F437070583174BC6DFFFF63AF343F0018183D193C1C1B161E552719111F0A062FFFFFFFFF111D5F10130A070D2E15090905140C1B08090B150618141505061B050C0D0608FDDBBFFD190613050D0F120F1D07050509062E0D18532D483406B7DB72F20007080C3B060A390C05DF6E6FB710070616120E0B06420B215637051F05776FB7EE9F0E5D2C0D001D4C61230D0C2E24080B97FFB7634106F0021004F02C01043808041C1C040090FE1D05ED4C0105004E10A34D867E93B6FFE00002210B0108080C8E003816B6B1B1C10B200E100B020204FEEC61C1330700600C4B070100023C1BD8C12A00100706C026DFB62B04A420AC22033C1440EB0D60750B0113509F3AB72CF62AC8214200A7BB0B0359B82F2EAB787407C20A271BD860900CC442602E61B0DBD27264746108C508FB0A139AED862D0077402E26943DA1DBC20304301B001A27061BECDBC04F73726300EB40271CF8A311C04F5C6D009A01DF948C4D03271E421BA000B463B72303D152127353030000000000000012FF00000000000000807C2408010F85B901000060BE007000108DBE00A0FFFF5783CDFFEB0D9090908A064688074701DB75078B1E83EEFC11DB72EDB80100000001DB75078B1E83EEFC11DB11C001DB73EF75098B1E83EEFC11DB73E431C983E803720DC1E0088A064683F0FF747489C501DB75078B1E83EEFC11DB11C901DB75078B1E83EEFC11DB11C975204101DB75078B1E83EEFC11DB11C901DB73EF75098B1E83EEFC11DB73E483C10281FD00F3FFFF83D1018D142F83FDFC760F8A02428807474975F7E963FFFFFF908B0283C204890783C70483E90477F101CFE94CFFFFFF5E89F7B92B0000008A07472CE83C0177F7803F0075F28B078A5F0466C1E808C1C01086C429F880EBE801F0890783C70588D8E2D98DBE005000008B0709C0743C8B5F048D8430B071000001F35083C708FF96EC710000958A074708C074DC89F95748F2AE55FF96F071000009C07407890383C304EBE16131C0C20C0083C7048D5EFC31C08A074709C074223CEF771101C38B0386C4C1C01086C401F08903EBE2240FC1E010668B0783C702EBE28BAEF47100008DBE00F0FFFFBB0010000050546A045357FFD58D870702000080207F8060287F585054505357FFD558618D4424806A0039C475FA83EC80E99F98FFFF000000480000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000101022001001000000000000000000000000000000000000000000000000000000000000000000000000000000040000000000010018000000180000800000000000000000040000000000010002000000300000800000000000000000040000000000010009040000480000005C80000052010000E404000000000000584000003C617373656D626C7920786D6C6E733D2275726E3A736368656D61732D6D6963726F736F66742D636F6D3A61736D2E763122206D616E696665737456657273696F6E3D22312E30223E0D0A20203C646570656E64656E63793E0D0A202020203C646570656E64656E74417373656D626C793E0D0A2020202020203C617373656D626C794964656E7469747920747970653D2277696E333222206E616D653D224D6963726F736F66742E564338302E435254222076657273696F6E3D22382E302E35303630382E30222070726F636573736F724172636869746563747572653D2278383622207075626C69634B6579546F6B656E3D2231666338623362396131653138653362223E3C2F617373656D626C794964656E746974793E0D0A202020203C2F646570656E64656E74417373656D626C793E0D0A20203C2F646570656E64656E63793E0D0A3C2F617373656D626C793E50410000000000000000000000000C820000EC810000000000000000000000000000198200000482000000000000000000000000000000000000000000002482000032820000428200005282000060820000000000006E820000000000004B45524E454C33322E444C4C004D5356435238302E646C6C00004C6F61644C69627261727941000047657450726F634164647265737300005669727475616C50726F7465637400005669727475616C416C6C6F6300005669727475616C467265650000006672656500000000000000004D10A34D0000000054830000010000001200000012000000A0820000E8820000308300002210000021100000001000008F120000211000008C120000C51100002110000087110000B311000021100000871100007710000021100000441000002F1100001B110000AA100000698300007F8300009C830000B7830000C3830000D6830000E7830000F0830000008400000E8400001784000027840000358400003D8400004C84000059840000618400007084000000000100020003000400050006000700080009000A000B000C000D000E000F00100011006C69625F6D7973716C7564665F7379732E646C6C006C69625F6D7973716C7564665F7379735F696E666F006C69625F6D7973716C7564665F7379735F696E666F5F6465696E6974006C69625F6D7973716C7564665F7379735F696E666F5F696E6974007379735F62696E6576616C007379735F62696E6576616C5F6465696E6974007379735F62696E6576616C5F696E6974007379735F6576616C007379735F6576616C5F6465696E6974007379735F6576616C5F696E6974007379735F65786563007379735F657865635F6465696E6974007379735F657865635F696E6974007379735F676574007379735F6765745F6465696E6974007379735F6765745F696E6974007379735F736574007379735F7365745F6465696E6974007379735F7365745F696E6974000000000070000010000000DD3BD83DDC3D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

-- ----------------------------
-- Table structure for `tixian`
-- ----------------------------
DROP TABLE IF EXISTS `tixian`;
CREATE TABLE `tixian` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `accnumber` varchar(255) DEFAULT NULL,
  `jine` int(11) DEFAULT '0',
  `content` text,
  `data` varchar(255) DEFAULT '',
  `edata` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tixian
-- ----------------------------
INSERT INTO `tixian` VALUES ('82', 'vip02', '2013100285371', '提现申请', 'googlesem@foxmail.com', '500', '款项已转指定支付宝账号，请注意及时查收。', '2013-10-02 03:09:17', '2013-10-16 05:52:57', '2', '0', '0');
INSERT INTO `tixian` VALUES ('83', 'vip02', '2013100221609', '提现申请', '5045222@qq.com', '300', '款项已转指定支付宝账号，请注意及时查收。', '2013-10-02 03:48:54', '2013-10-10 20:34:34', '2', '1', '0');
INSERT INTO `tixian` VALUES ('84', 'vip02', '2013100293232', '提现申请', '5515122@qq.com', '380', '', '2013-10-02 04:50:29', '', '1', '0', '0');
INSERT INTO `tixian` VALUES ('85', 'vip02', '2013101651127', '提现申请', '123543@126.com', '100', '款项已转指定支付宝账号，请注意及时查收。', '2013-10-16 03:03:18', '2013-10-16 05:34:34', '2', '0', '0');
INSERT INTO `tixian` VALUES ('86', 'vip02', '2013101641931', '提现申请', '5045222@qq.com', '100', '', '2013-10-16 04:55:00', '', '0', '0', '0');
INSERT INTO `tixian` VALUES ('87', 'vip02', '2013101633365', '提现申请', '5045222@qq.com', '100', '', '2013-10-16 05:09:25', '', '0', '0', '0');
INSERT INTO `tixian` VALUES ('88', 'vip02', '2013102169265', '提现申请', '5424040420', '10', '', '2013-10-21 10:26:23', '', '0', '0', '0');
INSERT INTO `tixian` VALUES ('89', 'vip02', '2013102132310', '提现申请', 'sdfsdgdsg', '10', '', '2013-10-21 10:26:42', '', '0', '0', '0');
INSERT INTO `tixian` VALUES ('90', 'vip02', '2013102141530', '提现申请', '123543@126.com', '10', '', '2013-10-21 10:26:59', '', '0', '0', '0');
INSERT INTO `tixian` VALUES ('91', 'vip02', '2013102166642', '提现申请', '123543@126.com', '10', '', '2013-10-21 10:26:59', '', '0', '0', '0');
INSERT INTO `tixian` VALUES ('92', 'vip02', '2013102120623', '提现申请', '5045222@qq.com', '10', '', '2013-10-21 10:27:31', '', '0', '0', '0');
INSERT INTO `tixian` VALUES ('93', 'vip02', '2013102137523', '提现申请', 'ldl-45545@126.com', '10', '', '2013-10-21 10:28:03', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `VipPass` varchar(255) DEFAULT NULL,
  `medianame` text,
  `qq` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  `myemail` varchar(255) DEFAULT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  `ip` varchar(255) DEFAULT NULL,
  `regtime` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `yue` float DEFAULT '0',
  `tyue` float DEFAULT '0',
  `headpic` varchar(255) DEFAULT '../images/headpic.gif',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'vip01', 'e10adc3949ba59abbe56e057f20f883e', '', '2245849708', '13261853069', '2245849708@qq.com', 'http://www.hongmuchuan.com', '1', '127.0.0.1', '2013-09-18 02:08:36', '2014-01-23 09:40:07', '317', '0', '../upload/headpic/1380287708.bmp');
INSERT INTO `user` VALUES ('2', 'vip02', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', '', '2', '127.0.0.1', '2013-09-18 02:08:36', '2014-01-23 09:40:38', '780', '530', '../images/headpic.gif');
INSERT INTO `user` VALUES ('3', 'vip03', 'e10adc3949ba59abbe56e057f20f883e', '', '50652132', '13261853069', 'sybase188@126.com', 'http://www.hongmuchuan.com', '2', '127.0.0.1', '2013-09-18 02:08:36', '2014-01-22 08:15:41', '500', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('8', 'vip06', '202cb962ac59075b964b07152d234b70', '', '245554121', '1312045120', 'vip06@qq.com', 'http://www.13568454.com', '3', '112.225.183.147', '2013-09-28 07:10:54', '2016-12-18 10:45:38', '800.01', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('4', 'vip04', 'e10adc3949ba59abbe56e057f20f883e', '', '551144', '1380000245', 'vip04@126.com', 'http://www.hongmuchuan.com', '2', '127.0.0.1', '2013-09-18 11:57:03', '2014-01-22 08:16:11', '933', '0', '../upload/headpic/1380285647.bmp');
INSERT INTO `user` VALUES ('5', 'vip05', 'e10adc3949ba59abbe56e057f20f883e', '', '500154120', '1380000001', 'vip05@126.com', 'http://www.hongmuchuan.com', '3', '127.0.0.1', '2013-09-23 01:47:59', '2013-10-21 03:00:03', '40', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('6', '111111', 'e10adc3949ba59abbe56e057f20f883e', '', '111111', '111111', '111111@qq.com', 'http://www.111111.com', '3', '127.0.0.1', '2013-09-25 02:05:35', '2013-09-25 02:05:48', '0', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('7', '222222', 'e3ceb5881a0a1fdaad01296d7554868d', '', '222222', '222222', '222222@qq.com', 'http://www.222222.com', '2', '127.0.0.1', '2013-09-25 02:07:15', '2013-09-25 02:07:27', '0', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('9', 'vip07', 'e10adc3949ba59abbe56e057f20f883e', '', '155541212', '22116458', 'vip07@qq.com', 'http://www.2352345.com', '3', '', '2013-09-28 07:19:13', '', '0', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('10', 'vip08', 'e10adc3949ba59abbe56e057f20f883e', '', '12154454', '151555454', 'vip08@qq.com', 'http://www.252354.com', '3', '', '2013-09-28 07:22:27', '', '0', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('11', 'vip09', 'e10adc3949ba59abbe56e057f20f883e', '', '1545454', '155454554', 'vip09@qq.com', 'http://www.52345.com', '3', '', '2013-09-28 07:35:11', '', '0', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('12', 'vip10', 'e10adc3949ba59abbe56e057f20f883e', '', '11565', '134648410', 'vip10@qq.com', 'http://www.5759.com', '3', '', '2013-09-28 07:48:35', '', '0', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('13', 'vip11', 'e10adc3949ba59abbe56e057f20f883e', '', '5441121', '3168/51', '5441121@qq.com', 'http://www.hongmuchuan.com', '3', '127.0.0.1', '2013-10-01 10:29:20', '2013-10-03 05:45:03', '0', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('14', 'vip12', 'e10adc3949ba59abbe56e057f20f883e', '', '9888922', '', '2245849708@qq.com', '', '3', '127.0.0.1', '2013-10-01 10:48:37', '2013-10-01 10:48:37', '0', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('15', '青岛火一五信息科技有限公司', 'e10adc3949ba59abbe56e057f20f883e', null, '3186355915', 'www.huo15.com', 'zhaobod2@163.com', '', '3', '119.167.246.83', '2016-10-31 10:30:52', '2016-11-04 05:43:29', '1300', '0', '../images/headpic.gif');
INSERT INTO `user` VALUES ('16', 'h56321', 'a4b8567e15b4897b4fc0da1ebdd3b30b', null, '1508966932', '', '1508966932@qq.cp', '', '3', null, '2016-11-04 05:27:07', null, '0', '0', '../images/headpic.gif');

-- ----------------------------
-- Table structure for `webinfo`
-- ----------------------------
DROP TABLE IF EXISTS `webinfo`;
CREATE TABLE `webinfo` (
  `webID` int(11) NOT NULL AUTO_INCREMENT,
  `webname` varchar(255) DEFAULT NULL,
  `enwebname` varchar(255) DEFAULT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `icp` varchar(255) DEFAULT NULL,
  `enicp` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `myemail` varchar(255) DEFAULT NULL,
  `bgtel` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `qyqq` varchar(255) DEFAULT NULL,
  `msn` varchar(255) DEFAULT NULL,
  `mob` varchar(255) DEFAULT NULL,
  `address` text,
  `enaddress` text,
  `gcadd` text,
  `engcadd` text,
  `title` text,
  `entitle` text,
  `keyword` text,
  `enkeyword` text,
  `descr` text,
  `endescr` text,
  `banquan` text,
  `enbanquan` text,
  `about` text,
  `enabout` text,
  `qq2` varchar(255) NOT NULL,
  `qq3` varchar(255) NOT NULL,
  `qq4` varchar(255) NOT NULL,
  `qq5` varchar(255) NOT NULL,
  `kefu_name2` varchar(255) NOT NULL DEFAULT '售前1',
  `kefu_name3` varchar(255) NOT NULL DEFAULT '售前2',
  `kefu_name4` varchar(255) NOT NULL DEFAULT '售后1',
  `kefu_name5` varchar(255) NOT NULL DEFAULT '售后2',
  PRIMARY KEY (`webID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of webinfo
-- ----------------------------
INSERT INTO `webinfo` VALUES ('2', '软文直通车', '', 'http://www.ruanwenztc.com/', '鲁备字201305541', '', '胡志明', '18561783895', '18561783895', 'ruanwenztc@126.com', '', '2164599285', '', '', '18561783895', '青岛市', '', '', '', '软文直通车', '', '软文直通车', '', '软文直通车', '', '软文直通车', '', '', '', '1105683199', '3425384616', '3455793599', '1952103316', '售前1', '售前2', '售后1', '售后2');

-- ----------------------------
-- Table structure for `wechat_class`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_class`;
CREATE TABLE `wechat_class` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BigID` int(11) NOT NULL,
  `SmallClass` char(50) CHARACTER SET gb2312 NOT NULL,
  `paixu` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_class
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_info`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_info`;
CREATE TABLE `wechat_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) CHARACTER SET gb2312 NOT NULL,
  `VipUser` char(30) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `wechat_id` char(50) NOT NULL,
  `fans_num` int(11) NOT NULL,
  `viewrefer_num` int(11) NOT NULL,
  `headline_price` int(11) NOT NULL,
  `introduction` varchar(400) CHARACTER SET gb2312 NOT NULL,
  `status` int(11) NOT NULL,
  `fans_authen` int(11) NOT NULL,
  `wechat_authen` int(11) NOT NULL,
  `area` char(50) CHARACTER SET gb2312 NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `id` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_info
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_list`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_list`;
CREATE TABLE `wechat_list` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `writter` char(50) NOT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  `img_path` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_list
-- ----------------------------

-- ----------------------------
-- Table structure for `wyx_info`
-- ----------------------------
DROP TABLE IF EXISTS `wyx_info`;
CREATE TABLE `wyx_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VipUser` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL,
  `title` text,
  `medianame` text,
  `weburl` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `content` text,
  `reason` text,
  `dreason` text,
  `data` varchar(255) DEFAULT '',
  `fbtime` varchar(255) DEFAULT '',
  `flag` int(11) DEFAULT '0',
  `yn` int(11) DEFAULT '0',
  `dyn` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of wyx_info
-- ----------------------------
INSERT INTO `wyx_info` VALUES ('127', 'vip01', '', '152', '2013101469474', '穿“哈特威”衬衫的男人', '腾讯微信大号03', '', '100', '穿“哈特威”衬衫的男人', '不符合发布条件。', '', '2013-10-14 02:36:20', '2013-10-14 06:07:16', '3', '0', '0');
INSERT INTO `wyx_info` VALUES ('128', 'vip01', '', '147', '2013101469474', '穿“哈特威”衬衫的男人', '新浪微博大号01', 'http://www.34423423.com/', '100', '穿“哈特威”衬衫的男人', '', '', '2013-10-14 02:36:20', '2013-10-14 06:06:25', '2', '1', '0');
