-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: zzloan
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cmf_action`
--

DROP TABLE IF EXISTS `cmf_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员操作记录',
  `aid` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(50) DEFAULT '',
  `type` varchar(20) NOT NULL COMMENT '操作类型',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`) COMMENT '外键连接user'
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COMMENT='管理员操作记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_action`
--

LOCK TABLES `cmf_action` WRITE;
/*!40000 ALTER TABLE `cmf_action` DISABLE KEYS */;
INSERT INTO `cmf_action` VALUES (2,1,'编辑网站配置',1516683853,'127.0.0.1','config'),(3,1,'对借条1更改状态借条确认为借条确认',1516699933,'127.0.0.1','paper'),(4,1,'对借条1更改状态\"不同意借条\"为\"不同意借条\"',1516701342,'127.0.0.1','paper'),(5,1,'对借条1更改状态\"发起延期申请\"为\"今日到期\"',1516701417,'127.0.0.1','paper'),(6,1,'对借条1更改状态\"今日到期\"为\"还款结束\"',1516701713,'127.0.0.1','paper'),(7,1,'对借条1更改状态\"还款结束\"为\"借条确认\"',1516758470,'127.0.0.1','paper'),(8,1,'编辑网站配置',1516848542,'127.0.0.1','config'),(9,1,'编辑网站配置',1516860437,'127.0.0.1','config'),(10,1,'清空了登录失败次数0条',1516862560,'127.0.0.1','system'),(11,1,'删除了过期申请3条',1516862560,'127.0.0.1','system'),(12,1,'更新了过期申请0条',1516862560,'127.0.0.1','system'),(13,1,'删除了过期借条0条',1516862560,'127.0.0.1','system'),(14,1,'更新了逾期天数0条',1516862560,'127.0.0.1','system'),(15,1,'更新了用户逾期7天的次数0条',1516862560,'127.0.0.1','system'),(16,1,'更新了用户逾期次数0条',1516862560,'127.0.0.1','system'),(17,1,'更新了今日到期为逾期0条',1516862560,'127.0.0.1','system'),(18,1,'更新了即将到期天数0条',1516862560,'127.0.0.1','system'),(19,1,'更新了即将到期为今日到期0条',1516862560,'127.0.0.1','system'),(20,1,'更新借条发起和借条不同意为过期0条',1516862560,'127.0.0.1','system'),(21,1,'清空了登录失败次数0条',1516862657,'127.0.0.1','system'),(22,1,'删除了过期申请0条',1516862657,'127.0.0.1','system'),(23,1,'更新了过期申请0条',1516862657,'127.0.0.1','system'),(24,1,'删除了过期借条0条',1516862657,'127.0.0.1','system'),(25,1,'更新了逾期天数0条',1516862657,'127.0.0.1','system'),(26,1,'更新了用户逾期7天的次数0条',1516862657,'127.0.0.1','system'),(27,1,'更新了用户逾期次数0条',1516862657,'127.0.0.1','system'),(28,1,'更新了今日到期为逾期0条',1516862657,'127.0.0.1','system'),(29,1,'更新了即将到期天数0条',1516862657,'127.0.0.1','system'),(30,1,'更新了即将到期为今日到期0条',1516862657,'127.0.0.1','system'),(31,1,'更新借条发起和借条不同意为过期0条',1516862657,'127.0.0.1','system'),(32,1,'清空了登录失败次数0条',1516929702,'127.0.0.1','system'),(33,1,'删除了过期申请0条',1516929702,'127.0.0.1','system'),(34,1,'更新了过期申请0条',1516929702,'127.0.0.1','system'),(35,1,'删除了过期借条0条',1516929702,'127.0.0.1','system'),(36,1,'更新了逾期天数0条',1516929702,'127.0.0.1','system'),(37,1,'更新了用户逾期7天的次数0条',1516929702,'127.0.0.1','system'),(38,1,'更新了用户逾期次数0条',1516929702,'127.0.0.1','system'),(39,1,'更新了今日到期为逾期0条',1516929702,'127.0.0.1','system'),(40,1,'更新了即将到期天数0条',1516929702,'127.0.0.1','system'),(41,1,'更新了即将到期为今日到期0条',1516929702,'127.0.0.1','system'),(42,1,'更新借条发起和借条不同意为过期1条',1516929702,'127.0.0.1','system'),(43,1,'清空了登录失败次数0条',1516929863,'127.0.0.1','system'),(44,1,'删除了过期申请0条',1516929863,'127.0.0.1','system'),(45,1,'更新了过期申请0条',1516929863,'127.0.0.1','system'),(46,1,'删除了过期借条0条',1516929863,'127.0.0.1','system'),(47,1,'更新了逾期天数0条',1516929863,'127.0.0.1','system'),(48,1,'更新了用户逾期7天的次数0条',1516929863,'127.0.0.1','system'),(49,1,'更新了用户逾期次数0条',1516929863,'127.0.0.1','system'),(50,1,'更新了今日到期为逾期0条',1516929863,'127.0.0.1','system'),(51,1,'更新了即将到期天数0条',1516929863,'127.0.0.1','system'),(52,1,'更新了即将到期为今日到期0条',1516929863,'127.0.0.1','system'),(53,1,'更新借条发起和借条不同意为过期0条',1516929863,'127.0.0.1','system'),(54,1,'清空了登录失败次数0条',1516930012,'127.0.0.1','system'),(55,1,'删除了过期申请0条',1516930012,'127.0.0.1','system'),(56,1,'更新了过期申请0条',1516930012,'127.0.0.1','system'),(57,1,'删除了过期借条0条',1516930012,'127.0.0.1','system'),(58,1,'更新了逾期天数0条',1516930012,'127.0.0.1','system'),(59,1,'更新了用户逾期7天的次数0条',1516930012,'127.0.0.1','system'),(60,1,'更新了用户逾期次数0条',1516930012,'127.0.0.1','system'),(61,1,'更新了今日到期为逾期0条',1516930012,'127.0.0.1','system'),(62,1,'更新了即将到期天数0条',1516930012,'127.0.0.1','system'),(63,1,'更新了即将到期为今日到期0条',1516930012,'127.0.0.1','system'),(64,1,'更新借条发起和借条不同意为过期1条',1516930012,'127.0.0.1','system'),(65,1,'清空了登录失败次数0条',1516930033,'127.0.0.1','system'),(66,1,'删除了过期申请0条',1516930033,'127.0.0.1','system'),(67,1,'更新了过期申请0条',1516930033,'127.0.0.1','system'),(68,1,'删除了过期借条0条',1516930033,'127.0.0.1','system'),(69,1,'更新了逾期天数0条',1516930033,'127.0.0.1','system'),(70,1,'更新了用户逾期7天的次数0条',1516930033,'127.0.0.1','system'),(71,1,'更新了用户逾期次数0条',1516930033,'127.0.0.1','system'),(72,1,'更新了今日到期为逾期0条',1516930033,'127.0.0.1','system'),(73,1,'更新了即将到期天数0条',1516930033,'127.0.0.1','system'),(74,1,'更新了即将到期为今日到期0条',1516930033,'127.0.0.1','system'),(75,1,'更新借条发起和借条不同意为过期0条',1516930033,'127.0.0.1','system'),(76,1,'清空了登录失败次数0条',1516956783,'127.0.0.1','system'),(77,1,'删除了过期申请0条',1516956783,'127.0.0.1','system'),(78,1,'更新了过期申请0条',1516956783,'127.0.0.1','system'),(79,1,'删除了过期借条0条',1516956783,'127.0.0.1','system'),(80,1,'更新了逾期天数0条',1516956783,'127.0.0.1','system'),(81,1,'更新了用户逾期7天的次数0条',1516956783,'127.0.0.1','system'),(82,1,'更新了用户逾期次数0条',1516956783,'127.0.0.1','system'),(83,1,'更新了今日到期为逾期0条',1516956783,'127.0.0.1','system'),(84,1,'更新了即将到期天数1条',1516956783,'127.0.0.1','system'),(85,1,'更新了即将到期为今日到期0条',1516956783,'127.0.0.1','system'),(86,1,'更新借条发起和借条不同意为过期0条',1516956783,'127.0.0.1','system'),(87,1,'清空了登录失败次数0条',1517193034,'127.0.0.1','system'),(88,1,'删除了过期申请0条',1517193034,'127.0.0.1','system'),(89,1,'更新了过期申请0条',1517193034,'127.0.0.1','system'),(90,1,'删除了过期借条0条',1517193034,'127.0.0.1','system'),(91,1,'更新了逾期天数0条',1517193034,'127.0.0.1','system'),(92,1,'更新了用户逾期7天的次数0条',1517193034,'127.0.0.1','system'),(93,1,'更新了用户逾期次数0条',1517193035,'127.0.0.1','system'),(94,1,'更新了今日到期为逾期0条',1517193035,'127.0.0.1','system'),(95,1,'更新了即将到期天数1条',1517193035,'127.0.0.1','system'),(96,1,'更新了即将到期为今日到期0条',1517193035,'127.0.0.1','system'),(97,1,'更新借条发起和借条不同意为过期0条',1517193035,'127.0.0.1','system'),(98,1,'编辑网站配置',1517967142,'127.0.0.1','config'),(99,1,'编辑网站配置',1517967177,'127.0.0.1','config'),(100,1,'编辑网站配置',1517971137,'127.0.0.1','config'),(101,7,'编辑网站配置',1517971210,'127.0.0.1','config'),(102,1,'清空了登录失败次数0条',1518093476,'127.0.0.1','system'),(103,1,'删除了过期申请0条',1518093476,'127.0.0.1','system'),(104,1,'更新了过期申请27条',1518093476,'127.0.0.1','system'),(105,1,'删除了过期借条0条',1518093476,'127.0.0.1','system'),(106,1,'更新了借条逾期天数11条',1518093476,'127.0.0.1','system'),(107,1,'更新了用户逾期7天的次数和金额0条',1518093476,'127.0.0.1','system'),(108,1,'更新了用户逾期累计0条',1518093476,'127.0.0.1','system'),(109,1,'更新今日到期为逾期0条',1518093476,'127.0.0.1','system'),(110,1,'更新了还剩1天的借条今日到期0条',1518093476,'127.0.0.1','system'),(111,1,'更新了即将到期天数0条',1518093476,'127.0.0.1','system'),(112,1,'更新借条发起和借条不同意为过期10条',1518093476,'127.0.0.1','system'),(113,1,'清空了登录失败次数1条',1518095488,'127.0.0.1','system'),(114,1,'删除了过期申请0条',1518095488,'127.0.0.1','system'),(115,1,'更新了过期申请0条',1518095488,'127.0.0.1','system'),(116,1,'删除了过期借条0条',1518095488,'127.0.0.1','system'),(117,1,'更新了借条逾期天数11条',1518095488,'127.0.0.1','system'),(118,1,'更新了用户逾期7天的次数和金额0条',1518095488,'127.0.0.1','system'),(119,1,'更新了用户逾期累计0条',1518095488,'127.0.0.1','system'),(120,1,'更新今日到期为逾期0条',1518095488,'127.0.0.1','system'),(121,1,'更新了还剩1天的借条今日到期0条',1518095488,'127.0.0.1','system'),(122,1,'更新了即将到期天数0条',1518095488,'127.0.0.1','system'),(123,1,'更新借条发起和借条不同意为过期0条',1518095488,'127.0.0.1','system'),(124,1,'清空了登录失败次数0条',1519350188,'127.0.0.1','system'),(125,1,'删除了过期申请27条',1519350188,'127.0.0.1','system'),(126,1,'更新了过期申请13条',1519350188,'127.0.0.1','system'),(127,1,'删除了过期借条10条',1519350188,'127.0.0.1','system'),(128,1,'更新了借条逾期天数11条',1519350188,'127.0.0.1','system'),(129,1,'更新了用户逾期7天的次数和金额0条',1519350188,'127.0.0.1','system'),(130,1,'更新了用户逾期累计0条',1519350188,'127.0.0.1','system'),(131,1,'更新今日到期为逾期0条',1519350188,'127.0.0.1','system'),(132,1,'更新了还剩1天的借条今日到期0条',1519350188,'127.0.0.1','system'),(133,1,'更新了即将到期天数1条',1519350188,'127.0.0.1','system'),(134,1,'更新借条发起和借条不同意为过期10条',1519350188,'127.0.0.1','system'),(135,1,'对借款1处理结果为借款失败',1519898561,'127.0.0.1','paper'),(136,1,'对借款10处理结果为借款失败',1520390096,'127.0.0.1','paper'),(137,1,'对借款9处理结果为借款失败',1520390121,'127.0.0.1','paper'),(138,1,'对用户张三的操作:修改额度0.00为5555.',1520394398,'127.0.0.1','user'),(139,1,'对用户张三的操作:更改实名认证1为0.修改额度5555.00为55455.',1520394407,'127.0.0.1','user'),(140,1,'对用户张三的操作:更改实名认证0为1.修改额度55455.00为2.',1520394659,'127.0.0.1','user'),(141,1,'对用户张三的操作:修改额度2.00为2222.',1520394665,'127.0.0.1','user'),(142,1,'对用户张三的操作:修改额度2222.00为2222222.',1520394671,'127.0.0.1','user'),(143,1,'对用户张三的操作:修改额度2222222.00为22222224.',1520394746,'127.0.0.1','user'),(144,1,'对用户张三的操作:修改额度22222224.00为22222220.',1520394896,'127.0.0.1','user'),(145,1,'对用户张三的操作:修改额度22222220.00为22222221.',1520394960,'127.0.0.1','user'),(146,1,'对用户张三的操作:',1520399253,'127.0.0.1','user'),(147,1,'对用户张三的操作:',1520399270,'127.0.0.1','user'),(148,1,'对借款20180307-8-2处理结果为借款成功',1520400729,'127.0.0.1','paper'),(149,1,'对借款20180307-8-3处理结果为借款成功',1520404990,'127.0.0.1','paper'),(150,1,'对借款20180307-8-3的还款申请46更改状态为\"确认\",同时恢复了用户额度',1520492748,'127.0.0.1','paper'),(151,1,'对借款20180307-8-3的还款申请45更改状态为\"确认\",同时恢复了用户额度',1520493040,'127.0.0.1','paper'),(152,1,'对借款20180308-8-1处理结果为借款成功',1520493542,'127.0.0.1','paper'),(153,1,'对借款20180308-8-1的还款申请47更改状态为\"确认\",同时恢复了用户额度',1520493620,'127.0.0.1','paper'),(154,1,'编辑网站配置',1520495539,'127.0.0.1','config'),(155,1,'编辑网站配置',1520495560,'127.0.0.1','config'),(156,1,'编辑网站配置',1520495590,'127.0.0.1','config'),(157,1,'编辑网站配置',1520495678,'127.0.0.1','config'),(158,1,'编辑网站配置',1520496012,'127.0.0.1','config'),(159,1,'编辑网站配置',1520496058,'127.0.0.1','config'),(160,1,'编辑网站配置',1520496170,'127.0.0.1','config'),(161,1,'编辑网站配置',1520496175,'127.0.0.1','config'),(162,1,'编辑网站配置',1520496494,'127.0.0.1','config'),(163,1,'编辑网站配置',1520496566,'127.0.0.1','config'),(164,1,'编辑网站配置',1520496683,'127.0.0.1','config'),(165,1,'编辑网站配置',1520496701,'127.0.0.1','config'),(166,1,'编辑网站配置',1520496709,'127.0.0.1','config'),(167,1,'编辑网站配置',1520496721,'127.0.0.1','config'),(168,1,'编辑网站配置',1520496739,'127.0.0.1','config'),(169,1,'对借款20180308-8-1处理结果为借款成功',1520499547,'127.0.0.1','paper'),(170,1,'对借款20180308-8-1的还款申请48更改状态为\"确认\",同时恢复了用户额度',1520499625,'127.0.0.1','paper'),(171,1,'对借款20180308-8-1520500113处理结果为借款成功',1520500124,'127.0.0.1','paper');
/*!40000 ALTER TABLE `cmf_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_admin_menu`
--

DROP TABLE IF EXISTS `cmf_admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parent_id`),
  KEY `model` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_admin_menu`
--

LOCK TABLES `cmf_admin_menu` WRITE;
/*!40000 ALTER TABLE `cmf_admin_menu` DISABLE KEYS */;
INSERT INTO `cmf_admin_menu` VALUES (1,0,0,1,20,'admin','Plugin','default','','插件管理','cloud','插件管理'),(2,1,1,1,10000,'admin','Hook','index','','钩子管理','','钩子管理'),(3,2,1,0,10000,'admin','Hook','plugins','','钩子插件管理','','钩子插件管理'),(4,2,2,0,10000,'admin','Hook','pluginListOrder','','钩子插件排序','','钩子插件排序'),(5,2,1,0,10000,'admin','Hook','sync','','同步钩子','','同步钩子'),(6,0,0,1,0,'admin','Setting','default','','设置','cogs','系统设置入口'),(7,6,1,1,50,'admin','Link','index','','友情链接','','友情链接管理'),(8,7,1,0,10000,'admin','Link','add','','添加友情链接','','添加友情链接'),(9,7,2,0,10000,'admin','Link','addPost','','添加友情链接提交保存','','添加友情链接提交保存'),(10,7,1,0,10000,'admin','Link','edit','','编辑友情链接','','编辑友情链接'),(11,7,2,0,10000,'admin','Link','editPost','','编辑友情链接提交保存','','编辑友情链接提交保存'),(12,7,2,0,10000,'admin','Link','delete','','删除友情链接','','删除友情链接'),(13,7,2,0,10000,'admin','Link','listOrder','','友情链接排序','','友情链接排序'),(14,7,2,0,10000,'admin','Link','toggle','','友情链接显示隐藏','','友情链接显示隐藏'),(15,6,1,1,10,'admin','Mailer','index','','邮箱配置','','邮箱配置'),(16,15,2,0,10000,'admin','Mailer','indexPost','','邮箱配置提交保存','','邮箱配置提交保存'),(17,15,1,0,10000,'admin','Mailer','template','','邮件模板','','邮件模板'),(18,15,2,0,10000,'admin','Mailer','templatePost','','邮件模板提交','','邮件模板提交'),(19,15,1,0,10000,'admin','Mailer','test','','邮件发送测试','','邮件发送测试'),(20,6,1,0,10000,'admin','Menu','index','','后台菜单','','后台菜单管理'),(21,20,1,0,10000,'admin','Menu','lists','','所有菜单','','后台所有菜单列表'),(22,20,1,0,10000,'admin','Menu','add','','后台菜单添加','','后台菜单添加'),(23,20,2,0,10000,'admin','Menu','addPost','','后台菜单添加提交保存','','后台菜单添加提交保存'),(24,20,1,0,10000,'admin','Menu','edit','','后台菜单编辑','','后台菜单编辑'),(25,20,2,0,10000,'admin','Menu','editPost','','后台菜单编辑提交保存','','后台菜单编辑提交保存'),(26,20,2,0,10000,'admin','Menu','delete','','后台菜单删除','','后台菜单删除'),(27,20,2,0,10000,'admin','Menu','listOrder','','后台菜单排序','','后台菜单排序'),(28,20,1,0,10000,'admin','Menu','getActions','','导入新后台菜单','','导入新后台菜单'),(29,6,1,1,30,'admin','Nav','index','','导航管理','','导航管理'),(30,29,1,0,10000,'admin','Nav','add','','添加导航','','添加导航'),(31,29,2,0,10000,'admin','Nav','addPost','','添加导航提交保存','','添加导航提交保存'),(32,29,1,0,10000,'admin','Nav','edit','','编辑导航','','编辑导航'),(33,29,2,0,10000,'admin','Nav','editPost','','编辑导航提交保存','','编辑导航提交保存'),(34,29,2,0,10000,'admin','Nav','delete','','删除导航','','删除导航'),(35,29,1,0,10000,'admin','NavMenu','index','','导航菜单','','导航菜单'),(36,35,1,0,10000,'admin','NavMenu','add','','添加导航菜单','','添加导航菜单'),(37,35,2,0,10000,'admin','NavMenu','addPost','','添加导航菜单提交保存','','添加导航菜单提交保存'),(38,35,1,0,10000,'admin','NavMenu','edit','','编辑导航菜单','','编辑导航菜单'),(39,35,2,0,10000,'admin','NavMenu','editPost','','编辑导航菜单提交保存','','编辑导航菜单提交保存'),(40,35,2,0,10000,'admin','NavMenu','delete','','删除导航菜单','','删除导航菜单'),(41,35,2,0,10000,'admin','NavMenu','listOrder','','导航菜单排序','','导航菜单排序'),(42,1,1,1,10000,'admin','Plugin','index','','插件列表','','插件列表'),(43,42,2,0,10000,'admin','Plugin','toggle','','插件启用禁用','','插件启用禁用'),(44,42,1,0,10000,'admin','Plugin','setting','','插件设置','','插件设置'),(45,42,2,0,10000,'admin','Plugin','settingPost','','插件设置提交','','插件设置提交'),(46,42,2,0,10000,'admin','Plugin','install','','插件安装','','插件安装'),(47,42,2,0,10000,'admin','Plugin','update','','插件更新','','插件更新'),(48,42,2,0,10000,'admin','Plugin','uninstall','','卸载插件','','卸载插件'),(49,109,0,1,10000,'admin','User','default','','管理组','','管理组'),(50,49,1,1,10000,'admin','Rbac','index','','角色管理','','角色管理'),(51,50,1,0,10000,'admin','Rbac','roleAdd','','添加角色','','添加角色'),(52,50,2,0,10000,'admin','Rbac','roleAddPost','','添加角色提交','','添加角色提交'),(53,50,1,0,10000,'admin','Rbac','roleEdit','','编辑角色','','编辑角色'),(54,50,2,0,10000,'admin','Rbac','roleEditPost','','编辑角色提交','','编辑角色提交'),(55,50,2,0,10000,'admin','Rbac','roleDelete','','删除角色','','删除角色'),(56,50,1,0,10000,'admin','Rbac','authorize','','设置角色权限','','设置角色权限'),(57,50,2,0,10000,'admin','Rbac','authorizePost','','角色授权提交','','角色授权提交'),(58,0,1,0,10000,'admin','RecycleBin','index','','回收站','','回收站'),(59,58,2,0,10000,'admin','RecycleBin','restore','','回收站还原','','回收站还原'),(60,58,2,0,10000,'admin','RecycleBin','delete','','回收站彻底删除','','回收站彻底删除'),(61,6,1,1,10000,'admin','Route','index','','URL美化','','URL规则管理'),(62,61,1,0,10000,'admin','Route','add','','添加路由规则','','添加路由规则'),(63,61,2,0,10000,'admin','Route','addPost','','添加路由规则提交','','添加路由规则提交'),(64,61,1,0,10000,'admin','Route','edit','','路由规则编辑','','路由规则编辑'),(65,61,2,0,10000,'admin','Route','editPost','','路由规则编辑提交','','路由规则编辑提交'),(66,61,2,0,10000,'admin','Route','delete','','路由规则删除','','路由规则删除'),(67,61,2,0,10000,'admin','Route','ban','','路由规则禁用','','路由规则禁用'),(68,61,2,0,10000,'admin','Route','open','','路由规则启用','','路由规则启用'),(69,61,2,0,10000,'admin','Route','listOrder','','路由规则排序','','路由规则排序'),(70,61,1,0,10000,'admin','Route','select','','选择URL','','选择URL'),(71,6,1,1,0,'admin','Setting','site','','网站信息','','网站信息'),(72,71,2,0,10000,'admin','Setting','sitePost','','网站信息设置提交','','网站信息设置提交'),(73,6,1,1,10000,'admin','Setting','password','','密码修改','','密码修改'),(74,73,2,0,10000,'admin','Setting','passwordPost','','密码修改提交','','密码修改提交'),(75,6,1,1,10000,'admin','Setting','upload','','上传设置','','上传设置'),(76,75,2,0,10000,'admin','Setting','uploadPost','','上传设置提交','','上传设置提交'),(77,6,1,0,10000,'admin','Setting','clearCache','','清除缓存','','清除缓存'),(78,6,1,1,40,'admin','Slide','index','','幻灯片管理','','幻灯片管理'),(79,78,1,0,10000,'admin','Slide','add','','添加幻灯片','','添加幻灯片'),(80,78,2,0,10000,'admin','Slide','addPost','','添加幻灯片提交','','添加幻灯片提交'),(81,78,1,0,10000,'admin','Slide','edit','','编辑幻灯片','','编辑幻灯片'),(82,78,2,0,10000,'admin','Slide','editPost','','编辑幻灯片提交','','编辑幻灯片提交'),(83,78,2,0,10000,'admin','Slide','delete','','删除幻灯片','','删除幻灯片'),(84,78,1,0,10000,'admin','SlideItem','index','','幻灯片页面列表','','幻灯片页面列表'),(85,84,1,0,10000,'admin','SlideItem','add','','幻灯片页面添加','','幻灯片页面添加'),(86,84,2,0,10000,'admin','SlideItem','addPost','','幻灯片页面添加提交','','幻灯片页面添加提交'),(87,84,1,0,10000,'admin','SlideItem','edit','','幻灯片页面编辑','','幻灯片页面编辑'),(88,84,2,0,10000,'admin','SlideItem','editPost','','幻灯片页面编辑提交','','幻灯片页面编辑提交'),(89,84,2,0,10000,'admin','SlideItem','delete','','幻灯片页面删除','','幻灯片页面删除'),(90,84,2,0,10000,'admin','SlideItem','ban','','幻灯片页面隐藏','','幻灯片页面隐藏'),(91,84,2,0,10000,'admin','SlideItem','cancelBan','','幻灯片页面显示','','幻灯片页面显示'),(92,84,2,0,10000,'admin','SlideItem','listOrder','','幻灯片页面排序','','幻灯片页面排序'),(93,6,1,1,10000,'admin','Storage','index','','文件存储','','文件存储'),(94,93,2,0,10000,'admin','Storage','settingPost','','文件存储设置提交','','文件存储设置提交'),(95,6,1,1,20,'admin','Theme','index','','模板管理','','模板管理'),(96,95,1,0,10000,'admin','Theme','install','','安装模板','','安装模板'),(97,95,2,0,10000,'admin','Theme','uninstall','','卸载模板','','卸载模板'),(98,95,2,0,10000,'admin','Theme','installTheme','','模板安装','','模板安装'),(99,95,2,0,10000,'admin','Theme','update','','模板更新','','模板更新'),(100,95,2,0,10000,'admin','Theme','active','','启用模板','','启用模板'),(101,95,1,0,10000,'admin','Theme','files','','模板文件列表','','启用模板'),(102,95,1,0,10000,'admin','Theme','fileSetting','','模板文件设置','','模板文件设置'),(103,95,1,0,10000,'admin','Theme','fileArrayData','','模板文件数组数据列表','','模板文件数组数据列表'),(104,95,2,0,10000,'admin','Theme','fileArrayDataEdit','','模板文件数组数据添加编辑','','模板文件数组数据添加编辑'),(105,95,2,0,10000,'admin','Theme','fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存','','模板文件数组数据添加编辑提交保存'),(106,95,2,0,10000,'admin','Theme','fileArrayDataDelete','','模板文件数组数据删除','','模板文件数组数据删除'),(107,95,2,0,10000,'admin','Theme','settingPost','','模板文件编辑提交保存','','模板文件编辑提交保存'),(108,95,1,0,10000,'admin','Theme','dataSource','','模板文件设置数据源','','模板文件设置数据源'),(109,0,0,1,10,'user','AdminIndex','default','','用户管理','group','用户管理'),(110,49,1,1,10000,'admin','User','index','','管理员','','管理员管理'),(111,110,1,0,10000,'admin','User','add','','管理员添加','','管理员添加'),(112,110,2,0,10000,'admin','User','addPost','','管理员添加提交','','管理员添加提交'),(113,110,1,0,10000,'admin','User','edit','','管理员编辑','','管理员编辑'),(114,110,2,0,10000,'admin','User','editPost','','管理员编辑提交','','管理员编辑提交'),(115,6,1,1,10000,'admin','User','userInfo','','个人信息','','管理员个人信息修改'),(116,115,2,0,10000,'admin','User','userInfoPost','','管理员个人信息修改提交','','管理员个人信息修改提交'),(117,110,2,0,10000,'admin','User','delete','','管理员删除','','管理员删除'),(118,110,2,0,10000,'admin','User','ban','','停用管理员','','停用管理员'),(119,110,2,0,10000,'admin','User','cancelBan','','启用管理员','','启用管理员'),(120,0,0,1,30,'portal','AdminIndex','default','','门户管理','th','门户管理'),(121,120,1,1,10000,'portal','AdminArticle','index','','文章管理','','文章列表'),(122,121,1,0,10000,'portal','AdminArticle','add','','添加文章','','添加文章'),(123,121,2,0,10000,'portal','AdminArticle','addPost','','添加文章提交','','添加文章提交'),(124,121,1,0,10000,'portal','AdminArticle','edit','','编辑文章','','编辑文章'),(125,121,2,0,10000,'portal','AdminArticle','editPost','','编辑文章提交','','编辑文章提交'),(126,121,2,0,10000,'portal','AdminArticle','delete','','文章删除','','文章删除'),(127,121,2,0,10000,'portal','AdminArticle','publish','','文章发布','','文章发布'),(128,121,2,0,10000,'portal','AdminArticle','top','','文章置顶','','文章置顶'),(129,121,2,0,10000,'portal','AdminArticle','recommend','','文章推荐','','文章推荐'),(130,121,2,0,10000,'portal','AdminArticle','listOrder','','文章排序','','文章排序'),(131,120,1,1,10000,'portal','AdminCategory','index','','分类管理','','文章分类列表'),(132,131,1,0,10000,'portal','AdminCategory','add','','添加文章分类','','添加文章分类'),(133,131,2,0,10000,'portal','AdminCategory','addPost','','添加文章分类提交','','添加文章分类提交'),(134,131,1,0,10000,'portal','AdminCategory','edit','','编辑文章分类','','编辑文章分类'),(135,131,2,0,10000,'portal','AdminCategory','editPost','','编辑文章分类提交','','编辑文章分类提交'),(136,131,1,0,10000,'portal','AdminCategory','select','','文章分类选择对话框','','文章分类选择对话框'),(137,131,2,0,10000,'portal','AdminCategory','listOrder','','文章分类排序','','文章分类排序'),(138,131,2,0,10000,'portal','AdminCategory','delete','','删除文章分类','','删除文章分类'),(139,120,1,1,10000,'portal','AdminPage','index','','页面管理','','页面管理'),(140,139,1,0,10000,'portal','AdminPage','add','','添加页面','','添加页面'),(141,139,2,0,10000,'portal','AdminPage','addPost','','添加页面提交','','添加页面提交'),(142,139,1,0,10000,'portal','AdminPage','edit','','编辑页面','','编辑页面'),(143,139,2,0,10000,'portal','AdminPage','editPost','','编辑页面提交','','编辑页面提交'),(144,139,2,0,10000,'portal','AdminPage','delete','','删除页面','','删除页面'),(145,120,1,1,10000,'portal','AdminTag','index','','文章标签','','文章标签'),(146,145,1,0,10000,'portal','AdminTag','add','','添加文章标签','','添加文章标签'),(147,145,2,0,10000,'portal','AdminTag','addPost','','添加文章标签提交','','添加文章标签提交'),(148,145,2,0,10000,'portal','AdminTag','upStatus','','更新标签状态','','更新标签状态'),(149,145,2,0,10000,'portal','AdminTag','delete','','删除文章标签','','删除文章标签'),(150,0,1,0,10000,'user','AdminAsset','index','','资源管理','file','资源管理列表'),(151,150,2,0,10000,'user','AdminAsset','delete','','删除文件','','删除文件'),(152,109,0,1,10000,'user','AdminIndex','default1','','用户组','','用户组'),(153,152,1,1,10000,'user','AdminIndex','index','','本站用户','','本站用户'),(154,153,2,0,10000,'user','AdminIndex','ban','','本站用户拉黑','','本站用户拉黑'),(155,153,2,0,10000,'user','AdminIndex','cancelBan','','本站用户启用','','本站用户启用'),(156,152,1,1,10000,'user','AdminOauth','index','','第三方用户','','第三方用户'),(157,156,2,0,10000,'user','AdminOauth','delete','','删除第三方用户绑定','','删除第三方用户绑定'),(158,6,1,1,10000,'user','AdminUserAction','index','','用户操作管理','','用户操作管理'),(159,158,1,0,10000,'user','AdminUserAction','edit','','编辑用户操作','','编辑用户操作'),(160,158,2,0,10000,'user','AdminUserAction','editPost','','编辑用户操作提交','','编辑用户操作提交'),(161,158,1,0,10000,'user','AdminUserAction','sync','','同步用户操作','','同步用户操作'),(162,49,1,1,0,'admin','Action','index','','管理员操作记录','','管理员操作记录'),(163,0,1,1,15,'admin','Config','index','','网站配置','','网站配置'),(164,163,2,0,10,'admin','Config','editPost','','网站配置编辑1','','网站配置编辑1'),(170,0,1,1,100,'admin','Sql','index','','数据库操作','','数据库操作'),(171,170,1,0,10,'admin','Sql','add','','数据库备份','','数据库备份'),(172,170,1,0,10,'admin','Sql','restore','','数据库还原','','数据库还原'),(173,170,2,0,10,'admin','Sql','del','','数据库删除备份','','数据库删除备份'),(174,170,2,0,10,'admin','Sql','dels','','数据库批量删除备份','','数据库批量删除备份'),(175,170,1,0,10,'admin','Sql','query','',' 数据库查询','',' 数据库查询'),(176,0,0,1,10,'admin','Paper','default','','借款管理','','借款管理'),(177,176,1,1,0,'admin','Paper','index','','未完成借款列表','','未完成借款列表'),(178,177,1,0,0,'admin','Paper','info','','未完成借款查看','','未完成借款查看'),(179,177,1,0,0,'admin','Paper','edit','','未完成借款查看','','未完成借款查看'),(180,177,2,0,0,'admin','Paper','editPost','','未完成借款编辑执行','','未完成借款编辑执行'),(187,176,1,1,10,'admin','PaperOld','index','','已完成借款列表','','已完成借款列表'),(188,187,1,0,10,'admin','PaperOld','edit','','已完成借款查看','','已完成借款查看'),(189,187,2,0,10,'admin','PaperOld','editPost','','已完成借款编辑执行','','已完成借款编辑执行'),(190,176,1,1,10,'admin','Reply','index','','借款申请列表','','借款申请列表'),(191,190,1,0,10,'admin','Reply','edit','','借款申请查看','','借款申请查看'),(192,190,2,0,10,'admin','Reply','editPost','','借款申请编辑执行','','借款申请编辑执行'),(193,0,0,1,10,'admin','Count','default','','数据统计','','数据统计'),(194,193,1,1,0,'admin','Count','index','','12月统计','','12月统计'),(195,193,1,1,10,'admin','Count','search','','统计查询','','统计查询'),(196,0,1,1,100,'admin','Log','index','','日志管理','','日志管理'),(197,196,2,0,10,'admin','Log','clear','','日志清空','','日志清空'),(198,196,2,0,10,'admin','Log','download','','日志下载','','日志下载'),(199,0,1,1,20,'admin','Guide','index','','协议手册管理','','协议手册管理'),(200,199,1,0,10,'admin','Guide','edit','','协议手册编辑','','协议手册编辑'),(201,199,2,0,10,'admin','Guide','editPost','','协议手册编辑1','','协议手册编辑1'),(202,199,2,0,10,'admin','Guide','delete','','协议手册删除','','协议手册删除'),(203,199,1,0,10,'admin','Guide','add','','协议手册添加','','协议手册添加'),(204,199,2,0,10,'admin','Guide','addPost','','协议手册添加1','','协议手册添加1'),(205,153,1,0,10000,'user','AdminIndex','info','','用户详情','','用户详情'),(206,153,2,0,10000,'user','AdminIndex','editPost','','用户详情执行','','用户详情执行'),(207,162,2,0,0,'admin','Action','clear','','清空系统任务','','清空系统任务'),(208,0,1,1,10,'admin','Banner','index','','Banner图管理','','Banner图管理'),(209,208,1,0,10,'admin','Banner','edit','','Banner图编辑','','Banner图编辑'),(210,208,2,0,10,'admin','Banner','editPost','','Banner图编辑1','','Banner图编辑1'),(211,208,2,0,10,'admin','Banner','delete','','Banner图删除','','Banner图删除'),(212,208,1,0,10,'admin','Banner','add','','Banner图添加','','Banner图添加'),(213,208,2,0,10,'admin','Banner','addPost','','Banner图添加1','','Banner图添加1');
/*!40000 ALTER TABLE `cmf_admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_article`
--

DROP TABLE IF EXISTS `cmf_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文章名',
  `insert_time` int(11) NOT NULL DEFAULT '0' COMMENT '插入时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `content` text COMMENT '文档内容',
  `sort` tinyint(4) NOT NULL DEFAULT '10' COMMENT '排序',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1普通协议，2基本协议不能删除协议',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='文档说明';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_article`
--

LOCK TABLES `cmf_article` WRITE;
/*!40000 ALTER TABLE `cmf_article` DISABLE KEYS */;
INSERT INTO `cmf_article` VALUES (1,'用户协议',0,0,'用户协议一二三',10,1);
/*!40000 ALTER TABLE `cmf_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_asset`
--

DROP TABLE IF EXISTS `cmf_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_asset`
--

LOCK TABLES `cmf_asset` WRITE;
/*!40000 ALTER TABLE `cmf_asset` DISABLE KEYS */;
INSERT INTO `cmf_asset` VALUES (1,1,526754,1520501264,1,0,'ba91c8928653a01480ef0e82fbf384c4674db0870e317b4b50aa01da6ff6dc84','8750_2560x1600.jpg','admin/20180308/c4d180f4c22ad5b9c6597fee1ca4c51d.jpg','ba91c8928653a01480ef0e82fbf384c4','a0dd98be534105f406136172e7feec517da55afc','jpg',NULL);
/*!40000 ALTER TABLE `cmf_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_auth_access`
--

DROP TABLE IF EXISTS `cmf_auth_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COMMENT='权限授权表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_auth_access`
--

LOCK TABLES `cmf_auth_access` WRITE;
/*!40000 ALTER TABLE `cmf_auth_access` DISABLE KEYS */;
INSERT INTO `cmf_auth_access` VALUES (54,3,'admin/setting/default','admin_url'),(55,3,'admin/setting/password','admin_url'),(56,3,'admin/setting/passwordpost','admin_url'),(57,3,'admin/setting/clearcache','admin_url'),(58,3,'admin/user/userinfo','admin_url'),(59,3,'admin/user/userinfopost','admin_url'),(60,3,'user/adminindex/default','admin_url'),(61,3,'admin/user/default','admin_url'),(62,3,'admin/action/index','admin_url'),(63,3,'admin/action/clear','admin_url'),(64,3,'admin/user/index','admin_url'),(65,3,'admin/user/add','admin_url'),(66,3,'admin/user/addpost','admin_url'),(67,3,'admin/user/edit','admin_url'),(68,3,'admin/user/editpost','admin_url'),(69,3,'admin/user/delete','admin_url'),(70,3,'admin/user/ban','admin_url'),(71,3,'admin/user/cancelban','admin_url'),(72,3,'user/adminindex/default1','admin_url'),(73,3,'user/adminindex/index','admin_url'),(74,3,'user/adminindex/ban','admin_url'),(75,3,'user/adminindex/cancelban','admin_url'),(76,3,'user/adminindex/info','admin_url'),(77,3,'user/adminindex/editpost','admin_url'),(78,3,'admin/paper/default','admin_url'),(79,3,'admin/paper/index','admin_url'),(80,3,'admin/paper/info','admin_url'),(81,3,'admin/paper/edit','admin_url'),(82,3,'admin/paper/editpost','admin_url'),(83,3,'admin/paperold/index','admin_url'),(84,3,'admin/paperold/edit','admin_url'),(85,3,'admin/paperold/editpost','admin_url'),(86,3,'admin/reply/index','admin_url'),(87,3,'admin/reply/edit','admin_url'),(88,3,'admin/reply/editpost','admin_url'),(89,3,'admin/count/default','admin_url'),(90,3,'admin/count/index','admin_url'),(91,3,'admin/count/search','admin_url'),(92,3,'admin/banner/index','admin_url'),(93,3,'admin/banner/edit','admin_url'),(94,3,'admin/banner/editpost','admin_url'),(95,3,'admin/banner/delete','admin_url'),(96,3,'admin/banner/add','admin_url'),(97,3,'admin/banner/addpost','admin_url'),(98,3,'admin/config/index','admin_url'),(99,3,'admin/config/editpost','admin_url'),(100,3,'admin/guide/index','admin_url'),(101,3,'admin/guide/edit','admin_url'),(102,3,'admin/guide/editpost','admin_url'),(103,3,'admin/guide/delete','admin_url'),(104,3,'admin/guide/add','admin_url'),(105,3,'admin/guide/addpost','admin_url'),(106,3,'admin/sql/index','admin_url'),(107,3,'admin/sql/add','admin_url'),(108,3,'admin/sql/restore','admin_url'),(109,3,'admin/sql/del','admin_url'),(110,3,'admin/sql/dels','admin_url'),(111,3,'admin/sql/query','admin_url'),(112,3,'admin/log/index','admin_url'),(113,3,'admin/log/clear','admin_url'),(114,3,'admin/log/download','admin_url'),(115,3,'admin/recyclebin/index','admin_url'),(116,3,'admin/recyclebin/restore','admin_url'),(117,3,'admin/recyclebin/delete','admin_url'),(118,3,'user/adminasset/index','admin_url'),(119,3,'user/adminasset/delete','admin_url'),(120,2,'admin/setting/default','admin_url'),(121,2,'admin/setting/password','admin_url'),(122,2,'admin/setting/passwordpost','admin_url'),(123,2,'admin/setting/clearcache','admin_url'),(124,2,'admin/user/userinfo','admin_url'),(125,2,'admin/user/userinfopost','admin_url'),(126,2,'user/adminindex/default','admin_url'),(127,2,'admin/user/default','admin_url'),(128,2,'admin/action/index','admin_url'),(129,2,'admin/action/clear','admin_url'),(130,2,'admin/user/index','admin_url'),(131,2,'admin/user/add','admin_url'),(132,2,'admin/user/addpost','admin_url'),(133,2,'admin/user/edit','admin_url'),(134,2,'admin/user/editpost','admin_url'),(135,2,'admin/user/delete','admin_url'),(136,2,'admin/user/ban','admin_url'),(137,2,'admin/user/cancelban','admin_url'),(138,2,'user/adminindex/default1','admin_url'),(139,2,'user/adminindex/index','admin_url'),(140,2,'user/adminindex/ban','admin_url'),(141,2,'user/adminindex/cancelban','admin_url'),(142,2,'user/adminindex/info','admin_url'),(143,2,'user/adminindex/editpost','admin_url'),(144,2,'admin/paper/default','admin_url'),(145,2,'admin/paper/index','admin_url'),(146,2,'admin/paper/info','admin_url'),(147,2,'admin/paper/edit','admin_url'),(148,2,'admin/paper/editpost','admin_url'),(149,2,'admin/paperold/index','admin_url'),(150,2,'admin/paperold/edit','admin_url'),(151,2,'admin/paperold/editpost','admin_url'),(152,2,'admin/reply/index','admin_url'),(153,2,'admin/reply/edit','admin_url'),(154,2,'admin/reply/editpost','admin_url'),(155,2,'admin/count/default','admin_url'),(156,2,'admin/count/index','admin_url'),(157,2,'admin/count/search','admin_url'),(158,2,'admin/banner/index','admin_url'),(159,2,'admin/banner/edit','admin_url'),(160,2,'admin/banner/editpost','admin_url'),(161,2,'admin/banner/delete','admin_url'),(162,2,'admin/banner/add','admin_url'),(163,2,'admin/banner/addpost','admin_url'),(164,2,'admin/guide/index','admin_url'),(165,2,'admin/guide/edit','admin_url'),(166,2,'admin/guide/editpost','admin_url'),(167,2,'admin/guide/delete','admin_url'),(168,2,'admin/guide/add','admin_url'),(169,2,'admin/guide/addpost','admin_url');
/*!40000 ALTER TABLE `cmf_auth_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_auth_rule`
--

DROP TABLE IF EXISTS `cmf_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_auth_rule`
--

LOCK TABLES `cmf_auth_rule` WRITE;
/*!40000 ALTER TABLE `cmf_auth_rule` DISABLE KEYS */;
INSERT INTO `cmf_auth_rule` VALUES (1,1,'admin','admin_url','admin/Hook/index','','钩子管理',''),(2,1,'admin','admin_url','admin/Hook/plugins','','钩子插件管理',''),(3,1,'admin','admin_url','admin/Hook/pluginListOrder','','钩子插件排序',''),(4,1,'admin','admin_url','admin/Hook/sync','','同步钩子',''),(5,1,'admin','admin_url','admin/Link/index','','友情链接',''),(6,1,'admin','admin_url','admin/Link/add','','添加友情链接',''),(7,1,'admin','admin_url','admin/Link/addPost','','添加友情链接提交保存',''),(8,1,'admin','admin_url','admin/Link/edit','','编辑友情链接',''),(9,1,'admin','admin_url','admin/Link/editPost','','编辑友情链接提交保存',''),(10,1,'admin','admin_url','admin/Link/delete','','删除友情链接',''),(11,1,'admin','admin_url','admin/Link/listOrder','','友情链接排序',''),(12,1,'admin','admin_url','admin/Link/toggle','','友情链接显示隐藏',''),(13,1,'admin','admin_url','admin/Mailer/index','','邮箱配置',''),(14,1,'admin','admin_url','admin/Mailer/indexPost','','邮箱配置提交保存',''),(15,1,'admin','admin_url','admin/Mailer/template','','邮件模板',''),(16,1,'admin','admin_url','admin/Mailer/templatePost','','邮件模板提交',''),(17,1,'admin','admin_url','admin/Mailer/test','','邮件发送测试',''),(18,1,'admin','admin_url','admin/Menu/index','','后台菜单',''),(19,1,'admin','admin_url','admin/Menu/lists','','所有菜单',''),(20,1,'admin','admin_url','admin/Menu/add','','后台菜单添加',''),(21,1,'admin','admin_url','admin/Menu/addPost','','后台菜单添加提交保存',''),(22,1,'admin','admin_url','admin/Menu/edit','','后台菜单编辑',''),(23,1,'admin','admin_url','admin/Menu/editPost','','后台菜单编辑提交保存',''),(24,1,'admin','admin_url','admin/Menu/delete','','后台菜单删除',''),(25,1,'admin','admin_url','admin/Menu/listOrder','','后台菜单排序',''),(26,1,'admin','admin_url','admin/Menu/getActions','','导入新后台菜单',''),(27,1,'admin','admin_url','admin/Nav/index','','导航管理',''),(28,1,'admin','admin_url','admin/Nav/add','','添加导航',''),(29,1,'admin','admin_url','admin/Nav/addPost','','添加导航提交保存',''),(30,1,'admin','admin_url','admin/Nav/edit','','编辑导航',''),(31,1,'admin','admin_url','admin/Nav/editPost','','编辑导航提交保存',''),(32,1,'admin','admin_url','admin/Nav/delete','','删除导航',''),(33,1,'admin','admin_url','admin/NavMenu/index','','导航菜单',''),(34,1,'admin','admin_url','admin/NavMenu/add','','添加导航菜单',''),(35,1,'admin','admin_url','admin/NavMenu/addPost','','添加导航菜单提交保存',''),(36,1,'admin','admin_url','admin/NavMenu/edit','','编辑导航菜单',''),(37,1,'admin','admin_url','admin/NavMenu/editPost','','编辑导航菜单提交保存',''),(38,1,'admin','admin_url','admin/NavMenu/delete','','删除导航菜单',''),(39,1,'admin','admin_url','admin/NavMenu/listOrder','','导航菜单排序',''),(40,1,'admin','admin_url','admin/Plugin/default','','插件管理',''),(41,1,'admin','admin_url','admin/Plugin/index','','插件列表',''),(42,1,'admin','admin_url','admin/Plugin/toggle','','插件启用禁用',''),(43,1,'admin','admin_url','admin/Plugin/setting','','插件设置',''),(44,1,'admin','admin_url','admin/Plugin/settingPost','','插件设置提交',''),(45,1,'admin','admin_url','admin/Plugin/install','','插件安装',''),(46,1,'admin','admin_url','admin/Plugin/update','','插件更新',''),(47,1,'admin','admin_url','admin/Plugin/uninstall','','卸载插件',''),(48,1,'admin','admin_url','admin/Rbac/index','','角色管理',''),(49,1,'admin','admin_url','admin/Rbac/roleAdd','','添加角色',''),(50,1,'admin','admin_url','admin/Rbac/roleAddPost','','添加角色提交',''),(51,1,'admin','admin_url','admin/Rbac/roleEdit','','编辑角色',''),(52,1,'admin','admin_url','admin/Rbac/roleEditPost','','编辑角色提交',''),(53,1,'admin','admin_url','admin/Rbac/roleDelete','','删除角色',''),(54,1,'admin','admin_url','admin/Rbac/authorize','','设置角色权限',''),(55,1,'admin','admin_url','admin/Rbac/authorizePost','','角色授权提交',''),(56,1,'admin','admin_url','admin/RecycleBin/index','','回收站',''),(57,1,'admin','admin_url','admin/RecycleBin/restore','','回收站还原',''),(58,1,'admin','admin_url','admin/RecycleBin/delete','','回收站彻底删除',''),(59,1,'admin','admin_url','admin/Route/index','','URL美化',''),(60,1,'admin','admin_url','admin/Route/add','','添加路由规则',''),(61,1,'admin','admin_url','admin/Route/addPost','','添加路由规则提交',''),(62,1,'admin','admin_url','admin/Route/edit','','路由规则编辑',''),(63,1,'admin','admin_url','admin/Route/editPost','','路由规则编辑提交',''),(64,1,'admin','admin_url','admin/Route/delete','','路由规则删除',''),(65,1,'admin','admin_url','admin/Route/ban','','路由规则禁用',''),(66,1,'admin','admin_url','admin/Route/open','','路由规则启用',''),(67,1,'admin','admin_url','admin/Route/listOrder','','路由规则排序',''),(68,1,'admin','admin_url','admin/Route/select','','选择URL',''),(69,1,'admin','admin_url','admin/Setting/default','','设置',''),(70,1,'admin','admin_url','admin/Setting/site','','网站信息',''),(71,1,'admin','admin_url','admin/Setting/sitePost','','网站信息设置提交',''),(72,1,'admin','admin_url','admin/Setting/password','','密码修改',''),(73,1,'admin','admin_url','admin/Setting/passwordPost','','密码修改提交',''),(74,1,'admin','admin_url','admin/Setting/upload','','上传设置',''),(75,1,'admin','admin_url','admin/Setting/uploadPost','','上传设置提交',''),(76,1,'admin','admin_url','admin/Setting/clearCache','','清除缓存',''),(77,1,'admin','admin_url','admin/Slide/index','','幻灯片管理',''),(78,1,'admin','admin_url','admin/Slide/add','','添加幻灯片',''),(79,1,'admin','admin_url','admin/Slide/addPost','','添加幻灯片提交',''),(80,1,'admin','admin_url','admin/Slide/edit','','编辑幻灯片',''),(81,1,'admin','admin_url','admin/Slide/editPost','','编辑幻灯片提交',''),(82,1,'admin','admin_url','admin/Slide/delete','','删除幻灯片',''),(83,1,'admin','admin_url','admin/SlideItem/index','','幻灯片页面列表',''),(84,1,'admin','admin_url','admin/SlideItem/add','','幻灯片页面添加',''),(85,1,'admin','admin_url','admin/SlideItem/addPost','','幻灯片页面添加提交',''),(86,1,'admin','admin_url','admin/SlideItem/edit','','幻灯片页面编辑',''),(87,1,'admin','admin_url','admin/SlideItem/editPost','','幻灯片页面编辑提交',''),(88,1,'admin','admin_url','admin/SlideItem/delete','','幻灯片页面删除',''),(89,1,'admin','admin_url','admin/SlideItem/ban','','幻灯片页面隐藏',''),(90,1,'admin','admin_url','admin/SlideItem/cancelBan','','幻灯片页面显示',''),(91,1,'admin','admin_url','admin/SlideItem/listOrder','','幻灯片页面排序',''),(92,1,'admin','admin_url','admin/Storage/index','','文件存储',''),(93,1,'admin','admin_url','admin/Storage/settingPost','','文件存储设置提交',''),(94,1,'admin','admin_url','admin/Theme/index','','模板管理',''),(95,1,'admin','admin_url','admin/Theme/install','','安装模板',''),(96,1,'admin','admin_url','admin/Theme/uninstall','','卸载模板',''),(97,1,'admin','admin_url','admin/Theme/installTheme','','模板安装',''),(98,1,'admin','admin_url','admin/Theme/update','','模板更新',''),(99,1,'admin','admin_url','admin/Theme/active','','启用模板',''),(100,1,'admin','admin_url','admin/Theme/files','','模板文件列表',''),(101,1,'admin','admin_url','admin/Theme/fileSetting','','模板文件设置',''),(102,1,'admin','admin_url','admin/Theme/fileArrayData','','模板文件数组数据列表',''),(103,1,'admin','admin_url','admin/Theme/fileArrayDataEdit','','模板文件数组数据添加编辑',''),(104,1,'admin','admin_url','admin/Theme/fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存',''),(105,1,'admin','admin_url','admin/Theme/fileArrayDataDelete','','模板文件数组数据删除',''),(106,1,'admin','admin_url','admin/Theme/settingPost','','模板文件编辑提交保存',''),(107,1,'admin','admin_url','admin/Theme/dataSource','','模板文件设置数据源',''),(108,1,'admin','admin_url','admin/User/default','','管理组',''),(109,1,'admin','admin_url','admin/User/index','','管理员',''),(110,1,'admin','admin_url','admin/User/add','','管理员添加',''),(111,1,'admin','admin_url','admin/User/addPost','','管理员添加提交',''),(112,1,'admin','admin_url','admin/User/edit','','管理员编辑',''),(113,1,'admin','admin_url','admin/User/editPost','','管理员编辑提交',''),(114,1,'admin','admin_url','admin/User/userInfo','','个人信息',''),(115,1,'admin','admin_url','admin/User/userInfoPost','','管理员个人信息修改提交',''),(116,1,'admin','admin_url','admin/User/delete','','管理员删除',''),(117,1,'admin','admin_url','admin/User/ban','','停用管理员',''),(118,1,'admin','admin_url','admin/User/cancelBan','','启用管理员',''),(119,1,'portal','admin_url','portal/AdminArticle/index','','文章管理',''),(120,1,'portal','admin_url','portal/AdminArticle/add','','添加文章',''),(121,1,'portal','admin_url','portal/AdminArticle/addPost','','添加文章提交',''),(122,1,'portal','admin_url','portal/AdminArticle/edit','','编辑文章',''),(123,1,'portal','admin_url','portal/AdminArticle/editPost','','编辑文章提交',''),(124,1,'portal','admin_url','portal/AdminArticle/delete','','文章删除',''),(125,1,'portal','admin_url','portal/AdminArticle/publish','','文章发布',''),(126,1,'portal','admin_url','portal/AdminArticle/top','','文章置顶',''),(127,1,'portal','admin_url','portal/AdminArticle/recommend','','文章推荐',''),(128,1,'portal','admin_url','portal/AdminArticle/listOrder','','文章排序',''),(129,1,'portal','admin_url','portal/AdminCategory/index','','分类管理',''),(130,1,'portal','admin_url','portal/AdminCategory/add','','添加文章分类',''),(131,1,'portal','admin_url','portal/AdminCategory/addPost','','添加文章分类提交',''),(132,1,'portal','admin_url','portal/AdminCategory/edit','','编辑文章分类',''),(133,1,'portal','admin_url','portal/AdminCategory/editPost','','编辑文章分类提交',''),(134,1,'portal','admin_url','portal/AdminCategory/select','','文章分类选择对话框',''),(135,1,'portal','admin_url','portal/AdminCategory/listOrder','','文章分类排序',''),(136,1,'portal','admin_url','portal/AdminCategory/delete','','删除文章分类',''),(137,1,'portal','admin_url','portal/AdminIndex/default','','门户管理',''),(138,1,'portal','admin_url','portal/AdminPage/index','','页面管理',''),(139,1,'portal','admin_url','portal/AdminPage/add','','添加页面',''),(140,1,'portal','admin_url','portal/AdminPage/addPost','','添加页面提交',''),(141,1,'portal','admin_url','portal/AdminPage/edit','','编辑页面',''),(142,1,'portal','admin_url','portal/AdminPage/editPost','','编辑页面提交',''),(143,1,'portal','admin_url','portal/AdminPage/delete','','删除页面',''),(144,1,'portal','admin_url','portal/AdminTag/index','','文章标签',''),(145,1,'portal','admin_url','portal/AdminTag/add','','添加文章标签',''),(146,1,'portal','admin_url','portal/AdminTag/addPost','','添加文章标签提交',''),(147,1,'portal','admin_url','portal/AdminTag/upStatus','','更新标签状态',''),(148,1,'portal','admin_url','portal/AdminTag/delete','','删除文章标签',''),(149,1,'user','admin_url','user/AdminAsset/index','','资源管理',''),(150,1,'user','admin_url','user/AdminAsset/delete','','删除文件',''),(151,1,'user','admin_url','user/AdminIndex/default','','用户管理',''),(152,1,'user','admin_url','user/AdminIndex/default1','','用户组',''),(153,1,'user','admin_url','user/AdminIndex/index','','本站用户',''),(154,1,'user','admin_url','user/AdminIndex/ban','','本站用户拉黑',''),(155,1,'user','admin_url','user/AdminIndex/cancelBan','','本站用户启用',''),(156,1,'user','admin_url','user/AdminOauth/index','','第三方用户',''),(157,1,'user','admin_url','user/AdminOauth/delete','','删除第三方用户绑定',''),(158,1,'user','admin_url','user/AdminUserAction/index','','用户操作管理',''),(159,1,'user','admin_url','user/AdminUserAction/edit','','编辑用户操作',''),(160,1,'user','admin_url','user/AdminUserAction/editPost','','编辑用户操作提交',''),(161,1,'user','admin_url','user/AdminUserAction/sync','','同步用户操作',''),(162,1,'admin','admin_url','admin/Action/index','','管理员操作记录',''),(163,1,'admin','admin_url','admin/Config/index','','网站配置',''),(164,1,'admin','admin_url','admin/Config/editPost','','网站配置编辑1',''),(165,1,'admin','admin_url','admin/Count/default','','数据统计',''),(166,1,'admin','admin_url','admin/Count/index','','12月统计',''),(167,1,'admin','admin_url','admin/Count/search','','统计查询',''),(168,1,'admin','admin_url','admin/Count/seller','','销售统计查询',''),(169,1,'admin','admin_url','admin/Count/buyer','','进货统计查询',''),(170,1,'admin','admin_url','admin/Sql/index','','数据库操作',''),(171,1,'admin','admin_url','admin/Sql/add','','数据库备份',''),(172,1,'admin','admin_url','admin/Sql/restore','','数据库还原',''),(173,1,'admin','admin_url','admin/Sql/del','','数据库删除备份',''),(174,1,'admin','admin_url','admin/Sql/dels','','数据库批量删除备份',''),(175,1,'admin','admin_url','admin/Sql/query','',' 数据库查询',''),(176,1,'admin','admin_url','admin/Paper/default','','借款管理',''),(177,1,'admin','admin_url','admin/Paper/index','','未完成借条列表',''),(178,1,'admin','admin_url','admin/Paper/info','','未完成借条查看',''),(179,1,'admin','admin_url','admin/Paper/edit','','未完成借条查看',''),(180,1,'admin','admin_url','admin/Paper/editPost','','未完成借条编辑执行',''),(181,1,'admin','admin_url','admin/PaperOld/edit','','已完成借条查看',''),(182,1,'admin','admin_url','admin/PaperOld/editPost','','已完成借条编辑执行',''),(183,1,'admin','admin_url','admin/PaperOld/index','','已完成借条列表',''),(184,1,'admin','admin_url','admin/Reply/index','','借条申请列表',''),(185,1,'admin','admin_url','admin/Reply/edit','','借条申请查看',''),(186,1,'admin','admin_url','admin/Reply/editPost','','借条申请编辑执行',''),(187,1,'admin','admin_url','admin/Log/index','','日志管理',''),(188,1,'admin','admin_url','admin/Log/clear','','日志清空',''),(189,1,'admin','admin_url','admin/Log/download','','日志下载',''),(190,1,'admin','admin_url','admin/Guide/index','','协议手册管理',''),(191,1,'admin','admin_url','admin/Guide/edit','','协议手册编辑',''),(192,1,'admin','admin_url','admin/Guide/editPost','','协议手册编辑1',''),(193,1,'admin','admin_url','admin/Guide/delete','','协议手册删除',''),(194,1,'admin','admin_url','admin/Guide/add','','协议手册添加',''),(195,1,'admin','admin_url','admin/Guide/addPost','','协议手册添加1',''),(196,1,'user','admin_url','user/AdminIndex/info','','用户详情',''),(197,1,'user','admin_url','user/AdminIndex/editPost','','用户详情执行',''),(198,1,'admin','admin_url','admin/Action/clear','','清空系统任务',''),(199,1,'admin','admin_url','admin/Banner/index','','Banner图管理',''),(200,1,'admin','admin_url','admin/Banner/edit','','Banner图编辑',''),(201,1,'admin','admin_url','admin/Banner/editPost','','Banner图编辑1',''),(202,1,'admin','admin_url','admin/Banner/delete','','Banner图删除',''),(203,1,'admin','admin_url','admin/Banner/add','','Banner图添加',''),(204,1,'admin','admin_url','admin/Banner/addPost','','Banner图添加1','');
/*!40000 ALTER TABLE `cmf_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_banner`
--

DROP TABLE IF EXISTS `cmf_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'banner',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `pic` varchar(100) NOT NULL COMMENT '图片',
  `sort` smallint(1) NOT NULL DEFAULT '5' COMMENT '排序',
  `time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `link` text COMMENT '链接',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='首页banner';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_banner`
--

LOCK TABLES `cmf_banner` WRITE;
/*!40000 ALTER TABLE `cmf_banner` DISABLE KEYS */;
INSERT INTO `cmf_banner` VALUES (21,'d','admin/20180308/c4d180f4c22ad5b9c6597fee1ca4c51d.jpg',5,1520502422,''),(19,'首页轮播3','banner.jpg',5,1520502310,''),(20,'s ','admin/20180308/c4d180f4c22ad5b9c6597fee1ca4c51d.jpg',5,1520501789,' ');
/*!40000 ALTER TABLE `cmf_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_city`
--

DROP TABLE IF EXISTS `cmf_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_city` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(20) NOT NULL,
  `fid` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '类别，1省，2城市，3县区',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_city`
--

LOCK TABLES `cmf_city` WRITE;
/*!40000 ALTER TABLE `cmf_city` DISABLE KEYS */;
INSERT INTO `cmf_city` VALUES (110000,'北京市',0,1),(110100,'北京市辖区',110000,2),(110101,'东城区',110100,3),(110102,'西城区',110100,3),(110105,'朝阳区',110100,3),(110106,'丰台区',110100,3),(110107,'石景山区',110100,3),(110108,'海淀区',110100,3),(110109,'门头沟区',110100,3),(110111,'房山区',110100,3),(110112,'通州区',110100,3),(110113,'顺义区',110100,3),(110114,'昌平区',110100,3),(110115,'大兴区',110100,3),(110116,'怀柔区',110100,3),(110117,'平谷区',110100,3),(110118,'密云区',110100,3),(110119,'延庆区',110100,3),(120100,'天津市',0,1),(120000,'天津市辖区',120100,2),(120103,'河西区',120000,3),(120101,'和平区',120000,3),(120102,'河东区',120000,3),(120104,'南开区',120000,3),(120105,'河北区',120000,3),(120106,'红桥区',120000,3),(120110,'东丽区',120000,3),(120111,'西青区',120000,3),(120112,'津南区',120000,3),(120113,'北辰区',120000,3),(120114,'武清区',120000,3),(120115,'宝坻区',120000,3),(120116,'滨海新区',120000,3),(120117,'宁河区',120000,3),(120118,'静海区',120000,3),(120119,'蓟州区',120000,3),(130000,'河北省',0,1),(130100,'石家庄市',130000,2),(130102,'长安区',130100,3),(130104,'桥西区',130100,3),(130105,'新华区',130100,3),(130107,'井陉矿区',130100,3),(130108,'裕华区',130100,3),(130109,'藁城区',130100,3),(130110,'鹿泉区',130100,3),(130111,'栾城区',130100,3),(130181,'辛集市',130100,3),(130183,'晋州市',130100,3),(130184,'新乐市',130100,3),(130121,'井陉县',130100,3),(130123,'正定县',130100,3),(130125,'行唐县',130100,3),(130126,'灵寿县',130100,3),(130127,'高邑县',130100,3),(130128,'深泽县',130100,3),(130129,'赞皇县',130100,3),(130130,'无极县',130100,3),(130131,'平山县',130100,3),(130132,'元氏县',130100,3),(130133,'赵县',130100,3),(130200,'唐山市',130000,2),(130203,'路北区',130200,3),(130202,'路南区',130200,3),(130204,'古冶区',130200,3),(130205,'开平区',130200,3),(130207,'丰南区',130200,3),(130208,'丰润区',130200,3),(130209,'曹妃甸区',130200,3),(130281,'遵化市',130200,3),(130283,'迁安市',130200,3),(130223,'滦县',130200,3),(130224,'滦南县',130200,3),(130225,'乐亭县',130200,3),(130227,'迁西县',130200,3),(130229,'玉田县',130200,3),(130300,'秦皇岛市',130000,2),(130302,'海港区',130300,3),(130303,'山海关区',130300,3),(130304,'北戴河区',130300,3),(130306,'抚宁区',130300,3),(130322,'昌黎县',130300,3),(130324,'卢龙县',130300,3),(130321,'青龙满族自治县',130300,3),(130400,'邯郸市',130000,2),(130403,'丛台区',130400,3),(130402,'邯山区',130400,3),(130404,'复兴区',130400,3),(130406,'峰峰矿区',130400,3),(130407,'肥乡区',130400,3),(130408,'永年区',130400,3),(130481,'武安市',130400,3),(130423,'临漳县',130400,3),(130424,'成安县',130400,3),(130425,'大名县',130400,3),(130426,'涉县',130400,3),(130427,'磁县',130400,3),(130430,'邱县',130400,3),(130431,'鸡泽县',130400,3),(130432,'广平县',130400,3),(130433,'馆陶县',130400,3),(130434,'魏县',130400,3),(130435,'曲周县',130400,3),(130500,'邢台市',130000,2),(130502,'桥东区',130500,3),(130503,'桥西区',130500,3),(130581,'南宫市',130500,3),(130582,'沙河市',130500,3),(130521,'邢台县',130500,3),(130522,'临城县',130500,3),(130523,'内丘县',130500,3),(130524,'柏乡县',130500,3),(130525,'隆尧县',130500,3),(130526,'任县',130500,3),(130527,'南和县',130500,3),(130528,'宁晋县',130500,3),(130529,'巨鹿县',130500,3),(130530,'新河县',130500,3),(130531,'广宗县',130500,3),(130532,'平乡县',130500,3),(130533,'威县',130500,3),(130534,'清河县',130500,3),(130535,'临西县',130500,3),(130600,'保定市',130000,2),(130602,'竞秀区',130600,3),(130606,'莲池区',130600,3),(130607,'满城区',130600,3),(130608,'清苑区',130600,3),(130609,'徐水区',130600,3),(130681,'涿州市',130600,3),(130682,'定州市',130600,3),(130683,'安国市',130600,3),(130684,'高碑店市',130600,3),(130623,'涞水县',130600,3),(130624,'阜平县',130600,3),(130626,'定兴县',130600,3),(130627,'唐县',130600,3),(130628,'高阳县',130600,3),(130629,'容城县',130600,3),(130630,'涞源县',130600,3),(130631,'望都县',130600,3),(130632,'安新县',130600,3),(130633,'易县',130600,3),(130634,'曲阳县',130600,3),(130635,'蠡县',130600,3),(130636,'顺平县',130600,3),(130637,'博野县',130600,3),(130638,'雄县',130600,3),(130700,'张家口市',130000,2),(130703,'桥西区',130700,3),(130702,'桥东区',130700,3),(130705,'宣化区',130700,3),(130706,'下花园区',130700,3),(130708,'万全区',130700,3),(130709,'崇礼区',130700,3),(130722,'张北县',130700,3),(130723,'康保县',130700,3),(130724,'沽源县',130700,3),(130725,'尚义县',130700,3),(130726,'蔚县',130700,3),(130727,'阳原县',130700,3),(130728,'怀安县',130700,3),(130730,'怀来县',130700,3),(130731,'涿鹿县',130700,3),(130732,'赤城县',130700,3),(130800,'承德市',130000,2),(130802,'双桥区',130800,3),(130803,'双滦区',130800,3),(130804,'鹰手营子矿区',130800,3),(130881,'平泉市',130800,3),(130821,'承德县',130800,3),(130822,'兴隆县',130800,3),(130824,'滦平县',130800,3),(130825,'隆化县',130800,3),(130826,'丰宁满族自治县',130800,3),(130827,'宽城满族自治县',130800,3),(130828,'围场满族蒙古族自治县',130800,3),(130900,'沧州市',130000,2),(130903,'运河区',130900,3),(130902,'新华区',130900,3),(130981,'泊头市',130900,3),(130982,'任丘市',130900,3),(130983,'黄骅市',130900,3),(130984,'河间市',130900,3),(130921,'沧县',130900,3),(130922,'青县',130900,3),(130923,'东光县',130900,3),(130924,'海兴县',130900,3),(130925,'盐山县',130900,3),(130926,'肃宁县',130900,3),(130927,'南皮县',130900,3),(130928,'吴桥县',130900,3),(130929,'献县',130900,3),(130930,'孟村回族自治县',130900,3),(131000,'廊坊市',130000,2),(131003,'广阳区',131000,3),(131002,'安次区',131000,3),(131081,'霸州市',131000,3),(131082,'三河市',131000,3),(131022,'固安县',131000,3),(131023,'永清县',131000,3),(131024,'香河县',131000,3),(131025,'大城县',131000,3),(131026,'文安县',131000,3),(131028,'大厂回族自治县',131000,3),(131100,'衡水市',130000,2),(131102,'桃城区',131100,3),(131103,'冀州区',131100,3),(131182,'深州市',131100,3),(131121,'枣强县',131100,3),(131122,'武邑县',131100,3),(131123,'武强县',131100,3),(131124,'饶阳县',131100,3),(131125,'安平县',131100,3),(131126,'故城县',131100,3),(131127,'景县',131100,3),(131128,'阜城县',131100,3),(140000,'山西省',0,1),(140100,'太原市',140000,2),(140107,'杏花岭区',140100,3),(140105,'小店区',140100,3),(140106,'迎泽区',140100,3),(140108,'尖草坪区',140100,3),(140109,'万柏林区',140100,3),(140110,'晋源区',140100,3),(140181,'古交市',140100,3),(140121,'清徐县',140100,3),(140122,'阳曲县',140100,3),(140123,'娄烦县',140100,3),(140200,'大同市',140000,2),(140202,'城区',140200,3),(140203,'矿区',140200,3),(140211,'南郊区',140200,3),(140212,'新荣区',140200,3),(140221,'阳高县',140200,3),(140222,'天镇县',140200,3),(140223,'广灵县',140200,3),(140224,'灵丘县',140200,3),(140225,'浑源县',140200,3),(140226,'左云县',140200,3),(140227,'大同县',140200,3),(140300,'阳泉市',140000,2),(140302,'城区',140300,3),(140303,'矿区',140300,3),(140311,'郊区',140300,3),(140321,'平定县',140300,3),(140322,'盂县',140300,3),(140400,'长治市',140000,2),(140402,'城区',140400,3),(140411,'郊区',140400,3),(140481,'潞城市',140400,3),(140421,'长治县',140400,3),(140423,'襄垣县',140400,3),(140424,'屯留县',140400,3),(140425,'平顺县',140400,3),(140426,'黎城县',140400,3),(140427,'壶关县',140400,3),(140428,'长子县',140400,3),(140429,'武乡县',140400,3),(140430,'沁县',140400,3),(140431,'沁源县',140400,3),(140500,'晋城市',140000,2),(140502,'城区',140500,3),(140581,'高平市',140500,3),(140521,'沁水县',140500,3),(140522,'阳城县',140500,3),(140524,'陵川县',140500,3),(140525,'泽州县',140500,3),(140600,'朔州市',140000,2),(140602,'朔城区',140600,3),(140603,'平鲁区',140600,3),(140621,'山阴县',140600,3),(140622,'应县',140600,3),(140623,'右玉县',140600,3),(140624,'怀仁县',140600,3),(140700,'晋中市',140000,2),(140702,'榆次区',140700,3),(140781,'介休市',140700,3),(140721,'榆社县',140700,3),(140722,'左权县',140700,3),(140723,'和顺县',140700,3),(140724,'昔阳县',140700,3),(140725,'寿阳县',140700,3),(140726,'太谷县',140700,3),(140727,'祁县',140700,3),(140728,'平遥县',140700,3),(140729,'灵石县',140700,3),(140800,'运城市',140000,2),(140802,'盐湖区',140800,3),(140881,'永济市',140800,3),(140882,'河津市',140800,3),(140821,'临猗县',140800,3),(140822,'万荣县',140800,3),(140823,'闻喜县',140800,3),(140824,'稷山县',140800,3),(140825,'新绛县',140800,3),(140826,'绛县',140800,3),(140827,'垣曲县',140800,3),(140828,'夏县',140800,3),(140829,'平陆县',140800,3),(140830,'芮城县',140800,3),(140900,'忻州市',140000,2),(140902,'忻府区',140900,3),(140981,'原平市',140900,3),(140921,'定襄县',140900,3),(140922,'五台县',140900,3),(140923,'代县',140900,3),(140924,'繁峙县',140900,3),(140925,'宁武县',140900,3),(140926,'静乐县',140900,3),(140927,'神池县',140900,3),(140928,'五寨县',140900,3),(140929,'岢岚县',140900,3),(140930,'河曲县',140900,3),(140931,'保德县',140900,3),(140932,'偏关县',140900,3),(141000,'临汾市',140000,2),(141002,'尧都区',141000,3),(141081,'侯马市',141000,3),(141082,'霍州市',141000,3),(141021,'曲沃县',141000,3),(141022,'翼城县',141000,3),(141023,'襄汾县',141000,3),(141024,'洪洞县',141000,3),(141025,'古县',141000,3),(141026,'安泽县',141000,3),(141027,'浮山县',141000,3),(141028,'吉县',141000,3),(141029,'乡宁县',141000,3),(141030,'大宁县',141000,3),(141031,'隰县',141000,3),(141032,'永和县',141000,3),(141033,'蒲县',141000,3),(141034,'汾西县',141000,3),(141100,'吕梁市',140000,2),(141102,'离石区',141100,3),(141181,'孝义市',141100,3),(141182,'汾阳市',141100,3),(141121,'文水县',141100,3),(141122,'交城县',141100,3),(141123,'兴县',141100,3),(141124,'临县',141100,3),(141125,'柳林县',141100,3),(141126,'石楼县',141100,3),(141127,'岚县',141100,3),(141128,'方山县',141100,3),(141129,'中阳县',141100,3),(141130,'交口县',141100,3),(150000,'内蒙古自治区',0,1),(150100,'呼和浩特市',150000,2),(150102,'新城区',150100,3),(150103,'回民区',150100,3),(150104,'玉泉区',150100,3),(150105,'赛罕区',150100,3),(150122,'托克托县',150100,3),(150123,'和林格尔县',150100,3),(150124,'清水河县',150100,3),(150125,'武川县',150100,3),(150121,'土默特左旗',150100,3),(150200,'包头市',150000,2),(150203,'昆都仑区',150200,3),(150202,'东河区',150200,3),(150204,'青山区',150200,3),(150205,'石拐区',150200,3),(150206,'白云鄂博矿区',150200,3),(150207,'九原区',150200,3),(150222,'固阳县',150200,3),(150221,'土默特右旗',150200,3),(150223,'达尔罕茂明安联合旗',150200,3),(150300,'乌海市',150000,2),(150302,'海勃湾区',150300,3),(150303,'海南区',150300,3),(150304,'乌达区',150300,3),(150400,'赤峰市',150000,2),(150402,'红山区',150400,3),(150403,'元宝山区',150400,3),(150404,'松山区',150400,3),(150424,'林西县',150400,3),(150429,'宁城县',150400,3),(150421,'阿鲁科尔沁旗',150400,3),(150422,'巴林左旗',150400,3),(150423,'巴林右旗',150400,3),(150425,'克什克腾旗',150400,3),(150426,'翁牛特旗',150400,3),(150428,'喀喇沁旗',150400,3),(150430,'敖汉旗',150400,3),(150500,'通辽市',150000,2),(150502,'科尔沁区',150500,3),(150581,'霍林郭勒市',150500,3),(150523,'开鲁县',150500,3),(150524,'库伦旗',150500,3),(150525,'奈曼旗',150500,3),(150526,'扎鲁特旗',150500,3),(150521,'科尔沁左翼中旗',150500,3),(150522,'科尔沁左翼后旗',150500,3),(150600,'鄂尔多斯市',150000,2),(150602,'东胜区',150600,3),(150603,'康巴什区',150600,3),(150621,'达拉特旗',150600,3),(150622,'准格尔旗',150600,3),(150623,'鄂托克前旗',150600,3),(150624,'鄂托克旗',150600,3),(150625,'杭锦旗',150600,3),(150626,'乌审旗',150600,3),(150627,'伊金霍洛旗',150600,3),(150700,'呼伦贝尔市',150000,2),(150702,'海拉尔区',150700,3),(150703,'扎赉诺尔区',150700,3),(150781,'满洲里市',150700,3),(150782,'牙克石市',150700,3),(150783,'扎兰屯市',150700,3),(150784,'额尔古纳市',150700,3),(150785,'根河市',150700,3),(150721,'阿荣旗',150700,3),(150725,'陈巴尔虎旗',150700,3),(150726,'新巴尔虎左旗',150700,3),(150727,'新巴尔虎右旗',150700,3),(150722,'莫力达瓦达斡尔族自治旗',150700,3),(150723,'鄂伦春自治旗',150700,3),(150724,'鄂温克族自治旗',150700,3),(150800,'巴彦淖尔市',150000,2),(150802,'临河区',150800,3),(150821,'五原县',150800,3),(150822,'磴口县',150800,3),(150823,'乌拉特前旗',150800,3),(150824,'乌拉特中旗',150800,3),(150825,'乌拉特后旗',150800,3),(150826,'杭锦后旗',150800,3),(150900,'乌兰察布市',150000,2),(150902,'集宁区',150900,3),(150981,'丰镇市',150900,3),(150921,'卓资县',150900,3),(150922,'化德县',150900,3),(150923,'商都县',150900,3),(150924,'兴和县',150900,3),(150925,'凉城县',150900,3),(150926,'察哈尔右翼前旗',150900,3),(150927,'察哈尔右翼中旗',150900,3),(150928,'察哈尔右翼后旗',150900,3),(150929,'四子王旗',150900,3),(152200,'兴安盟',150000,2),(152201,'乌兰浩特市',152200,3),(152202,'阿尔山市',152200,3),(152224,'突泉县',152200,3),(152221,'科尔沁右翼前旗',152200,3),(152222,'科尔沁右翼中旗',152200,3),(152223,'扎赉特旗',152200,3),(152500,'锡林郭勒盟',150000,2),(152502,'锡林浩特市',152500,3),(152501,'二连浩特市',152500,3),(152531,'多伦县',152500,3),(152522,'阿巴嘎旗',152500,3),(152523,'苏尼特左旗',152500,3),(152524,'苏尼特右旗',152500,3),(152525,'东乌珠穆沁旗',152500,3),(152526,'西乌珠穆沁旗',152500,3),(152527,'太仆寺旗',152500,3),(152528,'镶黄旗',152500,3),(152529,'正镶白旗',152500,3),(152530,'正蓝旗',152500,3),(152900,'阿拉善盟',150000,2),(152921,'阿拉善左旗',152900,3),(152922,'阿拉善右旗',152900,3),(152923,'额济纳旗',152900,3),(210000,'辽宁省',0,1),(210100,'沈阳市',210000,2),(210103,'沈河区',210100,3),(210102,'和平区',210100,3),(210104,'大东区',210100,3),(210105,'皇姑区',210100,3),(210106,'铁西区',210100,3),(210111,'苏家屯区',210100,3),(210112,'浑南区',210100,3),(210113,'沈北新区',210100,3),(210114,'于洪区',210100,3),(210115,'辽中区',210100,3),(210181,'新民市',210100,3),(210123,'康平县',210100,3),(210124,'法库县',210100,3),(210200,'大连市',210000,2),(210203,'西岗区',210200,3),(210202,'中山区',210200,3),(210204,'沙河口区',210200,3),(210211,'甘井子区',210200,3),(210212,'旅顺口区',210200,3),(210213,'金州区',210200,3),(210281,'瓦房店市',210200,3),(210214,'普兰店区',210200,3),(210283,'庄河市',210200,3),(210224,'长海县',210200,3),(210300,'鞍山市',210000,2),(210302,'铁东区',210300,3),(210303,'铁西区',210300,3),(210304,'立山区',210300,3),(210311,'千山区',210300,3),(210381,'海城市',210300,3),(210321,'台安县',210300,3),(210323,'岫岩满族自治县',210300,3),(210400,'抚顺市',210000,2),(210411,'顺城区',210400,3),(210402,'新抚区',210400,3),(210403,'东洲区',210400,3),(210404,'望花区',210400,3),(210421,'抚顺县',210400,3),(210422,'新宾满族自治县',210400,3),(210423,'清原满族自治县',210400,3),(210500,'本溪市',210000,2),(210502,'平山区',210500,3),(210503,'溪湖区',210500,3),(210504,'明山区',210500,3),(210505,'南芬区',210500,3),(210521,'本溪满族自治县',210500,3),(210522,'桓仁满族自治县',210500,3),(210600,'丹东市',210000,2),(210603,'振兴区',210600,3),(210602,'元宝区',210600,3),(210604,'振安区',210600,3),(210681,'东港市',210600,3),(210682,'凤城市',210600,3),(210624,'宽甸满族自治县',210600,3),(210700,'锦州市',210000,2),(210711,'太和区',210700,3),(210702,'古塔区',210700,3),(210703,'凌河区',210700,3),(210781,'凌海市',210700,3),(210782,'北镇市',210700,3),(210726,'黑山县',210700,3),(210727,'义县',210700,3),(210800,'营口市',210000,2),(210802,'站前区',210800,3),(210803,'西市区',210800,3),(210804,'鲅鱼圈区',210800,3),(210811,'老边区',210800,3),(210881,'盖州市',210800,3),(210882,'大石桥市',210800,3),(210900,'阜新市',210000,2),(210911,'细河区',210900,3),(210902,'海州区',210900,3),(210903,'新邱区',210900,3),(210904,'太平区',210900,3),(210905,'清河门区',210900,3),(210922,'彰武县',210900,3),(210921,'阜新蒙古族自治县',210900,3),(211000,'辽阳市',210000,2),(211002,'白塔区',211000,3),(211003,'文圣区',211000,3),(211004,'宏伟区',211000,3),(211005,'弓长岭区',211000,3),(211011,'太子河区',211000,3),(211081,'灯塔市',211000,3),(211021,'辽阳县',211000,3),(211100,'盘锦市',210000,2),(211103,'兴隆台区',211100,3),(211102,'双台子区',211100,3),(211104,'大洼区',211100,3),(211122,'盘山县',211100,3),(211200,'铁岭市',210000,2),(211202,'银州区',211200,3),(211204,'清河区',211200,3),(211281,'调兵山市',211200,3),(211282,'开原市',211200,3),(211221,'铁岭县',211200,3),(211223,'西丰县',211200,3),(211224,'昌图县',211200,3),(211300,'朝阳市',210000,2),(211302,'双塔区',211300,3),(211303,'龙城区',211300,3),(211381,'北票市',211300,3),(211382,'凌源市',211300,3),(211321,'朝阳县',211300,3),(211322,'建平县',211300,3),(211324,'喀喇沁左翼蒙古族自治县',211300,3),(211400,'葫芦岛市',210000,2),(211403,'龙港区',211400,3),(211402,'连山区',211400,3),(211404,'南票区',211400,3),(211481,'兴城市',211400,3),(211421,'绥中县',211400,3),(211422,'建昌县',211400,3),(220000,'吉林省',0,1),(220100,'长春市',220000,2),(220102,'南关区',220100,3),(220103,'宽城区',220100,3),(220104,'朝阳区',220100,3),(220105,'二道区',220100,3),(220106,'绿园区',220100,3),(220112,'双阳区',220100,3),(220113,'九台区',220100,3),(220182,'榆树市',220100,3),(220183,'德惠市',220100,3),(220122,'农安县',220100,3),(220200,'吉林市',220000,2),(220204,'船营区',220200,3),(220202,'昌邑区',220200,3),(220203,'龙潭区',220200,3),(220211,'丰满区',220200,3),(220281,'蛟河市',220200,3),(220282,'桦甸市',220200,3),(220283,'舒兰市',220200,3),(220284,'磐石市',220200,3),(220221,'永吉县',220200,3),(220300,'四平市',220000,2),(220302,'铁西区',220300,3),(220303,'铁东区',220300,3),(220381,'公主岭市',220300,3),(220382,'双辽市',220300,3),(220322,'梨树县',220300,3),(220323,'伊通满族自治县',220300,3),(220400,'辽源市',220000,2),(220402,'龙山区',220400,3),(220403,'西安区',220400,3),(220421,'东丰县',220400,3),(220422,'东辽县',220400,3),(220500,'通化市',220000,2),(220502,'东昌区',220500,3),(220503,'二道江区',220500,3),(220581,'梅河口市',220500,3),(220582,'集安市',220500,3),(220521,'通化县',220500,3),(220523,'辉南县',220500,3),(220524,'柳河县',220500,3),(220600,'白山市',220000,2),(220602,'浑江区',220600,3),(220605,'江源区',220600,3),(220681,'临江市',220600,3),(220621,'抚松县',220600,3),(220622,'靖宇县',220600,3),(220623,'长白朝鲜族自治县',220600,3),(220700,'松原市',220000,2),(220702,'宁江区',220700,3),(220781,'扶余市',220700,3),(220722,'长岭县',220700,3),(220723,'乾安县',220700,3),(220721,'前郭尔罗斯蒙古族自治县',220700,3),(220800,'白城市',220000,2),(220802,'洮北区',220800,3),(220881,'洮南市',220800,3),(220882,'大安市',220800,3),(220821,'镇赉县',220800,3),(220822,'通榆县',220800,3),(222400,'延边朝鲜族自治州',220000,2),(222401,'延吉市',222400,3),(222402,'图们市',222400,3),(222403,'敦化市',222400,3),(222404,'珲春市',222400,3),(222405,'龙井市',222400,3),(222406,'和龙市',222400,3),(222424,'汪清县',222400,3),(222426,'安图县',222400,3),(230000,'黑龙江省',0,1),(230100,'哈尔滨市',230000,2),(230109,'松北区',230100,3),(230102,'道里区',230100,3),(230103,'南岗区',230100,3),(230104,'道外区',230100,3),(230108,'平房区',230100,3),(230110,'香坊区',230100,3),(230111,'呼兰区',230100,3),(230112,'阿城区',230100,3),(230113,'双城区',230100,3),(230183,'尚志市',230100,3),(230184,'五常市',230100,3),(230123,'依兰县',230100,3),(230124,'方正县',230100,3),(230125,'宾县',230100,3),(230126,'巴彦县',230100,3),(230127,'木兰县',230100,3),(230128,'通河县',230100,3),(230129,'延寿县',230100,3),(230200,'齐齐哈尔市',230000,2),(230203,'建华区',230200,3),(230202,'龙沙区',230200,3),(230204,'铁锋区',230200,3),(230205,'昂昂溪区',230200,3),(230206,'富拉尔基区',230200,3),(230207,'碾子山区',230200,3),(230208,'梅里斯达斡尔族区',230200,3),(230281,'讷河市',230200,3),(230221,'龙江县',230200,3),(230223,'依安县',230200,3),(230224,'泰来县',230200,3),(230225,'甘南县',230200,3),(230227,'富裕县',230200,3),(230229,'克山县',230200,3),(230230,'克东县',230200,3),(230231,'拜泉县',230200,3),(230300,'鸡西市',230000,2),(230302,'鸡冠区',230300,3),(230303,'恒山区',230300,3),(230304,'滴道区',230300,3),(230305,'梨树区',230300,3),(230306,'城子河区',230300,3),(230307,'麻山区',230300,3),(230381,'虎林市',230300,3),(230382,'密山市',230300,3),(230321,'鸡东县',230300,3),(230400,'鹤岗市',230000,2),(230402,'向阳区',230400,3),(230403,'工农区',230400,3),(230404,'南山区',230400,3),(230405,'兴安区',230400,3),(230406,'东山区',230400,3),(230407,'兴山区',230400,3),(230421,'萝北县',230400,3),(230422,'绥滨县',230400,3),(230500,'双鸭山市',230000,2),(230502,'尖山区',230500,3),(230503,'岭东区',230500,3),(230505,'四方台区',230500,3),(230506,'宝山区',230500,3),(230521,'集贤县',230500,3),(230522,'友谊县',230500,3),(230523,'宝清县',230500,3),(230524,'饶河县',230500,3),(230600,'大庆市',230000,2),(230602,'萨尔图区',230600,3),(230603,'龙凤区',230600,3),(230604,'让胡路区',230600,3),(230605,'红岗区',230600,3),(230606,'大同区',230600,3),(230621,'肇州县',230600,3),(230622,'肇源县',230600,3),(230623,'林甸县',230600,3),(230624,'杜尔伯特蒙古族自治县',230600,3),(230700,'伊春市',230000,2),(230702,'伊春区',230700,3),(230703,'南岔区',230700,3),(230704,'友好区',230700,3),(230705,'西林区',230700,3),(230706,'翠峦区',230700,3),(230707,'新青区',230700,3),(230708,'美溪区',230700,3),(230709,'金山屯区',230700,3),(230710,'五营区',230700,3),(230711,'乌马河区',230700,3),(230712,'汤旺河区',230700,3),(230713,'带岭区',230700,3),(230714,'乌伊岭区',230700,3),(230715,'红星区',230700,3),(230716,'上甘岭区',230700,3),(230781,'铁力市',230700,3),(230722,'嘉荫县',230700,3),(230800,'佳木斯市',230000,2),(230804,'前进区',230800,3),(230803,'向阳区',230800,3),(230805,'东风区',230800,3),(230811,'郊区',230800,3),(230881,'同江市',230800,3),(230882,'富锦市',230800,3),(230883,'抚远市',230800,3),(230822,'桦南县',230800,3),(230826,'桦川县',230800,3),(230828,'汤原县',230800,3),(230900,'七台河市',230000,2),(230903,'桃山区',230900,3),(230902,'新兴区',230900,3),(230904,'茄子河区',230900,3),(230921,'勃利县',230900,3),(231000,'牡丹江市',230000,2),(231002,'东安区',231000,3),(231003,'阳明区',231000,3),(231004,'爱民区',231000,3),(231005,'西安区',231000,3),(231081,'绥芬河市',231000,3),(231083,'海林市',231000,3),(231084,'宁安市',231000,3),(231085,'穆棱市',231000,3),(231086,'东宁市',231000,3),(231025,'林口县',231000,3),(231100,'黑河市',230000,2),(231102,'爱辉区',231100,3),(231181,'北安市',231100,3),(231182,'五大连池市',231100,3),(231121,'嫩江县',231100,3),(231123,'逊克县',231100,3),(231124,'孙吴县',231100,3),(231200,'绥化市',230000,2),(231202,'北林区',231200,3),(231281,'安达市',231200,3),(231282,'肇东市',231200,3),(231283,'海伦市',231200,3),(231221,'望奎县',231200,3),(231222,'兰西县',231200,3),(231223,'青冈县',231200,3),(231224,'庆安县',231200,3),(231225,'明水县',231200,3),(231226,'绥棱县',231200,3),(232700,'大兴安岭地区',230000,2),(232721,'呼玛县',232700,3),(232722,'塔河县',232700,3),(232723,'漠河县',232700,3),(310000,'上海市',0,1),(310100,'上海市辖区',310000,2),(310101,'黄浦区',310100,3),(310104,'徐汇区',310100,3),(310105,'长宁区',310100,3),(310106,'静安区',310100,3),(310107,'普陀区',310100,3),(310109,'虹口区',310100,3),(310110,'杨浦区',310100,3),(310112,'闵行区',310100,3),(310113,'宝山区',310100,3),(310114,'嘉定区',310100,3),(310115,'浦东新区',310100,3),(310116,'金山区',310100,3),(310117,'松江区',310100,3),(310118,'青浦区',310100,3),(310120,'奉贤区',310100,3),(310151,'崇明区',310100,3),(320000,'江苏省',0,1),(320100,'南京市',320000,2),(320102,'玄武区',320100,3),(320104,'秦淮区',320100,3),(320105,'建邺区',320100,3),(320106,'鼓楼区',320100,3),(320111,'浦口区',320100,3),(320113,'栖霞区',320100,3),(320114,'雨花台区',320100,3),(320115,'江宁区',320100,3),(320116,'六合区',320100,3),(320117,'溧水区',320100,3),(320118,'高淳区',320100,3),(320200,'无锡市',320000,2),(320205,'锡山区',320200,3),(320206,'惠山区',320200,3),(320211,'滨湖区',320200,3),(320213,'梁溪区',320200,3),(320214,'新吴区',320200,3),(320281,'江阴市',320200,3),(320282,'宜兴市',320200,3),(320300,'徐州市',320000,2),(320303,'云龙区',320300,3),(320302,'鼓楼区',320300,3),(320305,'贾汪区',320300,3),(320311,'泉山区',320300,3),(320312,'铜山区',320300,3),(320381,'新沂市',320300,3),(320382,'邳州市',320300,3),(320321,'丰县',320300,3),(320322,'沛县',320300,3),(320324,'睢宁县',320300,3),(320400,'常州市',320000,2),(320411,'新北区',320400,3),(320402,'天宁区',320400,3),(320404,'钟楼区',320400,3),(320412,'武进区',320400,3),(320413,'金坛区',320400,3),(320481,'溧阳市',320400,3),(320500,'苏州市',320000,2),(320508,'姑苏区',320500,3),(320505,'虎丘区',320500,3),(320506,'吴中区',320500,3),(320507,'相城区',320500,3),(320509,'吴江区',320500,3),(320581,'常熟市',320500,3),(320582,'张家港市',320500,3),(320583,'昆山市',320500,3),(320585,'太仓市',320500,3),(320600,'南通市',320000,2),(320602,'崇川区',320600,3),(320611,'港闸区',320600,3),(320612,'通州区',320600,3),(320681,'启东市',320600,3),(320682,'如皋市',320600,3),(320684,'海门市',320600,3),(320621,'海安县',320600,3),(320623,'如东县',320600,3),(320700,'连云港市',320000,2),(320706,'海州区',320700,3),(320703,'连云区',320700,3),(320707,'赣榆区',320700,3),(320722,'东海县',320700,3),(320723,'灌云县',320700,3),(320724,'灌南县',320700,3),(320800,'淮安市',320000,2),(320803,'淮安区',320800,3),(320804,'淮阴区',320800,3),(320812,'清江浦区',320800,3),(320813,'洪泽区',320800,3),(320826,'涟水县',320800,3),(320830,'盱眙县',320800,3),(320831,'金湖县',320800,3),(320900,'盐城市',320000,2),(320902,'亭湖区',320900,3),(320903,'盐都区',320900,3),(320904,'大丰区',320900,3),(320981,'东台市',320900,3),(320921,'响水县',320900,3),(320922,'滨海县',320900,3),(320923,'阜宁县',320900,3),(320924,'射阳县',320900,3),(320925,'建湖县',320900,3),(321000,'扬州市',320000,2),(321003,'邗江区',321000,3),(321002,'广陵区',321000,3),(321012,'江都区',321000,3),(321081,'仪征市',321000,3),(321084,'高邮市',321000,3),(321023,'宝应县',321000,3),(321100,'镇江市',320000,2),(321102,'京口区',321100,3),(321111,'润州区',321100,3),(321112,'丹徒区',321100,3),(321181,'丹阳市',321100,3),(321182,'扬中市',321100,3),(321183,'句容市',321100,3),(321200,'泰州市',320000,2),(321202,'海陵区',321200,3),(321203,'高港区',321200,3),(321204,'姜堰区',321200,3),(321281,'兴化市',321200,3),(321282,'靖江市',321200,3),(321283,'泰兴市',321200,3),(321300,'宿迁市',320000,2),(321302,'宿城区',321300,3),(321311,'宿豫区',321300,3),(321322,'沭阳县',321300,3),(321323,'泗阳县',321300,3),(321324,'泗洪县',321300,3),(330000,'浙江省',0,1),(330100,'杭州市',330000,2),(330105,'拱墅区',330100,3),(330102,'上城区',330100,3),(330103,'下城区',330100,3),(330104,'江干区',330100,3),(330106,'西湖区',330100,3),(330108,'滨江区',330100,3),(330109,'萧山区',330100,3),(330110,'余杭区',330100,3),(330111,'富阳区',330100,3),(330182,'建德市',330100,3),(330185,'临安市',330100,3),(330122,'桐庐县',330100,3),(330127,'淳安县',330100,3),(330200,'宁波市',330000,2),(330203,'海曙区',330200,3),(330205,'江北区',330200,3),(330206,'北仑区',330200,3),(330211,'镇海区',330200,3),(330212,'鄞州区',330200,3),(330213,'奉化区',330200,3),(330281,'余姚市',330200,3),(330282,'慈溪市',330200,3),(330225,'象山县',330200,3),(330226,'宁海县',330200,3),(330300,'温州市',330000,2),(330302,'鹿城区',330300,3),(330303,'龙湾区',330300,3),(330304,'瓯海区',330300,3),(330305,'洞头区',330300,3),(330381,'瑞安市',330300,3),(330382,'乐清市',330300,3),(330324,'永嘉县',330300,3),(330326,'平阳县',330300,3),(330327,'苍南县',330300,3),(330328,'文成县',330300,3),(330329,'泰顺县',330300,3),(330400,'嘉兴市',330000,2),(330402,'南湖区',330400,3),(330411,'秀洲区',330400,3),(330481,'海宁市',330400,3),(330482,'平湖市',330400,3),(330483,'桐乡市',330400,3),(330421,'嘉善县',330400,3),(330424,'海盐县',330400,3),(330500,'湖州市',330000,2),(330502,'吴兴区',330500,3),(330503,'南浔区',330500,3),(330521,'德清县',330500,3),(330522,'长兴县',330500,3),(330523,'安吉县',330500,3),(330600,'绍兴市',330000,2),(330602,'越城区',330600,3),(330603,'柯桥区',330600,3),(330604,'上虞区',330600,3),(330681,'诸暨市',330600,3),(330683,'嵊州市',330600,3),(330624,'新昌县',330600,3),(330700,'金华市',330000,2),(330702,'婺城区',330700,3),(330703,'金东区',330700,3),(330781,'兰溪市',330700,3),(330782,'义乌市',330700,3),(330783,'东阳市',330700,3),(330784,'永康市',330700,3),(330723,'武义县',330700,3),(330726,'浦江县',330700,3),(330727,'磐安县',330700,3),(330800,'衢州市',330000,2),(330802,'柯城区',330800,3),(330803,'衢江区',330800,3),(330881,'江山市',330800,3),(330822,'常山县',330800,3),(330824,'开化县',330800,3),(330825,'龙游县',330800,3),(330900,'舟山市',330000,2),(330902,'定海区',330900,3),(330903,'普陀区',330900,3),(330921,'岱山县',330900,3),(330922,'嵊泗县',330900,3),(331000,'台州市',330000,2),(331002,'椒江区',331000,3),(331003,'黄岩区',331000,3),(331004,'路桥区',331000,3),(331081,'温岭市',331000,3),(331082,'临海市',331000,3),(331083,'玉环市',331000,3),(331022,'三门县',331000,3),(331023,'天台县',331000,3),(331024,'仙居县',331000,3),(331100,'丽水市',330000,2),(331102,'莲都区',331100,3),(331181,'龙泉市',331100,3),(331121,'青田县',331100,3),(331122,'缙云县',331100,3),(331123,'遂昌县',331100,3),(331124,'松阳县',331100,3),(331125,'云和县',331100,3),(331126,'庆元县',331100,3),(331127,'景宁畲族自治县',331100,3),(340000,'安徽省',0,1),(340100,'合肥市',340000,2),(340104,'蜀山区',340100,3),(340102,'瑶海区',340100,3),(340103,'庐阳区',340100,3),(340111,'包河区',340100,3),(340181,'巢湖市',340100,3),(340121,'长丰县',340100,3),(340122,'肥东县',340100,3),(340123,'肥西县',340100,3),(340124,'庐江县',340100,3),(340200,'芜湖市',340000,2),(340207,'鸠江区',340200,3),(340202,'镜湖区',340200,3),(340203,'弋江区',340200,3),(340208,'三山区',340200,3),(340221,'芜湖县',340200,3),(340222,'繁昌县',340200,3),(340223,'南陵县',340200,3),(340225,'无为县',340200,3),(340300,'蚌埠市',340000,2),(340303,'蚌山区',340300,3),(340302,'龙子湖区',340300,3),(340304,'禹会区',340300,3),(340311,'淮上区',340300,3),(340321,'怀远县',340300,3),(340322,'五河县',340300,3),(340323,'固镇县',340300,3),(340400,'淮南市',340000,2),(340403,'田家庵区',340400,3),(340402,'大通区',340400,3),(340404,'谢家集区',340400,3),(340405,'八公山区',340400,3),(340406,'潘集区',340400,3),(340421,'凤台县',340400,3),(340422,'寿县',340400,3),(340500,'马鞍山市',340000,2),(340504,'雨山区',340500,3),(340503,'花山区',340500,3),(340506,'博望区',340500,3),(340521,'当涂县',340500,3),(340522,'含山县',340500,3),(340523,'和县',340500,3),(340600,'淮北市',340000,2),(340603,'相山区',340600,3),(340602,'杜集区',340600,3),(340604,'烈山区',340600,3),(340621,'濉溪县',340600,3),(340700,'铜陵市',340000,2),(340705,'铜官区',340700,3),(340706,'义安区',340700,3),(340711,'郊区',340700,3),(340722,'枞阳县',340700,3),(340800,'安庆市',340000,2),(340803,'大观区',340800,3),(340802,'迎江区',340800,3),(340811,'宜秀区',340800,3),(340881,'桐城市',340800,3),(340822,'怀宁县',340800,3),(340824,'潜山县',340800,3),(340825,'太湖县',340800,3),(340826,'宿松县',340800,3),(340827,'望江县',340800,3),(340828,'岳西县',340800,3),(341000,'黄山市',340000,2),(341002,'屯溪区',341000,3),(341003,'黄山区',341000,3),(341004,'徽州区',341000,3),(341021,'歙县',341000,3),(341022,'休宁县',341000,3),(341023,'黟县',341000,3),(341024,'祁门县',341000,3),(341100,'滁州市',340000,2),(341102,'琅琊区',341100,3),(341103,'南谯区',341100,3),(341181,'天长市',341100,3),(341182,'明光市',341100,3),(341122,'来安县',341100,3),(341124,'全椒县',341100,3),(341125,'定远县',341100,3),(341126,'凤阳县',341100,3),(341200,'阜阳市',340000,2),(341202,'颍州区',341200,3),(341203,'颍东区',341200,3),(341204,'颍泉区',341200,3),(341282,'界首市',341200,3),(341221,'临泉县',341200,3),(341222,'太和县',341200,3),(341225,'阜南县',341200,3),(341226,'颍上县',341200,3),(341300,'宿州市',340000,2),(341302,'埇桥区',341300,3),(341321,'砀山县',341300,3),(341322,'萧县',341300,3),(341323,'灵璧县',341300,3),(341324,'泗县',341300,3),(341500,'六安市',340000,2),(341502,'金安区',341500,3),(341503,'裕安区',341500,3),(341504,'叶集区',341500,3),(341522,'霍邱县',341500,3),(341523,'舒城县',341500,3),(341524,'金寨县',341500,3),(341525,'霍山县',341500,3),(341600,'亳州市',340000,2),(341602,'谯城区',341600,3),(341621,'涡阳县',341600,3),(341622,'蒙城县',341600,3),(341623,'利辛县',341600,3),(341700,'池州市',340000,2),(341702,'贵池区',341700,3),(341721,'东至县',341700,3),(341722,'石台县',341700,3),(341723,'青阳县',341700,3),(341800,'宣城市',340000,2),(341802,'宣州区',341800,3),(341881,'宁国市',341800,3),(341821,'郎溪县',341800,3),(341822,'广德县',341800,3),(341823,'泾县',341800,3),(341824,'绩溪县',341800,3),(341825,'旌德县',341800,3),(350000,'福建省',0,1),(350100,'福州市',350000,2),(350102,'鼓楼区',350100,3),(350103,'台江区',350100,3),(350104,'仓山区',350100,3),(350105,'马尾区',350100,3),(350111,'晋安区',350100,3),(350181,'福清市',350100,3),(350182,'长乐市',350100,3),(350121,'闽侯县',350100,3),(350122,'连江县',350100,3),(350123,'罗源县',350100,3),(350124,'闽清县',350100,3),(350125,'永泰县',350100,3),(350128,'平潭县',350100,3),(350200,'厦门市',350000,2),(350203,'思明区',350200,3),(350205,'海沧区',350200,3),(350206,'湖里区',350200,3),(350211,'集美区',350200,3),(350212,'同安区',350200,3),(350213,'翔安区',350200,3),(350300,'莆田市',350000,2),(350302,'城厢区',350300,3),(350303,'涵江区',350300,3),(350304,'荔城区',350300,3),(350305,'秀屿区',350300,3),(350322,'仙游县',350300,3),(350400,'三明市',350000,2),(350402,'梅列区',350400,3),(350403,'三元区',350400,3),(350481,'永安市',350400,3),(350421,'明溪县',350400,3),(350423,'清流县',350400,3),(350424,'宁化县',350400,3),(350425,'大田县',350400,3),(350426,'尤溪县',350400,3),(350427,'沙县',350400,3),(350428,'将乐县',350400,3),(350429,'泰宁县',350400,3),(350430,'建宁县',350400,3),(350500,'泉州市',350000,2),(350503,'丰泽区',350500,3),(350502,'鲤城区',350500,3),(350504,'洛江区',350500,3),(350505,'泉港区',350500,3),(350581,'石狮市',350500,3),(350582,'晋江市',350500,3),(350583,'南安市',350500,3),(350521,'惠安县',350500,3),(350524,'安溪县',350500,3),(350525,'永春县',350500,3),(350526,'德化县',350500,3),(350527,'金门县☆',350500,3),(350600,'漳州市',350000,2),(350603,'龙文区',350600,3),(350602,'芗城区',350600,3),(350681,'龙海市',350600,3),(350622,'云霄县',350600,3),(350623,'漳浦县',350600,3),(350624,'诏安县',350600,3),(350625,'长泰县',350600,3),(350626,'东山县',350600,3),(350627,'南靖县',350600,3),(350628,'平和县',350600,3),(350629,'华安县',350600,3),(350700,'南平市',350000,2),(350703,'建阳区',350700,3),(350702,'延平区',350700,3),(350781,'邵武市',350700,3),(350782,'武夷山市',350700,3),(350783,'建瓯市',350700,3),(350721,'顺昌县',350700,3),(350722,'浦城县',350700,3),(350723,'光泽县',350700,3),(350724,'松溪县',350700,3),(350725,'政和县',350700,3),(350800,'龙岩市',350000,2),(350802,'新罗区',350800,3),(350803,'永定区',350800,3),(350881,'漳平市',350800,3),(350821,'长汀县',350800,3),(350823,'上杭县',350800,3),(350824,'武平县',350800,3),(350825,'连城县',350800,3),(350900,'宁德市',350000,2),(350902,'蕉城区',350900,3),(350981,'福安市',350900,3),(350982,'福鼎市',350900,3),(350921,'霞浦县',350900,3),(350922,'古田县',350900,3),(350923,'屏南县',350900,3),(350924,'寿宁县',350900,3),(350925,'周宁县',350900,3),(350926,'柘荣县',350900,3),(360000,'江西省',0,1),(360100,'南昌市',360000,2),(360102,'东湖区',360100,3),(360103,'西湖区',360100,3),(360104,'青云谱区',360100,3),(360105,'湾里区',360100,3),(360111,'青山湖区',360100,3),(360112,'新建区',360100,3),(360121,'南昌县',360100,3),(360123,'安义县',360100,3),(360124,'进贤县',360100,3),(360200,'景德镇市',360000,2),(360202,'昌江区',360200,3),(360203,'珠山区',360200,3),(360281,'乐平市',360200,3),(360222,'浮梁县',360200,3),(360300,'萍乡市',360000,2),(360302,'安源区',360300,3),(360313,'湘东区',360300,3),(360321,'莲花县',360300,3),(360322,'上栗县',360300,3),(360323,'芦溪县',360300,3),(360400,'九江市',360000,2),(360403,'浔阳区',360400,3),(360402,'濂溪区',360400,3),(360481,'瑞昌市',360400,3),(360482,'共青城市',360400,3),(360483,'庐山市',360400,3),(360421,'九江县',360400,3),(360423,'武宁县',360400,3),(360424,'修水县',360400,3),(360425,'永修县',360400,3),(360426,'德安县',360400,3),(360428,'都昌县',360400,3),(360429,'湖口县',360400,3),(360430,'彭泽县',360400,3),(360500,'新余市',360000,2),(360502,'渝水区',360500,3),(360521,'分宜县',360500,3),(360600,'鹰潭市',360000,2),(360602,'月湖区',360600,3),(360681,'贵溪市',360600,3),(360622,'余江县',360600,3),(360700,'赣州市',360000,2),(360702,'章贡区',360700,3),(360703,'南康区',360700,3),(360704,'赣县区',360700,3),(360781,'瑞金市',360700,3),(360722,'信丰县',360700,3),(360723,'大余县',360700,3),(360724,'上犹县',360700,3),(360725,'崇义县',360700,3),(360726,'安远县',360700,3),(360727,'龙南县',360700,3),(360728,'定南县',360700,3),(360729,'全南县',360700,3),(360730,'宁都县',360700,3),(360731,'于都县',360700,3),(360732,'兴国县',360700,3),(360733,'会昌县',360700,3),(360734,'寻乌县',360700,3),(360735,'石城县',360700,3),(360800,'吉安市',360000,2),(360802,'吉州区',360800,3),(360803,'青原区',360800,3),(360881,'井冈山市',360800,3),(360821,'吉安县',360800,3),(360822,'吉水县',360800,3),(360823,'峡江县',360800,3),(360824,'新干县',360800,3),(360825,'永丰县',360800,3),(360826,'泰和县',360800,3),(360827,'遂川县',360800,3),(360828,'万安县',360800,3),(360829,'安福县',360800,3),(360830,'永新县',360800,3),(360900,'宜春市',360000,2),(360902,'袁州区',360900,3),(360981,'丰城市',360900,3),(360982,'樟树市',360900,3),(360983,'高安市',360900,3),(360921,'奉新县',360900,3),(360922,'万载县',360900,3),(360923,'上高县',360900,3),(360924,'宜丰县',360900,3),(360925,'靖安县',360900,3),(360926,'铜鼓县',360900,3),(361000,'抚州市',360000,2),(361002,'临川区',361000,3),(361003,'东乡区',361000,3),(361021,'南城县',361000,3),(361022,'黎川县',361000,3),(361023,'南丰县',361000,3),(361024,'崇仁县',361000,3),(361025,'乐安县',361000,3),(361026,'宜黄县',361000,3),(361027,'金溪县',361000,3),(361028,'资溪县',361000,3),(361030,'广昌县',361000,3),(361100,'上饶市',360000,2),(361102,'信州区',361100,3),(361103,'广丰区',361100,3),(361181,'德兴市',361100,3),(361121,'上饶县',361100,3),(361123,'玉山县',361100,3),(361124,'铅山县',361100,3),(361125,'横峰县',361100,3),(361126,'弋阳县',361100,3),(361127,'余干县',361100,3),(361128,'鄱阳县',361100,3),(361129,'万年县',361100,3),(361130,'婺源县',361100,3),(370000,'山东省',0,1),(370100,'济南市',370000,2),(370103,'市中区',370100,3),(370102,'历下区',370100,3),(370104,'槐荫区',370100,3),(370105,'天桥区',370100,3),(370112,'历城区',370100,3),(370113,'长清区',370100,3),(370114,'章丘区',370100,3),(370124,'平阴县',370100,3),(370125,'济阳县',370100,3),(370126,'商河县',370100,3),(370200,'青岛市',370000,2),(370202,'市南区',370200,3),(370203,'市北区',370200,3),(370211,'黄岛区',370200,3),(370212,'崂山区',370200,3),(370213,'李沧区',370200,3),(370214,'城阳区',370200,3),(370281,'胶州市',370200,3),(370282,'即墨市',370200,3),(370283,'平度市',370200,3),(370285,'莱西市',370200,3),(370300,'淄博市',370000,2),(370303,'张店区',370300,3),(370302,'淄川区',370300,3),(370304,'博山区',370300,3),(370305,'临淄区',370300,3),(370306,'周村区',370300,3),(370321,'桓台县',370300,3),(370322,'高青县',370300,3),(370323,'沂源县',370300,3),(370400,'枣庄市',370000,2),(370403,'薛城区',370400,3),(370402,'市中区',370400,3),(370404,'峄城区',370400,3),(370405,'台儿庄区',370400,3),(370406,'山亭区',370400,3),(370481,'滕州市',370400,3),(370500,'东营市',370000,2),(370502,'东营区',370500,3),(370503,'河口区',370500,3),(370505,'垦利区',370500,3),(370522,'利津县',370500,3),(370523,'广饶县',370500,3),(370600,'烟台市',370000,2),(370613,'莱山区',370600,3),(370602,'芝罘区',370600,3),(370611,'福山区',370600,3),(370612,'牟平区',370600,3),(370681,'龙口市',370600,3),(370682,'莱阳市',370600,3),(370683,'莱州市',370600,3),(370684,'蓬莱市',370600,3),(370685,'招远市',370600,3),(370686,'栖霞市',370600,3),(370687,'海阳市',370600,3),(370634,'长岛县',370600,3),(370700,'潍坊市',370000,2),(370705,'奎文区',370700,3),(370702,'潍城区',370700,3),(370703,'寒亭区',370700,3),(370704,'坊子区',370700,3),(370781,'青州市',370700,3),(370782,'诸城市',370700,3),(370783,'寿光市',370700,3),(370784,'安丘市',370700,3),(370785,'高密市',370700,3),(370786,'昌邑市',370700,3),(370724,'临朐县',370700,3),(370725,'昌乐县',370700,3),(370800,'济宁市',370000,2),(370811,'任城区',370800,3),(370812,'兖州区',370800,3),(370881,'曲阜市',370800,3),(370883,'邹城市',370800,3),(370826,'微山县',370800,3),(370827,'鱼台县',370800,3),(370828,'金乡县',370800,3),(370829,'嘉祥县',370800,3),(370830,'汶上县',370800,3),(370831,'泗水县',370800,3),(370832,'梁山县',370800,3),(370900,'泰安市',370000,2),(370902,'泰山区',370900,3),(370911,'岱岳区',370900,3),(370982,'新泰市',370900,3),(370983,'肥城市',370900,3),(370921,'宁阳县',370900,3),(370923,'东平县',370900,3),(371000,'威海市',370000,2),(371002,'环翠区',371000,3),(371003,'文登区',371000,3),(371082,'荣成市',371000,3),(371083,'乳山市',371000,3),(371100,'日照市',370000,2),(371102,'东港区',371100,3),(371103,'岚山区',371100,3),(371121,'五莲县',371100,3),(371122,'莒县',371100,3),(371200,'莱芜市',370000,2),(371202,'莱城区',371200,3),(371203,'钢城区',371200,3),(371300,'临沂市',370000,2),(371302,'兰山区',371300,3),(371311,'罗庄区',371300,3),(371312,'河东区',371300,3),(371321,'沂南县',371300,3),(371322,'郯城县',371300,3),(371323,'沂水县',371300,3),(371324,'兰陵县',371300,3),(371325,'费县',371300,3),(371326,'平邑县',371300,3),(371327,'莒南县',371300,3),(371328,'蒙阴县',371300,3),(371329,'临沭县',371300,3),(371400,'德州市',370000,2),(371402,'德城区',371400,3),(371403,'陵城区',371400,3),(371481,'乐陵市',371400,3),(371482,'禹城市',371400,3),(371422,'宁津县',371400,3),(371423,'庆云县',371400,3),(371424,'临邑县',371400,3),(371425,'齐河县',371400,3),(371426,'平原县',371400,3),(371427,'夏津县',371400,3),(371428,'武城县',371400,3),(371500,'聊城市',370000,2),(371502,'东昌府区',371500,3),(371581,'临清市',371500,3),(371521,'阳谷县',371500,3),(371522,'莘县',371500,3),(371523,'茌平县',371500,3),(371524,'东阿县',371500,3),(371525,'冠县',371500,3),(371526,'高唐县',371500,3),(371600,'滨州市',370000,2),(371602,'滨城区',371600,3),(371603,'沾化区',371600,3),(371621,'惠民县',371600,3),(371622,'阳信县',371600,3),(371623,'无棣县',371600,3),(371625,'博兴县',371600,3),(371626,'邹平县',371600,3),(371700,'菏泽市',370000,2),(371702,'牡丹区',371700,3),(371703,'定陶区',371700,3),(371721,'曹县',371700,3),(371722,'单县',371700,3),(371723,'成武县',371700,3),(371724,'巨野县',371700,3),(371725,'郓城县',371700,3),(371726,'鄄城县',371700,3),(371728,'东明县',371700,3),(410000,'河南省',0,1),(410100,'郑州市',410000,2),(410102,'中原区',410100,3),(410103,'二七区',410100,3),(410104,'管城回族区',410100,3),(410105,'金水区',410100,3),(410106,'上街区',410100,3),(410108,'惠济区',410100,3),(410181,'巩义市',410100,3),(410182,'荥阳市',410100,3),(410183,'新密市',410100,3),(410184,'新郑市',410100,3),(410185,'登封市',410100,3),(410122,'中牟县',410100,3),(410200,'开封市',410000,2),(410204,'鼓楼区',410200,3),(410202,'龙亭区',410200,3),(410203,'顺河回族区',410200,3),(410205,'禹王台区',410200,3),(410212,'祥符区',410200,3),(410221,'杞县',410200,3),(410222,'通许县',410200,3),(410223,'尉氏县',410200,3),(410225,'兰考县',410200,3),(410300,'洛阳市',410000,2),(410303,'西工区',410300,3),(410302,'老城区',410300,3),(410304,'瀍河回族区',410300,3),(410305,'涧西区',410300,3),(410306,'吉利区',410300,3),(410311,'洛龙区',410300,3),(410381,'偃师市',410300,3),(410322,'孟津县',410300,3),(410323,'新安县',410300,3),(410324,'栾川县',410300,3),(410325,'嵩县',410300,3),(410326,'汝阳县',410300,3),(410327,'宜阳县',410300,3),(410328,'洛宁县',410300,3),(410329,'伊川县',410300,3),(410400,'平顶山市',410000,2),(410402,'新华区',410400,3),(410403,'卫东区',410400,3),(410404,'石龙区',410400,3),(410411,'湛河区',410400,3),(410481,'舞钢市',410400,3),(410482,'汝州市',410400,3),(410421,'宝丰县',410400,3),(410422,'叶县',410400,3),(410423,'鲁山县',410400,3),(410425,'郏县',410400,3),(410500,'安阳市',410000,2),(410503,'北关区',410500,3),(410502,'文峰区',410500,3),(410505,'殷都区',410500,3),(410506,'龙安区',410500,3),(410581,'林州市',410500,3),(410522,'安阳县',410500,3),(410523,'汤阴县',410500,3),(410526,'滑县',410500,3),(410527,'内黄县',410500,3),(410600,'鹤壁市',410000,2),(410611,'淇滨区',410600,3),(410602,'鹤山区',410600,3),(410603,'山城区',410600,3),(410621,'浚县',410600,3),(410622,'淇县',410600,3),(410700,'新乡市',410000,2),(410703,'卫滨区',410700,3),(410702,'红旗区',410700,3),(410704,'凤泉区',410700,3),(410711,'牧野区',410700,3),(410781,'卫辉市',410700,3),(410782,'辉县市',410700,3),(410721,'新乡县',410700,3),(410724,'获嘉县',410700,3),(410725,'原阳县',410700,3),(410726,'延津县',410700,3),(410727,'封丘县',410700,3),(410728,'长垣县',410700,3),(410800,'焦作市',410000,2),(410802,'解放区',410800,3),(410803,'中站区',410800,3),(410804,'马村区',410800,3),(410811,'山阳区',410800,3),(410882,'沁阳市',410800,3),(410883,'孟州市',410800,3),(410821,'修武县',410800,3),(410822,'博爱县',410800,3),(410823,'武陟县',410800,3),(410825,'温县',410800,3),(410900,'濮阳市',410000,2),(410902,'华龙区',410900,3),(410922,'清丰县',410900,3),(410923,'南乐县',410900,3),(410926,'范县',410900,3),(410927,'台前县',410900,3),(410928,'濮阳县',410900,3),(411000,'许昌市',410000,2),(411002,'魏都区',411000,3),(411003,'建安区',411000,3),(411081,'禹州市',411000,3),(411082,'长葛市',411000,3),(411024,'鄢陵县',411000,3),(411025,'襄城县',411000,3),(411100,'漯河市',410000,2),(411103,'郾城区',411100,3),(411102,'源汇区',411100,3),(411104,'召陵区',411100,3),(411121,'舞阳县',411100,3),(411122,'临颍县',411100,3),(411200,'三门峡市',410000,2),(411202,'湖滨区',411200,3),(411203,'陕州区',411200,3),(411281,'义马市',411200,3),(411282,'灵宝市',411200,3),(411221,'渑池县',411200,3),(411224,'卢氏县',411200,3),(411300,'南阳市',410000,2),(411303,'卧龙区',411300,3),(411302,'宛城区',411300,3),(411381,'邓州市',411300,3),(411321,'南召县',411300,3),(411322,'方城县',411300,3),(411323,'西峡县',411300,3),(411324,'镇平县',411300,3),(411325,'内乡县',411300,3),(411326,'淅川县',411300,3),(411327,'社旗县',411300,3),(411328,'唐河县',411300,3),(411329,'新野县',411300,3),(411330,'桐柏县',411300,3),(411400,'商丘市',410000,2),(411402,'梁园区',411400,3),(411403,'睢阳区',411400,3),(411481,'永城市',411400,3),(411421,'民权县',411400,3),(411422,'睢县',411400,3),(411423,'宁陵县',411400,3),(411424,'柘城县',411400,3),(411425,'虞城县',411400,3),(411426,'夏邑县',411400,3),(411500,'信阳市',410000,2),(411502,'浉河区',411500,3),(411503,'平桥区',411500,3),(411521,'罗山县',411500,3),(411522,'光山县',411500,3),(411523,'新县',411500,3),(411524,'商城县',411500,3),(411525,'固始县',411500,3),(411526,'潢川县',411500,3),(411527,'淮滨县',411500,3),(411528,'息县',411500,3),(411600,'周口市',410000,2),(411602,'川汇区',411600,3),(411681,'项城市',411600,3),(411621,'扶沟县',411600,3),(411622,'西华县',411600,3),(411623,'商水县',411600,3),(411624,'沈丘县',411600,3),(411625,'郸城县',411600,3),(411626,'淮阳县',411600,3),(411627,'太康县',411600,3),(411628,'鹿邑县',411600,3),(411700,'驻马店市',410000,2),(411702,'驿城区',411700,3),(411721,'西平县',411700,3),(411722,'上蔡县',411700,3),(411723,'平舆县',411700,3),(411724,'正阳县',411700,3),(411725,'确山县',411700,3),(411726,'泌阳县',411700,3),(411727,'汝南县',411700,3),(411728,'遂平县',411700,3),(411729,'新蔡县',411700,3),(419001,'济源市',411700,3),(420000,'湖北省',0,1),(420100,'武汉市',420000,2),(420102,'江岸区',420100,3),(420103,'江汉区',420100,3),(420104,'硚口区',420100,3),(420105,'汉阳区',420100,3),(420106,'武昌区',420100,3),(420107,'青山区',420100,3),(420111,'洪山区',420100,3),(420112,'东西湖区',420100,3),(420113,'汉南区',420100,3),(420114,'蔡甸区',420100,3),(420115,'江夏区',420100,3),(420116,'黄陂区',420100,3),(420117,'新洲区',420100,3),(420200,'黄石市',420000,2),(420204,'下陆区',420200,3),(420202,'黄石港区',420200,3),(420203,'西塞山区',420200,3),(420205,'铁山区',420200,3),(420281,'大冶市',420200,3),(420222,'阳新县',420200,3),(420300,'十堰市',420000,2),(420302,'茅箭区',420300,3),(420303,'张湾区',420300,3),(420304,'郧阳区',420300,3),(420381,'丹江口市',420300,3),(420322,'郧西县',420300,3),(420323,'竹山县',420300,3),(420324,'竹溪县',420300,3),(420325,'房县',420300,3),(420500,'宜昌市',420000,2),(420502,'西陵区',420500,3),(420503,'伍家岗区',420500,3),(420504,'点军区',420500,3),(420505,'猇亭区',420500,3),(420506,'夷陵区',420500,3),(420581,'宜都市',420500,3),(420582,'当阳市',420500,3),(420583,'枝江市',420500,3),(420525,'远安县',420500,3),(420526,'兴山县',420500,3),(420527,'秭归县',420500,3),(420528,'长阳土家族自治县',420500,3),(420529,'五峰土家族自治县',420500,3),(420600,'襄阳市',420000,2),(420602,'襄城区',420600,3),(420606,'樊城区',420600,3),(420607,'襄州区',420600,3),(420682,'老河口市',420600,3),(420683,'枣阳市',420600,3),(420684,'宜城市',420600,3),(420624,'南漳县',420600,3),(420625,'谷城县',420600,3),(420626,'保康县',420600,3),(420700,'鄂州市',420000,2),(420704,'鄂城区',420700,3),(420702,'梁子湖区',420700,3),(420703,'华容区',420700,3),(420800,'荆门市',420000,2),(420802,'东宝区',420800,3),(420804,'掇刀区',420800,3),(420881,'钟祥市',420800,3),(420821,'京山县',420800,3),(420822,'沙洋县',420800,3),(420900,'孝感市',420000,2),(420902,'孝南区',420900,3),(420981,'应城市',420900,3),(420982,'安陆市',420900,3),(420984,'汉川市',420900,3),(420921,'孝昌县',420900,3),(420922,'大悟县',420900,3),(420923,'云梦县',420900,3),(421000,'荆州市',420000,2),(421002,'沙市区',421000,3),(421003,'荆州区',421000,3),(421081,'石首市',421000,3),(421083,'洪湖市',421000,3),(421087,'松滋市',421000,3),(421022,'公安县',421000,3),(421023,'监利县',421000,3),(421024,'江陵县',421000,3),(421100,'黄冈市',420000,2),(421102,'黄州区',421100,3),(421181,'麻城市',421100,3),(421182,'武穴市',421100,3),(421121,'团风县',421100,3),(421122,'红安县',421100,3),(421123,'罗田县',421100,3),(421124,'英山县',421100,3),(421125,'浠水县',421100,3),(421126,'蕲春县',421100,3),(421127,'黄梅县',421100,3),(421200,'咸宁市',420000,2),(421202,'咸安区',421200,3),(421281,'赤壁市',421200,3),(421221,'嘉鱼县',421200,3),(421222,'通城县',421200,3),(421223,'崇阳县',421200,3),(421224,'通山县',421200,3),(421300,'随州市',420000,2),(421303,'曾都区',421300,3),(421381,'广水市',421300,3),(421321,'随县',421300,3),(422800,'恩施土家族苗族自治州',420000,2),(422801,'恩施市',422800,3),(422802,'利川市',422800,3),(422822,'建始县',422800,3),(422823,'巴东县',422800,3),(422825,'宣恩县',422800,3),(422826,'咸丰县',422800,3),(422827,'来凤县',422800,3),(422828,'鹤峰县',422800,3),(429004,'仙桃市',422800,3),(429005,'潜江市',422800,3),(429006,'天门市',422800,3),(429021,'神农架林区',422800,3),(430000,'湖南省',0,1),(430100,'长沙市',430000,2),(430104,'岳麓区',430100,3),(430102,'芙蓉区',430100,3),(430103,'天心区',430100,3),(430105,'开福区',430100,3),(430111,'雨花区',430100,3),(430112,'望城区',430100,3),(430181,'浏阳市',430100,3),(430182,'宁乡市',430100,3),(430121,'长沙县',430100,3),(430200,'株洲市',430000,2),(430211,'天元区',430200,3),(430202,'荷塘区',430200,3),(430203,'芦淞区',430200,3),(430204,'石峰区',430200,3),(430281,'醴陵市',430200,3),(430221,'株洲县',430200,3),(430223,'攸县',430200,3),(430224,'茶陵县',430200,3),(430225,'炎陵县',430200,3),(430300,'湘潭市',430000,2),(430304,'岳塘区',430300,3),(430302,'雨湖区',430300,3),(430381,'湘乡市',430300,3),(430382,'韶山市',430300,3),(430321,'湘潭县',430300,3),(430400,'衡阳市',430000,2),(430408,'蒸湘区',430400,3),(430405,'珠晖区',430400,3),(430406,'雁峰区',430400,3),(430407,'石鼓区',430400,3),(430412,'南岳区',430400,3),(430481,'耒阳市',430400,3),(430482,'常宁市',430400,3),(430421,'衡阳县',430400,3),(430422,'衡南县',430400,3),(430423,'衡山县',430400,3),(430424,'衡东县',430400,3),(430426,'祁东县',430400,3),(430500,'邵阳市',430000,2),(430503,'大祥区',430500,3),(430502,'双清区',430500,3),(430511,'北塔区',430500,3),(430581,'武冈市',430500,3),(430521,'邵东县',430500,3),(430522,'新邵县',430500,3),(430523,'邵阳县',430500,3),(430524,'隆回县',430500,3),(430525,'洞口县',430500,3),(430527,'绥宁县',430500,3),(430528,'新宁县',430500,3),(430529,'城步苗族自治县',430500,3),(430600,'岳阳市',430000,2),(430602,'岳阳楼区',430600,3),(430603,'云溪区',430600,3),(430611,'君山区',430600,3),(430681,'汨罗市',430600,3),(430682,'临湘市',430600,3),(430621,'岳阳县',430600,3),(430623,'华容县',430600,3),(430624,'湘阴县',430600,3),(430626,'平江县',430600,3),(430700,'常德市',430000,2),(430702,'武陵区',430700,3),(430703,'鼎城区',430700,3),(430781,'津市市',430700,3),(430721,'安乡县',430700,3),(430722,'汉寿县',430700,3),(430723,'澧县',430700,3),(430724,'临澧县',430700,3),(430725,'桃源县',430700,3),(430726,'石门县',430700,3),(430800,'张家界市',430000,2),(430802,'永定区',430800,3),(430811,'武陵源区',430800,3),(430821,'慈利县',430800,3),(430822,'桑植县',430800,3),(430900,'益阳市',430000,2),(430903,'赫山区',430900,3),(430902,'资阳区',430900,3),(430981,'沅江市',430900,3),(430921,'南县',430900,3),(430922,'桃江县',430900,3),(430923,'安化县',430900,3),(431000,'郴州市',430000,2),(431002,'北湖区',431000,3),(431003,'苏仙区',431000,3),(431081,'资兴市',431000,3),(431021,'桂阳县',431000,3),(431022,'宜章县',431000,3),(431023,'永兴县',431000,3),(431024,'嘉禾县',431000,3),(431025,'临武县',431000,3),(431026,'汝城县',431000,3),(431027,'桂东县',431000,3),(431028,'安仁县',431000,3),(431100,'永州市',430000,2),(431103,'冷水滩区',431100,3),(431102,'零陵区',431100,3),(431121,'祁阳县',431100,3),(431122,'东安县',431100,3),(431123,'双牌县',431100,3),(431124,'道县',431100,3),(431125,'江永县',431100,3),(431126,'宁远县',431100,3),(431127,'蓝山县',431100,3),(431128,'新田县',431100,3),(431129,'江华瑶族自治县',431100,3),(431200,'怀化市',430000,2),(431202,'鹤城区',431200,3),(431281,'洪江市',431200,3),(431221,'中方县',431200,3),(431222,'沅陵县',431200,3),(431223,'辰溪县',431200,3),(431224,'溆浦县',431200,3),(431225,'会同县',431200,3),(431226,'麻阳苗族自治县',431200,3),(431227,'新晃侗族自治县',431200,3),(431228,'芷江侗族自治县',431200,3),(431229,'靖州苗族侗族自治县',431200,3),(431230,'通道侗族自治县',431200,3),(431300,'娄底市',430000,2),(431302,'娄星区',431300,3),(431381,'冷水江市',431300,3),(431382,'涟源市',431300,3),(431321,'双峰县',431300,3),(431322,'新化县',431300,3),(433100,'湘西土家族苗族自治州',430000,2),(433101,'吉首市',433100,3),(433122,'泸溪县',433100,3),(433123,'凤凰县',433100,3),(433124,'花垣县',433100,3),(433125,'保靖县',433100,3),(433126,'古丈县',433100,3),(433127,'永顺县',433100,3),(433130,'龙山县',433100,3),(440000,'广东省',0,1),(440100,'广州市',440000,2),(440104,'越秀区',440100,3),(440103,'荔湾区',440100,3),(440105,'海珠区',440100,3),(440106,'天河区',440100,3),(440111,'白云区',440100,3),(440112,'黄埔区',440100,3),(440113,'番禺区',440100,3),(440114,'花都区',440100,3),(440115,'南沙区',440100,3),(440118,'增城区',440100,3),(440117,'从化区',440100,3),(440200,'韶关市',440000,2),(440204,'浈江区',440200,3),(440203,'武江区',440200,3),(440205,'曲江区',440200,3),(440281,'乐昌市',440200,3),(440282,'南雄市',440200,3),(440222,'始兴县',440200,3),(440224,'仁化县',440200,3),(440229,'翁源县',440200,3),(440233,'新丰县',440200,3),(440232,'乳源瑶族自治县',440200,3),(440300,'深圳市',440000,2),(440304,'福田区',440300,3),(440303,'罗湖区',440300,3),(440305,'南山区',440300,3),(440306,'宝安区',440300,3),(440307,'龙岗区',440300,3),(440308,'盐田区',440300,3),(440309,'龙华区',440300,3),(440310,'坪山区',440300,3),(440400,'珠海市',440000,2),(440402,'香洲区',440400,3),(440403,'斗门区',440400,3),(440404,'金湾区',440400,3),(440500,'汕头市',440000,2),(440511,'金平区',440500,3),(440507,'龙湖区',440500,3),(440512,'濠江区',440500,3),(440513,'潮阳区',440500,3),(440514,'潮南区',440500,3),(440515,'澄海区',440500,3),(440523,'南澳县',440500,3),(440600,'佛山市',440000,2),(440604,'禅城区',440600,3),(440605,'南海区',440600,3),(440606,'顺德区',440600,3),(440607,'三水区',440600,3),(440608,'高明区',440600,3),(440700,'江门市',440000,2),(440703,'蓬江区',440700,3),(440704,'江海区',440700,3),(440705,'新会区',440700,3),(440781,'台山市',440700,3),(440783,'开平市',440700,3),(440784,'鹤山市',440700,3),(440785,'恩平市',440700,3),(440800,'湛江市',440000,2),(440802,'赤坎区',440800,3),(440803,'霞山区',440800,3),(440804,'坡头区',440800,3),(440811,'麻章区',440800,3),(440881,'廉江市',440800,3),(440882,'雷州市',440800,3),(440883,'吴川市',440800,3),(440823,'遂溪县',440800,3),(440825,'徐闻县',440800,3),(440900,'茂名市',440000,2),(440902,'茂南区',440900,3),(440904,'电白区',440900,3),(440981,'高州市',440900,3),(440982,'化州市',440900,3),(440983,'信宜市',440900,3),(441200,'肇庆市',440000,2),(441202,'端州区',441200,3),(441203,'鼎湖区',441200,3),(441204,'高要区',441200,3),(441284,'四会市',441200,3),(441223,'广宁县',441200,3),(441224,'怀集县',441200,3),(441225,'封开县',441200,3),(441226,'德庆县',441200,3),(441300,'惠州市',440000,2),(441302,'惠城区',441300,3),(441303,'惠阳区',441300,3),(441322,'博罗县',441300,3),(441323,'惠东县',441300,3),(441324,'龙门县',441300,3),(441400,'梅州市',440000,2),(441402,'梅江区',441400,3),(441403,'梅县区',441400,3),(441481,'兴宁市',441400,3),(441422,'大埔县',441400,3),(441423,'丰顺县',441400,3),(441424,'五华县',441400,3),(441426,'平远县',441400,3),(441427,'蕉岭县',441400,3),(441500,'汕尾市',440000,2),(441502,'城区',441500,3),(441581,'陆丰市',441500,3),(441521,'海丰县',441500,3),(441523,'陆河县',441500,3),(441600,'河源市',440000,2),(441602,'源城区',441600,3),(441621,'紫金县',441600,3),(441622,'龙川县',441600,3),(441623,'连平县',441600,3),(441624,'和平县',441600,3),(441625,'东源县',441600,3),(441700,'阳江市',440000,2),(441702,'江城区',441700,3),(441704,'阳东区',441700,3),(441781,'阳春市',441700,3),(441721,'阳西县',441700,3),(441800,'清远市',440000,2),(441802,'清城区',441800,3),(441803,'清新区',441800,3),(441881,'英德市',441800,3),(441882,'连州市',441800,3),(441821,'佛冈县',441800,3),(441823,'阳山县',441800,3),(441825,'连山壮族瑶族自治县',441800,3),(441826,'连南瑶族自治县',441800,3),(441900,'东莞市',440000,2),(442000,'中山市',440000,2),(445100,'潮州市',440000,2),(445102,'湘桥区',445100,3),(445103,'潮安区',445100,3),(445122,'饶平县',445100,3),(445200,'揭阳市',440000,2),(445202,'榕城区',445200,3),(445203,'揭东区',445200,3),(445281,'普宁市',445200,3),(445222,'揭西县',445200,3),(445224,'惠来县',445200,3),(445300,'云浮市',440000,2),(445302,'云城区',445300,3),(445303,'云安区',445300,3),(445381,'罗定市',445300,3),(445321,'新兴县',445300,3),(445322,'郁南县',445300,3),(450000,'广西壮族自治区',0,1),(450100,'南宁市',450000,2),(450103,'青秀区',450100,3),(450102,'兴宁区',450100,3),(450105,'江南区',450100,3),(450107,'西乡塘区',450100,3),(450108,'良庆区',450100,3),(450109,'邕宁区',450100,3),(450110,'武鸣区',450100,3),(450123,'隆安县',450100,3),(450124,'马山县',450100,3),(450125,'上林县',450100,3),(450126,'宾阳县',450100,3),(450127,'横县',450100,3),(450200,'柳州市',450000,2),(450205,'柳北区',450200,3),(450202,'城中区',450200,3),(450203,'鱼峰区',450200,3),(450204,'柳南区',450200,3),(450206,'柳江区',450200,3),(450222,'柳城县',450200,3),(450223,'鹿寨县',450200,3),(450224,'融安县',450200,3),(450225,'融水苗族自治县',450200,3),(450226,'三江侗族自治县',450200,3),(450300,'桂林市',450000,2),(450312,'临桂区',450300,3),(450302,'秀峰区',450300,3),(450303,'叠彩区',450300,3),(450304,'象山区',450300,3),(450305,'七星区',450300,3),(450311,'雁山区',450300,3),(450321,'阳朔县',450300,3),(450323,'灵川县',450300,3),(450324,'全州县',450300,3),(450325,'兴安县',450300,3),(450326,'永福县',450300,3),(450327,'灌阳县',450300,3),(450329,'资源县',450300,3),(450330,'平乐县',450300,3),(450331,'荔浦县',450300,3),(450328,'龙胜各族自治县',450300,3),(450332,'恭城瑶族自治县',450300,3),(450400,'梧州市',450000,2),(450405,'长洲区',450400,3),(450403,'万秀区',450400,3),(450406,'龙圩区',450400,3),(450481,'岑溪市',450400,3),(450421,'苍梧县',450400,3),(450422,'藤县',450400,3),(450423,'蒙山县',450400,3),(450500,'北海市',450000,2),(450502,'海城区',450500,3),(450503,'银海区',450500,3),(450512,'铁山港区',450500,3),(450521,'合浦县',450500,3),(450600,'防城港市',450000,2),(450602,'港口区',450600,3),(450603,'防城区',450600,3),(450681,'东兴市',450600,3),(450621,'上思县',450600,3),(450700,'钦州市',450000,2),(450702,'钦南区',450700,3),(450703,'钦北区',450700,3),(450721,'灵山县',450700,3),(450722,'浦北县',450700,3),(450800,'贵港市',450000,2),(450802,'港北区',450800,3),(450803,'港南区',450800,3),(450804,'覃塘区',450800,3),(450881,'桂平市',450800,3),(450821,'平南县',450800,3),(450900,'玉林市',450000,2),(450902,'玉州区',450900,3),(450903,'福绵区',450900,3),(450981,'北流市',450900,3),(450921,'容县',450900,3),(450922,'陆川县',450900,3),(450923,'博白县',450900,3),(450924,'兴业县',450900,3),(451000,'百色市',450000,2),(451002,'右江区',451000,3),(451081,'靖西市',451000,3),(451021,'田阳县',451000,3),(451022,'田东县',451000,3),(451023,'平果县',451000,3),(451024,'德保县',451000,3),(451026,'那坡县',451000,3),(451027,'凌云县',451000,3),(451028,'乐业县',451000,3),(451029,'田林县',451000,3),(451030,'西林县',451000,3),(451031,'隆林各族自治县',451000,3),(451100,'贺州市',450000,2),(451102,'八步区',451100,3),(451103,'平桂区',451100,3),(451121,'昭平县',451100,3),(451122,'钟山县',451100,3),(451123,'富川瑶族自治县',451100,3),(451200,'河池市',450000,2),(451202,'金城江区',451200,3),(451203,'宜州区',451200,3),(451221,'南丹县',451200,3),(451222,'天峨县',451200,3),(451223,'凤山县',451200,3),(451224,'东兰县',451200,3),(451225,'罗城仫佬族自治县',451200,3),(451226,'环江毛南族自治县',451200,3),(451227,'巴马瑶族自治县',451200,3),(451228,'都安瑶族自治县',451200,3),(451229,'大化瑶族自治县',451200,3),(451300,'来宾市',450000,2),(451302,'兴宾区',451300,3),(451381,'合山市',451300,3),(451321,'忻城县',451300,3),(451322,'象州县',451300,3),(451323,'武宣县',451300,3),(451324,'金秀瑶族自治县',451300,3),(451400,'崇左市',450000,2),(451402,'江州区',451400,3),(451481,'凭祥市',451400,3),(451421,'扶绥县',451400,3),(451422,'宁明县',451400,3),(451423,'龙州县',451400,3),(451424,'大新县',451400,3),(451425,'天等县',451400,3),(460000,'海南省',0,1),(460100,'海口市',460000,2),(460106,'龙华区',460100,3),(460105,'秀英区',460100,3),(460107,'琼山区',460100,3),(460108,'美兰区',460100,3),(460200,'三亚市',460000,2),(460203,'吉阳区',460200,3),(460202,'海棠区',460200,3),(460204,'天涯区',460200,3),(460205,'崖州区',460200,3),(460300,'三沙市',460000,2),(460400,'儋州市',460000,2),(469001,'五指山市',460400,3),(469002,'琼海市',460400,3),(469005,'文昌市',460400,3),(469006,'万宁市',460400,3),(469007,'东方市',460400,3),(469021,'定安县',460400,3),(469022,'屯昌县',460400,3),(469023,'澄迈县',460400,3),(469024,'临高县',460400,3),(469025,'白沙黎族自治县',460400,3),(469026,'昌江黎族自治县',460400,3),(469027,'乐东黎族自治县',460400,3),(469028,'陵水黎族自治县',460400,3),(469029,'保亭黎族苗族自治县',460400,3),(469030,'琼中黎族苗族自治县',460400,3),(500000,'重庆市',0,1),(500100,'重庆市辖区',500000,2),(500103,'渝中区',500100,3),(500101,'万州区',500100,3),(500102,'涪陵区',500100,3),(500104,'大渡口区',500100,3),(500105,'江北区',500100,3),(500106,'沙坪坝区',500100,3),(500107,'九龙坡区',500100,3),(500108,'南岸区',500100,3),(500109,'北碚区',500100,3),(500110,'綦江区',500100,3),(500111,'大足区',500100,3),(500112,'渝北区',500100,3),(500113,'巴南区',500100,3),(500114,'黔江区',500100,3),(500115,'长寿区',500100,3),(500116,'江津区',500100,3),(500117,'合川区',500100,3),(500118,'永川区',500100,3),(500119,'南川区',500100,3),(500120,'璧山区',500100,3),(500151,'铜梁区',500100,3),(500152,'潼南区',500100,3),(500153,'荣昌区',500100,3),(500154,'开州区',500100,3),(500155,'梁平区',500100,3),(500156,'武隆区',500100,3),(500200,'重庆市辖县',500000,2),(500229,'城口县',500200,3),(500230,'丰都县',500200,3),(500231,'垫江县',500200,3),(500233,'忠县',500200,3),(500235,'云阳县',500200,3),(500236,'奉节县',500200,3),(500237,'巫山县',500200,3),(500238,'巫溪县',500200,3),(500240,'石柱土家族自治县',500200,3),(500241,'秀山土家族苗族自治县',500200,3),(500242,'酉阳土家族苗族自治县',500200,3),(500243,'彭水苗族土家族自治县',500200,3),(510000,'四川省',0,1),(510100,'成都市',510000,2),(510107,'武侯区',510100,3),(510104,'锦江区',510100,3),(510105,'青羊区',510100,3),(510106,'金牛区',510100,3),(510108,'成华区',510100,3),(510112,'龙泉驿区',510100,3),(510113,'青白江区',510100,3),(510114,'新都区',510100,3),(510115,'温江区',510100,3),(510116,'双流区',510100,3),(510117,'郫都区',510100,3),(510181,'都江堰市',510100,3),(510182,'彭州市',510100,3),(510183,'邛崃市',510100,3),(510184,'崇州市',510100,3),(510185,'简阳市',510100,3),(510121,'金堂县',510100,3),(510129,'大邑县',510100,3),(510131,'蒲江县',510100,3),(510132,'新津县',510100,3),(510300,'自贡市',510000,2),(510302,'自流井区',510300,3),(510303,'贡井区',510300,3),(510304,'大安区',510300,3),(510311,'沿滩区',510300,3),(510321,'荣县',510300,3),(510322,'富顺县',510300,3),(510400,'攀枝花市',510000,2),(510402,'东区',510400,3),(510403,'西区',510400,3),(510411,'仁和区',510400,3),(510421,'米易县',510400,3),(510422,'盐边县',510400,3),(510500,'泸州市',510000,2),(510502,'江阳区',510500,3),(510503,'纳溪区',510500,3),(510504,'龙马潭区',510500,3),(510521,'泸县',510500,3),(510522,'合江县',510500,3),(510524,'叙永县',510500,3),(510525,'古蔺县',510500,3),(510600,'德阳市',510000,2),(510603,'旌阳区',510600,3),(510681,'广汉市',510600,3),(510682,'什邡市',510600,3),(510683,'绵竹市',510600,3),(510626,'罗江县',510600,3),(510623,'中江县',510600,3),(510700,'绵阳市',510000,2),(510703,'涪城区',510700,3),(510704,'游仙区',510700,3),(510705,'安州区',510700,3),(510781,'江油市',510700,3),(510722,'三台县',510700,3),(510723,'盐亭县',510700,3),(510725,'梓潼县',510700,3),(510727,'平武县',510700,3),(510726,'北川羌族自治县',510700,3),(510800,'广元市',510000,2),(510802,'利州区',510800,3),(510811,'昭化区',510800,3),(510812,'朝天区',510800,3),(510821,'旺苍县',510800,3),(510822,'青川县',510800,3),(510823,'剑阁县',510800,3),(510824,'苍溪县',510800,3),(510900,'遂宁市',510000,2),(510903,'船山区',510900,3),(510904,'安居区',510900,3),(510921,'蓬溪县',510900,3),(510922,'射洪县',510900,3),(510923,'大英县',510900,3),(511000,'内江市',510000,2),(511002,'市中区',511000,3),(511011,'东兴区',511000,3),(511083,'隆昌市',511000,3),(511024,'威远县',511000,3),(511025,'资中县',511000,3),(511100,'乐山市',510000,2),(511102,'市中区',511100,3),(511111,'沙湾区',511100,3),(511112,'五通桥区',511100,3),(511113,'金口河区',511100,3),(511181,'峨眉山市',511100,3),(511123,'犍为县',511100,3),(511124,'井研县',511100,3),(511126,'夹江县',511100,3),(511129,'沐川县',511100,3),(511132,'峨边彝族自治县',511100,3),(511133,'马边彝族自治县',511100,3),(511300,'南充市',510000,2),(511302,'顺庆区',511300,3),(511303,'高坪区',511300,3),(511304,'嘉陵区',511300,3),(511381,'阆中市',511300,3),(511321,'南部县',511300,3),(511322,'营山县',511300,3),(511323,'蓬安县',511300,3),(511324,'仪陇县',511300,3),(511325,'西充县',511300,3),(511400,'眉山市',510000,2),(511402,'东坡区',511400,3),(511403,'彭山区',511400,3),(511421,'仁寿县',511400,3),(511423,'洪雅县',511400,3),(511424,'丹棱县',511400,3),(511425,'青神县',511400,3),(511500,'宜宾市',510000,2),(511502,'翠屏区',511500,3),(511503,'南溪区',511500,3),(511521,'宜宾县',511500,3),(511523,'江安县',511500,3),(511524,'长宁县',511500,3),(511525,'高县',511500,3),(511526,'珙县',511500,3),(511527,'筠连县',511500,3),(511528,'兴文县',511500,3),(511529,'屏山县',511500,3),(511600,'广安市',510000,2),(511602,'广安区',511600,3),(511603,'前锋区',511600,3),(511681,'华蓥市',511600,3),(511621,'岳池县',511600,3),(511622,'武胜县',511600,3),(511623,'邻水县',511600,3),(511700,'达州市',510000,2),(511702,'通川区',511700,3),(511703,'达川区',511700,3),(511781,'万源市',511700,3),(511722,'宣汉县',511700,3),(511723,'开江县',511700,3),(511724,'大竹县',511700,3),(511725,'渠县',511700,3),(511800,'雅安市',510000,2),(511802,'雨城区',511800,3),(511803,'名山区',511800,3),(511822,'荥经县',511800,3),(511823,'汉源县',511800,3),(511824,'石棉县',511800,3),(511825,'天全县',511800,3),(511826,'芦山县',511800,3),(511827,'宝兴县',511800,3),(511900,'巴中市',510000,2),(511902,'巴州区',511900,3),(511903,'恩阳区',511900,3),(511921,'通江县',511900,3),(511922,'南江县',511900,3),(511923,'平昌县',511900,3),(512000,'资阳市',510000,2),(512002,'雁江区',512000,3),(512022,'乐至县',512000,3),(512021,'安岳县',512000,3),(513200,'阿坝藏族羌族自治州',510000,2),(513201,'马尔康市',513200,3),(513221,'汶川县',513200,3),(513222,'理县',513200,3),(513223,'茂县',513200,3),(513224,'松潘县',513200,3),(513225,'九寨沟县',513200,3),(513226,'金川县',513200,3),(513227,'小金县',513200,3),(513228,'黑水县',513200,3),(513230,'壤塘县',513200,3),(513231,'阿坝县',513200,3),(513232,'若尔盖县',513200,3),(513233,'红原县',513200,3),(513300,'甘孜藏族自治州',510000,2),(513301,'康定市',513300,3),(513322,'泸定县',513300,3),(513323,'丹巴县',513300,3),(513324,'九龙县',513300,3),(513325,'雅江县',513300,3),(513326,'道孚县',513300,3),(513327,'炉霍县',513300,3),(513328,'甘孜县',513300,3),(513329,'新龙县',513300,3),(513330,'德格县',513300,3),(513331,'白玉县',513300,3),(513332,'石渠县',513300,3),(513333,'色达县',513300,3),(513334,'理塘县',513300,3),(513335,'巴塘县',513300,3),(513336,'乡城县',513300,3),(513337,'稻城县',513300,3),(513338,'得荣县',513300,3),(513400,'凉山彝族自治州',510000,2),(513401,'西昌市',513400,3),(513423,'盐源县',513400,3),(513424,'德昌县',513400,3),(513425,'会理县',513400,3),(513426,'会东县',513400,3),(513427,'宁南县',513400,3),(513428,'普格县',513400,3),(513429,'布拖县',513400,3),(513430,'金阳县',513400,3),(513431,'昭觉县',513400,3),(513432,'喜德县',513400,3),(513433,'冕宁县',513400,3),(513434,'越西县',513400,3),(513435,'甘洛县',513400,3),(513436,'美姑县',513400,3),(513437,'雷波县',513400,3),(513422,'木里藏族自治县',513400,3),(520000,'贵州省',0,1),(520100,'贵阳市',520000,2),(520112,'乌当区',520100,3),(520102,'南明区',520100,3),(520103,'云岩区',520100,3),(520111,'花溪区',520100,3),(520113,'白云区',520100,3),(520115,'观山湖区',520100,3),(520181,'清镇市',520100,3),(520121,'开阳县',520100,3),(520122,'息烽县',520100,3),(520123,'修文县',520100,3),(520200,'六盘水市',520000,2),(520201,'钟山区',520200,3),(520281,'盘州市',520200,3),(520221,'水城县',520200,3),(520203,'六枝特区',520200,3),(520300,'遵义市',520000,2),(520303,'汇川区',520300,3),(520302,'红花岗区',520300,3),(520304,'播州区',520300,3),(520381,'赤水市',520300,3),(520382,'仁怀市',520300,3),(520322,'桐梓县',520300,3),(520323,'绥阳县',520300,3),(520324,'正安县',520300,3),(520327,'凤冈县',520300,3),(520328,'湄潭县',520300,3),(520329,'余庆县',520300,3),(520330,'习水县',520300,3),(520325,'道真仡佬族苗族自治县',520300,3),(520326,'务川仡佬族苗族自治县',520300,3),(520400,'安顺市',520000,2),(520402,'西秀区',520400,3),(520403,'平坝区',520400,3),(520422,'普定县',520400,3),(520423,'镇宁布依族苗族自治县',520400,3),(520424,'关岭布依族苗族自治县',520400,3),(520425,'紫云苗族布依族自治县',520400,3),(520500,'毕节市',520000,2),(520502,'七星关区',520500,3),(520521,'大方县',520500,3),(520522,'黔西县',520500,3),(520523,'金沙县',520500,3),(520524,'织金县',520500,3),(520525,'纳雍县',520500,3),(520527,'赫章县',520500,3),(520526,'威宁彝族回族苗族自治县',520500,3),(520600,'铜仁市',520000,2),(520602,'碧江区',520600,3),(520603,'万山区',520600,3),(520621,'江口县',520600,3),(520623,'石阡县',520600,3),(520624,'思南县',520600,3),(520626,'德江县',520600,3),(520622,'玉屏侗族自治县',520600,3),(520625,'印江土家族苗族自治县',520600,3),(520627,'沿河土家族自治县',520600,3),(520628,'松桃苗族自治县',520600,3),(522300,'黔西南布依族苗族自治州',520000,2),(522301,'兴义市',522300,3),(522322,'兴仁县',522300,3),(522323,'普安县',522300,3),(522324,'晴隆县',522300,3),(522325,'贞丰县',522300,3),(522326,'望谟县',522300,3),(522327,'册亨县',522300,3),(522328,'安龙县',522300,3),(522600,'黔东南苗族侗族自治州',520000,2),(522601,'凯里市',522600,3),(522622,'黄平县',522600,3),(522623,'施秉县',522600,3),(522624,'三穗县',522600,3),(522625,'镇远县',522600,3),(522626,'岑巩县',522600,3),(522627,'天柱县',522600,3),(522628,'锦屏县',522600,3),(522629,'剑河县',522600,3),(522630,'台江县',522600,3),(522631,'黎平县',522600,3),(522632,'榕江县',522600,3),(522633,'从江县',522600,3),(522634,'雷山县',522600,3),(522635,'麻江县',522600,3),(522636,'丹寨县',522600,3),(522700,'黔南布依族苗族自治州',520000,2),(522701,'都匀市',522700,3),(522702,'福泉市',522700,3),(522722,'荔波县',522700,3),(522723,'贵定县',522700,3),(522725,'瓮安县',522700,3),(522726,'独山县',522700,3),(522727,'平塘县',522700,3),(522728,'罗甸县',522700,3),(522729,'长顺县',522700,3),(522730,'龙里县',522700,3),(522731,'惠水县',522700,3),(522732,'三都水族自治县',522700,3),(530000,'云南省',0,1),(530100,'昆明市',530000,2),(530114,'呈贡区',530100,3),(530102,'五华区',530100,3),(530103,'盘龙区',530100,3),(530111,'官渡区',530100,3),(530112,'西山区',530100,3),(530113,'东川区',530100,3),(530115,'晋宁区',530100,3),(530181,'安宁市',530100,3),(530124,'富民县',530100,3),(530125,'宜良县',530100,3),(530127,'嵩明县',530100,3),(530126,'石林彝族自治县',530100,3),(530128,'禄劝彝族苗族自治县',530100,3),(530129,'寻甸回族彝族自治县',530100,3),(530300,'曲靖市',530000,2),(530302,'麒麟区',530300,3),(530303,'沾益区',530300,3),(530381,'宣威市',530300,3),(530321,'马龙县',530300,3),(530322,'陆良县',530300,3),(530323,'师宗县',530300,3),(530324,'罗平县',530300,3),(530325,'富源县',530300,3),(530326,'会泽县',530300,3),(530400,'玉溪市',530000,2),(530402,'红塔区',530400,3),(530403,'江川区',530400,3),(530422,'澄江县',530400,3),(530423,'通海县',530400,3),(530424,'华宁县',530400,3),(530425,'易门县',530400,3),(530426,'峨山彝族自治县',530400,3),(530427,'新平彝族傣族自治县',530400,3),(530428,'元江哈尼族彝族傣族自治县',530400,3),(530500,'保山市',530000,2),(530502,'隆阳区',530500,3),(530581,'腾冲市',530500,3),(530521,'施甸县',530500,3),(530523,'龙陵县',530500,3),(530524,'昌宁县',530500,3),(530600,'昭通市',530000,2),(530602,'昭阳区',530600,3),(530621,'鲁甸县',530600,3),(530622,'巧家县',530600,3),(530623,'盐津县',530600,3),(530624,'大关县',530600,3),(530625,'永善县',530600,3),(530626,'绥江县',530600,3),(530627,'镇雄县',530600,3),(530628,'彝良县',530600,3),(530629,'威信县',530600,3),(530630,'水富县',530600,3),(530700,'丽江市',530000,2),(530702,'古城区',530700,3),(530722,'永胜县',530700,3),(530723,'华坪县',530700,3),(530721,'玉龙纳西族自治县',530700,3),(530724,'宁蒗彝族自治县',530700,3),(530800,'普洱市',530000,2),(530802,'思茅区',530800,3),(530821,'宁洱哈尼族彝族自治县',530800,3),(530822,'墨江哈尼族自治县',530800,3),(530823,'景东彝族自治县',530800,3),(530824,'景谷傣族彝族自治县',530800,3),(530825,'镇沅彝族哈尼族拉祜族自治县',530800,3),(530826,'江城哈尼族彝族自治县',530800,3),(530827,'孟连傣族拉祜族佤族自治县',530800,3),(530828,'澜沧拉祜族自治县',530800,3),(530829,'西盟佤族自治县',530800,3),(530900,'临沧市',530000,2),(530902,'临翔区',530900,3),(530921,'凤庆县',530900,3),(530922,'云县',530900,3),(530923,'永德县',530900,3),(530924,'镇康县',530900,3),(530925,'双江拉祜族佤族布朗族傣族自治县',530900,3),(530926,'耿马傣族佤族自治县',530900,3),(530927,'沧源佤族自治县',530900,3),(532300,'楚雄彝族自治州',530000,2),(532301,'楚雄市',532300,3),(532322,'双柏县',532300,3),(532323,'牟定县',532300,3),(532324,'南华县',532300,3),(532325,'姚安县',532300,3),(532326,'大姚县',532300,3),(532327,'永仁县',532300,3),(532328,'元谋县',532300,3),(532329,'武定县',532300,3),(532331,'禄丰县',532300,3),(532500,'红河哈尼族彝族自治州',530000,2),(532503,'蒙自市',532500,3),(532501,'个旧市',532500,3),(532502,'开远市',532500,3),(532504,'弥勒市',532500,3),(532524,'建水县',532500,3),(532525,'石屏县',532500,3),(532527,'泸西县',532500,3),(532528,'元阳县',532500,3),(532529,'红河县',532500,3),(532531,'绿春县',532500,3),(532523,'屏边苗族自治县',532500,3),(532530,'金平苗族瑶族傣族自治县',532500,3),(532532,'河口瑶族自治县',532500,3),(532600,'文山壮族苗族自治州',530000,2),(532601,'文山市',532600,3),(532622,'砚山县',532600,3),(532623,'西畴县',532600,3),(532624,'麻栗坡县',532600,3),(532625,'马关县',532600,3),(532626,'丘北县',532600,3),(532627,'广南县',532600,3),(532628,'富宁县',532600,3),(532800,'西双版纳傣族自治州',530000,2),(532801,'景洪市',532800,3),(532822,'勐海县',532800,3),(532823,'勐腊县',532800,3),(532900,'大理白族自治州',530000,2),(532901,'大理市',532900,3),(532923,'祥云县',532900,3),(532924,'宾川县',532900,3),(532925,'弥渡县',532900,3),(532928,'永平县',532900,3),(532929,'云龙县',532900,3),(532930,'洱源县',532900,3),(532931,'剑川县',532900,3),(532932,'鹤庆县',532900,3),(532922,'漾濞彝族自治县',532900,3),(532926,'南涧彝族自治县',532900,3),(532927,'巍山彝族回族自治县',532900,3),(533100,'德宏傣族景颇族自治州',530000,2),(533103,'芒市',533100,3),(533102,'瑞丽市',533100,3),(533122,'梁河县',533100,3),(533123,'盈江县',533100,3),(533124,'陇川县',533100,3),(533300,'怒江傈僳族自治州',530000,2),(533301,'泸水市',533300,3),(533323,'福贡县',533300,3),(533324,'贡山独龙族怒族自治县',533300,3),(533325,'兰坪白族普米族自治县',533300,3),(533400,'迪庆藏族自治州',530000,2),(533401,'香格里拉市',533400,3),(533422,'德钦县',533400,3),(533423,'维西傈僳族自治县',533400,3),(540000,'西藏自治区',0,1),(540100,'拉萨市',540000,2),(540102,'城关区',540100,3),(540121,'林周县',540100,3),(540122,'当雄县',540100,3),(540123,'尼木县',540100,3),(540124,'曲水县',540100,3),(540103,'堆龙德庆区',540100,3),(540126,'达孜县',540100,3),(540127,'墨竹工卡县',540100,3),(540200,'日喀则市',540000,2),(540202,'桑珠孜区',540200,3),(540221,'南木林县',540200,3),(540222,'江孜县',540200,3),(540223,'定日县',540200,3),(540224,'萨迦县',540200,3),(540225,'拉孜县',540200,3),(540226,'昂仁县',540200,3),(540227,'谢通门县',540200,3),(540228,'白朗县',540200,3),(540229,'仁布县',540200,3),(540230,'康马县',540200,3),(540231,'定结县',540200,3),(540232,'仲巴县',540200,3),(540233,'亚东县',540200,3),(540234,'吉隆县',540200,3),(540235,'聂拉木县',540200,3),(540236,'萨嘎县',540200,3),(540237,'岗巴县',540200,3),(540300,'昌都市',540000,2),(540302,'卡若区',540300,3),(540321,'江达县',540300,3),(540322,'贡觉县',540300,3),(540323,'类乌齐县',540300,3),(540324,'丁青县',540300,3),(540325,'察雅县',540300,3),(540326,'八宿县',540300,3),(540327,'左贡县',540300,3),(540328,'芒康县',540300,3),(540329,'洛隆县',540300,3),(540330,'边坝县',540300,3),(540400,'林芝市',540000,2),(540402,'巴宜区',540400,3),(540421,'工布江达县',540400,3),(540422,'米林县',540400,3),(540423,'墨脱县',540400,3),(540424,'波密县',540400,3),(540425,'察隅县',540400,3),(540426,'朗县',540400,3),(540500,'山南市',540000,2),(540502,'乃东区',540500,3),(540521,'扎囊县',540500,3),(540522,'贡嘎县',540500,3),(540523,'桑日县',540500,3),(540524,'琼结县',540500,3),(540525,'曲松县',540500,3),(540526,'措美县',540500,3),(540527,'洛扎县',540500,3),(540528,'加查县',540500,3),(540529,'隆子县',540500,3),(540530,'错那县',540500,3),(540531,'浪卡子县',540500,3),(542400,'那曲地区',540000,2),(542421,'那曲县',542400,3),(542422,'嘉黎县',542400,3),(542423,'比如县',542400,3),(542424,'聂荣县',542400,3),(542425,'安多县',542400,3),(542426,'申扎县',542400,3),(542427,'索县',542400,3),(542428,'班戈县',542400,3),(542429,'巴青县',542400,3),(542430,'尼玛县',542400,3),(542431,'双湖县',542400,3),(542500,'阿里地区',540000,2),(542523,'噶尔县',542500,3),(542521,'普兰县',542500,3),(542522,'札达县',542500,3),(542524,'日土县',542500,3),(542525,'革吉县',542500,3),(542526,'改则县',542500,3),(542527,'措勤县',542500,3),(610000,'陕西省',0,1),(610100,'西安市',610000,2),(610112,'未央区',610100,3),(610102,'新城区',610100,3),(610103,'碑林区',610100,3),(610104,'莲湖区',610100,3),(610111,'灞桥区',610100,3),(610113,'雁塔区',610100,3),(610114,'阎良区',610100,3),(610115,'临潼区',610100,3),(610116,'长安区',610100,3),(610117,'高陵区',610100,3),(610118,'鄠邑区',610100,3),(610122,'蓝田县',610100,3),(610124,'周至县',610100,3),(610200,'铜川市',610000,2),(610204,'耀州区',610200,3),(610202,'王益区',610200,3),(610203,'印台区',610200,3),(610222,'宜君县',610200,3),(610300,'宝鸡市',610000,2),(610303,'金台区',610300,3),(610302,'渭滨区',610300,3),(610304,'陈仓区',610300,3),(610322,'凤翔县',610300,3),(610323,'岐山县',610300,3),(610324,'扶风县',610300,3),(610326,'眉县',610300,3),(610327,'陇县',610300,3),(610328,'千阳县',610300,3),(610329,'麟游县',610300,3),(610330,'凤县',610300,3),(610331,'太白县',610300,3),(610400,'咸阳市',610000,2),(610402,'秦都区',610400,3),(610403,'杨陵区',610400,3),(610404,'渭城区',610400,3),(610481,'兴平市',610400,3),(610422,'三原县',610400,3),(610423,'泾阳县',610400,3),(610424,'乾县',610400,3),(610425,'礼泉县',610400,3),(610426,'永寿县',610400,3),(610427,'彬县',610400,3),(610428,'长武县',610400,3),(610429,'旬邑县',610400,3),(610430,'淳化县',610400,3),(610431,'武功县',610400,3),(610500,'渭南市',610000,2),(610502,'临渭区',610500,3),(610581,'韩城市',610500,3),(610582,'华阴市',610500,3),(610503,'华州区',610500,3),(610522,'潼关县',610500,3),(610523,'大荔县',610500,3),(610524,'合阳县',610500,3),(610525,'澄城县',610500,3),(610526,'蒲城县',610500,3),(610527,'白水县',610500,3),(610528,'富平县',610500,3),(610600,'延安市',610000,2),(610602,'宝塔区',610600,3),(610603,'安塞区',610600,3),(610621,'延长县',610600,3),(610622,'延川县',610600,3),(610623,'子长县',610600,3),(610625,'志丹县',610600,3),(610626,'吴起县',610600,3),(610627,'甘泉县',610600,3),(610628,'富县',610600,3),(610629,'洛川县',610600,3),(610630,'宜川县',610600,3),(610631,'黄龙县',610600,3),(610632,'黄陵县',610600,3),(610700,'汉中市',610000,2),(610702,'汉台区',610700,3),(610721,'南郑县',610700,3),(610722,'城固县',610700,3),(610723,'洋县',610700,3),(610724,'西乡县',610700,3),(610725,'勉县',610700,3),(610726,'宁强县',610700,3),(610727,'略阳县',610700,3),(610728,'镇巴县',610700,3),(610729,'留坝县',610700,3),(610730,'佛坪县',610700,3),(610800,'榆林市',610000,2),(610802,'榆阳区',610800,3),(610881,'神木市',610800,3),(610822,'府谷县',610800,3),(610803,'横山区',610800,3),(610824,'靖边县',610800,3),(610825,'定边县',610800,3),(610826,'绥德县',610800,3),(610827,'米脂县',610800,3),(610828,'佳县',610800,3),(610829,'吴堡县',610800,3),(610830,'清涧县',610800,3),(610831,'子洲县',610800,3),(610900,'安康市',610000,2),(610902,'汉滨区',610900,3),(610921,'汉阴县',610900,3),(610922,'石泉县',610900,3),(610923,'宁陕县',610900,3),(610924,'紫阳县',610900,3),(610925,'岚皋县',610900,3),(610926,'平利县',610900,3),(610927,'镇坪县',610900,3),(610928,'旬阳县',610900,3),(610929,'白河县',610900,3),(611000,'商洛市',610000,2),(611002,'商州区',611000,3),(611021,'洛南县',611000,3),(611022,'丹凤县',611000,3),(611023,'商南县',611000,3),(611024,'山阳县',611000,3),(611025,'镇安县',611000,3),(611026,'柞水县',611000,3),(620000,'甘肃省',0,1),(620100,'兰州市',620000,2),(620102,'城关区',620100,3),(620103,'七里河区',620100,3),(620104,'西固区',620100,3),(620105,'安宁区',620100,3),(620111,'红古区',620100,3),(620121,'永登县',620100,3),(620122,'皋兰县',620100,3),(620123,'榆中县',620100,3),(620200,'嘉峪关市',620000,2),(620300,'金昌市',620000,2),(620302,'金川区',620300,3),(620321,'永昌县',620300,3),(620400,'白银市',620000,2),(620402,'白银区',620400,3),(620403,'平川区',620400,3),(620421,'靖远县',620400,3),(620422,'会宁县',620400,3),(620423,'景泰县',620400,3),(620500,'天水市',620000,2),(620502,'秦州区',620500,3),(620503,'麦积区',620500,3),(620521,'清水县',620500,3),(620522,'秦安县',620500,3),(620523,'甘谷县',620500,3),(620524,'武山县',620500,3),(620525,'张家川回族自治县',620500,3),(620600,'武威市',620000,2),(620602,'凉州区',620600,3),(620621,'民勤县',620600,3),(620622,'古浪县',620600,3),(620623,'天祝藏族自治县',620600,3),(620700,'张掖市',620000,2),(620702,'甘州区',620700,3),(620722,'民乐县',620700,3),(620723,'临泽县',620700,3),(620724,'高台县',620700,3),(620725,'山丹县',620700,3),(620721,'肃南裕固族自治县',620700,3),(620800,'平凉市',620000,2),(620802,'崆峒区',620800,3),(620821,'泾川县',620800,3),(620822,'灵台县',620800,3),(620823,'崇信县',620800,3),(620824,'华亭县',620800,3),(620825,'庄浪县',620800,3),(620826,'静宁县',620800,3),(620900,'酒泉市',620000,2),(620902,'肃州区',620900,3),(620981,'玉门市',620900,3),(620982,'敦煌市',620900,3),(620921,'金塔县',620900,3),(620922,'瓜州县',620900,3),(620923,'肃北蒙古族自治县',620900,3),(620924,'阿克塞哈萨克族自治县',620900,3),(621000,'庆阳市',620000,2),(621002,'西峰区',621000,3),(621021,'庆城县',621000,3),(621022,'环县',621000,3),(621023,'华池县',621000,3),(621024,'合水县',621000,3),(621025,'正宁县',621000,3),(621026,'宁县',621000,3),(621027,'镇原县',621000,3),(621100,'定西市',620000,2),(621102,'安定区',621100,3),(621121,'通渭县',621100,3),(621122,'陇西县',621100,3),(621123,'渭源县',621100,3),(621124,'临洮县',621100,3),(621125,'漳县',621100,3),(621126,'岷县',621100,3),(621200,'陇南市',620000,2),(621202,'武都区',621200,3),(621221,'成县',621200,3),(621222,'文县',621200,3),(621223,'宕昌县',621200,3),(621224,'康县',621200,3),(621225,'西和县',621200,3),(621226,'礼县',621200,3),(621227,'徽县',621200,3),(621228,'两当县',621200,3),(622900,'临夏回族自治州',620000,2),(622901,'临夏市',622900,3),(622921,'临夏县',622900,3),(622922,'康乐县',622900,3),(622923,'永靖县',622900,3),(622924,'广河县',622900,3),(622925,'和政县',622900,3),(622926,'东乡族自治县',622900,3),(622927,'积石山保安族东乡族撒拉族自治县',622900,3),(623000,'甘南藏族自治州',620000,2),(623001,'合作市',623000,3),(623021,'临潭县',623000,3),(623022,'卓尼县',623000,3),(623023,'舟曲县',623000,3),(623024,'迭部县',623000,3),(623025,'玛曲县',623000,3),(623026,'碌曲县',623000,3),(623027,'夏河县',623000,3),(630000,'青海省',0,1),(630100,'西宁市',630000,2),(630103,'城中区',630100,3),(630102,'城东区',630100,3),(630104,'城西区',630100,3),(630105,'城北区',630100,3),(630122,'湟中县',630100,3),(630123,'湟源县',630100,3),(630121,'大通回族土族自治县',630100,3),(630200,'海东市',630000,2),(630202,'乐都区',630200,3),(630203,'平安区',630200,3),(630222,'民和回族土族自治县',630200,3),(630223,'互助土族自治县',630200,3),(630224,'化隆回族自治县',630200,3),(630225,'循化撒拉族自治县',630200,3),(632200,'海北藏族自治州',630000,2),(632223,'海晏县',632200,3),(632222,'祁连县',632200,3),(632224,'刚察县',632200,3),(632221,'门源回族自治县',632200,3),(632300,'黄南藏族自治州',630000,2),(632321,'同仁县',632300,3),(632322,'尖扎县',632300,3),(632323,'泽库县',632300,3),(632324,'河南蒙古族自治县',632300,3),(632500,'海南藏族自治州',630000,2),(632521,'共和县',632500,3),(632522,'同德县',632500,3),(632523,'贵德县',632500,3),(632524,'兴海县',632500,3),(632525,'贵南县',632500,3),(632600,'果洛藏族自治州',630000,2),(632621,'玛沁县',632600,3),(632622,'班玛县',632600,3),(632623,'甘德县',632600,3),(632624,'达日县',632600,3),(632625,'久治县',632600,3),(632626,'玛多县',632600,3),(632700,'玉树藏族自治州',630000,2),(632701,'玉树市',632700,3),(632722,'杂多县',632700,3),(632723,'称多县',632700,3),(632724,'治多县',632700,3),(632725,'囊谦县',632700,3),(632726,'曲麻莱县',632700,3),(632800,'海西蒙古族藏族自治州',630000,2),(632802,'德令哈市',632800,3),(632801,'格尔木市',632800,3),(632821,'乌兰县',632800,3),(632822,'都兰县',632800,3),(632823,'天峻县',632800,3),(640000,'宁夏回族自治区',0,1),(640100,'银川市',640000,2),(640106,'金凤区',640100,3),(640104,'兴庆区',640100,3),(640105,'西夏区',640100,3),(640181,'灵武市',640100,3),(640121,'永宁县',640100,3),(640122,'贺兰县',640100,3),(640200,'石嘴山市',640000,2),(640202,'大武口区',640200,3),(640205,'惠农区',640200,3),(640221,'平罗县',640200,3),(640300,'吴忠市',640000,2),(640302,'利通区',640300,3),(640303,'红寺堡区',640300,3),(640381,'青铜峡市',640300,3),(640323,'盐池县',640300,3),(640324,'同心县',640300,3),(640400,'固原市',640000,2),(640402,'原州区',640400,3),(640422,'西吉县',640400,3),(640423,'隆德县',640400,3),(640424,'泾源县',640400,3),(640425,'彭阳县',640400,3),(640500,'中卫市',640000,2),(640502,'沙坡头区',640500,3),(640521,'中宁县',640500,3),(640522,'海原县',640500,3),(650000,'新疆维吾尔自治区',0,1),(650100,'乌鲁木齐市',650000,2),(650102,'天山区',650100,3),(650103,'沙依巴克区',650100,3),(650104,'新市区',650100,3),(650105,'水磨沟区',650100,3),(650106,'头屯河区',650100,3),(650107,'达坂城区',650100,3),(650109,'米东区',650100,3),(650121,'乌鲁木齐县',650100,3),(650200,'克拉玛依市',650000,2),(650203,'克拉玛依区',650200,3),(650202,'独山子区',650200,3),(650204,'白碱滩区',650200,3),(650205,'乌尔禾区',650200,3),(650400,'吐鲁番市',650000,2),(650402,'高昌区',650400,3),(650421,'鄯善县',650400,3),(650422,'托克逊县',650400,3),(650500,'哈密市',650000,2),(650502,'伊州区',650500,3),(650522,'伊吾县',650500,3),(650521,'巴里坤哈萨克自治县',650500,3),(652900,'阿克苏地区',650000,2),(652901,'阿克苏市',652900,3),(652922,'温宿县',652900,3),(652923,'库车县',652900,3),(652924,'沙雅县',652900,3),(652925,'新和县',652900,3),(652926,'拜城县',652900,3),(652927,'乌什县',652900,3),(652928,'阿瓦提县',652900,3),(652929,'柯坪县',652900,3),(653100,'喀什地区',650000,2),(653101,'喀什市',653100,3),(653121,'疏附县',653100,3),(653122,'疏勒县',653100,3),(653123,'英吉沙县',653100,3),(653124,'泽普县',653100,3),(653125,'莎车县',653100,3),(653126,'叶城县',653100,3),(653127,'麦盖提县',653100,3),(653128,'岳普湖县',653100,3),(653129,'伽师县',653100,3),(653130,'巴楚县',653100,3),(653131,'塔什库尔干塔吉克自治县',653100,3),(653200,'和田地区',650000,2),(653201,'和田市',653200,3),(653221,'和田县',653200,3),(653222,'墨玉县',653200,3),(653223,'皮山县',653200,3),(653224,'洛浦县',653200,3),(653225,'策勒县',653200,3),(653226,'于田县',653200,3),(653227,'民丰县',653200,3),(652300,'昌吉回族自治州',650000,2),(652301,'昌吉市',652300,3),(652302,'阜康市',652300,3),(652323,'呼图壁县',652300,3),(652324,'玛纳斯县',652300,3),(652325,'奇台县',652300,3),(652327,'吉木萨尔县',652300,3),(652328,'木垒哈萨克自治县',652300,3),(652700,'博尔塔拉蒙古自治州',650000,2),(652701,'博乐市',652700,3),(652702,'阿拉山口市',652700,3),(652722,'精河县',652700,3),(652723,'温泉县',652700,3),(652800,'巴音郭楞蒙古自治州',650000,2),(652801,'库尔勒市',652800,3),(652822,'轮台县',652800,3),(652823,'尉犁县',652800,3),(652824,'若羌县',652800,3),(652825,'且末县',652800,3),(652827,'和静县',652800,3),(652828,'和硕县',652800,3),(652829,'博湖县',652800,3),(652826,'焉耆回族自治县',652800,3),(653000,'克孜勒苏柯尔克孜自治州',650000,2),(653001,'阿图什市',653000,3),(653022,'阿克陶县',653000,3),(653023,'阿合奇县',653000,3),(653024,'乌恰县',653000,3),(654000,'伊犁哈萨克自治州',650000,2),(654002,'伊宁市',654000,3),(654003,'奎屯市',654000,3),(654004,'霍尔果斯市',654000,3),(654021,'伊宁县',654000,3),(654023,'霍城县',654000,3),(654024,'巩留县',654000,3),(654025,'新源县',654000,3),(654026,'昭苏县',654000,3),(654027,'特克斯县',654000,3),(654028,'尼勒克县',654000,3),(654022,'察布查尔锡伯自治县',654000,3),(654200,'塔城地区',650000,2),(654201,'塔城市',654200,3),(654202,'乌苏市',654200,3),(654221,'额敏县',654200,3),(654223,'沙湾县',654200,3),(654224,'托里县',654200,3),(654225,'裕民县',654200,3),(654226,'和布克赛尔蒙古自治县',654200,3),(654300,'阿勒泰地区',650000,2),(654301,'阿勒泰市',654300,3),(654321,'布尔津县',654300,3),(654322,'富蕴县',654300,3),(654323,'福海县',654300,3),(654324,'哈巴河县',654300,3),(654325,'青河县',654300,3),(654326,'吉木乃县',654300,3),(659001,'石河子市',654300,3),(659002,'阿拉尔市',654300,3),(659003,'图木舒克市',654300,3),(659004,'五家渠市',654300,3),(659005,'北屯市',654300,3),(659006,'铁门关市',654300,3),(659007,'双河市',654300,3),(659008,'可克达拉市',654300,3),(659009,'昆玉市',654300,3),(810000,'香港特别行政区',0,1),(820000,'澳门特别行政区',0,1),(710000,'台湾省',0,1),(710101,'台北市区',710100,3),(710100,'台北',710000,2),(810200,'香港市',810000,2),(810201,'香港市区',810200,3),(820200,'澳门市',820000,2),(820201,'澳门市区',820200,3),(441901,'东莞市区',441900,3),(442001,'中山市区',442000,3),(460301,'三沙市区',460300,3),(620201,'嘉峪关市区',620200,3);
/*!40000 ALTER TABLE `cmf_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_comment`
--

DROP TABLE IF EXISTS `cmf_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`object_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parent_id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `createtime` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_comment`
--

LOCK TABLES `cmf_comment` WRITE;
/*!40000 ALTER TABLE `cmf_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_guide`
--

DROP TABLE IF EXISTS `cmf_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_guide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '详情富文本',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0普通手册，1基本协议（不能删除）',
  `insert_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `time` int(11) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `sort` float NOT NULL DEFAULT '10' COMMENT '排序',
  `is_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示，1显示，0隐藏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='网站手册协议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_guide`
--

LOCK TABLES `cmf_guide` WRITE;
/*!40000 ALTER TABLE `cmf_guide` DISABLE KEYS */;
INSERT INTO `cmf_guide` VALUES (1,'user','用户协议','<p>东方红电饭锅电饭锅</p>',0,1517811644,1519363908,5,1),(4,'borrower','借款协议','<h2 style=\"color: rgb(0, 0, 0); font-family: 黑体; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">二、协议的生效</h2><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>甲方在丙方凭证云平台发起求借款申请，完善信息后点击发送按钮，即代表承认借条中约定的借款金额、起借日期、还款日期、年化利率等信息。另外，如果选择公开求借款选项，甲方的微信好友都有可能看到该借款信息。默认筹款时间72个小时，72小时之内甲方有权利随时关闭该借款，但已经接到的款项要按照约定如期、足额偿还；如果借款发起72个小时或者借款满标后，借款将自动关闭。</p></li><li><p>乙方可通过线上或者线下的方式将资金出借给甲方：所谓线上出借是指乙方通过丙方凭证云的账户系统将银行卡中资金出借到甲方的账户余额中，但丙方在资金到账时要收取8‰（千分之八）的服务费。如果乙方通过线上方式出借，在资金到账的一刻，本协议生效。</p></li><li><p>乙方也可通过支付宝、微信或现金等方式将资金出借给甲方，但乙方需要在凭证云平台上发出一个出借通知，甲方在收到通知且核实已收到款后，会将借条确认，确认后本协议即生效。</p></li></ul><h2 style=\"color: rgb(0, 0, 0); font-family: 黑体; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">三、本息偿还方式</h2><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>甲方必须按钮本协议的约定按时、足额偿还乙方的本金和利息。还款日不受法定假日或公休日的影响，还款日前必须还款，否则会对借款人的信用记录造成影响。</p></li><li><p>甲方可以通过线上或者线下的方式予以还款，线上是指甲方通过凭证云的账户系统将待还本息偿还到乙方的账户余额中，此环节不再收取服务费用。</p></li><li><p>如果甲方通过支付宝、微信或现金等方式将待还本息偿还给了乙方，甲方需要在凭证云平台上发起一个已还款提醒，乙方在收到该消息且核实已收到甲方的线下还款后，则可点击确认按钮以终结借条。如果乙方核实后发现没有收到甲方的线下还款，可以将该消息驳回或致电问询。</p></li><li><p>甲方应还的本息总额计算公式为：待还本息=借款金额*（1+借款时长/365）*年化利率，其中借款时长为起借日期和还款日期间的天数。甲方可多次还款直至待还本息全部还清，但甲方的提前还款并不减少待还本息。</p></li></ul><h2 style=\"color: rgb(0, 0, 0); font-family: 黑体; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">四、违约</h2><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>甲乙双方需保证其提供的信息和资料的真实性，不得提供虚假资料或隐瞒重要事实。提供虚假资料或者故意隐瞒重要事实的，构成违约，应承担违约责任；构成犯罪的，丙方将有权向相关国家机关报案，追究其刑事责任。</p></li><li><p>如果甲方没有按照约定按时、足额偿还对乙方的本金和利息，则甲方构成违约责任。</p></li><li><p>丙方作为信息中介，不承担对乙方未收回本息部分的代偿责任。 丙方拥有将甲方违约失信的相关信息在媒体披露的权利，并且丙方会将甲方违约信息录入凭证云平台黑名单以供他人查阅。</p></li></ul><h2 style=\"color: rgb(0, 0, 0); font-family: 黑体; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">五、其他</h2><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>本协议经甲乙双方通过丙方凭证云平台以网络在线点击确认的方式签订。各方委托凭证云平台保管所有与本协议有关的书面文件或电子信息。</p></li><li><p>各方均确认，本协议的签订、生效和履行以不违反法律为前提。如果本协议中的任何一条或多条违反适用的法律，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。</p></li><li><p>本协议中所使用的定义，除非另有规定，否则应适用凭证云平台释义规则，凭证云平台对本文定义享有最终解释权。</p></li></ul>',0,1517813043,1519364356,5,1),(6,'品牌说明','品牌说明','易优贷定位为为年轻人提供1000-50000元的小额应急信 用贷款，只需关注“易优贷”微信公众号在线提交申请 资料，等待审核通过即可百分百放款。无需面签，线上 审核线上放款，流程简单，电话即可完成审核，当天审 核，当天拿钱，随时随地，随借随还，专注为年轻人供 应急信用贷款服务。',1,1519973932,1519973932,5,1),(7,'品牌特色','快速申请','随时随地借款，无需担忧',1,1519974148,1519974148,5,1),(8,'品牌特色','快速申请','随时随地借款，无需担忧',1,1519974173,1519974173,5,1),(9,'品牌特色','快速申请','随时随地借款，无需担忧',1,1519974232,1519974232,5,1),(10,'借款相关','具备什么样的条件才能申请借款？','钱米应急钱包并未对您的职业收入等条件进行具体限制，年满18到35周岁，本人实名制手机号码且连续使用时间满9个月以上即可尝试申请。',2,1519974877,1519974877,5,1),(11,'借款相关','借款额度是多少','用户注册后，需要先提交认证信息，审核通过后，才可申请借款。具体的借款额度，平台会根据您提供的认证信息进行综合评估。',2,1519975185,1519975185,5,1),(12,'认证相关','用户信息安全吗','我们会严格遵守监管部门的规定，对您的个人信息严格保密，您的信息安全会得到全面保障',2,1519975262,1519975262,5,1),(13,'认证相关','为什么要提交这些信息','为了防止您的信息被他人盗用，并根据这些信息计算您的授信额度，我们需要您提供这些信息进行认证',2,1519975422,1519975422,5,1),(14,'还款相关','通过哪些方式还款','打款到指定账户，上传转账信息。 ',2,1519976121,1519976121,5,1);
/*!40000 ALTER TABLE `cmf_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_hook`
--

DROP TABLE IF EXISTS `cmf_hook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_hook`
--

LOCK TABLES `cmf_hook` WRITE;
/*!40000 ALTER TABLE `cmf_hook` DISABLE KEYS */;
INSERT INTO `cmf_hook` VALUES (1,1,0,'应用初始化','app_init','cmf','应用初始化'),(2,1,0,'应用开始','app_begin','cmf','应用开始'),(3,1,0,'模块初始化','module_init','cmf','模块初始化'),(4,1,0,'控制器开始','action_begin','cmf','控制器开始'),(5,1,0,'视图输出过滤','view_filter','cmf','视图输出过滤'),(6,1,0,'应用结束','app_end','cmf','应用结束'),(7,1,0,'日志write方法','log_write','cmf','日志write方法'),(8,1,0,'输出结束','response_end','cmf','输出结束'),(9,1,0,'后台控制器初始化','admin_init','cmf','后台控制器初始化'),(10,1,0,'前台控制器初始化','home_init','cmf','前台控制器初始化'),(11,1,1,'发送手机验证码','send_mobile_verification_code','cmf','发送手机验证码'),(12,3,0,'模板 body标签开始','body_start','','模板 body标签开始'),(13,3,0,'模板 head标签结束前','before_head_end','','模板 head标签结束前'),(14,3,0,'模板底部开始','footer_start','','模板底部开始'),(15,3,0,'模板底部开始之前','before_footer','','模板底部开始之前'),(16,3,0,'模板底部结束之前','before_footer_end','','模板底部结束之前'),(17,3,0,'模板 body 标签结束之前','before_body_end','','模板 body 标签结束之前'),(18,3,0,'模板左边栏开始','left_sidebar_start','','模板左边栏开始'),(19,3,0,'模板左边栏结束之前','before_left_sidebar_end','','模板左边栏结束之前'),(20,3,0,'模板右边栏开始','right_sidebar_start','','模板右边栏开始'),(21,3,0,'模板右边栏结束之前','before_right_sidebar_end','','模板右边栏结束之前'),(22,3,1,'评论区','comment','','评论区'),(23,3,1,'留言区','guestbook','','留言区'),(24,2,0,'后台首页仪表盘','admin_dashboard','admin','后台首页仪表盘'),(25,4,0,'后台模板 head标签结束前','admin_before_head_end','','后台模板 head标签结束前'),(26,4,0,'后台模板 body 标签结束之前','admin_before_body_end','','后台模板 body 标签结束之前'),(27,2,0,'后台登录页面','admin_login','admin','后台登录页面'),(28,1,1,'前台模板切换','switch_theme','cmf','前台模板切换'),(29,3,0,'主要内容之后','after_content','','主要内容之后'),(30,2,0,'文章显示之前','portal_before_assign_article','portal','文章显示之前'),(31,2,0,'后台文章保存之后','portal_admin_after_save_article','portal','后台文章保存之后');
/*!40000 ALTER TABLE `cmf_hook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_hook_plugin`
--

DROP TABLE IF EXISTS `cmf_hook_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_hook_plugin`
--

LOCK TABLES `cmf_hook_plugin` WRITE;
/*!40000 ALTER TABLE `cmf_hook_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_hook_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_link`
--

DROP TABLE IF EXISTS `cmf_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_link`
--

LOCK TABLES `cmf_link` WRITE;
/*!40000 ALTER TABLE `cmf_link` DISABLE KEYS */;
INSERT INTO `cmf_link` VALUES (1,1,1,8,'thinkcmf官网','http://www.thinkcmf.com','ThinkCMF','','_blank','');
/*!40000 ALTER TABLE `cmf_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_nav`
--

DROP TABLE IF EXISTS `cmf_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_nav`
--

LOCK TABLES `cmf_nav` WRITE;
/*!40000 ALTER TABLE `cmf_nav` DISABLE KEYS */;
INSERT INTO `cmf_nav` VALUES (1,1,'主导航','主导航'),(2,0,'底部导航','');
/*!40000 ALTER TABLE `cmf_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_nav_menu`
--

DROP TABLE IF EXISTS `cmf_nav_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_nav_menu`
--

LOCK TABLES `cmf_nav_menu` WRITE;
/*!40000 ALTER TABLE `cmf_nav_menu` DISABLE KEYS */;
INSERT INTO `cmf_nav_menu` VALUES (1,1,0,1,0,'首页','','home','','0-1');
/*!40000 ALTER TABLE `cmf_nav_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_option`
--

DROP TABLE IF EXISTS `cmf_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_option`
--

LOCK TABLES `cmf_option` WRITE;
/*!40000 ALTER TABLE `cmf_option` DISABLE KEYS */;
INSERT INTO `cmf_option` VALUES (7,1,'site_info','{\"site_name\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_title\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"ThinkCMF,php,\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6,cmf,cms,\\u7b80\\u7ea6\\u98ce, simplewind,framework\",\"site_seo_description\":\"ThinkCMF\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\"}');
/*!40000 ALTER TABLE `cmf_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_paper`
--

DROP TABLE IF EXISTS `cmf_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借条',
  `oid` varchar(50) NOT NULL DEFAULT '' COMMENT '借款单号',
  `borrower_id` int(11) NOT NULL COMMENT '借款人',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '借款金额',
  `rate` tinyint(3) NOT NULL DEFAULT '0' COMMENT '年利率，百分值',
  `day` int(11) NOT NULL DEFAULT '0' COMMENT '借款天数',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '借条状态',
  `expire_day` int(11) NOT NULL DEFAULT '0' COMMENT '到期天数',
  `overdue_day` int(1) NOT NULL DEFAULT '0' COMMENT '逾期天数',
  `final_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '最后还款金额',
  `real_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '到期还款总金额',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '借款时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '还款结束时间',
  `insert_time` int(11) NOT NULL DEFAULT '0' COMMENT '借款申请时间',
  `money_time` int(11) NOT NULL DEFAULT '0' COMMENT '放款时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `borrower_name` varchar(20) NOT NULL COMMENT '借款人姓名',
  `borrower_idcard` varchar(20) NOT NULL COMMENT '借款人idcard',
  `borrower_mobile` varchar(20) NOT NULL COMMENT '借款人手机',
  `dsc` varchar(100) DEFAULT NULL COMMENT '备注',
  `bank_name` varchar(100) NOT NULL DEFAULT '' COMMENT '开户行名称',
  `bank_card` varchar(30) NOT NULL DEFAULT '' COMMENT '银行卡号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oid` (`oid`(30)) USING BTREE COMMENT '借款单号',
  KEY `status` (`status`) COMMENT '借条状态为索引查询',
  KEY `borrower_id` (`borrower_id`) COMMENT '借款人id索引',
  KEY `borrower_idcard` (`borrower_idcard`) COMMENT '借款人省份证'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='借条';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_paper`
--

LOCK TABLES `cmf_paper` WRITE;
/*!40000 ALTER TABLE `cmf_paper` DISABLE KEYS */;
INSERT INTO `cmf_paper` VALUES (16,'20180308-8-1520500113',8,3700.00,24,21,4,21,0,0.00,3751.80,1520438400,1522252800,1520500113,1520500124,1520500124,'张三','342601199112123014','15261541317','','招生英航是的郭德纲电饭锅','6546546464564645645');
/*!40000 ALTER TABLE `cmf_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_paper_old`
--

DROP TABLE IF EXISTS `cmf_paper_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_paper_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借条',
  `oid` varchar(30) NOT NULL DEFAULT '' COMMENT '借条单号',
  `borrower_id` int(11) NOT NULL COMMENT '借款人',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '借款金额',
  `day` int(11) NOT NULL DEFAULT '0' COMMENT '借款天数',
  `rate` int(3) NOT NULL DEFAULT '0' COMMENT '年利率，百分值',
  `overdue_day` int(1) NOT NULL DEFAULT '0' COMMENT '逾期天数',
  `final_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '实际还款',
  `real_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '原定到期总金额',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '借款时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '还款结束时间',
  `insert_time` int(11) NOT NULL DEFAULT '0' COMMENT '借条发起时间',
  `money_time` int(11) NOT NULL DEFAULT '0' COMMENT '放款时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后还款确认时间',
  `borrower_name` varchar(20) NOT NULL COMMENT '借款人姓名',
  `borrower_idcard` varchar(20) NOT NULL COMMENT '借款人idcard',
  `borrower_mobile` varchar(20) NOT NULL COMMENT '借款人手机',
  `dsc` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `bank_name` varchar(100) NOT NULL DEFAULT '',
  `bank_card` varchar(30) NOT NULL DEFAULT '' COMMENT '收款卡号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oid` (`oid`) USING BTREE,
  KEY `borrower_id` (`borrower_id`) COMMENT '借款人id索引',
  KEY `borrower_idcard` (`borrower_idcard`) COMMENT '借款人省份证'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='已还款结束借条';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_paper_old`
--

LOCK TABLES `cmf_paper_old` WRITE;
/*!40000 ALTER TABLE `cmf_paper_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_paper_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_plugin`
--

DROP TABLE IF EXISTS `cmf_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='插件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_plugin`
--

LOCK TABLES `cmf_plugin` WRITE;
/*!40000 ALTER TABLE `cmf_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_portal_category`
--

DROP TABLE IF EXISTS `cmf_portal_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_portal_category`
--

LOCK TABLES `cmf_portal_category` WRITE;
/*!40000 ALTER TABLE `cmf_portal_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_portal_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_portal_category_post`
--

DROP TABLE IF EXISTS `cmf_portal_category_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_portal_category_post`
--

LOCK TABLES `cmf_portal_category_post` WRITE;
/*!40000 ALTER TABLE `cmf_portal_category_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_portal_category_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_portal_post`
--

DROP TABLE IF EXISTS `cmf_portal_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `post_parent` (`parent_id`),
  KEY `post_author` (`user_id`),
  KEY `post_date` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_portal_post`
--

LOCK TABLES `cmf_portal_post` WRITE;
/*!40000 ALTER TABLE `cmf_portal_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_portal_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_portal_tag`
--

DROP TABLE IF EXISTS `cmf_portal_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_portal_tag`
--

LOCK TABLES `cmf_portal_tag` WRITE;
/*!40000 ALTER TABLE `cmf_portal_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_portal_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_portal_tag_post`
--

DROP TABLE IF EXISTS `cmf_portal_tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_portal_tag_post`
--

LOCK TABLES `cmf_portal_tag_post` WRITE;
/*!40000 ALTER TABLE `cmf_portal_tag_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_portal_tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_recycle_bin`
--

DROP TABLE IF EXISTS `cmf_recycle_bin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_recycle_bin`
--

LOCK TABLES `cmf_recycle_bin` WRITE;
/*!40000 ALTER TABLE `cmf_recycle_bin` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_recycle_bin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_reply`
--

DROP TABLE IF EXISTS `cmf_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` varchar(30) NOT NULL DEFAULT '' COMMENT '借条单号',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态0发起，1同意，2不同意 ',
  `is_overtime` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否过期',
  `insert_time` int(11) NOT NULL COMMENT '发起时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `final_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '还款金额',
  `dsc` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `pic` varchar(60) NOT NULL DEFAULT '' COMMENT '上传还款图片',
  `pay` varchar(10) NOT NULL DEFAULT '' COMMENT '还款通道， ',
  PRIMARY KEY (`id`),
  KEY `overtime` (`is_overtime`) USING BTREE COMMENT '是否过期',
  KEY `oid` (`oid`) USING BTREE COMMENT '借款单号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='延期申请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_reply`
--

LOCK TABLES `cmf_reply` WRITE;
/*!40000 ALTER TABLE `cmf_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_role`
--

DROP TABLE IF EXISTS `cmf_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_role`
--

LOCK TABLES `cmf_role` WRITE;
/*!40000 ALTER TABLE `cmf_role` DISABLE KEYS */;
INSERT INTO `cmf_role` VALUES (1,0,1,1329633709,1329633709,0,'超级管理员','拥有网站最高管理员权限！'),(2,0,1,1329633709,1329633709,0,'普通管理员','权限由最高管理员分配！'),(3,0,1,0,0,0,'网站总管理员','除开发者账号super之外的最高权限');
/*!40000 ALTER TABLE `cmf_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_role_user`
--

DROP TABLE IF EXISTS `cmf_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_role_user`
--

LOCK TABLES `cmf_role_user` WRITE;
/*!40000 ALTER TABLE `cmf_role_user` DISABLE KEYS */;
INSERT INTO `cmf_role_user` VALUES (2,3,7),(3,2,6),(4,3,9);
/*!40000 ALTER TABLE `cmf_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_route`
--

DROP TABLE IF EXISTS `cmf_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_route`
--

LOCK TABLES `cmf_route` WRITE;
/*!40000 ALTER TABLE `cmf_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_slide`
--

DROP TABLE IF EXISTS `cmf_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_slide`
--

LOCK TABLES `cmf_slide` WRITE;
/*!40000 ALTER TABLE `cmf_slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_slide_item`
--

DROP TABLE IF EXISTS `cmf_slide_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_cid` (`slide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_slide_item`
--

LOCK TABLES `cmf_slide_item` WRITE;
/*!40000 ALTER TABLE `cmf_slide_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_slide_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_theme`
--

DROP TABLE IF EXISTS `cmf_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_theme`
--

LOCK TABLES `cmf_theme` WRITE;
/*!40000 ALTER TABLE `cmf_theme` DISABLE KEYS */;
INSERT INTO `cmf_theme` VALUES (19,0,0,0,0,'simpleboot3','simpleboot3','1.0.2','http://demo.thinkcmf.com','','ThinkCMF','http://www.thinkcmf.com','zh-cn','ThinkCMF模板','ThinkCMF默认模板');
/*!40000 ALTER TABLE `cmf_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_theme_file`
--

DROP TABLE IF EXISTS `cmf_theme_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_theme_file`
--

LOCK TABLES `cmf_theme_file` WRITE;
/*!40000 ALTER TABLE `cmf_theme_file` DISABLE KEYS */;
INSERT INTO `cmf_theme_file` VALUES (113,1,0,'simpleboot3','模板全局配置','public/Config','public/config','模板全局配置文件','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}',NULL);
/*!40000 ALTER TABLE `cmf_theme_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_third_party_user`
--

DROP TABLE IF EXISTS `cmf_third_party_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_third_party_user`
--

LOCK TABLES `cmf_third_party_user` WRITE;
/*!40000 ALTER TABLE `cmf_third_party_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_third_party_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_user`
--

DROP TABLE IF EXISTS `cmf_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名,注册用户未省份证号',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称，此处为真实姓名',
  `is_name` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否实名验证，0咩有1已验证',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `overdue` int(11) NOT NULL DEFAULT '0' COMMENT '逾期次数',
  `money0` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总额度',
  `money1` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '已用额度',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `borrow_num` int(11) NOT NULL DEFAULT '0' COMMENT '累计借款笔数',
  `borrow_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '累计借款金额',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `more` text COMMENT '扩展属性',
  `session` varchar(100) NOT NULL DEFAULT '' COMMENT '记录登录token,控制管理员唯一登录',
  `login_fail` tinyint(4) NOT NULL DEFAULT '0' COMMENT '登录失败次数',
  `openid` varchar(60) NOT NULL DEFAULT '' COMMENT '微信openid',
  `bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '开户行',
  `bank_card` varchar(50) NOT NULL DEFAULT '' COMMENT '银行卡号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_mobile` (`mobile`) USING BTREE COMMENT '手机号唯一',
  UNIQUE KEY `user_login` (`user_login`) USING BTREE COMMENT '用户名唯一'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_user`
--

LOCK TABLES `cmf_user` WRITE;
/*!40000 ALTER TABLE `cmf_user` DISABLE KEYS */;
INSERT INTO `cmf_user` VALUES (1,1,'13111111111','super','superss',0,'super@qq.com','###31be300c119b92c9e29be71692fee7c8',0,0.00,0.00,-28800,0,0.00,1520558465,0,0,1511837497,1,'','',0,'dfsd','127.0.0.1','',NULL,'f599fd7485513e19bac87d025fcc0a66f599fd7485513e19bac87d025fcc0a66',0,'','',''),(2,2,'13111111112','342601199011113018','证借款',1,'','',0,0.00,0.00,0,0,0.00,0,0,0,1511111111,1,'','',0,'','','',NULL,'',0,'1111','',''),(3,2,'13121111111','342601199112123015','证贷款',1,'','',0,0.00,0.00,0,0,0.00,0,0,0,0,1,'','',0,'','','',NULL,'',0,'333','',''),(4,2,'15211111111','342423199112235179','水电费',1,'','###2ea0c0704a042e1a4aa1b72d3753991f',0,0.00,0.00,0,1,33.00,1518159848,0,0,1517280054,1,'','',2,'','127.0.0.1','',NULL,'',0,'','',''),(6,1,'15261541318','admin1','',1,'111111@qq.com','###2ea0c0704a042e1a4aa1b72d3753991f',0,0.00,0.00,0,0,0.00,1517302976,0,0,0,1,'','',2,'','127.0.0.1','',NULL,'',0,'','',''),(7,2,'15211112222','342601199112121111','郑一',1,'','###2ea0c0704a042e1a4aa1b72d3753991f',0,0.00,0.00,0,0,0.00,1519870907,0,0,1519722661,1,'','avatar/755b5f98d262599d0e9d09ad12e0ad8b.jpg',0,'','127.0.0.1','',NULL,'',0,'','',''),(8,2,'15261541317','342601199112123014','张三',1,'','###ea1b4d0e1134635c796e3ee81970b5e2',0,22222221.00,5800.00,0,5,26000.00,1520471835,0,0,1520045509,1,'','avatar/755b5f98d262599d0e9d09ad12e0ad8b.jpg',0,'','127.0.0.1','','{\"city\":\"\\u5317\\u4eac \\u897f\\u57ce\\u533a\",\"address\":\"\\u597d\\u597d\\u8def\\u5730\\u574011\\u53f7\\u597d\\u597d\\u5bb6\\u56ed24\\u53f7\",\"qq\":\"111111\",\"company_name\":\"\\u5355\\u4f4d11\",\"company_address\":\"\\u597d\\u597d\\u8def\\u5730\\u574011\\u53f7\\u597d\\u597d\\u5bb6\\u56ed24\\u53f7\",\"company_tel\":\"1222\",\"tel1\":\"15261541317\",\"name1\":\"\\u6c34\\u7535\\u8d39\",\"tel2\":\"\",\"name2\":\"\",\"tel3\":\"15133332222\",\"name3\":\"\\u5343\\u4e07\\u4eba\",\"tel4\":\"15266665555\",\"name4\":\"\\u641c\\u72d7\"}','',0,'','招生英航是的郭德纲电饭锅','6546546464564645645'),(9,1,'15299996666','admin0','',0,'admin0@qq.com','###b9a2da8e5b6c681f5db833d6dd0708db',0,0.00,0.00,0,0,0.00,0,0,0,0,1,'','',0,'','','',NULL,'',0,'','','');
/*!40000 ALTER TABLE `cmf_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_user_action`
--

DROP TABLE IF EXISTS `cmf_user_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_user_action`
--

LOCK TABLES `cmf_user_action` WRITE;
/*!40000 ALTER TABLE `cmf_user_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_user_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_user_action_log`
--

DROP TABLE IF EXISTS `cmf_user_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_user_action_log`
--

LOCK TABLES `cmf_user_action_log` WRITE;
/*!40000 ALTER TABLE `cmf_user_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_user_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_user_favorite`
--

DROP TABLE IF EXISTS `cmf_user_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_user_favorite`
--

LOCK TABLES `cmf_user_favorite` WRITE;
/*!40000 ALTER TABLE `cmf_user_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_user_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_user_login_attempt`
--

DROP TABLE IF EXISTS `cmf_user_login_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_user_login_attempt`
--

LOCK TABLES `cmf_user_login_attempt` WRITE;
/*!40000 ALTER TABLE `cmf_user_login_attempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_user_login_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_user_score_log`
--

DROP TABLE IF EXISTS `cmf_user_score_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_user_score_log`
--

LOCK TABLES `cmf_user_score_log` WRITE;
/*!40000 ALTER TABLE `cmf_user_score_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_user_score_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_user_token`
--

DROP TABLE IF EXISTS `cmf_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_user_token`
--

LOCK TABLES `cmf_user_token` WRITE;
/*!40000 ALTER TABLE `cmf_user_token` DISABLE KEYS */;
INSERT INTO `cmf_user_token` VALUES (1,1,1536110465,1520558465,'f599fd7485513e19bac87d025fcc0a66f599fd7485513e19bac87d025fcc0a66','web'),(2,7,1533523194,1517971194,'3b564f54b4fa3260b4b395082eae3cc43b564f54b4fa3260b4b395082eae3cc4','web');
/*!40000 ALTER TABLE `cmf_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_verification_code`
--

DROP TABLE IF EXISTS `cmf_verification_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_verification_code`
--

LOCK TABLES `cmf_verification_code` WRITE;
/*!40000 ALTER TABLE `cmf_verification_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_verification_code` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-09  9:47:03
