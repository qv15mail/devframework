/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : jfinaluib

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-09-16 21:14:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pt_department
-- ----------------------------
DROP TABLE IF EXISTS `pt_department`;
CREATE TABLE `pt_department` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `allchildnodeids` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `departmentlevel` bigint(20) DEFAULT NULL,
  `depttype` char(1) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `parentdepartmentids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `principaluserids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_department
-- ----------------------------
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0026', '0', null, '-1', null, '根节点', '1_open.png', 'true', '部门管理', '1', '#', null, null);
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0027', '0', null, '0', null, '系统平台部', '2.png', 'true', '系统平台部', '0', null, '8a40c0353fa828a6013fa898d4ac0026', null);
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0028', '0', null, '0', null, '运维部', '3.png', 'false', '运维部', '0', null, '8a40c0353fa828a6013fa898d4ac0027', '03a44ba0aa4e4905bea726d4da976ba5');
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0029', '0', null, '0', null, '测试账户', '4.png', 'true', '测试部门', '0', null, '8a40c0353fa828a6013fa898d4ac0026', null);
INSERT INTO `pt_department` VALUES ('8a40c0353fa828a6013fa898d4ac0030', '0', null, '0', null, '子部门2', '5.png', 'true', '平台组', '0', null, '8a40c0353fa828a6013fa898d4ac0029', '03a44ba0aa4e4905bea726d4da976ba5');

