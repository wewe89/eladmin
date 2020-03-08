/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : eladmin

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 08/03/2020 14:36:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `alipay_config`;
CREATE TABLE `alipay_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '编码',
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '异步回调',
  `private_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '私钥',
  `public_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '公钥',
  `return_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of alipay_config
-- ----------------------------
INSERT INTO `alipay_config` VALUES (1, '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for column_config
-- ----------------------------
DROP TABLE IF EXISTS `column_config`;
CREATE TABLE `column_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `column_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dict_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `form_show` bit(1) DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `key_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `list_show` bit(1) DEFAULT NULL,
  `not_null` bit(1) DEFAULT NULL,
  `query_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date_annotation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of column_config
-- ----------------------------
INSERT INTO `column_config` VALUES (86, 'mnt_server', 'id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'IP地址', NULL);
INSERT INTO `column_config` VALUES (87, 'mnt_server', 'account', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '账号', NULL);
INSERT INTO `column_config` VALUES (88, 'mnt_server', 'ip', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, 'IP地址', NULL);
INSERT INTO `column_config` VALUES (89, 'mnt_server', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '名称', NULL);
INSERT INTO `column_config` VALUES (90, 'mnt_server', 'password', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '密码', NULL);
INSERT INTO `column_config` VALUES (91, 'mnt_server', 'port', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '端口', NULL);
INSERT INTO `column_config` VALUES (92, 'mnt_server', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `pid` bigint(20) NOT NULL COMMENT '上级部门',
  `enabled` bit(1) NOT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '巴中农商银行', 0, b'1', '2019-03-25 09:14:05');
INSERT INTO `dept` VALUES (2, '曾口支行', 7, b'1', '2019-03-25 09:15:32');
INSERT INTO `dept` VALUES (5, '化成支行', 7, b'1', '2019-03-25 09:20:44');
INSERT INTO `dept` VALUES (6, '经开区支行营业部', 8, b'1', '2019-03-25 09:52:18');
INSERT INTO `dept` VALUES (7, '巴州区支行', 1, b'1', '2019-03-25 11:04:50');
INSERT INTO `dept` VALUES (8, '经开区支行', 1, b'1', '2019-03-25 11:04:53');
INSERT INTO `dept` VALUES (11, '人事部', 8, b'1', '2019-03-25 11:07:58');
INSERT INTO `dept` VALUES (14, '恩阳区支行', 1, b'1', '2019-11-30 00:28:21');
INSERT INTO `dept` VALUES (15, '恩阳区支行营业部', 14, b'1', '2019-11-30 00:28:42');

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES (1, 'user_status', '用户状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES (4, 'dept_status', '部门状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES (5, 'job_status', '岗位状态', '2019-10-27 20:31:36');

-- ----------------------------
-- Table structure for dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `dict_detail`;
CREATE TABLE `dict_detail`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '排序',
  `dict_id` bigint(11) DEFAULT NULL COMMENT '字典id',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK5tpkputc6d9nboxojdbgnpmyb`(`dict_id`) USING BTREE,
  CONSTRAINT `FK5tpkputc6d9nboxojdbgnpmyb` FOREIGN KEY (`dict_id`) REFERENCES `dict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dict_detail
-- ----------------------------
INSERT INTO `dict_detail` VALUES (1, '激活', 'true', '1', 1, '2019-10-27 20:31:36');
INSERT INTO `dict_detail` VALUES (2, '禁用', 'false', '2', 1, NULL);
INSERT INTO `dict_detail` VALUES (11, '启用', 'true', '1', 4, NULL);
INSERT INTO `dict_detail` VALUES (12, '停用', 'false', '2', 4, '2019-10-27 20:31:36');
INSERT INTO `dict_detail` VALUES (13, '启用', 'true', '1', 5, NULL);
INSERT INTO `dict_detail` VALUES (14, '停用', 'false', '2', 5, '2019-10-27 20:31:36');

-- ----------------------------
-- Table structure for email_config
-- ----------------------------
DROP TABLE IF EXISTS `email_config`;
CREATE TABLE `email_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '端口',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for gen_config
-- ----------------------------
DROP TABLE IF EXISTS `gen_config`;
CREATE TABLE `gen_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '作者',
  `cover` bit(1) DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for gen_test
-- ----------------------------
DROP TABLE IF EXISTS `gen_test`;
CREATE TABLE `gen_test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` int(255) DEFAULT NULL COMMENT '性别',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成测试' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` bit(1) NOT NULL,
  `sort` bigint(20) NOT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKmvhj0rogastlctflsxf1d6k3i`(`dept_id`) USING BTREE,
  CONSTRAINT `FKmvhj0rogastlctflsxf1d6k3i` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (10, '信贷经理', b'1', 3, 1, '2019-03-29 14:55:51');
INSERT INTO `job` VALUES (11, '行长', b'1', 1, 1, '2019-03-31 13:39:30');
INSERT INTO `job` VALUES (12, '柜员', b'1', 2, 1, '2019-03-31 13:39:43');

-- ----------------------------
-- Table structure for local_storage
-- ----------------------------
DROP TABLE IF EXISTS `local_storage`;
CREATE TABLE `local_storage`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路径',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型',
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '大小',
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作人',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17902 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (17826, '2020-03-08 12:04:32', '用户登录', 'org.springframework.security.authentication.BadCredentialsException: 坏的凭证\r\n	at org.springframework.security.authentication.dao.DaoAuthenticationProvider.additionalAuthenticationChecks(DaoAuthenticationProvider.java:93)\r\n	at org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider.authenticate(AbstractUserDetailsAuthenticationProvider.java:166)\r\n	at org.springframework.security.authentication.ProviderManager.authenticate(ProviderManager.java:174)\r\n	at me.zhengjie.modules.security.rest.AuthController.login(AuthController.java:90)\r\n	at me.zhengjie.modules.security.rest.AuthController$$FastClassBySpringCGLIB$$7f997139.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:54)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.security.rest.AuthController$$EnhancerBySpringCGLIB$$93ada2f9.login(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.TokenFilter.doFilter(TokenFilter.java:54)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.security.rest.AuthController.login()', '{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@28b226c5]] }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17827, '2020-03-08 12:04:36', '用户登录', 'org.springframework.security.authentication.BadCredentialsException: 坏的凭证\r\n	at org.springframework.security.authentication.dao.DaoAuthenticationProvider.additionalAuthenticationChecks(DaoAuthenticationProvider.java:93)\r\n	at org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider.authenticate(AbstractUserDetailsAuthenticationProvider.java:166)\r\n	at org.springframework.security.authentication.ProviderManager.authenticate(ProviderManager.java:174)\r\n	at me.zhengjie.modules.security.rest.AuthController.login(AuthController.java:90)\r\n	at me.zhengjie.modules.security.rest.AuthController$$FastClassBySpringCGLIB$$7f997139.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:54)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.security.rest.AuthController$$EnhancerBySpringCGLIB$$93ada2f9.login(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.TokenFilter.doFilter(TokenFilter.java:54)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.security.rest.AuthController.login()', '{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@28b226c5]] }', '172.19.48.1', 5, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17828, '2020-03-08 12:07:09', '用户登录', 'org.springframework.security.authentication.BadCredentialsException: 坏的凭证\r\n	at org.springframework.security.authentication.dao.DaoAuthenticationProvider.additionalAuthenticationChecks(DaoAuthenticationProvider.java:93)\r\n	at org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider.authenticate(AbstractUserDetailsAuthenticationProvider.java:166)\r\n	at org.springframework.security.authentication.ProviderManager.authenticate(ProviderManager.java:174)\r\n	at me.zhengjie.modules.security.rest.AuthController.login(AuthController.java:90)\r\n	at me.zhengjie.modules.security.rest.AuthController$$FastClassBySpringCGLIB$$7f997139.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:54)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.security.rest.AuthController$$EnhancerBySpringCGLIB$$532c8492.login(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.TokenFilter.doFilter(TokenFilter.java:54)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.security.rest.AuthController.login()', '{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@1d024017]] }', '172.19.48.1', 399, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17829, '2020-03-08 12:08:49', '用户登录', 'org.springframework.security.authentication.BadCredentialsException: 坏的凭证\r\n	at org.springframework.security.authentication.dao.DaoAuthenticationProvider.additionalAuthenticationChecks(DaoAuthenticationProvider.java:93)\r\n	at org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider.authenticate(AbstractUserDetailsAuthenticationProvider.java:166)\r\n	at org.springframework.security.authentication.ProviderManager.authenticate(ProviderManager.java:174)\r\n	at me.zhengjie.modules.security.rest.AuthController.login(AuthController.java:90)\r\n	at me.zhengjie.modules.security.rest.AuthController$$FastClassBySpringCGLIB$$7f997139.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:54)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.security.rest.AuthController$$EnhancerBySpringCGLIB$$532c8492.login(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.TokenFilter.doFilter(TokenFilter.java:54)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.security.rest.AuthController.login()', '{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@1d024017]] }', '172.19.48.1', 7, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17830, '2020-03-08 12:11:06', '用户登录', 'me.zhengjie.exception.BadRequestException: 验证码不存在或已过期\r\n	at me.zhengjie.modules.security.rest.AuthController.login(AuthController.java:82)\r\n	at me.zhengjie.modules.security.rest.AuthController$$FastClassBySpringCGLIB$$7f997139.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:54)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.security.rest.AuthController$$EnhancerBySpringCGLIB$$532c8492.login(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.TokenFilter.doFilter(TokenFilter.java:54)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.security.rest.AuthController.login()', '{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@1d024017]] }', '172.19.48.1', 2, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17831, '2020-03-08 12:11:09', '用户登录', NULL, 'INFO', 'me.zhengjie.modules.security.rest.AuthController.login()', '{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@1d024017]] }', '172.19.48.1', 177, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17832, '2020-03-08 12:11:15', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 229, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17833, '2020-03-08 12:11:30', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 20, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17834, '2020-03-08 12:11:35', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }', '172.19.48.1', 32, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17835, '2020-03-08 12:11:37', '查询MySecondaryCategory', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MySecondaryCategoryController.getAllByPid()', '{ criteria: MySecondaryCategoryQueryCriteria(pid=1) }', '172.19.48.1', 18, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17836, '2020-03-08 12:11:38', '查询MyAssetName', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetNameController.getMyAssetNames()', '{ criteria: MyAssetNameQueryCriteria(pcid=null, scid=1, status=null) }', '172.19.48.1', 12, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17837, '2020-03-08 12:12:08', '导出数据', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.download()', '{ response: com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@4bb9785d criteria: MyAssetListQueryCriteria(idAn=null) }', '172.19.48.1', 1067, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17838, '2020-03-08 12:12:22', '查询字典', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DictController.getDicts()', '{ resources: DictQueryCriteria(blurry=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 34, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17839, '2020-03-08 12:12:25', '查询字典详情', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }', '172.19.48.1', 27, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17840, '2020-03-08 12:12:27', '查询字典详情', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ criteria: DictDetailQueryCriteria(label=null, dictName=dept_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }', '172.19.48.1', 16, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17841, '2020-03-08 12:12:27', '查询字典详情', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17842, '2020-03-08 12:39:14', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 46, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17843, '2020-03-08 12:39:16', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }', '172.19.48.1', 36, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17844, '2020-03-08 12:52:24', '用户登录', NULL, 'INFO', 'me.zhengjie.modules.security.rest.AuthController.login()', '{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@3620bacc]] }', '172.19.48.1', 724, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17845, '2020-03-08 12:56:57', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }', '172.19.48.1', 801, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17846, '2020-03-08 12:57:00', '查询MySecondaryCategory', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MySecondaryCategoryController.getAllByPid()', '{ criteria: MySecondaryCategoryQueryCriteria(pid=1) }', '172.19.48.1', 132, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17847, '2020-03-08 12:57:01', '查询MyAssetName', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetNameController.getMyAssetNames()', '{ criteria: MyAssetNameQueryCriteria(pcid=null, scid=1, status=null) }', '172.19.48.1', 57, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17848, '2020-03-08 12:57:52', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 1076, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17849, '2020-03-08 12:58:32', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }', '172.19.48.1', 22, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17850, '2020-03-08 12:59:12', '导出数据', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.download()', '{ response: com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@34336999 criteria: MyAssetListQueryCriteria(idAn=null) }', '172.19.48.1', 8016, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17851, '2020-03-08 13:07:38', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 65, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17852, '2020-03-08 13:07:39', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 48, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17853, '2020-03-08 13:08:11', '修改角色菜单', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: me.zhengjie.modules.system.domain.Role@20 }', '172.19.48.1', 297, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17854, '2020-03-08 13:08:43', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 14, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17855, '2020-03-08 13:08:43', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 3, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17856, '2020-03-08 13:08:51', '查询字典详情', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '172.19.48.1', 206, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17857, '2020-03-08 13:08:52', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }', '172.19.48.1', 713, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17858, '2020-03-08 13:08:52', '查询用户', NULL, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 846, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17859, '2020-03-08 13:08:52', '查询用户', NULL, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 5, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17860, '2020-03-08 13:09:00', '查询用户', NULL, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17861, '2020-03-08 13:09:00', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }', '172.19.48.1', 3, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17862, '2020-03-08 13:09:00', '查询字典详情', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '172.19.48.1', 34, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17863, '2020-03-08 13:09:00', '查询用户', NULL, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 5, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17864, '2020-03-08 13:09:17', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }', '172.19.48.1', 6, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17865, '2020-03-08 13:09:17', '查询岗位', NULL, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=2, deptIds=[], createTime=null) pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '172.19.48.1', 50, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17866, '2020-03-08 13:09:33', '修改用户', NULL, 'INFO', 'me.zhengjie.modules.system.rest.UserController.update()', '{ resources: me.zhengjie.modules.system.domain.User@1dd76 }', '172.19.48.1', 468, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17867, '2020-03-08 13:09:33', '查询用户', NULL, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 19, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17868, '2020-03-08 13:11:11', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 2, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17869, '2020-03-08 13:11:11', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 1, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17870, '2020-03-08 13:11:52', '修改角色菜单', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: me.zhengjie.modules.system.domain.Role@20 }', '172.19.48.1', 751, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17871, '2020-03-08 13:12:26', '查询字典', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DictController.all()', '{ }', '172.19.48.1', 18, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17872, '2020-03-08 13:12:50', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 2, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17873, '2020-03-08 13:20:06', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17874, '2020-03-08 13:54:33', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 3, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17875, '2020-03-08 13:54:37', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }', '172.19.48.1', 3, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17876, '2020-03-08 13:54:52', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }', '172.19.48.1', 2, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17877, '2020-03-08 13:55:00', '查询字典详情', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '172.19.48.1', 3, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17878, '2020-03-08 13:55:00', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17879, '2020-03-08 13:55:00', '查询用户', NULL, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 3, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17880, '2020-03-08 13:55:01', '查询用户', NULL, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 1, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17881, '2020-03-08 13:56:41', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 28, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17882, '2020-03-08 13:56:42', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 2, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17883, '2020-03-08 13:58:13', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 2, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17884, '2020-03-08 13:58:26', '查询部署历史', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.DeployHistoryController.getDeployHistorys()', '{ criteria: DeployHistoryQueryCriteria(blurry=null, deployId=null, deployDate=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 53, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17885, '2020-03-08 13:58:41', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17886, '2020-03-08 13:58:41', '查询角色', NULL, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ criteria: RoleQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: level: ASC] }', '172.19.48.1', 1, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17887, '2020-03-08 13:59:09', '查询部署历史', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.DeployHistoryController.getDeployHistorys()', '{ criteria: DeployHistoryQueryCriteria(blurry=null, deployId=null, deployDate=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 10, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17888, '2020-03-08 13:59:11', '查询部署', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.DeployController.getDeploys()', '{ criteria: DeployQueryCriteria(appName=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 157, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17889, '2020-03-08 13:59:11', '查询服务器', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.ServerDeployController.getServers()', '{ criteria: ServerDeployQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '172.19.48.1', 15, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17890, '2020-03-08 13:59:11', '查询应用', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.AppController.getApps()', '{ criteria: AppQueryCriteria(name=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '172.19.48.1', 15, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17891, '2020-03-08 13:59:13', '查询部署历史', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.DeployHistoryController.getDeployHistorys()', '{ criteria: DeployHistoryQueryCriteria(blurry=null, deployId=6, deployDate=null) pageable: Page request [number: 0, size 10, sort: deployDate: DESC] }', '172.19.48.1', 7, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17892, '2020-03-08 13:59:31', '停止服务', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.DeployController.stopServer()', '{ resources: Deploy(id=6, app=App(id=2, name=eladmin-system-2.4.jar, port=8000, uploadPath=/opt/upload, deployPath=/opt/eladmin, backupPath=/opt/backup/eladmin, startScript=cd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2>&1 &, deployScript=mv -f /opt/upload/eladmin-system-2.3.jar /opt/eladmin/\ncd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2>&1 &, createTime=2019-12-21 16:39:57.0), deploys=[ServerDeploy(id=1, name=腾讯云, ip=132.232.129.20, port=8013, account=root, password=123456, createTime=2019-11-24 20:35:02.0)], createTime=2019-12-21 17:09:02.0) }', '172.19.48.1', 4025, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17893, '2020-03-08 13:59:49', '查询部署历史', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.DeployHistoryController.getDeployHistorys()', '{ criteria: DeployHistoryQueryCriteria(blurry=null, deployId=3, deployDate=null) pageable: Page request [number: 0, size 10, sort: deployDate: DESC] }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17894, '2020-03-08 13:59:55', '查询应用', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.AppController.getApps()', '{ criteria: AppQueryCriteria(name=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17895, '2020-03-08 13:59:55', '查询服务器', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.ServerDeployController.getServers()', '{ criteria: ServerDeployQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17896, '2020-03-08 14:00:08', '查询应用', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.AppController.getApps()', '{ criteria: AppQueryCriteria(name=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 5, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17897, '2020-03-08 14:00:34', '查询部署', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.DeployController.getDeploys()', '{ criteria: DeployQueryCriteria(appName=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 8, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17898, '2020-03-08 14:00:34', '查询应用', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.AppController.getApps()', '{ criteria: AppQueryCriteria(name=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '172.19.48.1', 4, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17899, '2020-03-08 14:00:34', '查询服务器', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.ServerDeployController.getServers()', '{ criteria: ServerDeployQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '172.19.48.1', 13, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17900, '2020-03-08 14:00:38', '查询服务器', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.ServerDeployController.getServers()', '{ criteria: ServerDeployQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '172.19.48.1', 5, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17901, '2020-03-08 14:02:32', '启动服务', NULL, 'INFO', 'me.zhengjie.modules.mnt.rest.DeployController.startServer()', '{ resources: Deploy(id=6, app=App(id=2, name=eladmin-system-2.4.jar, port=8000, uploadPath=/opt/upload, deployPath=/opt/eladmin, backupPath=/opt/backup/eladmin, startScript=cd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2>&1 &, deployScript=mv -f /opt/upload/eladmin-system-2.3.jar /opt/eladmin/\ncd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2>&1 &, createTime=2019-12-21 16:39:57.0), deploys=[ServerDeploy(id=1, name=腾讯云, ip=132.232.129.20, port=8013, account=root, password=123456, createTime=2019-11-24 20:35:02.0)], createTime=2019-12-21 17:09:02.0) }', '172.19.48.1', 186143, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17902, '2020-03-08 14:23:07', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 2, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17903, '2020-03-08 14:23:12', '查询部门', NULL, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }', '172.19.48.1', 3, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17904, '2020-03-08 14:34:01', '用户登录', NULL, 'INFO', 'me.zhengjie.modules.security.rest.AuthController.login()', '{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@3620bacc]] }', '172.19.48.1', 153, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17905, '2020-03-08 14:34:01', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 99, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17906, '2020-03-08 14:35:19', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 2, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17907, '2020-03-08 14:35:29', '用户登录', NULL, 'INFO', 'me.zhengjie.modules.security.rest.AuthController.login()', '{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@3620bacc]] }', '172.19.48.1', 105, 'admin', '内网IP', 'Chrome');
INSERT INTO `log` VALUES (17908, '2020-03-08 14:35:29', '查询MyAssetList', NULL, 'INFO', 'me.zhengjie.modules.assest.rest.MyAssetListController.getMyAssetLists()', '{ criteria: MyAssetListQueryCriteria(idAn=null) pageable: Page request [number: 0, size 10, sort: id: ASC] }', '172.19.48.1', 102, 'admin', '内网IP', 'Chrome');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单名称',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组件',
  `pid` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '链接地址',
  `cache` bit(1) DEFAULT b'0',
  `hidden` bit(1) DEFAULT b'0',
  `component_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '-',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKqcf9gem97gqa5qjm4d3elcqt5`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, b'0', '系统管理', NULL, 0, 1, 'system', 'system', b'0', b'0', NULL, '2018-12-18 15:11:29', NULL, 0);
INSERT INTO `menu` VALUES (2, b'0', '用户管理', 'system/user/index', 1, 2, 'peoples', 'user', b'0', b'0', 'User', '2018-12-18 15:14:44', 'user:list', 1);
INSERT INTO `menu` VALUES (3, b'0', '角色管理', 'system/role/index', 1, 3, 'role', 'role', b'0', b'0', 'Role', '2018-12-18 15:16:07', 'roles:list', 1);
INSERT INTO `menu` VALUES (5, b'0', '菜单管理', 'system/menu/index', 1, 5, 'menu', 'menu', b'0', b'0', 'Menu', '2018-12-18 15:17:28', 'menu:list', 1);
INSERT INTO `menu` VALUES (6, b'0', '系统监控', NULL, 0, 10, 'monitor', 'monitor', b'0', b'0', NULL, '2018-12-18 15:17:48', NULL, 0);
INSERT INTO `menu` VALUES (7, b'0', '操作日志', 'monitor/log/index', 6, 11, 'log', 'logs', b'0', b'0', 'Log', '2018-12-18 15:18:26', NULL, 1);
INSERT INTO `menu` VALUES (8, b'0', '系统缓存', 'monitor/redis/index', 6, 13, 'redis', 'redis', b'0', b'0', 'Redis', '2018-12-18 15:19:01', 'redis:list', 1);
INSERT INTO `menu` VALUES (9, b'0', 'SQL监控', 'monitor/sql/index', 6, 14, 'sqlMonitor', 'druid', b'0', b'0', 'Sql', '2018-12-18 15:19:34', NULL, 1);
INSERT INTO `menu` VALUES (10, b'0', '组件管理', NULL, 0, 50, 'zujian', 'components', b'0', b'0', NULL, '2018-12-19 13:38:16', NULL, 0);
INSERT INTO `menu` VALUES (11, b'0', '图标库', 'components/IconSelect', 10, 51, 'icon', 'icon', b'0', b'0', 'Icons', '2018-12-19 13:38:49', NULL, 1);
INSERT INTO `menu` VALUES (14, b'0', '邮件工具', 'tools/email/index', 36, 24, 'email', 'email', b'0', b'0', 'Email', '2018-12-27 10:13:09', NULL, 1);
INSERT INTO `menu` VALUES (15, b'0', '富文本', 'components/Editor', 10, 52, 'fwb', 'tinymce', b'0', b'0', 'Editor', '2018-12-27 11:58:25', NULL, 1);
INSERT INTO `menu` VALUES (16, b'0', '图床管理', 'tools/picture/index', 36, 25, 'image', 'pictures', b'0', b'0', 'Pictures', '2018-12-28 09:36:53', 'pictures:list', 1);
INSERT INTO `menu` VALUES (18, b'0', '存储管理', 'tools/storage/index', 36, 23, 'qiniu', 'storage', b'0', b'0', 'Storage', '2018-12-31 11:12:15', 'storage:list', 1);
INSERT INTO `menu` VALUES (19, b'0', '支付宝工具', 'tools/aliPay/index', 36, 27, 'alipay', 'aliPay', b'0', b'0', 'AliPay', '2018-12-31 14:52:38', NULL, 1);
INSERT INTO `menu` VALUES (21, b'0', '综合管理', '', 0, 900, 'menu', 'nested', b'0', b'0', NULL, '2019-01-04 16:22:03', NULL, 0);
INSERT INTO `menu` VALUES (22, b'0', '二级菜单1', 'nested/menu1/index', 21, 999, 'menu', 'menu1', b'0', b'0', NULL, '2019-01-04 16:23:29', NULL, 1);
INSERT INTO `menu` VALUES (23, b'0', '硬件管理', 'assets/index', 21, 999, 'system', 'menu2', b'0', b'0', 'myAssetList', '2019-01-04 16:23:57', 'myAssetList:list', 1);
INSERT INTO `menu` VALUES (24, b'0', '三级菜单1', 'nested/menu1/menu1-1', 22, 999, 'menu', 'menu1-1', b'0', b'0', NULL, '2019-01-04 16:24:48', NULL, 1);
INSERT INTO `menu` VALUES (27, b'0', '三级菜单2', 'nested/menu1/menu1-2', 22, 999, 'menu', 'menu1-2', b'0', b'0', NULL, '2019-01-07 17:27:32', NULL, 1);
INSERT INTO `menu` VALUES (28, b'0', '定时任务', 'system/timing/index', 36, 21, 'timing', 'timing', b'0', b'0', 'Timing', '2019-01-07 20:34:40', 'timing:list', 1);
INSERT INTO `menu` VALUES (30, b'0', '代码生成', 'generator/index', 36, 22, 'dev', 'generator', b'0', b'0', 'GeneratorIndex', '2019-01-11 15:45:55', NULL, 1);
INSERT INTO `menu` VALUES (32, b'0', '异常日志', 'monitor/log/errorLog', 6, 12, 'error', 'errorLog', b'0', b'0', 'ErrorLog', '2019-01-13 13:49:03', NULL, 1);
INSERT INTO `menu` VALUES (33, b'0', 'Markdown', 'components/MarkDown', 10, 53, 'markdown', 'markdown', b'0', b'0', 'Markdown', '2019-03-08 13:46:44', NULL, 1);
INSERT INTO `menu` VALUES (34, b'0', 'Yaml编辑器', 'components/YamlEdit', 10, 54, 'dev', 'yaml', b'0', b'0', 'YamlEdit', '2019-03-08 15:49:40', NULL, 1);
INSERT INTO `menu` VALUES (35, b'0', '部门管理', 'system/dept/index', 1, 6, 'dept', 'dept', b'0', b'0', 'Dept', '2019-03-25 09:46:00', 'dept:list', 1);
INSERT INTO `menu` VALUES (36, b'0', '系统工具', '', 0, 20, 'sys-tools', 'sys-tools', b'0', b'0', NULL, '2019-03-29 10:57:35', NULL, 0);
INSERT INTO `menu` VALUES (37, b'0', '岗位管理', 'system/job/index', 1, 7, 'Steve-Jobs', 'job', b'0', b'0', 'Job', '2019-03-29 13:51:18', 'job:list', 1);
INSERT INTO `menu` VALUES (38, b'0', '接口文档', 'tools/swagger/index', 36, 26, 'swagger', 'swagger2', b'0', b'0', 'Swagger', '2019-03-29 19:57:53', NULL, 1);
INSERT INTO `menu` VALUES (39, b'0', '字典管理', 'system/dict/index', 1, 8, 'dictionary', 'dict', b'0', b'0', 'Dict', '2019-04-10 11:49:04', 'dict:list', 1);
INSERT INTO `menu` VALUES (41, b'0', '在线用户', 'monitor/online/index', 6, 10, 'Steve-Jobs', 'online', b'0', b'0', 'OnlineUser', '2019-10-26 22:08:43', NULL, 1);
INSERT INTO `menu` VALUES (44, b'0', '用户新增', '', 2, 2, '', '', b'0', b'0', '', '2019-10-29 10:59:46', 'user:add', 2);
INSERT INTO `menu` VALUES (45, b'0', '用户编辑', '', 2, 3, '', '', b'0', b'0', '', '2019-10-29 11:00:08', 'user:edit', 2);
INSERT INTO `menu` VALUES (46, b'0', '用户删除', '', 2, 4, '', '', b'0', b'0', '', '2019-10-29 11:00:23', 'user:del', 2);
INSERT INTO `menu` VALUES (48, b'0', '角色创建', '', 3, 2, '', '', b'0', b'0', '', '2019-10-29 12:45:34', 'roles:add', 2);
INSERT INTO `menu` VALUES (49, b'0', '角色修改', '', 3, 3, '', '', b'0', b'0', '', '2019-10-29 12:46:16', 'roles:edit', 2);
INSERT INTO `menu` VALUES (50, b'0', '角色删除', '', 3, 4, '', '', b'0', b'0', '', '2019-10-29 12:46:51', 'roles:del', 2);
INSERT INTO `menu` VALUES (52, b'0', '菜单新增', '', 5, 2, '', '', b'0', b'0', '', '2019-10-29 12:55:07', 'menu:add', 2);
INSERT INTO `menu` VALUES (53, b'0', '菜单编辑', '', 5, 3, '', '', b'0', b'0', '', '2019-10-29 12:55:40', 'menu:edit', 2);
INSERT INTO `menu` VALUES (54, b'0', '菜单删除', '', 5, 4, '', '', b'0', b'0', '', '2019-10-29 12:56:00', 'menu:del', 2);
INSERT INTO `menu` VALUES (56, b'0', '部门新增', '', 35, 2, '', '', b'0', b'0', '', '2019-10-29 12:57:09', 'dept:add', 2);
INSERT INTO `menu` VALUES (57, b'0', '部门编辑', '', 35, 3, '', '', b'0', b'0', '', '2019-10-29 12:57:27', 'dept:edit', 2);
INSERT INTO `menu` VALUES (58, b'0', '部门删除', '', 35, 4, '', '', b'0', b'0', '', '2019-10-29 12:57:41', 'dept:del', 2);
INSERT INTO `menu` VALUES (60, b'0', '岗位新增', '', 37, 2, '', '', b'0', b'0', '', '2019-10-29 12:58:27', 'job:add', 2);
INSERT INTO `menu` VALUES (61, b'0', '岗位编辑', '', 37, 3, '', '', b'0', b'0', '', '2019-10-29 12:58:45', 'job:edit', 2);
INSERT INTO `menu` VALUES (62, b'0', '岗位删除', '', 37, 4, '', '', b'0', b'0', '', '2019-10-29 12:59:04', 'job:del', 2);
INSERT INTO `menu` VALUES (64, b'0', '字典新增', '', 39, 2, '', '', b'0', b'0', '', '2019-10-29 13:00:17', 'dict:add', 2);
INSERT INTO `menu` VALUES (65, b'0', '字典编辑', '', 39, 3, '', '', b'0', b'0', '', '2019-10-29 13:00:42', 'dict:edit', 2);
INSERT INTO `menu` VALUES (66, b'0', '字典删除', '', 39, 4, '', '', b'0', b'0', '', '2019-10-29 13:00:59', 'dict:del', 2);
INSERT INTO `menu` VALUES (68, b'0', '缓存删除', '', 8, 2, '', '', b'0', b'0', '', '2019-10-29 13:04:07', 'redis:del', 2);
INSERT INTO `menu` VALUES (70, b'0', '图片上传', '', 16, 2, '', '', b'0', b'0', '', '2019-10-29 13:05:34', 'pictures:add', 2);
INSERT INTO `menu` VALUES (71, b'0', '图片删除', '', 16, 3, '', '', b'0', b'0', '', '2019-10-29 13:05:52', 'pictures:del', 2);
INSERT INTO `menu` VALUES (73, b'0', '任务新增', '', 28, 2, '', '', b'0', b'0', '', '2019-10-29 13:07:28', 'timing:add', 2);
INSERT INTO `menu` VALUES (74, b'0', '任务编辑', '', 28, 3, '', '', b'0', b'0', '', '2019-10-29 13:07:41', 'timing:edit', 2);
INSERT INTO `menu` VALUES (75, b'0', '任务删除', '', 28, 4, '', '', b'0', b'0', '', '2019-10-29 13:07:54', 'timing:del', 2);
INSERT INTO `menu` VALUES (77, b'0', '上传文件', '', 18, 2, '', '', b'0', b'0', '', '2019-10-29 13:09:09', 'storage:add', 2);
INSERT INTO `menu` VALUES (78, b'0', '文件编辑', '', 18, 3, '', '', b'0', b'0', '', '2019-10-29 13:09:22', 'storage:edit', 2);
INSERT INTO `menu` VALUES (79, b'0', '文件删除', '', 18, 4, '', '', b'0', b'0', '', '2019-10-29 13:09:34', 'storage:del', 2);
INSERT INTO `menu` VALUES (80, b'0', '服务监控', 'monitor/server/index', 6, 14, 'codeConsole', 'server', b'0', b'0', 'ServerMonitor', '2019-11-07 13:06:39', 'server:list', 1);
INSERT INTO `menu` VALUES (82, b'0', '生成配置', 'generator/config', 36, 33, 'dev', 'generator/config/:tableName', b'1', b'1', 'GeneratorConfig', '2019-11-17 20:08:56', '', 1);
INSERT INTO `menu` VALUES (83, b'0', '图表库', 'components/Echarts', 10, 50, 'chart', 'echarts', b'1', b'0', 'Echarts', '2019-11-21 09:04:32', '', 1);
INSERT INTO `menu` VALUES (90, b'0', '运维管理', '', 0, 20, 'mnt', 'mnt', b'0', b'0', 'Mnt', '2019-11-09 10:31:08', NULL, 1);
INSERT INTO `menu` VALUES (92, b'0', '服务器', 'mnt/server/index', 90, 22, 'server', 'mnt/serverDeploy', b'0', b'0', 'ServerDeploy', '2019-11-10 10:29:25', 'serverDeploy:list', 1);
INSERT INTO `menu` VALUES (93, b'0', '应用管理', 'mnt/app/index', 90, 23, 'app', 'mnt/app', b'0', b'0', 'App', '2019-11-10 11:05:16', 'app:list', 1);
INSERT INTO `menu` VALUES (94, b'0', '部署管理', 'mnt/deploy/index', 90, 24, 'deploy', 'mnt/deploy', b'0', b'0', 'Deploy', '2019-11-10 15:56:55', 'deploy:list', 1);
INSERT INTO `menu` VALUES (97, b'0', '部署备份', 'mnt/deployHistory/index', 90, 25, 'backup', 'mnt/deployHistory', b'0', b'0', 'DeployHistory', '2019-11-10 16:49:44', 'deployHistory:list', 1);
INSERT INTO `menu` VALUES (98, b'0', '数据库管理', 'mnt/database/index', 90, 26, 'database', 'mnt/database', b'0', b'0', 'Database', '2019-11-10 20:40:04', 'database:list', 1);
INSERT INTO `menu` VALUES (102, b'0', '删除', '', 97, 999, '', '', b'0', b'0', '', '2019-11-17 09:32:48', 'deployHistory:del', 2);
INSERT INTO `menu` VALUES (103, b'0', '服务器新增', '', 92, 999, '', '', b'0', b'0', '', '2019-11-17 11:08:33', 'serverDeploy:add', 2);
INSERT INTO `menu` VALUES (104, b'0', '服务器编辑', '', 92, 999, '', '', b'0', b'0', '', '2019-11-17 11:08:57', 'serverDeploy:edit', 2);
INSERT INTO `menu` VALUES (105, b'0', '服务器删除', '', 92, 999, '', '', b'0', b'0', '', '2019-11-17 11:09:15', 'serverDeploy:del', 2);
INSERT INTO `menu` VALUES (106, b'0', '应用新增', '', 93, 999, '', '', b'0', b'0', '', '2019-11-17 11:10:03', 'app:add', 2);
INSERT INTO `menu` VALUES (107, b'0', '应用编辑', '', 93, 999, '', '', b'0', b'0', '', '2019-11-17 11:10:28', 'app:edit', 2);
INSERT INTO `menu` VALUES (108, b'0', '应用删除', '', 93, 999, '', '', b'0', b'0', '', '2019-11-17 11:10:55', 'app:del', 2);
INSERT INTO `menu` VALUES (109, b'0', '部署新增', '', 94, 999, '', '', b'0', b'0', '', '2019-11-17 11:11:22', 'deploy:add', 2);
INSERT INTO `menu` VALUES (110, b'0', '部署编辑', '', 94, 999, '', '', b'0', b'0', '', '2019-11-17 11:11:41', 'deploy:edit', 2);
INSERT INTO `menu` VALUES (111, b'0', '部署删除', '', 94, 999, '', '', b'0', b'0', '', '2019-11-17 11:12:01', 'deploy:del', 2);
INSERT INTO `menu` VALUES (112, b'0', '数据库新增', '', 98, 999, '', '', b'0', b'0', '', '2019-11-17 11:12:43', 'database:add', 2);
INSERT INTO `menu` VALUES (113, b'0', '数据库编辑', '', 98, 999, '', '', b'0', b'0', '', '2019-11-17 11:12:58', 'database:edit', 2);
INSERT INTO `menu` VALUES (114, b'0', '数据库删除', '', 98, 999, '', '', b'0', b'0', '', '2019-11-17 11:13:14', 'database:del', 2);
INSERT INTO `menu` VALUES (116, b'0', '生成预览', 'generator/preview', 36, 999, 'java', 'generator/preview/:tableName', b'1', b'1', 'Preview', '2019-11-26 14:54:36', NULL, 1);
INSERT INTO `menu` VALUES (150, b'0', '设备添加', '', 23, 999, '', '', b'0', b'0', '', '2020-02-05 16:13:53', 'myAssetList:add', 2);
INSERT INTO `menu` VALUES (151, b'0', '设备删除', '', 23, 999, '', '', b'0', b'0', '', '2020-02-05 16:14:29', 'myAssetList:del', 2);
INSERT INTO `menu` VALUES (152, b'0', '设备修改', '', 23, 999, '', '', b'0', b'0', '', '2020-02-05 16:15:25', 'myAssetList:edit', 2);

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS `mnt_app`;
CREATE TABLE `mnt_app`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '应用ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用名称',
  `upload_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上传目录',
  `deploy_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部署路径',
  `backup_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备份路径',
  `port` int(255) DEFAULT NULL COMMENT '应用端口',
  `start_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '启动脚本',
  `deploy_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部署脚本',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_app
-- ----------------------------
INSERT INTO `mnt_app` VALUES (1, 'eladmin-monitor-2.4.jar', '/opt/upload', '/opt/monitor', '/opt/backup', 8777, 'cd /opt/monitor\nnohup java -jar eladmin-monitor-2.4.jar >nohup.out 2>&1 &', 'mv -f /opt/upload/eladmin-monitor-2.4.jar /opt/monitor\ncd /opt/monitor\nnohup java -jar eladmin-monitor-2.4.jar >nohup.out 2>&1 &', '2019-11-24 20:52:59');
INSERT INTO `mnt_app` VALUES (2, 'eladmin-system-2.4.jar', '/opt/upload', '/opt/eladmin', '/opt/backup/eladmin', 8000, 'cd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2>&1 &', 'mv -f /opt/upload/eladmin-system-2.3.jar /opt/eladmin/\ncd /opt/eladmin\nnohup java -jar eladmin-system-2.3.jar --spring.profiles.active=prod >nohup.out 2>&1 &', '2019-12-21 16:39:57');

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS `mnt_database`;
CREATE TABLE `mnt_database`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `jdbc_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'jdbc连接',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_database
-- ----------------------------
INSERT INTO `mnt_database` VALUES ('c4109eefc5724c65857ca9dd2690e0dd', 'eladmin', 'jdbc:mysql://localhost:3306/eladmin?serverTimezone=Asia/Shanghai', 'root', '123456', '2019-12-21 21:11:17');

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy`;
CREATE TABLE `mnt_deploy`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `app_id` bigint(20) DEFAULT NULL COMMENT '应用编号',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6sy157pseoxx4fmcqr1vnvvhy`(`app_id`) USING BTREE,
  CONSTRAINT `FK6sy157pseoxx4fmcqr1vnvvhy` FOREIGN KEY (`app_id`) REFERENCES `mnt_app` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部署管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_deploy
-- ----------------------------
INSERT INTO `mnt_deploy` VALUES (3, 1, '2019-12-21 15:53:06');
INSERT INTO `mnt_deploy` VALUES (6, 2, '2019-12-21 17:09:02');

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_history`;
CREATE TABLE `mnt_deploy_history`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `app_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名称',
  `deploy_date` datetime(0) NOT NULL COMMENT '部署日期',
  `deploy_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部署用户',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务器IP',
  `deploy_id` bigint(20) DEFAULT NULL COMMENT '部署编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部署历史管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_server`;
CREATE TABLE `mnt_deploy_server`  (
  `deploy_id` bigint(20) NOT NULL,
  `server_id` bigint(20) NOT NULL,
  PRIMARY KEY (`deploy_id`, `server_id`) USING BTREE,
  INDEX `FKeaaha7jew9a02b3bk9ghols53`(`server_id`) USING BTREE,
  CONSTRAINT `FK3cehr56tedph6nk3gxsmeq0pb` FOREIGN KEY (`deploy_id`) REFERENCES `mnt_deploy` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKeaaha7jew9a02b3bk9ghols53` FOREIGN KEY (`server_id`) REFERENCES `mnt_server` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用与服务器关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_deploy_server
-- ----------------------------
INSERT INTO `mnt_deploy_server` VALUES (3, 1);
INSERT INTO `mnt_deploy_server` VALUES (6, 1);

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_server`;
CREATE TABLE `mnt_server`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'IP地址',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `port` int(11) DEFAULT NULL COMMENT '端口',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '服务器管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_server
-- ----------------------------
INSERT INTO `mnt_server` VALUES (1, 'root', '132.232.129.20', '腾讯云', '123456', 8013, '2019-11-24 20:35:02');

-- ----------------------------
-- Table structure for monitor_server
-- ----------------------------
DROP TABLE IF EXISTS `monitor_server`;
CREATE TABLE `monitor_server`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpu_core` int(11) DEFAULT NULL COMMENT 'CPU内核数',
  `cpu_rate` double DEFAULT NULL COMMENT 'CPU使用率',
  `disk_total` double DEFAULT NULL COMMENT '磁盘总量',
  `disk_used` double DEFAULT NULL COMMENT '磁盘使用量',
  `mem_total` double DEFAULT NULL COMMENT '内存总数',
  `mem_used` double DEFAULT NULL COMMENT '内存使用量',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `port` int(11) DEFAULT NULL COMMENT '访问端口',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `swap_total` double DEFAULT NULL COMMENT '交换区总量',
  `swap_used` double DEFAULT NULL COMMENT '交换区使用量',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '服务监控' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of monitor_server
-- ----------------------------
INSERT INTO `monitor_server` VALUES (1, 8, 0.05924018, 465.12402, 91.66521, 7.849415, 7.6052284, '本地', 8777, 999, '0', 14.599415, 11.263367, 'localhost');

-- ----------------------------
-- Table structure for my_asset_list
-- ----------------------------
DROP TABLE IF EXISTS `my_asset_list`;
CREATE TABLE `my_asset_list`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `id_an` int(11) DEFAULT NULL COMMENT '资产名称id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '资产名称',
  `id_user` bigint(20) NOT NULL COMMENT '责任者',
  `status` int(11) NOT NULL COMMENT '状态',
  `id_pc` int(11) DEFAULT NULL COMMENT '一级类别',
  `id_sc` int(11) DEFAULT NULL COMMENT '二级类别',
  `id_dept` bigint(20) NOT NULL COMMENT '机构',
  `receivetime` datetime(0) DEFAULT NULL COMMENT '领取时间',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK3nal61jg7iivfwmwa96sgo3km`(`id_dept`) USING BTREE,
  INDEX `FK4whutpje4rusuxjbsxov3m5si`(`id_pc`) USING BTREE,
  INDEX `FK61rxoj9m5ax5qyhkpkffev8t4`(`id_sc`) USING BTREE,
  INDEX `FK3y63cyhd3hd27n037uevsrb27`(`id_user`) USING BTREE,
  CONSTRAINT `FK3nal61jg7iivfwmwa96sgo3km` FOREIGN KEY (`id_dept`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK3y63cyhd3hd27n037uevsrb27` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK4whutpje4rusuxjbsxov3m5si` FOREIGN KEY (`id_pc`) REFERENCES `my_primary_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK61rxoj9m5ax5qyhkpkffev8t4` FOREIGN KEY (`id_sc`) REFERENCES `my_secondary_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_asset_list
-- ----------------------------
INSERT INTO `my_asset_list` VALUES (7, 1, '笔记本', 1, 1, 3, 16, 5, NULL, '22222');
INSERT INTO `my_asset_list` VALUES (9, 1, '笔记本2', 3, 1, 3, 16, 2, NULL, '外网');

-- ----------------------------
-- Table structure for my_asset_name
-- ----------------------------
DROP TABLE IF EXISTS `my_asset_name`;
CREATE TABLE `my_asset_name`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产名称',
  `pcid` int(11) DEFAULT NULL COMMENT '一级类别',
  `scid` int(11) DEFAULT NULL COMMENT '二级类别',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_asset_name
-- ----------------------------
INSERT INTO `my_asset_name` VALUES (1, '笔记本', 1, 1, '11我问问');
INSERT INTO `my_asset_name` VALUES (2, '笔记本2', 1, 1, '哇哇哇哇');

-- ----------------------------
-- Table structure for my_primary_category
-- ----------------------------
DROP TABLE IF EXISTS `my_primary_category`;
CREATE TABLE `my_primary_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_primary_category
-- ----------------------------
INSERT INTO `my_primary_category` VALUES (1, 'IT基础设施类');
INSERT INTO `my_primary_category` VALUES (2, '业务接入机具类');
INSERT INTO `my_primary_category` VALUES (3, '办公接入设备类');
INSERT INTO `my_primary_category` VALUES (4, '文档');

-- ----------------------------
-- Table structure for my_secondary_category
-- ----------------------------
DROP TABLE IF EXISTS `my_secondary_category`;
CREATE TABLE `my_secondary_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类别',
  `pid` int(11) DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `my_secondary_category_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `my_primary_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_secondary_category
-- ----------------------------
INSERT INTO `my_secondary_category` VALUES (1, '机房设施类', 1);
INSERT INTO `my_secondary_category` VALUES (2, '计算机设备类', 1);
INSERT INTO `my_secondary_category` VALUES (3, '网络线路类', 1);
INSERT INTO `my_secondary_category` VALUES (4, '柜面终端', 2);
INSERT INTO `my_secondary_category` VALUES (5, '打印机', 2);
INSERT INTO `my_secondary_category` VALUES (6, 'IC卡（磁条）读写器', 2);
INSERT INTO `my_secondary_category` VALUES (7, '密码键盘', 2);
INSERT INTO `my_secondary_category` VALUES (8, '指纹仪', 2);
INSERT INTO `my_secondary_category` VALUES (9, '图像采集仪', 2);
INSERT INTO `my_secondary_category` VALUES (10, '扫码设备', 2);
INSERT INTO `my_secondary_category` VALUES (11, '二代身份证阅读器', 2);
INSERT INTO `my_secondary_category` VALUES (12, '银行柜外清', 2);
INSERT INTO `my_secondary_category` VALUES (13, '银行柜内清', 2);
INSERT INTO `my_secondary_category` VALUES (14, '台式电脑', 3);
INSERT INTO `my_secondary_category` VALUES (15, '一体式电脑', 3);
INSERT INTO `my_secondary_category` VALUES (16, '笔记本电脑', 3);
INSERT INTO `my_secondary_category` VALUES (17, '平板电脑', 3);
INSERT INTO `my_secondary_category` VALUES (18, '打印机', 3);
INSERT INTO `my_secondary_category` VALUES (19, '投影仪', 3);
INSERT INTO `my_secondary_category` VALUES (20, '电脑周边硬件', 3);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '别名',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `pid` int(11) NOT NULL COMMENT '上级权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '超级管理员', '2018-12-03 12:27:48', 'ADMIN', 0);
INSERT INTO `permission` VALUES (2, '用户管理', '2018-12-03 12:28:19', 'USER_ALL', 0);
INSERT INTO `permission` VALUES (3, '用户查询', '2018-12-03 12:31:35', 'USER_SELECT', 2);
INSERT INTO `permission` VALUES (4, '用户创建', '2018-12-03 12:31:35', 'USER_CREATE', 2);
INSERT INTO `permission` VALUES (5, '用户编辑', '2018-12-03 12:31:35', 'USER_EDIT', 2);
INSERT INTO `permission` VALUES (6, '用户删除', '2018-12-03 12:31:35', 'USER_DELETE', 2);
INSERT INTO `permission` VALUES (7, '角色管理', '2018-12-03 12:28:19', 'ROLES_ALL', 0);
INSERT INTO `permission` VALUES (8, '角色查询', '2018-12-03 12:31:35', 'ROLES_SELECT', 7);
INSERT INTO `permission` VALUES (10, '角色创建', '2018-12-09 20:10:16', 'ROLES_CREATE', 7);
INSERT INTO `permission` VALUES (11, '角色编辑', '2018-12-09 20:10:42', 'ROLES_EDIT', 7);
INSERT INTO `permission` VALUES (12, '角色删除', '2018-12-09 20:11:07', 'ROLES_DELETE', 7);
INSERT INTO `permission` VALUES (13, '权限管理', '2018-12-09 20:11:37', 'PERMISSION_ALL', 0);
INSERT INTO `permission` VALUES (14, '权限查询', '2018-12-09 20:11:55', 'PERMISSION_SELECT', 13);
INSERT INTO `permission` VALUES (15, '权限创建', '2018-12-09 20:14:10', 'PERMISSION_CREATE', 13);
INSERT INTO `permission` VALUES (16, '权限编辑', '2018-12-09 20:15:44', 'PERMISSION_EDIT', 13);
INSERT INTO `permission` VALUES (17, '权限删除', '2018-12-09 20:15:59', 'PERMISSION_DELETE', 13);
INSERT INTO `permission` VALUES (18, '缓存管理', '2018-12-17 13:53:25', 'REDIS_ALL', 0);
INSERT INTO `permission` VALUES (20, '缓存查询', '2018-12-17 13:54:07', 'REDIS_SELECT', 18);
INSERT INTO `permission` VALUES (22, '缓存删除', '2018-12-17 13:55:04', 'REDIS_DELETE', 18);
INSERT INTO `permission` VALUES (23, '图床管理', '2018-12-27 20:31:49', 'PICTURE_ALL', 0);
INSERT INTO `permission` VALUES (24, '查询图片', '2018-12-27 20:32:04', 'PICTURE_SELECT', 23);
INSERT INTO `permission` VALUES (25, '上传图片', '2018-12-27 20:32:24', 'PICTURE_UPLOAD', 23);
INSERT INTO `permission` VALUES (26, '删除图片', '2018-12-27 20:32:45', 'PICTURE_DELETE', 23);
INSERT INTO `permission` VALUES (29, '菜单管理', '2018-12-28 17:34:31', 'MENU_ALL', 0);
INSERT INTO `permission` VALUES (30, '菜单查询', '2018-12-28 17:34:41', 'MENU_SELECT', 29);
INSERT INTO `permission` VALUES (31, '菜单创建', '2018-12-28 17:34:52', 'MENU_CREATE', 29);
INSERT INTO `permission` VALUES (32, '菜单编辑', '2018-12-28 17:35:20', 'MENU_EDIT', 29);
INSERT INTO `permission` VALUES (33, '菜单删除', '2018-12-28 17:35:29', 'MENU_DELETE', 29);
INSERT INTO `permission` VALUES (35, '定时任务管理', '2019-01-08 14:59:57', 'JOB_ALL', 0);
INSERT INTO `permission` VALUES (36, '任务查询', '2019-01-08 15:00:09', 'JOB_SELECT', 35);
INSERT INTO `permission` VALUES (37, '任务创建', '2019-01-08 15:00:20', 'JOB_CREATE', 35);
INSERT INTO `permission` VALUES (38, '任务编辑', '2019-01-08 15:00:33', 'JOB_EDIT', 35);
INSERT INTO `permission` VALUES (39, '任务删除', '2019-01-08 15:01:13', 'JOB_DELETE', 35);
INSERT INTO `permission` VALUES (40, '部门管理', '2019-03-29 17:06:55', 'DEPT_ALL', 0);
INSERT INTO `permission` VALUES (41, '部门查询', '2019-03-29 17:07:09', 'DEPT_SELECT', 40);
INSERT INTO `permission` VALUES (42, '部门创建', '2019-03-29 17:07:29', 'DEPT_CREATE', 40);
INSERT INTO `permission` VALUES (43, '部门编辑', '2019-03-29 17:07:52', 'DEPT_EDIT', 40);
INSERT INTO `permission` VALUES (44, '部门删除', '2019-03-29 17:08:14', 'DEPT_DELETE', 40);
INSERT INTO `permission` VALUES (45, '岗位管理', '2019-03-29 17:08:52', 'USERJOB_ALL', 0);
INSERT INTO `permission` VALUES (46, '岗位查询', '2019-03-29 17:10:27', 'USERJOB_SELECT', 45);
INSERT INTO `permission` VALUES (47, '岗位创建', '2019-03-29 17:10:55', 'USERJOB_CREATE', 45);
INSERT INTO `permission` VALUES (48, '岗位编辑', '2019-03-29 17:11:08', 'USERJOB_EDIT', 45);
INSERT INTO `permission` VALUES (49, '岗位删除', '2019-03-29 17:11:19', 'USERJOB_DELETE', 45);
INSERT INTO `permission` VALUES (50, '字典管理', '2019-04-10 16:24:51', 'DICT_ALL', 0);
INSERT INTO `permission` VALUES (51, '字典查询', '2019-04-10 16:25:16', 'DICT_SELECT', 50);
INSERT INTO `permission` VALUES (52, '字典创建', '2019-04-10 16:25:29', 'DICT_CREATE', 50);
INSERT INTO `permission` VALUES (53, '字典编辑', '2019-04-10 16:27:19', 'DICT_EDIT', 50);
INSERT INTO `permission` VALUES (54, '字典删除', '2019-04-10 16:27:30', 'DICT_DELETE', 50);
INSERT INTO `permission` VALUES (55, '文件管理', '2019-09-08 12:31:54', 'LOCALSTORAGE_ALL', 0);
INSERT INTO `permission` VALUES (56, '文件搜索', '2019-09-08 12:40:53', 'LOCALSTORAGE_SELECT', 55);
INSERT INTO `permission` VALUES (57, '文件上传', '2019-09-08 12:41:05', 'LOCALSTORAGE_CREATE', 55);
INSERT INTO `permission` VALUES (58, '文件编辑', '2019-09-08 12:41:19', 'LOCALSTORAGE_EDIT', 55);
INSERT INTO `permission` VALUES (59, '文件删除', '2019-09-08 12:41:29', 'LOCALSTORAGE_DELETE', 55);

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime(0) DEFAULT NULL COMMENT '上传日期',
  `delete_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '删除的URL',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片名称',
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片高度',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片大小',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片地址',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名称',
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片宽度',
  `md5code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_config`;
CREATE TABLE `qiniu_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `access_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'accessKey',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外链域名',
  `secret_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'secretKey',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_content`;
CREATE TABLE `qiniu_content`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件类型：私有或公开',
  `update_time` datetime(0) DEFAULT NULL COMMENT '上传或同步的时间',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `quartz_job`;
CREATE TABLE `quartz_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of quartz_job
-- ----------------------------
INSERT INTO `quartz_job` VALUES (1, 'visitsTask', '0 0 0 * * ?', b'0', '更新访客记录', 'run', NULL, '每日0点创建新的访客记录', '2019-01-08 14:53:31');
INSERT INTO `quartz_job` VALUES (2, 'testTask', '0/5 * * * * ?', b'1', '测试1', 'run1', 'test', '带参测试，多参使用json', '2019-08-22 14:08:29');
INSERT INTO `quartz_job` VALUES (3, 'testTask', '0/5 * * * * ?', b'1', '测试', 'run', '', '不带参测试', '2019-09-26 16:44:39');

-- ----------------------------
-- Table structure for quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `quartz_log`;
CREATE TABLE `quartz_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `baen_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `is_success` bit(1) DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of quartz_log
-- ----------------------------
INSERT INTO `quartz_log` VALUES (7, 'visitsTask', '2019-11-28 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 81);
INSERT INTO `quartz_log` VALUES (8, 'visitsTask', '2019-11-29 00:00:01', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 503);
INSERT INTO `quartz_log` VALUES (9, 'visitsTask', '2019-11-30 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 98);
INSERT INTO `quartz_log` VALUES (10, 'visitsTask', '2019-12-05 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 202);
INSERT INTO `quartz_log` VALUES (11, 'visitsTask', '2019-12-06 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 186);
INSERT INTO `quartz_log` VALUES (12, 'visitsTask', '2019-12-07 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 302);
INSERT INTO `quartz_log` VALUES (13, 'visitsTask', '2019-12-08 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 155);
INSERT INTO `quartz_log` VALUES (14, 'visitsTask', '2019-12-09 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 282);
INSERT INTO `quartz_log` VALUES (15, 'visitsTask', '2019-12-10 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 166);
INSERT INTO `quartz_log` VALUES (16, 'visitsTask', '2020-02-03 09:22:29', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 867);
INSERT INTO `quartz_log` VALUES (17, 'visitsTask', '2020-02-04 09:15:09', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 630);
INSERT INTO `quartz_log` VALUES (18, 'visitsTask', '2020-02-05 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 217);
INSERT INTO `quartz_log` VALUES (19, 'visitsTask', '2020-02-06 10:24:01', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 489);
INSERT INTO `quartz_log` VALUES (20, 'visitsTask', '2020-02-07 09:10:55', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 277);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `data_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `level` int(255) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '-', '全部', 1, '2018-11-23 11:04:37', 'admin');
INSERT INTO `role` VALUES (2, '普通用户', '-', '全部', 2, '2018-11-23 13:09:06', 'common');

-- ----------------------------
-- Table structure for roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `roles_depts`;
CREATE TABLE `roles_depts`  (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE,
  INDEX `FK7qg6itn5ajdoa9h9o78v9ksur`(`dept_id`) USING BTREE,
  CONSTRAINT `FK7qg6itn5ajdoa9h9o78v9ksur` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrg1ci4cxxfbja0sb0pddju7k` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus`  (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`, `role_id`) USING BTREE,
  INDEX `FKcngg2qadojhi3a651a5adkvbq`(`role_id`) USING BTREE,
  CONSTRAINT `FKo7wsmlrrxb2osfaoavp46rv2r` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKtag324maketmxffly3pdyh193` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles_menus
-- ----------------------------
INSERT INTO `roles_menus` VALUES (1, 1);
INSERT INTO `roles_menus` VALUES (2, 1);
INSERT INTO `roles_menus` VALUES (3, 1);
INSERT INTO `roles_menus` VALUES (5, 1);
INSERT INTO `roles_menus` VALUES (6, 1);
INSERT INTO `roles_menus` VALUES (7, 1);
INSERT INTO `roles_menus` VALUES (8, 1);
INSERT INTO `roles_menus` VALUES (9, 1);
INSERT INTO `roles_menus` VALUES (10, 1);
INSERT INTO `roles_menus` VALUES (11, 1);
INSERT INTO `roles_menus` VALUES (14, 1);
INSERT INTO `roles_menus` VALUES (15, 1);
INSERT INTO `roles_menus` VALUES (16, 1);
INSERT INTO `roles_menus` VALUES (18, 1);
INSERT INTO `roles_menus` VALUES (19, 1);
INSERT INTO `roles_menus` VALUES (21, 1);
INSERT INTO `roles_menus` VALUES (22, 1);
INSERT INTO `roles_menus` VALUES (23, 1);
INSERT INTO `roles_menus` VALUES (24, 1);
INSERT INTO `roles_menus` VALUES (27, 1);
INSERT INTO `roles_menus` VALUES (28, 1);
INSERT INTO `roles_menus` VALUES (30, 1);
INSERT INTO `roles_menus` VALUES (32, 1);
INSERT INTO `roles_menus` VALUES (33, 1);
INSERT INTO `roles_menus` VALUES (34, 1);
INSERT INTO `roles_menus` VALUES (35, 1);
INSERT INTO `roles_menus` VALUES (36, 1);
INSERT INTO `roles_menus` VALUES (37, 1);
INSERT INTO `roles_menus` VALUES (38, 1);
INSERT INTO `roles_menus` VALUES (39, 1);
INSERT INTO `roles_menus` VALUES (41, 1);
INSERT INTO `roles_menus` VALUES (44, 1);
INSERT INTO `roles_menus` VALUES (45, 1);
INSERT INTO `roles_menus` VALUES (46, 1);
INSERT INTO `roles_menus` VALUES (48, 1);
INSERT INTO `roles_menus` VALUES (49, 1);
INSERT INTO `roles_menus` VALUES (50, 1);
INSERT INTO `roles_menus` VALUES (52, 1);
INSERT INTO `roles_menus` VALUES (53, 1);
INSERT INTO `roles_menus` VALUES (54, 1);
INSERT INTO `roles_menus` VALUES (56, 1);
INSERT INTO `roles_menus` VALUES (57, 1);
INSERT INTO `roles_menus` VALUES (58, 1);
INSERT INTO `roles_menus` VALUES (60, 1);
INSERT INTO `roles_menus` VALUES (61, 1);
INSERT INTO `roles_menus` VALUES (62, 1);
INSERT INTO `roles_menus` VALUES (64, 1);
INSERT INTO `roles_menus` VALUES (65, 1);
INSERT INTO `roles_menus` VALUES (66, 1);
INSERT INTO `roles_menus` VALUES (68, 1);
INSERT INTO `roles_menus` VALUES (70, 1);
INSERT INTO `roles_menus` VALUES (71, 1);
INSERT INTO `roles_menus` VALUES (73, 1);
INSERT INTO `roles_menus` VALUES (74, 1);
INSERT INTO `roles_menus` VALUES (75, 1);
INSERT INTO `roles_menus` VALUES (77, 1);
INSERT INTO `roles_menus` VALUES (78, 1);
INSERT INTO `roles_menus` VALUES (79, 1);
INSERT INTO `roles_menus` VALUES (80, 1);
INSERT INTO `roles_menus` VALUES (82, 1);
INSERT INTO `roles_menus` VALUES (90, 1);
INSERT INTO `roles_menus` VALUES (92, 1);
INSERT INTO `roles_menus` VALUES (93, 1);
INSERT INTO `roles_menus` VALUES (94, 1);
INSERT INTO `roles_menus` VALUES (97, 1);
INSERT INTO `roles_menus` VALUES (98, 1);
INSERT INTO `roles_menus` VALUES (102, 1);
INSERT INTO `roles_menus` VALUES (103, 1);
INSERT INTO `roles_menus` VALUES (104, 1);
INSERT INTO `roles_menus` VALUES (105, 1);
INSERT INTO `roles_menus` VALUES (106, 1);
INSERT INTO `roles_menus` VALUES (107, 1);
INSERT INTO `roles_menus` VALUES (108, 1);
INSERT INTO `roles_menus` VALUES (109, 1);
INSERT INTO `roles_menus` VALUES (110, 1);
INSERT INTO `roles_menus` VALUES (111, 1);
INSERT INTO `roles_menus` VALUES (112, 1);
INSERT INTO `roles_menus` VALUES (113, 1);
INSERT INTO `roles_menus` VALUES (114, 1);
INSERT INTO `roles_menus` VALUES (116, 1);
INSERT INTO `roles_menus` VALUES (21, 2);
INSERT INTO `roles_menus` VALUES (23, 2);
INSERT INTO `roles_menus` VALUES (24, 2);
INSERT INTO `roles_menus` VALUES (27, 2);
INSERT INTO `roles_menus` VALUES (35, 2);
INSERT INTO `roles_menus` VALUES (70, 2);
INSERT INTO `roles_menus` VALUES (71, 2);
INSERT INTO `roles_menus` VALUES (77, 2);
INSERT INTO `roles_menus` VALUES (78, 2);
INSERT INTO `roles_menus` VALUES (79, 2);
INSERT INTO `roles_menus` VALUES (81, 2);
INSERT INTO `roles_menus` VALUES (82, 2);
INSERT INTO `roles_menus` VALUES (83, 2);

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `permission_id` bigint(20) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `FKboeuhl31go7wer3bpy6so7exi`(`permission_id`) USING BTREE,
  CONSTRAINT `FK4hrolwj4ned5i7qe8kyiaak6m` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKboeuhl31go7wer3bpy6so7exi` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES (1, 1);
INSERT INTO `roles_permissions` VALUES (2, 3);
INSERT INTO `roles_permissions` VALUES (4, 3);
INSERT INTO `roles_permissions` VALUES (4, 4);
INSERT INTO `roles_permissions` VALUES (4, 5);
INSERT INTO `roles_permissions` VALUES (2, 8);
INSERT INTO `roles_permissions` VALUES (2, 14);
INSERT INTO `roles_permissions` VALUES (2, 20);
INSERT INTO `roles_permissions` VALUES (2, 23);
INSERT INTO `roles_permissions` VALUES (2, 24);
INSERT INTO `roles_permissions` VALUES (2, 25);
INSERT INTO `roles_permissions` VALUES (2, 26);
INSERT INTO `roles_permissions` VALUES (2, 30);
INSERT INTO `roles_permissions` VALUES (2, 36);
INSERT INTO `roles_permissions` VALUES (2, 41);
INSERT INTO `roles_permissions` VALUES (2, 46);
INSERT INTO `roles_permissions` VALUES (2, 51);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `avatar_id` bigint(20) DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `enabled` bigint(20) DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `dept_id` bigint(20) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `last_password_reset_time` datetime(0) DEFAULT NULL COMMENT '最后修改密码的日期',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_kpubos9gc2cvtkb0thktkbkes`(`email`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `FK5rwmryny6jthaaxkogownknqp`(`dept_id`) USING BTREE,
  INDEX `FKfftoc2abhot8f2wu6cl9a5iky`(`job_id`) USING BTREE,
  INDEX `FKpq2dhypk2qgt68nauh2by22jb`(`avatar_id`) USING BTREE,
  CONSTRAINT `FK5rwmryny6jthaaxkogownknqp` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKfftoc2abhot8f2wu6cl9a5iky` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpq2dhypk2qgt68nauh2by22jb` FOREIGN KEY (`avatar_id`) REFERENCES `user_avatar` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, 'admin@eladmin.net', 1, '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', 'admin', 2, '18888888888', 11, '2018-08-23 09:11:56', '2019-05-18 17:34:21', NULL, NULL);
INSERT INTO `user` VALUES (3, NULL, 'test@eladmin.net', 1, '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', 'test', 2, '17777777777', 12, '2018-12-27 20:05:26', '2019-04-01 09:15:24', NULL, NULL);
INSERT INTO `user` VALUES (6, NULL, 'ww@qq.com', 1, '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', 'zxy', 2, '13568873932', 11, '2019-11-28 15:48:03', NULL, '00000', NULL);
INSERT INTO `user` VALUES (7, NULL, '111@qq.com', 1, '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', '112', 2, '13568870000', 10, '2019-11-29 22:46:46', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_avatar
-- ----------------------------
DROP TABLE IF EXISTS `user_avatar`;
CREATE TABLE `user_avatar`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKq4eq273l04bpu4efj0jd0jb98`(`role_id`) USING BTREE,
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES (1, 1);
INSERT INTO `users_roles` VALUES (6, 1);
INSERT INTO `users_roles` VALUES (1, 2);
INSERT INTO `users_roles` VALUES (3, 2);
INSERT INTO `users_roles` VALUES (7, 2);

-- ----------------------------
-- Table structure for verification_code
-- ----------------------------
DROP TABLE IF EXISTS `verification_code`;
CREATE TABLE `verification_code`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '验证码',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建日期',
  `status` bit(1) DEFAULT NULL COMMENT '状态：1有效、0过期',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '验证码类型：email或者短信',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接收邮箱或者手机号码',
  `scenes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务名称：如重置邮箱、重置密码等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip_counts` bigint(20) DEFAULT NULL,
  `pv_counts` bigint(20) DEFAULT NULL,
  `week_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_11aksgq87euk9bcyeesfs4vtp`(`date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES (108, '2019-10-29 21:45:49', '2019-10-29', 1, 1, 'Tue');
INSERT INTO `visits` VALUES (109, '2019-10-30 08:58:54', '2019-10-30', 2, 11, 'Wed');
INSERT INTO `visits` VALUES (110, '2019-10-31 09:04:18', '2019-10-31', 2, 8, 'Thu');
INSERT INTO `visits` VALUES (111, '2019-11-27 16:27:44', '2019-11-27', 1, 8, 'Wed');
INSERT INTO `visits` VALUES (112, '2019-11-28 00:00:00', '2019-11-28', 1, 5, 'Thu');
INSERT INTO `visits` VALUES (113, '2019-11-29 00:00:00', '2019-11-29', 1, 3, 'Fri');
INSERT INTO `visits` VALUES (114, '2019-11-30 00:00:00', '2019-11-30', 1, 2, 'Sat');
INSERT INTO `visits` VALUES (115, '2019-12-04 08:54:21', '2019-12-04', 1, 7, 'Wed');
INSERT INTO `visits` VALUES (116, '2019-12-05 00:00:00', '2019-12-05', 1, 3, 'Thu');
INSERT INTO `visits` VALUES (117, '2019-12-06 00:00:00', '2019-12-06', 1, 2, 'Fri');
INSERT INTO `visits` VALUES (118, '2019-12-07 00:00:00', '2019-12-07', 1, 1, 'Sat');
INSERT INTO `visits` VALUES (119, '2019-12-08 00:00:00', '2019-12-08', 1, 1, 'Sun');
INSERT INTO `visits` VALUES (120, '2019-12-09 00:00:00', '2019-12-09', 1, 1, 'Mon');
INSERT INTO `visits` VALUES (121, '2019-12-10 00:00:00', '2019-12-10', 1, 1, 'Tue');
INSERT INTO `visits` VALUES (122, '2020-01-31 20:46:28', '2020-01-31', 1, 2, 'Fri');
INSERT INTO `visits` VALUES (123, '2020-02-03 09:22:28', '2020-02-03', 1, 1, 'Mon');
INSERT INTO `visits` VALUES (124, '2020-02-04 09:15:08', '2020-02-04', 1, 2, 'Tue');
INSERT INTO `visits` VALUES (125, '2020-02-05 00:00:00', '2020-02-05', 1, 4, 'Wed');
INSERT INTO `visits` VALUES (126, '2020-02-06 10:24:01', '2020-02-06', 2, 8, 'Thu');
INSERT INTO `visits` VALUES (127, '2020-02-07 09:10:55', '2020-02-07', 1, 1, 'Fri');
INSERT INTO `visits` VALUES (128, '2020-03-08 12:05:05', '2020-03-08', 1, 9, 'Sun');

SET FOREIGN_KEY_CHECKS = 1;