-- ----------------------------
-- Table structure for pt_dict
-- ----------------------------
DROP TABLE IF EXISTS `pt_dict`;
CREATE TABLE `pt_dict` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `paths` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `zhuangtai` char(1) COLLATE utf8_bin DEFAULT NULL,
  `parentids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `levels` bigint(20) DEFAULT NULL,
  `numbers` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `val` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `i18n` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否国际化',
  `val_zhcn` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_zhhk` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_zhtw` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_ja` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_enus` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `status` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_dict
-- ----------------------------
INSERT INTO `pt_dict` VALUES ('0c78f87750a745bbb59005a6ca0f744a', '0', null, '3.png', 'weixinToken', '3', '100103root/83f4b0ee56904cbeb5f91696ad804c29/0c78f87750a745bbb59005a6ca0f744a', '1', '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinToken', '123', '1', null, null, null, null, null, '1');
INSERT INTO `pt_dict` VALUES ('10c3fc9a884a4cfc91f47e197913fd50', '1', null, '2.png', '钟祥市', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/10c3fc9a884a4cfc91f47e197913fd50', '1', 'a1f14efbb8cb4e44a30bd32194d0f24b', 'true', '3', 'zhongXiangShi', null, null, '钟祥市', '钟祥市', '钟祥市', '钟祥市', '钟祥市', '1');
INSERT INTO `pt_dict` VALUES ('18a137a0b92944ba857b5dec39b4fa69', '0', null, '2.png', '河南省', '2', '100103root/31b6516f36d44fc280b82affc270c479/18a137a0b92944ba857b5dec39b4fa69', '1', '31b6516f36d44fc280b82affc270c479', 'false', '2', 'heNanSheng', null, '1', '河南省', '河南省', '河南省', '河南省', '河南省', '1');
INSERT INTO `pt_dict` VALUES ('3082e48992104e3ca8c2f542bbcfbe63', '0', null, '2.png', '三室一厅', '1', '100103root/56e8bdbc8d77460da17e473ee30906b0/3082e48992104e3ca8c2f542bbcfbe63', '1', '56e8bdbc8d77460da17e473ee30906b0', 'false', '2', 'sanShiYiTing', null, '1', '三室一厅', '三室一厅', '三室一厅', '三室一厅', '三室一厅', '1');
INSERT INTO `pt_dict` VALUES ('31b6516f36d44fc280b82affc270c479', '2', null, '2.png', '省市区', '1', '100103root/31b6516f36d44fc280b82affc270c479', '1', '8a40c0353fa828a6013fa898d4ac0020', 'true', '1', 'shengShiQu', null, null, '省市区', '省市区', '省市区', '省市区', '省市区', '1');
INSERT INTO `pt_dict` VALUES ('325acbd77f5b43a894ec4ef53ba20914', '0', null, '2.png', '洪山区', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/64659405a79a4ecb9f116ae84ec55902/325acbd77f5b43a894ec4ef53ba20914', '1', '64659405a79a4ecb9f116ae84ec55902', 'false', '4', 'hongShanQu', null, '1', '洪山区', '洪山区', '洪山区', '洪山区', '洪山区', '1');
INSERT INTO `pt_dict` VALUES ('405dc683656a4b328de5d5a19d1662d3', '0', null, '2.png', '胡集镇', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/10c3fc9a884a4cfc91f47e197913fd50/405dc683656a4b328de5d5a19d1662d3', null, '10c3fc9a884a4cfc91f47e197913fd50', 'false', '4', 'huJiZhen', null, '1', '胡集镇', '胡集镇', '胡集镇', '胡集镇', '胡集镇', '1');
INSERT INTO `pt_dict` VALUES ('56e8bdbc8d77460da17e473ee30906b0', '0', null, '2.png', '房屋结构', '2', '100103root/56e8bdbc8d77460da17e473ee30906b0', '1', '8a40c0353fa828a6013fa898d4ac0020', 'true', '1', 'fangWuJieGou', null, '1', '房屋结构', '房屋结构', '房屋结构', '房屋结构', '房屋结构', '1');
INSERT INTO `pt_dict` VALUES ('64659405a79a4ecb9f116ae84ec55902', '0', null, '2.png', '武汉市', '2', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/64659405a79a4ecb9f116ae84ec55902', '1', 'a1f14efbb8cb4e44a30bd32194d0f24b', 'true', '3', 'wuHanShi', null, '1', '武汉市', '武汉市', '武汉市', '武汉市', '武汉市', '1');
INSERT INTO `pt_dict` VALUES ('7381008292054bccba20224bc33774d7', '6', null, '2.png', 'weixinAppID', '1', '100103root/83f4b0ee56904cbeb5f91696ad804c29/7381008292054bccba20224bc33774d7', '1', '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinAppID', '123', '1', '1234', '1234', '1234', '1234', '1234', '1');
INSERT INTO `pt_dict` VALUES ('8094c60d7a594b36bb0187cbce9c4188', '0', null, '2.png', 'weixinAppSecret', '2', '100103root/83f4b0ee56904cbeb5f91696ad804c29/8094c60d7a594b36bb0187cbce9c4188', '1', '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinAppSecret', '123', '1', null, null, null, null, null, '1');
INSERT INTO `pt_dict` VALUES ('83f4b0ee56904cbeb5f91696ad804c29', '0', null, '2.png', '微信配置', '1', '100103root/83f4b0ee56904cbeb5f91696ad804c29', '1', '8a40c0353fa828a6013fa898d4ac0020', 'true', '1', 'weixinConfig', null, '1', null, null, null, null, null, '1');
INSERT INTO `pt_dict` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '字典树', '1_open.png', '字典树', '1', '100103root', '1', null, 'true', '0', null, null, '0', null, null, null, null, null, '1');
INSERT INTO `pt_dict` VALUES ('a1f14efbb8cb4e44a30bd32194d0f24b', '0', null, '2.png', '湖北省', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b', '1', '31b6516f36d44fc280b82affc270c479', 'true', '2', 'huBeiSheng', null, '1', '湖北省', '湖北省', '湖北省', '湖北省', '湖北省', '1');
INSERT INTO `pt_dict` VALUES ('a929cbf789a74107a74aec88c0bcc8fe', '0', null, '2.png', '柴湖镇', '1', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/10c3fc9a884a4cfc91f47e197913fd50/a929cbf789a74107a74aec88c0bcc8fe', null, '10c3fc9a884a4cfc91f47e197913fd50', 'false', '4', 'chaiHuZhen', null, '1', '柴湖镇', '柴湖镇', '柴湖镇', '柴湖镇', '柴湖镇', '1');
INSERT INTO `pt_dict` VALUES ('bf1bf96a123447c58b7f181d3e4e6099', '0', null, '2.png', '两室一厅', '2', '100103root/56e8bdbc8d77460da17e473ee30906b0/bf1bf96a123447c58b7f181d3e4e6099', '1', '56e8bdbc8d77460da17e473ee30906b0', 'false', '2', 'laingshiyiting', null, '1', '两室一厅', '两室一厅', '两室一厅', '两室一厅', '两室一厅', '1');
INSERT INTO `pt_dict` VALUES ('ddbe84891d8b4632ac0dc2bd36f7f323', '0', null, '2.png', '江岸区', '2', '100103root/31b6516f36d44fc280b82affc270c479/a1f14efbb8cb4e44a30bd32194d0f24b/64659405a79a4ecb9f116ae84ec55902/ddbe84891d8b4632ac0dc2bd36f7f323', '1', '64659405a79a4ecb9f116ae84ec55902', 'false', '4', 'jiangAnQu', null, '1', '江岸区', '江岸区', '江岸区', '江岸区', '江岸区', '1');

-- ----------------------------
-- Table structure for pt_group
-- ----------------------------
DROP TABLE IF EXISTS `pt_group`;
CREATE TABLE `pt_group` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `numbers` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_group
-- ----------------------------
INSERT INTO `pt_group` VALUES ('4d79d220f46e4a6bb100990de6b4a183', '0', null, 'test', 'test');
INSERT INTO `pt_group` VALUES ('8a40c0353fa828a6013fa898d4ac0028', '4', '系统管理员组', '超级管理员', 'SuperAdmin');
INSERT INTO `pt_group` VALUES ('f41c93842b4749b49d8134354f5a4518', '7', null, '测试分组123', '1000');

-- ----------------------------
-- Table structure for pt_grouprole
-- ----------------------------
DROP TABLE IF EXISTS `pt_grouprole`;
CREATE TABLE `pt_grouprole` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '??',
  `groupids` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '??ids',
  `roleids` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '??ids',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='????';

-- ----------------------------
-- Records of pt_grouprole
-- ----------------------------
INSERT INTO `pt_grouprole` VALUES ('108255e8685f472c9b98078623de3b49', '8a40c0353fa828a6013fa898d4ac0028', '2f499b298d42480797319242b53d95a3');
INSERT INTO `pt_grouprole` VALUES ('377b0ed835334383976c3470489b76b0', '4d79d220f46e4a6bb100990de6b4a183', 'f8d7d8b7d8714a4996a754830ea034f6');
INSERT INTO `pt_grouprole` VALUES ('4457f5473d444255904c330656388a70', '779e4fdbc44b4ef48b4ee9d99a0afa59', '2f499b298d42480797319242b53d95a3');
INSERT INTO `pt_grouprole` VALUES ('b0afd556f2e6421298f6aca3ef226afa', '8a40c0353fa828a6013fa898d4ac0028', '8a40c0353fa828a6013fa898d4ac0023');
INSERT INTO `pt_grouprole` VALUES ('bc7632e677a1470383b9b8300ca13e7e', 'f41c93842b4749b49d8134354f5a4518', 'f8d7d8b7d8714a4996a754830ea034f6');
INSERT INTO `pt_grouprole` VALUES ('dc2d0f41822d4e37a1500f4518a7dd4b', '779e4fdbc44b4ef48b4ee9d99a0afa59', '52eea5bd9c294b399b11fc0e10354708');
INSERT INTO `pt_grouprole` VALUES ('f8fd9d44cbf64e82871f7f1ce3060d79', 'f41c93842b4749b49d8134354f5a4518', '52eea5bd9c294b399b11fc0e10354708');
INSERT INTO `pt_grouprole` VALUES ('fbaaaf03445f4776a646bdbd410b31f0', '4d79d220f46e4a6bb100990de6b4a183', '52eea5bd9c294b399b11fc0e10354708');

-- ----------------------------
-- Table structure for pt_menu
-- ----------------------------
DROP TABLE IF EXISTS `pt_menu`;
CREATE TABLE `pt_menu` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `levels` bigint(20) DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `operatorids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `parentmenuids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `systemsids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `names_zhcn` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `names_zhhk` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `names_zhtw` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `names_enus` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `names_ja` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `param` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_menu
-- ----------------------------
INSERT INTO `pt_menu` VALUES ('079c1313bf4c42d4af74fa2700014455', '0', '7.png', null, '7', '46b7269a26044dfebb4edd06a2f9cd83', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', 'blog测试', null, null, null, null, null);
INSERT INTO `pt_menu` VALUES ('294ab73cc8274f1fa0663bf9c1bbe4d4', '1', '2.png', null, '3', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'true', '配置项', '配置项', '配置项', 'Configuration item', '構成項目', null);
INSERT INTO `pt_menu` VALUES ('297e0cf944f8cce70144f8dce1540069', '2', '8.png', '0', '8', '74aa20442105408d90f9e6469a3a92b5', '294ab73cc8274f1fa0663bf9c1bbe4d4', '8a40c0353fa828a6013fa898d4ac0020', 'false', '字典管理', '字典管理', '字典管理', 'dictionary management', '辞書の管理', null);
INSERT INTO `pt_menu` VALUES ('3272e2e0a7cd4d7f8e1e88abe9d70ae4', '1', '2.png', null, '2', '06244cf3520c49e8a45cbde82a53fa5e', '294ab73cc8274f1fa0663bf9c1bbe4d4', null, 'false', '参数管理', '参数管理', '参数管理', 'Parameter management', 'パラメータの管理', null);
INSERT INTO `pt_menu` VALUES ('4bae83d582744c928cb8c8f419586a31', '1', '2.png', null, '1', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'true', '用户权限', '用户权限', '用户权限', 'User privilege', 'ユーザの権限', null);
INSERT INTO `pt_menu` VALUES ('75e3b493276146eb839ed9fb3285e829', '1', '4.png', null, '4', '15495beebe984cd19dc30d65676c4c4d', 'ed90c7b40be74552bbfa7ac58efdc5fe', '8a40c0353fa828a6013fa898d4ac0020', 'false', '资源负载', '资源负载', '资源负载', '资源负载', '资源负载', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '1', '3.png', '-1', '1', null, null, '8a40c0353fa828a6013fa898d4ac0020', 'true', '菜单管理', '菜单管理', '菜单管理', 'Menu management', '管理メニュー', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0021', '1', '3.png', '2', '1', '91baed789bc14efdbebb10b49c69ee5b', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '用户管理', '用户管理', '用户管理', 'User management', 'ユーザーの管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0022', '1', '3.png', '2', '2', '1b0d7476974e4bf9b52f75fb82f87330', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '分组管理', '分组管理', '分组管理', 'Group management', 'グループの管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0023', '1', '3.png', '2', '3', '7ae62737df444d619f8fd376360d160c', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '角色管理', '角色管理', '角色管理', 'Role management', 'キャラクターの管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0024', '1', '3.png', '2', '5', '7eab5f800bab4efb8df1b2e8a0575f73', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '系统管理', '系统管理', '系统管理', 'System management', 'システム管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0025', '1', '3.png', '2', '6', '0da15c49299d41a4b720f787d053e3cb', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '功能管理', '功能管理', '功能管理', 'Functional management', '機能管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0026', '1', '8.png', '2', '4', '233356b63d8e477fb6e948b703232809', '4bae83d582744c928cb8c8f419586a31', '8a40c0353fa828a6013fa898d4ac0020', 'false', '岗位管理', '岗位管理', '岗位管理', 'Post management', 'ポストの管理', null);
INSERT INTO `pt_menu` VALUES ('8a40c0353fa828a6013fa898d4ac0027', '1', '3.png', '2', '7', 'ad09a1b897744812875c752c2d70f11a', 'a5bf1c38a2ea4b6085d15b830cb80518', '8a40c0353fa828a6013fa898d4ac0020', 'false', '部门管理', '部门管理', '部门管理', 'Department management', '部門の管理', null);
INSERT INTO `pt_menu` VALUES ('9fd1692ae1fc4f3dab4f0fca7c2a6d68', '1', '3.png', null, '3', '36d3b89e378b451ca89d1a41a3c53e10', 'ed90c7b40be74552bbfa7ac58efdc5fe', null, 'false', '在线Log4j', '在线Log4j', '在线Log4j', 'Online Log4j', 'オンラインLog4j', null);
INSERT INTO `pt_menu` VALUES ('a5bf1c38a2ea4b6085d15b830cb80518', '1', '2.png', null, '2', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'false', '组织机构', '组织机构', '组织机构', 'Organization', '組織機構', null);
INSERT INTO `pt_menu` VALUES ('bd5d741147f74a058a03bbb5164f392b', '1', '2.png', null, '9', 'd496b161d2564111992687b948862244', 'ed90c7b40be74552bbfa7ac58efdc5fe', '8a40c0353fa828a6013fa898d4ac0020', 'false', '数据源', '数据源', '数据源', 'Data source', 'データソース', null);
INSERT INTO `pt_menu` VALUES ('ed90c7b40be74552bbfa7ac58efdc5fe', '1', '2.png', null, '2', null, '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020', 'true', '系统维护', '系统维护', '系统维护', 'System maintenance', 'システムのメンテナンス', null);
INSERT INTO `pt_menu` VALUES ('f353e484ce074b86b0210f66346d9a80', '1', '9.png', null, '10', '235d855d7b914d728e434f0f309aa04d', 'ed90c7b40be74552bbfa7ac58efdc5fe', '8a40c0353fa828a6013fa898d4ac0020', 'false', '系统日志', '系统日志', '系统日志', 'The system log', 'システムログ', null);

-- ----------------------------
-- Table structure for pt_module
-- ----------------------------
DROP TABLE IF EXISTS `pt_module`;
CREATE TABLE `pt_module` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `parentmoduleids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `systemsids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_module
-- ----------------------------
INSERT INTO `pt_module` VALUES ('297e0cf944e9762e0144e97dfd6e00c9', '0', '数据源', '2.png', 'true', '数据源', '2', 'ec01ee2ea97a4ff1b2371304b8d0fe34', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('33a6f5664a194da8bc2394826cc25bc3', '0', null, '2.png', 'true', '岗位功能', '3', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('377c7b7a896b43d0992c630d62bd596d', '0', null, '2.png', 'true', '用户岗位管理', '3', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('4c343ddf030d4e17b6db83465600778b', '0', null, '2.png', 'true', '验证码', '2', '75f9bd430f4a4ec7b0a71928e15ea5f7', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('529d39f773a54ff39eea877f606d74b0', '0', null, '2.png', 'true', 'Ueditor', '2', '75f9bd430f4a4ec7b0a71928e15ea5f7', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('625e895224aa424693149208c9d4073e', '0', null, '2.png', 'true', '分组角色管理', '2', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('68422887e56645728038cdde08caef9a', '0', null, '2.png', 'true', 'Test', '3', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('6c4e642b911e468dbdcb62c9b4669eb3', '0', null, '2.png', 'true', '权限管理', '1', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('75f9bd430f4a4ec7b0a71928e15ea5f7', '0', null, '2.png', 'true', '通用功能', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('7cbeac9418c946a2bda0c6aabf23c276', '0', null, '2.png', 'true', '博客', '2', '68422887e56645728038cdde08caef9a', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '基础平台', '3.png', 'true', '基础平台', '0', null, '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0021', '0', '后台登陆', '8.png', 'true', '后台登陆', '1', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0022', '0', '字典', '2.png', 'true', '字典', '2', 'eabc054760164b4cb730c4f5c2a4d305', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0023', '0', '分组管理', '2.png', 'true', '分组管理', '2', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0024', '0', '角色管理', '2.png', 'true', '角色管理', '3', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0025', '0', '岗位管理', '5.png', 'true', '岗位管理', '4', 'cbe70ed41ad040938cfd7bcc5f4f0c58', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0026', '0', '系统管理', '5.png', 'true', '系统管理', '5', 'cbe70ed41ad040938cfd7bcc5f4f0c58', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0027', '0', '功能管理', '7.png', 'true', '功能管理', '6', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0028', '0', '部门管理', '3.png', 'true', '部门管理', '7', 'cbe70ed41ad040938cfd7bcc5f4f0c58', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0029', '0', '日志管理', '6.png', 'true', '日志管理', '11', 'ec01ee2ea97a4ff1b2371304b8d0fe34', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0030', '0', '用户管理', '3.png', 'true', '用户管理', '1', 'cbe70ed41ad040938cfd7bcc5f4f0c58', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0031', '0', '公共功能', '5.png', 'true', '公共功能', '1', '75f9bd430f4a4ec7b0a71928e15ea5f7', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0032', '0', '菜单管理', '8.png', 'true', '菜单管理', '1', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('8a40c0353fa828a6013fa898d4ac0033', '0', '模块管理', '7.png', 'true', '模块管理', '1', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('c4ab6b8d50434ddf8fa0ec106fcfc6ea', '0', null, '2.png', 'true', '角色功能管理', '2', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('c9cbb508c11b4b10aeac87a4f3ebc340', '0', null, '2.png', 'true', '资源负载', '2', 'ec01ee2ea97a4ff1b2371304b8d0fe34', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('cbe70ed41ad040938cfd7bcc5f4f0c58', '0', null, '2.png', 'true', '组织机构', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('eabc054760164b4cb730c4f5c2a4d305', '0', null, '2.png', 'true', '配置项', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('ec01ee2ea97a4ff1b2371304b8d0fe34', '0', null, '2.png', 'true', '运维', '2', '8a40c0353fa828a6013fa898d4ac0020', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('f7fbc8e3ee59405dabe02e18d562abf4', '0', null, '2.png', 'true', '用户分组管理', '2', '6c4e642b911e468dbdcb62c9b4669eb3', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('f85f516c0b86439087d48a45173ba0e7', '0', null, '2.png', 'true', 'Log4j', '2', 'ec01ee2ea97a4ff1b2371304b8d0fe34', '8a40c0353fa828a6013fa898d4ac0020');
INSERT INTO `pt_module` VALUES ('ffeeb72e053a4a86a4fe242642877a44', '0', null, '2.png', 'true', '参数管理', '2', 'eabc054760164b4cb730c4f5c2a4d305', '8a40c0353fa828a6013fa898d4ac0020');

-- ----------------------------
-- Table structure for pt_operator
-- ----------------------------
DROP TABLE IF EXISTS `pt_operator`;
CREATE TABLE `pt_operator` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `onemany` char(1) COLLATE utf8_bin DEFAULT NULL,
  `returnparamkeys` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `returnurl` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `rowfilter` char(1) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `moduleids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `splitpage` char(1) COLLATE utf8_bin DEFAULT NULL,
  `formtoken` char(1) COLLATE utf8_bin DEFAULT NULL,
  `ipblack` char(1) COLLATE utf8_bin DEFAULT NULL,
  `privilegess` char(1) COLLATE utf8_bin DEFAULT NULL,
  `ispv` char(1) COLLATE utf8_bin DEFAULT NULL,
  `pvtype` char(1) COLLATE utf8_bin DEFAULT NULL,
  `modulenames` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`),
  KEY `onemanyindex` (`onemany`) USING BTREE,
  KEY `returnparamkeysindex` (`returnparamkeys`) USING BTREE,
  KEY `returnurlindex` (`returnurl`) USING BTREE,
  KEY `rowfilterindex` (`rowfilter`) USING BTREE,
  KEY `urlindex` (`url`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_operator
-- ----------------------------
INSERT INTO `pt_operator` VALUES ('01aa0c85c8b84ae8aca7f5484336b203', '0', null, '保存', null, null, null, '0', '/jf/platform/dict/save', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('0478826a46df4f20b12f4043a97f8209', '0', null, '验证码', null, null, null, '0', '/jf/platform/authImg', '4c343ddf030d4e17b6db83465600778b', '0', '0', '0', '0', null, null, '验证码');
INSERT INTO `pt_operator` VALUES ('053d330462e1459ca1012c9d29113bc4', '0', null, '获取部门负责人', null, null, null, '0', '/jf/platform/dept/getPrincipal', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('08a96d5dd37f49459eeb02eebeb0a78c', '0', null, '列表', null, null, null, '0', '/jf/platform/roleOperator', 'c4ab6b8d50434ddf8fa0ec106fcfc6ea', '1', '0', '0', '1', null, null, '角色功能');
INSERT INTO `pt_operator` VALUES ('091855dd809b418fae88a7fec6d9f246', '0', null, '准备更新', null, null, null, '0', '/jf/platform/dict/edit', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('09b6ce29313c4051ba765de516a9b283', '0', null, 'treeData', null, null, null, '0', '/jf/platform/station/treeData', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('0da15c49299d41a4b720f787d053e3cb', '0', null, '默认列表', null, null, null, '0', '/jf/platform/operator', '8a40c0353fa828a6013fa898d4ac0027', '1', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('0fb7938c7d614fc389568eb67b442303', '0', null, '单选', null, null, null, '0', '/platform/module/radio.html', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('1046389d8525451697f2793185e7d6ee', '0', null, '更新', null, null, null, '0', '/jf/platform/dept/update', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('10499bc7f9cb4adf99beba00343b4ea6', '0', null, '获取菜单功能', null, null, null, '0', '/jf/platform/menu/getOperator', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('12141c1c3be241ca8a868bce9cd610d5', '0', null, '准备添加', null, null, null, '0', '/platform/dict/add.html', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('15566e63f3104c73b4a0b4a784dd11ca', '0', null, '保存', null, null, null, '0', '/jf/platform/role/save', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('18f50e0f48ef4dd9bec85f5612ab10c0', '0', null, '功能列表', null, null, null, '0', '/jf/platform/test/operator', '68422887e56645728038cdde08caef9a', '1', '0', '0', '1', null, null, 'Test');
INSERT INTO `pt_operator` VALUES ('1a8b4d8e4411412fa8bb561393563a85', '0', null, '准备添加', null, null, null, '0', '/platform/user/add.html', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('1b0d7476974e4bf9b52f75fb82f87330', '0', null, '分组默认列表', null, null, null, '0', '/jf/platform/group', '8a40c0353fa828a6013fa898d4ac0023', '1', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('1b1a809815574b2a9c1d0e18d692de17', '0', null, '更新', null, null, null, '0', '/jf/platform/operator/update', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('1f05b6496a494f488e4cacd2a449c37a', '0', null, '删除', null, null, null, '0', '/jf/platform/stationOperator/del', '33a6f5664a194da8bc2394826cc25bc3', '0', '0', '0', '1', null, null, '岗位功能');
INSERT INTO `pt_operator` VALUES ('21141da4febe4c929abe37126b37fd12', '0', null, '多选', null, null, null, '0', '/platform/station/checkbox.html', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('21b0a910ef6e4c60a325d5e57e6e6f65', '0', null, '单选', null, null, null, '0', '/platform/dict/radio.html', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('22926eb196a14b48be775f4880b5ba94', '0', null, '保存', null, null, null, '0', '/jf/platform/group/save', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('233356b63d8e477fb6e948b703232809', '0', null, '默认树', null, null, null, '0', '/jf/platform/station', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('235d855d7b914d728e434f0f309aa04d', '0', null, '默认列表', null, null, null, '0', '/jf/platform/sysLog', '8a40c0353fa828a6013fa898d4ac0029', '1', '0', '0', '1', null, null, '日志');
INSERT INTO `pt_operator` VALUES ('29c18b3394924c30882da049da14ad99', '0', null, '更新', null, null, null, '0', '/jf/platform/role/update', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('2bd0e8f116f9420692a81d1723cecf5c', '0', null, '日志列表', null, null, null, '0', '/jf/platform/test/sysLog', '68422887e56645728038cdde08caef9a', '1', '0', '0', '1', null, null, 'Test');
INSERT INTO `pt_operator` VALUES ('2be34991827e4e8da8e92f9b9e8bce25', '0', null, 'treeTableSub', null, null, null, '0', '/jf/platform/dict/treeTable', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('2c2063e17dc742a3b9c330b84c5dfa6a', '0', null, '自动补全', null, null, null, '0', '/jf/platform/test/autoComplete', '68422887e56645728038cdde08caef9a', '0', '0', '0', '1', null, null, 'Test');
INSERT INTO `pt_operator` VALUES ('2e32e08e495b4ccea6148774e9f91182', '0', null, '查看', null, null, null, '0', '/jf/platform/param/view', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('2fbbc9cfb0bf4b5bb504ead155c3423c', '0', null, '保存', null, null, null, '0', '/jf/platform/station/save', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('2fee901117c64e18873f60e8f800713d', '0', null, '单选', null, null, null, '0', '/platform/station/radio.html', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('3085a3b0c20d4f3aaa7c2d27fe986aba', '0', null, '博客添加', null, null, null, '0', '/jf/test/blog/add.html', '7cbeac9418c946a2bda0c6aabf23c276', '0', '0', '0', '1', null, null, '博客');
INSERT INTO `pt_operator` VALUES ('30bf01ffe1cb4ed39e92c6600ea39e93', '0', null, '添加', null, null, null, '0', '/jf/platform/groupRole/addRole', '625e895224aa424693149208c9d4073e', '0', '0', '0', '1', null, null, '分组角色');
INSERT INTO `pt_operator` VALUES ('32a3e59964204a3c8848e84b864306ae', '0', null, '删除', null, null, null, '0', '/jf/platform/systems/delete', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('335d1f8f46eb47a18001889f8cc21348', '0', null, '删除', null, null, null, '0', '/jf/platform/role/delete', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('351851fb7fce48f9a0ff6747971715ac', '0', null, 'lucene', null, null, null, '0', '/jf/platform/test/lucene', '68422887e56645728038cdde08caef9a', '1', '0', '0', '1', null, null, 'Test');
INSERT INTO `pt_operator` VALUES ('362cf247241c4d12b6242301e4a73516', '0', null, '删除', null, null, null, '0', '/jf/platform/station/delete', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('37218fb52ec94fb4bf76209a17916094', '0', null, '默认树', null, null, null, '0', '/jf/platform/module', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('39d82b5574b540b88d3723b36eb3e577', '0', null, '验证手机号是否存在', null, null, null, '0', '/jf/platform/login/valiMobile', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('3da96263a14343eaa7b409a93ec9e1db', '0', null, 'treeTable', null, null, null, '0', '/jf/platform/param/treeTable', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('3dd486cd58da467dbd83ae420db14815', '0', null, '准备添加', null, null, null, '0', '/weiXin/keyword/add.html', '8f53706d4af541588bde334d99d44727', '0', '0', '0', '1', null, null, '自动回复');
INSERT INTO `pt_operator` VALUES ('3e4e9e72dab243d38a1785d157c24cb6', '0', null, '博客更新', null, null, null, '0', '/jf/test/blog/update', '7cbeac9418c946a2bda0c6aabf23c276', '0', '1', '0', '1', null, null, '博客');
INSERT INTO `pt_operator` VALUES ('3ee5f986289d4a1990f4e42c9a0caadb', '0', null, '准备添加', null, null, null, '0', '/platform/group/add.html', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('423e8c2e2a644bbda0803f46ea8f31e2', '0', null, '准备国际化编辑', null, null, null, '0', '/jf/platform/menu/toEdit', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('4376888fd74f4247a926529e5da03442', '0', null, 'treeData', null, null, null, '0', '/jf/platform/user/treeData', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('437e05d09dd94720b67c4f230cdebe58', '0', null, '更新', null, null, null, '0', '/jf/platform/module/update', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('46b7269a26044dfebb4edd06a2f9cd83', '0', null, '博客列表', null, null, null, '0', '/jf/test/blog', '7cbeac9418c946a2bda0c6aabf23c276', '1', '0', '0', '1', null, null, '博客');
INSERT INTO `pt_operator` VALUES ('46e00ef0fd234e9dbf68ed9bbb437d0f', '0', null, '多选', null, null, null, '0', '/platform/department/checkbox.html', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('483bdacba04f4663986e6339166e8321', '0', null, '验证账号是否存在', null, null, null, '0', '/jf/platform/login/valiUserName', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('48db51f20b504c4ab489b1dcfd3ecbd9', '0', null, '密码变更', null, null, null, '0', '/platform/user/passChange.html', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('4959d88b8ca64eb19310c30799faa07c', '0', null, '准备添加', null, null, null, '0', '/platform/param/add.html', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('4a6544ae7a2548ad81c0e3994999023c', '0', null, '准备设置菜单功能', null, null, null, '0', '/platform/menu/operatorTree.html', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('4bebccaa8f0c4bfbaa2ff89f00706100', '0', null, '博客编辑', null, null, null, '0', '/jf/test/blog/edit', '7cbeac9418c946a2bda0c6aabf23c276', '0', '0', '0', '1', null, null, '博客');
INSERT INTO `pt_operator` VALUES ('4df80521e66447618796c3cfe02bf239', '0', null, '默认treeTable', null, null, null, '0', '/jf/platform/dict', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('4e03be6af2c74dae99a131a1ab3569f6', '0', null, '编辑', null, null, null, '0', '/jf/platform/param/edit', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('58a85040aa9f40cca0bdba6e23e30363', '0', null, '保存', null, null, null, '0', '/jf/platform/dept/save', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('5b249ad344d948b99f58768c323f5f71', '0', null, '准备添加', null, null, null, '0', '/platform/systems/add.html', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('5b47ae382f42421682852f889c176d49', '0', null, '验证身份证是否存在', null, null, null, '0', '/jf/platform/login/valiIdcard', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('5c2bdc059ae24ffda2758a2781bb46da', '0', null, 'log4jServlet', null, null, null, '0', '/se/log4j', 'f85f516c0b86439087d48a45173ba0e7', '0', '0', '0', '1', null, null, 'Log4j');
INSERT INTO `pt_operator` VALUES ('5fcac107c80d493d91b53a815d4b297a', '0', null, '保存', null, null, null, '0', '/jf/platform/user/save', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('61da3d9c60704621aa60d1da4553a264', '0', null, '添加', null, null, null, '0', '/jf/platform/userGroup/addGroup', 'f7fbc8e3ee59405dabe02e18d562abf4', '0', '0', '0', '1', null, null, '用户分组');
INSERT INTO `pt_operator` VALUES ('6324ff9e83654aa0bf7f9d918b636b55', '0', null, '查看字典', null, null, null, '0', '/jf/platform/dict/view', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('6566adb7fc6347e7b01a3c47129b5eb5', '0', null, 'ueditor', null, null, null, '0', '/jf/platform/ueditor', '529d39f773a54ff39eea877f606d74b0', '0', '0', '0', '1', null, null, 'Ueditor');
INSERT INTO `pt_operator` VALUES ('6569e0d9f2cd4e3a97af4e1b0cd8d2f7', '0', null, '删除', null, null, null, '0', '/jf/platform/dict/delete', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('671ce1e6167840baaa6d27f4f04574c9', '0', null, '主页', null, null, null, '0', '/jf/platform/param', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('6daed51284f94923b1c8a6414e646959', '0', null, 'treeData', null, null, null, '0', '/jf/platform/operator/treeData', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('721f7255449c445faf36607c254eea06', '0', null, 'iframe', null, null, null, '0', '/platform/log4j/iframe.html', 'f85f516c0b86439087d48a45173ba0e7', '0', '0', '0', '1', null, null, 'Log4j');
INSERT INTO `pt_operator` VALUES ('78c6026c6af44b41a6bef4cdb4cfb414', '0', null, '获取角色功能', null, null, null, '0', '/jf/platform/role/getOperator', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('79039a2260da46b0aabb5a62e8db6c87', '0', null, '查看', null, null, null, '0', '/jf/platform/user/view', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('7ae62737df444d619f8fd376360d160c', '0', null, '默认列表', null, null, null, '0', '/jf/platform/role', '8a40c0353fa828a6013fa898d4ac0024', '1', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('7b4281dd247c4624bee0d8f84c2c2715', '0', null, '保存', null, null, null, '0', '/jf/platform/systems/save', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('7bd7ca42560140ee8573b2ade6388f3e', '0', null, '用户分组选择', null, null, null, '0', '/jf/platform/userGroup/select', 'f7fbc8e3ee59405dabe02e18d562abf4', '0', '0', '0', '1', null, null, '用户分组');
INSERT INTO `pt_operator` VALUES ('7cc12b5c154a4a9782c518c57e8ab3aa', '0', null, '准备更新', null, null, null, '0', '/jf/platform/role/edit', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('7eab5f800bab4efb8df1b2e8a0575f73', '0', null, '默认列表', null, null, null, '0', '/jf/platform/systems', '8a40c0353fa828a6013fa898d4ac0026', '1', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('7ed5eefbbf3d4aa78d0c5b99f3b7010c', '0', null, '登陆验证', null, null, null, '0', '/jf/platform/login/vali', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '0', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('827a7067a28d442da3ddd834677127af', '0', null, '国际化编辑', null, null, null, '0', '/jf/platform/menu/edit', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('83ef85fd17804bb195d0ad3c07f88c30', '0', null, '准备更新', null, null, null, '0', '/jf/platform/operator/edit', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('88298fbd650d49f492e268816feffd15', '0', null, '验证邮箱是否存在', null, null, null, '0', '/jf/platform/login/valiMailBox', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('886bd497064b4c9f87d8461ebba421d1', '0', null, '首页', null, null, null, '0', '/jf/platform/index', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('8897dbe85b3e4e6989d662495272cf26', '0', null, 'Iframe', null, null, null, '0', '/platform/dict/treeTableIframe.html', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('8b1c1c86385642f2b6c97930b44bbbcf', '0', null, '单选', null, null, null, '0', '/platform/param/radio.html', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('8bd9c0e14df941cdaf6253cd08dbd9cd', '0', null, '准备更新', null, null, null, '0', '/jf/platform/systems/edit', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('8ca8af501522439d8c9249e00db5d78d', '0', null, '查看', null, null, null, '0', '/jf/platform/sysLog/view', '8a40c0353fa828a6013fa898d4ac0029', '0', '0', '0', '1', null, null, '日志');
INSERT INTO `pt_operator` VALUES ('8f79857b31d4475a94c712e997e89c99', '0', null, '更新', null, null, null, '0', '/jf/platform/dict/update', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('90c3cee940ea4211a714f5111d24ff5d', '0', null, 'treeData', null, null, null, '0', '/jf/platform/param/treeData', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('910955c2192a418995eeab8bf15372e9', '0', null, '准备添加', null, null, null, '0', '/platform/operator/add.html', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('91baed789bc14efdbebb10b49c69ee5b', '0', null, '默认主页列表', null, null, null, '0', '/jf/platform/user', '8a40c0353fa828a6013fa898d4ac0030', '1', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('9750ea3ee4474711b9acbda8d5b87ee7', '0', null, '删除', null, null, null, '0', '/jf/platform/groupRole/delRole', '625e895224aa424693149208c9d4073e', '0', '0', '0', '1', null, null, '分组角色');
INSERT INTO `pt_operator` VALUES ('9a708f39e123455e84b6125774bab1ea', '0', null, 'treeData', null, null, null, '0', '/jf/platform/module/treeData', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('9adcc4c40e3148988e5003aaedbb4948', '0', null, 'treeTableIframe', null, null, null, '0', '/platform/param/treeTableIframe.html', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('9c0ae757fc564f27860b975e5792ae6a', '0', null, 'log4jhtml', null, null, null, '0', '/platform/log4j/log4j.html', 'f85f516c0b86439087d48a45173ba0e7', '0', '0', '0', '1', null, null, 'Log4j');
INSERT INTO `pt_operator` VALUES ('9f75b47bdc0249e2b493c47384785a72', '0', null, '保存', null, null, null, '0', '/jf/platform/menu/save', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('a0c01a5248cd4bf38e57945dbb2b98c5', '0', null, '更新', null, null, null, '0', '/jf/platform/group/update', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('a0d2897ee9194378819e78538189faa0', '0', null, '列表', null, null, null, '0', '/jf/platform/stationOperator', '33a6f5664a194da8bc2394826cc25bc3', '1', '0', '0', '1', null, null, '岗位功能');
INSERT INTO `pt_operator` VALUES ('a1ff68acf9b24c34b347ff21e333cb70', '0', null, '设置菜单功能', null, null, null, '0', '/jf/platform/menu/setOperator', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('a2727f19f7cd4a038dd1a94f042a8cf1', '0', null, '博客保存', null, null, null, '0', '/jf/test/blog/save', '7cbeac9418c946a2bda0c6aabf23c276', '0', '1', '0', '1', null, null, '博客');
INSERT INTO `pt_operator` VALUES ('a5289b2638d845fbb06dedbcdd517f97', '0', null, '删除', null, null, null, '0', '/jf/platform/group/delete', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('a6623c65480f4f2cb63a4d7673f81e3a', '0', null, 'treeData', null, null, null, '0', '/jf/platform/menu/treeData', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('aa126932641f4e068ed8278a332de85d', '0', null, '默认主页', null, null, null, '0', '/jf/platform/index/content', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('acbceb432b5849aca9e9b284240281ec', '0', null, '分组角色下拉选择', null, null, null, '0', '/jf/platform/role/select', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('ad09a1b897744812875c752c2d70f11a', '0', null, '默认树', null, null, null, '0', '/jf/platform/dept', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('ad51a6ca95c646ce9c03778eda715734', '0', null, '保存', null, null, null, '0', '/jf/platform/operator/save', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('b13b002e2fad4e95bbe0e4dbc9fbdfe1', '0', null, '保存', null, null, null, '0', '/jf/platform/module/save', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('b23b17d4c83242e8a1a8ee8cfcde9907', '0', null, '查看', null, null, null, '0', '/jf/platform/operator/view', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('b4ee4ae4391f4243be69e838545d2131', '0', null, 'treeData', null, null, null, '0', '/jf/platform/dept/treeData', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('b8218945b8e743f29651569950014511', '0', null, '单选', null, null, null, '0', '/platform/department/radio.html', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('b82d86fb7b64498a9c2b8b9a99b3fbeb', '0', null, '删除', null, null, null, '0', '/jf/platform/menu/delete', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('b8339f29d8d84a4ead6454295f87b79c', '0', null, '人员分组设置', null, null, null, '0', '/jf/platform/group/select', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('bc2c865be6af42cf861294d446fb1c6f', '0', null, '单选', null, null, null, '0', '/platform/user/radio.html', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('c04adcd019e04cf3ba7c66af721a18dc', '0', null, '删除', null, null, null, '0', '/jf/platform/user/delete', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('c05642442e0a468ebe4f0b7771a803ae', '0', null, '更新', null, null, null, '0', '/jf/platform/systems/update', '8a40c0353fa828a6013fa898d4ac0026', '0', '0', '0', '1', null, null, '系统');
INSERT INTO `pt_operator` VALUES ('c081c50918f4459f8e36ab8cb4151a61', '0', null, '准备岗位功能设置', null, null, null, '0', '/platform/station/operatorTree.html', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('c0ccfcd127c347a8b9db140e5aa62188', '0', null, '准备添加', null, null, null, '0', '/platform/role/add.html', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('c1e991d1f56749298c18ff69d7777e0b', '0', null, '删除', null, null, null, '0', '/jf/platform/module/delete', '8a40c0353fa828a6013fa898d4ac0033', '0', '0', '0', '1', null, null, '模块');
INSERT INTO `pt_operator` VALUES ('c29ea4cbd9044bc786e9f4584ad840ff', '0', null, '获取岗位功能', null, null, null, '0', '/jf/platform/station/getOperator', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('c7132250f5054b808bb119122a6ecb52', '0', null, '设置岗位功能', null, null, null, '0', '/jf/platform/station/setOperator', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('c9d013d14cbd4f148fb4562c91803ee8', '0', null, '准备更新', null, null, null, '0', '/jf/platform/group/edit', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('ca0f6da01ada419eaa7739d9790e5b88', '0', null, '准备角色功能设置', null, null, null, '0', '/platform/role/operatorTree.html', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('cc6bcbee40ab43b2bd5aff6d9385e1fc', '0', null, '删除', null, null, null, '0', '/jf/platform/operator/delete', '8a40c0353fa828a6013fa898d4ac0027', '0', '0', '0', '1', null, null, '功能');
INSERT INTO `pt_operator` VALUES ('cc88acee3a664c58861a872c351385e6', '0', null, '选择', null, null, null, '0', '/jf/platform/groupRole/select', '625e895224aa424693149208c9d4073e', '0', '0', '0', '1', null, null, '分组角色');
INSERT INTO `pt_operator` VALUES ('ccf9b69e151840a28be75d8443b70273', '0', null, '更新', null, null, null, '0', '/jf/platform/param/update', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('cf26c1d2baa24a8791b3d264154b80d4', '0', null, '默认树', null, null, null, '0', '/jf/platform/menu', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('d115d08591ef4c0eaebef15f8294b287', '0', null, '准备设置部门负责人', null, null, null, '0', '/platform/department/userTree.html', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('d247fb45be724ed2a2bb5c92d73bf6cf', '0', null, '设置用户的组', null, null, null, '0', '/jf/platform/user/setGroup', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('d479dbdc901f4d85a207b9bace6465ac', '0', null, '更新', null, null, null, '0', '/jf/platform/user/update', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('d496b161d2564111992687b948862244', '0', null, 'iframe', null, null, null, '0', '/platform/druid/iframe.html', '297e0cf944e9762e0144e97dfd6e00c9', '0', '0', '0', '1', null, null, '数据源');
INSERT INTO `pt_operator` VALUES ('d5c8bdf7a49a4e46b776c05dc9ead484', '0', null, 'treeData', null, null, null, '0', '/jf/platform/dict/treeData', '8a40c0353fa828a6013fa898d4ac0022', '0', '0', '0', '1', null, null, '字典');
INSERT INTO `pt_operator` VALUES ('d646da8707ae41838fd2ec9bf0d467ee', '0', null, '设置角色功能', null, null, null, '0', '/jf/platform/role/setOperator', '8a40c0353fa828a6013fa898d4ac0024', '0', '0', '0', '1', null, null, '角色');
INSERT INTO `pt_operator` VALUES ('da6077ec1f354a409d0385b2c063e044', '0', null, '添加功能', null, null, null, '0', '/jf/platform/roleOperator/add', 'c4ab6b8d50434ddf8fa0ec106fcfc6ea', '0', '0', '0', '1', null, null, '角色功能');
INSERT INTO `pt_operator` VALUES ('dc750e57b54f4baca78d66969321ee51', '0', null, '更新', null, null, null, '0', '/jf/platform/station/update', '8a40c0353fa828a6013fa898d4ac0025', '0', '0', '0', '1', null, null, '岗位');
INSERT INTO `pt_operator` VALUES ('df0aa534655242e4a0bcd638b51a4e03', '0', null, '更新', null, null, null, '0', '/jf/platform/menu/update', '8a40c0353fa828a6013fa898d4ac0032', '0', '0', '0', '1', null, null, '菜单');
INSERT INTO `pt_operator` VALUES ('e037e0bae9a94e549d6b647db49a64a1', '0', null, '角色设置', null, null, null, '0', '/jf/platform/group/setRole', '8a40c0353fa828a6013fa898d4ac0023', '0', '0', '0', '1', null, null, '分组');
INSERT INTO `pt_operator` VALUES ('e1ac811d2a16495d927f994dd006e824', '0', null, '删除', null, null, null, '0', '/jf/platform/param/delete', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('e2cead0f68ac4a2d98765264578a9f83', '0', null, '删除', null, null, null, '0', '/jf/platform/userGroup/delGroup', 'f7fbc8e3ee59405dabe02e18d562abf4', '0', '0', '0', '1', null, null, '用户分组');
INSERT INTO `pt_operator` VALUES ('e4f182b4009e48a58673134324b2ec56', '0', null, '资源负载', null, null, null, '0', '/jf/platform/resources', 'c9cbb508c11b4b10aeac87a4f3ebc340', '0', '0', '0', '1', null, null, '资源负载');
INSERT INTO `pt_operator` VALUES ('e754dfdb794d4e7db6023c9b089a340c', '0', null, '多选', null, null, null, '0', '/platform/user/checkbox.html', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('ee27f5c23b6d4217b3b66295a3506a40', '0', null, '删除功能', null, null, null, '0', '/jf/platform/roleOperator/del', 'c4ab6b8d50434ddf8fa0ec106fcfc6ea', '0', '0', '0', '1', null, null, '角色功能');
INSERT INTO `pt_operator` VALUES ('f1f6f2c8f026498c8ee64b7a918d06df', '0', null, '准备更新', null, null, null, '0', '/jf/platform/user/edit', '8a40c0353fa828a6013fa898d4ac0030', '0', '0', '0', '1', null, null, '用户');
INSERT INTO `pt_operator` VALUES ('f604f021cba44b6fb96115265e557521', '0', null, '添加', null, null, null, '0', '/jf/platform/stationOperator/add', '33a6f5664a194da8bc2394826cc25bc3', '0', '0', '0', '1', null, null, '岗位功能');
INSERT INTO `pt_operator` VALUES ('f771691134c34174a819b5990310d000', '0', null, '首页', null, null, null, '0', '/jf/platform/', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('f771691134c34174a819b5990310da56', '0', null, '注销', null, null, null, '0', '/jf/platform/login/logout', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '1', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('f82c021dc443419fb2469032af73bf3e', '0', null, '删除', null, null, null, '0', '/jf/platform/dept/delete', '8a40c0353fa828a6013fa898d4ac0028', '0', '0', '0', '1', null, null, '部门');
INSERT INTO `pt_operator` VALUES ('fb487ba403254ce8843b39a768422f04', '0', null, '保存', null, null, null, '0', '/jf/platform/param/save', 'ffeeb72e053a4a86a4fe242642877a44', '0', '0', '0', '1', null, null, '参数管理');
INSERT INTO `pt_operator` VALUES ('fb6a0c1e618041bcbbf8cfd41311b1fa', '0', null, '准备登陆', null, null, null, '0', '/jf/platform/login', '8a40c0353fa828a6013fa898d4ac0021', '0', '0', '0', '0', null, null, '登陆');
INSERT INTO `pt_operator` VALUES ('fd9978df5c5a47f298e2d28e21e70b15', '0', null, '删除', null, null, null, '0', '/jf/platform/sysLog/delete', '8a40c0353fa828a6013fa898d4ac0029', '0', '0', '0', '1', null, null, '日志');
INSERT INTO `pt_operator` VALUES ('fdaeeb41691d460b8f142066d1f79927', '0', null, '博客删除', null, null, null, '0', '/jf/test/blog/delete', '7cbeac9418c946a2bda0c6aabf23c276', '0', '0', '0', '1', null, null, '博客');
INSERT INTO `pt_operator` VALUES ('ff91363b32424fa399e44cc0dfd688e9', '0', null, '博客查看', null, null, null, '0', '/jf/test/blog/view', '7cbeac9418c946a2bda0c6aabf23c276', '0', '0', '0', '1', null, null, '博客');

-- ----------------------------
-- Table structure for pt_param
-- ----------------------------
DROP TABLE IF EXISTS `pt_param`;
CREATE TABLE `pt_param` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `paths` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `zhuangtai` char(1) COLLATE utf8_bin DEFAULT NULL,
  `parentids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `levels` bigint(20) DEFAULT NULL,
  `numbers` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `val` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `i18n` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否国际化',
  `val_zhcn` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_zhhk` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_zhtw` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_ja` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `val_enus` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `status` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_param
-- ----------------------------
INSERT INTO `pt_param` VALUES ('0c78f87750a745bbb59005a6ca0f744a', '1', null, '3.png', 'weixinToken', '3', '100103root/83f4b0ee56904cbeb5f91696ad804c29/0c78f87750a745bbb59005a6ca0f744a', null, '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinToken', 'weixinchat', '0', 'weixinchat', 'weixinchat', 'weixinchat', 'weixinchat', 'weixinchat', '1');
INSERT INTO `pt_param` VALUES ('7381008292054bccba20224bc33774d7', '7', null, '2.png', 'weixinAppID', '1', '100103root/83f4b0ee56904cbeb5f91696ad804c29/7381008292054bccba20224bc33774d7', null, '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinAppID', '123', '0', '1234', '1234', '1234', '1234', '1234', '1');
INSERT INTO `pt_param` VALUES ('8094c60d7a594b36bb0187cbce9c4188', '0', null, '2.png', 'weixinAppSecret', '2', '100103root/83f4b0ee56904cbeb5f91696ad804c29/8094c60d7a594b36bb0187cbce9c4188', null, '83f4b0ee56904cbeb5f91696ad804c29', 'false', '2', 'weixinAppSecret', '123', '0', null, null, null, null, null, '1');
INSERT INTO `pt_param` VALUES ('83f4b0ee56904cbeb5f91696ad804c29', '0', null, '2.png', '微信配置', '1', '100103root/83f4b0ee56904cbeb5f91696ad804c29', null, '8a40c0353fa828a6013fa898d4ac0020', 'true', '1', 'weixinConfig', null, '0', null, null, null, null, null, '1');
INSERT INTO `pt_param` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '参数树', '1_open.png', '参数树', '1', '100103root', '1', null, 'true', '0', null, null, '0', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for pt_resources
-- ----------------------------
DROP TABLE IF EXISTS `pt_resources`;
CREATE TABLE `pt_resources` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `osname` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ips` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `hostname` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `cpunumber` bigint(20) DEFAULT NULL,
  `cpuratio` decimal(20,10) DEFAULT NULL,
  `phymemory` bigint(20) DEFAULT NULL,
  `phyfreememory` bigint(20) DEFAULT NULL,
  `jvmtotalmemory` bigint(20) DEFAULT NULL,
  `jvmfreememory` bigint(20) DEFAULT NULL,
  `jvmmaxmemory` bigint(20) DEFAULT NULL,
  `gccount` bigint(20) DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_resources
-- ----------------------------
INSERT INTO `pt_resources` VALUES ('0025b41055154038929bc0942954148f', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0701507140', '16304', '11175', '1434', '1177', '3625', '13', '2016-09-05 20:40:36');
INSERT INTO `pt_resources` VALUES ('003e545ea8144979be7c2e6e6173903a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0833334976', '16304', '11175', '1508', '700', '3625', '13', '2016-09-10 10:07:33');
INSERT INTO `pt_resources` VALUES ('0050e34f049347c2b0c5a87435baef9c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1964204083', '16304', '9860', '1508', '357', '3625', '13', '2016-09-10 13:30:04');
INSERT INTO `pt_resources` VALUES ('005b8841e7724e6a8655ee01d8c4d546', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0630553635', '16304', '11017', '1434', '1066', '3625', '13', '2016-09-05 21:40:01');
INSERT INTO `pt_resources` VALUES ('005d38e66cec4a40bf07388c437cd999', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1105777298', '16304', '10622', '1496', '1146', '3625', '13', '2016-09-08 20:19:39');
INSERT INTO `pt_resources` VALUES ('0079a8e1c1404788bca9ce7a8e53cc1c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1498066670', '16304', '10935', '1508', '444', '3625', '13', '2016-09-10 12:16:04');
INSERT INTO `pt_resources` VALUES ('00f7c041fa3d417cb3bb712838f7b1da', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1165326911', '16304', '9271', '1497', '809', '3625', '13', '2016-09-15 11:12:50');
INSERT INTO `pt_resources` VALUES ('00f8a47099a746e4a053c389fd141222', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1831598298', '16304', '9692', '1439', '1005', '3625', '13', '2016-09-09 20:23:49');
INSERT INTO `pt_resources` VALUES ('0107bb011d7346548f8285c032ebf05b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1133236386', '16304', '10821', '1508', '562', '3625', '13', '2016-09-10 11:36:04');
INSERT INTO `pt_resources` VALUES ('016a99822970446991391f56a9bb9ec4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0990640534', '16304', '10988', '1508', '562', '3625', '13', '2016-09-10 11:07:33');
INSERT INTO `pt_resources` VALUES ('01902d8d3a98473ca9b7b3558a4253ef', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1187283718', '16304', '11378', '1493', '1075', '3625', '13', '2016-09-05 20:22:14');
INSERT INTO `pt_resources` VALUES ('01ddf8daccc5435b9541364a95b635d5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1227164874', '16304', '10238', '1505', '981', '3625', '13', '2016-09-11 21:32:13');
INSERT INTO `pt_resources` VALUES ('01f6e89df70b4809ae8e4067a108ba2d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0832294141', '16304', '9388', '1487', '1187', '3625', '13', '2016-09-14 22:13:43');
INSERT INTO `pt_resources` VALUES ('022f90b475bb4025a3527212cb479fe4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1861095506', '16304', '10217', '1495', '673', '3625', '13', '2016-09-13 20:00:56');
INSERT INTO `pt_resources` VALUES ('02623ac044e448d1bc4218872df0d872', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1241545495', '16304', '9249', '1518', '415', '3625', '13', '2016-09-15 16:30:01');
INSERT INTO `pt_resources` VALUES ('027675fe9e4445e08ecc4d03937c0ca8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0965417697', '16304', '10576', '1439', '1043', '3625', '13', '2016-09-09 20:05:49');
INSERT INTO `pt_resources` VALUES ('030cb947a0c64e56b5e8f1cd6dd61e73', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1110129135', '16304', '10836', '1508', '562', '3625', '13', '2016-09-10 11:15:33');
INSERT INTO `pt_resources` VALUES ('0317c5bb33c4481ebb4ecd84e2baa700', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0739928852', '16304', '9847', '1041', '85', '3625', '11', '2016-09-14 21:00:20');
INSERT INTO `pt_resources` VALUES ('0340317a990143dcb7d18c617bfa6bfe', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1445431629', '16304', '9930', '1495', '940', '3625', '13', '2016-09-12 21:37:08');
INSERT INTO `pt_resources` VALUES ('03535af7b4bf4caa8b259a457fd05014', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0629529735', '16304', '11282', '1495', '974', '3625', '13', '2016-09-07 21:27:31');
INSERT INTO `pt_resources` VALUES ('036493ad0bc041beb84e5981c4a0653b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1864916761', '16304', '9925', '1494', '978', '3625', '13', '2016-09-10 15:30:51');
INSERT INTO `pt_resources` VALUES ('036ad40b88654ce8a45a8b88a62d6eff', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2329106802', '16304', '9751', '1410', '869', '3625', '14', '2016-09-10 15:04:04');
INSERT INTO `pt_resources` VALUES ('038f570e27544fce87c54218d87a0249', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0907049416', '16304', '11442', '1495', '818', '3625', '13', '2016-09-07 20:51:26');
INSERT INTO `pt_resources` VALUES ('03cee3fb13c0454c8270c3fc7076c97e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1317264578', '16304', '11365', '1508', '700', '3625', '13', '2016-09-10 10:03:33');
INSERT INTO `pt_resources` VALUES ('03f82774c8dc435b8677437659e4639a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1500783190', '16304', '9605', '1439', '1000', '3625', '13', '2016-09-09 20:57:49');
INSERT INTO `pt_resources` VALUES ('03f9c1d59a2f4bba950118cf32f965b5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2121073803', '16304', '10170', '1480', '909', '3625', '13', '2016-09-16 18:35:09');
INSERT INTO `pt_resources` VALUES ('0410b0b448c44c6b97ed67ff52d60cdf', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0914085964', '16304', '9916', '1495', '940', '3625', '13', '2016-09-12 21:45:08');
INSERT INTO `pt_resources` VALUES ('0430300ac96f419797ab2090faddb9eb', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0511446274', '16304', '10779', '1514', '613', '3625', '13', '2016-09-04 21:35:48');
INSERT INTO `pt_resources` VALUES ('0493f9416c3b4376b11b9ca4c89766e2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0917588482', '16304', '10457', '1496', '774', '3625', '13', '2016-09-08 21:53:39');
INSERT INTO `pt_resources` VALUES ('04c63621a57244cc89bcc903e634e5da', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1070079728', '16304', '10853', '1495', '974', '3625', '13', '2016-09-07 21:37:31');
INSERT INTO `pt_resources` VALUES ('04fb1b50295f4bc8972c8ff29216d08c', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0976214380', '16304', '10993', '1499', '1098', '3625', '13', '2016-09-06 21:42:51');
INSERT INTO `pt_resources` VALUES ('050abdf58dff4fc7bf48a9763ca0915b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9809', '1133', '282', '3625', '12', '2016-09-09 21:43:52');
INSERT INTO `pt_resources` VALUES ('0581be81018d4788ad717fd6c6b3d899', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1221032505', '16304', '10801', '1508', '433', '3625', '13', '2016-09-10 12:36:04');
INSERT INTO `pt_resources` VALUES ('061e22728ddc4fcf8750d46189a77f81', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1812510002', '16304', '9873', '1487', '758', '3625', '13', '2016-09-16 19:15:28');
INSERT INTO `pt_resources` VALUES ('063e95d8b6a54410a2332dd401cfd70e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0816803327', '16304', '10506', '1496', '890', '3625', '13', '2016-09-08 20:59:39');
INSERT INTO `pt_resources` VALUES ('06b603fdcf14430e970d86df66bda743', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1729228475', '16304', '9617', '1494', '772', '3625', '13', '2016-09-10 16:18:51');
INSERT INTO `pt_resources` VALUES ('075be5f97fb84103a415c3335624a09c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1928953187', '16304', '9843', '1508', '266', '3625', '13', '2016-09-10 14:02:04');
INSERT INTO `pt_resources` VALUES ('0779d3f41d1f4afd9b86b861bd13f6a2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1277655377', '16304', '9089', '1497', '495', '3625', '13', '2016-09-15 12:14:56');
INSERT INTO `pt_resources` VALUES ('07ac92c687a24852a2a78c6837980b4d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0873598667', '16304', '10961', '1508', '562', '3625', '13', '2016-09-10 11:09:33');
INSERT INTO `pt_resources` VALUES ('07f51b3ccffb4d3f8b4f5a18d8b479f4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1084673145', '16304', '9222', '1518', '722', '3625', '13', '2016-09-15 16:14:01');
INSERT INTO `pt_resources` VALUES ('07f800e4a0a8466b98446409981f6c01', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0378941198', '16304', '11498', '1495', '929', '3625', '13', '2016-09-07 20:43:26');
INSERT INTO `pt_resources` VALUES ('080266e429b14806baaa5cd8efc06e7a', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1048189116', '16304', '10925', '1514', '684', '3625', '13', '2016-09-04 21:21:48');
INSERT INTO `pt_resources` VALUES ('08628db3721d4ab68b7e1c74b8b2bafc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3143189677', '16304', '8832', '1508', '380', '3625', '13', '2016-09-10 13:12:04');
INSERT INTO `pt_resources` VALUES ('0874ab435ce142bda70f66ef57c60619', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0717258927', '16304', '9851', '1041', '93', '3625', '11', '2016-09-14 20:58:20');
INSERT INTO `pt_resources` VALUES ('087ec3671de2442a99c18e65c4b2ad84', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2197319249', '16304', '9530', '1497', '964', '3625', '13', '2016-09-15 10:38:47');
INSERT INTO `pt_resources` VALUES ('08ad9d77bbba42659892df4dd8e3f4f3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1485062259', '16304', '9560', '1497', '925', '3625', '13', '2016-09-15 10:42:47');
INSERT INTO `pt_resources` VALUES ('09dbd9fbb107436b95504401c125611b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0966873498', '16304', '11037', '1508', '433', '3625', '13', '2016-09-10 12:22:04');
INSERT INTO `pt_resources` VALUES ('0a498551ce8c45698dd8a676fb13d89f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1101594853', '16304', '9240', '1497', '980', '3625', '13', '2016-09-15 10:22:47');
INSERT INTO `pt_resources` VALUES ('0a7fabcf276c44089f139ac44939e8e8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0767353990', '16304', '9291', '1494', '982', '3625', '13', '2016-09-15 15:25:28');
INSERT INTO `pt_resources` VALUES ('0a92574d1f8944e7ae6248d122173e46', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1370141463', '16304', '10474', '1495', '696', '3625', '13', '2016-09-13 19:44:47');
INSERT INTO `pt_resources` VALUES ('0aaef1a9f80142b1a752ed185f447b8d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9292', '1137', '348', '3625', '12', '2016-09-11 18:21:19');
INSERT INTO `pt_resources` VALUES ('0b5b995d1ad54331b024d94b4ea31efd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0740577539', '16304', '10790', '1508', '411', '3625', '13', '2016-09-10 12:38:04');
INSERT INTO `pt_resources` VALUES ('0be8979347084021994f84eaf5919278', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1336368594', '16304', '9256', '1497', '773', '3625', '13', '2016-09-15 11:16:50');
INSERT INTO `pt_resources` VALUES ('0bf42994289346309e9c164685dfd149', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0522727178', '16304', '11239', '1434', '1072', '3625', '13', '2016-09-05 21:16:01');
INSERT INTO `pt_resources` VALUES ('0c36f92d84364313a548942ef0c13c53', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1293676811', '16304', '9264', '1487', '1047', '3625', '13', '2016-09-15 15:43:10');
INSERT INTO `pt_resources` VALUES ('0c6a70f891d2464c838afb4f699d2b97', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0895741638', '16304', '10508', '1496', '890', '3625', '13', '2016-09-08 20:49:39');
INSERT INTO `pt_resources` VALUES ('0d39d8ab14f341c8a4999c08aa3d0069', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0474359095', '16304', '11422', '1495', '661', '3625', '13', '2016-09-07 20:59:26');
INSERT INTO `pt_resources` VALUES ('0de0afcac15346a0ab16ea7bef5e4d47', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1228060461', '16304', '9213', '1497', '668', '3625', '13', '2016-09-15 11:40:50');
INSERT INTO `pt_resources` VALUES ('0e2dd6d1076c439ea4e38992557ebbbf', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0691647274', '16304', '9305', '1494', '1034', '3625', '13', '2016-09-15 15:19:28');
INSERT INTO `pt_resources` VALUES ('0e64d8fbea3940b6a28b2ab98600cd83', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0556417348', '16304', '10822', '1434', '1054', '3625', '13', '2016-09-05 22:06:01');
INSERT INTO `pt_resources` VALUES ('0e9b126d9a124021b75f040b4ecf8427', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0988220313', '16304', '11053', '1489', '1010', '3625', '13', '2016-09-06 21:15:24');
INSERT INTO `pt_resources` VALUES ('0ecd1323dcaf452ab9ad182dc3a923d0', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0732034858', '16304', '11196', '1434', '1067', '3625', '13', '2016-09-05 21:22:01');
INSERT INTO `pt_resources` VALUES ('0ee670b79755484396f9935c334a5ddd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1328529145', '16304', '10734', '1508', '512', '3625', '13', '2016-09-10 11:44:04');
INSERT INTO `pt_resources` VALUES ('0ef64186c1964a79b41bb768417f8bf5', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10752', '1145', '339', '3625', '12', '2016-09-04 17:51:06');
INSERT INTO `pt_resources` VALUES ('0f4f841097c74e4f95330891a01e6520', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9099', '1151', '234', '3625', '12', '2016-09-15 12:28:50');
INSERT INTO `pt_resources` VALUES ('0f74325cf53a4df399065dd4e25bb4ea', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2047240506', '16304', '9540', '1497', '919', '3625', '13', '2016-09-15 10:44:47');
INSERT INTO `pt_resources` VALUES ('0f7f4e763779471ea44aafc5a4fa7c4f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1458996774', '16304', '9733', '1439', '1005', '3625', '13', '2016-09-09 20:51:49');
INSERT INTO `pt_resources` VALUES ('0fd865770c37434b9a8f718ba32f91ab', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1494571141', '16304', '9625', '1439', '1005', '3625', '13', '2016-09-09 20:43:49');
INSERT INTO `pt_resources` VALUES ('107fb67267e9441d8a9cbdc1f5a20d46', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0559960214', '16304', '11056', '1434', '1066', '3625', '13', '2016-09-05 21:38:01');
INSERT INTO `pt_resources` VALUES ('10fe68470ace42bcbfccd7c64617ac02', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0992742397', '16304', '10591', '1495', '999', '3625', '13', '2016-09-12 20:55:08');
INSERT INTO `pt_resources` VALUES ('11358536dc154db78c22e05b9832be5b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2052641696', '16304', '9948', '1494', '1029', '3625', '13', '2016-09-10 15:24:51');
INSERT INTO `pt_resources` VALUES ('119c8b1f5e1c4a22bd1db7af580f63c0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2067621196', '16304', '9506', '1494', '772', '3625', '13', '2016-09-10 16:08:51');
INSERT INTO `pt_resources` VALUES ('11b1f86665cc4863920c9d70a34f8bc8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1530337225', '16304', '9488', '1497', '843', '3625', '13', '2016-09-15 10:58:50');
INSERT INTO `pt_resources` VALUES ('123503a16c1e41b29c751d1de047fc4d', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0804643278', '16304', '11199', '1434', '1067', '3625', '13', '2016-09-05 21:20:01');
INSERT INTO `pt_resources` VALUES ('12ddec3e3cd841248a6b7925d2443e8b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1109171739', '16304', '10666', '1508', '478', '3625', '13', '2016-09-10 11:48:04');
INSERT INTO `pt_resources` VALUES ('132dc6f5d7d149f18367334096088e9c', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0762372601', '16304', '10967', '1489', '929', '3625', '13', '2016-09-06 21:31:24');
INSERT INTO `pt_resources` VALUES ('137d9b5a03bf44169d08105c7aac8bba', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0714328295', '16304', '11184', '1498', '955', '3625', '13', '2016-09-06 20:46:10');
INSERT INTO `pt_resources` VALUES ('150bce5e6f524235bcbb0e63327b4e87', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0826500366', '16304', '10586', '1514', '580', '3625', '13', '2016-09-04 21:53:48');
INSERT INTO `pt_resources` VALUES ('1528ac6d556c48b58078a1afbc301a68', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0737004848', '16304', '10771', '1514', '616', '3625', '13', '2016-09-04 21:33:48');
INSERT INTO `pt_resources` VALUES ('15b05b76908843d79c1a4bb275eb21fc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1259505915', '16304', '9319', '1140', '208', '3625', '12', '2016-09-15 16:51:32');
INSERT INTO `pt_resources` VALUES ('1600eed1505f4ae7987756698c1bc8fc', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0664707956', '16304', '11152', '1434', '1142', '3625', '13', '2016-09-05 20:54:01');
INSERT INTO `pt_resources` VALUES ('1655413abb9b44f4a363c0ca41a7821e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1908251062', '16304', '9784', '1494', '772', '3625', '13', '2016-09-10 16:02:51');
INSERT INTO `pt_resources` VALUES ('16603e98b8d848f1b7487208d88e1fa3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0873421357', '16304', '10399', '1496', '842', '3625', '13', '2016-09-08 21:19:39');
INSERT INTO `pt_resources` VALUES ('171fc46f2cb34aeea09e0476cf956252', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9554', '1144', '297', '3625', '12', '2016-09-14 22:36:03');
INSERT INTO `pt_resources` VALUES ('17561abe26594aad92b5a97b0e22768a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2034959646', '16304', '9991', '1493', '727', '3625', '13', '2016-09-13 21:15:53');
INSERT INTO `pt_resources` VALUES ('17872e0f5eaa49bea091c1bd8a1c1b76', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0975303261', '16304', '9418', '1497', '1038', '3625', '13', '2016-09-14 22:35:38');
INSERT INTO `pt_resources` VALUES ('17c3eb51847c4dedbde0707d3eaf81ef', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0996857811', '16304', '9668', '1439', '1005', '3625', '13', '2016-09-09 20:47:49');
INSERT INTO `pt_resources` VALUES ('17f831cea2a246e0910eeba8ad4aa29a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0748694208', '16304', '9276', '1494', '1034', '3625', '13', '2016-09-15 15:15:28');
INSERT INTO `pt_resources` VALUES ('18450002569e4067aa7bb453fd119197', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1867258336', '16304', '10108', '1495', '642', '3625', '13', '2016-09-13 20:32:56');
INSERT INTO `pt_resources` VALUES ('18c162851a4145a3b5ed24e3cb86f01e', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0964902538', '16304', '10952', '1489', '929', '3625', '13', '2016-09-06 21:37:24');
INSERT INTO `pt_resources` VALUES ('18d7bd8387254fe688ee3ad602b77d13', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0841575359', '16304', '9292', '1494', '1035', '3625', '13', '2016-09-15 15:09:28');
INSERT INTO `pt_resources` VALUES ('18e626440cb9406d8ff4a187a3684db7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1260310523', '16304', '9301', '1518', '666', '3625', '13', '2016-09-15 16:18:01');
INSERT INTO `pt_resources` VALUES ('18eef7b74c7c4056baaf2784fb925fe1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1173288535', '16304', '10477', '1439', '1043', '3625', '13', '2016-09-09 20:09:49');
INSERT INTO `pt_resources` VALUES ('192efa41b0ea46979a6986c5fa3c14be', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0486043709', '16304', '10591', '1439', '1046', '3625', '13', '2016-09-09 20:01:49');
INSERT INTO `pt_resources` VALUES ('19554e0dd1bf4e5fadf5cec8a28f86b3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1357691800', '16304', '9651', '1439', '1005', '3625', '13', '2016-09-09 20:53:49');
INSERT INTO `pt_resources` VALUES ('198e7be663c24ba4b55dcd8d3db76651', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1801034159', '16304', '10886', '1508', '388', '3625', '13', '2016-09-10 12:50:04');
INSERT INTO `pt_resources` VALUES ('1a7edee62d4445a494d5d23b26b3d558', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1207924437', '16304', '9229', '1497', '970', '3625', '13', '2016-09-15 10:34:47');
INSERT INTO `pt_resources` VALUES ('1ae91f724d744ab8bf440c772a08b9e4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0860469496', '16304', '9145', '1497', '594', '3625', '13', '2016-09-15 12:06:56');
INSERT INTO `pt_resources` VALUES ('1b014314ea47432f8fcdea37af63b1cf', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1038508504', '16304', '9131', '1518', '350', '3625', '13', '2016-09-15 16:44:01');
INSERT INTO `pt_resources` VALUES ('1b9f26676ab046318d9fa552ad271970', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1797168806', '16304', '9696', '1410', '951', '3625', '14', '2016-09-10 14:38:04');
INSERT INTO `pt_resources` VALUES ('1ba0b67d22274baeb0bc5cab27c9e2d0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2043851066', '16304', '9535', '1497', '902', '3625', '13', '2016-09-15 10:46:50');
INSERT INTO `pt_resources` VALUES ('1bf7987814be4d9bacdcaddbe9b514fd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0945695731', '16304', '9163', '1497', '606', '3625', '13', '2016-09-15 12:04:56');
INSERT INTO `pt_resources` VALUES ('1c254b4587294bc39a137d64b08430d2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0973112634', '16304', '10368', '1495', '976', '3625', '13', '2016-09-12 21:11:08');
INSERT INTO `pt_resources` VALUES ('1c55913334e641ee8b6cda1da7b3ac6f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1178483777', '16304', '10169', '1496', '734', '3625', '13', '2016-09-08 22:03:39');
INSERT INTO `pt_resources` VALUES ('1ce363e24ec74997a7e22ec1b0b26d46', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0563582121', '16304', '11194', '1495', '974', '3625', '13', '2016-09-07 21:29:31');
INSERT INTO `pt_resources` VALUES ('1d06adcc6db444f395113b02f69338fe', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2610380331', '16304', '10985', '1508', '388', '3625', '13', '2016-09-10 12:58:04');
INSERT INTO `pt_resources` VALUES ('1d21baed5a454faaa09e76f3cc2a31a7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1896260457', '16304', '9600', '1439', '987', '3625', '13', '2016-09-09 21:07:49');
INSERT INTO `pt_resources` VALUES ('1de5d80eb8ad485c8235c819d417bf6f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1936584441', '16304', '10334', '1480', '915', '3625', '13', '2016-09-16 18:27:09');
INSERT INTO `pt_resources` VALUES ('1dea3c67598c4c0e8641e37fa95d52f6', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0654859006', '16304', '10750', '1502', '897', '3625', '13', '2016-09-04 17:46:43');
INSERT INTO `pt_resources` VALUES ('1e018d418f9640458f5d27861346beca', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2227099209', '16304', '10322', '1495', '976', '3625', '13', '2016-09-12 21:13:08');
INSERT INTO `pt_resources` VALUES ('1e5876c8c7b5487c9666ac0a7e710aa2', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0796625157', '16304', '10943', '1514', '647', '3625', '13', '2016-09-04 21:27:48');
INSERT INTO `pt_resources` VALUES ('1e7b91348b94436fb04505c354b60ae4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1822941893', '16304', '10018', '1493', '739', '3625', '13', '2016-09-13 20:59:53');
INSERT INTO `pt_resources` VALUES ('1e81c4d2ecd142a1ba107a55dbd0a372', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2285196058', '16304', '10216', '1495', '673', '3625', '13', '2016-09-13 19:54:56');
INSERT INTO `pt_resources` VALUES ('1f5b003842f54425ad5a9826f0c0cbdc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1867096088', '16304', '10247', '1495', '673', '3625', '13', '2016-09-13 20:10:56');
INSERT INTO `pt_resources` VALUES ('1fb402c70f844983a5ee587b7629970d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1813665214', '16304', '9323', '1491', '940', '3625', '13', '2016-09-11 17:56:10');
INSERT INTO `pt_resources` VALUES ('1fc7bc388dfb48c2b6561539e451f6b6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1173606398', '16304', '9256', '1497', '768', '3625', '13', '2016-09-15 11:18:50');
INSERT INTO `pt_resources` VALUES ('200d3ab95d5a462d838ab3d2aa860438', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1065572449', '16304', '9746', '1403', '1165', '3625', '12', '2016-09-14 21:02:20');
INSERT INTO `pt_resources` VALUES ('2042d3de3fb84e1088f4fb9e64e6e243', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0751829115', '16304', '9136', '1518', '350', '3625', '13', '2016-09-15 16:40:01');
INSERT INTO `pt_resources` VALUES ('20927ff14ddc472b90a9d77d84cc28e6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0346425137', '16304', '10946', '1508', '444', '3625', '13', '2016-09-10 12:20:04');
INSERT INTO `pt_resources` VALUES ('20fe1babb27b4a47aea825376fe249fa', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0478064734', '16304', '10789', '1514', '644', '3625', '13', '2016-09-04 21:31:48');
INSERT INTO `pt_resources` VALUES ('213594f70dd94d2ba0c995937fca79ed', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1104532507', '16304', '9150', '1518', '802', '3625', '13', '2016-09-15 15:59:28');
INSERT INTO `pt_resources` VALUES ('21ef49a41c3d45ef912d08dc4576c95d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2069043793', '16304', '10275', '1480', '915', '3625', '13', '2016-09-16 18:29:09');
INSERT INTO `pt_resources` VALUES ('21f9c8f5297c47698e07047594d3553d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0980207025', '16304', '9499', '1497', '867', '3625', '13', '2016-09-15 10:54:50');
INSERT INTO `pt_resources` VALUES ('221164fb826e4081a3aee218b3601ede', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1473968998', '16304', '9796', '1439', '1005', '3625', '13', '2016-09-09 20:35:49');
INSERT INTO `pt_resources` VALUES ('2283348a006d4c099e381bc631437782', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0496758033', '16304', '10955', '1514', '580', '3625', '13', '2016-09-04 21:59:48');
INSERT INTO `pt_resources` VALUES ('2290efd2a9de4164b208747d24ae9e46', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1673288748', '16304', '9802', '1439', '929', '3625', '13', '2016-09-09 21:19:49');
INSERT INTO `pt_resources` VALUES ('22b64314c7ba43cca52ec3f49e139c62', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2324849990', '16304', '9921', '1487', '758', '3625', '13', '2016-09-16 19:01:28');
INSERT INTO `pt_resources` VALUES ('22cdd2f085f64d26805ab3c0b9e04591', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1745181786', '16304', '10288', '1495', '971', '3625', '13', '2016-09-12 21:15:08');
INSERT INTO `pt_resources` VALUES ('232370a8067248f5b296da31e53a3793', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1723034749', '16304', '9760', '1487', '758', '3625', '13', '2016-09-16 19:21:28');
INSERT INTO `pt_resources` VALUES ('236e8bb0e9c243c1a1c242eb054d5b36', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1667640387', '16304', '9841', '1439', '929', '3625', '13', '2016-09-09 21:17:49');
INSERT INTO `pt_resources` VALUES ('23eb834d520b4bcebcc4f24c17db4284', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2238634852', '16304', '9807', '1494', '900', '3625', '13', '2016-09-10 15:44:51');
INSERT INTO `pt_resources` VALUES ('2430e81e9faf4ee7afa7c0aa93f4d44c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1165654579', '16304', '10506', '1496', '854', '3625', '13', '2016-09-08 21:17:39');
INSERT INTO `pt_resources` VALUES ('2457f557b38146668e9abf2f70ceed92', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2655422149', '16304', '10181', '1495', '696', '3625', '13', '2016-09-13 19:46:47');
INSERT INTO `pt_resources` VALUES ('247173320cdf4aa0a783c3577492fce2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1885762126', '16304', '9279', '1497', '975', '3625', '13', '2016-09-15 10:28:47');
INSERT INTO `pt_resources` VALUES ('24e07e7b2f2b47efac1bd5f87ace25ca', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1192701361', '16304', '10128', '1495', '940', '3625', '13', '2016-09-12 21:35:08');
INSERT INTO `pt_resources` VALUES ('24e835e4284b4261a2dfcebff80f8657', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1293955213', '16304', '10596', '1495', '1059', '3625', '13', '2016-09-12 20:35:08');
INSERT INTO `pt_resources` VALUES ('25263c25cb3b4d5c945496f544885be2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2300373143', '16304', '10017', '1487', '936', '3625', '13', '2016-09-16 18:49:28');
INSERT INTO `pt_resources` VALUES ('255c6d0a48b6407ba2b873078b9c709a', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0435450859', '16304', '10746', '1514', '588', '3625', '13', '2016-09-04 21:39:48');
INSERT INTO `pt_resources` VALUES ('257686fdfee2431791fe62c351d35e4f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0797567568', '16304', '10427', '1495', '964', '3625', '13', '2016-09-12 21:27:08');
INSERT INTO `pt_resources` VALUES ('25832d41a01e47509095c5e232910680', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2100252115', '16304', '9620', '1410', '869', '3625', '14', '2016-09-10 14:56:04');
INSERT INTO `pt_resources` VALUES ('25bc9ee37e2d4a7eb3a2107e7812e4c1', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1120182443', '16304', '10952', '1489', '895', '3625', '13', '2016-09-06 21:39:24');
INSERT INTO `pt_resources` VALUES ('25c985ffd38448abb6107e0d0df97d4a', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0749912263', '16304', '11112', '1434', '1072', '3625', '13', '2016-09-05 21:02:01');
INSERT INTO `pt_resources` VALUES ('25dbcdf05f4f4bf39b23926f198ac40b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1129587717', '16304', '10841', '1508', '399', '3625', '13', '2016-09-10 12:44:04');
INSERT INTO `pt_resources` VALUES ('25e1c66609d34f75a0b75ce49cf9eafc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0877665469', '16304', '9417', '1494', '1040', '3625', '13', '2016-09-15 15:03:28');
INSERT INTO `pt_resources` VALUES ('263eedce2fd34d6ab80b88eb9251154d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1786032668', '16304', '9679', '1410', '932', '3625', '14', '2016-09-10 14:44:04');
INSERT INTO `pt_resources` VALUES ('269f56bfa6e447a6b1ca22466f55295d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1048482810', '16304', '10484', '1496', '854', '3625', '13', '2016-09-08 21:13:39');
INSERT INTO `pt_resources` VALUES ('26e970bbace24b1b9f7e52d6661737a3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1031038285', '16304', '9433', '1497', '809', '3625', '13', '2016-09-15 11:08:50');
INSERT INTO `pt_resources` VALUES ('27636b67c8a94b1abe5eedf32afbf560', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1993470041', '16304', '9995', '1493', '727', '3625', '13', '2016-09-13 21:07:53');
INSERT INTO `pt_resources` VALUES ('277f7ed5042441dbbcb2659c56040fca', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1163809778', '16304', '10175', '1439', '1005', '3625', '13', '2016-09-09 20:25:49');
INSERT INTO `pt_resources` VALUES ('27e240e8265e4ae6b700b7007baea689', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1002897167', '16304', '11220', '1508', '700', '3625', '13', '2016-09-10 10:05:33');
INSERT INTO `pt_resources` VALUES ('2847556cbdd7405f9926c5440c0aa19e', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10672', '1134', '312', '3625', '12', '2016-09-04 17:53:11');
INSERT INTO `pt_resources` VALUES ('28855120032d4ee3b9d9fcee42d1d04c', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0642550934', '16304', '11016', '1434', '1061', '3625', '13', '2016-09-05 21:44:01');
INSERT INTO `pt_resources` VALUES ('28ab7e5acb384d2fbc20c9f86e73344b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0685294610', '16304', '9061', '1496', '850', '3625', '13', '2016-09-11 18:51:27');
INSERT INTO `pt_resources` VALUES ('29d24dc43c564e4abb078c0edeea67a3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1115263613', '16304', '10876', '1508', '632', '3625', '13', '2016-09-10 10:39:33');
INSERT INTO `pt_resources` VALUES ('29d93236d4ef4c6a9f91b418f5f47d7d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1948599585', '16304', '9858', '1487', '758', '3625', '13', '2016-09-16 19:17:28');
INSERT INTO `pt_resources` VALUES ('2a546f53f7c54ae79c2453d9bf3054fc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9496', '1128', '350', '3625', '12', '2016-09-11 17:38:10');
INSERT INTO `pt_resources` VALUES ('2a59071e425d4850b2caa4f7886f3411', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1205342702', '16304', '11418', '1495', '1006', '3625', '13', '2016-09-07 21:13:31');
INSERT INTO `pt_resources` VALUES ('2ab0020639e54c748a6b10185e8d4f09', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9846', '1128', '283', '3625', '12', '2016-09-09 21:49:57');
INSERT INTO `pt_resources` VALUES ('2af6915b88cd496db1495647042d67cc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1025694618', '16304', '10800', '1508', '666', '3625', '13', '2016-09-10 10:29:33');
INSERT INTO `pt_resources` VALUES ('2b19365dcded412fb043611c16b4f0ac', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0929107680', '16304', '10851', '1495', '974', '3625', '13', '2016-09-07 21:45:31');
INSERT INTO `pt_resources` VALUES ('2b3c8fc91c0a4d04a2750b524a60d292', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1318338014', '16304', '9178', '1518', '734', '3625', '13', '2016-09-15 16:05:44');
INSERT INTO `pt_resources` VALUES ('2b458ad0add54b0eabed485d3f1c3ad3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2081038463', '16304', '9796', '1494', '900', '3625', '13', '2016-09-10 15:46:51');
INSERT INTO `pt_resources` VALUES ('2ba12393d64942d386c8c5e5aa261249', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9385', '1132', '343', '3625', '12', '2016-09-15 10:14:48');
INSERT INTO `pt_resources` VALUES ('2c22d5a8e8e9420bbc6673fb110b8866', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1346591587', '16304', '9232', '1497', '975', '3625', '13', '2016-09-15 10:32:47');
INSERT INTO `pt_resources` VALUES ('2c39ca4624fa40f1aded87b0c2e7c019', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1144863415', '16304', '9162', '1497', '668', '3625', '13', '2016-09-15 11:58:56');
INSERT INTO `pt_resources` VALUES ('2c8c16120398487cbd5bc1f340898fac', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1818414826', '16304', '9864', '1508', '357', '3625', '13', '2016-09-10 13:40:04');
INSERT INTO `pt_resources` VALUES ('2d4c608498a24de6a996f355a54cd002', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2598216133', '16304', '8988', '1490', '897', '3625', '13', '2016-09-11 18:58:03');
INSERT INTO `pt_resources` VALUES ('2d944c0a17ca4b2f98eacb902c8cd0b7', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0680808794', '16304', '11457', '1495', '864', '3625', '13', '2016-09-07 20:49:26');
INSERT INTO `pt_resources` VALUES ('2d9f761beb534b5fb9652e9effcf2eff', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1819723785', '16304', '9883', '1508', '357', '3625', '13', '2016-09-10 13:34:04');
INSERT INTO `pt_resources` VALUES ('2dae7bc287584ec3a5c8b35fe07f5fff', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2546148556', '16304', '9791', '1494', '772', '3625', '13', '2016-09-10 16:00:51');
INSERT INTO `pt_resources` VALUES ('2dcaf6dff0434578a744f56f720a49e6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0823898923', '16304', '10816', '1503', '931', '3625', '13', '2016-09-08 19:48:42');
INSERT INTO `pt_resources` VALUES ('2eac6430e8044949a85dabffb1ae70a5', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0754302881', '16304', '10627', '1514', '583', '3625', '13', '2016-09-04 21:51:48');
INSERT INTO `pt_resources` VALUES ('2ed6b04834494083844fec89f7c7f8e4', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0330146886', '16304', '11176', '1495', '974', '3625', '13', '2016-09-07 21:31:31');
INSERT INTO `pt_resources` VALUES ('2f28c838193448b9a7befbacbb0871c2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1153085810', '16304', '9913', '1138', '214', '3625', '12', '2016-09-14 20:49:48');
INSERT INTO `pt_resources` VALUES ('2f310bf9a6d14c6eb75e70dfd0bcf1e2', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0574420171', '16304', '11308', '1506', '888', '3625', '13', '2016-09-06 20:41:37');
INSERT INTO `pt_resources` VALUES ('2f3c14e68e7740838030e0207fca5899', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.4626300006', '16304', '10227', '1042', '103', '3625', '11', '2016-09-09 21:54:53');
INSERT INTO `pt_resources` VALUES ('2f88e48a968046628b05c667dc999443', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0574336500', '16304', '11231', '1434', '1072', '3625', '13', '2016-09-05 21:14:01');
INSERT INTO `pt_resources` VALUES ('2fa3372d7d244d968d085874e55f81a0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1867854521', '16304', '9660', '1410', '932', '3625', '14', '2016-09-10 14:48:04');
INSERT INTO `pt_resources` VALUES ('2fd72bbe840a4e02a0a449c4c9fe6600', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2941437871', '16304', '10223', '1495', '684', '3625', '13', '2016-09-13 19:52:56');
INSERT INTO `pt_resources` VALUES ('3032fd87995e48bf999ebbf8e11e9a8f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1287356806', '16304', '9699', '1439', '1005', '3625', '13', '2016-09-09 20:41:49');
INSERT INTO `pt_resources` VALUES ('30832d761f2947a5b38bfc10467454ad', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0999003271', '16304', '9328', '1497', '978', '3625', '13', '2016-09-15 10:24:47');
INSERT INTO `pt_resources` VALUES ('30d03697469340f18d20db4bc117e779', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1505854080', '16304', '9938', '1439', '934', '3625', '13', '2016-09-09 21:15:49');
INSERT INTO `pt_resources` VALUES ('30ea3c6cfcc4417a8925ca3dcbd6b632', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1066445007', '16304', '10923', '1508', '444', '3625', '13', '2016-09-10 12:14:04');
INSERT INTO `pt_resources` VALUES ('30f18275f6534be890e51a6f219dfd53', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0775456811', '16304', '11124', '1434', '1072', '3625', '13', '2016-09-05 21:00:01');
INSERT INTO `pt_resources` VALUES ('310495cc36a44f99b1d6bbae80204461', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1216058389', '16304', '10916', '1508', '562', '3625', '13', '2016-09-10 11:03:33');
INSERT INTO `pt_resources` VALUES ('31edbc13714b4bdba1000749fbdcbc19', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3138786715', '16304', '10356', '1505', '1005', '3625', '13', '2016-09-11 21:26:13');
INSERT INTO `pt_resources` VALUES ('3273521b230e4218bb03900452ce39d3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1571588736', '16304', '10440', '1496', '819', '3625', '13', '2016-09-08 21:41:39');
INSERT INTO `pt_resources` VALUES ('328367de7e3a4dc0a17ec85fcc0df2d9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2022743448', '16304', '9971', '1495', '630', '3625', '13', '2016-09-13 20:50:56');
INSERT INTO `pt_resources` VALUES ('32b45f60e957497fb715d562cfc3ed06', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1040328805', '16304', '9191', '1518', '722', '3625', '13', '2016-09-15 16:09:35');
INSERT INTO `pt_resources` VALUES ('32dddd12e6164fc8a6a3fa028003bef1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1334119440', '16304', '10811', '1508', '666', '3625', '13', '2016-09-10 10:27:33');
INSERT INTO `pt_resources` VALUES ('330227a504d0408091f987eef546c699', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0729617373', '16304', '10970', '1489', '929', '3625', '13', '2016-09-06 21:35:24');
INSERT INTO `pt_resources` VALUES ('345acda9f41141d182eddd659c32c856', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0583965790', '16304', '11050', '1489', '961', '3625', '13', '2016-09-06 21:19:24');
INSERT INTO `pt_resources` VALUES ('348c10c1014b413aa26094b3847a79bf', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1036232120', '16304', '9671', '1439', '1005', '3625', '13', '2016-09-09 20:45:49');
INSERT INTO `pt_resources` VALUES ('34a063a93e9a4575bf226364b433b729', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1306987571', '16304', '9255', '1518', '495', '3625', '13', '2016-09-15 16:26:01');
INSERT INTO `pt_resources` VALUES ('34a3bfb0682c43418b40be7d62262c13', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1966883331', '16304', '9743', '1410', '849', '3625', '14', '2016-09-10 15:14:04');
INSERT INTO `pt_resources` VALUES ('3550fc925f0a49bba79422a46e4b0c8e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1345128665', '16304', '9034', '1497', '1015', '3625', '13', '2016-09-15 10:18:47');
INSERT INTO `pt_resources` VALUES ('356a24df3d5144998442fc8972727b44', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0811321137', '16304', '10526', '1495', '1059', '3625', '13', '2016-09-12 20:39:08');
INSERT INTO `pt_resources` VALUES ('35c369fdf8d5433a96515ab78767d9b0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1720010138', '16304', '9959', '1494', '995', '3625', '13', '2016-09-10 15:28:51');
INSERT INTO `pt_resources` VALUES ('35fcf2e11bfc48a087ebbff740dc4114', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9404', '1135', '356', '3625', '12', '2016-09-15 14:55:29');
INSERT INTO `pt_resources` VALUES ('362efc8a43764755afb773edb64efc39', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1108045863', '16304', '10505', '1496', '953', '3625', '13', '2016-09-08 20:37:39');
INSERT INTO `pt_resources` VALUES ('365089e227014234a176b67bf7337d00', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1193459241', '16304', '10585', '1496', '872', '3625', '13', '2016-09-08 21:03:39');
INSERT INTO `pt_resources` VALUES ('3675260304254513960b46f9740e65e4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2055728811', '16304', '9647', '1493', '727', '3625', '13', '2016-09-13 21:03:53');
INSERT INTO `pt_resources` VALUES ('36aa487b0eb9455aae542d7a21c86abc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1813823115', '16304', '9816', '1494', '778', '3625', '13', '2016-09-10 15:58:51');
INSERT INTO `pt_resources` VALUES ('36de3b2f00964367b1f7ba120c24d607', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0691071866', '16304', '10969', '1489', '929', '3625', '13', '2016-09-06 21:33:24');
INSERT INTO `pt_resources` VALUES ('371d0cb4f9644d10a1045a724be2c7fc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0961325594', '16304', '9319', '1498', '1205', '3625', '13', '2016-09-15 16:59:32');
INSERT INTO `pt_resources` VALUES ('372aeca255154a9d82099f58665eaa27', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9644', '1138', '378', '3625', '12', '2016-09-11 17:34:12');
INSERT INTO `pt_resources` VALUES ('377794f7ac934e72b6bbdeef528a4426', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1908840904', '16304', '10107', '1439', '1005', '3625', '13', '2016-09-09 20:27:49');
INSERT INTO `pt_resources` VALUES ('377a7b43cbc047bfb959449b239d184a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0231833374', '16304', '10871', '1508', '388', '3625', '13', '2016-09-10 12:48:04');
INSERT INTO `pt_resources` VALUES ('378252567a3a4f9ea4183012fe2b1e97', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1285027567', '16304', '10431', '1439', '1043', '3625', '13', '2016-09-09 20:07:49');
INSERT INTO `pt_resources` VALUES ('379c9fe13b6744a68737182100ef0539', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0866271053', '16304', '11105', '1508', '562', '3625', '13', '2016-09-10 10:59:33');
INSERT INTO `pt_resources` VALUES ('37d132e349d74846a66233c0d65974af', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2083798399', '16304', '10278', '1495', '642', '3625', '13', '2016-09-13 20:26:56');
INSERT INTO `pt_resources` VALUES ('384e957c16444cb0af07439a1379699a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2243816123', '16304', '10214', '1495', '673', '3625', '13', '2016-09-13 19:56:56');
INSERT INTO `pt_resources` VALUES ('385ecdfd898b44a7922282ec99b65149', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2617166164', '16304', '10674', '1508', '478', '3625', '13', '2016-09-10 11:58:04');
INSERT INTO `pt_resources` VALUES ('389453d016f747ec9a084bb315a21a5e', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0689602510', '16304', '11181', '1434', '1174', '3625', '13', '2016-09-05 20:44:36');
INSERT INTO `pt_resources` VALUES ('3905a17ab8834aad8b3afc10588c8eff', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0819978407', '16304', '9288', '1518', '666', '3625', '13', '2016-09-15 16:20:01');
INSERT INTO `pt_resources` VALUES ('390ec8ddb75448cca9a817cf49cc8b16', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1179309484', '16304', '9660', '1042', '112', '3625', '11', '2016-09-14 21:18:05');
INSERT INTO `pt_resources` VALUES ('395e5b703ba245fe8c499c54c07f83b1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0350278478', '16304', '10597', '1439', '1046', '3625', '13', '2016-09-09 20:03:49');
INSERT INTO `pt_resources` VALUES ('39ed954cdba04dfca495ee2e1d1c3e41', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1727637018', '16304', '9781', '1508', '266', '3625', '13', '2016-09-10 14:22:04');
INSERT INTO `pt_resources` VALUES ('3b78cb1776eb42f5a8806678026f8b09', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0813260747', '16304', '10479', '1495', '1029', '3625', '13', '2016-09-12 20:45:08');
INSERT INTO `pt_resources` VALUES ('3bd8bb7298424be9829caf89a0d29675', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1837300101', '16304', '10528', '1508', '388', '3625', '13', '2016-09-10 13:02:04');
INSERT INTO `pt_resources` VALUES ('3c2b9cc2cb714dbcb723f65c6921e285', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0480121320', '16304', '10823', '1434', '1054', '3625', '13', '2016-09-05 22:04:01');
INSERT INTO `pt_resources` VALUES ('3c7e97e69d3143ab8725236a30aa2042', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3259207932', '16304', '10258', '1505', '1005', '3625', '13', '2016-09-11 21:24:13');
INSERT INTO `pt_resources` VALUES ('3c931e967b504f3c80d3a472aa25b188', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2020943724', '16304', '9459', '1497', '843', '3625', '13', '2016-09-15 11:00:50');
INSERT INTO `pt_resources` VALUES ('3d32669d776247af9d737349d9c14d6b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3699794373', '16304', '9561', '1539', '636', '3625', '17', '2016-09-13 21:16:41');
INSERT INTO `pt_resources` VALUES ('3e7bd5b3c59240868e82e2c2c86dc162', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1110733004', '16304', '10333', '1495', '964', '3625', '13', '2016-09-12 21:29:08');
INSERT INTO `pt_resources` VALUES ('3edc81549a3b42dc87547c9fd2ec876b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1564292091', '16304', '10304', '1495', '994', '3625', '13', '2016-09-12 21:01:08');
INSERT INTO `pt_resources` VALUES ('3f2c0e34ed68418bb89e85d5c46438e7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1398610459', '16304', '10134', '1448', '787', '3625', '13', '2016-09-09 21:58:53');
INSERT INTO `pt_resources` VALUES ('3f3a93e7f4164e3a8b2100bf2eb794ff', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1325890989', '16304', '9170', '1518', '734', '3625', '13', '2016-09-15 16:03:35');
INSERT INTO `pt_resources` VALUES ('3f5f280c3f2a405ab5436df46d318b47', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1416965692', '16304', '10383', '1505', '1016', '3625', '13', '2016-09-11 21:22:13');
INSERT INTO `pt_resources` VALUES ('3f675533fc014601b178d597fae1baf1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1862245427', '16304', '9130', '1497', '1015', '3625', '13', '2016-09-15 10:16:47');
INSERT INTO `pt_resources` VALUES ('3f8f9600df1d4fc7bdc06718f495e9e4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0979172282', '16304', '10525', '1496', '890', '3625', '13', '2016-09-08 20:53:39');
INSERT INTO `pt_resources` VALUES ('4036eb4e10da4f3fb34363f425d4df30', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1096646214', '16304', '9214', '1497', '768', '3625', '13', '2016-09-15 11:20:50');
INSERT INTO `pt_resources` VALUES ('404bda44a16e43ea86d9eec17218ec57', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0973342027', '16304', '10339', '1500', '863', '3625', '13', '2016-09-08 19:37:48');
INSERT INTO `pt_resources` VALUES ('40e127e552c04b799e4f43fd7bb563d9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0936383736', '16304', '10866', '1508', '433', '3625', '13', '2016-09-10 12:34:04');
INSERT INTO `pt_resources` VALUES ('40f7391e79394d0eab1c45c94dbd08e2', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0695616927', '16304', '10976', '1499', '1053', '3625', '13', '2016-09-06 21:50:51');
INSERT INTO `pt_resources` VALUES ('41065f64542241b3b4418ae68af69886', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1046192031', '16304', '10719', '1488', '950', '3625', '13', '2016-09-08 20:15:49');
INSERT INTO `pt_resources` VALUES ('4288adb17dc5476e89b02eaba18ff72d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2073481633', '16304', '9763', '1508', '254', '3625', '13', '2016-09-10 14:26:04');
INSERT INTO `pt_resources` VALUES ('429b630ca30d42f2afe86543feb932b7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1540120816', '16304', '11183', '1508', '700', '3625', '13', '2016-09-10 10:09:33');
INSERT INTO `pt_resources` VALUES ('430898ff3a4c47e694ea18b12d878145', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1134840772', '16304', '10321', '1496', '769', '3625', '13', '2016-09-08 21:57:39');
INSERT INTO `pt_resources` VALUES ('433f08162f87431fb5942de5b90626c1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0927630496', '16304', '11143', '1508', '700', '3625', '13', '2016-09-10 10:13:33');
INSERT INTO `pt_resources` VALUES ('434bc83d783e4b4ebbfcae316b442996', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2110370383', '16304', '9862', '1508', '323', '3625', '13', '2016-09-10 13:46:04');
INSERT INTO `pt_resources` VALUES ('434f08f6af6a4b09bacd00c85876bd6e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2017299738', '16304', '9954', '1494', '1067', '3625', '13', '2016-09-10 15:20:51');
INSERT INTO `pt_resources` VALUES ('4350e619e5824a0c820a7ae8fac750d7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2046837203', '16304', '8738', '1508', '357', '3625', '13', '2016-09-10 13:22:04');
INSERT INTO `pt_resources` VALUES ('436acb6898c84e8c91fa01f9046b370b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0820366117', '16304', '10565', '1496', '872', '3625', '13', '2016-09-08 21:07:39');
INSERT INTO `pt_resources` VALUES ('43f59c0fae8a49b98e01b660a0cbfba0', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0552654616', '16304', '11053', '1489', '1010', '3625', '13', '2016-09-06 21:17:24');
INSERT INTO `pt_resources` VALUES ('43f5b8e2a6984ea9b46ede8c923656d8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2125341916', '16304', '9846', '1508', '300', '3625', '13', '2016-09-10 13:56:04');
INSERT INTO `pt_resources` VALUES ('44610d45c7074383a6cbac7688e3d620', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1412170629', '16304', '9073', '1497', '495', '3625', '13', '2016-09-15 12:16:56');
INSERT INTO `pt_resources` VALUES ('454ffd436c8b475fb463e91eb0ea494c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1628321498', '16304', '10044', '1487', '758', '3625', '13', '2016-09-16 19:09:28');
INSERT INTO `pt_resources` VALUES ('455e7d27973b40b6884e6e538ce27c58', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0763628864', '16304', '9154', '1497', '583', '3625', '13', '2016-09-15 12:08:56');
INSERT INTO `pt_resources` VALUES ('4697f631ec3e4b128e9d2aec4c3ac6d9', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '11495', '1130', '417', '3625', '12', '2016-09-05 20:20:14');
INSERT INTO `pt_resources` VALUES ('46e46edb85124f0ea662443588dbe66f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3093824828', '16304', '9992', '1495', '630', '3625', '13', '2016-09-13 20:42:56');
INSERT INTO `pt_resources` VALUES ('470a3bf603c647f786d1a1735ef25dd2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1569284774', '16304', '10391', '1496', '806', '3625', '13', '2016-09-08 21:45:39');
INSERT INTO `pt_resources` VALUES ('474f03a7ca124da4af034ce5da19fa7d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2927873882', '16304', '10020', '1495', '630', '3625', '13', '2016-09-13 20:40:56');
INSERT INTO `pt_resources` VALUES ('47a7570199b749f0ac212a5b424649e1', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0851944194', '16304', '11285', '1506', '888', '3625', '13', '2016-09-06 20:39:37');
INSERT INTO `pt_resources` VALUES ('47d7fd6a2dcc45809eee2d8d267603ac', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0759073184', '16304', '10933', '1514', '647', '3625', '13', '2016-09-04 21:25:48');
INSERT INTO `pt_resources` VALUES ('48023d114a7a41388156e5e38c53c4ac', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0652273099', '16304', '10876', '1508', '388', '3625', '13', '2016-09-10 12:46:04');
INSERT INTO `pt_resources` VALUES ('483ce542cf2243e097be02a264d372bb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0750240202', '16304', '10826', '1508', '562', '3625', '13', '2016-09-10 11:23:31');
INSERT INTO `pt_resources` VALUES ('4873c2543d8849afb4c22f98912169fc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1182628073', '16304', '10470', '1496', '837', '3625', '13', '2016-09-08 21:23:39');
INSERT INTO `pt_resources` VALUES ('48c3b98f7c484138bd4da546b150a215', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1737601827', '16304', '9644', '1439', '1000', '3625', '13', '2016-09-09 20:55:49');
INSERT INTO `pt_resources` VALUES ('48e6a4f93b274eb58fdd89e24cce0421', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2571566942', '16304', '9264', '1491', '940', '3625', '13', '2016-09-11 17:54:10');
INSERT INTO `pt_resources` VALUES ('498090eccb34447daae647cc06bfae39', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1247251593', '16304', '9711', '1439', '832', '3625', '13', '2016-09-09 21:41:49');
INSERT INTO `pt_resources` VALUES ('499452b8b02040d693ddd494dd2589da', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0723315007', '16304', '10608', '1514', '580', '3625', '13', '2016-09-04 21:55:48');
INSERT INTO `pt_resources` VALUES ('4a0a519ea88f443182e9602c77e0bd43', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1783499721', '16304', '9982', '1487', '758', '3625', '13', '2016-09-16 18:57:28');
INSERT INTO `pt_resources` VALUES ('4abae76878424e2e9b66881a22e394ed', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0926499723', '16304', '10873', '1508', '666', '3625', '13', '2016-09-10 10:25:33');
INSERT INTO `pt_resources` VALUES ('4abf8a631b5d4c858f55216f733d18da', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0570458202', '16304', '11227', '1434', '1072', '3625', '13', '2016-09-05 21:18:01');
INSERT INTO `pt_resources` VALUES ('4aff138248fd4564a9a6aae2c817f337', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1664403972', '16304', '9628', '1410', '869', '3625', '14', '2016-09-10 14:58:04');
INSERT INTO `pt_resources` VALUES ('4b2d4fc6caee4f8798c19cfaad53eb89', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2251340594', '16304', '9626', '1410', '869', '3625', '14', '2016-09-10 14:54:04');
INSERT INTO `pt_resources` VALUES ('4b730b3a370e4e1da493753ce36fe859', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1834116340', '16304', '10249', '1495', '673', '3625', '13', '2016-09-13 20:08:56');
INSERT INTO `pt_resources` VALUES ('4c54328c19964de59e53c92792bdda06', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0759617363', '16304', '11154', '1434', '1066', '3625', '13', '2016-09-05 21:30:01');
INSERT INTO `pt_resources` VALUES ('4ce0477937834389b3c302eb3d56463e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10772', '1125', '311', '3625', '12', '2016-09-13 19:38:48');
INSERT INTO `pt_resources` VALUES ('4d7994300a6049b481dbab59384dd244', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2073271743', '16304', '9713', '1410', '857', '3625', '14', '2016-09-10 15:06:04');
INSERT INTO `pt_resources` VALUES ('4dba57edd0c94586ab28c34cb440098a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1008851754', '16304', '9711', '1403', '1127', '3625', '12', '2016-09-14 21:09:49');
INSERT INTO `pt_resources` VALUES ('4e1f2cc2c211447886d87e7acd122cf4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1053070173', '16304', '9730', '1439', '1005', '3625', '13', '2016-09-09 20:39:49');
INSERT INTO `pt_resources` VALUES ('4e61ef86708f4ec8a6e08ab07d700cac', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1991501906', '16304', '9963', '1494', '1170', '3625', '13', '2016-09-10 15:18:51');
INSERT INTO `pt_resources` VALUES ('4e92b733052647088a4759758087d022', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1180645288', '16304', '10552', '1496', '977', '3625', '13', '2016-09-08 20:25:39');
INSERT INTO `pt_resources` VALUES ('4ed6b4a6f8ce4e75849008f4322d10f9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1081453430', '16304', '10252', '1436', '1090', '3625', '13', '2016-09-11 20:14:20');
INSERT INTO `pt_resources` VALUES ('4edaff5040134765a059a9d87d895eaa', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1654046437', '16304', '10012', '1493', '727', '3625', '13', '2016-09-13 21:09:53');
INSERT INTO `pt_resources` VALUES ('4f0a34efbfcd415d948f066e3fbb98ac', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0854321011', '16304', '10830', '1508', '562', '3625', '13', '2016-09-10 11:32:04');
INSERT INTO `pt_resources` VALUES ('4f0cc31a2b8e40e9ad3d3c7276e01be0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3586633857', '16304', '9608', '1508', '380', '3625', '13', '2016-09-10 13:10:04');
INSERT INTO `pt_resources` VALUES ('4f16ea00400441ea98342dd28c3a7fcc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2030036935', '16304', '9615', '1410', '924', '3625', '14', '2016-09-10 14:52:04');
INSERT INTO `pt_resources` VALUES ('4fd7a0c4b1fe493b8608678f1a3b4d3d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1545226334', '16304', '10466', '1439', '1023', '3625', '13', '2016-09-09 20:15:49');
INSERT INTO `pt_resources` VALUES ('503b1236608e460e853ade105adee462', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0856836063', '16304', '10836', '1495', '1140', '3625', '13', '2016-09-12 20:31:08');
INSERT INTO `pt_resources` VALUES ('5062f6eb803940c4953194ca4807562d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0734931789', '16304', '10503', '1496', '890', '3625', '13', '2016-09-08 20:57:39');
INSERT INTO `pt_resources` VALUES ('50f751e0b7f5403ca2dc5afdb617cd0a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1042057084', '16304', '10337', '1436', '1139', '3625', '13', '2016-09-11 20:12:20');
INSERT INTO `pt_resources` VALUES ('512d13b5b8aa41faa1867c6c098e67d6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1563710177', '16304', '9858', '1495', '940', '3625', '13', '2016-09-12 21:39:08');
INSERT INTO `pt_resources` VALUES ('51403ea5ce6d4031af87375b1238f5e3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0867827269', '16304', '9072', '1497', '495', '3625', '13', '2016-09-15 12:18:56');
INSERT INTO `pt_resources` VALUES ('5225d27d00c340d484ce637410f6f2d6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1090936829', '16304', '9413', '1496', '841', '3625', '13', '2016-09-15 14:45:14');
INSERT INTO `pt_resources` VALUES ('52447448197b43f18b3c0587804a49ab', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1061687139', '16304', '10898', '1508', '632', '3625', '13', '2016-09-10 10:37:33');
INSERT INTO `pt_resources` VALUES ('52574886beec4fa89a8970f281cdcbe0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2504859448', '16304', '10002', '1508', '380', '3625', '13', '2016-09-10 13:08:04');
INSERT INTO `pt_resources` VALUES ('52596bb035b6400d9d72ea1a664952e2', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0512461734', '16304', '10984', '1434', '1061', '3625', '13', '2016-09-05 21:50:01');
INSERT INTO `pt_resources` VALUES ('52dfee4c3a7e4d799a58dce5baf7233a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1143554695', '16304', '10825', '1508', '666', '3625', '13', '2016-09-10 10:31:33');
INSERT INTO `pt_resources` VALUES ('52ec312225f24ef5bf28fbed4f36fd24', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0776619029', '16304', '9368', '1487', '1175', '3625', '13', '2016-09-14 22:15:43');
INSERT INTO `pt_resources` VALUES ('52f395d4cb5a482a981db96b306e20e6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0833342334', '16304', '9695', '1041', '104', '3625', '11', '2016-09-14 22:05:36');
INSERT INTO `pt_resources` VALUES ('52fd99540da54228a97015e5f6239ca1', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1249414945', '16304', '11424', '1495', '1039', '3625', '13', '2016-09-07 21:11:31');
INSERT INTO `pt_resources` VALUES ('5346a9fe6d26400b90cdc7d8d1f80c5d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2401172284', '16304', '10290', '1495', '653', '3625', '13', '2016-09-13 20:22:56');
INSERT INTO `pt_resources` VALUES ('53b82f5a6a004dfd871e5bf1524634fd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2057581219', '16304', '9844', '1508', '357', '3625', '13', '2016-09-10 13:36:04');
INSERT INTO `pt_resources` VALUES ('53d6061ffc444ea6b28b4f38350dab26', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0535861158', '16304', '11479', '1495', '900', '3625', '13', '2016-09-07 20:45:26');
INSERT INTO `pt_resources` VALUES ('53e1271ae4194e0680de1088f819a020', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2394529033', '16304', '9554', '1494', '772', '3625', '13', '2016-09-10 16:20:51');
INSERT INTO `pt_resources` VALUES ('5410859c3a014fcbb9e9c3c4f8d0806c', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1049238174', '16304', '11438', '1495', '720', '3625', '13', '2016-09-07 20:55:26');
INSERT INTO `pt_resources` VALUES ('54dcaa962c414cac9d2f4bdca93ad593', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2000968219', '16304', '10113', '1480', '909', '3625', '13', '2016-09-16 18:45:09');
INSERT INTO `pt_resources` VALUES ('5525a685d02d43af875d6fceef96dd89', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1249117825', '16304', '9310', '1502', '1085', '3625', '13', '2016-09-14 21:50:44');
INSERT INTO `pt_resources` VALUES ('55663ae004c4476091f4f93c4cdfdaba', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0889916428', '16304', '10375', '1505', '1016', '3625', '13', '2016-09-11 21:20:13');
INSERT INTO `pt_resources` VALUES ('557451fb5950436a8ecf26aa507d13ba', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0905936200', '16304', '10861', '1508', '433', '3625', '13', '2016-09-10 12:28:04');
INSERT INTO `pt_resources` VALUES ('55d9b94a318f49d0912e9379d624a4e4', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0920610543', '16304', '11000', '1499', '1097', '3625', '13', '2016-09-06 21:44:51');
INSERT INTO `pt_resources` VALUES ('55e2fb4e4d5345a4ac98affefef4f373', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3474255817', '16304', '9683', '1410', '869', '3625', '14', '2016-09-10 15:02:04');
INSERT INTO `pt_resources` VALUES ('55fc8e53c6aa485d8a20f1de8ffa88d9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '11511', '1508', '1116', '3625', '13', '2016-09-10 09:57:33');
INSERT INTO `pt_resources` VALUES ('5666763461dd4115a2028884d0fd2292', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2108109857', '16304', '10253', '1495', '971', '3625', '13', '2016-09-12 21:21:08');
INSERT INTO `pt_resources` VALUES ('56706fe666df4b76b4067e649fae6b1b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1231482275', '16304', '11020', '1508', '478', '3625', '13', '2016-09-10 12:12:04');
INSERT INTO `pt_resources` VALUES ('568e224d82184230bb89d7f30541c282', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1712535189', '16304', '9795', '1508', '266', '3625', '13', '2016-09-10 14:18:04');
INSERT INTO `pt_resources` VALUES ('5723673bc7fa404dbf8ed1d2a25d70ad', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9671', '1041', '201', '3625', '11', '2016-09-14 22:03:36');
INSERT INTO `pt_resources` VALUES ('574eec0272924315aef627ccb89bca73', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0640356757', '16304', '10994', '1434', '1061', '3625', '13', '2016-09-05 21:52:01');
INSERT INTO `pt_resources` VALUES ('57cbc3d339554f19af0d05dbc64f4f59', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0942403717', '16304', '9295', '1494', '1040', '3625', '13', '2016-09-15 15:07:28');
INSERT INTO `pt_resources` VALUES ('59243b1ee54345ec892aa72e926f0fcc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2871394643', '16304', '8801', '1508', '369', '3625', '13', '2016-09-10 13:20:04');
INSERT INTO `pt_resources` VALUES ('5940413cf7bd45d9b2020b726c519334', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0609620362', '16304', '11180', '1434', '1176', '3625', '13', '2016-09-05 20:42:36');
INSERT INTO `pt_resources` VALUES ('597c9c27fa7c4bf69c3853c0e38e2626', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1982710942', '16304', '9868', '1508', '357', '3625', '13', '2016-09-10 13:32:04');
INSERT INTO `pt_resources` VALUES ('599a42be778d4c46a24102d2b7c6d544', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1850439388', '16304', '8987', '1497', '444', '3625', '13', '2016-09-15 12:20:56');
INSERT INTO `pt_resources` VALUES ('5a1429062ea1435f838a7f28b87aa5ec', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0523238024', '16304', '11526', '1495', '963', '3625', '13', '2016-09-07 20:37:26');
INSERT INTO `pt_resources` VALUES ('5af58556a1a0449c918f81b9fe1ec31e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1773055360', '16304', '9778', '1508', '266', '3625', '13', '2016-09-10 14:20:04');
INSERT INTO `pt_resources` VALUES ('5b31f17bc77e4b6fb62d44be5030480d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10573', '1042', '196', '3625', '11', '2016-09-11 20:08:21');
INSERT INTO `pt_resources` VALUES ('5b3fd2b0feab4a8f90b59e5f3b90a78f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1806891059', '16304', '10307', '1480', '937', '3625', '13', '2016-09-16 18:25:09');
INSERT INTO `pt_resources` VALUES ('5b7b8f5b273742ea8f34fdb3eefacd17', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0863024727', '16304', '10836', '1508', '562', '3625', '13', '2016-09-10 11:20:43');
INSERT INTO `pt_resources` VALUES ('5bc55bbda32d4747a9fcb2722c806c2a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1657501903', '16304', '10395', '1508', '380', '3625', '13', '2016-09-10 13:06:04');
INSERT INTO `pt_resources` VALUES ('5c0211749b5f4d38a91a7350fbdc67c6', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0602334881', '16304', '11336', '1495', '982', '3625', '13', '2016-09-07 21:21:31');
INSERT INTO `pt_resources` VALUES ('5c43de0e2d2d44d8985365691a1f9e4c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0706448880', '16304', '9221', '1497', '668', '3625', '13', '2016-09-15 11:42:50');
INSERT INTO `pt_resources` VALUES ('5c791298f2294e1f9ec18b65cb882a1d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1888693296', '16304', '9856', '1508', '323', '3625', '13', '2016-09-10 13:48:04');
INSERT INTO `pt_resources` VALUES ('5c86cf330ef9489198019f25a0d8fcd9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9745', '1136', '366', '3625', '12', '2016-09-13 21:20:43');
INSERT INTO `pt_resources` VALUES ('5cd4d88881aa4b09af1db0f6ff8a1439', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0703493436', '16304', '10618', '1496', '953', '3625', '13', '2016-09-08 20:33:39');
INSERT INTO `pt_resources` VALUES ('5dab4aabff1340a4b1a727b2b07cb979', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0869818563', '16304', '9625', '1497', '1049', '3625', '13', '2016-09-14 22:27:38');
INSERT INTO `pt_resources` VALUES ('5db2bd1e0ed147c7909dc623a3a13681', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2466327659', '16304', '11120', '1508', '478', '3625', '13', '2016-09-10 12:10:04');
INSERT INTO `pt_resources` VALUES ('5dc1a077348e4e2f8f64e6ac0d6bf59a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2978516169', '16304', '8673', '1508', '380', '3625', '13', '2016-09-10 13:14:04');
INSERT INTO `pt_resources` VALUES ('5e10a205bf0245bfb7c880ec63734eb8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0913405120', '16304', '9139', '1518', '350', '3625', '13', '2016-09-15 16:38:01');
INSERT INTO `pt_resources` VALUES ('5f3622dcc123462c9bc2fc361d26fac0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2177749324', '16304', '9738', '1508', '220', '3625', '13', '2016-09-10 14:30:04');
INSERT INTO `pt_resources` VALUES ('5f517f6e391c42bf9ad54320f1677c21', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1304767576', '16304', '9575', '1539', '601', '3625', '17', '2016-09-13 21:18:41');
INSERT INTO `pt_resources` VALUES ('5f9fc72c5db54f5c89262f7a0e502b36', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0881884845', '16304', '10761', '1508', '555', '3625', '13', '2016-09-10 11:38:04');
INSERT INTO `pt_resources` VALUES ('5ffcfeffdaae4b7dbc99856fbc6cdee1', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0790485489', '16304', '11286', '1506', '888', '3625', '13', '2016-09-06 20:43:37');
INSERT INTO `pt_resources` VALUES ('60ae50aa7f7d413c971388411bf80174', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1428913727', '16304', '9257', '1502', '865', '3625', '13', '2016-09-14 21:52:45');
INSERT INTO `pt_resources` VALUES ('60d9a0bdef374bc0aa243d209c3935ec', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1343298466', '16304', '11287', '1040', '184', '3625', '11', '2016-09-05 20:32:31');
INSERT INTO `pt_resources` VALUES ('60f504bf27a14ef38bbfb02081d6f5b8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1707947442', '16304', '10146', '1480', '909', '3625', '13', '2016-09-16 18:41:09');
INSERT INTO `pt_resources` VALUES ('6187e6b881014f8fae4c196e62113036', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1848660156', '16304', '9872', '1487', '758', '3625', '13', '2016-09-16 19:13:28');
INSERT INTO `pt_resources` VALUES ('61addfcb4c1645deb70384e1c3e3f2f7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0756782785', '16304', '9266', '1494', '1034', '3625', '13', '2016-09-15 15:17:28');
INSERT INTO `pt_resources` VALUES ('6255cb8adce04bb081c6757d0c445e14', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0931029169', '16304', '10808', '1503', '856', '3625', '13', '2016-09-08 19:52:42');
INSERT INTO `pt_resources` VALUES ('626ff6d01344473ebe91fbd0f899e617', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9470', '1038', '174', '3625', '11', '2016-09-14 21:57:07');
INSERT INTO `pt_resources` VALUES ('629707458b2f4bf9bda33d697e6377b3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1958320004', '16304', '9648', '1439', '992', '3625', '13', '2016-09-09 21:05:49');
INSERT INTO `pt_resources` VALUES ('62973f12b47e41c5862b7bb17efef5ba', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1061269508', '16304', '9150', '1487', '962', '3625', '13', '2016-09-15 15:54:46');
INSERT INTO `pt_resources` VALUES ('62a902d868ef499ea13c7eeffed7e272', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1942409432', '16304', '9855', '1494', '859', '3625', '13', '2016-09-10 15:52:51');
INSERT INTO `pt_resources` VALUES ('62af72de13e145088ee3271311874a6e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1183911207', '16304', '9272', '1487', '997', '3625', '13', '2016-09-15 15:45:10');
INSERT INTO `pt_resources` VALUES ('635d09e292ef4d29ac225563a9c1bab6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1005339813', '16304', '9178', '1497', '703', '3625', '13', '2016-09-15 11:30:50');
INSERT INTO `pt_resources` VALUES ('63e2e5f447fc4a1b8f00690ac23940de', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1057589074', '16304', '9721', '1495', '1059', '3625', '13', '2016-09-13 21:24:43');
INSERT INTO `pt_resources` VALUES ('63f2d33b848543a69a7df80d27bd35a3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1261001292', '16304', '10503', '1495', '1036', '3625', '13', '2016-09-12 20:43:08');
INSERT INTO `pt_resources` VALUES ('640f1af7e9ea423098acfc6bcf26455a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3403684845', '16304', '10034', '1487', '758', '3625', '13', '2016-09-16 19:05:28');
INSERT INTO `pt_resources` VALUES ('645521f6e6f94994ad3ba7cfd8bb137a', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0736719651', '16304', '11301', '1495', '999', '3625', '13', '2016-09-07 21:15:31');
INSERT INTO `pt_resources` VALUES ('646594de33d549ca9fc147ef8154970a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2529240170', '16304', '10075', '1495', '642', '3625', '13', '2016-09-13 20:38:56');
INSERT INTO `pt_resources` VALUES ('64ac70a9375c4140a2c1e2665ef0bba5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1713361710', '16304', '9680', '1494', '772', '3625', '13', '2016-09-10 16:16:51');
INSERT INTO `pt_resources` VALUES ('6577b8976e7c44399daca5c6c84ca6d1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1883663974', '16304', '10204', '1495', '696', '3625', '13', '2016-09-13 19:48:47');
INSERT INTO `pt_resources` VALUES ('65a8e9ad9b3148f1baaa3829f75a0ca9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1332046498', '16304', '9239', '1491', '958', '3625', '13', '2016-09-11 17:44:10');
INSERT INTO `pt_resources` VALUES ('669a6ed9e94f4dd0baa9c511e6c40007', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1404255307', '16304', '9214', '1497', '674', '3625', '13', '2016-09-15 11:36:50');
INSERT INTO `pt_resources` VALUES ('66a79e6bf0e4465e81373df57acf8838', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1029638406', '16304', '10415', '1505', '1050', '3625', '13', '2016-09-11 21:14:13');
INSERT INTO `pt_resources` VALUES ('6708a5a095a04f02989e532ad5991cc7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1065031600', '16304', '10719', '1508', '531', '3625', '13', '2016-09-10 11:42:04');
INSERT INTO `pt_resources` VALUES ('682d26f4b3ff4b0a9937821ba95d2f10', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0520594300', '16304', '10895', '1495', '974', '3625', '13', '2016-09-07 21:41:31');
INSERT INTO `pt_resources` VALUES ('689650ae0d1141d1b1c4724d572618ec', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0882360993', '16304', '9267', '1498', '1210', '3625', '13', '2016-09-15 16:55:32');
INSERT INTO `pt_resources` VALUES ('6b23a61f475345f38f28d146631e17dc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1122361425', '16304', '9713', '1439', '868', '3625', '13', '2016-09-09 21:33:49');
INSERT INTO `pt_resources` VALUES ('6b93bbd968de4e059f579c3e83011152', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0898802137', '16304', '11238', '1434', '1072', '3625', '13', '2016-09-05 21:10:01');
INSERT INTO `pt_resources` VALUES ('6c00ebcd333b49da975ac427a2205630', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1919225083', '16304', '9805', '1508', '266', '3625', '13', '2016-09-10 14:10:04');
INSERT INTO `pt_resources` VALUES ('6c3b637a05f04e3dbb2657f4a1c102fb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0613025119', '16304', '11220', '1495', '974', '3625', '13', '2016-09-07 21:47:31');
INSERT INTO `pt_resources` VALUES ('6c5cd9ea502c44fda7cde4b3a3678eed', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0515227857', '16304', '11372', '1495', '982', '3625', '13', '2016-09-07 21:19:31');
INSERT INTO `pt_resources` VALUES ('6cbdf7116bf849bd8e8681a060433932', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1031939985', '16304', '10210', '1495', '940', '3625', '13', '2016-09-12 21:33:08');
INSERT INTO `pt_resources` VALUES ('6ce3860ef5724666bede24cc95652990', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1017802131', '16304', '10836', '1508', '562', '3625', '13', '2016-09-10 11:27:43');
INSERT INTO `pt_resources` VALUES ('6db0ba8eb9d44b6184aa635f6dae4e66', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1292855673', '16304', '11296', '1493', '1075', '3625', '13', '2016-09-05 20:24:14');
INSERT INTO `pt_resources` VALUES ('6e694e8bb06848c08d7bee55b03b5dc5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.6458409832', '16304', '9767', '1138', '405', '3625', '12', '2016-09-14 22:21:38');
INSERT INTO `pt_resources` VALUES ('6edc0578045846ec912fbba0fe34c03b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0823402797', '16304', '10251', '1495', '971', '3625', '13', '2016-09-12 21:17:08');
INSERT INTO `pt_resources` VALUES ('6eff7b7fed47447786e44dd0739cd082', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1123137574', '16304', '10907', '1508', '689', '3625', '13', '2016-09-10 10:23:33');
INSERT INTO `pt_resources` VALUES ('6f17f38de88840149456dc8207b1bfff', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2031541805', '16304', '9688', '1410', '932', '3625', '14', '2016-09-10 14:40:04');
INSERT INTO `pt_resources` VALUES ('6f360a6e712d47a6bf40993eb202b0f1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2060221166', '16304', '10016', '1487', '803', '3625', '13', '2016-09-16 18:51:28');
INSERT INTO `pt_resources` VALUES ('6f58bad8df7a4b59a0662142474b5752', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1790987735', '16304', '8735', '1508', '357', '3625', '13', '2016-09-10 13:26:04');
INSERT INTO `pt_resources` VALUES ('6fe971e0e7ec43b78ff72f0f3b6f99c3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1080927809', '16304', '9420', '1497', '1038', '3625', '13', '2016-09-14 22:31:38');
INSERT INTO `pt_resources` VALUES ('70a27b73b1a4458da103d65002eedb8c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1104036266', '16304', '9442', '1494', '1084', '3625', '13', '2016-09-15 14:57:28');
INSERT INTO `pt_resources` VALUES ('70b37c1e10a3438fad5271d928aa1056', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0707932791', '16304', '9157', '1491', '940', '3625', '13', '2016-09-11 17:50:10');
INSERT INTO `pt_resources` VALUES ('70fde9fc567b4ae1b93031a572f3f6de', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1924989522', '16304', '10011', '1493', '783', '3625', '13', '2016-09-13 20:55:53');
INSERT INTO `pt_resources` VALUES ('719ea4f7640c4d749772d591136c53ac', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0664508631', '16304', '11151', '1434', '1072', '3625', '13', '2016-09-05 20:58:01');
INSERT INTO `pt_resources` VALUES ('727839b9bef04a1c9c5309c80809c31e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1125680320', '16304', '9086', '1497', '703', '3625', '13', '2016-09-15 11:28:50');
INSERT INTO `pt_resources` VALUES ('72a1a5df48364b38811b7484e045b23f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0392761454', '16304', '9014', '1490', '953', '3625', '13', '2016-09-11 18:54:03');
INSERT INTO `pt_resources` VALUES ('72af70e626824d24aa4e4475ff81dd8d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1184906377', '16304', '9256', '1494', '959', '3625', '13', '2016-09-15 15:33:40');
INSERT INTO `pt_resources` VALUES ('72f3d0618f1d4616b7720e5b2609c1fa', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2627634540', '16304', '10730', '1508', '478', '3625', '13', '2016-09-10 12:00:04');
INSERT INTO `pt_resources` VALUES ('7377a3838a3a4cbd8e08f98a82bacec3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1029166701', '16304', '9506', '1497', '1038', '3625', '13', '2016-09-14 22:29:38');
INSERT INTO `pt_resources` VALUES ('73af5f1c8f2b40749f1b0eaaeef9feac', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0674172736', '16304', '10726', '1488', '957', '3625', '13', '2016-09-08 20:13:49');
INSERT INTO `pt_resources` VALUES ('73d867af556f4908b363f4e4f98e865d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1614936075', '16304', '9879', '1508', '357', '3625', '13', '2016-09-10 13:28:04');
INSERT INTO `pt_resources` VALUES ('74f3bfada48a4601b5cd0b590202bdcf', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1538076251', '16304', '10248', '1480', '1006', '3625', '13', '2016-09-16 18:21:09');
INSERT INTO `pt_resources` VALUES ('751c12d3419f44208f19555ed366fe54', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1071657953', '16304', '9280', '1494', '1040', '3625', '13', '2016-09-15 15:05:28');
INSERT INTO `pt_resources` VALUES ('76362b1e97d94b00ba1ccfa30887d3da', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.3766580895', '16304', '11953', '1134', '384', '3625', '12', '2016-09-07 20:31:26');
INSERT INTO `pt_resources` VALUES ('763d1e8e351e49bab3de4be5d978bab3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1046224078', '16304', '10736', '1508', '531', '3625', '13', '2016-09-10 11:40:04');
INSERT INTO `pt_resources` VALUES ('7647909c538b4791bbb9bc9d25878bb0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0836273479', '16304', '10296', '1505', '999', '3625', '13', '2016-09-11 21:30:13');
INSERT INTO `pt_resources` VALUES ('764c60b6a2ef40a6a9773275060fe7c4', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0998574590', '16304', '10646', '1514', '590', '3625', '13', '2016-09-04 21:37:48');
INSERT INTO `pt_resources` VALUES ('76581df03a8d442698ef6069a1d2e133', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2010771499', '16304', '9828', '1508', '266', '3625', '13', '2016-09-10 14:04:04');
INSERT INTO `pt_resources` VALUES ('768a820f458448c985b3888316623ffa', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0752032376', '16304', '10417', '1496', '780', '3625', '13', '2016-09-08 21:49:39');
INSERT INTO `pt_resources` VALUES ('769e946baa0143788f1c107082f1403b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0912110269', '16304', '10410', '1496', '837', '3625', '13', '2016-09-08 21:27:39');
INSERT INTO `pt_resources` VALUES ('7766608c7357413f87a164a46f3002fe', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0356993554', '16304', '10737', '1514', '585', '3625', '13', '2016-09-04 21:45:48');
INSERT INTO `pt_resources` VALUES ('7780158a5ec14c6097026bd2b3e07246', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0773363010', '16304', '9398', '1496', '796', '3625', '13', '2016-09-15 14:47:14');
INSERT INTO `pt_resources` VALUES ('77eabda6ed3e43dd8de1b0ecbff06ce5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1914471109', '16304', '10140', '1448', '799', '3625', '13', '2016-09-09 21:56:52');
INSERT INTO `pt_resources` VALUES ('78371233102d41d0bd77e574d8cefe70', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1050789864', '16304', '9149', '1497', '639', '3625', '13', '2016-09-15 12:00:56');
INSERT INTO `pt_resources` VALUES ('784d9af4e26d4ef2b991f15d4b9e1bf9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0758734836', '16304', '10835', '1508', '562', '3625', '13', '2016-09-10 11:34:04');
INSERT INTO `pt_resources` VALUES ('7919110f102d4669ba0dce67e922e6bd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0566154671', '16304', '9421', '1497', '1038', '3625', '13', '2016-09-14 22:33:38');
INSERT INTO `pt_resources` VALUES ('79ab2376511e46faa83ea2581065dab5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0521399015', '16304', '10320', '1495', '994', '3625', '13', '2016-09-12 21:03:08');
INSERT INTO `pt_resources` VALUES ('79f98629f9844bd28b5feb989402833d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0585661189', '16304', '10900', '1487', '731', '3625', '13', '2016-09-08 19:23:22');
INSERT INTO `pt_resources` VALUES ('7a91c556c69a4eccab0f05a12156ec1f', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0814906361', '16304', '10955', '1489', '929', '3625', '13', '2016-09-06 21:29:24');
INSERT INTO `pt_resources` VALUES ('7ad293638a9f4bd3aa667ef2015805ce', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1819283026', '16304', '9800', '1487', '758', '3625', '13', '2016-09-16 19:19:28');
INSERT INTO `pt_resources` VALUES ('7b2decc4e53a4a5fa42ae02df06363b7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1904818070', '16304', '10356', '1495', '642', '3625', '13', '2016-09-13 20:24:56');
INSERT INTO `pt_resources` VALUES ('7b4ee77e371846a89119290dd641850b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2049137574', '16304', '9868', '1508', '357', '3625', '13', '2016-09-10 13:44:04');
INSERT INTO `pt_resources` VALUES ('7b7d36355b234497a701a17e4a70f6cb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2225202360', '16304', '9862', '1494', '882', '3625', '13', '2016-09-10 15:48:51');
INSERT INTO `pt_resources` VALUES ('7bd79a9d8b09477686d7d2077eab0957', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1830585684', '16304', '9797', '1508', '266', '3625', '13', '2016-09-10 14:16:04');
INSERT INTO `pt_resources` VALUES ('7c7a4678a38346b098d384113b5998e9', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0645764073', '16304', '11058', '1434', '1066', '3625', '13', '2016-09-05 21:34:01');
INSERT INTO `pt_resources` VALUES ('7c90ae0e22cd4126a7a717d253dd4903', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2829157774', '16304', '9700', '1493', '727', '3625', '13', '2016-09-13 21:01:53');
INSERT INTO `pt_resources` VALUES ('7ccdff0bf2e3413496e9e64220587f6a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0987608714', '16304', '9196', '1497', '756', '3625', '13', '2016-09-15 11:24:50');
INSERT INTO `pt_resources` VALUES ('7cde9ccfb04f4a4d93d674a5a77b70ca', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3606764339', '16304', '10003', '1487', '758', '3625', '13', '2016-09-16 19:03:28');
INSERT INTO `pt_resources` VALUES ('7d1edcdc22a94c82a1bcadb6ee8f22be', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0668982960', '16304', '9727', '1439', '868', '3625', '13', '2016-09-09 21:29:49');
INSERT INTO `pt_resources` VALUES ('7d601f12a31340589472281c7e532f90', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1998331885', '16304', '9730', '1508', '173', '3625', '13', '2016-09-10 14:36:04');
INSERT INTO `pt_resources` VALUES ('7d9b90361510421a9d06343ab40f782b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2183967262', '16304', '8858', '1490', '855', '3625', '13', '2016-09-11 19:00:11');
INSERT INTO `pt_resources` VALUES ('7ddeede1c47c45f099883d8e1916a944', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1380350787', '16304', '10494', '1496', '971', '3625', '13', '2016-09-08 20:29:39');
INSERT INTO `pt_resources` VALUES ('7e84b1faa6fa4c0ebc6097eff13e970f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1028733326', '16304', '10748', '1488', '990', '3625', '13', '2016-09-08 20:05:49');
INSERT INTO `pt_resources` VALUES ('7e8599fd63f24aa893a81660a42eec23', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0748082294', '16304', '10749', '1488', '957', '3625', '13', '2016-09-08 20:07:49');
INSERT INTO `pt_resources` VALUES ('7e90cd7ace2246d3baf1e9a73321b83f', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1123956879', '16304', '10990', '1434', '1061', '3625', '13', '2016-09-05 21:46:01');
INSERT INTO `pt_resources` VALUES ('7ee693d7e4ab4d80b61c784a4182a2a0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3797581558', '16304', '8534', '1508', '380', '3625', '13', '2016-09-10 13:16:04');
INSERT INTO `pt_resources` VALUES ('7f8a4b3a1cf6487da9a0407b2381aa71', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2593430088', '16304', '10905', '1508', '478', '3625', '13', '2016-09-10 12:08:04');
INSERT INTO `pt_resources` VALUES ('803f025720504f9cb5900768f0e3bdcb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1228106431', '16304', '10570', '1496', '895', '3625', '13', '2016-09-08 20:47:39');
INSERT INTO `pt_resources` VALUES ('80e4d149cac1473d9865060c1d7a3855', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0784466411', '16304', '11103', '1434', '1072', '3625', '13', '2016-09-05 21:06:01');
INSERT INTO `pt_resources` VALUES ('81232a4540f94287a93e1a3716910cab', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2422284061', '16304', '10303', '1496', '769', '3625', '13', '2016-09-08 22:01:39');
INSERT INTO `pt_resources` VALUES ('818fde9b13a84abca5ae63ef7c135d64', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1296253107', '16304', '10963', '1495', '974', '3625', '13', '2016-09-07 21:35:31');
INSERT INTO `pt_resources` VALUES ('81a04b8ae62744da9de0368f23645b59', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1990911326', '16304', '10252', '1480', '1006', '3625', '13', '2016-09-16 18:19:09');
INSERT INTO `pt_resources` VALUES ('828a3393646846b8bfaed80cda706b62', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1223322709', '16304', '9501', '1497', '843', '3625', '13', '2016-09-15 10:56:50');
INSERT INTO `pt_resources` VALUES ('82e980940cd249708fd709e8e14a1234', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1216345339', '16304', '10846', '1508', '433', '3625', '13', '2016-09-10 12:26:04');
INSERT INTO `pt_resources` VALUES ('82f537248ea4473f9372bfdfb8f8679f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1123138270', '16304', '9197', '1497', '768', '3625', '13', '2016-09-15 11:22:50');
INSERT INTO `pt_resources` VALUES ('834abab30b434242a9a0778631bc0615', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1304766961', '16304', '9275', '1487', '1055', '3625', '13', '2016-09-15 15:41:10');
INSERT INTO `pt_resources` VALUES ('83755f19c4ba4510a81e0ba831f5bd3e', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0579523792', '16304', '10974', '1499', '1053', '3625', '13', '2016-09-06 21:52:51');
INSERT INTO `pt_resources` VALUES ('83762e04dde240fab141179c571771c2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0879331205', '16304', '10603', '1496', '924', '3625', '13', '2016-09-08 20:45:39');
INSERT INTO `pt_resources` VALUES ('84572076082d4ad085489705c51c45af', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1448248312', '16304', '9775', '1439', '934', '3625', '13', '2016-09-09 21:11:49');
INSERT INTO `pt_resources` VALUES ('8467d5a2e042440d9abaf131578d0d8d', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '11248', '1135', '323', '3625', '12', '2016-09-06 20:44:11');
INSERT INTO `pt_resources` VALUES ('846b1b48b4d14f6ebb1cae48a48e66b8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1309277411', '16304', '9264', '1497', '809', '3625', '13', '2016-09-15 11:14:50');
INSERT INTO `pt_resources` VALUES ('84991f3b51b541d39ff65e3a0ece69d5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0637120285', '16304', '11148', '1508', '700', '3625', '13', '2016-09-10 10:15:33');
INSERT INTO `pt_resources` VALUES ('8580d3da4a7e401596bdf636e5b6ef07', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0861319816', '16304', '10826', '1434', '1054', '3625', '13', '2016-09-05 22:00:01');
INSERT INTO `pt_resources` VALUES ('85b7bf01c42f4194bf43f05927cfa74b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1773122396', '16304', '9812', '1508', '266', '3625', '13', '2016-09-10 14:08:04');
INSERT INTO `pt_resources` VALUES ('85bd1cb7d7a14fac9e0d576255eec3d4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0801104214', '16304', '10810', '1503', '890', '3625', '13', '2016-09-08 19:50:42');
INSERT INTO `pt_resources` VALUES ('85bfc4e05b2c4f28b5e2a9535fccfdb3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1194562118', '16304', '10615', '1496', '1088', '3625', '13', '2016-09-08 20:21:39');
INSERT INTO `pt_resources` VALUES ('85db256f2d504d1c8cfe253307ed7258', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0896246830', '16304', '10485', '1496', '831', '3625', '13', '2016-09-08 21:33:39');
INSERT INTO `pt_resources` VALUES ('861f923a824b4268b0b87aa5da821a9c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1470476989', '16304', '9241', '1494', '959', '3625', '13', '2016-09-15 15:31:33');
INSERT INTO `pt_resources` VALUES ('866a68bfdec64708990ef6463a826a26', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0740000424', '16304', '11090', '1508', '597', '3625', '13', '2016-09-10 10:51:33');
INSERT INTO `pt_resources` VALUES ('867e55d9753b487f938828c84e1939cc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1973131200', '16304', '9678', '1410', '932', '3625', '14', '2016-09-10 14:42:04');
INSERT INTO `pt_resources` VALUES ('86ca5ffcfaba4acea9fdf15ef30fe6be', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1161653241', '16304', '10473', '1495', '999', '3625', '13', '2016-09-12 20:57:08');
INSERT INTO `pt_resources` VALUES ('86e8e91c093449fb83e739d6c8f16f3f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1603769439', '16304', '9839', '1439', '1005', '3625', '13', '2016-09-09 20:33:49');
INSERT INTO `pt_resources` VALUES ('8709dceedabf4d3eadb8cbf34a938ff8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0924489936', '16304', '10508', '1495', '1053', '3625', '13', '2016-09-12 20:41:08');
INSERT INTO `pt_resources` VALUES ('87434a140d364a30a4c1c592184568e7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0662142174', '16304', '9724', '1439', '868', '3625', '13', '2016-09-09 21:31:49');
INSERT INTO `pt_resources` VALUES ('88ac64a576714504b42478e6ed773835', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '11294', '1147', '309', '3625', '12', '2016-09-06 20:31:38');
INSERT INTO `pt_resources` VALUES ('88f7226604b143a8baeb3939ddf93815', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1750122909', '16304', '10214', '1495', '673', '3625', '13', '2016-09-13 19:58:56');
INSERT INTO `pt_resources` VALUES ('894daf64b26b4ad682e88d2b003a6e8c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2695381163', '16304', '9402', '1136', '283', '3625', '12', '2016-09-14 21:48:36');
INSERT INTO `pt_resources` VALUES ('895878a4e14a4bc88f33c352c07365e6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2225861678', '16304', '9882', '1494', '947', '3625', '13', '2016-09-10 15:36:51');
INSERT INTO `pt_resources` VALUES ('8986efe2fa574989907c9d0434effbcd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2614201756', '16304', '10928', '1508', '388', '3625', '13', '2016-09-10 12:54:04');
INSERT INTO `pt_resources` VALUES ('8a119405addd4016a75209296c0fb317', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1273988241', '16304', '9535', '1497', '896', '3625', '13', '2016-09-15 10:48:50');
INSERT INTO `pt_resources` VALUES ('8a2d4d6baf2a406796f1cbb5de265d81', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.3848386860', '16304', '9669', '1042', '258', '3625', '11', '2016-09-14 21:16:14');
INSERT INTO `pt_resources` VALUES ('8aa095abb97a47f3a71362509be8aac5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0614949315', '16304', '10586', '1439', '1048', '3625', '13', '2016-09-09 19:59:49');
INSERT INTO `pt_resources` VALUES ('8b2ff78eac5e4e47b1e2248405b7aeee', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1037409998', '16304', '10606', '1496', '953', '3625', '13', '2016-09-08 20:43:39');
INSERT INTO `pt_resources` VALUES ('8b3fa683c3d0470a8b2102d4741ba784', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9590', '1133', '257', '3625', '12', '2016-09-15 14:41:15');
INSERT INTO `pt_resources` VALUES ('8b4c89f41d26413eb8ab8851e5b72ed1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2804988904', '16304', '10180', '1495', '661', '3625', '13', '2016-09-13 20:20:56');
INSERT INTO `pt_resources` VALUES ('8b8f38bafe814432813e838463807b18', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0673235850', '16304', '10882', '1487', '731', '3625', '13', '2016-09-08 19:21:22');
INSERT INTO `pt_resources` VALUES ('8d152b37ca164a579f94d493c6d11a31', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0954286822', '16304', '10775', '1508', '411', '3625', '13', '2016-09-10 12:42:04');
INSERT INTO `pt_resources` VALUES ('8d56f970365d40dbbf1814df5d882193', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0842099391', '16304', '9250', '1448', '1098', '3625', '13', '2016-09-14 22:03:07');
INSERT INTO `pt_resources` VALUES ('8d7c7a0431e34dca817c762b879918ac', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1669904375', '16304', '10453', '1496', '824', '3625', '13', '2016-09-08 21:37:39');
INSERT INTO `pt_resources` VALUES ('8e4bc170e8cf40e3be84b60fd0067701', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0939725315', '16304', '10220', '1495', '971', '3625', '13', '2016-09-12 21:19:08');
INSERT INTO `pt_resources` VALUES ('8e81242bda2940e19daa9a863c5e19cb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0260783275', '16304', '10667', '1508', '478', '3625', '13', '2016-09-10 11:54:04');
INSERT INTO `pt_resources` VALUES ('8e95691ddeba4a2a875f3f58ddd3a95d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0309246625', '16304', '9016', '1490', '941', '3625', '13', '2016-09-11 18:56:03');
INSERT INTO `pt_resources` VALUES ('8e9e06a613214b2c99892df7d1e46dec', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0963309852', '16304', '10817', '1434', '1054', '3625', '13', '2016-09-05 22:02:01');
INSERT INTO `pt_resources` VALUES ('8eba41217e8b4b088cf366cd6c3e2201', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1565764092', '16304', '9982', '1487', '758', '3625', '13', '2016-09-16 18:59:28');
INSERT INTO `pt_resources` VALUES ('8f22fa5f9d2a4f7fbf8ac4a07c54564b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0770385916', '16304', '11026', '1508', '433', '3625', '13', '2016-09-10 12:24:04');
INSERT INTO `pt_resources` VALUES ('8f32051585334a9f9d2ab7830038312a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0159587868', '16304', '9224', '1491', '940', '3625', '13', '2016-09-11 17:48:10');
INSERT INTO `pt_resources` VALUES ('8f8fda34b797426eb71f824725dbb9d0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0971100038', '16304', '10508', '1495', '999', '3625', '13', '2016-09-12 20:51:08');
INSERT INTO `pt_resources` VALUES ('8f958c45811a4ee39260ad38decc7f49', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0654054132', '16304', '10811', '1503', '839', '3625', '13', '2016-09-08 19:54:42');
INSERT INTO `pt_resources` VALUES ('8f98ef9f6ac54ee4b8427a25dc22b4a8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1271798699', '16304', '10479', '1496', '831', '3625', '13', '2016-09-08 21:31:39');
INSERT INTO `pt_resources` VALUES ('903c103fc82f44f5bac78f9af0de3cc4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2062818825', '16304', '9726', '1410', '849', '3625', '14', '2016-09-10 15:12:04');
INSERT INTO `pt_resources` VALUES ('9126d7941bf4427a882cdfcc43126afe', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2110341126', '16304', '9426', '1494', '772', '3625', '13', '2016-09-10 16:22:51');
INSERT INTO `pt_resources` VALUES ('91abf9d6f7584cb2992695ecfa07e518', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1300557263', '16304', '10726', '1500', '918', '3625', '13', '2016-09-04 17:55:13');
INSERT INTO `pt_resources` VALUES ('91d22589949b4ebcba3d60ba91da9376', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.8306159970', '16304', '9402', '1124', '370', '3625', '12', '2016-09-14 22:11:43');
INSERT INTO `pt_resources` VALUES ('91fd66256e9746b5a1254f088f155fab', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1071330206', '16304', '9626', '1485', '915', '3625', '13', '2016-09-15 14:39:47');
INSERT INTO `pt_resources` VALUES ('92f43b295236491593b8d5ec0a850794', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0914002870', '16304', '10860', '1508', '433', '3625', '13', '2016-09-10 12:30:04');
INSERT INTO `pt_resources` VALUES ('934632e6171946f690cee0acc466970c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1241717966', '16304', '10122', '1439', '1005', '3625', '13', '2016-09-09 20:29:49');
INSERT INTO `pt_resources` VALUES ('936cb2c6e45047e9a058605484eac494', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1689337597', '16304', '10312', '1439', '1005', '3625', '13', '2016-09-09 20:21:49');
INSERT INTO `pt_resources` VALUES ('93b0d10b84214b7f8dd75ed216d0cbe0', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0593262471', '16304', '11021', '1434', '1066', '3625', '13', '2016-09-05 21:42:01');
INSERT INTO `pt_resources` VALUES ('93dadb00590b492da3a120e664b4c10a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1107279710', '16304', '10855', '1508', '700', '3625', '13', '2016-09-10 10:21:33');
INSERT INTO `pt_resources` VALUES ('93f59bf237b84785adb3e39d52311239', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1828476912', '16304', '9763', '1508', '254', '3625', '13', '2016-09-10 14:28:04');
INSERT INTO `pt_resources` VALUES ('946c62e928154cbf85623a4a0b716a29', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1866022337', '16304', '10916', '1487', '919', '3625', '13', '2016-09-08 19:17:22');
INSERT INTO `pt_resources` VALUES ('9475864c65554e758ff9240e14b54f62', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1554579391', '16304', '10474', '1439', '1011', '3625', '13', '2016-09-09 20:17:49');
INSERT INTO `pt_resources` VALUES ('9544126e1b00444fa8e6a1443867f9c5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1301601848', '16304', '9390', '1496', '777', '3625', '13', '2016-09-15 14:49:15');
INSERT INTO `pt_resources` VALUES ('9615762087c24afead9db4ac60c0010a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0994530568', '16304', '10466', '1496', '831', '3625', '13', '2016-09-08 21:29:39');
INSERT INTO `pt_resources` VALUES ('966ae1e436414bebbb4555e4ba4a643c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1244885288', '16304', '10363', '1505', '975', '3625', '13', '2016-09-11 21:34:13');
INSERT INTO `pt_resources` VALUES ('9687a71256f74bd6941baed5b29a329a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1464551202', '16304', '10850', '1508', '562', '3625', '13', '2016-09-10 11:13:33');
INSERT INTO `pt_resources` VALUES ('968ff2aaad1a4062bee40231898b470b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1296920597', '16304', '9214', '1497', '685', '3625', '13', '2016-09-15 11:34:50');
INSERT INTO `pt_resources` VALUES ('969ae67e88d9425c958c45596b91b6bc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1177094935', '16304', '10068', '1439', '1005', '3625', '13', '2016-09-09 20:31:49');
INSERT INTO `pt_resources` VALUES ('96a84215c5934d06b51fa3af8e2275ce', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1458681338', '16304', '9263', '1518', '449', '3625', '13', '2016-09-15 16:28:01');
INSERT INTO `pt_resources` VALUES ('96c9bd455eba4a12a5a1b5a2bba25e9c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0770895484', '16304', '9428', '1494', '1040', '3625', '13', '2016-09-15 15:01:28');
INSERT INTO `pt_resources` VALUES ('97182ef312604c19a62a270b14fabbc8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1435569943', '16304', '9377', '1504', '884', '3625', '13', '2016-09-14 21:41:23');
INSERT INTO `pt_resources` VALUES ('9753ec2ebebd495fa9b4b99acdcf54ec', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1668709818', '16304', '9684', '1494', '772', '3625', '13', '2016-09-10 16:06:51');
INSERT INTO `pt_resources` VALUES ('97a97027eb8c4d5494e7beab37f81bd6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1849320903', '16304', '10237', '1495', '673', '3625', '13', '2016-09-13 20:12:56');
INSERT INTO `pt_resources` VALUES ('97acc14284fc4fa0bc494ad24460f1a9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2269485801', '16304', '9768', '1494', '900', '3625', '13', '2016-09-10 15:42:51');
INSERT INTO `pt_resources` VALUES ('97af8578a9c6413c937a9a43ac8974c4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1144088945', '16304', '10973', '1508', '562', '3625', '13', '2016-09-10 11:01:33');
INSERT INTO `pt_resources` VALUES ('97cd5d3ed2644ce5a0540726a75ccf68', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0000000000', '16304', '11035', '1142', '284', '3625', '12', '2016-09-04 21:14:12');
INSERT INTO `pt_resources` VALUES ('97d9e91d2f3e4badaca3661cccdb4b8c', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0560471548', '16304', '10771', '1514', '644', '3625', '13', '2016-09-04 21:29:48');
INSERT INTO `pt_resources` VALUES ('98775a63f5f445ae8026adb8da28d5d2', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1095717220', '16304', '10976', '1514', '886', '3625', '13', '2016-09-04 21:16:12');
INSERT INTO `pt_resources` VALUES ('98b4e515547d441ba777313fdb4b0f71', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0888086824', '16304', '10338', '1495', '957', '3625', '13', '2016-09-12 21:31:08');
INSERT INTO `pt_resources` VALUES ('992894db844b47fb8ca4ef4e3739c3f7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1971301452', '16304', '9746', '1410', '857', '3625', '14', '2016-09-10 15:10:04');
INSERT INTO `pt_resources` VALUES ('99548564b476460389aacfdda4fbd3fd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1144316665', '16304', '10591', '1439', '1066', '3625', '13', '2016-09-09 19:51:49');
INSERT INTO `pt_resources` VALUES ('99e0ed4cc06f433ab90e9cad10563334', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0689052508', '16304', '10619', '1439', '1061', '3625', '13', '2016-09-09 19:53:49');
INSERT INTO `pt_resources` VALUES ('9a4d6c6312994710b6799ad062a83df3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1658910608', '16304', '10004', '1493', '727', '3625', '13', '2016-09-13 21:13:53');
INSERT INTO `pt_resources` VALUES ('9a6b722406b9442eba0a454e2ab92dad', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0928760191', '16304', '11099', '1508', '585', '3625', '13', '2016-09-10 10:53:33');
INSERT INTO `pt_resources` VALUES ('9a6d6cf2974a42aba1a8c945fdd96bff', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1205149532', '16304', '9227', '1497', '692', '3625', '13', '2016-09-15 11:32:50');
INSERT INTO `pt_resources` VALUES ('9b135030cd41432189796bb8b80a3cf5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1637323156', '16304', '10520', '1439', '1048', '3625', '13', '2016-09-09 19:55:49');
INSERT INTO `pt_resources` VALUES ('9b24e14d518d4ddfa1a1601b4881543c', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0642627906', '16304', '11139', '1434', '1066', '3625', '13', '2016-09-05 21:28:01');
INSERT INTO `pt_resources` VALUES ('9b32e41e859a4a7d9bfab1e97875a0a2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1082393886', '16304', '9238', '1502', '809', '3625', '13', '2016-09-14 21:54:45');
INSERT INTO `pt_resources` VALUES ('9bbe90b7b4764a68b864b7fcbc739883', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1022920337', '16304', '9237', '1494', '959', '3625', '13', '2016-09-15 15:38:47');
INSERT INTO `pt_resources` VALUES ('9bcd8731ca8146ddbada8776d6743b81', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1484195926', '16304', '10978', '1508', '562', '3625', '13', '2016-09-10 11:05:33');
INSERT INTO `pt_resources` VALUES ('9c241551f3d64840b3b51016cd72195f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1085656391', '16304', '9551', '1041', '78', '3625', '11', '2016-09-14 22:09:36');
INSERT INTO `pt_resources` VALUES ('9c301ced30ce4425adbd48d06ee6bdae', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1600925562', '16304', '9698', '1439', '992', '3625', '13', '2016-09-09 21:03:49');
INSERT INTO `pt_resources` VALUES ('9c4b8dc6ee954d59b7373ae4abaace1b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1443949199', '16304', '9161', '1487', '985', '3625', '13', '2016-09-15 15:52:46');
INSERT INTO `pt_resources` VALUES ('9c4fba13b05e44418ac23605ac8cc95c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0855089346', '16304', '9384', '1487', '1071', '3625', '13', '2016-09-14 22:17:43');
INSERT INTO `pt_resources` VALUES ('9c91c6ed635d4884ad27dcda12be47cc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1070902437', '16304', '10620', '1496', '953', '3625', '13', '2016-09-08 20:31:39');
INSERT INTO `pt_resources` VALUES ('9d3b438a6d814c54ae6bad4046048763', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1391811994', '16304', '9973', '1495', '940', '3625', '13', '2016-09-12 21:41:08');
INSERT INTO `pt_resources` VALUES ('9d435b6c616a4cf3ad0b224d1edac11f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2498399122', '16304', '10084', '1495', '642', '3625', '13', '2016-09-13 20:36:56');
INSERT INTO `pt_resources` VALUES ('9d4d02d7d20a4a2eafec91703775fa5b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1118120864', '16304', '9267', '1448', '1153', '3625', '13', '2016-09-14 21:59:07');
INSERT INTO `pt_resources` VALUES ('9d792698d5f846b3ad9a781dbe93ccc2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.7402639715', '16304', '10456', '1140', '301', '3625', '12', '2016-09-08 19:35:48');
INSERT INTO `pt_resources` VALUES ('9d9da67110864aa59df2fcb55cbdd121', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1175512659', '16304', '11157', '1508', '700', '3625', '13', '2016-09-10 10:11:33');
INSERT INTO `pt_resources` VALUES ('9de0dc7e52d640e7ae72ffc17c81c694', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0757600680', '16304', '9390', '1496', '777', '3625', '13', '2016-09-15 14:53:15');
INSERT INTO `pt_resources` VALUES ('9e7448b5d1074fe6925eb9d272f515e5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1726076999', '16304', '9187', '1497', '668', '3625', '13', '2016-09-15 11:52:56');
INSERT INTO `pt_resources` VALUES ('9e9618851fb04410bd04a34ee4decbf4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0678766286', '16304', '10842', '1495', '940', '3625', '13', '2016-09-12 21:47:08');
INSERT INTO `pt_resources` VALUES ('9e9fafae74e94a95872319a81168ee30', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0446337313', '16304', '10741', '1488', '957', '3625', '13', '2016-09-08 20:11:49');
INSERT INTO `pt_resources` VALUES ('9f13d03b5fbb4e9692c62ede2c4e23c4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1313237012', '16304', '9174', '1497', '668', '3625', '13', '2016-09-15 11:54:56');
INSERT INTO `pt_resources` VALUES ('9f3d2294d1a44e93a7b877e9ec3e814e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1935555934', '16304', '9690', '1493', '727', '3625', '13', '2016-09-13 21:05:53');
INSERT INTO `pt_resources` VALUES ('9f56f217e7b2418ba309c4e9d50b71a3', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0704893530', '16304', '9509', '1497', '873', '3625', '13', '2016-09-15 10:52:50');
INSERT INTO `pt_resources` VALUES ('9f774c9686354a09829acf4e29babd0e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2510801229', '16304', '10400', '1496', '774', '3625', '13', '2016-09-08 21:55:39');
INSERT INTO `pt_resources` VALUES ('9ffe274ed4074d948944991758f1ba46', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0851591165', '16304', '10279', '1505', '999', '3625', '13', '2016-09-11 21:28:13');
INSERT INTO `pt_resources` VALUES ('a09ca872656b4c22a35c5c1b7bc08382', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2046584843', '16304', '10244', '1480', '909', '3625', '13', '2016-09-16 18:33:09');
INSERT INTO `pt_resources` VALUES ('a0edf357c4244a8db40eab044a308a7d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1406785262', '16304', '11426', '1508', '745', '3625', '13', '2016-09-10 10:01:33');
INSERT INTO `pt_resources` VALUES ('a1103252dde44f4c91500f515f4d58de', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0766706156', '16304', '10994', '1514', '784', '3625', '13', '2016-09-04 21:19:48');
INSERT INTO `pt_resources` VALUES ('a17e20fb66ca42bc98e5242a96670a2f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2010062273', '16304', '9841', '1508', '323', '3625', '13', '2016-09-10 13:54:04');
INSERT INTO `pt_resources` VALUES ('a1abe2ba76194dad8c2cee91bd0385f1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0860645858', '16304', '9278', '1494', '976', '3625', '13', '2016-09-15 15:27:28');
INSERT INTO `pt_resources` VALUES ('a2b007bd08074626b7ccaa2505abd98f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1432916322', '16304', '9283', '1497', '975', '3625', '13', '2016-09-15 10:30:47');
INSERT INTO `pt_resources` VALUES ('a2c011661ee645b38baa50397d61ced8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0327878980', '16304', '10752', '1488', '957', '3625', '13', '2016-09-08 20:09:49');
INSERT INTO `pt_resources` VALUES ('a2f4ed39a8684e73ab874bd588357873', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1835040353', '16304', '9951', '1494', '1034', '3625', '13', '2016-09-10 15:22:51');
INSERT INTO `pt_resources` VALUES ('a307a10d333647d1b21433493556ebd9', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0962166618', '16304', '10704', '1502', '704', '3625', '13', '2016-09-04 17:50:43');
INSERT INTO `pt_resources` VALUES ('a30ae27cfbf040edba7596a487581979', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0818769263', '16304', '10842', '1508', '562', '3625', '13', '2016-09-10 11:25:43');
INSERT INTO `pt_resources` VALUES ('a3f1150e2b4b402890d88c3b35cfec6d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0617444001', '16304', '10950', '1508', '444', '3625', '13', '2016-09-10 12:18:04');
INSERT INTO `pt_resources` VALUES ('a3f8bd95b4184773ac396c8f9f017936', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0641020452', '16304', '10891', '1487', '776', '3625', '13', '2016-09-08 19:19:22');
INSERT INTO `pt_resources` VALUES ('a48a11c1247d4c5da34c8504d3d5f11c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1245577711', '16304', '9175', '1518', '790', '3625', '13', '2016-09-15 16:01:35');
INSERT INTO `pt_resources` VALUES ('a49e3c8dabca4763830a9628de2c0c51', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0812424470', '16304', '11532', '1495', '946', '3625', '13', '2016-09-07 20:39:26');
INSERT INTO `pt_resources` VALUES ('a4b4ec85081141e8a09b555379c5039f', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0506217709', '16304', '11410', '1495', '974', '3625', '13', '2016-09-07 21:25:31');
INSERT INTO `pt_resources` VALUES ('a5c20a7d6f7c4aca8326ea76fb36be80', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0909177381', '16304', '11103', '1508', '632', '3625', '13', '2016-09-10 10:47:33');
INSERT INTO `pt_resources` VALUES ('a5d550d460dc4e76b2aca19d0c1a7775', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1030528727', '16304', '9222', '1497', '668', '3625', '13', '2016-09-15 11:38:50');
INSERT INTO `pt_resources` VALUES ('a5f61092a0cd4e5bab709046ebad20f6', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0445426391', '16304', '11039', '1489', '961', '3625', '13', '2016-09-06 21:21:24');
INSERT INTO `pt_resources` VALUES ('a62f3f93d46d4b92914e6aa5911b7bd6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0814213411', '16304', '10299', '1436', '1046', '3625', '13', '2016-09-11 20:18:20');
INSERT INTO `pt_resources` VALUES ('a630cd773eb74c91abf974f31e438077', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1199584734', '16304', '10427', '1495', '994', '3625', '13', '2016-09-12 21:05:08');
INSERT INTO `pt_resources` VALUES ('a64490fb17c04ed79d8efb463fd4ffc8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2147231584', '16304', '9845', '1508', '266', '3625', '13', '2016-09-10 14:00:04');
INSERT INTO `pt_resources` VALUES ('a65d82dbdf0445ec97a3e24503950acf', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2077426172', '16304', '9982', '1495', '630', '3625', '13', '2016-09-13 20:46:56');
INSERT INTO `pt_resources` VALUES ('a689f2945fa144bda59e0bf475ffd30e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1044027618', '16304', '9300', '1491', '1155', '3625', '13', '2016-09-11 17:40:10');
INSERT INTO `pt_resources` VALUES ('a68bc66421254d199e07a6fbd0106611', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1246452494', '16304', '9121', '1518', '350', '3625', '13', '2016-09-15 16:48:01');
INSERT INTO `pt_resources` VALUES ('a694fb25ac794e97a5bf71ecb9dc3ad4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2587245248', '16304', '10850', '1508', '478', '3625', '13', '2016-09-10 12:04:04');
INSERT INTO `pt_resources` VALUES ('a6b8776fbad94cd1ad829e64c3cca090', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0934955330', '16304', '10555', '1496', '854', '3625', '13', '2016-09-08 21:09:39');
INSERT INTO `pt_resources` VALUES ('a742b77fd1914beba1e04f800b67a811', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0712498246', '16304', '9309', '1494', '1034', '3625', '13', '2016-09-15 15:21:28');
INSERT INTO `pt_resources` VALUES ('a765540125594231a5b4086f8f843915', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1568704019', '16304', '9176', '1487', '997', '3625', '13', '2016-09-15 15:48:45');
INSERT INTO `pt_resources` VALUES ('a7b717ce28704705b0b38553ad38ade7', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0682687529', '16304', '11529', '1495', '1032', '3625', '13', '2016-09-07 20:35:26');
INSERT INTO `pt_resources` VALUES ('a89be9e258444704a6ec1e0f94ad7a9a', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0614573150', '16304', '10997', '1489', '942', '3625', '13', '2016-09-06 21:25:24');
INSERT INTO `pt_resources` VALUES ('a8a6a2196ccc469c9eab9d0067789317', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2805084246', '16304', '10009', '1495', '696', '3625', '13', '2016-09-13 19:50:47');
INSERT INTO `pt_resources` VALUES ('a8e590438d604f849014ad54d3bb1165', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0864770918', '16304', '10669', '1508', '478', '3625', '13', '2016-09-10 11:52:04');
INSERT INTO `pt_resources` VALUES ('a8fa7a733887431f96d879b63e118119', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1828688275', '16304', '9477', '1494', '772', '3625', '13', '2016-09-10 16:26:51');
INSERT INTO `pt_resources` VALUES ('a948f6d5c84c4d2ea88c15616d84ab58', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2102227198', '16304', '9821', '1508', '266', '3625', '13', '2016-09-10 13:58:04');
INSERT INTO `pt_resources` VALUES ('a94acc85b79249639248a321265a52f5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1273710304', '16304', '9336', '1518', '722', '3625', '13', '2016-09-15 16:16:01');
INSERT INTO `pt_resources` VALUES ('a9ff8dd58aa647e38384eda1b2ac8f7c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0780820503', '16304', '9273', '1498', '1210', '3625', '13', '2016-09-15 16:57:32');
INSERT INTO `pt_resources` VALUES ('aa0f37e26ed947249f3fc122c50bbdd6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1732047157', '16304', '9226', '1491', '1020', '3625', '13', '2016-09-11 17:42:10');
INSERT INTO `pt_resources` VALUES ('aa67d55f53c044418765ddcc771a8711', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0000000000', '16304', '9878', '1041', '241', '3625', '11', '2016-09-09 21:51:43');
INSERT INTO `pt_resources` VALUES ('aaada3600a1b434ea52f94c530e7cd41', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0942797366', '16304', '9163', '1497', '495', '3625', '13', '2016-09-15 12:12:56');
INSERT INTO `pt_resources` VALUES ('aab8d4d43513489ba2ba8fdadeccab60', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2300760507', '16304', '9504', '1494', '772', '3625', '13', '2016-09-10 16:10:51');
INSERT INTO `pt_resources` VALUES ('aab9c7eb0b0648fd9da78b65fc674a56', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.8743272067', '16304', '9784', '1041', '210', '3625', '11', '2016-09-14 20:56:20');
INSERT INTO `pt_resources` VALUES ('aad98c34386c44669f23b885d64839d3', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0990660909', '16304', '11182', '1506', '899', '3625', '13', '2016-09-06 20:37:37');
INSERT INTO `pt_resources` VALUES ('ab0fd9daab4a49c39102e6be34cd880b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1304029951', '16304', '9276', '1497', '980', '3625', '13', '2016-09-15 10:20:47');
INSERT INTO `pt_resources` VALUES ('aba78b587db2478bb0c6e34fdc9fe5d6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2045697335', '16304', '9734', '1508', '266', '3625', '13', '2016-09-10 14:06:04');
INSERT INTO `pt_resources` VALUES ('ac0ef0052d6343e793c53e6bac810cd0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1163436687', '16304', '10474', '1495', '999', '3625', '13', '2016-09-12 20:47:08');
INSERT INTO `pt_resources` VALUES ('ac6c4facd7184e2bab0bf61f10253704', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1000083009', '16304', '11143', '1434', '1072', '3625', '13', '2016-09-05 20:56:01');
INSERT INTO `pt_resources` VALUES ('ac850f91301f48128365970373863470', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2116587228', '16304', '10273', '1495', '672', '3625', '13', '2016-09-13 20:16:56');
INSERT INTO `pt_resources` VALUES ('acde84a5347e4fd2bc3122cb1e07f770', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0354417687', '16304', '11489', '1495', '900', '3625', '13', '2016-09-07 20:47:26');
INSERT INTO `pt_resources` VALUES ('acfc9546f7254165ad1cbac21f47f7f8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0976554108', '16304', '10881', '1508', '632', '3625', '13', '2016-09-10 10:45:33');
INSERT INTO `pt_resources` VALUES ('ad01dae0b01e4870805d371acf7478f5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1870410739', '16304', '9875', '1494', '818', '3625', '13', '2016-09-10 15:54:51');
INSERT INTO `pt_resources` VALUES ('ad37ed44376642c48dcb1922a575cd8f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1955570660', '16304', '9633', '1410', '869', '3625', '14', '2016-09-10 15:00:04');
INSERT INTO `pt_resources` VALUES ('ae74e241e7674e0bb297b69f7d4b8f67', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1612929165', '16304', '9547', '1494', '1072', '3625', '13', '2016-09-11 17:36:11');
INSERT INTO `pt_resources` VALUES ('ae7774efdc6c4379a0d19796086cf697', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1573169744', '16304', '9842', '1041', '80', '3625', '11', '2016-09-09 21:53:29');
INSERT INTO `pt_resources` VALUES ('ae9103b949f548d28d229d4351a71035', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0640068291', '16304', '11103', '1508', '608', '3625', '13', '2016-09-10 10:49:33');
INSERT INTO `pt_resources` VALUES ('aeea67ffc6a84a5c93eb12933e9d5323', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0733802466', '16304', '11179', '1434', '1174', '3625', '13', '2016-09-05 20:46:36');
INSERT INTO `pt_resources` VALUES ('af863f67b6814eeeafc93ff2c4754d9a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1317502626', '16304', '9275', '1494', '970', '3625', '13', '2016-09-15 15:29:46');
INSERT INTO `pt_resources` VALUES ('b0393275c4714f108ad2992716e999e0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2488277457', '16304', '9849', '1508', '323', '3625', '13', '2016-09-10 13:52:04');
INSERT INTO `pt_resources` VALUES ('b1b9e23a71764262ba4338bf82897af7', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0753628683', '16304', '10892', '1499', '1064', '3625', '13', '2016-09-06 21:46:51');
INSERT INTO `pt_resources` VALUES ('b1dbc516c64f4adaa07c6ce0d1fe55eb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0410328401', '16304', '9035', '1496', '993', '3625', '13', '2016-09-11 18:49:27');
INSERT INTO `pt_resources` VALUES ('b1f225df64854d60a1f38200dbadd24d', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0657507306', '16304', '11167', '1434', '1148', '3625', '13', '2016-09-05 20:50:01');
INSERT INTO `pt_resources` VALUES ('b251f2e5557247a3b0b2d93a5c9891a0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2599911415', '16304', '10796', '1508', '478', '3625', '13', '2016-09-10 12:02:04');
INSERT INTO `pt_resources` VALUES ('b310fbb17dd4479aa195aad207084169', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2053200424', '16304', '9766', '1508', '266', '3625', '13', '2016-09-10 14:24:04');
INSERT INTO `pt_resources` VALUES ('b341e01b4176453696ed613a402c0797', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0924487025', '16304', '10619', '1514', '583', '3625', '13', '2016-09-04 21:49:48');
INSERT INTO `pt_resources` VALUES ('b377b3505cb84db6b3a23dcc98ddb14d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1940559602', '16304', '9469', '1494', '772', '3625', '13', '2016-09-10 16:24:51');
INSERT INTO `pt_resources` VALUES ('b396fefd06334959b43b4573e4159385', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1315133420', '16304', '10699', '1439', '1109', '3625', '13', '2016-09-09 19:49:49');
INSERT INTO `pt_resources` VALUES ('b3a32ba0877e43feb96f02917a455bdd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1490319890', '16304', '10431', '1496', '819', '3625', '13', '2016-09-08 21:39:39');
INSERT INTO `pt_resources` VALUES ('b3acc57585a14235a5643de7f23465b2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1738656830', '16304', '9432', '1497', '815', '3625', '13', '2016-09-15 11:06:50');
INSERT INTO `pt_resources` VALUES ('b408460486f14ec8b2480c3078b2bb04', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1161839044', '16304', '10424', '1495', '964', '3625', '13', '2016-09-12 21:25:08');
INSERT INTO `pt_resources` VALUES ('b448b45148734b5f95e2a0e68dca7abb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.4008359537', '16304', '9753', '1132', '282', '3625', '12', '2016-09-15 14:37:47');
INSERT INTO `pt_resources` VALUES ('b4e8e44a28654bdf973dc38c19f483a5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0794300169', '16304', '10844', '1508', '562', '3625', '13', '2016-09-10 11:17:33');
INSERT INTO `pt_resources` VALUES ('b4fe7a0eec0a4209af7350c796871a02', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10939', '1122', '271', '3625', '12', '2016-09-08 19:15:22');
INSERT INTO `pt_resources` VALUES ('b50b9ae16a4e4a6ba0e568555a9ecdb5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10987', '1038', '130', '3625', '11', '2016-09-09 19:45:49');
INSERT INTO `pt_resources` VALUES ('b68dc72db46c4b1b92c258eb1af94626', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1163345360', '16304', '9642', '1439', '845', '3625', '13', '2016-09-09 21:37:49');
INSERT INTO `pt_resources` VALUES ('b6ae9041b2494eeb870286cf2c034fb5', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0512391953', '16304', '10626', '1514', '580', '3625', '13', '2016-09-04 21:57:48');
INSERT INTO `pt_resources` VALUES ('b6b31bb6faa142879a33655b2fd6de47', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.8410045588', '16304', '9144', '1131', '308', '3625', '12', '2016-09-11 18:47:27');
INSERT INTO `pt_resources` VALUES ('b6c4d4c1391043978d50a0c4223fcefd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1590346614', '16304', '10306', '1480', '973', '3625', '13', '2016-09-16 18:23:09');
INSERT INTO `pt_resources` VALUES ('b6f58aa33dab47aebab67234025444d4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1469829163', '16304', '9124', '1518', '373', '3625', '13', '2016-09-15 16:36:01');
INSERT INTO `pt_resources` VALUES ('b756ced45d314468b902fbf32157f33a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1511837514', '16304', '9764', '1439', '893', '3625', '13', '2016-09-09 21:23:49');
INSERT INTO `pt_resources` VALUES ('b8b04ea223f545cf9bdfdd98cce6b4fe', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1358925546', '16304', '9748', '1495', '1084', '3625', '13', '2016-09-13 21:22:43');
INSERT INTO `pt_resources` VALUES ('b8f479bfa8304aa2a10c082da7b4c4ea', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1900018250', '16304', '10205', '1495', '673', '3625', '13', '2016-09-13 20:02:56');
INSERT INTO `pt_resources` VALUES ('b94b586a1cb54cc2b302f9b3fa6968c0', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0675802836', '16304', '11230', '1434', '1072', '3625', '13', '2016-09-05 21:12:01');
INSERT INTO `pt_resources` VALUES ('ba4b24fd4a9a43599a109749b495299b', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0907247063', '16304', '11423', '1495', '1062', '3625', '13', '2016-09-07 21:09:31');
INSERT INTO `pt_resources` VALUES ('ba977ee216614a27baf852af73178b5a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0551444898', '16304', '9634', '1041', '99', '3625', '11', '2016-09-14 22:07:36');
INSERT INTO `pt_resources` VALUES ('bb0cb939bf3d4e158c9e53e8d5530068', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0376272162', '16304', '10662', '1508', '478', '3625', '13', '2016-09-10 11:56:04');
INSERT INTO `pt_resources` VALUES ('bbd1dc4477784cc997238b2eea64f0a8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1525373725', '16304', '9729', '1403', '1165', '3625', '12', '2016-09-14 21:04:20');
INSERT INTO `pt_resources` VALUES ('bc5945b05ef64cdcb0ee94a686991ae9', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0455805354', '16304', '11054', '1434', '1066', '3625', '13', '2016-09-05 21:36:01');
INSERT INTO `pt_resources` VALUES ('bc7f443f05084bb68c20d17c929e7d3c', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1007219635', '16304', '11300', '1506', '977', '3625', '13', '2016-09-06 20:33:37');
INSERT INTO `pt_resources` VALUES ('bc8355e5ffb045f9832da44fba2f1162', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0745796797', '16304', '10733', '1502', '875', '3625', '13', '2016-09-04 17:48:43');
INSERT INTO `pt_resources` VALUES ('bcaa04c54ae34faea4a46fcb4468934d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1003674976', '16304', '9735', '1439', '868', '3625', '13', '2016-09-09 21:27:49');
INSERT INTO `pt_resources` VALUES ('bcd73ff1c387471c8bdec7e8eb42a893', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2157821066', '16304', '9654', '1410', '932', '3625', '14', '2016-09-10 14:50:04');
INSERT INTO `pt_resources` VALUES ('bda428591a5044558e45c778dfa0372c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1630799347', '16304', '9946', '1494', '978', '3625', '13', '2016-09-10 15:32:51');
INSERT INTO `pt_resources` VALUES ('bdc896088efa4ee19f26c08d2847b930', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1212684403', '16304', '9282', '1497', '964', '3625', '13', '2016-09-15 10:36:47');
INSERT INTO `pt_resources` VALUES ('be3a91bdc5f741f987aff220ac452430', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1163083120', '16304', '9735', '1439', '868', '3625', '13', '2016-09-09 21:35:49');
INSERT INTO `pt_resources` VALUES ('be3dc04315f440429fd3333730cad1fa', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.4006290997', '16304', '10805', '1161', '331', '3625', '12', '2016-09-04 17:44:44');
INSERT INTO `pt_resources` VALUES ('be451e76cb9740188024d194238b4635', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1129953932', '16304', '10794', '1508', '411', '3625', '13', '2016-09-10 12:40:04');
INSERT INTO `pt_resources` VALUES ('be8c8ec72ac74a0597fa6786cf885c3e', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0846115253', '16304', '11125', '1434', '1067', '3625', '13', '2016-09-05 21:24:01');
INSERT INTO `pt_resources` VALUES ('be9c6622161e47a5a7151842824f6dee', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2274750180', '16304', '10230', '1495', '673', '3625', '13', '2016-09-13 20:04:56');
INSERT INTO `pt_resources` VALUES ('befb7f8352a44264b085a1693495d1ae', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1402410381', '16304', '9303', '1497', '978', '3625', '13', '2016-09-15 10:26:47');
INSERT INTO `pt_resources` VALUES ('bf2adfc5237b4c25a7f38c98fcc56220', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0733401406', '16304', '10959', '1489', '942', '3625', '13', '2016-09-06 21:27:24');
INSERT INTO `pt_resources` VALUES ('bf4242f035aa4d8ab3d2809f6223e205', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10033', '1135', '378', '3625', '12', '2016-09-10 15:16:51');
INSERT INTO `pt_resources` VALUES ('bf57367ca19d41399a2d88e2de378319', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0000000000', '16304', '11068', '1147', '325', '3625', '12', '2016-09-06 20:53:50');
INSERT INTO `pt_resources` VALUES ('bf669a3212124eea8627180c82d70ac7', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0586310477', '16304', '10881', '1434', '1054', '3625', '13', '2016-09-05 21:54:01');
INSERT INTO `pt_resources` VALUES ('c031faa309984308a8917d7d730d57d0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1007912065', '16304', '10743', '1488', '1046', '3625', '13', '2016-09-08 20:03:49');
INSERT INTO `pt_resources` VALUES ('c04ede4b1f8a441e9bfc61f6b80bdd58', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0874576784', '16304', '11507', '1508', '759', '3625', '13', '2016-09-10 09:59:33');
INSERT INTO `pt_resources` VALUES ('c05879238d4c427abcbcd0b7daecb8a1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1960198339', '16304', '9631', '1508', '220', '3625', '13', '2016-09-10 14:32:04');
INSERT INTO `pt_resources` VALUES ('c0ba970cc25e49f5afe9522ff411f861', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1146623493', '16304', '9233', '1518', '722', '3625', '13', '2016-09-15 16:11:41');
INSERT INTO `pt_resources` VALUES ('c0c5777e01254807ad09e09e3f412d67', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0853696028', '16304', '11253', '1493', '1041', '3625', '13', '2016-09-05 20:28:14');
INSERT INTO `pt_resources` VALUES ('c0cfb1e986bc457b8444b418a76e3b7c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1834013473', '16304', '10014', '1487', '758', '3625', '13', '2016-09-16 18:53:28');
INSERT INTO `pt_resources` VALUES ('c22ddb82658440208374d02e9cae2a35', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0567350919', '16304', '11310', '1506', '954', '3625', '13', '2016-09-06 20:35:37');
INSERT INTO `pt_resources` VALUES ('c2627f043ed4494e84e46aa5204645c5', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '11455', '1135', '350', '3625', '12', '2016-09-07 21:03:17');
INSERT INTO `pt_resources` VALUES ('c26a2dcc0c9d455090f48fbfb1813270', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0894736255', '16304', '9796', '1439', '1005', '3625', '13', '2016-09-09 20:37:49');
INSERT INTO `pt_resources` VALUES ('c27e6be368674787919db88dd14f110e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0824686515', '16304', '11133', '1508', '700', '3625', '13', '2016-09-10 10:17:33');
INSERT INTO `pt_resources` VALUES ('c364797501bd423487e4f13bfbd92f27', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1792730838', '16304', '10237', '1495', '673', '3625', '13', '2016-09-13 20:06:56');
INSERT INTO `pt_resources` VALUES ('c37eb4d0ede246ff8184fef6e2c28015', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1064892371', '16304', '10416', '1496', '780', '3625', '13', '2016-09-08 21:47:39');
INSERT INTO `pt_resources` VALUES ('c3b89987abab48e2abfcb86d78feb02e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2047524617', '16304', '10017', '1487', '758', '3625', '13', '2016-09-16 19:11:28');
INSERT INTO `pt_resources` VALUES ('c3c92a4368c54676af61491c7b09127d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1753587152', '16304', '10147', '1480', '909', '3625', '13', '2016-09-16 18:43:09');
INSERT INTO `pt_resources` VALUES ('c42cc2b0e06948fa8b4e1dc4e38c7a12', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0914133695', '16304', '10880', '1508', '632', '3625', '13', '2016-09-10 10:41:33');
INSERT INTO `pt_resources` VALUES ('c4809414917a4589b13deac0358d7b8c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1009811969', '16304', '10354', '1134', '348', '3625', '12', '2016-09-16 18:17:09');
INSERT INTO `pt_resources` VALUES ('c4e5b0c6c75341928a483dfa7712264f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.8656590147', '16304', '10113', '1132', '308', '3625', '12', '2016-09-16 18:47:28');
INSERT INTO `pt_resources` VALUES ('c559c4a7a4234042b146a45e0bf56c0a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0953308378', '16304', '10581', '1495', '741', '3625', '13', '2016-09-13 19:42:47');
INSERT INTO `pt_resources` VALUES ('c56f49503dd54daeacf6a53b6b36b1a2', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10992', '1125', '343', '3625', '12', '2016-09-06 21:13:24');
INSERT INTO `pt_resources` VALUES ('c5732f428f4143cabd0b48046615d0c7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1930683862', '16304', '10011', '1487', '758', '3625', '13', '2016-09-16 18:55:28');
INSERT INTO `pt_resources` VALUES ('c6be5c0ba19140d2850b6396948249af', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0701163196', '16304', '10582', '1496', '831', '3625', '13', '2016-09-08 21:35:39');
INSERT INTO `pt_resources` VALUES ('c7179c2048cf49bc8f08a1367f3b6f63', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1393887366', '16304', '11449', '1495', '982', '3625', '13', '2016-09-07 21:23:31');
INSERT INTO `pt_resources` VALUES ('c75ffa57df2349ccbca23087e04cf630', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0920989368', '16304', '11425', '1495', '714', '3625', '13', '2016-09-07 20:57:26');
INSERT INTO `pt_resources` VALUES ('c7fabf16fd31486889816ec44823bfad', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.7708269777', '16304', '10572', '1146', '402', '3625', '12', '2016-09-08 19:40:42');
INSERT INTO `pt_resources` VALUES ('c8231c0a12ec461f9c0064e01de722bc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0887565487', '16304', '10821', '1508', '562', '3625', '13', '2016-09-10 11:30:04');
INSERT INTO `pt_resources` VALUES ('c847f85d99004700b4695f868d2169fb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0464858736', '16304', '10943', '1495', '974', '3625', '13', '2016-09-07 21:43:31');
INSERT INTO `pt_resources` VALUES ('c84fa253d4974a258db011d4cdfcf9ab', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1154269424', '16304', '9763', '1439', '876', '3625', '13', '2016-09-09 21:25:49');
INSERT INTO `pt_resources` VALUES ('c8bfb717c6f241869242eeac0115044c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1875073632', '16304', '9790', '1508', '266', '3625', '13', '2016-09-10 14:12:04');
INSERT INTO `pt_resources` VALUES ('c92b79cb56ed42adb13e97809d180e8d', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0937494933', '16304', '11270', '1493', '1041', '3625', '13', '2016-09-05 20:26:14');
INSERT INTO `pt_resources` VALUES ('c9884f4621964c1795afa9caa0fda9f4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0000000000', '16304', '9886', '1127', '380', '3625', '12', '2016-09-10 15:15:20');
INSERT INTO `pt_resources` VALUES ('c997c2f67dad45d9b0b1a6b48ca5f29b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1010108021', '16304', '10543', '1496', '953', '3625', '13', '2016-09-08 20:41:39');
INSERT INTO `pt_resources` VALUES ('c9a2015ed8a547659347ec91a2c0a8b9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1249715420', '16304', '9718', '1439', '992', '3625', '13', '2016-09-09 21:01:49');
INSERT INTO `pt_resources` VALUES ('ca9df7e2fb8d47639bffbd1ec9382aea', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0908237227', '16304', '10430', '1495', '971', '3625', '13', '2016-09-12 21:23:08');
INSERT INTO `pt_resources` VALUES ('caa625d7581b4732894b34a8d2646186', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0822927488', '16304', '10595', '1496', '872', '3625', '13', '2016-09-08 21:05:39');
INSERT INTO `pt_resources` VALUES ('cabd01a7410b4ff98b1becb0488e44ab', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0892401062', '16304', '10845', '1434', '1054', '3625', '13', '2016-09-05 21:58:01');
INSERT INTO `pt_resources` VALUES ('cacfed160edb4a518a01cd2f131b0239', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2088273251', '16304', '10009', '1493', '739', '3625', '13', '2016-09-13 20:57:53');
INSERT INTO `pt_resources` VALUES ('cae625b74c6e4ba8801bc9a78a6ba3e5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.6289568046', '16304', '9874', '1138', '363', '3625', '12', '2016-09-14 20:47:48');
INSERT INTO `pt_resources` VALUES ('cbe9b471039543cbbddf97b88938cb50', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1525493393', '16304', '10599', '1496', '999', '3625', '13', '2016-09-08 20:23:39');
INSERT INTO `pt_resources` VALUES ('cc95b6b1a2624ded9d21e5f64a15c764', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0795550918', '16304', '11367', '1495', '1140', '3625', '13', '2016-09-07 21:07:31');
INSERT INTO `pt_resources` VALUES ('cc9a675459d14c238a08dee652e9d4a7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1451726548', '16304', '10841', '1439', '1109', '3625', '13', '2016-09-09 19:47:49');
INSERT INTO `pt_resources` VALUES ('ccdc7a351fc04db9a71fa8e769aeea0f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1243161745', '16304', '10838', '1508', '562', '3625', '13', '2016-09-10 11:11:33');
INSERT INTO `pt_resources` VALUES ('cd93040c942f48eeb9d480355feffc0e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1343974827', '16304', '9667', '1140', '372', '3625', '12', '2016-09-15 16:49:32');
INSERT INTO `pt_resources` VALUES ('ce12d1720ad1432b86e6d0f60717d578', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0819341702', '16304', '10815', '1503', '972', '3625', '13', '2016-09-08 19:46:42');
INSERT INTO `pt_resources` VALUES ('ce497d6fdd334d169f4adb5fed13cc2c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1146381297', '16304', '9204', '1497', '668', '3625', '13', '2016-09-15 11:50:56');
INSERT INTO `pt_resources` VALUES ('ce4a4a1df7b1421a8cae8edf7cb4ca0e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0532155416', '16304', '10436', '1495', '988', '3625', '13', '2016-09-12 21:09:08');
INSERT INTO `pt_resources` VALUES ('cf0f5bfb4c9b4c4cbc5bca1802f5a4d0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2100619591', '16304', '10247', '1495', '673', '3625', '13', '2016-09-13 20:14:56');
INSERT INTO `pt_resources` VALUES ('cf7b5b4faf0b4451bece9354fb6aba3b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2037144564', '16304', '9871', '1494', '900', '3625', '13', '2016-09-10 15:40:51');
INSERT INTO `pt_resources` VALUES ('cf977f6f370748c080f4bcde5b811ad7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2583339106', '16304', '10861', '1508', '478', '3625', '13', '2016-09-10 12:06:04');
INSERT INTO `pt_resources` VALUES ('cfe0c86ddc924c37b1290dbbcbba526f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0731375323', '16304', '10500', '1496', '890', '3625', '13', '2016-09-08 21:01:39');
INSERT INTO `pt_resources` VALUES ('d02ba3f2d92d4bdb8d66ca4410655f54', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0683145942', '16304', '10404', '1496', '769', '3625', '13', '2016-09-08 21:59:39');
INSERT INTO `pt_resources` VALUES ('d06ebf4405384f89931e1beedb8e19a2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1097990581', '16304', '10808', '1508', '643', '3625', '13', '2016-09-10 10:35:33');
INSERT INTO `pt_resources` VALUES ('d070dac5627f4e7ab3b2fd9198ce3e65', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1028840007', '16304', '9292', '1518', '643', '3625', '13', '2016-09-15 16:22:01');
INSERT INTO `pt_resources` VALUES ('d170a202cc3e466790c4fa88e3711cd0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0454367877', '16304', '10617', '1495', '1059', '3625', '13', '2016-09-12 20:37:08');
INSERT INTO `pt_resources` VALUES ('d1831af63a4c457f89fca024b68a0368', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2259574237', '16304', '9766', '1494', '865', '3625', '13', '2016-09-10 15:50:51');
INSERT INTO `pt_resources` VALUES ('d242fd9454494927a726bea4ffafa0c5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0644517193', '16304', '10309', '1436', '1073', '3625', '13', '2016-09-11 20:16:20');
INSERT INTO `pt_resources` VALUES ('d2883776bc834e6cb50eef987b05d84b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1146675927', '16304', '9179', '1497', '668', '3625', '13', '2016-09-15 11:46:56');
INSERT INTO `pt_resources` VALUES ('d34f2388b1b24f0fa2aa663deed6c0fe', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0859717982', '16304', '11348', '1495', '988', '3625', '13', '2016-09-07 21:17:31');
INSERT INTO `pt_resources` VALUES ('d3585fc9ce0041cfbce0b1b65306a82e', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1292136650', '16304', '11458', '1495', '731', '3625', '13', '2016-09-07 20:53:26');
INSERT INTO `pt_resources` VALUES ('d358f761b831431d899e0a40a86c0dbe', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1022337903', '16304', '11182', '1434', '1282', '3625', '13', '2016-09-05 20:34:36');
INSERT INTO `pt_resources` VALUES ('d3c1476923784fa0b37a03568e9c5ee1', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1926467277', '16304', '9470', '1494', '772', '3625', '13', '2016-09-10 16:12:51');
INSERT INTO `pt_resources` VALUES ('d3f34ab7198d4c35bf668e954bd204b7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1126891878', '16304', '9167', '1497', '621', '3625', '13', '2016-09-15 12:02:56');
INSERT INTO `pt_resources` VALUES ('d430d3fa980f43b196020723b09ce0c0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0758781312', '16304', '9400', '1496', '777', '3625', '13', '2016-09-15 14:51:15');
INSERT INTO `pt_resources` VALUES ('d45a5464b8764fd9b52039a00ab0ece7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1225614925', '16304', '9217', '1491', '940', '3625', '13', '2016-09-11 17:46:10');
INSERT INTO `pt_resources` VALUES ('d4c6f55293794c67bfe9c540a0ed9c5f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0767752302', '16304', '10513', '1496', '890', '3625', '13', '2016-09-08 20:55:39');
INSERT INTO `pt_resources` VALUES ('d4f265906f124151b2cb6b8e0f32a4b9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0905643134', '16304', '10887', '1508', '632', '3625', '13', '2016-09-10 10:43:33');
INSERT INTO `pt_resources` VALUES ('d58d722cc3e047429086265a9ae4df77', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0920051769', '16304', '10784', '1503', '1234', '3625', '13', '2016-09-08 19:42:42');
INSERT INTO `pt_resources` VALUES ('d5964f20085a4a65b4d6de7155e8d167', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0622168588', '16304', '10981', '1434', '1061', '3625', '13', '2016-09-05 21:48:01');
INSERT INTO `pt_resources` VALUES ('d5b0b6fed495474293fbebb7a16e78ad', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1120746346', '16304', '9180', '1497', '668', '3625', '13', '2016-09-15 11:56:56');
INSERT INTO `pt_resources` VALUES ('d60c9ba23cc84ba9918b2b6205c59ef0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1583983786', '16304', '9591', '1439', '845', '3625', '13', '2016-09-09 21:39:49');
INSERT INTO `pt_resources` VALUES ('d654335851d242bd9bc0ea75afcfb34b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1010225198', '16304', '9610', '1497', '1083', '3625', '13', '2016-09-14 22:23:38');
INSERT INTO `pt_resources` VALUES ('d69645acb6e3464cab5c68fdfa4f0dfb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1730204161', '16304', '10157', '1480', '909', '3625', '13', '2016-09-16 18:39:09');
INSERT INTO `pt_resources` VALUES ('d7700132e03d40c3b2ad20f76e5aa66b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1637055182', '16304', '9780', '1494', '772', '3625', '13', '2016-09-10 16:04:51');
INSERT INTO `pt_resources` VALUES ('d821febc4e8b45e698a7d79ff2528a72', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0817631622', '16304', '9448', '1497', '843', '3625', '13', '2016-09-15 11:04:50');
INSERT INTO `pt_resources` VALUES ('d845a877a07b46ac938601209a338477', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0742970447', '16304', '9391', '1140', '208', '3625', '12', '2016-09-15 16:53:32');
INSERT INTO `pt_resources` VALUES ('d869e32e6c7549eeb9bf916cfd5a0141', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1074195885', '16304', '9514', '1497', '873', '3625', '13', '2016-09-15 10:50:50');
INSERT INTO `pt_resources` VALUES ('d86f657aeffe4a04a922129664c76001', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1404745061', '16304', '9677', '1439', '1000', '3625', '13', '2016-09-09 20:59:49');
INSERT INTO `pt_resources` VALUES ('d8bb8a05771c487bb859a93bdbdbe1ba', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0826872039', '16304', '10426', '1495', '988', '3625', '13', '2016-09-12 21:07:08');
INSERT INTO `pt_resources` VALUES ('d8d24e879c0e43f69dbaa0a645717377', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2211288778', '16304', '9835', '1494', '906', '3625', '13', '2016-09-10 15:38:51');
INSERT INTO `pt_resources` VALUES ('d90c8771090f45b9aad2710966911f9b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1165705052', '16304', '9855', '1495', '940', '3625', '13', '2016-09-12 21:43:08');
INSERT INTO `pt_resources` VALUES ('d94badef8ff14970ae9193db398c1b6b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1112310298', '16304', '10460', '1495', '999', '3625', '13', '2016-09-12 20:59:08');
INSERT INTO `pt_resources` VALUES ('d9a90b80832e4f9c812bd82522455a15', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0836369949', '16304', '11179', '1434', '1243', '3625', '13', '2016-09-05 20:36:36');
INSERT INTO `pt_resources` VALUES ('da0e7c13fac34d2194e832ad401bc3c7', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0691916274', '16304', '10999', '1489', '959', '3625', '13', '2016-09-06 21:23:24');
INSERT INTO `pt_resources` VALUES ('da23c41ca80449d19faf37790136f426', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2611990403', '16304', '10949', '1508', '388', '3625', '13', '2016-09-10 12:56:04');
INSERT INTO `pt_resources` VALUES ('dab453c2a64c4bcb8cba4a9344eae034', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0773786475', '16304', '11130', '1434', '1066', '3625', '13', '2016-09-05 21:26:01');
INSERT INTO `pt_resources` VALUES ('dade56adafcf46958d9f6ef8e5e2725b', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0612281277', '16304', '11098', '1434', '1072', '3625', '13', '2016-09-05 21:08:01');
INSERT INTO `pt_resources` VALUES ('db01f40cd34542118181a29b326f940b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2111777112', '16304', '9985', '1495', '630', '3625', '13', '2016-09-13 20:48:56');
INSERT INTO `pt_resources` VALUES ('db1e51f9302f4c2ea090f086a4e82288', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1134162577', '16304', '9224', '1448', '1153', '3625', '13', '2016-09-14 22:01:07');
INSERT INTO `pt_resources` VALUES ('dbb8f0c828d54c9786804e0ed5bdce51', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1165535812', '16304', '9423', '1504', '838', '3625', '13', '2016-09-14 21:43:27');
INSERT INTO `pt_resources` VALUES ('dbe5ba6c5bf34f5e9df0ca7b55f776e0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1706497167', '16304', '10397', '1496', '806', '3625', '13', '2016-09-08 21:43:39');
INSERT INTO `pt_resources` VALUES ('dbecb9df787e4eacbe297afdb4211abe', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1018362619', '16304', '9127', '1518', '350', '3625', '13', '2016-09-15 16:42:01');
INSERT INTO `pt_resources` VALUES ('dd019523d59a4606a5b33e27d8f1fb24', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2525353837', '16304', '9691', '1494', '772', '3625', '13', '2016-09-10 16:14:51');
INSERT INTO `pt_resources` VALUES ('dd4171c031284421b2928f00b0068212', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0696097334', '16304', '9779', '1496', '1121', '3625', '13', '2016-09-09 21:45:52');
INSERT INTO `pt_resources` VALUES ('dd9149e0fd9e4889b7e602258cd43b40', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2052226579', '16304', '9718', '1410', '857', '3625', '14', '2016-09-10 15:08:04');
INSERT INTO `pt_resources` VALUES ('dda1f4d590cb40268d941b35bf1673e9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0792678996', '16304', '9156', '1487', '962', '3625', '13', '2016-09-15 15:56:46');
INSERT INTO `pt_resources` VALUES ('de0a4d8c6f404541903e6b8c78667673', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9194', '1130', '244', '3625', '12', '2016-09-11 18:52:03');
INSERT INTO `pt_resources` VALUES ('de3b4e7e67814dc0a7695e54b5427c05', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1179752042', '16304', '9840', '1138', '206', '3625', '12', '2016-09-14 20:51:48');
INSERT INTO `pt_resources` VALUES ('dea5244a11ee48f298a8cc76149fa7c2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0346880647', '16304', '10423', '1496', '780', '3625', '13', '2016-09-08 21:51:39');
INSERT INTO `pt_resources` VALUES ('defb809547c34b27a1c4bf77b690d102', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2291974386', '16304', '8956', '1508', '380', '3625', '13', '2016-09-10 13:18:04');
INSERT INTO `pt_resources` VALUES ('df2678b6f78c4e01aa25b23426b9c26c', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0693468944', '16304', '10934', '1514', '661', '3625', '13', '2016-09-04 21:23:48');
INSERT INTO `pt_resources` VALUES ('df3ff614505f4b338a02679213a6340e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2107737664', '16304', '9835', '1508', '323', '3625', '13', '2016-09-10 13:50:04');
INSERT INTO `pt_resources` VALUES ('e00f08c0cdc846dabfeb3f8681e9bd9a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2135094294', '16304', '10374', '1480', '914', '3625', '13', '2016-09-16 18:31:09');
INSERT INTO `pt_resources` VALUES ('e0574db91f044535811b27d3273b111b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0941146508', '16304', '10476', '1496', '953', '3625', '13', '2016-09-08 20:35:39');
INSERT INTO `pt_resources` VALUES ('e08fd20894084d51893285535f010d3c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9326', '1128', '388', '3625', '12', '2016-09-15 15:39:10');
INSERT INTO `pt_resources` VALUES ('e0c915ed761b4bd289c5e35eada141d6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0771223306', '16304', '10417', '1496', '837', '3625', '13', '2016-09-08 21:25:39');
INSERT INTO `pt_resources` VALUES ('e0cc6dca46f3483a8b83d2d76041b47f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0663798843', '16304', '10723', '1495', '1134', '3625', '13', '2016-09-12 20:33:08');
INSERT INTO `pt_resources` VALUES ('e1432eebd0194041ba41fa09e62352ff', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0243167116', '16304', '10741', '1514', '588', '3625', '13', '2016-09-04 21:41:48');
INSERT INTO `pt_resources` VALUES ('e1cde9b86fea40dea1a97659ce05870b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1182389726', '16304', '9116', '1518', '396', '3625', '13', '2016-09-15 16:34:01');
INSERT INTO `pt_resources` VALUES ('e2a7e609b1ec4680a22385bfc2b4994d', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1119355232', '16304', '10588', '1514', '585', '3625', '13', '2016-09-04 21:47:48');
INSERT INTO `pt_resources` VALUES ('e2bf81ed6c8046b38a0987b3f593e002', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0866612616', '16304', '10823', '1508', '666', '3625', '13', '2016-09-10 10:33:33');
INSERT INTO `pt_resources` VALUES ('e2c6d2d51a9c41ac9ae18d78b0f3319b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0898834404', '16304', '8857', '1490', '844', '3625', '13', '2016-09-11 19:02:19');
INSERT INTO `pt_resources` VALUES ('e30a4fcd7dcb44b5a3ba9970f46605e4', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0753949337', '16304', '11177', '1434', '1189', '3625', '13', '2016-09-05 20:38:36');
INSERT INTO `pt_resources` VALUES ('e33a64905dae492db5ff000891ff9f29', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0596001960', '16304', '11115', '1434', '1072', '3625', '13', '2016-09-05 21:04:01');
INSERT INTO `pt_resources` VALUES ('e3b016b4febe41a6a0e6a9db1b7937c4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1088528923', '16304', '9130', '1518', '350', '3625', '13', '2016-09-15 16:46:01');
INSERT INTO `pt_resources` VALUES ('e3fadb97ffbd410a8b5bcaa8cedc9043', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1141981996', '16304', '10342', '1505', '975', '3625', '13', '2016-09-11 21:36:13');
INSERT INTO `pt_resources` VALUES ('e41f3c0788154123b902a149bd6887de', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10782', '1137', '375', '3625', '12', '2016-09-08 20:17:39');
INSERT INTO `pt_resources` VALUES ('e47fc82be2d341f78df672fe25b5820a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1142760836', '16304', '9201', '1497', '668', '3625', '13', '2016-09-15 11:48:56');
INSERT INTO `pt_resources` VALUES ('e50b192ba5ee4baa87eddc178f377df0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2565505112', '16304', '9213', '1491', '940', '3625', '13', '2016-09-11 17:52:10');
INSERT INTO `pt_resources` VALUES ('e559710377674b8ba1ce5afc6a912eb5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2564780577', '16304', '10062', '1495', '642', '3625', '13', '2016-09-13 20:34:56');
INSERT INTO `pt_resources` VALUES ('e57d4a0b954e4153b8e5bc44bd057454', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0770347156', '16304', '10413', '1505', '1050', '3625', '13', '2016-09-11 21:16:13');
INSERT INTO `pt_resources` VALUES ('e5ba0c163def46878238b95d632bbb94', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1905550007', '16304', '10041', '1487', '758', '3625', '13', '2016-09-16 19:07:28');
INSERT INTO `pt_resources` VALUES ('e5fc5adc66554040bdd638338564d369', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0847857546', '16304', '11542', '1495', '1078', '3625', '13', '2016-09-07 20:33:26');
INSERT INTO `pt_resources` VALUES ('e60e6a3c844540f7aa1b7f72664f8344', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1057218388', '16304', '9249', '1518', '407', '3625', '13', '2016-09-15 16:32:01');
INSERT INTO `pt_resources` VALUES ('e67a6c52de60442fa2ad6a3c1207356f', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1996716040', '16304', '10266', '1495', '672', '3625', '13', '2016-09-13 20:18:56');
INSERT INTO `pt_resources` VALUES ('e688a832165a44448014f8c32852adab', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1407062795', '16304', '10560', '1495', '838', '3625', '13', '2016-09-13 19:40:47');
INSERT INTO `pt_resources` VALUES ('e6a114b9a60f4700aa4a999c6bf069ea', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1346300723', '16304', '9321', '1497', '809', '3625', '13', '2016-09-15 11:10:50');
INSERT INTO `pt_resources` VALUES ('e6db221c046040e4b31046a679feb497', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1211134539', '16304', '9615', '1497', '1083', '3625', '13', '2016-09-14 22:25:38');
INSERT INTO `pt_resources` VALUES ('e7202d682b704fc692da35f8c578deb8', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0619643715', '16304', '10737', '1514', '588', '3625', '13', '2016-09-04 21:43:48');
INSERT INTO `pt_resources` VALUES ('e750351c9d7b4afab2b4074a5eac9d18', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0590831937', '16304', '9776', '1496', '1121', '3625', '13', '2016-09-09 21:47:52');
INSERT INTO `pt_resources` VALUES ('e788152250424722a7f5903d27c59ebc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10836', '1127', '356', '3625', '12', '2016-09-08 20:01:49');
INSERT INTO `pt_resources` VALUES ('e7adb917f8694a76a805a558b5deeaea', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1464108118', '16304', '10114', '1448', '663', '3625', '13', '2016-09-09 22:02:53');
INSERT INTO `pt_resources` VALUES ('e7db3d5b18cc424380cc3cde8cf14414', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0519676196', '16304', '11527', '1495', '929', '3625', '13', '2016-09-07 20:41:26');
INSERT INTO `pt_resources` VALUES ('e8cb68ebf7e04d41b32252e8a9f3033c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1190061416', '16304', '9370', '1487', '1032', '3625', '13', '2016-09-14 22:19:43');
INSERT INTO `pt_resources` VALUES ('e95fbee431b44c469eb7310f8ae8887b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1850607144', '16304', '9998', '1495', '630', '3625', '13', '2016-09-13 20:44:56');
INSERT INTO `pt_resources` VALUES ('e966cbed6c254930a262c39a41f9bdb9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1178367237', '16304', '9216', '1497', '668', '3625', '13', '2016-09-15 11:44:50');
INSERT INTO `pt_resources` VALUES ('e989613b4f444d429fb74465bbce98d2', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0637170626', '16304', '11173', '1434', '1142', '3625', '13', '2016-09-05 20:52:01');
INSERT INTO `pt_resources` VALUES ('e98e4d577042465c9516eddd5657fb7e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1280330547', '16304', '10897', '1508', '700', '3625', '13', '2016-09-10 10:19:33');
INSERT INTO `pt_resources` VALUES ('e9a6dbcc9cf84ebdad594a5be5be6750', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1238949825', '16304', '10256', '1436', '1284', '3625', '13', '2016-09-11 20:10:20');
INSERT INTO `pt_resources` VALUES ('e9dc35f890784175be624ab391163a4c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1845808960', '16304', '10380', '1508', '388', '3625', '13', '2016-09-10 13:04:04');
INSERT INTO `pt_resources` VALUES ('ea2321ba06af43d5a6013becd441d69a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2626367604', '16304', '10914', '1508', '388', '3625', '13', '2016-09-10 12:52:04');
INSERT INTO `pt_resources` VALUES ('eaa9175d33c04643a3fc4143f00a53b4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1081395370', '16304', '10819', '1503', '1069', '3625', '13', '2016-09-08 19:44:42');
INSERT INTO `pt_resources` VALUES ('eac36e7ef2de4033ac3964a4648e4b0c', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0569251718', '16304', '11090', '1434', '1066', '3625', '13', '2016-09-05 21:32:01');
INSERT INTO `pt_resources` VALUES ('eaeffb33891e46a188f78c3d7d3dba99', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0891517426', '16304', '11115', '1508', '562', '3625', '13', '2016-09-10 10:57:33');
INSERT INTO `pt_resources` VALUES ('ebb2251283974ae688a36af1d59f50bf', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0794160064', '16304', '9435', '1494', '1074', '3625', '13', '2016-09-15 14:59:28');
INSERT INTO `pt_resources` VALUES ('ec7464e47c05444f80e67365a8a5d729', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1918347720', '16304', '10148', '1480', '909', '3625', '13', '2016-09-16 18:37:09');
INSERT INTO `pt_resources` VALUES ('ec759f2af9774fde966090892f147c53', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0697567227', '16304', '11414', '1495', '638', '3625', '13', '2016-09-07 21:01:26');
INSERT INTO `pt_resources` VALUES ('ec8f2d81411240c297ebbcf07f423515', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1866207437', '16304', '10194', '1495', '642', '3625', '13', '2016-09-13 20:28:56');
INSERT INTO `pt_resources` VALUES ('ecaa0ba27f4c467eaf6d2d3b35b481fb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1364334509', '16304', '10502', '1496', '854', '3625', '13', '2016-09-08 21:15:39');
INSERT INTO `pt_resources` VALUES ('ed7e0f64d808445a86e01834cb634702', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0810887998', '16304', '10375', '1505', '1016', '3625', '13', '2016-09-11 21:18:13');
INSERT INTO `pt_resources` VALUES ('edb1c472217943ccbf85b8fb2a1fa8b4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '11140', '1143', '407', '3625', '12', '2016-09-12 20:29:09');
INSERT INTO `pt_resources` VALUES ('edf3af7534eb43a29324023a521dec54', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0737607126', '16304', '10427', '1496', '842', '3625', '13', '2016-09-08 21:21:39');
INSERT INTO `pt_resources` VALUES ('ee1c65fc1b124ce4a2712bc9f7a39958', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0758472113', '16304', '10971', '1499', '1053', '3625', '13', '2016-09-06 21:48:51');
INSERT INTO `pt_resources` VALUES ('ef04391b4984486a945f6af2e2c8a7fb', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1956463258', '16304', '9945', '1494', '1018', '3625', '13', '2016-09-10 15:26:51');
INSERT INTO `pt_resources` VALUES ('ef300963e75940659cfb12a1a626220d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1266127799', '16304', '10655', '1508', '478', '3625', '13', '2016-09-10 11:50:04');
INSERT INTO `pt_resources` VALUES ('efa63411326d481abc546efa07f98420', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0988352006', '16304', '9288', '1518', '563', '3625', '13', '2016-09-15 16:24:01');
INSERT INTO `pt_resources` VALUES ('efafa9b6668745eb9ec73513609cf1bc', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2192374061', '16304', '9507', '1132', '304', '3625', '12', '2016-09-14 21:39:43');
INSERT INTO `pt_resources` VALUES ('efb8bff0b64946e59bad14b0e9e1329c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1047578600', '16304', '9102', '1497', '703', '3625', '13', '2016-09-15 11:26:50');
INSERT INTO `pt_resources` VALUES ('efef8a8b84df4c939cd5be24c634650b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0926131754', '16304', '10833', '1508', '433', '3625', '13', '2016-09-10 12:32:04');
INSERT INTO `pt_resources` VALUES ('f0b3686575ef4b8d898fb92a025878f9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1567717265', '16304', '9526', '1497', '931', '3625', '13', '2016-09-15 10:40:47');
INSERT INTO `pt_resources` VALUES ('f0c557c9404c4427b95e5e3ed63c6ffa', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0757921880', '16304', '9272', '1494', '1034', '3625', '13', '2016-09-15 15:13:28');
INSERT INTO `pt_resources` VALUES ('f0e1848776424e6a924f8cc604afa04b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1080062210', '16304', '10485', '1496', '890', '3625', '13', '2016-09-08 20:51:39');
INSERT INTO `pt_resources` VALUES ('f0e2b8bdb9a24f11bcffc0f89490389e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '9989', '1129', '278', '3625', '12', '2016-09-13 20:51:53');
INSERT INTO `pt_resources` VALUES ('f0ea705bfede4488b8b9b0fbecae6590', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10990', '1141', '404', '3625', '12', '2016-09-06 21:40:51');
INSERT INTO `pt_resources` VALUES ('f0ed4654c21946fda7dbdc37c4602af8', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0178965444', '16304', '10845', '1495', '974', '3625', '13', '2016-09-07 21:39:31');
INSERT INTO `pt_resources` VALUES ('f1311dddda5a4b94a972af3535d0db76', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1667360628', '16304', '10014', '1493', '727', '3625', '13', '2016-09-13 21:11:53');
INSERT INTO `pt_resources` VALUES ('f17bdaf01d544077bed4126808cb08ce', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1602229840', '16304', '9964', '1439', '934', '3625', '13', '2016-09-09 21:13:49');
INSERT INTO `pt_resources` VALUES ('f1a6483ac8154375911a005b5d41b426', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1792223093', '16304', '9783', '1508', '266', '3625', '13', '2016-09-10 14:14:04');
INSERT INTO `pt_resources` VALUES ('f1c5a4aea33b4c2f95eff0aa7110d69e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1416408724', '16304', '9711', '1439', '951', '3625', '13', '2016-09-09 21:09:49');
INSERT INTO `pt_resources` VALUES ('f1e1d65d3fec449b8a00dda33c235e3a', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0958028101', '16304', '10744', '1508', '478', '3625', '13', '2016-09-10 11:46:04');
INSERT INTO `pt_resources` VALUES ('f30acf2a369f4af3812ce885818712a7', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1058157396', '16304', '9381', '1504', '748', '3625', '13', '2016-09-14 21:48:15');
INSERT INTO `pt_resources` VALUES ('f36af90312284564afea1c12bda4cde6', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0617224601', '16304', '10511', '1495', '999', '3625', '13', '2016-09-12 20:49:08');
INSERT INTO `pt_resources` VALUES ('f38453fcf7ee4a89a73e1f483eacbc1b', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1446144861', '16304', '9699', '1403', '1127', '3625', '12', '2016-09-14 21:07:49');
INSERT INTO `pt_resources` VALUES ('f3d8912603614aeb803a650c44a49720', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2465954015', '16304', '10025', '1493', '783', '3625', '13', '2016-09-13 20:53:53');
INSERT INTO `pt_resources` VALUES ('f419e22cf5be49508f9d7f55ffd48e68', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1993945212', '16304', '9717', '1508', '208', '3625', '13', '2016-09-10 14:34:04');
INSERT INTO `pt_resources` VALUES ('f4e881b6926b41e984ffec876ccd638b', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0667052171', '16304', '11252', '1493', '1041', '3625', '13', '2016-09-05 20:30:14');
INSERT INTO `pt_resources` VALUES ('f5140526b7744ee088dd5a084492f953', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0963648732', '16304', '9169', '1497', '513', '3625', '13', '2016-09-15 12:10:56');
INSERT INTO `pt_resources` VALUES ('f530f2d0758b4a00b5c0ba0f3adde775', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0717688199', '16304', '10665', '1496', '977', '3625', '13', '2016-09-08 20:27:39');
INSERT INTO `pt_resources` VALUES ('f5ab95c0590449008d869cb14d1dd4f6', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.1050676896', '16304', '11460', '1495', '1157', '3625', '13', '2016-09-07 21:05:16');
INSERT INTO `pt_resources` VALUES ('f6536a37bc434cd5ba12a5f869d24e60', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0918518775', '16304', '9294', '1494', '999', '3625', '13', '2016-09-15 15:23:28');
INSERT INTO `pt_resources` VALUES ('f6567ef9885249558a8a52f4c8b63489', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2014390122', '16304', '9856', '1494', '807', '3625', '13', '2016-09-10 15:56:51');
INSERT INTO `pt_resources` VALUES ('f663f13e6e564421b1ab1248ee97555e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1107655956', '16304', '9533', '1403', '1127', '3625', '12', '2016-09-14 21:15:38');
INSERT INTO `pt_resources` VALUES ('f768866c964a4ad3b6da97e34f4e5982', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1813154896', '16304', '10083', '1448', '721', '3625', '13', '2016-09-09 22:00:53');
INSERT INTO `pt_resources` VALUES ('f7716626af004094b26213b30037ccf9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0742913501', '16304', '10498', '1496', '854', '3625', '13', '2016-09-08 21:11:39');
INSERT INTO `pt_resources` VALUES ('f77306bb7b6a47659616f09df8004b20', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.8146084480', '16304', '9220', '1159', '229', '3625', '12', '2016-09-15 15:57:28');
INSERT INTO `pt_resources` VALUES ('f7beeacf15e5436d94fecc7f496f4a5a', '0', 'Windows 8.1', '127.0.0.1', 'DESKTOP-0FBM4S6', '4', '0.0155045147', '16304', '11165', '1495', '974', '3625', '13', '2016-09-07 21:33:31');
INSERT INTO `pt_resources` VALUES ('f83c2d9a77c4414e99d766f4835b3750', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1885792099', '16304', '10162', '1495', '642', '3625', '13', '2016-09-13 20:30:56');
INSERT INTO `pt_resources` VALUES ('f8c2b0fccc734e309879988710731767', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1061673067', '16304', '10442', '1439', '1041', '3625', '13', '2016-09-09 20:11:49');
INSERT INTO `pt_resources` VALUES ('f923c91e97e743e99d1e96e58b4620db', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1998088825', '16304', '9872', '1508', '357', '3625', '13', '2016-09-10 13:38:04');
INSERT INTO `pt_resources` VALUES ('f978e4a8f4d74bb9ae03094e9934db11', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0886788648', '16304', '11107', '1508', '562', '3625', '13', '2016-09-10 10:55:33');
INSERT INTO `pt_resources` VALUES ('f9e175dd781b4b44ab8a1ceffebcb9e0', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1592547404', '16304', '9606', '1439', '1005', '3625', '13', '2016-09-09 20:49:49');
INSERT INTO `pt_resources` VALUES ('f9ed28d05cf344ef85a6d0d2a0995c77', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '1.0000000000', '16304', '10517', '1147', '344', '3625', '12', '2016-09-11 21:12:14');
INSERT INTO `pt_resources` VALUES ('fa244458ca66458eb174e2453725a1e9', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0875931973', '16304', '9266', '1494', '1035', '3625', '13', '2016-09-15 15:11:28');
INSERT INTO `pt_resources` VALUES ('fa4277ce9bcc4081b3d85238977652af', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0871739231', '16304', '10356', '1500', '841', '3625', '13', '2016-09-08 19:39:48');
INSERT INTO `pt_resources` VALUES ('fb34a3680c63431296b3a918a943063c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.0760889593', '16304', '10563', '1496', '953', '3625', '13', '2016-09-08 20:39:39');
INSERT INTO `pt_resources` VALUES ('fb3f98cb19be42e1b376610dd6ea3dd5', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1360181861', '16304', '10576', '1439', '1048', '3625', '13', '2016-09-09 19:57:49');
INSERT INTO `pt_resources` VALUES ('fb6d27e141404d82bcb7b81adcdcb072', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2265652918', '16304', '10657', '1508', '388', '3625', '13', '2016-09-10 13:00:04');
INSERT INTO `pt_resources` VALUES ('fb7c34c73f5e44a7988172cf18999020', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1248828090', '16304', '9187', '1487', '985', '3625', '13', '2016-09-15 15:50:50');
INSERT INTO `pt_resources` VALUES ('fba2773596c0442c970a3be279db21fd', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1438038063', '16304', '9379', '1496', '886', '3625', '13', '2016-09-15 14:43:14');
INSERT INTO `pt_resources` VALUES ('fbef3dfa324b4ca7acbd2a94556d7b05', '0', 'Windows 8.1', '192.168.1.4', 'DESKTOP-0FBM4S6', '4', '0.0942646079', '16304', '10839', '1434', '1054', '3625', '13', '2016-09-05 21:56:01');
INSERT INTO `pt_resources` VALUES ('fc456b8f99a346a99f8d515bfb26529e', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2016377906', '16304', '8687', '1508', '357', '3625', '13', '2016-09-10 13:24:04');
INSERT INTO `pt_resources` VALUES ('fcc2c7873b97401db32e3d135fd2af0d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.2097430497', '16304', '9931', '1494', '965', '3625', '13', '2016-09-10 15:34:51');
INSERT INTO `pt_resources` VALUES ('fd117ce7bd0246f99cb4718cbfe2a28c', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1151771524', '16304', '10445', '1439', '1041', '3625', '13', '2016-09-09 20:13:49');
INSERT INTO `pt_resources` VALUES ('fe37f29caa5046568040855bce8ad7a2', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1348316657', '16304', '10475', '1495', '999', '3625', '13', '2016-09-12 20:53:08');
INSERT INTO `pt_resources` VALUES ('fe8f1485c93d417fa56dd8dd6585f1ee', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1484852993', '16304', '9769', '1439', '905', '3625', '13', '2016-09-09 21:21:49');
INSERT INTO `pt_resources` VALUES ('feed25e0a7f5411287adc6f7f1eee7df', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1621682569', '16304', '9458', '1497', '843', '3625', '13', '2016-09-15 11:02:50');
INSERT INTO `pt_resources` VALUES ('ff35a4cb036445aba876428f06c92535', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1379696698', '16304', '10574', '1439', '1011', '3625', '13', '2016-09-09 20:19:49');
INSERT INTO `pt_resources` VALUES ('ff8e977cdf6943ccb3d3c472ddfcf0a4', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1888444473', '16304', '9666', '1410', '932', '3625', '14', '2016-09-10 14:46:04');
INSERT INTO `pt_resources` VALUES ('ffcd44ff70fb4b1fa1db3b23cccd469d', '0', 'Windows 8.1', '192.168.1.3', 'DESKTOP-0FBM4S6', '4', '0.1883499491', '16304', '9872', '1508', '357', '3625', '13', '2016-09-10 13:42:04');

-- ----------------------------
-- Table structure for pt_role
-- ----------------------------
DROP TABLE IF EXISTS `pt_role`;
CREATE TABLE `pt_role` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `numbers` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_role
-- ----------------------------
INSERT INTO `pt_role` VALUES ('2f499b298d42480797319242b53d95a3', '3', '10002', '测试管理员', null);
INSERT INTO `pt_role` VALUES ('52eea5bd9c294b399b11fc0e10354708', '1', 'baseinfo', '0基本功能', null);
INSERT INTO `pt_role` VALUES ('8a40c0353fa828a6013fa898d4ac0023', '2', 'SuperAdmin', '超级管理员', '超级管理员');
INSERT INTO `pt_role` VALUES ('f8d7d8b7d8714a4996a754830ea034f6', '0', 'test', 'test', null);

-- ----------------------------
-- Table structure for pt_roleoperator
-- ----------------------------
DROP TABLE IF EXISTS `pt_roleoperator`;
CREATE TABLE `pt_roleoperator` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '??',
  `roleIds` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '??ids',
  `operatorIds` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '??ids',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='????';

-- ----------------------------
-- Records of pt_roleoperator
-- ----------------------------
INSERT INTO `pt_roleoperator` VALUES ('021a2c6466994f258c57659b45026593', '8a40c0353fa828a6013fa898d4ac0023', '3e4e9e72dab243d38a1785d157c24cb6');
INSERT INTO `pt_roleoperator` VALUES ('03f99ab1f9104620b619fec5eaed0480', '8a40c0353fa828a6013fa898d4ac0023', 'e037e0bae9a94e549d6b647db49a64a1');
INSERT INTO `pt_roleoperator` VALUES ('053476ee46c44552beac3c3ef14fa037', '8a40c0353fa828a6013fa898d4ac0023', '6daed51284f94923b1c8a6414e646959');
INSERT INTO `pt_roleoperator` VALUES ('064f21920eeb481c86ae50879cd09d34', '8a40c0353fa828a6013fa898d4ac0023', 'a0c01a5248cd4bf38e57945dbb2b98c5');
INSERT INTO `pt_roleoperator` VALUES ('07e6c367e68a437e87126b3345b7ff44', '8a40c0353fa828a6013fa898d4ac0023', 'a2727f19f7cd4a038dd1a94f042a8cf1');
INSERT INTO `pt_roleoperator` VALUES ('0814045ac9ec4230a0b391e425a59540', '8a40c0353fa828a6013fa898d4ac0023', '79039a2260da46b0aabb5a62e8db6c87');
INSERT INTO `pt_roleoperator` VALUES ('09c97f5c18ac4b40bfb2d514d69b22b7', '8a40c0353fa828a6013fa898d4ac0023', '7b4281dd247c4624bee0d8f84c2c2715');
INSERT INTO `pt_roleoperator` VALUES ('0a08705ce1dd44c8b64ffb4af78d57d4', '8a40c0353fa828a6013fa898d4ac0023', 'b4ee4ae4391f4243be69e838545d2131');
INSERT INTO `pt_roleoperator` VALUES ('0a1c22befe984c6cbbb49ca98c85ca08', '8a40c0353fa828a6013fa898d4ac0023', '483bdacba04f4663986e6339166e8321');
INSERT INTO `pt_roleoperator` VALUES ('0bdcecb579304334a80dd169197bc7f1', '8a40c0353fa828a6013fa898d4ac0023', '827a7067a28d442da3ddd834677127af');
INSERT INTO `pt_roleoperator` VALUES ('0cfbb583544d43c7aca70f991ad0f746', '8a40c0353fa828a6013fa898d4ac0023', '7eab5f800bab4efb8df1b2e8a0575f73');
INSERT INTO `pt_roleoperator` VALUES ('0d57b3a3c5264e1e997b18183074d535', '8a40c0353fa828a6013fa898d4ac0023', 'a6623c65480f4f2cb63a4d7673f81e3a');
INSERT INTO `pt_roleoperator` VALUES ('0d602f93e37342d6a6f3849b2a2a8b07', '52eea5bd9c294b399b11fc0e10354708', '483bdacba04f4663986e6339166e8321');
INSERT INTO `pt_roleoperator` VALUES ('0dfd8909022e48caa30a3bb9f7e48f1e', '8a40c0353fa828a6013fa898d4ac0023', '12141c1c3be241ca8a868bce9cd610d5');
INSERT INTO `pt_roleoperator` VALUES ('0f58a58a34984332af791d1767b7ab0a', '8a40c0353fa828a6013fa898d4ac0023', '8ca8af501522439d8c9249e00db5d78d');
INSERT INTO `pt_roleoperator` VALUES ('0f9c37f0970d4f3981ddbef662f0f861', '8a40c0353fa828a6013fa898d4ac0023', '1b1a809815574b2a9c1d0e18d692de17');
INSERT INTO `pt_roleoperator` VALUES ('104c83c40cd841c9a5ae20b381e69539', '52eea5bd9c294b399b11fc0e10354708', 'f771691134c34174a819b5990310d000');
INSERT INTO `pt_roleoperator` VALUES ('121ba805f7514e64bb415ffc9bf61180', '8a40c0353fa828a6013fa898d4ac0023', '5c2bdc059ae24ffda2758a2781bb46da');
INSERT INTO `pt_roleoperator` VALUES ('12a9ee5e7eca44c5ba6e79dedfbc4049', '8a40c0353fa828a6013fa898d4ac0023', '2c2063e17dc742a3b9c330b84c5dfa6a');
INSERT INTO `pt_roleoperator` VALUES ('12deedf9b9c14eb4936b27bcbdd1ccc8', 'f8d7d8b7d8714a4996a754830ea034f6', 'f771691134c34174a819b5990310d000');
INSERT INTO `pt_roleoperator` VALUES ('1322a73d36824bf9bcde729eba789e84', '8a40c0353fa828a6013fa898d4ac0023', '7ae62737df444d619f8fd376360d160c');
INSERT INTO `pt_roleoperator` VALUES ('139064e3c70c4e00babba49593146b1a', '8a40c0353fa828a6013fa898d4ac0023', '1b0d7476974e4bf9b52f75fb82f87330');
INSERT INTO `pt_roleoperator` VALUES ('16e9ecd28cc842048a16f8304f3fd571', '8a40c0353fa828a6013fa898d4ac0023', '18f50e0f48ef4dd9bec85f5612ab10c0');
INSERT INTO `pt_roleoperator` VALUES ('191e5ddc70ea4705adedfc163652bd4d', 'f8d7d8b7d8714a4996a754830ea034f6', 'aa126932641f4e068ed8278a332de85d');
INSERT INTO `pt_roleoperator` VALUES ('1c0a07d688d147889010c611f1737102', '52eea5bd9c294b399b11fc0e10354708', 'fb6a0c1e618041bcbbf8cfd41311b1fa');
INSERT INTO `pt_roleoperator` VALUES ('1c26cfb2d7d94ad38ce0c553644f9ddd', '8a40c0353fa828a6013fa898d4ac0023', '091855dd809b418fae88a7fec6d9f246');
INSERT INTO `pt_roleoperator` VALUES ('1c4ad99847a8408184c5de1037d4f282', 'f8d7d8b7d8714a4996a754830ea034f6', '39d82b5574b540b88d3723b36eb3e577');
INSERT INTO `pt_roleoperator` VALUES ('1cd441db6daf407492d9b32a597232b1', '8a40c0353fa828a6013fa898d4ac0023', '08a96d5dd37f49459eeb02eebeb0a78c');
INSERT INTO `pt_roleoperator` VALUES ('1d18394cb6ed4f71b60c2eb3f8b511d9', '8a40c0353fa828a6013fa898d4ac0023', '8897dbe85b3e4e6989d662495272cf26');
INSERT INTO `pt_roleoperator` VALUES ('1dc4f00bd5d14983a11739ed8261011a', 'f8d7d8b7d8714a4996a754830ea034f6', '4bebccaa8f0c4bfbaa2ff89f00706100');
INSERT INTO `pt_roleoperator` VALUES ('1f5bd29eabd84310b935ac26e4865aa8', '8a40c0353fa828a6013fa898d4ac0023', '1f05b6496a494f488e4cacd2a449c37a');
INSERT INTO `pt_roleoperator` VALUES ('20d039c9d09d427e802607a4d026300b', '8a40c0353fa828a6013fa898d4ac0023', '3da96263a14343eaa7b409a93ec9e1db');
INSERT INTO `pt_roleoperator` VALUES ('22eb103099d2495f98d1bc4dc449933a', '8a40c0353fa828a6013fa898d4ac0023', 'f604f021cba44b6fb96115265e557521');
INSERT INTO `pt_roleoperator` VALUES ('2336da1b46bb47629cd265869b3f7308', '8a40c0353fa828a6013fa898d4ac0023', '0da15c49299d41a4b720f787d053e3cb');
INSERT INTO `pt_roleoperator` VALUES ('260a75c9b59644eeb72a3fd8966cf5c9', '8a40c0353fa828a6013fa898d4ac0023', 'cc88acee3a664c58861a872c351385e6');
INSERT INTO `pt_roleoperator` VALUES ('26d880cfc63f48b5ad42fc170d69693e', '8a40c0353fa828a6013fa898d4ac0023', 'b8218945b8e743f29651569950014511');
INSERT INTO `pt_roleoperator` VALUES ('270b8001fbda4a1f8a141d89267f7e43', 'f8d7d8b7d8714a4996a754830ea034f6', 'a2727f19f7cd4a038dd1a94f042a8cf1');
INSERT INTO `pt_roleoperator` VALUES ('27274973f3e54783ae986912b84d91bc', '8a40c0353fa828a6013fa898d4ac0023', '6569e0d9f2cd4e3a97af4e1b0cd8d2f7');
INSERT INTO `pt_roleoperator` VALUES ('2897ed0986344de0a790c1c315381a43', '8a40c0353fa828a6013fa898d4ac0023', '4a6544ae7a2548ad81c0e3994999023c');
INSERT INTO `pt_roleoperator` VALUES ('29fe78376f464adca46b57fae1c18a50', '52eea5bd9c294b399b11fc0e10354708', 'e4f182b4009e48a58673134324b2ec56');
INSERT INTO `pt_roleoperator` VALUES ('2b0fc857882b4fd0a068d8ddaf514eab', '8a40c0353fa828a6013fa898d4ac0023', '053d330462e1459ca1012c9d29113bc4');
INSERT INTO `pt_roleoperator` VALUES ('2bb5d582cc734e0188de5a363cd60e44', '52eea5bd9c294b399b11fc0e10354708', '7ed5eefbbf3d4aa78d0c5b99f3b7010c');
INSERT INTO `pt_roleoperator` VALUES ('2bc4654b3cc74eccad6ff320ede62385', '8a40c0353fa828a6013fa898d4ac0023', 'cc6bcbee40ab43b2bd5aff6d9385e1fc');
INSERT INTO `pt_roleoperator` VALUES ('2c2d096b627e4d3681f494e4ef38e6f0', '8a40c0353fa828a6013fa898d4ac0023', 'b13b002e2fad4e95bbe0e4dbc9fbdfe1');
INSERT INTO `pt_roleoperator` VALUES ('2c4b1fd860a4423a8590460f0b438ce0', '8a40c0353fa828a6013fa898d4ac0023', '9adcc4c40e3148988e5003aaedbb4948');
INSERT INTO `pt_roleoperator` VALUES ('2cbe2ac6fb8949e7be60da86395c5c88', '8a40c0353fa828a6013fa898d4ac0023', 'd5c8bdf7a49a4e46b776c05dc9ead484');
INSERT INTO `pt_roleoperator` VALUES ('2cf46bc8a8a441968bedd295887f4ba7', '52eea5bd9c294b399b11fc0e10354708', '5b47ae382f42421682852f889c176d49');
INSERT INTO `pt_roleoperator` VALUES ('2e1c21e46cd24d828de30f883f131f26', '8a40c0353fa828a6013fa898d4ac0023', 'fdaeeb41691d460b8f142066d1f79927');
INSERT INTO `pt_roleoperator` VALUES ('308307140623475bbbd3812288c68a4b', '8a40c0353fa828a6013fa898d4ac0023', '01aa0c85c8b84ae8aca7f5484336b203');
INSERT INTO `pt_roleoperator` VALUES ('32042be89a574cefaa2697f2d7fee41a', '8a40c0353fa828a6013fa898d4ac0023', '9750ea3ee4474711b9acbda8d5b87ee7');
INSERT INTO `pt_roleoperator` VALUES ('3601e3cd19e842f4bbf2d438857a7c68', '8a40c0353fa828a6013fa898d4ac0023', '29c18b3394924c30882da049da14ad99');
INSERT INTO `pt_roleoperator` VALUES ('382c564f5d6e4d11b17b2b729c8d30d0', '8a40c0353fa828a6013fa898d4ac0023', '3ee5f986289d4a1990f4e42c9a0caadb');
INSERT INTO `pt_roleoperator` VALUES ('38829184b84a44eeb82e00a8db46d3a2', '8a40c0353fa828a6013fa898d4ac0023', '4df80521e66447618796c3cfe02bf239');
INSERT INTO `pt_roleoperator` VALUES ('3bd650048f764fbf93a427c31a27274c', '8a40c0353fa828a6013fa898d4ac0023', '8bd9c0e14df941cdaf6253cd08dbd9cd');
INSERT INTO `pt_roleoperator` VALUES ('3c6b00c1db03430cb7e78880e4f283ec', '8a40c0353fa828a6013fa898d4ac0023', 'ad09a1b897744812875c752c2d70f11a');
INSERT INTO `pt_roleoperator` VALUES ('3d6a531acb2a4b199be1bd541f85caf4', '8a40c0353fa828a6013fa898d4ac0023', '5b47ae382f42421682852f889c176d49');
INSERT INTO `pt_roleoperator` VALUES ('3dd9e64684a14550b03d969ba02a070c', 'f8d7d8b7d8714a4996a754830ea034f6', 'ff91363b32424fa399e44cc0dfd688e9');
INSERT INTO `pt_roleoperator` VALUES ('3f60245dacb14844a6968a2884edaf07', '8a40c0353fa828a6013fa898d4ac0023', 'e2cead0f68ac4a2d98765264578a9f83');
INSERT INTO `pt_roleoperator` VALUES ('40707f58daee4d81b19b214c52eeb6a7', '8a40c0353fa828a6013fa898d4ac0023', 'c29ea4cbd9044bc786e9f4584ad840ff');
INSERT INTO `pt_roleoperator` VALUES ('41a43064ffa240ee9e9c84dff0d9e371', '8a40c0353fa828a6013fa898d4ac0023', 'e1ac811d2a16495d927f994dd006e824');
INSERT INTO `pt_roleoperator` VALUES ('41ed858aaaae4fc2bc1f197fe295af52', '8a40c0353fa828a6013fa898d4ac0023', 'e4f182b4009e48a58673134324b2ec56');
INSERT INTO `pt_roleoperator` VALUES ('42fbd1334a0849f6a06db739c11280f1', '8a40c0353fa828a6013fa898d4ac0023', 'f771691134c34174a819b5990310d000');
INSERT INTO `pt_roleoperator` VALUES ('43666165e4dd4cf3901e690613e47a66', '8a40c0353fa828a6013fa898d4ac0023', '46b7269a26044dfebb4edd06a2f9cd83');
INSERT INTO `pt_roleoperator` VALUES ('461c341a4da84a828fd720559c8116a4', '8a40c0353fa828a6013fa898d4ac0023', '09b6ce29313c4051ba765de516a9b283');
INSERT INTO `pt_roleoperator` VALUES ('46b9e0e47ad347dcb53e123c466db2a4', '8a40c0353fa828a6013fa898d4ac0023', 'b82d86fb7b64498a9c2b8b9a99b3fbeb');
INSERT INTO `pt_roleoperator` VALUES ('46f79be38d3340a0a752ef2f53ae661a', '8a40c0353fa828a6013fa898d4ac0023', '91baed789bc14efdbebb10b49c69ee5b');
INSERT INTO `pt_roleoperator` VALUES ('48db3f1015414972b274fcee382b5283', '8a40c0353fa828a6013fa898d4ac0023', '7ed5eefbbf3d4aa78d0c5b99f3b7010c');
INSERT INTO `pt_roleoperator` VALUES ('4ce7264311a3437db22445df4b643066', '8a40c0353fa828a6013fa898d4ac0023', '30bf01ffe1cb4ed39e92c6600ea39e93');
INSERT INTO `pt_roleoperator` VALUES ('4ddf4f2e1b9b495ebadeaef3029fd410', '8a40c0353fa828a6013fa898d4ac0023', '235d855d7b914d728e434f0f309aa04d');
INSERT INTO `pt_roleoperator` VALUES ('4eae708ad5974a57b0accc638eadac99', '8a40c0353fa828a6013fa898d4ac0023', 'fb6a0c1e618041bcbbf8cfd41311b1fa');
INSERT INTO `pt_roleoperator` VALUES ('535104b0d1d841eda391e58f2427fccc', '8a40c0353fa828a6013fa898d4ac0023', '4bebccaa8f0c4bfbaa2ff89f00706100');
INSERT INTO `pt_roleoperator` VALUES ('5459dad86a584a598ad51c10fcee1f7c', '8a40c0353fa828a6013fa898d4ac0023', '671ce1e6167840baaa6d27f4f04574c9');
INSERT INTO `pt_roleoperator` VALUES ('548a17045033478bbd54bff4522e406f', 'f8d7d8b7d8714a4996a754830ea034f6', 'fb6a0c1e618041bcbbf8cfd41311b1fa');
INSERT INTO `pt_roleoperator` VALUES ('574921333dd64e4b8e4956436a698ec5', '8a40c0353fa828a6013fa898d4ac0023', '3085a3b0c20d4f3aaa7c2d27fe986aba');
INSERT INTO `pt_roleoperator` VALUES ('598267639b534e7ca95a8248b7e1250a', '8a40c0353fa828a6013fa898d4ac0023', 'c7132250f5054b808bb119122a6ecb52');
INSERT INTO `pt_roleoperator` VALUES ('5d0a48f1e78844cb9ed82c71b720f961', '8a40c0353fa828a6013fa898d4ac0023', 'aa126932641f4e068ed8278a332de85d');
INSERT INTO `pt_roleoperator` VALUES ('5fcb0597c6494021b0cb167161227d75', '8a40c0353fa828a6013fa898d4ac0023', '4376888fd74f4247a926529e5da03442');
INSERT INTO `pt_roleoperator` VALUES ('612117075c2d47c09df60c7ec316a466', '8a40c0353fa828a6013fa898d4ac0023', '437e05d09dd94720b67c4f230cdebe58');
INSERT INTO `pt_roleoperator` VALUES ('623d81207a5142638a8ba821dff1dbc3', '8a40c0353fa828a6013fa898d4ac0023', 'da6077ec1f354a409d0385b2c063e044');
INSERT INTO `pt_roleoperator` VALUES ('65bfac49893b406db04811795ff89f50', '8a40c0353fa828a6013fa898d4ac0023', 'a5289b2638d845fbb06dedbcdd517f97');
INSERT INTO `pt_roleoperator` VALUES ('65ee6094c4254096ab682c2699045fbe', '8a40c0353fa828a6013fa898d4ac0023', '37218fb52ec94fb4bf76209a17916094');
INSERT INTO `pt_roleoperator` VALUES ('6678e6fe003f43cc974fe6843da8688f', '8a40c0353fa828a6013fa898d4ac0023', '21b0a910ef6e4c60a325d5e57e6e6f65');
INSERT INTO `pt_roleoperator` VALUES ('6779f7b61b354ff88f4b72d6bab43c60', '8a40c0353fa828a6013fa898d4ac0023', '22926eb196a14b48be775f4880b5ba94');
INSERT INTO `pt_roleoperator` VALUES ('68f734adaa204ed9b21c2dd6c2832a6f', 'f8d7d8b7d8714a4996a754830ea034f6', '483bdacba04f4663986e6339166e8321');
INSERT INTO `pt_roleoperator` VALUES ('6b79fc49b2ed47e788c17fe41f217881', '8a40c0353fa828a6013fa898d4ac0023', 'ccf9b69e151840a28be75d8443b70273');
INSERT INTO `pt_roleoperator` VALUES ('6beeb6d1ee5544d49d03bfec34ceb56a', '8a40c0353fa828a6013fa898d4ac0023', 'f82c021dc443419fb2469032af73bf3e');
INSERT INTO `pt_roleoperator` VALUES ('6bf45b956cae4a1abed8865aa135fb6f', '8a40c0353fa828a6013fa898d4ac0023', '15566e63f3104c73b4a0b4a784dd11ca');
INSERT INTO `pt_roleoperator` VALUES ('6e3f829795a843b3b6f1044d7d19fbdb', '8a40c0353fa828a6013fa898d4ac0023', '233356b63d8e477fb6e948b703232809');
INSERT INTO `pt_roleoperator` VALUES ('71b8572ae55c41c4ba79151001166116', '8a40c0353fa828a6013fa898d4ac0023', '5b249ad344d948b99f58768c323f5f71');
INSERT INTO `pt_roleoperator` VALUES ('71d7a275c84044e9b5cc1562f4bf3396', '8a40c0353fa828a6013fa898d4ac0023', '6324ff9e83654aa0bf7f9d918b636b55');
INSERT INTO `pt_roleoperator` VALUES ('71eebd3168454ea0951e7182cf00e3c9', '8a40c0353fa828a6013fa898d4ac0023', '90c3cee940ea4211a714f5111d24ff5d');
INSERT INTO `pt_roleoperator` VALUES ('72af3a033d5348108011cbcb6004ed84', 'f8d7d8b7d8714a4996a754830ea034f6', '886bd497064b4c9f87d8461ebba421d1');
INSERT INTO `pt_roleoperator` VALUES ('74fc815a31774b3ead985924cc358fb1', '52eea5bd9c294b399b11fc0e10354708', '886bd497064b4c9f87d8461ebba421d1');
INSERT INTO `pt_roleoperator` VALUES ('7611c160125a4b92ba67a6e924597ddb', '8a40c0353fa828a6013fa898d4ac0023', '1046389d8525451697f2793185e7d6ee');
INSERT INTO `pt_roleoperator` VALUES ('765fa3a4ebfa4e01af4720a2d89618fe', 'f8d7d8b7d8714a4996a754830ea034f6', 'fdaeeb41691d460b8f142066d1f79927');
INSERT INTO `pt_roleoperator` VALUES ('76e452d549b341b88fd8d5d51844d4f1', '8a40c0353fa828a6013fa898d4ac0023', '5fcac107c80d493d91b53a815d4b297a');
INSERT INTO `pt_roleoperator` VALUES ('7a42d1b5ab884d7098f913c16bcc7b48', '8a40c0353fa828a6013fa898d4ac0023', 'c081c50918f4459f8e36ab8cb4151a61');
INSERT INTO `pt_roleoperator` VALUES ('7ab325e26a0642cc85478377bee8d249', 'f8d7d8b7d8714a4996a754830ea034f6', '3e4e9e72dab243d38a1785d157c24cb6');
INSERT INTO `pt_roleoperator` VALUES ('7b5c188e225d4fb9982e8973c1a49e90', '8a40c0353fa828a6013fa898d4ac0023', '39d82b5574b540b88d3723b36eb3e577');
INSERT INTO `pt_roleoperator` VALUES ('814f34aa1cde4a6a9c37e5966ed4ed5b', '8a40c0353fa828a6013fa898d4ac0023', '58a85040aa9f40cca0bdba6e23e30363');
INSERT INTO `pt_roleoperator` VALUES ('81b4dfa9ce5a4bc09e77e361b3bd5e6d', '8a40c0353fa828a6013fa898d4ac0023', '335d1f8f46eb47a18001889f8cc21348');
INSERT INTO `pt_roleoperator` VALUES ('8376bb4d06cf423893c4ce46c62885f5', '52eea5bd9c294b399b11fc0e10354708', 'aa126932641f4e068ed8278a332de85d');
INSERT INTO `pt_roleoperator` VALUES ('848474d1de20428ca6749f49b3e260da', '8a40c0353fa828a6013fa898d4ac0023', 'd496b161d2564111992687b948862244');
INSERT INTO `pt_roleoperator` VALUES ('85da45980b4247f0abc6e09ffafd7f8f', '8a40c0353fa828a6013fa898d4ac0023', '2fee901117c64e18873f60e8f800713d');
INSERT INTO `pt_roleoperator` VALUES ('8718e76a4ed14c609501acf0efe44c61', '8a40c0353fa828a6013fa898d4ac0023', '2be34991827e4e8da8e92f9b9e8bce25');
INSERT INTO `pt_roleoperator` VALUES ('87e0d85628b24118b9506babc049e6e7', '8a40c0353fa828a6013fa898d4ac0023', '88298fbd650d49f492e268816feffd15');
INSERT INTO `pt_roleoperator` VALUES ('8966182c311a4cd4b8c43de006db80a8', '52eea5bd9c294b399b11fc0e10354708', '88298fbd650d49f492e268816feffd15');
INSERT INTO `pt_roleoperator` VALUES ('8be5e404ae3149eb87eb0d3e32c178be', '8a40c0353fa828a6013fa898d4ac0023', 'c9d013d14cbd4f148fb4562c91803ee8');
INSERT INTO `pt_roleoperator` VALUES ('8d6b0c75af9340afaf812bdc9b737df7', '8a40c0353fa828a6013fa898d4ac0023', 'b8339f29d8d84a4ead6454295f87b79c');
INSERT INTO `pt_roleoperator` VALUES ('905956517a0f48a59c7481507c3dc2c4', '8a40c0353fa828a6013fa898d4ac0023', '4e03be6af2c74dae99a131a1ab3569f6');
INSERT INTO `pt_roleoperator` VALUES ('93192c14c94c4aab86520e29bc8cf3a8', '8a40c0353fa828a6013fa898d4ac0023', '351851fb7fce48f9a0ff6747971715ac');
INSERT INTO `pt_roleoperator` VALUES ('942227d7d02342d9a3d4d0cedc272a88', '8a40c0353fa828a6013fa898d4ac0023', '886bd497064b4c9f87d8461ebba421d1');
INSERT INTO `pt_roleoperator` VALUES ('9866b8edb574439a96828a2a9c1e1098', 'f8d7d8b7d8714a4996a754830ea034f6', '7ed5eefbbf3d4aa78d0c5b99f3b7010c');
INSERT INTO `pt_roleoperator` VALUES ('98ea132c9f3c41f7a14e75a54b25cb4b', '8a40c0353fa828a6013fa898d4ac0023', 'cf26c1d2baa24a8791b3d264154b80d4');
INSERT INTO `pt_roleoperator` VALUES ('9bb5bde523264234b36f6a6f1790b097', '8a40c0353fa828a6013fa898d4ac0023', 'fb487ba403254ce8843b39a768422f04');
INSERT INTO `pt_roleoperator` VALUES ('9f84e5533e804e709c2f63eb2e958729', '8a40c0353fa828a6013fa898d4ac0023', 'a1ff68acf9b24c34b347ff21e333cb70');
INSERT INTO `pt_roleoperator` VALUES ('a11a562993784cabb5ae5d9ce3bda6cd', '8a40c0353fa828a6013fa898d4ac0023', '2bd0e8f116f9420692a81d1723cecf5c');
INSERT INTO `pt_roleoperator` VALUES ('a303d192041f40468970a75118d2b3e6', '8a40c0353fa828a6013fa898d4ac0023', 'a0d2897ee9194378819e78538189faa0');
INSERT INTO `pt_roleoperator` VALUES ('a3a679f9187d4bd8819c77e67dfae367', '8a40c0353fa828a6013fa898d4ac0023', '4959d88b8ca64eb19310c30799faa07c');
INSERT INTO `pt_roleoperator` VALUES ('a77dc935e8c0491e9c272bcfd67fa7c1', '8a40c0353fa828a6013fa898d4ac0023', '2fbbc9cfb0bf4b5bb504ead155c3423c');
INSERT INTO `pt_roleoperator` VALUES ('a851dde123ab4697b74225e8725f4633', '8a40c0353fa828a6013fa898d4ac0023', 'ad51a6ca95c646ce9c03778eda715734');
INSERT INTO `pt_roleoperator` VALUES ('ac26282436074fad81655fd5d639454f', '8a40c0353fa828a6013fa898d4ac0023', 'd646da8707ae41838fd2ec9bf0d467ee');
INSERT INTO `pt_roleoperator` VALUES ('ac2b6a038db74fe39664222aae93d1ff', '8a40c0353fa828a6013fa898d4ac0023', '32a3e59964204a3c8848e84b864306ae');
INSERT INTO `pt_roleoperator` VALUES ('ac4a6c8005de4afca3aa04f82b0f64d1', '8a40c0353fa828a6013fa898d4ac0023', 'ee27f5c23b6d4217b3b66295a3506a40');
INSERT INTO `pt_roleoperator` VALUES ('ac74144a8d7d4d5790073c0387d7a20c', '8a40c0353fa828a6013fa898d4ac0023', 'c04adcd019e04cf3ba7c66af721a18dc');
INSERT INTO `pt_roleoperator` VALUES ('aee1eb6feb4943798513c1770a41e9ae', '8a40c0353fa828a6013fa898d4ac0023', 'acbceb432b5849aca9e9b284240281ec');
INSERT INTO `pt_roleoperator` VALUES ('af8082370c8b4d9ab515612c6d267648', 'f8d7d8b7d8714a4996a754830ea034f6', '88298fbd650d49f492e268816feffd15');
INSERT INTO `pt_roleoperator` VALUES ('b0bfdc9cfedf407cabd2964630c4262e', '8a40c0353fa828a6013fa898d4ac0023', 'f771691134c34174a819b5990310da56');
INSERT INTO `pt_roleoperator` VALUES ('b1eb78ff76de482bb88e0fb8acca7d5a', '8a40c0353fa828a6013fa898d4ac0023', '78c6026c6af44b41a6bef4cdb4cfb414');
INSERT INTO `pt_roleoperator` VALUES ('b5bb8efe0adc4a62a606d768c61e10e8', '8a40c0353fa828a6013fa898d4ac0023', '6566adb7fc6347e7b01a3c47129b5eb5');
INSERT INTO `pt_roleoperator` VALUES ('b8481bf5a29e41d8994b11542bae9a46', '8a40c0353fa828a6013fa898d4ac0023', '721f7255449c445faf36607c254eea06');
INSERT INTO `pt_roleoperator` VALUES ('b91ff9778e70437da2c875f433fb9cf7', '8a40c0353fa828a6013fa898d4ac0023', 'f1f6f2c8f026498c8ee64b7a918d06df');
INSERT INTO `pt_roleoperator` VALUES ('b9370c02cc8248f2aa415e0f5c2b083c', '8a40c0353fa828a6013fa898d4ac0023', 'bc2c865be6af42cf861294d446fb1c6f');
INSERT INTO `pt_roleoperator` VALUES ('bad4d6efde78433fb511e6046164d9d8', 'f8d7d8b7d8714a4996a754830ea034f6', '46b7269a26044dfebb4edd06a2f9cd83');
INSERT INTO `pt_roleoperator` VALUES ('c0a5951482284b10ba6d7c7e0c5131fc', '8a40c0353fa828a6013fa898d4ac0023', '8b1c1c86385642f2b6c97930b44bbbcf');
INSERT INTO `pt_roleoperator` VALUES ('c1fc45f6962f454684badf5383edbf17', '52eea5bd9c294b399b11fc0e10354708', 'f771691134c34174a819b5990310da56');
INSERT INTO `pt_roleoperator` VALUES ('c433c6229611482f812595ed46c8c87b', '8a40c0353fa828a6013fa898d4ac0023', 'd479dbdc901f4d85a207b9bace6465ac');
INSERT INTO `pt_roleoperator` VALUES ('c8193e0665dc466f81c1785cf9a06eb5', '8a40c0353fa828a6013fa898d4ac0023', 'e754dfdb794d4e7db6023c9b089a340c');
INSERT INTO `pt_roleoperator` VALUES ('c900515760bd4546b0f2bfaf247e901b', 'f8d7d8b7d8714a4996a754830ea034f6', '5b47ae382f42421682852f889c176d49');
INSERT INTO `pt_roleoperator` VALUES ('c9f24b55cf28484db39e137ea4fa35df', '8a40c0353fa828a6013fa898d4ac0023', 'df0aa534655242e4a0bcd638b51a4e03');
INSERT INTO `pt_roleoperator` VALUES ('cb88488a98ad4f17b2b0c23f3d386344', '8a40c0353fa828a6013fa898d4ac0023', 'c05642442e0a468ebe4f0b7771a803ae');
INSERT INTO `pt_roleoperator` VALUES ('cbd5349f6175452fba4aae0b628e9cce', '8a40c0353fa828a6013fa898d4ac0023', '61da3d9c60704621aa60d1da4553a264');
INSERT INTO `pt_roleoperator` VALUES ('cede53073ad749bc9bb4621249c92852', '8a40c0353fa828a6013fa898d4ac0023', '8f79857b31d4475a94c712e997e89c99');
INSERT INTO `pt_roleoperator` VALUES ('cf3aad7637674a65b788a22c5b30e673', 'f8d7d8b7d8714a4996a754830ea034f6', '3085a3b0c20d4f3aaa7c2d27fe986aba');
INSERT INTO `pt_roleoperator` VALUES ('d233b60121504d9ca79138c0778fdd8a', '8a40c0353fa828a6013fa898d4ac0023', '9a708f39e123455e84b6125774bab1ea');
INSERT INTO `pt_roleoperator` VALUES ('d4c6a7deed2847e8bad34b69a559a53e', '8a40c0353fa828a6013fa898d4ac0023', '0478826a46df4f20b12f4043a97f8209');
INSERT INTO `pt_roleoperator` VALUES ('d4f1296a506e48c39291e2b55a5deb33', '8a40c0353fa828a6013fa898d4ac0023', '2e32e08e495b4ccea6148774e9f91182');
INSERT INTO `pt_roleoperator` VALUES ('db0dcaa30f7948c59d857da13eb368ef', '8a40c0353fa828a6013fa898d4ac0023', '1a8b4d8e4411412fa8bb561393563a85');
INSERT INTO `pt_roleoperator` VALUES ('dc7210d217c54f09ac800e47b2cabf69', '8a40c0353fa828a6013fa898d4ac0023', 'ff91363b32424fa399e44cc0dfd688e9');
INSERT INTO `pt_roleoperator` VALUES ('dcaaf233f3344fa183ea6fcf4838107f', '8a40c0353fa828a6013fa898d4ac0023', 'c0ccfcd127c347a8b9db140e5aa62188');
INSERT INTO `pt_roleoperator` VALUES ('dd46b92bb26f4bc1b474c157d60245f8', '8a40c0353fa828a6013fa898d4ac0023', '362cf247241c4d12b6242301e4a73516');
INSERT INTO `pt_roleoperator` VALUES ('df4ce9dce40941e6b97ac7ef6caa0878', '8a40c0353fa828a6013fa898d4ac0023', 'dc750e57b54f4baca78d66969321ee51');
INSERT INTO `pt_roleoperator` VALUES ('df5eca83889a4057b2a1581bcfc84c52', '8a40c0353fa828a6013fa898d4ac0023', '48db51f20b504c4ab489b1dcfd3ecbd9');
INSERT INTO `pt_roleoperator` VALUES ('e00da5f72a8545e58f41723e4aaf9815', '8a40c0353fa828a6013fa898d4ac0023', '10499bc7f9cb4adf99beba00343b4ea6');
INSERT INTO `pt_roleoperator` VALUES ('e060f34c9f1744d1aeb1e01a920158ba', '8a40c0353fa828a6013fa898d4ac0023', '21141da4febe4c929abe37126b37fd12');
INSERT INTO `pt_roleoperator` VALUES ('e32d74ddaae549cc830a6f030a4508c6', '8a40c0353fa828a6013fa898d4ac0023', '46e00ef0fd234e9dbf68ed9bbb437d0f');
INSERT INTO `pt_roleoperator` VALUES ('e3e0093504904769a12d7814a90ecc5e', '8a40c0353fa828a6013fa898d4ac0023', '9f75b47bdc0249e2b493c47384785a72');
INSERT INTO `pt_roleoperator` VALUES ('e50e023a31e34903816644e3246f740b', '8a40c0353fa828a6013fa898d4ac0023', '9c0ae757fc564f27860b975e5792ae6a');
INSERT INTO `pt_roleoperator` VALUES ('e54f1e31da9a4f728f66fdfd94d0bb5b', '8a40c0353fa828a6013fa898d4ac0023', 'b23b17d4c83242e8a1a8ee8cfcde9907');
INSERT INTO `pt_roleoperator` VALUES ('e597c74ee6d44858b3c99b157b3e92e8', '8a40c0353fa828a6013fa898d4ac0023', 'd247fb45be724ed2a2bb5c92d73bf6cf');
INSERT INTO `pt_roleoperator` VALUES ('e62ace3aeff74b18a215dc41dfece9e0', '8a40c0353fa828a6013fa898d4ac0023', 'd115d08591ef4c0eaebef15f8294b287');
INSERT INTO `pt_roleoperator` VALUES ('e6685532fd524e7380a560b4ecdb00da', '8a40c0353fa828a6013fa898d4ac0023', '7cc12b5c154a4a9782c518c57e8ab3aa');
INSERT INTO `pt_roleoperator` VALUES ('e674dbb2536e41bf9e90e8d75250ed92', '52eea5bd9c294b399b11fc0e10354708', '39d82b5574b540b88d3723b36eb3e577');
INSERT INTO `pt_roleoperator` VALUES ('e81aad2c22d746d9902630ff3c521fcf', '8a40c0353fa828a6013fa898d4ac0023', 'c1e991d1f56749298c18ff69d7777e0b');
INSERT INTO `pt_roleoperator` VALUES ('e87c7e1f682e421bad56c9f97f5c3d2e', '8a40c0353fa828a6013fa898d4ac0023', '423e8c2e2a644bbda0803f46ea8f31e2');
INSERT INTO `pt_roleoperator` VALUES ('e9f51cc82e6641cc9a4889a696f2977b', '8a40c0353fa828a6013fa898d4ac0023', '910955c2192a418995eeab8bf15372e9');
INSERT INTO `pt_roleoperator` VALUES ('edae7d1fceea4a2ea20a7ec403686277', '8a40c0353fa828a6013fa898d4ac0023', '3dd486cd58da467dbd83ae420db14815');
INSERT INTO `pt_roleoperator` VALUES ('eeed83d366eb4083968cfdae9dba28b1', '8a40c0353fa828a6013fa898d4ac0023', 'ca0f6da01ada419eaa7739d9790e5b88');
INSERT INTO `pt_roleoperator` VALUES ('f0141c6068f74b8a95c3bf732c0111b8', '8a40c0353fa828a6013fa898d4ac0023', '7bd7ca42560140ee8573b2ade6388f3e');
INSERT INTO `pt_roleoperator` VALUES ('f2cfb3f642f64fdc80daecf002266bb9', '8a40c0353fa828a6013fa898d4ac0023', '0fb7938c7d614fc389568eb67b442303');
INSERT INTO `pt_roleoperator` VALUES ('f3760a9bf7d94da397a4b4e437b269ad', 'f8d7d8b7d8714a4996a754830ea034f6', 'f771691134c34174a819b5990310da56');
INSERT INTO `pt_roleoperator` VALUES ('f7dcf386fcf4407b863c923290200154', '8a40c0353fa828a6013fa898d4ac0023', '83ef85fd17804bb195d0ad3c07f88c30');
INSERT INTO `pt_roleoperator` VALUES ('fec66e284bd8410bbcf863da0f9fe91d', '8a40c0353fa828a6013fa898d4ac0023', 'fd9978df5c5a47f298e2d28e21e70b15');

-- ----------------------------
-- Table structure for pt_station
-- ----------------------------
DROP TABLE IF EXISTS `pt_station`;
CREATE TABLE `pt_station` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `images` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `isparent` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `parentstationids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `operatorids` text COLLATE utf8_bin,
  `moduleids` text COLLATE utf8_bin,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_station
-- ----------------------------
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '根节点', '1_open.png', 'true', '岗位组织结构', '1', null, '', '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0021', '0', '人事经理', '2.png', 'false', '人事经理', '6', '8a40c0353fa828a6013fa898d4ac0020', 0x6F70657261746F725F3532302C6F70657261746F725F3532362C6F70657261746F725F3533302C6F70657261746F725F3532372C, 0x6D6F64756C655F38613430633033353366653035363562303133303030312C6D6F64756C655F38613430633033353366653035363562303133303030322C);
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0022', '0', '财务经理', '3.png', 'false', '财务经理', '8', '8a40c0353fa828a6013fa898d4ac0020', '', '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0023', '0', '行政经理', '4.png', 'false', '行政经理', '7', '8a40c0353fa828a6013fa898d4ac0020', 0x6F70657261746F725F3532302C6F70657261746F725F3532362C6F70657261746F725F3533302C6F70657261746F725F3532392C, 0x6D6F64756C655F38613430633033353366653035363562303133303030312C6D6F64756C655F38613430633033353366653035363562303133303030322C);
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0024', '0', '测试经理', '5.png', 'false', '测试经理111', '9', '8a40c0353fa828a6013fa898d4ac0020', '', '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0025', '0', '研发经理', '6.png', 'false', '研发经理', '1', '8a40c0353fa828a6013fa898d4ac0020', 0x6F70657261746F725F38623730393239326330396234663864396339393538623131666563386466652C6F70657261746F725F30346132663063333566373034613735396135666335643863623131306465652C6F70657261746F725F31643566363965356166316534333938393565613030623162303764343033652C6F70657261746F725F31373730653734343461386634323266393264616339646332306663333234342C6F70657261746F725F63336535623864653363363834396561396632666333353731396637326139622C6F70657261746F725F61393139613063396339313734313132383439303037393238363530626235372C6F70657261746F725F64303338396435376539633634613633613533313363653439383837336535612C6F70657261746F725F63343733356236633634323034393335613132356237303539646338383134302C6F70657261746F725F66373731363931313334633334313734613831396235393930333130643030302C6F70657261746F725F38383662643439373036346234633966383764383436316562626134323164312C6F70657261746F725F61613132363933323634316634653036386564383237386133333264653835642C6F70657261746F725F66373731363931313334633334313734613831396235393930333130646135362C6F70657261746F725F33386633383731663738396334393336623337643137656134383233646135382C6F70657261746F725F32373161346165393836303334316536613330363032303730323638653165342C, '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0026', '0', '应用Java', '8.png', 'false', '应用Java', '3', '8a40c0353fa828a6013fa898d4ac0027', 0x6F70657261746F725F33373231386662353265633934666234626637363230396131373931363039342C6F70657261746F725F63316539393164316635363734393239386331386666363964373737376530622C6F70657261746F725F62313362303032653266616434653935626265306534646263396662646665312C6F70657261746F725F39613730386633396531323334353565383462363132353737346261623165612C6F70657261746F725F34333765303564303964643934373230623637633466323330636465626535382C6F70657261746F725F30666237393338633764363134666333383935363865623637623434323330332C6F70657261746F725F66373731363931313334633334313734613831396235393930333130643030302C6F70657261746F725F38383662643439373036346234633966383764383436316562626134323164312C6F70657261746F725F61613132363933323634316634653036386564383237386133333264653835642C6F70657261746F725F66623661306331653631383034316263626266386366643431333131623166612C6F70657261746F725F66373731363931313334633334313734613831396235393930333130646135362C6F70657261746F725F37656435656566626266336434616137386430633562393966336237303130632C6F70657261746F725F63663236633164326261613234613837393162336432363431353462383064342C6F70657261746F725F62383264383666623762363434393861396332623862396139396233666265622C6F70657261746F725F31303439396263376639636234616466393962656261303033343362346561362C6F70657261746F725F39663735623437626463303234396532623439336334373338343738356137322C6F70657261746F725F61316666363861636639623234633334623334376666323165333333636237302C6F70657261746F725F61363632336336353438306634663263623633613464373637336638316533612C6F70657261746F725F64663061613533343635353234326534613062636436333862353161346530332C6F70657261746F725F34613635343461653761323534386164383163306533393934393939303233632C6F70657261746F725F39316261656437383962633134656664626562623130623439633639656535622C6F70657261746F725F63303461646364303139653034636633626137633636616637323161313864632C6F70657261746F725F66316636663263386630323634393863386565363462376139313864303664662C6F70657261746F725F35666361633130376338306434393364393162353361383135643462323937612C6F70657261746F725F64323437666234356265373234656432613262623563393264373362663663662C6F70657261746F725F34333736383838666437346634323437613932363532396535646130333434322C6F70657261746F725F64343739646264633930316634643835613230376239626163653634363561632C6F70657261746F725F37393033396132323630646134366230616162623561363265386462366338372C6F70657261746F725F31613862346438653434313134313266613862623536313339333536336138352C6F70657261746F725F65373534646664623739346434653764623630323363396230383961333430632C6F70657261746F725F34386462353166323062353034633461623438396231646366643365636264392C6F70657261746F725F62633263383635626536616634326366383631323934643434366662316336662C6F70657261746F725F64343936623136316432353634313131393932363837623934383836323234342C6F70657261746F725F31623064373437363937346534626639623532663735666238326638373333302C6F70657261746F725F61353238396232363338643834356662623036646564626364643531376639372C6F70657261746F725F63396430313364313463626434663134386662343536326339313830336565382C6F70657261746F725F32323932366562313936613134623438626537373566343838306235626139342C6F70657261746F725F62383333396632396438643834613465616436343534323935663837623739632C6F70657261746F725F65303337653062616539613934653534396436623634376462343961363461312C6F70657261746F725F61306330316135323438636434626633386535373934356462623262393863352C6F70657261746F725F33656535663938363238396434613139393066346534326339613063616164622C6F70657261746F725F34646638303532316536363434373631383739366333636665303262663233392C6F70657261746F725F36353639653064396632636434653361393761663465316230636438643266372C6F70657261746F725F66313663616464386638316534626566393236653039663731386462386665322C6F70657261746F725F30393138353564643830396234313866616538386137666563366439663234362C6F70657261746F725F30316161306338356338623834616538616361376635343834333336623230332C6F70657261746F725F64356338626466376134396134653436623737366330356463396561643438342C6F70657261746F725F32626533343939313832376534653864613865393266396239653862636532352C6F70657261746F725F38663739383537623331643434373561393463373132653939376538396339392C6F70657261746F725F31323134316331633362653234316361386138363862636539636436313064352C6F70657261746F725F32316230613931306566366534633630613332356435653537653665366636352C6F70657261746F725F64316531346530623766363934373833393438353064323233383231343639322C6F70657261746F725F37346161323034343231303534303864393066396536343639613361393262352C6F70657261746F725F38383937646265383562336534653639383964363632343935323732636632362C6F70657261746F725F37616536323733376466343434643631396638666433373633363064313630632C6F70657261746F725F33333564316638663436656234376131383030313838396638636332313334382C6F70657261746F725F37636331326235633135346134613937383263353138633537653861623361612C6F70657261746F725F37386336303236633661663434623431613662656634636462346366623431342C6F70657261746F725F31353536366536336633313034633733623461306234613738346464313163612C6F70657261746F725F61636263656234333262353834396163613965396232383432343032383165632C6F70657261746F725F64363436646138373037616534313833386664326563396266306434363765652C6F70657261746F725F32396331386233333934393234633330383832646130343964613134616439392C6F70657261746F725F63306363666364313237633334376138623964623134306535616136323138382C6F70657261746F725F63613066366461303161646134313965616137373339643937393065356238382C6F70657261746F725F32333333353662363364386534373766623665393438623730333233323830392C6F70657261746F725F33363263663234373234316334643132623632343233303165346137333531362C6F70657261746F725F63323965613463626439303434626337383665396634353834616438343066662C6F70657261746F725F32666262633963666230626634623562623530346561643135356333343233632C6F70657261746F725F63373133323235306635303534623830386262313139313232613665636235322C6F70657261746F725F30396236636532393331336334303531626137363564653531366139623238332C6F70657261746F725F64633735306535376235346634626163613738643636393639333231656535312C6F70657261746F725F32313134316461346665626534633932396162653337313236623337666431322C6F70657261746F725F63303831633530393138663434353966386533366162386362343135316136312C6F70657261746F725F32666565393031313137633634653138383733663630653866383030373133642C6F70657261746F725F37656162356638303062616234656662386466316232653861303537356637332C6F70657261746F725F33326133653539393634323034613363383834386538346238363433303661652C6F70657261746F725F38626439633065313464663934316364616636323533636430386462643963642C6F70657261746F725F37623432383164643234376334363234626565306438663834633263323731352C6F70657261746F725F63303536343234343265306134363865626534663062373737316138303361652C6F70657261746F725F35623234396164333434643934386239396635383736386333323366356637312C6F70657261746F725F30646131356334393239396434316134623732306637383764303533653363622C6F70657261746F725F63633662636265653430616234336232626435616666366439333835653166632C6F70657261746F725F38336566383566643137383034626231393564306164336330376638386333302C6F70657261746F725F61643531613663613935633634366365396330333737386564613731353733342C6F70657261746F725F36646165643531323834663934393233623163386136343134653634363935392C6F70657261746F725F31623161383039383135353734623261396331643065313864363932646531372C6F70657261746F725F62323362313764346338333234326538613161386565386366636465393930372C6F70657261746F725F39313039353563323139326134313839393565656162386266313533373265392C6F70657261746F725F61643039613162383937373434383132383735633735326332643730663131612C6F70657261746F725F66383263303231646334343334313966623234363930333261663733626633652C6F70657261746F725F30353364333330343632653134353963613130313263396432393131336263342C6F70657261746F725F35386138353034306161396634306363613062646261366532336533303336332C6F70657261746F725F62346565346165343339316634323433626536396538333835343564323133312C6F70657261746F725F31303436333839643835323534353136393766323739333138356537643665652C6F70657261746F725F34366530306566306664323334653964626636386564396262623433376430662C6F70657261746F725F62383231383934356238653734336632393635313536393935303031343531312C6F70657261746F725F64313135643038353931656634633065616562656631356638323934623238372C6F70657261746F725F32333564383535643762393134643732386534333466306633303961613034642C6F70657261746F725F66643939373864663563356134376632393865326432386532316537306231352C6F70657261746F725F38636138616635303135323234333964386339323439653030646235643738642C6F70657261746F725F64666539643734666530656634323230626663666536643762623266393433362C6F70657261746F725F32633931343637663930356134663562613966353238333031333163386164392C6F70657261746F725F34383164346435633061363334633430383563373263393930323630653538642C6F70657261746F725F34323064386562633638616434346463383138386434633237646335383564312C6F70657261746F725F35313438656132303762393734656531393766306263353730363061623161642C6F70657261746F725F30373733613538633462646234383538616230363263346132613464613639612C6F70657261746F725F39373635653662623736656234306162383030636238393534383232313930652C6F70657261746F725F37373832336531323339316134373732396131663832613030626331356335622C6F70657261746F725F30353131346330636265316634633230393562333231366631336366623638312C6F70657261746F725F36623532376564313338633334336138396464663733636631366665663536352C6F70657261746F725F64666337616630393739613534653865396133663138623761356436363033302C6F70657261746F725F33646434383663643538646134363764626438336165343230646231343831352C6F70657261746F725F33366433623839653337386234353163613839643161343161336335336531302C6F70657261746F725F39396134326134363762626634653832396664303730363530376339663761372C6F70657261746F725F32623766366532386639613734383534623733393965383734306237363566642C6F70657261746F725F64316234353337393964363234383562383265303237623936623539366363642C6F70657261746F725F33376139613639363634343834363966396439616265326538616562316239652C6F70657261746F725F33623165376335643565306534363163393065316630303332663637396132352C6F70657261746F725F66376332323061383162613834333933386638636362313038626563396330332C6F70657261746F725F34613035666663666533353134373633393161303336393337656166373333662C6F70657261746F725F62656561613766346232343434343330613637333265636338336334353361322C6F70657261746F725F36313331393432646432363434373930623830646631336331346662336165382C6F70657261746F725F62333532653432343665373534613936393162636339303131663434353636352C6F70657261746F725F35393832333530663764306534623263613732646536343330306437353232332C6F70657261746F725F64616431303763316165623034313962383030346435376639643730323233652C6F70657261746F725F39316637383731336333303834623665396237343139653261393763376461632C6F70657261746F725F33623661386636316532306534626632393433343231616632313139653962392C6F70657261746F725F39656534656535363265616134373561393566343564336461656230323230612C6F70657261746F725F30363234346366333532306334396538613435636264653832613533666135652C6F70657261746F725F36363666353065306633623034663462613433626362346537313963316538642C6F70657261746F725F66353733383864313339303334303939393332633336613935356466363235612C6F70657261746F725F61666538393363366265373434633466393831383762303834616338333265372C6F70657261746F725F62336166386662363561303034313863393636623866326135616339373430302C6F70657261746F725F34663761356264313865316534656433383439613934633438633134633561312C6F70657261746F725F35633135636635633337363134313961393032396534653039346338663533632C6F70657261746F725F62636638636635616430373334646337383563626137313661623433376339332C6F70657261746F725F38366135303237323962646134366630623630376332623463363533316264332C6F70657261746F725F31353533643961393761346234303633613436663462653431653761646564642C6F70657261746F725F34356366366538663963323534653530393339396465646130383066306532302C6F70657261746F725F64666138323536363531613834323639383639633335636131663130636165352C6F70657261746F725F31353439356265656265393834636431396463333064363536373663346334642C6F70657261746F725F33626663363237323066656634373036623232633738643639643237613237352C6F70657261746F725F65653738313534356166373134346131386633306235343932656534396663382C6F70657261746F725F66653062653034343363626134613539393362366435663931656165386538392C6F70657261746F725F34633530316366376238336634623035386130356265313531323763386564622C6F70657261746F725F32373161346165393836303334316536613330363032303730323638653165342C6F70657261746F725F33386633383731663738396334393336623337643137656134383233646135382C6F70657261746F725F64303836303662613862663634306563613736343133646266633934376635362C, 0x6D6F64756C655F38613430633033353433323865353237303134333238653838346265303031362C6D6F64756C655F70696E675461692C6D6F64756C655F70696E6754616930303032302C6D6F64756C655F70696E67546169303030342C6D6F64756C655F70696E6754616930303031362C6D6F64756C655F70696E67546169303030372C6D6F64756C655F70696E6754616930303031322C6D6F64756C655F32393765306366393434663863636537303134346638653136366134303136372C6D6F64756C655F70696E6754616930303031352C6D6F64756C655F70696E6754616930303032322C6D6F64756C655F70696E6754616930303031302C6D6F64756C655F70696E6754616930303031382C6D6F64756C655F70696E67546169303030362C6D6F64756C655F70696E6754616930303032332C6D6F64756C655F70696E6754616930303031312C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032302C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303033332C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032312C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303033312C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303033302C6D6F64756C655F32393765306366393434653937363265303134346539376466643665303063392C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032332C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032342C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032352C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032362C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032372C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032382C6D6F64756C655F38613430633033353366613832386136303133666138393864346163303032392C6D6F64756C655F38613430633033353366613832386136303133666138393864346163313130302C6D6F64756C655F63346536336334313731646234616532613833663764666363323635366230652C6D6F64756C655F65366562303136353232333434373231383431306638363761393631343330302C6D6F64756C655F34313765643364336366346434623761393339363133383239653864623137642C6D6F64756C655F37613335383436613330356334326162623638363031623466373334373238392C6D6F64756C655F63383763333530393761326434626338393866653665396231653238306133642C6D6F64756C655F38663533373036643461663534313538386264653333346439396434343732372C6D6F64756C655F38613430633033353366613832386136303133666138393864346163323230302C6D6F64756C655F33626634633138323962663434373937393836356663346432616237353830312C6D6F64756C655F34303930636163303665313534353937383962633531353465656636376534652C6D6F64756C655F33646563343431383631373534323463626565326430356666626236393064642C6D6F64756C655F38613162353162623666616534666163383539316634663338376432353066662C6D6F64756C655F33653034386565323633633334343331386539633439393561356364333565302C);
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0027', '0', '应用经理', '7.png', 'true', '应用经理', '2', '8a40c0353fa828a6013fa898d4ac0020', '', '');
INSERT INTO `pt_station` VALUES ('8a40c0353fa828a6013fa898d4ac0028', '0', '应用C++', '2.png', 'false', '应用C++', '5', '8a40c0353fa828a6013fa898d4ac0027', '', '');

-- ----------------------------
-- Table structure for pt_stationoperator
-- ----------------------------
DROP TABLE IF EXISTS `pt_stationoperator`;
CREATE TABLE `pt_stationoperator` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '??',
  `stationids` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '??ids',
  `operatorids` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '??ids',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='????';

-- ----------------------------
-- Records of pt_stationoperator
-- ----------------------------

-- ----------------------------
-- Table structure for pt_syslog
-- ----------------------------
DROP TABLE IF EXISTS `pt_syslog`;
CREATE TABLE `pt_syslog` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `actionenddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `actionendtime` bigint(20) DEFAULT NULL,
  `actionhaoshi` bigint(20) DEFAULT NULL,
  `actionstartdate` timestamp NOT NULL DEFAULT '2015-03-26 19:16:26',
  `actionstarttime` bigint(20) DEFAULT NULL,
  `cause` char(1) COLLATE utf8_bin DEFAULT NULL,
  `cookie` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `enddate` timestamp NOT NULL DEFAULT '2015-03-26 19:16:26',
  `endtime` bigint(20) DEFAULT NULL,
  `haoshi` bigint(20) DEFAULT NULL,
  `ips` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `method` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `referer` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `requestpath` text COLLATE utf8_bin,
  `startdate` timestamp NOT NULL DEFAULT '2015-03-26 19:16:26',
  `starttime` bigint(20) DEFAULT NULL,
  `status` char(1) COLLATE utf8_bin DEFAULT NULL,
  `useragent` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `viewhaoshi` bigint(20) DEFAULT NULL,
  `operatorids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `accept` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `acceptencoding` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `acceptlanguage` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `connection` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `host` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xrequestedwith` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `pvids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `userids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_syslog
-- ----------------------------
INSERT INTO `pt_syslog` VALUES ('48b9c0da85904671bb5a7ae6bce58bef', '0', '2016-09-16 18:56:06', null, '7', '2016-09-16 18:56:06', '1474023366126', null, 'authCode=ei94SEYwYm1vRTg9; userName=admins; authmark=OElFclBXdi9lR1hwS1R5OXBpT3J1T2E1NURXYTF5TXpBay8zZ0ppN040SDd1bWI5OVFtTlJkdTh1ZVRnbU1Cem42MGxBVEx1U2lOUVBKYTNDdmhiVGpNL1VKQkVKdHJ5U0xFZXJ3aFpCd0tMNXh1TklSLzJjV0NTdnRRMDNEUnQ0MTlQdE9kVWovR2hZekJHcm1qUHZwQzFxSTMxcjFyWjhKOUtZaDQyaFhlSUpBZmM5b3JVY0NJL2hGNDgzYTMwZFBwRlErNjJIcTc2eHN3SGoxbmt5K2xMYWdBcjdCWmFOZVZDV2h0ZWNMVGJjVFRSYVhIVE5VanpWOUlZY0RFeQ; cookie_lang=1; JSESSIONID=EC49AFD4F480D3C2DAED30C700DEBEAD', null, '2016-09-16 18:56:06', null, '8', '127.0.0.1', 'POST', 'http://localhost:8080/jf/platform/', 0x2F6A662F706C6174666F726D2F7379734C6F67, '2016-09-16 18:56:06', null, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '1', '235d855d7b914d728e434f0f309aa04d', 'text/html, */*; q=0.01', 'gzip, deflate', 'zh-CN,zh;q=0.8', 'keep-alive', 'localhost:8080', 'XMLHttpRequest', null, '03a44ba0aa4e4905bea726d4da976ba5');

-- ----------------------------
-- Table structure for pt_systems
-- ----------------------------
DROP TABLE IF EXISTS `pt_systems`;
CREATE TABLE `pt_systems` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `numbers` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_systems
-- ----------------------------
INSERT INTO `pt_systems` VALUES ('8a40c0353fa828a6013fa898d4ac0020', '0', '基础平台', '基础平台', 'platform', '1');

-- ----------------------------
-- Table structure for pt_upload
-- ----------------------------
DROP TABLE IF EXISTS `pt_upload`;
CREATE TABLE `pt_upload` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `parametername` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `filename` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `contenttype` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `originalfilename` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_upload
-- ----------------------------
INSERT INTO `pt_upload` VALUES ('0f2cc2d5c8ea4181bd6e257ee944a125', '0', 'file', '290036efa2384bdb85d4d5d2a4f642fe.png', 'image/png', 'IP.png', 'webRoot');
INSERT INTO `pt_upload` VALUES ('11af6ea98a154a848effc18be99b9d59', '0', 'file', 'f62f27d502c04aea907552dab72765ff.pdf', 'application/pdf', 'beetl-guide.pdf', 'webRoot');
INSERT INTO `pt_upload` VALUES ('1226549a9de748d9add36dfed9160369', '0', 'file', '1ffa644236054ec190d7fc0ac33e3033.jpg', 'image/jpeg', '20130519_122955_8208.jpg', 'webRoot');
INSERT INTO `pt_upload` VALUES ('137a994bf5f947ba93cd0e4acc4e7b5c', '0', 'file', '44d3cbbb61054cfd99415da7a9080262.pdf', 'application/pdf', '《Python Cookbook》第三版中文.pdf', null);
INSERT INTO `pt_upload` VALUES ('254219e7934a4705927c3d70cb12d75a', '0', 'file', '5f09cee2fdd645d5841f6c2ba4ade1c5.pdf', 'application/pdf', '《Python Cookbook》第三版中文.pdf', null);
INSERT INTO `pt_upload` VALUES ('282f52e6af2743c1971afe2b25b22dbd', '0', 'file', 'c739d3b2155642b5876a4b61ca30f405.jpg', 'image/jpeg', 'yy.jpg', 'webRoot');
INSERT INTO `pt_upload` VALUES ('3e6243bce6d34d78a85ba6c907de3b0d', '0', 'file', '6e43b4a0b16043aaa55f970202644482.bmp', 'image/bmp', 'ip.bmp', 'webRoot');
INSERT INTO `pt_upload` VALUES ('69bfab22e5a94979a7d30378815cc2c6', '0', 'file', '771dc21ae86d45e88e9ac34b1574ba4d.java', 'application/octet-stream', 'IaJobInfoTempHandler.java', 'webRoot');
INSERT INTO `pt_upload` VALUES ('6fb404c0438f4ce0a4179b22fd83c515', '0', 'file', '3f8f73a5e1f3425b9d3db7ba230db3ec.pdf', 'application/pdf', '《Python Cookbook》第三版中文.pdf', null);
INSERT INTO `pt_upload` VALUES ('769ecc9d5c084eb391f2ffdd8ae87a9a', '0', 'file', '3ee511388e1045a2bf5757d85b274546.pdf', 'application/pdf', '《Python Cookbook》第三版中文.pdf', null);
INSERT INTO `pt_upload` VALUES ('9c9c66b2796341b19327228e257d1ca9', '0', 'file', '99eb488c98274390b33d6b35b9b4e57b.jpg', 'image/jpeg', 'code.jpg', 'webRoot');
INSERT INTO `pt_upload` VALUES ('a2e07cd887524aa9b8737a6b803c88ab', '0', 'file', '866006669c6f4d118d2a2593866ee027.jpg', 'image/jpeg', 'code.jpg', 'webRoot');
INSERT INTO `pt_upload` VALUES ('ebf38b8979fd4116a66176a1ba8a9acd', '0', 'file', 'bd8b6cb6a41e4f73b5bfbdcf1f90f3ff.png', 'image/png', 'XXX.png', 'webRoot');
INSERT INTO `pt_upload` VALUES ('f0031e8721b94e6db4d165c726a383e9', '0', 'file', 'a2903fdebf5b4cb2ac7734c6ccdd0062.java', 'application/octet-stream', 'IaJobInfoTempHandler.java', 'webRoot');

-- ----------------------------
-- Table structure for pt_user
-- ----------------------------
DROP TABLE IF EXISTS `pt_user`;
CREATE TABLE `pt_user` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `errorcount` bigint(20) DEFAULT NULL,
  `orderids` bigint(20) DEFAULT NULL,
  `password` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `salt` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `status` char(1) COLLATE utf8_bin DEFAULT NULL,
  `stopdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `departmentids` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `stationids` text COLLATE utf8_bin,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `idcard` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `names` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`),
  KEY `usernameindex` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_user
-- ----------------------------
INSERT INTO `pt_user` VALUES ('03a44ba0aa4e4905bea726d4da976ba5', '6', '2', '0', 'GKw78xJqQ9aBY31IaojrIDtVBpY=', 'DdDxMWSgtsQ=', '1', '2016-09-14 21:52:11', 'admins', '8a40c0353fa828a6013fa898d4ac0028', 0x3861343063303335336661383238613630313366613839386434616330303236, 'dongcb678@163.com', '420881198609283721', '13871558042', '管理员');
INSERT INTO `pt_user` VALUES ('59a4be7bc1824308a176d9bbac7cf417', '5', '0', null, 'x9teolwXjCsqHel5It449GwFr+M=', 'ifIziVfFCZQ=', '1', '2016-09-15 15:23:35', '333333', '8a40c0353fa828a6013fa898d4ac0027', null, 'qv15@qq33.com', '23343434343', '13122699868', '韩继伟22');
INSERT INTO `pt_user` VALUES ('aefc975ece714db7ab9a214673107816', '1', '0', null, 'W8X9fSIz8IfHy87n31YK+t+fMus=', 'NfZvefvbykc=', '1', '2016-09-16 18:33:17', '222222', '8a40c0353fa828a6013fa898d4ac0030', null, 'qq@qq.com', '334343', '1222212112', '222');
INSERT INTO `pt_user` VALUES ('d4a861c6585e4ea58b88f4385466a09b', '1', '0', null, 'fKLEg2X54eaQovTtCJeKUM/Y6Vo=', 'EmmXryCfMCs=', '1', '2016-09-16 18:18:12', 'testtest', '8a40c0353fa828a6013fa898d4ac0027', null, 'qq@qq.com', '412702197913133636', '12533658563', 'hjiwei');

-- ----------------------------
-- Table structure for pt_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `pt_usergroup`;
CREATE TABLE `pt_usergroup` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '??',
  `userids` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '??ids',
  `groupids` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '??ids',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='????';

-- ----------------------------
-- Records of pt_usergroup
-- ----------------------------
INSERT INTO `pt_usergroup` VALUES ('087bef5010f349ebb607b8436c1c60b6', '59a4be7bc1824308a176d9bbac7cf417', '779e4fdbc44b4ef48b4ee9d99a0afa59');
INSERT INTO `pt_usergroup` VALUES ('195547c183394d99bbeb009b382d96f5', '59a4be7bc1824308a176d9bbac7cf417', 'f41c93842b4749b49d8134354f5a4518');
INSERT INTO `pt_usergroup` VALUES ('5ccf0b1d605c49938fa8c4369c8a34c6', '03a44ba0aa4e4905bea726d4da976ba5', '8a40c0353fa828a6013fa898d4ac0028');
INSERT INTO `pt_usergroup` VALUES ('a381df9511c04b1c82d53c0859ac94b1', 'aefc975ece714db7ab9a214673107816', '4d79d220f46e4a6bb100990de6b4a183');
INSERT INTO `pt_usergroup` VALUES ('a402f0d63dad4f99b8d73bcae15a153b', 'd4a861c6585e4ea58b88f4385466a09b', '4d79d220f46e4a6bb100990de6b4a183');
INSERT INTO `pt_usergroup` VALUES ('baeadb794a5241a888cd9346f07212a8', '3f33600d631e4b67af6f5d850d4a78de', '8a40c0353fa828a6013fa898d4ac0028');

-- ----------------------------
-- Table structure for pt_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `pt_userinfo`;
CREATE TABLE `pt_userinfo` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `addressinfo` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `avoirdupois` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `bloodgroup` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `clientlevelend` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `clientlevelstart` timestamp NOT NULL DEFAULT '2014-06-09 11:21:13',
  `culture` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `finishschooldate` date DEFAULT NULL,
  `folk` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `government` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `homepage` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `householder` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `marriage` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `msn` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `nativityaddress` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `postboy` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `qq` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `schoolname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `speciality` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `stature` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ids`),
  KEY `bloodgroupindex` (`bloodgroup`) USING BTREE,
  KEY `msnindex` (`msn`) USING BTREE,
  KEY `nativityaddressindex` (`nativityaddress`) USING BTREE,
  KEY `postboyindex` (`postboy`) USING BTREE,
  KEY `schoolnameindex` (`schoolname`) USING BTREE,
  KEY `specialityindex` (`speciality`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of pt_userinfo
-- ----------------------------
INSERT INTO `pt_userinfo` VALUES ('03a44ba0aa4e4905bea726d4da976ba5', '6', '湖北钟祥', null, '55', '2012-03-07', 'bloodGroup_A', '2015-03-26 19:16:26', '2014-06-09 11:21:13', 'wenHuaChenDu_chuZhong', '湖北钟祥', '2010-10-25', 'folk_han', 'government_dangYuan', 'http://www.4bu4.com', '湖北钟祥', 'marriage_no', null, '湖北钟祥', '431924', '150584428', '西安外事学院', 'man', '电子商务', '165', '027-65155060');
INSERT INTO `pt_userinfo` VALUES ('59a4be7bc1824308a176d9bbac7cf417', '5', null, null, null, '2016-09-29', null, '2016-09-15 15:23:35', '2014-06-09 11:21:13', null, null, null, null, null, null, null, null, null, null, null, '6267531', null, null, null, null, '0216652665');
INSERT INTO `pt_userinfo` VALUES ('8f38d25ee6dd4f018685b88269c47c3b', '1', null, null, null, '2016-09-29', null, '2016-09-10 15:36:12', '2014-06-09 11:21:13', null, null, null, null, null, null, null, null, null, null, null, '332323', null, null, null, null, '33332112');
INSERT INTO `pt_userinfo` VALUES ('aefc975ece714db7ab9a214673107816', '1', null, null, null, null, null, '2016-09-16 18:33:17', '2014-06-09 11:21:13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '212121223');
INSERT INTO `pt_userinfo` VALUES ('af5968dc010b4c5ebc8e1bab8bf9bf7f', '1', null, null, null, null, null, '2016-09-13 21:20:58', '2014-06-09 11:21:13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `pt_userinfo` VALUES ('d4a861c6585e4ea58b88f4385466a09b', '1', null, null, null, '2016-09-16', null, '2016-09-16 18:18:12', '2014-06-09 11:21:13', null, null, null, null, null, null, null, null, null, null, null, '66658985', null, null, null, null, '36326531');

-- ----------------------------
-- Table structure for test_blog
-- ----------------------------
DROP TABLE IF EXISTS `test_blog`;
CREATE TABLE `test_blog` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8_bin COMMENT '内容',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `operator` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作员',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of test_blog
-- ----------------------------
INSERT INTO `test_blog` VALUES ('047bd4690e8342be8cc2c7c33687a8c0', '233432', 0xE788B1E79A84E58F91E694BEE79A84E58F91E58F91E599B6E58F91, '2016-09-11 20:12:31', null);
INSERT INTO `test_blog` VALUES ('0a0c0eaf2edb46e194080fbc7f735c76', '122sfd', 0x6166612064616461646661666473, '2016-09-08 19:55:44', null);
INSERT INTO `test_blog` VALUES ('1629821b73e14c468fb0a9dce8e821e5', '2344如454', 0xE788B1E79A84E58F91E58F91E7949FE58F91E79A84E58F91E593A5E593A5, '2016-09-11 20:13:16', null);
INSERT INTO `test_blog` VALUES ('25f42a5f34164194bf58d1431219f169', '十分的飞洒发发发', 0xE998BFE58F91E68993E58F91E68993E58F91E698AFE6B395E5B888E68993E58F91, '2016-09-11 20:12:50', null);
INSERT INTO `test_blog` VALUES ('3bad66a298cf4ee4af47f1978b734597', '是的第三方的说法af', 0xE998BFE58F91E79A84E58F91E58F91E7949FE59CB0E696B9E79A84E58F91E7949F, '2016-09-11 20:12:43', null);
INSERT INTO `test_blog` VALUES ('58177dfba34a4671b653b6dc27dacfc6', '撒范德萨的方法的', 0xE4B889E5A4ABE4BABA343334245F24, '2016-09-11 20:13:01', null);
INSERT INTO `test_blog` VALUES ('5f0ec541231e4f479e031ed97bc21749', '测试1', 0xE698AFE6B395E5B888E68993E58F91, '2016-09-11 20:12:18', null);
INSERT INTO `test_blog` VALUES ('67b6b9d76dbf4b8db6f5eeea9370e1a6', '阿三的方法', 0xE998BFE58F91E79A84E58F91E79A84E58F91E7949FE6B395, '2016-09-11 20:12:36', null);
INSERT INTO `test_blog` VALUES ('9463b2bd262b448d9e3cbc5453401758', '是发放', 0xE998BFE587A1E8BEBEE698AFE58F91E79A84E58F91E694BEE79A84, '2016-09-11 20:12:23', null);
INSERT INTO `test_blog` VALUES ('968a6c1d5e2843d9b71f414f2cc4cc07', '的官方哥哥', 0x3333343334245F24, '2016-09-11 20:13:08', null);
INSERT INTO `test_blog` VALUES ('9a720d3ea3d94f3683b0518fdd30ecea', '测试标题2', 0xE6B58BE8AF95E58685E5AEB932, '2016-09-07 20:57:29', null);
INSERT INTO `test_blog` VALUES ('af3a30ec5a75485bb057155d831abb91', '测试标题', 0xE6B58BE8AF95E58685E5AEB9, '2016-09-07 20:57:17', null);
INSERT INTO `test_blog` VALUES ('b3f65e656034432395e1aa05232baa93', '32323', 0xE5A3ABE5A4A7E5A4ABE4BCBCE79A84E58F91E58F91E58F91E58F91E58F91, '2016-09-11 20:12:55', null);
INSERT INTO `test_blog` VALUES ('e4f00bfffc8f4850a717bda389ca805a', '的发的', 0x323334323334333234, '2016-09-11 20:13:21', null);
