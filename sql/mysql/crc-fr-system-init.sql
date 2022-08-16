/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.17 : Database - ruoyi-vue-pro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ruoyi-vue-pro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ruoyi-vue-pro`;

/*Table structure for table `bpm_form` */

DROP TABLE IF EXISTS `bpm_form`;

CREATE TABLE `bpm_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表单名',
  `status` tinyint(4) NOT NULL COMMENT '开启状态',
  `conf` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表单的配置',
  `fields` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表单项的数组',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='工作流的表单定义';

/*Data for the table `bpm_form` */

insert  into `bpm_form`(`id`,`name`,`status`,`conf`,`fields`,`remark`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(17,'equip-test-form',0,'{\"formRef\":\"elForm\",\"formModel\":\"formData\",\"size\":\"medium\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true}','[\"{\\\"__config__\\\":{\\\"label\\\":\\\"开始日期\\\",\\\"tag\\\":\\\"el-date-picker\\\",\\\"tagIcon\\\":\\\"date\\\",\\\"defaultValue\\\":null,\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"span\\\":24,\\\"layout\\\":\\\"colFormItem\\\",\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/date-picker\\\",\\\"formId\\\":101,\\\"renderKey\\\":\\\"1011654844384941\\\"},\\\"placeholder\\\":\\\"请选择开始日期\\\",\\\"type\\\":\\\"date\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"disabled\\\":false,\\\"clearable\\\":true,\\\"format\\\":\\\"yyyy-MM-dd\\\",\\\"value-format\\\":\\\"yyyy-MM-dd\\\",\\\"readonly\\\":false,\\\"__vModel__\\\":\\\"field101\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"结束日期\\\",\\\"tag\\\":\\\"el-date-picker\\\",\\\"tagIcon\\\":\\\"date\\\",\\\"defaultValue\\\":null,\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"span\\\":24,\\\"layout\\\":\\\"colFormItem\\\",\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/date-picker\\\",\\\"formId\\\":102,\\\"renderKey\\\":\\\"1021654844403576\\\"},\\\"placeholder\\\":\\\"请选择结束日期\\\",\\\"type\\\":\\\"date\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"disabled\\\":false,\\\"clearable\\\":true,\\\"format\\\":\\\"yyyy-MM-dd\\\",\\\"value-format\\\":\\\"yyyy-MM-dd\\\",\\\"readonly\\\":false,\\\"__vModel__\\\":\\\"field102\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"下拉选择\\\",\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"tag\\\":\\\"el-select\\\",\\\"tagIcon\\\":\\\"select\\\",\\\"layout\\\":\\\"colFormItem\\\",\\\"span\\\":24,\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/select\\\",\\\"formId\\\":103,\\\"renderKey\\\":\\\"1031654844469680\\\"},\\\"__slot__\\\":{\\\"options\\\":[{\\\"label\\\":\\\"设备\\\",\\\"value\\\":1},{\\\"label\\\":\\\"物品\\\",\\\"value\\\":2}]},\\\"placeholder\\\":\\\"请选择下拉选择\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"clearable\\\":true,\\\"disabled\\\":false,\\\"filterable\\\":false,\\\"multiple\\\":false,\\\"__vModel__\\\":\\\"field103\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"项目描述\\\",\\\"labelWidth\\\":null,\\\"showLabel\\\":true,\\\"tag\\\":\\\"el-input\\\",\\\"tagIcon\\\":\\\"textarea\\\",\\\"required\\\":true,\\\"layout\\\":\\\"colFormItem\\\",\\\"span\\\":24,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/input\\\",\\\"formId\\\":104,\\\"renderKey\\\":\\\"1041654846455619\\\"},\\\"type\\\":\\\"textarea\\\",\\\"placeholder\\\":\\\"请输入项目描述\\\",\\\"autosize\\\":{\\\"minRows\\\":4,\\\"maxRows\\\":4},\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"maxlength\\\":null,\\\"show-word-limit\\\":false,\\\"readonly\\\":false,\\\"disabled\\\":false,\\\"__vModel__\\\":\\\"field104\\\"}\"]','购买设备','1','2022-06-10 15:36:56','1','2022-06-10 15:36:56','\0',1);

/*Table structure for table `bpm_oa_leave` */

DROP TABLE IF EXISTS `bpm_oa_leave`;

CREATE TABLE `bpm_oa_leave` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '请假表单主键',
  `user_id` bigint(20) NOT NULL COMMENT '申请人的用户编号',
  `type` tinyint(4) NOT NULL COMMENT '请假类型',
  `reason` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请假原因',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `day` tinyint(4) NOT NULL COMMENT '请假天数',
  `result` tinyint(4) NOT NULL COMMENT '请假结果',
  `process_instance_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '流程实例的编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OA 请假申请表';

/*Data for the table `bpm_oa_leave` */

insert  into `bpm_oa_leave`(`id`,`user_id`,`type`,`reason`,`start_time`,`end_time`,`day`,`result`,`process_instance_id`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(31,123,1,'请假','2022-07-22 00:00:00','2022-07-25 00:00:00',3,4,'2cbfbde9-098f-11ed-b367-a4bb6ddb930e','123','2022-07-22 15:23:25','123','2022-07-23 14:25:07','\0',135),
(32,125,1,'啊啊啊啊啊啊啊','2022-07-01 00:00:00','2022-07-04 00:00:00',3,2,'762b12b0-0a57-11ed-9c19-a4bb6ddb930e','125','2022-07-23 15:17:08','121','2022-08-10 19:47:04','\0',135);

/*Table structure for table `bpm_process_definition_ext` */

DROP TABLE IF EXISTS `bpm_process_definition_ext`;

CREATE TABLE `bpm_process_definition_ext` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流程定义的编号',
  `model_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流程模型的编号',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `form_type` tinyint(4) NOT NULL COMMENT '表单类型',
  `form_id` bigint(20) DEFAULT NULL COMMENT '表单编号',
  `form_conf` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表单的配置',
  `form_fields` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表单项的数组',
  `form_custom_create_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自定义表单的提交路径',
  `form_custom_view_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自定义表单的查看路径',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bpm 流程定义的拓展表\n';

/*Data for the table `bpm_process_definition_ext` */

insert  into `bpm_process_definition_ext`(`id`,`process_definition_id`,`model_id`,`description`,`form_type`,`form_id`,`form_conf`,`form_fields`,`form_custom_create_path`,`form_custom_view_path`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(104,'Equip_Reimb:1:e68c6d6d-e890-11ec-9162-a4bb6ddb930e','976f5028-e7c9-11ec-9162-a4bb6ddb930e','采购设备报销流程',10,17,'{\"formRef\":\"elForm\",\"formModel\":\"formData\",\"size\":\"medium\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true}','[\"{\\\"__config__\\\":{\\\"label\\\":\\\"开始日期\\\",\\\"tag\\\":\\\"el-date-picker\\\",\\\"tagIcon\\\":\\\"date\\\",\\\"defaultValue\\\":null,\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"span\\\":24,\\\"layout\\\":\\\"colFormItem\\\",\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/date-picker\\\",\\\"formId\\\":101,\\\"renderKey\\\":\\\"1011654844384941\\\"},\\\"placeholder\\\":\\\"请选择开始日期\\\",\\\"type\\\":\\\"date\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"disabled\\\":false,\\\"clearable\\\":true,\\\"format\\\":\\\"yyyy-MM-dd\\\",\\\"value-format\\\":\\\"yyyy-MM-dd\\\",\\\"readonly\\\":false,\\\"__vModel__\\\":\\\"field101\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"结束日期\\\",\\\"tag\\\":\\\"el-date-picker\\\",\\\"tagIcon\\\":\\\"date\\\",\\\"defaultValue\\\":null,\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"span\\\":24,\\\"layout\\\":\\\"colFormItem\\\",\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/date-picker\\\",\\\"formId\\\":102,\\\"renderKey\\\":\\\"1021654844403576\\\"},\\\"placeholder\\\":\\\"请选择结束日期\\\",\\\"type\\\":\\\"date\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"disabled\\\":false,\\\"clearable\\\":true,\\\"format\\\":\\\"yyyy-MM-dd\\\",\\\"value-format\\\":\\\"yyyy-MM-dd\\\",\\\"readonly\\\":false,\\\"__vModel__\\\":\\\"field102\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"下拉选择\\\",\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"tag\\\":\\\"el-select\\\",\\\"tagIcon\\\":\\\"select\\\",\\\"layout\\\":\\\"colFormItem\\\",\\\"span\\\":24,\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/select\\\",\\\"formId\\\":103,\\\"renderKey\\\":\\\"1031654844469680\\\"},\\\"__slot__\\\":{\\\"options\\\":[{\\\"label\\\":\\\"设备\\\",\\\"value\\\":1},{\\\"label\\\":\\\"物品\\\",\\\"value\\\":2}]},\\\"placeholder\\\":\\\"请选择下拉选择\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"clearable\\\":true,\\\"disabled\\\":false,\\\"filterable\\\":false,\\\"multiple\\\":false,\\\"__vModel__\\\":\\\"field103\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"项目描述\\\",\\\"labelWidth\\\":null,\\\"showLabel\\\":true,\\\"tag\\\":\\\"el-input\\\",\\\"tagIcon\\\":\\\"textarea\\\",\\\"required\\\":true,\\\"layout\\\":\\\"colFormItem\\\",\\\"span\\\":24,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/input\\\",\\\"formId\\\":104,\\\"renderKey\\\":\\\"1041654846455619\\\"},\\\"type\\\":\\\"textarea\\\",\\\"placeholder\\\":\\\"请输入项目描述\\\",\\\"autosize\\\":{\\\"minRows\\\":4,\\\"maxRows\\\":4},\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"maxlength\\\":null,\\\"show-word-limit\\\":false,\\\"readonly\\\":false,\\\"disabled\\\":false,\\\"__vModel__\\\":\\\"field104\\\"}\"]',NULL,NULL,'1','2022-06-10 15:42:38','1','2022-06-10 15:42:38','\0',1),
(105,'Equip_Reimb:2:24141360-e891-11ec-9162-a4bb6ddb930e','976f5028-e7c9-11ec-9162-a4bb6ddb930e','采购设备报销流程',10,17,'{\"formRef\":\"elForm\",\"formModel\":\"formData\",\"size\":\"medium\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true}','[\"{\\\"__config__\\\":{\\\"label\\\":\\\"开始日期\\\",\\\"tag\\\":\\\"el-date-picker\\\",\\\"tagIcon\\\":\\\"date\\\",\\\"defaultValue\\\":null,\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"span\\\":24,\\\"layout\\\":\\\"colFormItem\\\",\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/date-picker\\\",\\\"formId\\\":101,\\\"renderKey\\\":\\\"1011654844384941\\\"},\\\"placeholder\\\":\\\"请选择开始日期\\\",\\\"type\\\":\\\"date\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"disabled\\\":false,\\\"clearable\\\":true,\\\"format\\\":\\\"yyyy-MM-dd\\\",\\\"value-format\\\":\\\"yyyy-MM-dd\\\",\\\"readonly\\\":false,\\\"__vModel__\\\":\\\"field101\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"结束日期\\\",\\\"tag\\\":\\\"el-date-picker\\\",\\\"tagIcon\\\":\\\"date\\\",\\\"defaultValue\\\":null,\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"span\\\":24,\\\"layout\\\":\\\"colFormItem\\\",\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/date-picker\\\",\\\"formId\\\":102,\\\"renderKey\\\":\\\"1021654844403576\\\"},\\\"placeholder\\\":\\\"请选择结束日期\\\",\\\"type\\\":\\\"date\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"disabled\\\":false,\\\"clearable\\\":true,\\\"format\\\":\\\"yyyy-MM-dd\\\",\\\"value-format\\\":\\\"yyyy-MM-dd\\\",\\\"readonly\\\":false,\\\"__vModel__\\\":\\\"field102\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"下拉选择\\\",\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"tag\\\":\\\"el-select\\\",\\\"tagIcon\\\":\\\"select\\\",\\\"layout\\\":\\\"colFormItem\\\",\\\"span\\\":24,\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/select\\\",\\\"formId\\\":103,\\\"renderKey\\\":\\\"1031654844469680\\\"},\\\"__slot__\\\":{\\\"options\\\":[{\\\"label\\\":\\\"设备\\\",\\\"value\\\":1},{\\\"label\\\":\\\"物品\\\",\\\"value\\\":2}]},\\\"placeholder\\\":\\\"请选择下拉选择\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"clearable\\\":true,\\\"disabled\\\":false,\\\"filterable\\\":false,\\\"multiple\\\":false,\\\"__vModel__\\\":\\\"field103\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"项目描述\\\",\\\"labelWidth\\\":null,\\\"showLabel\\\":true,\\\"tag\\\":\\\"el-input\\\",\\\"tagIcon\\\":\\\"textarea\\\",\\\"required\\\":true,\\\"layout\\\":\\\"colFormItem\\\",\\\"span\\\":24,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/input\\\",\\\"formId\\\":104,\\\"renderKey\\\":\\\"1041654846455619\\\"},\\\"type\\\":\\\"textarea\\\",\\\"placeholder\\\":\\\"请输入项目描述\\\",\\\"autosize\\\":{\\\"minRows\\\":4,\\\"maxRows\\\":4},\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"maxlength\\\":null,\\\"show-word-limit\\\":false,\\\"readonly\\\":false,\\\"disabled\\\":false,\\\"__vModel__\\\":\\\"field104\\\"}\"]',NULL,NULL,'1','2022-06-10 15:44:22','1','2022-06-10 15:44:22','\0',1),
(106,'Equip_Reimb:3:22581a8c-eafc-11ec-9162-a4bb6ddb930e','976f5028-e7c9-11ec-9162-a4bb6ddb930e','采购设备报销流程',10,17,'{\"formRef\":\"elForm\",\"formModel\":\"formData\",\"size\":\"medium\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true}','[\"{\\\"__config__\\\":{\\\"label\\\":\\\"开始日期\\\",\\\"tag\\\":\\\"el-date-picker\\\",\\\"tagIcon\\\":\\\"date\\\",\\\"defaultValue\\\":null,\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"span\\\":24,\\\"layout\\\":\\\"colFormItem\\\",\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/date-picker\\\",\\\"formId\\\":101,\\\"renderKey\\\":\\\"1011654844384941\\\"},\\\"placeholder\\\":\\\"请选择开始日期\\\",\\\"type\\\":\\\"date\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"disabled\\\":false,\\\"clearable\\\":true,\\\"format\\\":\\\"yyyy-MM-dd\\\",\\\"value-format\\\":\\\"yyyy-MM-dd\\\",\\\"readonly\\\":false,\\\"__vModel__\\\":\\\"field101\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"结束日期\\\",\\\"tag\\\":\\\"el-date-picker\\\",\\\"tagIcon\\\":\\\"date\\\",\\\"defaultValue\\\":null,\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"span\\\":24,\\\"layout\\\":\\\"colFormItem\\\",\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/date-picker\\\",\\\"formId\\\":102,\\\"renderKey\\\":\\\"1021654844403576\\\"},\\\"placeholder\\\":\\\"请选择结束日期\\\",\\\"type\\\":\\\"date\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"disabled\\\":false,\\\"clearable\\\":true,\\\"format\\\":\\\"yyyy-MM-dd\\\",\\\"value-format\\\":\\\"yyyy-MM-dd\\\",\\\"readonly\\\":false,\\\"__vModel__\\\":\\\"field102\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"下拉选择\\\",\\\"showLabel\\\":true,\\\"labelWidth\\\":null,\\\"tag\\\":\\\"el-select\\\",\\\"tagIcon\\\":\\\"select\\\",\\\"layout\\\":\\\"colFormItem\\\",\\\"span\\\":24,\\\"required\\\":true,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/select\\\",\\\"formId\\\":103,\\\"renderKey\\\":\\\"1031654844469680\\\"},\\\"__slot__\\\":{\\\"options\\\":[{\\\"label\\\":\\\"设备\\\",\\\"value\\\":1},{\\\"label\\\":\\\"物品\\\",\\\"value\\\":2}]},\\\"placeholder\\\":\\\"请选择下拉选择\\\",\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"clearable\\\":true,\\\"disabled\\\":false,\\\"filterable\\\":false,\\\"multiple\\\":false,\\\"__vModel__\\\":\\\"field103\\\"}\",\"{\\\"__config__\\\":{\\\"label\\\":\\\"项目描述\\\",\\\"labelWidth\\\":null,\\\"showLabel\\\":true,\\\"tag\\\":\\\"el-input\\\",\\\"tagIcon\\\":\\\"textarea\\\",\\\"required\\\":true,\\\"layout\\\":\\\"colFormItem\\\",\\\"span\\\":24,\\\"regList\\\":[],\\\"changeTag\\\":true,\\\"document\\\":\\\"https://element.eleme.cn/#/zh-CN/component/input\\\",\\\"formId\\\":104,\\\"renderKey\\\":\\\"1041654846455619\\\"},\\\"type\\\":\\\"textarea\\\",\\\"placeholder\\\":\\\"请输入项目描述\\\",\\\"autosize\\\":{\\\"minRows\\\":4,\\\"maxRows\\\":4},\\\"style\\\":{\\\"width\\\":\\\"100%\\\"},\\\"maxlength\\\":null,\\\"show-word-limit\\\":false,\\\"readonly\\\":false,\\\"disabled\\\":false,\\\"__vModel__\\\":\\\"field104\\\"}\"]',NULL,NULL,'1','2022-06-13 17:35:17','1','2022-06-13 17:35:17','\0',1),
(107,'oa_reim_purchase:1:cfcbb46b-0674-11ed-938d-a4bb6ddb930e','78bb8456-0662-11ed-938d-a4bb6ddb930e','发起报销后，先由团队（部门）负责人审批，然后由财务人员审批，审批完成后可以打印',20,NULL,NULL,NULL,'/purchase/create','/purchase/detail','120','2022-07-18 16:37:09','120','2022-08-09 21:02:19','\0',135),
(108,'oa_leave:1:7bd1bbd8-098b-11ed-b367-a4bb6ddb930e','acf57d50-0749-11ed-b630-a4bb6ddb930e',NULL,20,NULL,NULL,NULL,'/bpm/oa/leave/create','/bpm/oa/leave/detail','120','2022-07-22 14:57:00','120','2022-07-22 14:57:00','\0',135),
(109,'oa_leave:2:b1d8b016-0a51-11ed-9c19-a4bb6ddb930e','acf57d50-0749-11ed-b630-a4bb6ddb930e',NULL,20,NULL,NULL,NULL,'/bpm/oa/leave/create','/bpm/oa/leave/detail','120','2022-07-23 14:35:51','120','2022-07-23 14:35:51','\0',135),
(110,'oa_reim_purchase:2:20d9c0dc-17e3-11ed-9468-a4bb6ddb930e','78bb8456-0662-11ed-938d-a4bb6ddb930e','发起报销后，先由团队（部门）负责人审批，然后由财务人员审批，审批完成后可以打印',20,NULL,NULL,NULL,'/purchase/create','/purchase/detail','120','2022-08-09 20:59:39','120','2022-08-09 20:59:39','\0',135),
(111,'oa_reim_purchase:3:a5dad24f-19f0-11ed-9a3e-a4bb6ddb930e','78bb8456-0662-11ed-938d-a4bb6ddb930e','发起报销后，先由团队（部门）负责人审批，然后由财务人员审批，审批完成后可以打印',20,NULL,NULL,NULL,'/purchase/create','/purchase/detail','120','2022-08-12 11:41:28','120','2022-08-12 11:41:28','\0',135),
(112,'oa_reim_purchase:4:3957121d-1a1b-11ed-a1c9-a4bb6ddb930e','78bb8456-0662-11ed-938d-a4bb6ddb930e','发起报销后，先由团队（部门）负责人审批，然后由财务人员审批，审批完成后可以打印',20,NULL,NULL,NULL,'/purchase/create','/purchase/detail','120','2022-08-12 16:46:15','120','2022-08-12 16:46:15','\0',135);

/*Table structure for table `bpm_process_instance_ext` */

DROP TABLE IF EXISTS `bpm_process_instance_ext`;

CREATE TABLE `bpm_process_instance_ext` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `start_user_id` bigint(20) NOT NULL COMMENT '发起流程的用户编号',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '流程实例的名字',
  `process_instance_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流程实例的编号',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流程定义的编号',
  `category` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '流程分类',
  `status` tinyint(4) NOT NULL COMMENT '流程实例的状态',
  `result` tinyint(4) NOT NULL COMMENT '流程实例的结果',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `form_variables` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表单值',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='工作流的流程实例的拓展';

/*Data for the table `bpm_process_instance_ext` */

/*Table structure for table `bpm_reim_print_batch` */

DROP TABLE IF EXISTS `bpm_reim_print_batch`;

CREATE TABLE `bpm_reim_print_batch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报销打印批次表主键',
  `amount` double NOT NULL COMMENT '总金额',
  `staff_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '报销员工姓名',
  `reim_type` int(11) NOT NULL COMMENT '报销类型（1：采购）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新者',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL COMMENT '租户编号',
  `dept_id` bigint(20) NOT NULL COMMENT '部门编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='报销批量打印表';

/*Data for the table `bpm_reim_print_batch` */

/*Table structure for table `bpm_reim_print_batch_relate_id` */

DROP TABLE IF EXISTS `bpm_reim_print_batch_relate_id`;

CREATE TABLE `bpm_reim_print_batch_relate_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报销批量打印关联表主键',
  `batch_id` bigint(20) NOT NULL COMMENT '报销批量打印表编号',
  `relate_id` bigint(20) NOT NULL COMMENT '关联报销记录编号',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建者',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL COMMENT '租户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='报销批次打印关联报销记录表';

/*Data for the table `bpm_reim_print_batch_relate_id` */

/*Table structure for table `bpm_reim_purchase` */

DROP TABLE IF EXISTS `bpm_reim_purchase`;

CREATE TABLE `bpm_reim_purchase` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物报销表单主键',
  `paper_receipt` bit(1) NOT NULL COMMENT '是否有纸质收据',
  `pay_date` datetime NOT NULL COMMENT '付款日期',
  `exchange_rate` double NOT NULL COMMENT '兑港币汇率',
  `total_price` double NOT NULL COMMENT '总价',
  `total_unit` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款金额单位(1rmb,2hkd,3usd)',
  `total_hkd` double NOT NULL COMMENT '总价（港币）',
  `usage` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用途',
  `pur_by` tinyint(4) NOT NULL COMMENT '购买途径（1线上，2线下）',
  `remark` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `order_img` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单截图',
  `pay_img` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '付款截图',
  `objs_img` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物品照片',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建者',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除（0否，1是）',
  `reim_person_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '报销申请人员名称',
  `result` tinyint(4) NOT NULL COMMENT '结果',
  `tenant_id` bigint(20) NOT NULL COMMENT '租户编号',
  `purchase_objs` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '采购项目',
  `user_id` bigint(20) NOT NULL COMMENT '申请人用户编号',
  `process_instance_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '流程实例编号',
  `dept_id` bigint(20) NOT NULL COMMENT '部门编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='购物报销表';

/*Data for the table `bpm_reim_purchase` */

/*Table structure for table `bpm_task_assign_rule` */

DROP TABLE IF EXISTS `bpm_task_assign_rule`;

CREATE TABLE `bpm_task_assign_rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `model_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流程模型的编号',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流程定义的编号',
  `task_definition_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流程任务定义的 key',
  `type` tinyint(4) NOT NULL COMMENT '规则类型',
  `options` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则值，JSON 数组',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bpm 任务规则表';

/*Data for the table `bpm_task_assign_rule` */

insert  into `bpm_task_assign_rule`(`id`,`model_id`,`process_definition_id`,`task_definition_key`,`type`,`options`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(201,'976f5028-e7c9-11ec-9162-a4bb6ddb930e','DEFAULT','Activity_10fwykr',30,'[112,1,103,104]','1','2022-06-10 15:40:17','1','2022-06-13 17:35:07','\0',1),
(202,'976f5028-e7c9-11ec-9162-a4bb6ddb930e','Equip_Reimb:1:e68c6d6d-e890-11ec-9162-a4bb6ddb930e','Activity_10fwykr',22,'[2]','1','2022-06-10 15:42:38','1','2022-06-10 15:42:38','\0',1),
(203,'976f5028-e7c9-11ec-9162-a4bb6ddb930e','Equip_Reimb:2:24141360-e891-11ec-9162-a4bb6ddb930e','Activity_10fwykr',22,'[1]','1','2022-06-10 15:44:22','1','2022-06-10 15:44:22','\0',1),
(204,'976f5028-e7c9-11ec-9162-a4bb6ddb930e','Equip_Reimb:3:22581a8c-eafc-11ec-9162-a4bb6ddb930e','Activity_10fwykr',30,'[112,1,103,104]','1','2022-06-13 17:35:17','1','2022-06-13 17:35:17','\0',1),
(205,'78bb8456-0662-11ed-938d-a4bb6ddb930e','DEFAULT','Activity_1h995fv',50,'[20]','120','2022-07-18 16:36:42','120','2022-07-18 16:36:42','\0',135),
(206,'78bb8456-0662-11ed-938d-a4bb6ddb930e','DEFAULT','Activity_1cni7ap',20,'[113]','120','2022-07-18 16:36:53','120','2022-07-18 16:36:53','\0',135),
(207,'78bb8456-0662-11ed-938d-a4bb6ddb930e','oa_reim_purchase:1:cfcbb46b-0674-11ed-938d-a4bb6ddb930e','Activity_1h995fv',50,'[20]','120','2022-07-18 16:37:09','120','2022-07-18 16:37:09','\0',135),
(208,'78bb8456-0662-11ed-938d-a4bb6ddb930e','oa_reim_purchase:1:cfcbb46b-0674-11ed-938d-a4bb6ddb930e','Activity_1cni7ap',20,'[113]','120','2022-07-18 16:37:09','120','2022-07-18 16:37:09','\0',135),
(209,'acf57d50-0749-11ed-b630-a4bb6ddb930e','','Activity_1s8c9nf',50,'[10]','120','2022-07-22 14:53:43','120','2022-07-22 14:53:43','\0',135),
(210,'acf57d50-0749-11ed-b630-a4bb6ddb930e','','Activity_1wfo01j',50,'[20]','120','2022-07-22 14:53:50','120','2022-07-22 14:53:50','\0',135),
(211,'acf57d50-0749-11ed-b630-a4bb6ddb930e','','Activity_0sqnbct',10,'[128]','120','2022-07-22 14:53:58','120','2022-07-22 14:53:58','\0',135),
(212,'acf57d50-0749-11ed-b630-a4bb6ddb930e','oa_leave:1:7bd1bbd8-098b-11ed-b367-a4bb6ddb930e','Activity_1s8c9nf',50,'[10]','120','2022-07-22 14:57:00','120','2022-07-22 14:57:00','\0',135),
(213,'acf57d50-0749-11ed-b630-a4bb6ddb930e','oa_leave:1:7bd1bbd8-098b-11ed-b367-a4bb6ddb930e','Activity_1wfo01j',50,'[20]','120','2022-07-22 14:57:00','120','2022-07-22 14:57:00','\0',135),
(214,'acf57d50-0749-11ed-b630-a4bb6ddb930e','oa_leave:1:7bd1bbd8-098b-11ed-b367-a4bb6ddb930e','Activity_0sqnbct',10,'[128]','120','2022-07-22 14:57:00','120','2022-07-22 14:57:00','\0',135),
(215,'acf57d50-0749-11ed-b630-a4bb6ddb930e','','task-01',50,'[20]','1','2022-07-23 14:28:19','1','2022-07-23 14:28:19','\0',1),
(216,'acf57d50-0749-11ed-b630-a4bb6ddb930e','','task-21',50,'[10]','1','2022-07-23 14:29:24','1','2022-07-23 14:29:24','\0',1),
(217,'acf57d50-0749-11ed-b630-a4bb6ddb930e','','task-01',50,'[20]','120','2022-07-23 14:33:09','120','2022-07-23 14:33:09','\0',135),
(218,'acf57d50-0749-11ed-b630-a4bb6ddb930e','','task-21',20,'[113]','120','2022-07-23 14:33:17','120','2022-07-23 14:33:17','\0',135),
(219,'acf57d50-0749-11ed-b630-a4bb6ddb930e','oa_leave:2:b1d8b016-0a51-11ed-9c19-a4bb6ddb930e','task-01',50,'[20]','120','2022-07-23 14:35:51','120','2022-07-23 14:35:51','\0',135),
(220,'acf57d50-0749-11ed-b630-a4bb6ddb930e','oa_leave:2:b1d8b016-0a51-11ed-9c19-a4bb6ddb930e','task-21',20,'[113]','120','2022-07-23 14:35:51','120','2022-07-23 14:35:51','\0',135),
(221,'78bb8456-0662-11ed-938d-a4bb6ddb930e','','Activity_1h995fv',50,'[20]','120','2022-08-09 20:59:17','120','2022-08-12 16:45:50','\0',135),
(222,'78bb8456-0662-11ed-938d-a4bb6ddb930e','','Activity_1cni7ap',20,'[113]','120','2022-08-09 20:59:32','120','2022-08-12 16:45:52','\0',135),
(223,'78bb8456-0662-11ed-938d-a4bb6ddb930e','oa_reim_purchase:2:20d9c0dc-17e3-11ed-9468-a4bb6ddb930e','Activity_1h995fv',50,'[20]','120','2022-08-09 20:59:40','120','2022-08-09 20:59:40','\0',135),
(224,'78bb8456-0662-11ed-938d-a4bb6ddb930e','oa_reim_purchase:2:20d9c0dc-17e3-11ed-9468-a4bb6ddb930e','Activity_1cni7ap',20,'[113]','120','2022-08-09 20:59:40','120','2022-08-09 20:59:40','\0',135),
(225,'78bb8456-0662-11ed-938d-a4bb6ddb930e','','Activity_0fjnoy5',50,'[10]','120','2022-08-12 11:41:20','120','2022-08-12 11:41:20','\0',135),
(226,'78bb8456-0662-11ed-938d-a4bb6ddb930e','oa_reim_purchase:3:a5dad24f-19f0-11ed-9a3e-a4bb6ddb930e','Activity_1h995fv',50,'[20]','120','2022-08-12 11:41:28','120','2022-08-12 11:41:28','\0',135),
(227,'78bb8456-0662-11ed-938d-a4bb6ddb930e','oa_reim_purchase:3:a5dad24f-19f0-11ed-9a3e-a4bb6ddb930e','Activity_1cni7ap',20,'[113]','120','2022-08-12 11:41:28','120','2022-08-12 11:41:28','\0',135),
(228,'78bb8456-0662-11ed-938d-a4bb6ddb930e','oa_reim_purchase:3:a5dad24f-19f0-11ed-9a3e-a4bb6ddb930e','Activity_0fjnoy5',50,'[10]','120','2022-08-12 11:41:28','120','2022-08-12 11:41:28','\0',135),
(229,'78bb8456-0662-11ed-938d-a4bb6ddb930e','oa_reim_purchase:4:3957121d-1a1b-11ed-a1c9-a4bb6ddb930e','Activity_1h995fv',50,'[20]','120','2022-08-12 16:46:15','120','2022-08-12 16:46:15','\0',135),
(230,'78bb8456-0662-11ed-938d-a4bb6ddb930e','oa_reim_purchase:4:3957121d-1a1b-11ed-a1c9-a4bb6ddb930e','Activity_1cni7ap',20,'[113]','120','2022-08-12 16:46:15','120','2022-08-12 16:46:15','\0',135);

/*Table structure for table `bpm_task_ext` */

DROP TABLE IF EXISTS `bpm_task_ext`;

CREATE TABLE `bpm_task_ext` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `assignee_user_id` bigint(20) DEFAULT NULL COMMENT '任务的审批人',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务的名字',
  `task_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务的编号',
  `result` tinyint(4) NOT NULL COMMENT '任务的结果',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审批建议',
  `end_time` datetime DEFAULT NULL COMMENT '任务的结束时间',
  `process_instance_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流程实例的编号',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '流程定义的编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='工作流的流程任务的拓展表';

/*Data for the table `bpm_task_ext` */

/*Table structure for table `bpm_user_group` */

DROP TABLE IF EXISTS `bpm_user_group`;

CREATE TABLE `bpm_user_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '组名',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `member_user_ids` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '成员编号数组',
  `status` tinyint(4) NOT NULL COMMENT '状态（0正常 1停用）',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组';

/*Data for the table `bpm_user_group` */

/*Table structure for table `infra_api_access_log` */

DROP TABLE IF EXISTS `infra_api_access_log`;

CREATE TABLE `infra_api_access_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `trace_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链路追踪编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型',
  `application_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名',
  `request_method` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求方法名',
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求地址',
  `request_params` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求参数',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户 IP',
  `user_agent` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浏览器 UA',
  `begin_time` datetime NOT NULL COMMENT '开始请求时间',
  `end_time` datetime NOT NULL COMMENT '结束请求时间',
  `duration` int(11) NOT NULL COMMENT '执行时长',
  `result_code` int(11) NOT NULL DEFAULT '0' COMMENT '结果码',
  `result_msg` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '结果提示',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='API 访问日志表';

/*Data for the table `infra_api_access_log` */

/*Table structure for table `infra_api_error_log` */

DROP TABLE IF EXISTS `infra_api_error_log`;

CREATE TABLE `infra_api_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `trace_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链路追踪编号\n     *\n     * 一般来说，通过链路追踪编号，可以将访问日志，错误日志，链路追踪日志，logger 打印日志等，结合在一起，从而进行排错。',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型',
  `application_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名\n     *\n     * 目前读取 spring.application.name',
  `request_method` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求方法名',
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求地址',
  `request_params` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求参数',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户 IP',
  `user_agent` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浏览器 UA',
  `exception_time` datetime NOT NULL COMMENT '异常发生时间',
  `exception_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '异常名\n     *\n     * {@link Throwable#getClass()} 的类全名',
  `exception_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常导致的消息\n     *\n     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getMessage(Throwable)}',
  `exception_root_cause_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常导致的根消息\n     *\n     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getRootCauseMessage(Throwable)}',
  `exception_stack_trace` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常的栈轨迹\n     *\n     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getServiceException(Exception)}',
  `exception_class_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常发生的类全名\n     *\n     * {@link StackTraceElement#getClassName()}',
  `exception_file_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常发生的类文件\n     *\n     * {@link StackTraceElement#getFileName()}',
  `exception_method_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常发生的方法名\n     *\n     * {@link StackTraceElement#getMethodName()}',
  `exception_line_number` int(11) NOT NULL COMMENT '异常发生的方法所在行\n     *\n     * {@link StackTraceElement#getLineNumber()}',
  `process_status` tinyint(4) NOT NULL COMMENT '处理状态',
  `process_time` datetime DEFAULT NULL COMMENT '处理时间',
  `process_user_id` int(11) DEFAULT '0' COMMENT '处理用户编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统异常日志';

/*Data for the table `infra_api_error_log` */

/*Table structure for table `infra_codegen_column` */

DROP TABLE IF EXISTS `infra_codegen_column`;

CREATE TABLE `infra_codegen_column` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NOT NULL COMMENT '表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段名',
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段类型',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段描述',
  `nullable` bit(1) NOT NULL COMMENT '是否允许为空',
  `primary_key` bit(1) NOT NULL COMMENT '是否主键',
  `auto_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '是否自增',
  `ordinal_position` int(11) NOT NULL COMMENT '排序',
  `java_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Java 属性类型',
  `java_field` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Java 属性名',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典类型',
  `example` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数据示例',
  `create_operation` bit(1) NOT NULL COMMENT '是否为 Create 创建操作的字段',
  `update_operation` bit(1) NOT NULL COMMENT '是否为 Update 更新操作的字段',
  `list_operation` bit(1) NOT NULL COMMENT '是否为 List 查询操作的字段',
  `list_operation_condition` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '=' COMMENT 'List 查询操作的条件类型',
  `list_operation_result` bit(1) NOT NULL COMMENT '是否为 List 查询操作的返回字段',
  `html_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '显示类型',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代码生成表字段定义';

/*Data for the table `infra_codegen_column` */

/*Table structure for table `infra_codegen_table` */

DROP TABLE IF EXISTS `infra_codegen_table`;

CREATE TABLE `infra_codegen_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `data_source_config_id` bigint(20) NOT NULL COMMENT '数据源配置的编号',
  `scene` tinyint(4) NOT NULL DEFAULT '1' COMMENT '生成场景',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '表描述',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '业务名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类名称',
  `class_comment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类描述',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `template_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '模板类型',
  `parent_menu_id` bigint(20) DEFAULT NULL COMMENT '父菜单编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代码生成表定义';

/*Data for the table `infra_codegen_table` */

/*Table structure for table `infra_config` */

DROP TABLE IF EXISTS `infra_config`;

CREATE TABLE `infra_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数分组',
  `type` tinyint(4) NOT NULL COMMENT '参数类型',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数键名',
  `value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数键值',
  `visible` bit(1) NOT NULL COMMENT '是否可见',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='参数配置表';

/*Data for the table `infra_config` */

insert  into `infra_config`(`id`,`category`,`type`,`name`,`config_key`,`value`,`visible`,`remark`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(1,'ui',1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','\0','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow','admin','2021-01-05 17:03:48','1','2022-03-26 23:10:31','\0'),
(2,'biz',1,'用户管理-账号初始密码','sys.user.init-password','123456','\0','初始化密码 123456','admin','2021-01-05 17:03:48','1','2022-03-20 02:25:51','\0'),
(3,'ui',1,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','\0','深色主题theme-dark，浅色主题theme-light','admin','2021-01-05 17:03:48','','2021-01-19 03:05:21','\0'),
(4,'1',2,'xxx','demo.test','10','\0','5','','2021-01-19 03:10:26','','2021-01-20 09:25:55','\0'),
(5,'xxx',2,'xxx','xxx','xxx','','xxx','','2021-02-09 20:06:47','','2021-02-09 20:06:47','\0'),
(6,'biz',2,'登陆验证码的开关','yudao.captcha.enable','false','',NULL,'1','2022-02-17 00:03:11','1','2022-06-24 21:14:07','\0'),
(8,'biz',2,'报销单收件人','crc.recipient.name','张宇山','\0',NULL,'120','2022-08-11 18:00:10','120','2022-08-11 18:17:15','\0'),
(9,'biz',2,'收件人联系电话','crc.recipient.phone','54392642','\0',NULL,'120','2022-08-11 18:01:10','120','2022-08-11 18:17:19','\0');

/*Table structure for table `infra_data_source_config` */

DROP TABLE IF EXISTS `infra_data_source_config`;

CREATE TABLE `infra_data_source_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数名称',
  `url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '数据源连接',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='数据源配置表';

/*Data for the table `infra_data_source_config` */

/*Table structure for table `infra_file` */

DROP TABLE IF EXISTS `infra_file`;

CREATE TABLE `infra_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件编号',
  `config_id` bigint(20) DEFAULT NULL COMMENT '配置编号',
  `path` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件路径',
  `url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件 URL',
  `type` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件类型',
  `size` int(11) NOT NULL COMMENT '文件大小',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文件表';

/*Data for the table `infra_file` */

/*Table structure for table `infra_file_config` */

DROP TABLE IF EXISTS `infra_file_config`;

CREATE TABLE `infra_file_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置名',
  `storage` tinyint(4) NOT NULL COMMENT '存储器',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `master` bit(1) NOT NULL COMMENT '是否为主配置',
  `config` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '存储配置',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文件配置表';

/*Data for the table `infra_file_config` */

insert  into `infra_file_config`(`id`,`name`,`storage`,`remark`,`master`,`config`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(4,'数据库',1,'我是数据库','\0','{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.db.DBFileClientConfig\",\"domain\":\"http://127.0.0.1:48080\"}','1','2022-03-15 23:56:24','1','2022-07-17 17:33:18','\0'),
(5,'本地磁盘',10,'测试下本地存储','\0','{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.local.LocalFileClientConfig\",\"basePath\":\"/Users/yunai/file_test\",\"domain\":\"http://127.0.0.1:48080\"}','1','2022-03-15 23:57:00','1','2022-07-17 17:33:18','\0'),
(11,'S3 - 七牛云',20,NULL,'\0','{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"s3-cn-south-1.qiniucs.com\",\"domain\":\"http://test.yudao.iocoder.cn\",\"bucket\":\"ruoyi-vue-pro\",\"accessKey\":\"b7yvuhBSAGjmtPhMFcn9iMOxUOY_I06cA_p0ZUx8\",\"accessSecret\":\"kXM1l5ia1RvSX3QaOEcwI3RLz3Y2rmNszWonKZtP\"}','1','2022-03-19 18:00:03','1','2022-07-17 17:33:18','\0'),
(15,'MINIO-local',20,'本地MINIO服务器','','{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"http://192.168.179.128:9000\",\"domain\":\"\",\"bucket\":\"crc-reim-sys\",\"accessKey\":\"admin\",\"accessSecret\":\"hkcrc@123\"}','1','2022-07-17 17:20:27','1','2022-07-17 17:33:18','\0');

/*Table structure for table `infra_file_content` */

DROP TABLE IF EXISTS `infra_file_content`;

CREATE TABLE `infra_file_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `config_id` bigint(20) NOT NULL COMMENT '配置编号',
  `path` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件路径',
  `content` mediumblob NOT NULL COMMENT '文件内容',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文件表';

/*Data for the table `infra_file_content` */

/*Table structure for table `infra_job` */

DROP TABLE IF EXISTS `infra_job`;

CREATE TABLE `infra_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务编号',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务名称',
  `status` tinyint(4) NOT NULL COMMENT '任务状态',
  `handler_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理器的名字',
  `handler_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理器的参数',
  `cron_expression` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CRON 表达式',
  `retry_count` int(11) NOT NULL DEFAULT '0' COMMENT '重试次数',
  `retry_interval` int(11) NOT NULL DEFAULT '0' COMMENT '重试间隔',
  `monitor_timeout` int(11) NOT NULL DEFAULT '0' COMMENT '监控超时时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='定时任务表';

/*Data for the table `infra_job` */

insert  into `infra_job`(`id`,`name`,`status`,`handler_name`,`handler_param`,`cron_expression`,`retry_count`,`retry_interval`,`monitor_timeout`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(5,'支付通知 Job',2,'payNotifyJob',NULL,'* * * * * ?',0,0,0,'1','2021-10-27 08:34:42','1','2022-04-03 20:35:25','\0');

/*Table structure for table `infra_job_log` */

DROP TABLE IF EXISTS `infra_job_log`;

CREATE TABLE `infra_job_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `job_id` bigint(20) NOT NULL COMMENT '任务编号',
  `handler_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理器的名字',
  `handler_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理器的参数',
  `execute_index` tinyint(4) NOT NULL DEFAULT '1' COMMENT '第几次执行',
  `begin_time` datetime NOT NULL COMMENT '开始执行时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束执行时间',
  `duration` int(11) DEFAULT NULL COMMENT '执行时长',
  `status` tinyint(4) NOT NULL COMMENT '任务状态',
  `result` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '结果数据',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='定时任务日志表';

/*Data for the table `infra_job_log` */

/*Table structure for table `infra_test_demo` */

DROP TABLE IF EXISTS `infra_test_demo`;

CREATE TABLE `infra_test_demo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `category` tinyint(4) NOT NULL COMMENT '分类',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典类型表';

/*Data for the table `infra_test_demo` */

/*Table structure for table `member_user` */

DROP TABLE IF EXISTS `member_user`;

CREATE TABLE `member_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `register_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '注册 IP',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_mobile` (`mobile`) USING BTREE COMMENT '手机号'
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户';

/*Data for the table `member_user` */

/*Table structure for table `pay_app` */

DROP TABLE IF EXISTS `pay_app`;

CREATE TABLE `pay_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '应用编号',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名',
  `status` tinyint(4) NOT NULL COMMENT '开启状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `pay_notify_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付结果的回调地址',
  `refund_notify_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '退款结果的回调地址',
  `merchant_id` bigint(20) NOT NULL COMMENT '商户编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='支付应用信息';

/*Data for the table `pay_app` */

/*Table structure for table `pay_channel` */

DROP TABLE IF EXISTS `pay_channel`;

CREATE TABLE `pay_channel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商户编号',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道编码',
  `status` tinyint(4) NOT NULL COMMENT '开启状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `fee_rate` double NOT NULL DEFAULT '0' COMMENT '渠道费率，单位：百分比',
  `merchant_id` bigint(20) NOT NULL COMMENT '商户编号',
  `app_id` bigint(20) NOT NULL COMMENT '应用编号',
  `config` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付渠道配置',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='支付渠道\n';

/*Data for the table `pay_channel` */

/*Table structure for table `pay_merchant` */

DROP TABLE IF EXISTS `pay_merchant`;

CREATE TABLE `pay_merchant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商户编号',
  `no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户号',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户全称',
  `short_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户简称',
  `status` tinyint(4) NOT NULL COMMENT '开启状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='支付商户信息';

/*Data for the table `pay_merchant` */

/*Table structure for table `pay_notify_log` */

DROP TABLE IF EXISTS `pay_notify_log`;

CREATE TABLE `pay_notify_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `task_id` bigint(20) NOT NULL COMMENT '通知任务编号',
  `notify_times` tinyint(4) NOT NULL COMMENT '第几次被通知',
  `response` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求参数',
  `status` tinyint(4) NOT NULL COMMENT '通知状态',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=363051 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='支付通知 App 的日志';

/*Data for the table `pay_notify_log` */

/*Table structure for table `pay_notify_task` */

DROP TABLE IF EXISTS `pay_notify_task`;

CREATE TABLE `pay_notify_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务编号',
  `merchant_id` bigint(20) NOT NULL COMMENT '商户编号',
  `app_id` bigint(20) NOT NULL COMMENT '应用编号',
  `type` tinyint(4) NOT NULL COMMENT '通知类型',
  `data_id` bigint(20) NOT NULL COMMENT '数据编号',
  `status` tinyint(4) NOT NULL COMMENT '通知状态',
  `merchant_order_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户订单编号',
  `next_notify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下一次通知时间',
  `last_execute_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次执行时间',
  `notify_times` tinyint(4) NOT NULL COMMENT '当前通知次数',
  `max_notify_times` tinyint(4) NOT NULL COMMENT '最大可通知次数',
  `notify_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异步通知地址',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商户支付、退款等的通知\n';

/*Data for the table `pay_notify_task` */

/*Table structure for table `pay_order` */

DROP TABLE IF EXISTS `pay_order`;

CREATE TABLE `pay_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '支付订单编号',
  `merchant_id` bigint(20) NOT NULL COMMENT '商户编号',
  `app_id` bigint(20) NOT NULL COMMENT '应用编号',
  `channel_id` bigint(20) DEFAULT NULL COMMENT '渠道编号',
  `channel_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道编码',
  `merchant_order_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户订单编号',
  `subject` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品标题',
  `body` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品描述',
  `notify_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异步通知地址',
  `notify_status` tinyint(4) NOT NULL COMMENT '通知商户支付结果的回调状态',
  `amount` bigint(20) NOT NULL COMMENT '支付金额，单位：分',
  `channel_fee_rate` double DEFAULT '0' COMMENT '渠道手续费，单位：百分比',
  `channel_fee_amount` bigint(20) DEFAULT '0' COMMENT '渠道手续金额，单位：分',
  `status` tinyint(4) NOT NULL COMMENT '支付状态',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户 IP',
  `expire_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单失效时间',
  `success_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '订单支付成功时间',
  `notify_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '订单支付通知时间',
  `success_extension_id` bigint(20) DEFAULT NULL COMMENT '支付成功的订单拓展单编号',
  `refund_status` tinyint(4) NOT NULL COMMENT '退款状态',
  `refund_times` tinyint(4) NOT NULL COMMENT '退款次数',
  `refund_amount` bigint(20) NOT NULL COMMENT '退款总金额，单位：分',
  `channel_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道用户编号',
  `channel_order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道订单号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='支付订单\n';

/*Data for the table `pay_order` */

/*Table structure for table `pay_order_extension` */

DROP TABLE IF EXISTS `pay_order_extension`;

CREATE TABLE `pay_order_extension` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '支付订单编号',
  `no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付订单号',
  `order_id` bigint(20) NOT NULL COMMENT '支付订单编号',
  `channel_id` bigint(20) NOT NULL COMMENT '渠道编号',
  `channel_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道编码',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户 IP',
  `status` tinyint(4) NOT NULL COMMENT '支付状态',
  `channel_extras` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付渠道的额外参数',
  `channel_notify_data` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付渠道异步通知的内容',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='支付订单\n';

/*Data for the table `pay_order_extension` */

/*Table structure for table `pay_refund` */

DROP TABLE IF EXISTS `pay_refund`;

CREATE TABLE `pay_refund` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '支付退款编号',
  `merchant_id` bigint(20) NOT NULL COMMENT '商户编号',
  `app_id` bigint(20) NOT NULL COMMENT '应用编号',
  `channel_id` bigint(20) NOT NULL COMMENT '渠道编号',
  `channel_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道编码',
  `order_id` bigint(20) NOT NULL COMMENT '支付订单编号 pay_order 表id',
  `trade_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '交易订单号 pay_extension 表no 字段',
  `merchant_order_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户订单编号（商户系统生成）',
  `merchant_refund_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户退款订单号（商户系统生成）',
  `notify_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异步通知商户地址',
  `notify_status` tinyint(4) NOT NULL COMMENT '通知商户退款结果的回调状态',
  `status` tinyint(4) NOT NULL COMMENT '退款状态',
  `type` tinyint(4) NOT NULL COMMENT '退款类型(部分退款，全部退款)',
  `pay_amount` bigint(20) NOT NULL COMMENT '支付金额,单位分',
  `refund_amount` bigint(20) NOT NULL COMMENT '退款金额,单位分',
  `reason` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '退款原因',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户 IP',
  `channel_order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道订单号，pay_order 中的channel_order_no 对应',
  `channel_refund_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道退款单号，渠道返回',
  `channel_error_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道调用报错时，错误码',
  `channel_error_msg` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道调用报错时，错误信息',
  `channel_extras` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付渠道的额外参数',
  `expire_time` datetime DEFAULT NULL COMMENT '退款失效时间',
  `success_time` datetime DEFAULT NULL COMMENT '退款成功时间',
  `notify_time` datetime DEFAULT NULL COMMENT '退款通知时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='退款订单';

/*Data for the table `pay_refund` */

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_cron_triggers` */

insert  into `qrtz_cron_triggers`(`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`CRON_EXPRESSION`,`TIME_ZONE_ID`) values 
('schedulerName','payNotifyJob','DEFAULT','* * * * * ?','Asia/Shanghai');

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `SCHED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE,
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE,
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`) USING BTREE,
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`) USING BTREE,
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_job_details` */

insert  into `qrtz_job_details`(`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`,`DESCRIPTION`,`JOB_CLASS_NAME`,`IS_DURABLE`,`IS_NONCONCURRENT`,`IS_UPDATE_DATA`,`REQUESTS_RECOVERY`,`JOB_DATA`) values 
('schedulerName','payNotifyJob','DEFAULT',NULL,'cn.iocoder.yudao.framework.quartz.core.handler.JobHandlerInvoker','0','1','1','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0JOB_IDsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0JOB_HANDLER_NAMEt\0payNotifyJobx\0');

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_locks` */

insert  into `qrtz_locks`(`SCHED_NAME`,`LOCK_NAME`) values 
('schedulerName','STATE_ACCESS'),
('schedulerName','TRIGGER_ACCESS');

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_scheduler_state` */

insert  into `qrtz_scheduler_state`(`SCHED_NAME`,`INSTANCE_NAME`,`LAST_CHECKIN_TIME`,`CHECKIN_INTERVAL`) values 
('schedulerName','Yunai.local1635571630493',1635572537879,15000);

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MISFIRE_INSTR` smallint(6) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE,
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `qrtz_triggers` */

insert  into `qrtz_triggers`(`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`JOB_NAME`,`JOB_GROUP`,`DESCRIPTION`,`NEXT_FIRE_TIME`,`PREV_FIRE_TIME`,`PRIORITY`,`TRIGGER_STATE`,`TRIGGER_TYPE`,`START_TIME`,`END_TIME`,`CALENDAR_NAME`,`MISFIRE_INSTR`,`JOB_DATA`) values 
('schedulerName','payNotifyJob','DEFAULT','payNotifyJob','DEFAULT',NULL,1635572540000,1635572539000,5,'WAITING','CRON',1635294882000,0,NULL,0,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0JOB_HANDLER_PARAMpt\0JOB_RETRY_INTERVALsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0t\0JOB_RETRY_COUNTq\0~\0x\0');

/*Table structure for table `system_dept` */

DROP TABLE IF EXISTS `system_dept`;

CREATE TABLE `system_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '部门名称',
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父部门id',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `leader_user_id` bigint(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` tinyint(4) NOT NULL COMMENT '部门状态（0正常 1停用）',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门表';

/*Data for the table `system_dept` */

insert  into `system_dept`(`id`,`name`,`parent_id`,`sort`,`leader_user_id`,`phone`,`email`,`status`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(100,'芋道源码',0,0,1,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','103','2022-01-14 01:04:05','\0',1),
(101,'深圳总公司',100,1,104,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','1','2022-05-16 20:25:23','\0',1),
(102,'长沙分公司',100,2,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','','2021-12-15 05:01:40','\0',1),
(103,'研发部门',101,1,104,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','103','2022-01-14 01:04:14','\0',1),
(104,'市场部门',101,2,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','','2021-12-15 05:01:38','\0',1),
(105,'测试部门',101,3,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','1','2022-05-16 20:25:15','\0',1),
(106,'财务部门',101,4,103,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','103','2022-01-15 21:32:22','\0',1),
(107,'运维部门',101,5,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','','2021-12-15 05:01:33','\0',1),
(108,'市场部门',102,1,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','1','2022-02-16 08:35:45','\0',1),
(109,'财务部门',102,2,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','','2021-12-15 05:01:29','\0',1),
(110,'新部门',0,1,NULL,NULL,NULL,0,'110','2022-02-23 20:46:30','110','2022-02-23 20:46:30','\0',121),
(111,'顶级部门',0,1,NULL,NULL,NULL,0,'113','2022-03-07 21:44:50','113','2022-03-07 21:44:50','\0',122),
(112,'Test',0,0,NULL,NULL,NULL,0,'1','2022-06-13 11:35:57','1','2022-06-13 11:35:57','\0',1),
(113,'财务部',0,0,NULL,NULL,NULL,0,'120','2022-07-18 00:58:50','120','2022-07-18 00:58:50','\0',135),
(114,'R&D',0,1,NULL,NULL,NULL,1,'120','2022-07-18 00:59:06','120','2022-07-18 11:35:03','\0',135),
(115,'Leader',114,0,NULL,NULL,NULL,0,'120','2022-07-18 00:59:54','120','2022-07-18 01:01:41','',135),
(116,'无穹创新',0,1,121,NULL,NULL,0,'120','2022-07-18 11:35:27','120','2022-07-18 11:37:04','\0',135);

/*Table structure for table `system_dict_data` */

DROP TABLE IF EXISTS `system_dict_data`;

CREATE TABLE `system_dict_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '字典排序',
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典标签',
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `color_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '颜色类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'css 样式',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典数据表';

/*Data for the table `system_dict_data` */

insert  into `system_dict_data`(`id`,`sort`,`label`,`value`,`dict_type`,`status`,`color_type`,`css_class`,`remark`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(1,1,'男','1','system_user_sex',0,'default','A','性别男','admin','2021-01-05 17:03:48','1','2022-03-29 00:14:39','\0'),
(2,2,'女','2','system_user_sex',1,'success','','性别女','admin','2021-01-05 17:03:48','1','2022-02-16 01:30:51','\0'),
(8,1,'正常','1','infra_job_status',0,'success','','正常状态','admin','2021-01-05 17:03:48','1','2022-02-16 19:33:38','\0'),
(9,2,'暂停','2','infra_job_status',0,'danger','','停用状态','admin','2021-01-05 17:03:48','1','2022-02-16 19:33:45','\0'),
(12,1,'系统内置','1','infra_config_type',0,'danger','','参数类型 - 系统内置','admin','2021-01-05 17:03:48','1','2022-02-16 19:06:02','\0'),
(13,2,'自定义','2','infra_config_type',0,'primary','','参数类型 - 自定义','admin','2021-01-05 17:03:48','1','2022-02-16 19:06:07','\0'),
(14,1,'通知','1','system_notice_type',0,'success','','通知','admin','2021-01-05 17:03:48','1','2022-02-16 13:05:57','\0'),
(15,2,'公告','2','system_notice_type',0,'info','','公告','admin','2021-01-05 17:03:48','1','2022-02-16 13:06:01','\0'),
(16,0,'其它','0','system_operate_type',0,'default','','其它操作','admin','2021-01-05 17:03:48','1','2022-02-16 09:32:46','\0'),
(17,1,'查询','1','system_operate_type',0,'info','','查询操作','admin','2021-01-05 17:03:48','1','2022-02-16 09:33:16','\0'),
(18,2,'新增','2','system_operate_type',0,'primary','','新增操作','admin','2021-01-05 17:03:48','1','2022-02-16 09:33:13','\0'),
(19,3,'修改','3','system_operate_type',0,'warning','','修改操作','admin','2021-01-05 17:03:48','1','2022-02-16 09:33:22','\0'),
(20,4,'删除','4','system_operate_type',0,'danger','','删除操作','admin','2021-01-05 17:03:48','1','2022-02-16 09:33:27','\0'),
(22,5,'导出','5','system_operate_type',0,'default','','导出操作','admin','2021-01-05 17:03:48','1','2022-02-16 09:33:32','\0'),
(23,6,'导入','6','system_operate_type',0,'default','','导入操作','admin','2021-01-05 17:03:48','1','2022-02-16 09:33:35','\0'),
(27,1,'开启','0','common_status',0,'primary','','开启状态','admin','2021-01-05 17:03:48','1','2022-02-16 08:00:39','\0'),
(28,2,'关闭','1','common_status',0,'info','','关闭状态','admin','2021-01-05 17:03:48','1','2022-02-16 08:00:44','\0'),
(29,1,'目录','1','system_menu_type',0,'','','目录','admin','2021-01-05 17:03:48','','2022-02-01 16:43:45','\0'),
(30,2,'菜单','2','system_menu_type',0,'','','菜单','admin','2021-01-05 17:03:48','','2022-02-01 16:43:41','\0'),
(31,3,'按钮','3','system_menu_type',0,'','','按钮','admin','2021-01-05 17:03:48','','2022-02-01 16:43:39','\0'),
(32,1,'内置','1','system_role_type',0,'danger','','内置角色','admin','2021-01-05 17:03:48','1','2022-02-16 13:02:08','\0'),
(33,2,'自定义','2','system_role_type',0,'primary','','自定义角色','admin','2021-01-05 17:03:48','1','2022-02-16 13:02:12','\0'),
(34,1,'全部数据权限','1','system_data_scope',0,'','','全部数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:17','\0'),
(35,2,'指定部门数据权限','2','system_data_scope',0,'','','指定部门数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:18','\0'),
(36,3,'本部门数据权限','3','system_data_scope',0,'','','本部门数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:16','\0'),
(37,4,'本部门及以下数据权限','4','system_data_scope',0,'','','本部门及以下数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:21','\0'),
(38,5,'仅本人数据权限','5','system_data_scope',0,'','','仅本人数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:23','\0'),
(39,0,'成功','0','system_login_result',0,'success','','登陆结果 - 成功','','2021-01-18 06:17:36','1','2022-02-16 13:23:49','\0'),
(40,10,'账号或密码不正确','10','system_login_result',0,'primary','','登陆结果 - 账号或密码不正确','','2021-01-18 06:17:54','1','2022-02-16 13:24:27','\0'),
(41,20,'用户被禁用','20','system_login_result',0,'warning','','登陆结果 - 用户被禁用','','2021-01-18 06:17:54','1','2022-02-16 13:23:57','\0'),
(42,30,'验证码不存在','30','system_login_result',0,'info','','登陆结果 - 验证码不存在','','2021-01-18 06:17:54','1','2022-02-16 13:24:07','\0'),
(43,31,'验证码不正确','31','system_login_result',0,'info','','登陆结果 - 验证码不正确','','2021-01-18 06:17:54','1','2022-02-16 13:24:11','\0'),
(44,100,'未知异常','100','system_login_result',0,'danger','','登陆结果 - 未知异常','','2021-01-18 06:17:54','1','2022-02-16 13:24:23','\0'),
(45,1,'是','true','infra_boolean_string',0,'danger','','Boolean 是否类型 - 是','','2021-01-19 03:20:55','1','2022-03-15 23:01:45','\0'),
(46,1,'否','false','infra_boolean_string',0,'info','','Boolean 是否类型 - 否','','2021-01-19 03:20:55','1','2022-03-15 23:09:45','\0'),
(47,1,'永不超时','1','infra_redis_timeout_type',0,'primary','','Redis 未设置超时的情况','','2021-01-26 00:53:17','1','2022-02-16 19:03:35','\0'),
(48,1,'动态超时','2','infra_redis_timeout_type',0,'info','','程序里动态传入超时时间，无法固定','','2021-01-26 00:55:00','1','2022-02-16 19:03:41','\0'),
(49,3,'固定超时','3','infra_redis_timeout_type',0,'success','','Redis 设置了过期时间','','2021-01-26 00:55:26','1','2022-02-16 19:03:45','\0'),
(50,1,'单表（增删改查）','1','infra_codegen_template_type',0,'','',NULL,'','2021-02-05 07:09:06','','2022-03-10 16:33:15','\0'),
(51,2,'树表（增删改查）','2','infra_codegen_template_type',0,'','',NULL,'','2021-02-05 07:14:46','','2022-03-10 16:33:19','\0'),
(53,0,'初始化中','0','infra_job_status',0,'primary','',NULL,'','2021-02-07 07:46:49','1','2022-02-16 19:33:29','\0'),
(57,0,'运行中','0','infra_job_log_status',0,'primary','','RUNNING','','2021-02-08 10:04:24','1','2022-02-16 19:07:48','\0'),
(58,1,'成功','1','infra_job_log_status',0,'success','',NULL,'','2021-02-08 10:06:57','1','2022-02-16 19:07:52','\0'),
(59,2,'失败','2','infra_job_log_status',0,'warning','','失败','','2021-02-08 10:07:38','1','2022-02-16 19:07:56','\0'),
(60,1,'会员','1','user_type',0,'primary','',NULL,'','2021-02-26 00:16:27','1','2022-02-16 10:22:19','\0'),
(61,2,'管理员','2','user_type',0,'success','',NULL,'','2021-02-26 00:16:34','1','2022-02-16 10:22:22','\0'),
(62,0,'未处理','0','infra_api_error_log_process_status',0,'primary','',NULL,'','2021-02-26 07:07:19','1','2022-02-16 20:14:17','\0'),
(63,1,'已处理','1','infra_api_error_log_process_status',0,'success','',NULL,'','2021-02-26 07:07:26','1','2022-02-16 20:14:08','\0'),
(64,2,'已忽略','2','infra_api_error_log_process_status',0,'danger','',NULL,'','2021-02-26 07:07:34','1','2022-02-16 20:14:14','\0'),
(65,1,'云片','YUN_PIAN','system_sms_channel_code',0,'success','',NULL,'1','2021-04-05 01:05:14','1','2022-02-16 10:09:55','\0'),
(66,2,'阿里云','ALIYUN','system_sms_channel_code',0,'primary','',NULL,'1','2021-04-05 01:05:26','1','2022-02-16 10:09:52','\0'),
(67,1,'验证码','1','system_sms_template_type',0,'warning','',NULL,'1','2021-04-05 21:50:57','1','2022-02-16 12:48:30','\0'),
(68,2,'通知','2','system_sms_template_type',0,'primary','',NULL,'1','2021-04-05 21:51:08','1','2022-02-16 12:48:27','\0'),
(69,0,'营销','3','system_sms_template_type',0,'danger','',NULL,'1','2021-04-05 21:51:15','1','2022-02-16 12:48:22','\0'),
(70,0,'初始化','0','system_sms_send_status',0,'primary','',NULL,'1','2021-04-11 20:18:33','1','2022-02-16 10:26:07','\0'),
(71,1,'发送成功','10','system_sms_send_status',0,'success','',NULL,'1','2021-04-11 20:18:43','1','2022-02-16 10:25:56','\0'),
(72,2,'发送失败','20','system_sms_send_status',0,'danger','',NULL,'1','2021-04-11 20:18:49','1','2022-02-16 10:26:03','\0'),
(73,3,'不发送','30','system_sms_send_status',0,'info','',NULL,'1','2021-04-11 20:19:44','1','2022-02-16 10:26:10','\0'),
(74,0,'等待结果','0','system_sms_receive_status',0,'primary','',NULL,'1','2021-04-11 20:27:43','1','2022-02-16 10:28:24','\0'),
(75,1,'接收成功','10','system_sms_receive_status',0,'success','',NULL,'1','2021-04-11 20:29:25','1','2022-02-16 10:28:28','\0'),
(76,2,'接收失败','20','system_sms_receive_status',0,'danger','',NULL,'1','2021-04-11 20:29:31','1','2022-02-16 10:28:32','\0'),
(77,0,'调试(钉钉)','DEBUG_DING_TALK','system_sms_channel_code',0,'info','',NULL,'1','2021-04-13 00:20:37','1','2022-02-16 10:10:00','\0'),
(78,1,'自动生成','1','system_error_code_type',0,'warning','',NULL,'1','2021-04-21 00:06:48','1','2022-02-16 13:57:20','\0'),
(79,2,'手动编辑','2','system_error_code_type',0,'primary','',NULL,'1','2021-04-21 00:07:14','1','2022-02-16 13:57:24','\0'),
(80,100,'账号登录','100','system_login_type',0,'primary','','账号登录','1','2021-10-06 00:52:02','1','2022-02-16 13:11:34','\0'),
(81,101,'社交登录','101','system_login_type',0,'info','','社交登录','1','2021-10-06 00:52:17','1','2022-02-16 13:11:40','\0'),
(82,102,'Mock 登录','102','system_login_type',0,'danger','','Mock 登录','1','2021-10-06 00:52:32','1','2022-02-16 13:11:44','\0'),
(83,200,'主动登出','200','system_login_type',0,'primary','','主动登出','1','2021-10-06 00:52:58','1','2022-02-16 13:11:49','\0'),
(85,202,'强制登出','202','system_login_type',0,'danger','','强制退出','1','2021-10-06 00:53:41','1','2022-02-16 13:11:57','\0'),
(86,0,'病假','1','bpm_oa_leave_type',0,'primary','',NULL,'1','2021-09-21 22:35:28','1','2022-02-16 10:00:41','\0'),
(87,1,'事假','2','bpm_oa_leave_type',0,'info','',NULL,'1','2021-09-21 22:36:11','1','2022-02-16 10:00:49','\0'),
(88,2,'婚假','3','bpm_oa_leave_type',0,'warning','',NULL,'1','2021-09-21 22:36:38','1','2022-02-16 10:00:53','\0'),
(98,1,'v2','v2','pay_channel_wechat_version',0,'','','v2版本','1','2021-11-08 17:00:58','1','2021-11-08 17:00:58','\0'),
(99,2,'v3','v3','pay_channel_wechat_version',0,'','','v3版本','1','2021-11-08 17:01:07','1','2021-11-08 17:01:07','\0'),
(108,1,'RSA2','RSA2','pay_channel_alipay_sign_type',0,'','','RSA2','1','2021-11-18 15:39:29','1','2021-11-18 15:39:29','\0'),
(109,1,'公钥模式','1','pay_channel_alipay_mode',0,'','','公钥模式：privateKey + alipayPublicKey','1','2021-11-18 15:45:23','1','2021-11-18 15:45:23','\0'),
(110,2,'证书模式','2','pay_channel_alipay_mode',0,'','','证书模式：appCertContent + alipayPublicCertContent + rootCertContent','1','2021-11-18 15:45:40','1','2021-11-18 15:45:40','\0'),
(111,1,'线上','https://openapi.alipay.com/gateway.do','pay_channel_alipay_server_type',0,'','','网关地址 - 线上','1','2021-11-18 16:59:32','1','2021-11-21 17:37:29','\0'),
(112,2,'沙箱','https://openapi.alipaydev.com/gateway.do','pay_channel_alipay_server_type',0,'','','网关地址 - 沙箱','1','2021-11-18 16:59:48','1','2021-11-21 17:37:39','\0'),
(113,1,'微信 JSAPI 支付','wx_pub','pay_channel_code_type',0,'','','微信 JSAPI（公众号） 支付','1','2021-12-03 10:40:24','1','2021-12-04 16:41:00','\0'),
(114,2,'微信小程序支付','wx_lite','pay_channel_code_type',0,'','','微信小程序支付','1','2021-12-03 10:41:06','1','2021-12-03 10:41:06','\0'),
(115,3,'微信 App 支付','wx_app','pay_channel_code_type',0,'','','微信 App 支付','1','2021-12-03 10:41:20','1','2021-12-03 10:41:20','\0'),
(116,4,'支付宝 PC 网站支付','alipay_pc','pay_channel_code_type',0,'','','支付宝 PC 网站支付','1','2021-12-03 10:42:09','1','2021-12-03 10:42:09','\0'),
(117,5,'支付宝 Wap 网站支付','alipay_wap','pay_channel_code_type',0,'','','支付宝 Wap 网站支付','1','2021-12-03 10:42:26','1','2021-12-03 10:42:26','\0'),
(118,6,'支付宝App 支付','alipay_app','pay_channel_code_type',0,'','','支付宝App 支付','1','2021-12-03 10:42:55','1','2021-12-03 10:42:55','\0'),
(119,7,'支付宝扫码支付','alipay_qr','pay_channel_code_type',0,'','','支付宝扫码支付','1','2021-12-03 10:43:10','1','2021-12-03 10:43:10','\0'),
(120,1,'通知成功','10','pay_order_notify_status',0,'success','','通知成功','1','2021-12-03 11:02:41','1','2022-02-16 13:59:13','\0'),
(121,2,'通知失败','20','pay_order_notify_status',0,'danger','','通知失败','1','2021-12-03 11:02:59','1','2022-02-16 13:59:17','\0'),
(122,3,'未通知','0','pay_order_notify_status',0,'info','','未通知','1','2021-12-03 11:03:10','1','2022-02-16 13:59:23','\0'),
(123,1,'支付成功','10','pay_order_status',0,'success','','支付成功','1','2021-12-03 11:18:29','1','2022-02-16 15:24:25','\0'),
(124,2,'支付关闭','20','pay_order_status',0,'danger','','支付关闭','1','2021-12-03 11:18:42','1','2022-02-16 15:24:31','\0'),
(125,3,'未支付','0','pay_order_status',0,'info','','未支付','1','2021-12-03 11:18:18','1','2022-02-16 15:24:35','\0'),
(126,1,'未退款','0','pay_order_refund_status',0,'','','未退款','1','2021-12-03 11:30:35','1','2021-12-03 11:34:05','\0'),
(127,2,'部分退款','10','pay_order_refund_status',0,'','','部分退款','1','2021-12-03 11:30:44','1','2021-12-03 11:34:10','\0'),
(128,3,'全部退款','20','pay_order_refund_status',0,'','','全部退款','1','2021-12-03 11:30:52','1','2021-12-03 11:34:14','\0'),
(1117,1,'退款订单生成','0','pay_refund_order_status',0,'primary','','退款订单生成','1','2021-12-10 16:44:44','1','2022-02-16 14:05:24','\0'),
(1118,2,'退款成功','1','pay_refund_order_status',0,'success','','退款成功','1','2021-12-10 16:44:59','1','2022-02-16 14:05:28','\0'),
(1119,3,'退款失败','2','pay_refund_order_status',0,'danger','','退款失败','1','2021-12-10 16:45:10','1','2022-02-16 14:05:34','\0'),
(1124,8,'退款关闭','99','pay_refund_order_status',0,'info','','退款关闭','1','2021-12-10 16:46:26','1','2022-02-16 14:05:40','\0'),
(1125,0,'默认','1','bpm_model_category',0,'primary','','流程分类 - 默认','1','2022-01-02 08:41:11','1','2022-02-16 20:01:42','\0'),
(1126,0,'OA','2','bpm_model_category',0,'success','','流程分类 - OA','1','2022-01-02 08:41:22','1','2022-02-16 20:01:50','\0'),
(1127,0,'进行中','1','bpm_process_instance_status',0,'primary','','流程实例的状态 - 进行中','1','2022-01-07 23:47:22','1','2022-02-16 20:07:49','\0'),
(1128,2,'已完成','2','bpm_process_instance_status',0,'success','','流程实例的状态 - 已完成','1','2022-01-07 23:47:49','1','2022-02-16 20:07:54','\0'),
(1129,1,'处理中','1','bpm_process_instance_result',0,'primary','','流程实例的结果 - 处理中','1','2022-01-07 23:48:32','1','2022-02-16 09:53:26','\0'),
(1130,2,'通过','2','bpm_process_instance_result',0,'success','','流程实例的结果 - 通过','1','2022-01-07 23:48:45','1','2022-02-16 09:53:31','\0'),
(1131,3,'不通过','3','bpm_process_instance_result',0,'danger','','流程实例的结果 - 不通过','1','2022-01-07 23:48:55','1','2022-02-16 09:53:38','\0'),
(1132,4,'已取消','4','bpm_process_instance_result',1,'info','','流程实例的结果 - 撤销','1','2022-01-07 23:49:06','120','2022-08-13 13:45:46','\0'),
(1133,10,'流程表单','10','bpm_model_form_type',0,'','','流程的表单类型 - 流程表单','103','2022-01-11 23:51:30','103','2022-01-11 23:51:30','\0'),
(1134,20,'业务表单','20','bpm_model_form_type',0,'','','流程的表单类型 - 业务表单','103','2022-01-11 23:51:47','103','2022-01-11 23:51:47','\0'),
(1135,10,'角色','10','bpm_task_assign_rule_type',0,'info','','任务分配规则的类型 - 角色','103','2022-01-12 23:21:22','1','2022-02-16 20:06:14','\0'),
(1136,20,'部门的成员','20','bpm_task_assign_rule_type',0,'primary','','任务分配规则的类型 - 部门的成员','103','2022-01-12 23:21:47','1','2022-02-16 20:05:28','\0'),
(1137,21,'部门的负责人','21','bpm_task_assign_rule_type',0,'primary','','任务分配规则的类型 - 部门的负责人','103','2022-01-12 23:33:36','1','2022-02-16 20:05:31','\0'),
(1138,30,'用户','30','bpm_task_assign_rule_type',0,'info','','任务分配规则的类型 - 用户','103','2022-01-12 23:34:02','1','2022-02-16 20:05:50','\0'),
(1139,40,'用户组','40','bpm_task_assign_rule_type',0,'warning','','任务分配规则的类型 - 用户组','103','2022-01-12 23:34:21','1','2022-02-16 20:05:57','\0'),
(1140,50,'自定义脚本','50','bpm_task_assign_rule_type',0,'danger','','任务分配规则的类型 - 自定义脚本','103','2022-01-12 23:34:43','1','2022-02-16 20:06:01','\0'),
(1141,22,'岗位','22','bpm_task_assign_rule_type',0,'success','','任务分配规则的类型 - 岗位','103','2022-01-14 18:41:55','1','2022-02-16 20:05:39','\0'),
(1142,10,'流程发起人','10','bpm_task_assign_script',0,'','','任务分配自定义脚本 - 流程发起人','103','2022-01-15 00:10:57','103','2022-01-15 21:24:10','\0'),
(1143,20,'流程发起人的一级领导','20','bpm_task_assign_script',0,'','','任务分配自定义脚本 - 流程发起人的一级领导','103','2022-01-15 21:24:31','103','2022-01-15 21:24:31','\0'),
(1144,21,'流程发起人的二级领导','21','bpm_task_assign_script',0,'','','任务分配自定义脚本 - 流程发起人的二级领导','103','2022-01-15 21:24:46','103','2022-01-15 21:24:57','\0'),
(1145,1,'管理后台','1','infra_codegen_scene',0,'','','代码生成的场景枚举 - 管理后台','1','2022-02-02 13:15:06','1','2022-03-10 16:32:59','\0'),
(1146,2,'用户 APP','2','infra_codegen_scene',0,'','','代码生成的场景枚举 - 用户 APP','1','2022-02-02 13:15:19','1','2022-03-10 16:33:03','\0'),
(1147,0,'未退款','0','pay_refund_order_type',0,'info','','退款类型 - 未退款','1','2022-02-16 14:09:01','1','2022-02-16 14:09:01','\0'),
(1148,10,'部分退款','10','pay_refund_order_type',0,'success','','退款类型 - 部分退款','1','2022-02-16 14:09:25','1','2022-02-16 14:11:38','\0'),
(1149,20,'全部退款','20','pay_refund_order_type',0,'warning','','退款类型 - 全部退款','1','2022-02-16 14:11:33','1','2022-02-16 14:11:33','\0'),
(1150,1,'数据库','1','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:25:28','1','2022-03-15 00:25:28','\0'),
(1151,10,'本地磁盘','10','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:25:41','1','2022-03-15 00:25:56','\0'),
(1152,11,'FTP 服务器','11','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:26:06','1','2022-03-15 00:26:10','\0'),
(1153,12,'SFTP 服务器','12','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:26:22','1','2022-03-15 00:26:22','\0'),
(1154,20,'S3 对象存储','20','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:26:31','1','2022-03-15 00:26:45','\0'),
(1155,103,'短信登录','103','system_login_type',0,'default','',NULL,'1','2022-05-09 23:57:58','1','2022-05-09 23:58:09','\0'),
(1156,1,'password','password','system_oauth2_grant_type',0,'default','','密码模式','1','2022-05-12 00:22:05','1','2022-05-11 16:26:01','\0'),
(1157,2,'authorization_code','authorization_code','system_oauth2_grant_type',0,'primary','','授权码模式','1','2022-05-12 00:22:59','1','2022-05-11 16:26:02','\0'),
(1158,3,'implicit','implicit','system_oauth2_grant_type',0,'success','','简化模式','1','2022-05-12 00:23:40','1','2022-05-11 16:26:05','\0'),
(1159,4,'client_credentials','client_credentials','system_oauth2_grant_type',0,'default','','客户端模式','1','2022-05-12 00:23:51','1','2022-05-11 16:26:08','\0'),
(1160,5,'refresh_token','refresh_token','system_oauth2_grant_type',0,'info','','刷新模式','1','2022-05-12 00:24:02','1','2022-05-11 16:26:11','\0'),
(1162,0,'线上','1','reim_purchase_way_type',0,'primary','',NULL,'1','2022-07-15 17:24:55','1','2022-07-15 17:24:55','\0'),
(1163,1,'线下','2','reim_purchase_way_type',0,'success','',NULL,'1','2022-07-15 17:25:15','1','2022-07-15 17:25:15','\0'),
(1164,0,'人民币','1','reim_purchase_currency_type',0,'default','',NULL,'1','2022-07-15 18:08:51','1','2022-07-15 18:08:51','\0'),
(1165,1,'港元','2','reim_purchase_currency_type',0,'primary','',NULL,'1','2022-07-15 18:09:38','1','2022-07-15 18:09:38','\0'),
(1166,3,'美元','3','reim_purchase_currency_type',0,'success','',NULL,'1','2022-07-15 18:10:05','1','2022-07-15 18:10:05','\0'),
(1167,0,'未打印','0','reim_application_is_printed',0,'danger','',NULL,'1','2022-08-10 10:46:52','1','2022-08-10 10:47:25','\0'),
(1168,0,'已打印','1','reim_application_is_printed',0,'success','',NULL,'1','2022-08-10 10:47:21','1','2022-08-10 10:47:21','\0'),
(1169,0,'QQ邮箱','QQ_MAIL','email_type',0,'primary','',NULL,'120','2022-08-11 15:22:00','120','2022-08-11 15:22:00','\0'),
(1170,1,'Google邮箱','GMAIL','email_type',0,'info','',NULL,'120','2022-08-11 15:22:24','120','2022-08-11 15:23:09','\0'),
(1171,2,'163邮箱','MAIL_163','email_type',0,'danger','',NULL,'120','2022-08-11 15:22:56','120','2022-08-11 15:22:56','\0'),
(1172,0,'通知','2','email_msg_type',0,'primary','',NULL,'120','2022-08-11 16:09:50','120','2022-08-11 16:09:50','\0');

/*Table structure for table `system_dict_type` */

DROP TABLE IF EXISTS `system_dict_type`;

CREATE TABLE `system_dict_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典名称',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `dict_type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典类型表';

/*Data for the table `system_dict_type` */

insert  into `system_dict_type`(`id`,`name`,`type`,`status`,`remark`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(1,'用户性别','system_user_sex',0,NULL,'admin','2021-01-05 17:03:48','1','2022-05-16 20:29:32','\0'),
(6,'参数类型','infra_config_type',0,NULL,'admin','2021-01-05 17:03:48','','2022-02-01 16:36:54','\0'),
(7,'通知类型','system_notice_type',0,NULL,'admin','2021-01-05 17:03:48','','2022-02-01 16:35:26','\0'),
(9,'操作类型','system_operate_type',0,NULL,'admin','2021-01-05 17:03:48','1','2022-02-16 09:32:21','\0'),
(10,'系统状态','common_status',0,NULL,'admin','2021-01-05 17:03:48','','2022-02-01 16:21:28','\0'),
(11,'Boolean 是否类型','infra_boolean_string',0,'boolean 转是否','','2021-01-19 03:20:08','','2022-02-01 16:37:10','\0'),
(104,'登陆结果','system_login_result',0,'登陆结果','','2021-01-18 06:17:11','','2022-02-01 16:36:00','\0'),
(105,'Redis 超时类型','infra_redis_timeout_type',0,'RedisKeyDefine.TimeoutTypeEnum','','2021-01-26 00:52:50','','2022-02-01 16:50:29','\0'),
(106,'代码生成模板类型','infra_codegen_template_type',0,NULL,'','2021-02-05 07:08:06','1','2022-05-16 20:26:50','\0'),
(107,'定时任务状态','infra_job_status',0,NULL,'','2021-02-07 07:44:16','','2022-02-01 16:51:11','\0'),
(108,'定时任务日志状态','infra_job_log_status',0,NULL,'','2021-02-08 10:03:51','','2022-02-01 16:50:43','\0'),
(109,'用户类型','user_type',0,NULL,'','2021-02-26 00:15:51','','2021-02-26 00:15:51','\0'),
(110,'API 异常数据的处理状态','infra_api_error_log_process_status',0,NULL,'','2021-02-26 07:07:01','','2022-02-01 16:50:53','\0'),
(111,'短信渠道编码','system_sms_channel_code',0,NULL,'1','2021-04-05 01:04:50','1','2022-02-16 02:09:08','\0'),
(112,'短信模板的类型','system_sms_template_type',0,NULL,'1','2021-04-05 21:50:43','1','2022-02-01 16:35:06','\0'),
(113,'短信发送状态','system_sms_send_status',0,NULL,'1','2021-04-11 20:18:03','1','2022-02-01 16:35:09','\0'),
(114,'短信接收状态','system_sms_receive_status',0,NULL,'1','2021-04-11 20:27:14','1','2022-02-01 16:35:14','\0'),
(115,'错误码的类型','system_error_code_type',0,NULL,'1','2021-04-21 00:06:30','1','2022-02-01 16:36:49','\0'),
(116,'登陆日志的类型','system_login_type',0,'登陆日志的类型','1','2021-10-06 00:50:46','1','2022-02-01 16:35:56','\0'),
(117,'OA 请假类型','bpm_oa_leave_type',0,NULL,'1','2021-09-21 22:34:33','1','2022-01-22 10:41:37','\0'),
(122,'支付渠道微信版本','pay_channel_wechat_version',0,'支付渠道微信版本','1','2021-11-08 17:00:26','1','2021-11-08 17:00:26','\0'),
(127,'支付渠道支付宝算法类型','pay_channel_alipay_sign_type',0,'支付渠道支付宝算法类型','1','2021-11-18 15:39:09','1','2021-11-18 15:39:09','\0'),
(128,'支付渠道支付宝公钥类型','pay_channel_alipay_mode',0,'支付渠道支付宝公钥类型','1','2021-11-18 15:44:28','1','2021-11-18 15:44:28','\0'),
(129,'支付宝网关地址','pay_channel_alipay_server_type',0,'支付宝网关地址','1','2021-11-18 16:58:55','1','2021-11-18 17:01:34','\0'),
(130,'支付渠道编码类型','pay_channel_code_type',0,'支付渠道的编码','1','2021-12-03 10:35:08','1','2021-12-03 10:35:08','\0'),
(131,'支付订单回调状态','pay_order_notify_status',0,'支付订单回调状态','1','2021-12-03 10:53:29','1','2021-12-03 10:53:29','\0'),
(132,'支付订单状态','pay_order_status',0,'支付订单状态','1','2021-12-03 11:17:50','1','2021-12-03 11:17:50','\0'),
(133,'支付订单退款状态','pay_order_refund_status',0,'支付订单退款状态','1','2021-12-03 11:27:31','1','2021-12-03 11:27:31','\0'),
(134,'退款订单状态','pay_refund_order_status',0,'退款订单状态','1','2021-12-10 16:42:50','1','2021-12-10 16:42:50','\0'),
(135,'退款订单类别','pay_refund_order_type',0,'退款订单类别','1','2021-12-10 17:14:53','1','2021-12-10 17:14:53','\0'),
(138,'流程分类','bpm_model_category',0,'流程分类','1','2022-01-02 08:40:45','1','2022-01-02 08:40:45','\0'),
(139,'流程实例的状态','bpm_process_instance_status',0,'流程实例的状态','1','2022-01-07 23:46:42','1','2022-01-07 23:46:42','\0'),
(140,'流程实例的结果','bpm_process_instance_result',0,'流程实例的结果','1','2022-01-07 23:48:10','1','2022-01-07 23:48:10','\0'),
(141,'流程的表单类型','bpm_model_form_type',0,'流程的表单类型','103','2022-01-11 23:50:45','103','2022-01-11 23:50:45','\0'),
(142,'任务分配规则的类型','bpm_task_assign_rule_type',0,'任务分配规则的类型','103','2022-01-12 23:21:04','103','2022-01-12 15:46:10','\0'),
(143,'任务分配自定义脚本','bpm_task_assign_script',0,'任务分配自定义脚本','103','2022-01-15 00:10:35','103','2022-01-15 00:10:35','\0'),
(144,'代码生成的场景枚举','infra_codegen_scene',0,'代码生成的场景枚举','1','2022-02-02 13:14:45','1','2022-03-10 16:33:46','\0'),
(145,'角色类型','system_role_type',0,'角色类型','1','2022-02-16 13:01:46','1','2022-02-16 13:01:46','\0'),
(146,'文件存储器','infra_file_storage',0,'文件存储器','1','2022-03-15 00:24:38','1','2022-03-15 00:24:38','\0'),
(147,'OAuth 2.0 授权类型','system_oauth2_grant_type',0,'OAuth 2.0 授权类型（模式）','1','2022-05-12 00:20:52','1','2022-05-11 16:25:49','\0'),
(149,'采购报销物品购买途径','reim_purchase_way_type',0,'采购报销流程选择购买途径类型','1','2022-07-15 17:20:38','1','2022-07-15 17:20:38','\0'),
(150,'采购报销货币种类','reim_purchase_currency_type',0,'采购报销流程选择货币种类','1','2022-07-15 18:07:48','1','2022-07-15 18:07:48','\0'),
(151,'报销申请是否打印','reim_application_is_printed',0,'报销申请是否打印','1','2022-08-10 10:45:50','1','2022-08-10 10:46:05','\0'),
(152,'邮箱类型','email_type',0,'邮箱类型','120','2022-08-11 15:21:25','120','2022-08-11 15:21:25','\0'),
(153,'邮件信息类型','email_msg_type',0,'邮件信息类型','120','2022-08-11 16:09:03','120','2022-08-11 16:09:35','\0');

/*Table structure for table `system_email_mailbox` */

DROP TABLE IF EXISTS `system_email_mailbox`;

CREATE TABLE `system_email_mailbox` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道编码',
  `status` tinyint(4) NOT NULL COMMENT '开启状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `from_email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发件人邮箱地址',
  `auth_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱授权码',
  `callback_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮件发送回调 URL',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mailbox';

/*Data for the table `system_email_mailbox` */

insert  into `system_email_mailbox`(`id`,`code`,`status`,`remark`,`from_email`,`auth_code`,`callback_url`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(7,'MAIL_163',0,NULL,'hkcrc_info_fr@163.com','FPGQEHBYOVAQQMUJ',NULL,'1','2022-08-11 14:42:16','','2022-08-11 14:42:16','\0',135),
(8,'QQ_MAIL',0,'测试','819419387@qq.com','dddddddd',NULL,'120','2022-08-11 15:59:00','120','2022-08-11 16:05:42','',135);

/*Table structure for table `system_email_template` */

DROP TABLE IF EXISTS `system_email_template`;

CREATE TABLE `system_email_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` tinyint(4) NOT NULL COMMENT '邮件类型',
  `status` tinyint(4) NOT NULL COMMENT '开启状态',
  `code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板编码',
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板内容',
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数数组',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `mailbox_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mailbox渠道编码',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮件模板';

/*Data for the table `system_email_template` */

insert  into `system_email_template`(`id`,`type`,`status`,`code`,`name`,`content`,`params`,`remark`,`mailbox_code`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(14,2,0,'bpm_task_assigned','【工作流】任务被分配','您收到了一条新的待办任务：{processInstanceName}-{taskName}，申请人：{startUserNickname}，处理链接：{detailUrl}','[\"processInstanceName\",\"taskName\",\"startUserNickname\",\"detailUrl\"]',NULL,'MAIL_163','1','2022-08-10 22:22:48','135','2022-08-11 14:42:34','\0',135),
(15,2,0,'bpm_process_instance_reject','【工作流】流程被不通过','您的流程被审批不通过：{processInstanceName}，原因：{reason}，查看链接：{detailUrl}','[\"processInstanceName\",\"reason\",\"detailUrl\"]',NULL,'MAIL_163','1','2022-08-10 22:22:48','135','2022-08-11 14:42:35','\0',135),
(16,2,0,'bpm_process_instance_approve','【工作流】流程被通过','您的流程被审批通过：{processInstanceName}，查看链接：{detailUrl}','[\"processInstanceName\",\"detailUrl\"]',NULL,'MAIL_163','1','2022-08-10 22:22:48','135','2022-08-11 14:42:39','\0',135);

/*Table structure for table `system_error_code` */

DROP TABLE IF EXISTS `system_error_code`;

CREATE TABLE `system_error_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '错误码编号',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '错误码类型',
  `application_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名',
  `code` int(11) NOT NULL DEFAULT '0' COMMENT '错误码编码',
  `message` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '错误码错误提示',
  `memo` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6014 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='错误码表';

/*Data for the table `system_error_code` */

insert  into `system_error_code`(`id`,`type`,`application_name`,`code`,`message`,`memo`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(5829,1,'yudao-server',1009000002,'获取高亮流程图异常','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5830,1,'yudao-server',1009001001,'请假申请不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5831,1,'yudao-server',1009001002,'项目经理岗位未设置','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5832,1,'yudao-server',1009001009,'部门的项目经理不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5833,1,'yudao-server',1009001004,'部门经理岗位未设置','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5834,1,'yudao-server',1009001005,'部门的部门经理不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5835,1,'yudao-server',1009001006,'HR岗位未设置','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5836,1,'yudao-server',1009001007,'请假天数必须>=1','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5837,1,'yudao-server',1009002000,'已经存在流程标识为【{}】的流程','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5838,1,'yudao-server',1009002001,'流程模型不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5839,1,'yudao-server',1009002002,'流程标识格式不正确，需要以字母或下划线开头，后接任意字母、数字、中划线、下划线、句点！','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5840,1,'yudao-server',1009002003,'部署流程失败，原因：流程表单未配置，请点击【修改流程】按钮进行配置','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5841,1,'yudao-server',1009002004,'部署流程失败，原因：用户任务({})未配置分配规则，请点击【修改流程】按钮进行配置','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5842,1,'yudao-server',1009003005,'流程定义部署失败，原因：信息未发生变化','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5843,1,'yudao-server',1009003000,'流程定义的标识期望是({})，当前是({})，请修改 BPMN 流程图','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5844,1,'yudao-server',1009003001,'流程定义的名字期望是({})，当前是({})，请修改 BPMN 流程图','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5845,1,'yudao-server',1009003002,'流程定义不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5846,1,'yudao-server',1009003003,'流程定义处于挂起状态','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5847,1,'yudao-server',1009003004,'流程定义的模型不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5848,1,'yudao-server',1009004000,'流程实例不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5849,1,'yudao-server',1009004001,'流程取消失败，流程不处于运行中','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5850,1,'yudao-server',1009004002,'流程取消失败，该流程不是你发起的','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5851,1,'yudao-server',1009005000,'审批任务失败，原因：该任务不处于未审批','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5852,1,'yudao-server',1009005001,'审批任务失败，原因：该任务的审批人不是你','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5853,1,'yudao-server',1009006000,'流程({}) 的任务({}) 已经存在分配规则','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5854,1,'yudao-server',1009006001,'流程任务分配规则不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5855,1,'yudao-server',1009006002,'只有流程模型的任务分配规则，才允许被修改','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5856,1,'yudao-server',1009006003,'操作失败，原因：找不到任务的审批人！','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5857,1,'yudao-server',1009006004,'操作失败，原因：任务分配脚本({}) 不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5858,1,'yudao-server',1009010000,'动态表单不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5859,1,'yudao-server',1009010001,'表单项({}) 和 ({}) 使用了相同的字段名({})','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5860,1,'yudao-server',1009011000,'用户组不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5861,1,'yudao-server',1009011001,'名字为【{}】的用户组已被禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5862,1,'yudao-server',1001000001,'参数配置不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5863,1,'yudao-server',1001000002,'参数配置 key 重复','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5864,1,'yudao-server',1001000003,'不能删除类型为系统内置的参数配置','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5865,1,'yudao-server',1001000004,'获取参数配置失败，原因：不允许获取不可见配置','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5866,1,'yudao-server',1001001000,'定时任务不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5867,1,'yudao-server',1001001001,'定时任务的处理器已经存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5868,1,'yudao-server',1001001002,'只允许修改为开启或者关闭状态','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5869,1,'yudao-server',1001001003,'定时任务已经处于该状态，无需修改','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5870,1,'yudao-server',1001001004,'只有开启状态的任务，才可以修改','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5871,1,'yudao-server',1001001005,'CRON 表达式不正确','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5872,1,'yudao-server',1001002000,'API 错误日志不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5873,1,'yudao-server',1001002001,'API 错误日志已处理','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5874,1,'yudao-server',1001003000,'文件路径已存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5875,1,'yudao-server',1001003001,'文件不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5876,1,'yudao-server',1001003002,'文件为空','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5877,1,'yudao-server',1003001000,'表定义已经存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5878,1,'yudao-server',1003001001,'导入的表不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5879,1,'yudao-server',1003001002,'导入的字段不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5880,1,'yudao-server',1003001004,'表定义不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5881,1,'yudao-server',1003001005,'字段义不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5882,1,'yudao-server',1003001006,'同步的字段不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5883,1,'yudao-server',1003001007,'同步失败，不存在改变','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5884,1,'yudao-server',1003001008,'数据库的表注释未填写','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5885,1,'yudao-server',1003001009,'数据库的表字段({})注释未填写','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5886,1,'yudao-server',1001005000,'测试示例不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5887,1,'yudao-server',1001006000,'文件配置不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5888,1,'yudao-server',1001006001,'该文件配置不允许删除，原因：它是主配置，删除会导致无法上传文件','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5889,1,'yudao-server',1001007000,'数据源配置不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5890,1,'yudao-server',1001007001,'数据源配置不正确，无法进行连接','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5891,1,'yudao-server',1004001000,'用户不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5892,1,'yudao-server',1004001001,'密码校验失败','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5893,1,'yudao-server',1004003000,'登录失败，账号密码不正确','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5894,1,'yudao-server',1004003001,'登录失败，账号被禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5895,1,'yudao-server',1004003004,'Token 已经过期','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5896,1,'yudao-server',1004003005,'未绑定账号，需要进行绑定','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5897,1,'yudao-server',1007000000,'App 不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5898,1,'yudao-server',1007000002,'App 已经被禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5899,1,'yudao-server',1007000003,'支付应用存在交易中的订单,无法删除','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5900,1,'yudao-server',1007001000,'支付渠道的配置不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5901,1,'yudao-server',1007001001,'支付渠道已经禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5902,1,'yudao-server',1007001002,'支付渠道的客户端不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5903,1,'yudao-server',1007001003,'支付渠道不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5904,1,'yudao-server',1007001005,'已存在相同的渠道','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5905,1,'yudao-server',1007001006,'微信渠道v2版本中商户密钥不可为空','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5906,1,'yudao-server',1007001007,'微信渠道v3版本apiclient_key.pem不可为空','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5907,1,'yudao-server',1007001008,'微信渠道v3版本中apiclient_cert.pem不可为空','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5908,1,'yudao-server',1007001009,'渠道通知校验失败','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5909,1,'yudao-server',1007002000,'支付订单不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5910,1,'yudao-server',1007002001,'支付订单不处于待支付','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5911,1,'yudao-server',1007002002,'支付订单不处于已支付','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5912,1,'yudao-server',1007002003,'支付订单用户不正确','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5913,1,'yudao-server',1007003000,'支付交易拓展单不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5914,1,'yudao-server',1007003001,'支付交易拓展单不处于待支付','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5915,1,'yudao-server',1007003002,'支付订单不处于已支付','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5916,1,'yudao-server',1007006000,'退款金额超过订单可退款金额','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5917,1,'yudao-server',1007006001,'订单已经全额退款','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5918,1,'yudao-server',1007006002,'该订单的渠道订单为空','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5919,1,'yudao-server',1007006003,'已经退款成功','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5920,1,'yudao-server',1007006004,'支付退款单不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5921,1,'yudao-server',1007004000,'支付商户信息不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5922,1,'yudao-server',1007004001,'支付商户存在支付应用,无法删除','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5923,1,'yudao-server',1002000000,'登录失败，账号密码不正确','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5924,1,'yudao-server',1002000001,'登录失败，账号被禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5925,1,'yudao-server',1002000003,'验证码不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5926,1,'yudao-server',1002000004,'验证码不正确','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5927,1,'yudao-server',1002000005,'未绑定账号，需要进行绑定','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5928,1,'yudao-server',1002000006,'Token 已经过期','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5929,1,'yudao-server',1002000007,'手机号不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5930,1,'yudao-server',1002001000,'已经存在该名字的菜单','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5931,1,'yudao-server',1002001001,'父菜单不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5932,1,'yudao-server',1002001002,'不能设置自己为父菜单','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5933,1,'yudao-server',1002001003,'菜单不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5934,1,'yudao-server',1002001004,'存在子菜单，无法删除','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5935,1,'yudao-server',1002001005,'父菜单的类型必须是目录或者菜单','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5936,1,'yudao-server',1002002000,'角色不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5937,1,'yudao-server',1002002001,'已经存在名为【{}】的角色','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5938,1,'yudao-server',1002002002,'已经存在编码为【{}】的角色','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5939,1,'yudao-server',1002002003,'不能操作类型为系统内置的角色','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5940,1,'yudao-server',1002002004,'名字为【{}】的角色已被禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5941,1,'yudao-server',1002002005,'编码【{}】不能使用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5942,1,'yudao-server',1002003000,'用户账号已经存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5943,1,'yudao-server',1002003001,'手机号已经存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5944,1,'yudao-server',1002003002,'邮箱已经存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5945,1,'yudao-server',1002003003,'用户不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5946,1,'yudao-server',1002003004,'导入用户数据不能为空！','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5947,1,'yudao-server',1002003005,'用户密码校验失败','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5948,1,'yudao-server',1002003006,'名字为【{}】的用户已被禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5949,1,'yudao-server',1002003008,'创建用户失败，原因：超过租户最大租户配额({})！','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5950,1,'yudao-server',1002004000,'已经存在该名字的部门','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5951,1,'yudao-server',1002004001,'父级部门不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5952,1,'yudao-server',1002004002,'当前部门不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5953,1,'yudao-server',1002004003,'存在子部门，无法删除','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5954,1,'yudao-server',1002004004,'不能设置自己为父部门','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5955,1,'yudao-server',1002004005,'部门中存在员工，无法删除','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5956,1,'yudao-server',1002004006,'部门不处于开启状态，不允许选择','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5957,1,'yudao-server',1002004007,'不能设置自己的子部门为父部门','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5958,1,'yudao-server',1002005000,'当前岗位不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5959,1,'yudao-server',1002005001,'岗位({}) 不处于开启状态，不允许选择','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5960,1,'yudao-server',1002005002,'已经存在该名字的岗位','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5961,1,'yudao-server',1002005003,'已经存在该标识的岗位','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5962,1,'yudao-server',1002006001,'当前字典类型不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5963,1,'yudao-server',1002006002,'字典类型不处于开启状态，不允许选择','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5964,1,'yudao-server',1002006003,'已经存在该名字的字典类型','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5965,1,'yudao-server',1002006004,'已经存在该类型的字典类型','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5966,1,'yudao-server',1002006005,'无法删除，该字典类型还有字典数据','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5967,1,'yudao-server',1002007001,'当前字典数据不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5968,1,'yudao-server',1002007002,'字典数据({})不处于开启状态，不允许选择','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5969,1,'yudao-server',1002007003,'已经存在该值的字典数据','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5970,1,'yudao-server',1002008001,'当前通知公告不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5971,1,'yudao-server',1002011000,'短信渠道不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5972,1,'yudao-server',1002011001,'短信渠道不处于开启状态，不允许选择','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5973,1,'yudao-server',1002011002,'无法删除，该短信渠道还有短信模板','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5974,1,'yudao-server',1002012000,'短信模板不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5975,1,'yudao-server',1002012001,'已经存在编码为【{}】的短信模板','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5976,1,'yudao-server',1002013000,'手机号不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5977,1,'yudao-server',1002013001,'模板参数({})缺失','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5978,1,'yudao-server',1002013002,'短信模板不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5979,1,'yudao-server',1002014000,'验证码不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5980,1,'yudao-server',1002014001,'验证码已过期','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5981,1,'yudao-server',1002014002,'验证码已使用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5982,1,'yudao-server',1002014003,'验证码不正确','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5983,1,'yudao-server',1002014004,'超过每日短信发送数量','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5984,1,'yudao-server',1002014005,'短信发送过于频率','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5985,1,'yudao-server',1002014006,'手机号已被使用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5986,1,'yudao-server',1002014007,'验证码未被使用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5987,1,'yudao-server',1002015000,'租户不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5988,1,'yudao-server',1002015001,'名字为【{}】的租户已被禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5989,1,'yudao-server',1002015002,'名字为【{}】的租户已过期','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5990,1,'yudao-server',1002015003,'系统租户不能进行修改、删除等操作！','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5991,1,'yudao-server',1002016000,'租户套餐不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5992,1,'yudao-server',1002016001,'租户正在使用该套餐，请给租户重新设置套餐后再尝试删除','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5993,1,'yudao-server',1002016002,'名字为【{}】的租户套餐已被禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5994,1,'yudao-server',1002017000,'错误码不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5995,1,'yudao-server',1002017001,'已经存在编码为【{}】的错误码','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5996,1,'yudao-server',1002018000,'社交授权失败，原因是：{}','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5997,1,'yudao-server',1002018001,'社交解绑失败，非当前用户绑定','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5998,1,'yudao-server',1002018002,'社交授权失败，找不到对应的用户','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(5999,1,'yudao-server',1002019000,'系统敏感词在所有标签中都不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6000,1,'yudao-server',1002019001,'系统敏感词已在标签中存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6001,1,'yudao-server',1002020000,'OAuth2 客户端不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6002,1,'yudao-server',1002020001,'OAuth2 客户端编号已存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6003,1,'yudao-server',1002020002,'OAuth2 客户端已禁用','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6004,1,'yudao-server',1002020003,'不支持该授权类型','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6005,1,'yudao-server',1002020004,'授权范围过大','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6006,1,'yudao-server',1002020005,'无效 redirect_uri: {}','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6007,1,'yudao-server',1002020006,'无效 client_secret: {}','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6008,1,'yudao-server',1002021000,'client_id 不匹配','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6009,1,'yudao-server',1002021001,'redirect_uri 不匹配','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6010,1,'yudao-server',1002021002,'state 不匹配','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6011,1,'yudao-server',1002021003,'code 不存在','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0'),
(6012,1,'yudao-server',1002022000,'code 已过期','',NULL,'2022-06-04 20:07:09',NULL,'2022-07-05 11:58:24','\0'),
(6013,1,'yudao-server',1002022000,'code 已过期','',NULL,'2022-06-04 20:07:09',NULL,'2022-06-04 20:07:09','\0');

/*Table structure for table `system_login_log` */

DROP TABLE IF EXISTS `system_login_log`;

CREATE TABLE `system_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `log_type` bigint(20) NOT NULL COMMENT '日志类型',
  `trace_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链路追踪编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户账号',
  `result` tinyint(4) NOT NULL COMMENT '登陆结果',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户 IP',
  `user_agent` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浏览器 UA',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统访问记录';

/*Data for the table `system_login_log` */

/*Table structure for table `system_menu` */

DROP TABLE IF EXISTS `system_menu`;

CREATE TABLE `system_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限标识',
  `type` tinyint(4) NOT NULL COMMENT '菜单类型',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父菜单ID',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '路由地址',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#' COMMENT '菜单图标',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '组件路径',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '菜单状态',
  `visible` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否可见',
  `keep_alive` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否缓存',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单权限表';

/*Data for the table `system_menu` */

insert  into `system_menu`(`id`,`name`,`permission`,`type`,`sort`,`parent_id`,`path`,`icon`,`component`,`status`,`visible`,`keep_alive`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(1,'系统管理','',1,10,0,'/system','system',NULL,0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(2,'基础设施','',1,20,0,'/infra','monitor',NULL,0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(5,'OA 示例','',1,40,1185,'oa','people',NULL,0,'','','admin','2021-09-20 16:26:19','1','2022-04-20 17:03:10','\0'),
(100,'用户管理','system:user:list',2,1,1,'user','user','system/user/index',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(101,'角色管理','',2,2,1,'role','peoples','system/role/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(102,'菜单管理','',2,3,1,'menu','tree-table','system/menu/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(103,'部门管理','',2,4,1,'dept','tree','system/dept/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(104,'岗位管理','',2,5,1,'post','post','system/post/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(105,'字典管理','',2,6,1,'dict','dict','system/dict/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(106,'配置管理','',2,6,2,'config','edit','infra/config/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(107,'通知公告','',2,8,1,'notice','message','system/notice/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(108,'审计日志','',1,9,1,'log','log','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(109,'令牌管理','',2,2,1261,'token','online','system/oauth2/token/index',0,'','','admin','2021-01-05 17:03:48','1','2022-05-11 23:31:42','\0'),
(110,'定时任务','',2,12,2,'job','job','infra/job/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(111,'MySQL 监控','',2,9,2,'druid','druid','infra/druid/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(112,'Java 监控','',2,11,2,'admin-server','server','infra/server/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(113,'Redis 监控','',2,10,2,'redis','redis','infra/redis/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(114,'表单构建','infra:build:list',2,2,2,'build','build','infra/build/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(115,'代码生成','infra:codegen:query',2,1,2,'codegen','code','infra/codegen/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(116,'系统接口','infra:swagger:list',2,3,2,'swagger','swagger','infra/swagger/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(500,'操作日志','',2,1,108,'operate-log','form','system/operatelog/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(501,'登录日志','',2,2,108,'login-log','logininfor','system/loginlog/index',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1001,'用户查询','system:user:query',3,1,100,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1002,'用户新增','system:user:create',3,2,100,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1003,'用户修改','system:user:update',3,3,100,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1004,'用户删除','system:user:delete',3,4,100,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1005,'用户导出','system:user:export',3,5,100,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1006,'用户导入','system:user:import',3,6,100,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1007,'重置密码','system:user:update-password',3,7,100,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1008,'角色查询','system:role:query',3,1,101,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1009,'角色新增','system:role:create',3,2,101,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1010,'角色修改','system:role:update',3,3,101,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1011,'角色删除','system:role:delete',3,4,101,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1012,'角色导出','system:role:export',3,5,101,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1013,'菜单查询','system:menu:query',3,1,102,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1014,'菜单新增','system:menu:create',3,2,102,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1015,'菜单修改','system:menu:update',3,3,102,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1016,'菜单删除','system:menu:delete',3,4,102,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1017,'部门查询','system:dept:query',3,1,103,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1018,'部门新增','system:dept:create',3,2,103,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1019,'部门修改','system:dept:update',3,3,103,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1020,'部门删除','system:dept:delete',3,4,103,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1021,'岗位查询','system:post:query',3,1,104,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1022,'岗位新增','system:post:create',3,2,104,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1023,'岗位修改','system:post:update',3,3,104,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1024,'岗位删除','system:post:delete',3,4,104,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1025,'岗位导出','system:post:export',3,5,104,'','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1026,'字典查询','system:dict:query',3,1,105,'#','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1027,'字典新增','system:dict:create',3,2,105,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1028,'字典修改','system:dict:update',3,3,105,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1029,'字典删除','system:dict:delete',3,4,105,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1030,'字典导出','system:dict:export',3,5,105,'#','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1031,'配置查询','infra:config:query',3,1,106,'','','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1032,'配置新增','infra:config:create',3,2,106,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1033,'配置修改','infra:config:update',3,3,106,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1034,'配置删除','infra:config:delete',3,4,106,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1035,'配置导出','infra:config:export',3,5,106,'','','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1036,'公告查询','system:notice:query',3,1,107,'#','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1037,'公告新增','system:notice:create',3,2,107,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1038,'公告修改','system:notice:update',3,3,107,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1039,'公告删除','system:notice:delete',3,4,107,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1040,'操作查询','system:operate-log:query',3,1,500,'','','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1042,'日志导出','system:operate-log:export',3,2,500,'','','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1043,'登录查询','system:login-log:query',3,1,501,'#','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1045,'日志导出','system:login-log:export',3,3,501,'#','#','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1046,'令牌列表','system:oauth2-token:page',3,1,109,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-05-09 23:54:42','\0'),
(1048,'令牌删除','system:oauth2-token:delete',3,2,109,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-05-09 23:54:53','\0'),
(1050,'任务新增','infra:job:create',3,2,110,'','','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1051,'任务修改','infra:job:update',3,3,110,'','','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1052,'任务删除','infra:job:delete',3,4,110,'','','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1053,'状态修改','infra:job:update',3,5,110,'','','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1054,'任务导出','infra:job:export',3,7,110,'','','',0,'','','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10','\0'),
(1056,'生成修改','infra:codegen:update',3,2,115,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1057,'生成删除','infra:codegen:delete',3,3,115,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1058,'导入代码','infra:codegen:create',3,2,115,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1059,'预览代码','infra:codegen:preview',3,4,115,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1060,'生成代码','infra:codegen:download',3,5,115,'','','',0,'','','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10','\0'),
(1063,'设置角色菜单权限','system:permission:assign-role-menu',3,6,101,'','','',0,'','','','2021-01-06 17:53:44','','2022-04-20 17:03:10','\0'),
(1064,'设置角色数据权限','system:permission:assign-role-data-scope',3,7,101,'','','',0,'','','','2021-01-06 17:56:31','','2022-04-20 17:03:10','\0'),
(1065,'设置用户角色','system:permission:assign-user-role',3,8,101,'','','',0,'','','','2021-01-07 10:23:28','','2022-04-20 17:03:10','\0'),
(1066,'获得 Redis 监控信息','infra:redis:get-monitor-info',3,1,113,'','','',0,'','','','2021-01-26 01:02:31','','2022-04-20 17:03:10','\0'),
(1067,'获得 Redis Key 列表','infra:redis:get-key-list',3,2,113,'','','',0,'','','','2021-01-26 01:02:52','','2022-04-20 17:03:10','\0'),
(1070,'代码生成示例','infra:test-demo:query',2,1,2,'test-demo','validCode','infra/testDemo/index',0,'','','','2021-02-06 12:42:49','1','2022-04-20 17:03:10','\0'),
(1071,'测试示例表创建','infra:test-demo:create',3,1,1070,'','','',0,'','','','2021-02-06 12:42:49','1','2022-04-20 17:03:10','\0'),
(1072,'测试示例表更新','infra:test-demo:update',3,2,1070,'','','',0,'','','','2021-02-06 12:42:49','1','2022-04-20 17:03:10','\0'),
(1073,'测试示例表删除','infra:test-demo:delete',3,3,1070,'','','',0,'','','','2021-02-06 12:42:49','1','2022-04-20 17:03:10','\0'),
(1074,'测试示例表导出','infra:test-demo:export',3,4,1070,'','','',0,'','','','2021-02-06 12:42:49','1','2022-04-20 17:03:10','\0'),
(1075,'任务触发','infra:job:trigger',3,8,110,'','','',0,'','','','2021-02-07 13:03:10','','2022-04-20 17:03:10','\0'),
(1076,'数据库文档','',2,4,2,'db-doc','table','infra/dbDoc/index',0,'','','','2021-02-08 01:41:47','1','2022-04-20 17:03:10','\0'),
(1077,'监控平台','',2,13,2,'skywalking','eye-open','infra/skywalking/index',0,'','','','2021-02-08 20:41:31','1','2022-04-20 17:03:10','\0'),
(1078,'访问日志','',2,1,1083,'api-access-log','log','infra/apiAccessLog/index',0,'','','','2021-02-26 01:32:59','1','2022-04-20 17:03:10','\0'),
(1082,'日志导出','infra:api-access-log:export',3,2,1078,'','','',0,'','','','2021-02-26 01:32:59','1','2022-04-20 17:03:10','\0'),
(1083,'API 日志','',2,8,2,'log','log',NULL,0,'','','','2021-02-26 02:18:24','1','2022-04-20 17:03:10','\0'),
(1084,'错误日志','infra:api-error-log:query',2,2,1083,'api-error-log','log','infra/apiErrorLog/index',0,'','','','2021-02-26 07:53:20','','2022-04-20 17:03:10','\0'),
(1085,'日志处理','infra:api-error-log:update-status',3,2,1084,'','','',0,'','','','2021-02-26 07:53:20','1','2022-04-20 17:03:10','\0'),
(1086,'日志导出','infra:api-error-log:export',3,3,1084,'','','',0,'','','','2021-02-26 07:53:20','1','2022-04-20 17:03:10','\0'),
(1087,'任务查询','infra:job:query',3,1,110,'','','',0,'','','1','2021-03-10 01:26:19','1','2022-04-20 17:03:10','\0'),
(1088,'日志查询','infra:api-access-log:query',3,1,1078,'','','',0,'','','1','2021-03-10 01:28:04','1','2022-04-20 17:03:10','\0'),
(1089,'日志查询','infra:api-error-log:query',3,1,1084,'','','',0,'','','1','2021-03-10 01:29:09','1','2022-04-20 17:03:10','\0'),
(1090,'文件列表','',2,5,1243,'file','upload','infra/file/index',0,'','','','2021-03-12 20:16:20','1','2022-04-20 17:03:10','\0'),
(1091,'文件查询','infra:file:query',3,1,1090,'','','',0,'','','','2021-03-12 20:16:20','','2022-04-20 17:03:10','\0'),
(1092,'文件删除','infra:file:delete',3,4,1090,'','','',0,'','','','2021-03-12 20:16:20','','2022-04-20 17:03:10','\0'),
(1093,'短信管理','',1,11,1,'sms','validCode',NULL,0,'','','1','2021-04-05 01:10:16','1','2022-04-20 17:03:10','\0'),
(1094,'短信渠道','',2,0,1093,'sms-channel','phone','system/sms/smsChannel',0,'','','','2021-04-01 11:07:15','1','2022-04-20 17:03:10','\0'),
(1095,'短信渠道查询','system:sms-channel:query',3,1,1094,'','','',0,'','','','2021-04-01 11:07:15','','2022-04-20 17:03:10','\0'),
(1096,'短信渠道创建','system:sms-channel:create',3,2,1094,'','','',0,'','','','2021-04-01 11:07:15','','2022-04-20 17:03:10','\0'),
(1097,'短信渠道更新','system:sms-channel:update',3,3,1094,'','','',0,'','','','2021-04-01 11:07:15','','2022-04-20 17:03:10','\0'),
(1098,'短信渠道删除','system:sms-channel:delete',3,4,1094,'','','',0,'','','','2021-04-01 11:07:15','','2022-04-20 17:03:10','\0'),
(1100,'短信模板','',2,1,1093,'sms-template','phone','system/sms/smsTemplate',0,'','','','2021-04-01 17:35:17','1','2022-04-20 17:03:10','\0'),
(1101,'短信模板查询','system:sms-template:query',3,1,1100,'','','',0,'','','','2021-04-01 17:35:17','','2022-04-20 17:03:10','\0'),
(1102,'短信模板创建','system:sms-template:create',3,2,1100,'','','',0,'','','','2021-04-01 17:35:17','','2022-04-20 17:03:10','\0'),
(1103,'短信模板更新','system:sms-template:update',3,3,1100,'','','',0,'','','','2021-04-01 17:35:17','','2022-04-20 17:03:10','\0'),
(1104,'短信模板删除','system:sms-template:delete',3,4,1100,'','','',0,'','','','2021-04-01 17:35:17','','2022-04-20 17:03:10','\0'),
(1105,'短信模板导出','system:sms-template:export',3,5,1100,'','','',0,'','','','2021-04-01 17:35:17','','2022-04-20 17:03:10','\0'),
(1106,'发送测试短信','system:sms-template:send-sms',3,6,1100,'','','',0,'','','1','2021-04-11 00:26:40','1','2022-04-20 17:03:10','\0'),
(1107,'短信日志','',2,2,1093,'sms-log','phone','system/sms/smsLog',0,'','','','2021-04-11 08:37:05','1','2022-04-20 17:03:10','\0'),
(1108,'短信日志查询','system:sms-log:query',3,1,1107,'','','',0,'','','','2021-04-11 08:37:05','','2022-04-20 17:03:10','\0'),
(1109,'短信日志导出','system:sms-log:export',3,5,1107,'','','',0,'','','','2021-04-11 08:37:05','','2022-04-20 17:03:10','\0'),
(1110,'错误码管理','',2,12,1,'error-code','code','system/errorCode/index',0,'','','','2021-04-13 21:46:42','1','2022-04-20 17:03:10','\0'),
(1111,'错误码查询','system:error-code:query',3,1,1110,'','','',0,'','','','2021-04-13 21:46:42','','2022-04-20 17:03:10','\0'),
(1112,'错误码创建','system:error-code:create',3,2,1110,'','','',0,'','','','2021-04-13 21:46:42','','2022-04-20 17:03:10','\0'),
(1113,'错误码更新','system:error-code:update',3,3,1110,'','','',0,'','','','2021-04-13 21:46:42','','2022-04-20 17:03:10','\0'),
(1114,'错误码删除','system:error-code:delete',3,4,1110,'','','',0,'','','','2021-04-13 21:46:42','','2022-04-20 17:03:10','\0'),
(1115,'错误码导出','system:error-code:export',3,5,1110,'','','',0,'','','','2021-04-13 21:46:42','','2022-04-20 17:03:10','\0'),
(1117,'支付管理','',1,11,0,'/pay','money',NULL,0,'','','1','2021-12-25 16:43:41','1','2022-06-27 22:27:41','\0'),
(1118,'请假查询','',2,0,5,'leave','user','bpm/oa/leave/index',0,'','','','2021-09-20 08:51:03','1','2022-04-20 17:03:10','\0'),
(1119,'请假申请查询','bpm:oa-leave:query',3,1,1118,'','','',0,'','','','2021-09-20 08:51:03','1','2022-04-20 17:03:10','\0'),
(1120,'请假申请创建','bpm:oa-leave:create',3,2,1118,'','','',0,'','','','2021-09-20 08:51:03','1','2022-04-20 17:03:10','\0'),
(1126,'应用信息','',2,1,1117,'app','table','pay/app/index',0,'','','','2021-11-10 01:13:30','1','2022-04-20 17:03:10','\0'),
(1127,'支付应用信息查询','pay:app:query',3,1,1126,'','','',0,'','','','2021-11-10 01:13:31','','2022-04-20 17:03:10','\0'),
(1128,'支付应用信息创建','pay:app:create',3,2,1126,'','','',0,'','','','2021-11-10 01:13:31','','2022-04-20 17:03:10','\0'),
(1129,'支付应用信息更新','pay:app:update',3,3,1126,'','','',0,'','','','2021-11-10 01:13:31','','2022-04-20 17:03:10','\0'),
(1130,'支付应用信息删除','pay:app:delete',3,4,1126,'','','',0,'','','','2021-11-10 01:13:31','','2022-04-20 17:03:10','\0'),
(1131,'支付应用信息导出','pay:app:export',3,5,1126,'','','',0,'','','','2021-11-10 01:13:31','','2022-04-20 17:03:10','\0'),
(1132,'秘钥解析','pay:channel:parsing',3,6,1129,'','','',0,'','','1','2021-11-08 15:15:47','1','2022-04-20 17:03:10','\0'),
(1133,'支付商户信息查询','pay:merchant:query',3,1,1132,'','','',0,'','','','2021-11-10 01:13:41','','2022-04-20 17:03:10','\0'),
(1134,'支付商户信息创建','pay:merchant:create',3,2,1132,'','','',0,'','','','2021-11-10 01:13:41','','2022-04-20 17:03:10','\0'),
(1135,'支付商户信息更新','pay:merchant:update',3,3,1132,'','','',0,'','','','2021-11-10 01:13:41','','2022-04-20 17:03:10','\0'),
(1136,'支付商户信息删除','pay:merchant:delete',3,4,1132,'','','',0,'','','','2021-11-10 01:13:41','','2022-04-20 17:03:10','\0'),
(1137,'支付商户信息导出','pay:merchant:export',3,5,1132,'','','',0,'','','','2021-11-10 01:13:41','','2022-04-20 17:03:10','\0'),
(1138,'租户列表','',2,0,1224,'list','peoples','system/tenant/index',0,'','','','2021-12-14 12:31:43','1','2022-04-20 17:03:10','\0'),
(1139,'租户查询','system:tenant:query',3,1,1138,'','','',0,'','','','2021-12-14 12:31:44','','2022-04-20 17:03:10','\0'),
(1140,'租户创建','system:tenant:create',3,2,1138,'','','',0,'','','','2021-12-14 12:31:44','','2022-04-20 17:03:10','\0'),
(1141,'租户更新','system:tenant:update',3,3,1138,'','','',0,'','','','2021-12-14 12:31:44','','2022-04-20 17:03:10','\0'),
(1142,'租户删除','system:tenant:delete',3,4,1138,'','','',0,'','','','2021-12-14 12:31:44','','2022-04-20 17:03:10','\0'),
(1143,'租户导出','system:tenant:export',3,5,1138,'','','',0,'','','','2021-12-14 12:31:44','','2022-04-20 17:03:10','\0'),
(1150,'秘钥解析','',3,6,1129,'','','',0,'','','1','2021-11-08 15:15:47','1','2022-04-20 17:03:10','\0'),
(1161,'退款订单','',2,3,1117,'refund','order','pay/refund/index',0,'','','','2021-12-25 08:29:07','1','2022-04-20 17:03:10','\0'),
(1162,'退款订单查询','pay:refund:query',3,1,1161,'','','',0,'','','','2021-12-25 08:29:07','','2022-04-20 17:03:10','\0'),
(1163,'退款订单创建','pay:refund:create',3,2,1161,'','','',0,'','','','2021-12-25 08:29:07','','2022-04-20 17:03:10','\0'),
(1164,'退款订单更新','pay:refund:update',3,3,1161,'','','',0,'','','','2021-12-25 08:29:07','','2022-04-20 17:03:10','\0'),
(1165,'退款订单删除','pay:refund:delete',3,4,1161,'','','',0,'','','','2021-12-25 08:29:07','','2022-04-20 17:03:10','\0'),
(1166,'退款订单导出','pay:refund:export',3,5,1161,'','','',0,'','','','2021-12-25 08:29:07','','2022-04-20 17:03:10','\0'),
(1173,'支付订单','',2,2,1117,'order','pay','pay/order/index',0,'','','','2021-12-25 08:49:43','1','2022-04-20 17:03:10','\0'),
(1174,'支付订单查询','pay:order:query',3,1,1173,'','','',0,'','','','2021-12-25 08:49:43','','2022-04-20 17:03:10','\0'),
(1175,'支付订单创建','pay:order:create',3,2,1173,'','','',0,'','','','2021-12-25 08:49:43','','2022-04-20 17:03:10','\0'),
(1176,'支付订单更新','pay:order:update',3,3,1173,'','','',0,'','','','2021-12-25 08:49:43','','2022-04-20 17:03:10','\0'),
(1177,'支付订单删除','pay:order:delete',3,4,1173,'','','',0,'','','','2021-12-25 08:49:43','','2022-04-20 17:03:10','\0'),
(1178,'支付订单导出','pay:order:export',3,5,1173,'','','',0,'','','','2021-12-25 08:49:43','','2022-04-20 17:03:10','\0'),
(1179,'商户信息','',2,0,1117,'merchant','merchant','pay/merchant/index',0,'','','','2021-12-25 09:01:44','1','2022-04-20 17:03:10','\0'),
(1180,'支付商户信息查询','pay:merchant:query',3,1,1179,'','','',0,'','','','2021-12-25 09:01:44','','2022-04-20 17:03:10','\0'),
(1181,'支付商户信息创建','pay:merchant:create',3,2,1179,'','','',0,'','','','2021-12-25 09:01:44','','2022-04-20 17:03:10','\0'),
(1182,'支付商户信息更新','pay:merchant:update',3,3,1179,'','','',0,'','','','2021-12-25 09:01:44','','2022-04-20 17:03:10','\0'),
(1183,'支付商户信息删除','',3,4,1179,'','','',0,'','','','2021-12-25 09:01:44','','2022-04-20 17:03:10','\0'),
(1184,'支付商户信息导出','pay:merchant:export',3,5,1179,'','','',0,'','','','2021-12-25 09:01:44','','2022-04-20 17:03:10','\0'),
(1185,'工作流程','',1,50,0,'/bpm','tool',NULL,0,'','','1','2021-12-30 20:26:36','103','2022-04-20 17:03:10','\0'),
(1186,'流程管理','',1,10,1185,'manager','nested',NULL,0,'','','1','2021-12-30 20:28:30','1','2022-04-20 17:03:10','\0'),
(1187,'流程表单','',2,0,1186,'form','form','bpm/form/index',0,'','','','2021-12-30 12:38:22','1','2022-04-20 17:03:10','\0'),
(1188,'表单查询','bpm:form:query',3,1,1187,'','','',0,'','','','2021-12-30 12:38:22','1','2022-04-20 17:03:10','\0'),
(1189,'表单创建','bpm:form:create',3,2,1187,'','','',0,'','','','2021-12-30 12:38:22','1','2022-04-20 17:03:10','\0'),
(1190,'表单更新','bpm:form:update',3,3,1187,'','','',0,'','','','2021-12-30 12:38:22','1','2022-04-20 17:03:10','\0'),
(1191,'表单删除','bpm:form:delete',3,4,1187,'','','',0,'','','','2021-12-30 12:38:22','1','2022-04-20 17:03:10','\0'),
(1192,'表单导出','bpm:form:export',3,5,1187,'','','',0,'','','','2021-12-30 12:38:22','1','2022-04-20 17:03:10','\0'),
(1193,'流程模型','',2,5,1186,'model','guide','bpm/model/index',0,'','','1','2021-12-31 23:24:58','103','2022-04-20 17:03:10','\0'),
(1194,'模型查询','bpm:model:query',3,1,1193,'','','',0,'','','1','2022-01-03 19:01:10','1','2022-04-20 17:03:10','\0'),
(1195,'模型创建','bpm:model:create',3,2,1193,'','','',0,'','','1','2022-01-03 19:01:24','1','2022-04-20 17:03:10','\0'),
(1196,'模型导入','bpm:model:import',3,3,1193,'','','',0,'','','1','2022-01-03 19:01:35','1','2022-04-20 17:03:10','\0'),
(1197,'模型更新','bpm:model:update',3,4,1193,'','','',0,'','','1','2022-01-03 19:02:28','1','2022-04-20 17:03:10','\0'),
(1198,'模型删除','bpm:model:delete',3,5,1193,'','','',0,'','','1','2022-01-03 19:02:43','1','2022-04-20 17:03:10','\0'),
(1199,'模型发布','bpm:model:deploy',3,6,1193,'','','',0,'','','1','2022-01-03 19:03:24','1','2022-04-20 17:03:10','\0'),
(1200,'任务管理','',1,20,1185,'task','cascader',NULL,0,'','','1','2022-01-07 23:51:48','1','2022-04-20 17:03:10','\0'),
(1201,'我的流程','',2,0,1200,'my','people','bpm/processInstance/index',0,'','','','2022-01-07 15:53:44','1','2022-04-20 17:03:10','\0'),
(1202,'流程实例的查询','bpm:process-instance:query',3,1,1201,'','','',0,'','','','2022-01-07 15:53:44','1','2022-04-20 17:03:10','\0'),
(1207,'待办任务','',2,10,1200,'todo','eye-open','bpm/task/todo',0,'','','1','2022-01-08 10:33:37','1','2022-04-20 17:03:10','\0'),
(1208,'已办任务','',2,20,1200,'done','eye','bpm/task/done',0,'','','1','2022-01-08 10:34:13','1','2022-04-20 17:03:10','\0'),
(1209,'用户分组','',2,2,1186,'user-group','people','bpm/group/index',0,'','','','2022-01-14 02:14:20','103','2022-04-20 17:03:10','\0'),
(1210,'用户组查询','bpm:user-group:query',3,1,1209,'','','',0,'','','','2022-01-14 02:14:20','','2022-04-20 17:03:10','\0'),
(1211,'用户组创建','bpm:user-group:create',3,2,1209,'','','',0,'','','','2022-01-14 02:14:20','','2022-04-20 17:03:10','\0'),
(1212,'用户组更新','bpm:user-group:update',3,3,1209,'','','',0,'','','','2022-01-14 02:14:20','','2022-04-20 17:03:10','\0'),
(1213,'用户组删除','bpm:user-group:delete',3,4,1209,'','','',0,'','','','2022-01-14 02:14:20','','2022-04-20 17:03:10','\0'),
(1215,'流程定义查询','bpm:process-definition:query',3,10,1193,'','','',0,'','','1','2022-01-23 00:21:43','1','2022-04-20 17:03:10','\0'),
(1216,'流程任务分配规则查询','bpm:task-assign-rule:query',3,20,1193,'','','',0,'','','1','2022-01-23 00:26:53','1','2022-04-20 17:03:10','\0'),
(1217,'流程任务分配规则创建','bpm:task-assign-rule:create',3,21,1193,'','','',0,'','','1','2022-01-23 00:28:15','1','2022-04-20 17:03:10','\0'),
(1218,'流程任务分配规则更新','bpm:task-assign-rule:update',3,22,1193,'','','',0,'','','1','2022-01-23 00:28:41','1','2022-04-20 17:03:10','\0'),
(1219,'流程实例的创建','bpm:process-instance:create',3,2,1201,'','','',0,'','','1','2022-01-23 00:36:15','1','2022-04-20 17:03:10','\0'),
(1220,'流程实例的取消','bpm:process-instance:cancel',3,3,1201,'','','',0,'','','1','2022-01-23 00:36:33','1','2022-04-20 17:03:10','\0'),
(1221,'流程任务的查询','bpm:task:query',3,1,1207,'','','',0,'','','1','2022-01-23 00:38:52','1','2022-04-20 17:03:10','\0'),
(1222,'流程任务的更新','bpm:task:update',3,2,1207,'','','',0,'','','1','2022-01-23 00:39:24','1','2022-04-20 17:03:10','\0'),
(1224,'租户管理','',2,0,1,'tenant','peoples',NULL,0,'','','1','2022-02-20 01:41:13','1','2022-04-20 17:03:10','\0'),
(1225,'租户套餐','',2,0,1224,'package','eye','system/tenantPackage/index',0,'','','','2022-02-19 17:44:06','1','2022-04-21 01:21:25','\0'),
(1226,'租户套餐查询','system:tenant-package:query',3,1,1225,'','','',0,'','','','2022-02-19 17:44:06','','2022-04-20 17:03:10','\0'),
(1227,'租户套餐创建','system:tenant-package:create',3,2,1225,'','','',0,'','','','2022-02-19 17:44:06','','2022-04-20 17:03:10','\0'),
(1228,'租户套餐更新','system:tenant-package:update',3,3,1225,'','','',0,'','','','2022-02-19 17:44:06','','2022-04-20 17:03:10','\0'),
(1229,'租户套餐删除','system:tenant-package:delete',3,4,1225,'','','',0,'','','','2022-02-19 17:44:06','','2022-04-20 17:03:10','\0'),
(1237,'文件配置','',2,0,1243,'file-config','config','infra/fileConfig/index',0,'','','','2022-03-15 14:35:28','1','2022-04-20 17:03:10','\0'),
(1238,'文件配置查询','infra:file-config:query',3,1,1237,'','','',0,'','','','2022-03-15 14:35:28','','2022-04-20 17:03:10','\0'),
(1239,'文件配置创建','infra:file-config:create',3,2,1237,'','','',0,'','','','2022-03-15 14:35:28','','2022-04-20 17:03:10','\0'),
(1240,'文件配置更新','infra:file-config:update',3,3,1237,'','','',0,'','','','2022-03-15 14:35:28','','2022-04-20 17:03:10','\0'),
(1241,'文件配置删除','infra:file-config:delete',3,4,1237,'','','',0,'','','','2022-03-15 14:35:28','','2022-04-20 17:03:10','\0'),
(1242,'文件配置导出','infra:file-config:export',3,5,1237,'','','',0,'','','','2022-03-15 14:35:28','','2022-04-20 17:03:10','\0'),
(1243,'文件管理','',2,5,2,'file','download',NULL,0,'','','1','2022-03-16 23:47:40','1','2022-04-20 17:03:10','\0'),
(1247,'敏感词管理','',2,13,1,'sensitive-word','education','system/sensitiveWord/index',0,'','','','2022-04-07 16:55:03','1','2022-04-20 17:03:10','\0'),
(1248,'敏感词查询','system:sensitive-word:query',3,1,1247,'','','',0,'','','','2022-04-07 16:55:03','','2022-04-20 17:03:10','\0'),
(1249,'敏感词创建','system:sensitive-word:create',3,2,1247,'','','',0,'','','','2022-04-07 16:55:03','','2022-04-20 17:03:10','\0'),
(1250,'敏感词更新','system:sensitive-word:update',3,3,1247,'','','',0,'','','','2022-04-07 16:55:03','','2022-04-20 17:03:10','\0'),
(1251,'敏感词删除','system:sensitive-word:delete',3,4,1247,'','','',0,'','','','2022-04-07 16:55:03','','2022-04-20 17:03:10','\0'),
(1252,'敏感词导出','system:sensitive-word:export',3,5,1247,'','','',0,'','','','2022-04-07 16:55:03','','2022-04-20 17:03:10','\0'),
(1254,'作者动态','',1,0,0,'https://www.iocoder.cn','people',NULL,1,'','','1','2022-04-23 01:03:15','120','2022-07-18 12:30:40','\0'),
(1255,'数据源配置','',2,1,2,'data-source-config','rate','infra/dataSourceConfig/index',0,'','','','2022-04-27 14:37:32','1','2022-04-27 22:42:06','\0'),
(1256,'数据源配置查询','infra:data-source-config:query',3,1,1255,'','','',0,'','','','2022-04-27 14:37:32','','2022-04-27 14:37:32','\0'),
(1257,'数据源配置创建','infra:data-source-config:create',3,2,1255,'','','',0,'','','','2022-04-27 14:37:32','','2022-04-27 14:37:32','\0'),
(1258,'数据源配置更新','infra:data-source-config:update',3,3,1255,'','','',0,'','','','2022-04-27 14:37:32','','2022-04-27 14:37:32','\0'),
(1259,'数据源配置删除','infra:data-source-config:delete',3,4,1255,'','','',0,'','','','2022-04-27 14:37:32','','2022-04-27 14:37:32','\0'),
(1260,'数据源配置导出','infra:data-source-config:export',3,5,1255,'','','',0,'','','','2022-04-27 14:37:32','','2022-04-27 14:37:32','\0'),
(1261,'OAuth 2.0','',1,10,1,'oauth2','people',NULL,0,'','','1','2022-05-09 23:38:17','1','2022-05-11 23:51:46','\0'),
(1263,'应用管理','',2,0,1261,'oauth2/application','tool','system/oauth2/client/index',0,'','','','2022-05-10 16:26:33','1','2022-05-11 23:31:36','\0'),
(1264,'客户端查询','system:oauth2-client:query',3,1,1263,'','','',0,'','','','2022-05-10 16:26:33','1','2022-05-11 00:31:06','\0'),
(1265,'客户端创建','system:oauth2-client:create',3,2,1263,'','','',0,'','','','2022-05-10 16:26:33','1','2022-05-11 00:31:23','\0'),
(1266,'客户端更新','system:oauth2-client:update',3,3,1263,'','','',0,'','','','2022-05-10 16:26:33','1','2022-05-11 00:31:28','\0'),
(1267,'客户端删除','system:oauth2-client:delete',3,4,1263,'','','',0,'','','','2022-05-10 16:26:33','1','2022-05-11 00:31:33','\0'),
(1268,'采购报销','bpm:oa-reim-purchase:queryPage',2,0,1269,'index','merchant','bpm/oa/reim/purchase/index',0,'','','1','2022-07-14 22:42:42','1','2022-08-08 15:18:13','\0'),
(1269,'采购','',1,60,0,'/purchase','merchant',NULL,0,'','','1','2022-07-14 23:27:07','1','2022-08-08 15:18:01','\0'),
(1270,'发起报销','bpm:oa-reim-purchase:create',3,0,1268,'','','',0,'','','1','2022-07-14 23:31:08','1','2022-07-14 23:31:08','\0'),
(1271,'交通报销','',2,1,1272,'index','guide',NULL,0,'','','1','2022-07-14 23:36:50','1','2022-08-08 15:18:36','\0'),
(1272,'交通','',1,61,0,'/transport','guide',NULL,1,'','','1','2022-07-14 23:40:31','120','2022-08-10 11:23:24','\0'),
(1273,'查看详情','bpm:oa-reim-purchase:query',3,1,1268,'','','',0,'','','120','2022-07-18 21:00:51','120','2022-07-18 21:00:51','\0'),
(1274,'查看流程详情','bpm:process-instance:query',3,2,1268,'','','',0,'','','120','2022-07-18 21:20:35','120','2022-07-18 21:43:07','\0'),
(1275,'查看流程定义的BPMN','bpm:process-definition:query',3,3,1268,'','','',0,'','','1','2022-07-19 12:22:05','1','2022-07-19 12:22:05','\0'),
(1276,'查看流程的高亮流程图','bpm:task:query',3,4,1268,'','','',0,'','','1','2022-07-19 12:22:38','1','2022-07-19 12:22:38','\0'),
(1277,'待办','',1,0,0,'/reim','cascader',NULL,0,'','','120','2022-07-20 13:54:19','120','2022-07-20 14:35:02',''),
(1278,'待办任务','',2,0,1277,'todo','cascader','bpm/oa/reim/task/todo',0,'','','120','2022-07-20 14:27:17','120','2022-07-20 14:34:59',''),
(1279,'待办','',1,62,0,'/approval','chart',NULL,0,'','','120','2022-07-20 14:35:54','1','2022-08-08 15:19:38','\0'),
(1280,'待审报销','',2,0,1279,'todo','cascader','bpm/oa/reim/task/todo',0,'','','120','2022-07-20 14:36:52','120','2022-08-09 11:32:06','\0'),
(1281,'查询流程任务','bpm:task:query',3,0,1280,'','','',0,'','','1','2022-07-20 14:48:19','1','2022-07-20 14:48:19','\0'),
(1282,'更新流程任务','bpm:task:update',3,0,1280,'','','',0,'','','1','2022-07-20 14:48:45','1','2022-07-20 14:48:45','\0'),
(1283,'已办','',1,63,0,'/approved','list',NULL,0,'','','1','2022-07-20 14:49:45','1','2022-08-08 15:20:23','\0'),
(1284,'已审报销','',2,0,1283,'done','list','bpm/oa/reim/task/done',0,'','','1','2022-07-20 14:52:03','120','2022-08-09 11:32:14','\0'),
(1285,'打印报销单','bpm:reim-print-batch:create',3,5,1268,'','','',0,'','','1','2022-08-05 16:43:49','1','2022-08-05 16:43:49','\0'),
(1286,'打印','',1,64,0,'/print','dict',NULL,0,'','','1','2022-08-08 14:36:01','1','2022-08-08 15:20:38','\0'),
(1287,'打印批次','bpm:reim-print-batch:page',2,0,1286,'batch','dict','bpm/oa/reim/print/index',0,'','','1','2022-08-08 14:38:09','1','2022-08-08 15:20:58','\0'),
(1288,'查询批次详情','bpm:reim-print-batch:query',3,0,1287,'','','',0,'','','1','2022-08-08 15:13:05','1','2022-08-08 15:13:05','\0'),
(1289,'修改报销信息','bpm:oa-reim-purchase:update',3,1,1287,'','','',0,'','','1','2022-08-08 17:59:42','1','2022-08-08 17:59:42','\0'),
(1290,'打印批次','bpm:reim-print-batch:print',3,2,1287,'','','',0,'','','1','2022-08-09 10:02:44','1','2022-08-09 10:02:44','\0'),
(1291,'更新报销申请人','bpm:reim-print-batch:update-staff',3,3,1287,'','','',0,'','','1','2022-08-09 15:16:51','1','2022-08-09 15:16:51','\0'),
(1292,'测试权限','',1,70,0,'/test','button',NULL,0,'','','120','2022-08-10 11:06:06','120','2022-08-10 11:22:58',''),
(1293,'邮件管理','',1,14,1,'smail','email',NULL,0,'','','120','2022-08-10 21:31:20','120','2022-08-10 21:31:20','\0'),
(1294,'邮件渠道','system:email-mailbox:query',2,0,1293,'channel','email','system/smail/smailChannel',0,'','','120','2022-08-10 21:33:56','120','2022-08-11 15:15:58','\0'),
(1295,'邮件模板','',2,1,1293,'template','email','system/smail/smailTemplate',0,'','','120','2022-08-10 21:35:29','120','2022-08-10 21:37:35','\0'),
(1296,'邮件日志','',2,2,1293,'log','email','system/smail/smailLog',1,'','','120','2022-08-10 21:36:40','120','2022-08-11 16:06:20','\0'),
(1297,'修改邮箱渠道','system:email-mailbox:update',3,0,1294,'','','',0,'','','120','2022-08-11 15:45:34','120','2022-08-11 15:45:34','\0'),
(1298,'删除邮件渠道','system:email-mailbox:delete',3,1,1294,'','','',0,'','','120','2022-08-11 15:45:58','120','2022-08-11 15:45:58','\0'),
(1299,'新增邮件渠道','system:email-mailbox:create',3,2,1294,'','','',0,'','','120','2022-08-11 15:57:55','120','2022-08-11 15:57:55','\0'),
(1300,'新增模板','system:email-template:create',3,0,1295,'','','',0,'','','120','2022-08-11 16:41:58','120','2022-08-11 16:41:58','\0'),
(1301,'导出模板','system:email-template:export',3,1,1295,'','','',0,'','','120','2022-08-11 16:42:19','120','2022-08-11 16:42:19','\0'),
(1302,'修改模板','system:email-template:update',3,2,1295,'','','',0,'','','120','2022-08-11 16:42:54','120','2022-08-11 16:42:54','\0'),
(1303,'删除模板','system:email-template:delete',3,3,1295,'','','',0,'','','120','2022-08-11 16:43:13','120','2022-08-11 16:43:13','\0');

/*Table structure for table `system_notice` */

DROP TABLE IF EXISTS `system_notice`;

CREATE TABLE `system_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告内容',
  `type` tinyint(4) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='通知公告表';

/*Data for the table `system_notice` */

insert  into `system_notice`(`id`,`title`,`content`,`type`,`status`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(1,'芋道的公众','<p>新版本内容133</p>',1,0,'admin','2021-01-05 17:03:48','1','2022-05-04 21:00:20','\0',1),
(2,'维护通知：2018-07-01 若依系统凌晨维护','<p><img src=\"http://test.yudao.iocoder.cn/b7cb3cf49b4b3258bf7309a09dd2f4e5.jpg\">维护内容</p>',2,1,'admin','2021-01-05 17:03:48','1','2022-05-11 12:34:24','\0',1),
(4,'我是测试标题','<p>哈哈哈哈123</p>',1,0,'110','2022-02-22 01:01:25','110','2022-02-22 01:01:46','\0',121);

/*Table structure for table `system_oauth2_access_token` */

DROP TABLE IF EXISTS `system_oauth2_access_token`;

CREATE TABLE `system_oauth2_access_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL COMMENT '用户类型',
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '访问令牌',
  `refresh_token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '刷新令牌',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '授权范围',
  `expires_time` datetime NOT NULL COMMENT '过期时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 访问令牌';

/*Data for the table `system_oauth2_access_token` */

/*Table structure for table `system_oauth2_approve` */

DROP TABLE IF EXISTS `system_oauth2_approve`;

CREATE TABLE `system_oauth2_approve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL COMMENT '用户类型',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '授权范围',
  `approved` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否接受',
  `expires_time` datetime NOT NULL COMMENT '过期时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 批准表';

/*Data for the table `system_oauth2_approve` */

/*Table structure for table `system_oauth2_client` */

DROP TABLE IF EXISTS `system_oauth2_client`;

CREATE TABLE `system_oauth2_client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端密钥',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用图标',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用描述',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `access_token_validity_seconds` int(11) NOT NULL COMMENT '访问令牌的有效期',
  `refresh_token_validity_seconds` int(11) NOT NULL COMMENT '刷新令牌的有效期',
  `redirect_uris` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '可重定向的 URI 地址',
  `authorized_grant_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '授权类型',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '授权范围',
  `auto_approve_scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自动通过的授权范围',
  `authorities` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限',
  `resource_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资源',
  `additional_information` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '附加信息',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 客户端表';

/*Data for the table `system_oauth2_client` */

insert  into `system_oauth2_client`(`id`,`client_id`,`secret`,`name`,`logo`,`description`,`status`,`access_token_validity_seconds`,`refresh_token_validity_seconds`,`redirect_uris`,`authorized_grant_types`,`scopes`,`auto_approve_scopes`,`authorities`,`resource_ids`,`additional_information`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(1,'default','admin123','芋道源码','http://test.yudao.iocoder.cn/a5e2e244368878a366b516805a4aabf1.png','我是描述',0,999999999,8640,'[\"https://www.iocoder.cn\",\"https://doc.iocoder.cn\"]','[\"password\",\"authorization_code\",\"implicit\",\"refresh_token\"]','[\"user.read\",\"user.write\"]','[]','[\"user.read\",\"user.write\"]','[]','{}','1','2022-05-11 21:47:12','1','2022-05-23 13:33:11','\0'),
(40,'test','test2','biubiu','http://test.yudao.iocoder.cn/277a899d573723f1fcdfb57340f00379.png',NULL,0,1800,43200,'[\"https://www.iocoder.cn\"]','[\"password\",\"authorization_code\",\"implicit\"]','[\"user_info\",\"projects\"]','[\"user_info\"]','[]','[]','{}','1','2022-05-12 00:28:20','1','2022-05-14 15:11:31','\0');

/*Table structure for table `system_oauth2_code` */

DROP TABLE IF EXISTS `system_oauth2_code`;

CREATE TABLE `system_oauth2_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL COMMENT '用户类型',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '授权码',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '授权范围',
  `expires_time` datetime NOT NULL COMMENT '过期时间',
  `redirect_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '可重定向的 URI 地址',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 授权码表';

/*Data for the table `system_oauth2_code` */

/*Table structure for table `system_oauth2_refresh_token` */

DROP TABLE IF EXISTS `system_oauth2_refresh_token`;

CREATE TABLE `system_oauth2_refresh_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `refresh_token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '刷新令牌',
  `user_type` tinyint(4) NOT NULL COMMENT '用户类型',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '授权范围',
  `expires_time` datetime NOT NULL COMMENT '过期时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='刷新令牌';

/*Data for the table `system_oauth2_refresh_token` */

/*Table structure for table `system_operate_log` */

DROP TABLE IF EXISTS `system_operate_log`;

CREATE TABLE `system_operate_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `trace_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链路追踪编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块标题',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作名',
  `type` bigint(20) NOT NULL DEFAULT '0' COMMENT '操作分类',
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作内容',
  `exts` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '拓展字段',
  `request_method` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求方法名',
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求地址',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户 IP',
  `user_agent` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '浏览器 UA',
  `java_method` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Java 方法名',
  `java_method_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Java 方法的参数',
  `start_time` datetime NOT NULL COMMENT '操作时间',
  `duration` int(11) NOT NULL COMMENT '执行时长',
  `result_code` int(11) NOT NULL DEFAULT '0' COMMENT '结果码',
  `result_msg` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '结果提示',
  `result_data` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '结果数据',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志记录';

/*Data for the table `system_operate_log` */

/*Table structure for table `system_post` */

DROP TABLE IF EXISTS `system_post`;

CREATE TABLE `system_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位编码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位名称',
  `sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` tinyint(4) NOT NULL COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗位信息表';

/*Data for the table `system_post` */

insert  into `system_post`(`id`,`code`,`name`,`sort`,`status`,`remark`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(1,'ceo','董事长',1,0,'','admin','2021-01-06 17:03:48','1','2022-04-19 16:53:39','\0',1),
(2,'se','项目经理',2,0,'','admin','2021-01-05 17:03:48','1','2021-12-12 10:47:47','\0',1),
(4,'user','普通员工',4,0,'111','admin','2021-01-05 17:03:48','1','2022-05-04 22:46:35','\0',1);

/*Table structure for table `system_role` */

DROP TABLE IF EXISTS `system_role`;

CREATE TABLE `system_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` tinyint(4) NOT NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `data_scope_dept_ids` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据范围(指定部门数组)',
  `status` tinyint(4) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `type` tinyint(4) NOT NULL COMMENT '角色类型',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息表';

/*Data for the table `system_role` */

insert  into `system_role`(`id`,`name`,`code`,`sort`,`data_scope`,`data_scope_dept_ids`,`status`,`type`,`remark`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(1,'超级管理员','super_admin',1,1,'',0,1,'超级管理员','admin','2021-01-05 17:03:48','','2022-02-22 05:08:21','\0',1),
(2,'普通角色','common',2,2,'',0,1,'普通角色','admin','2021-01-05 17:03:48','','2022-02-22 05:08:20','\0',1),
(101,'测试账号','test',0,1,'[]',0,2,'132','','2021-01-06 13:49:35','1','2022-04-01 21:37:13','\0',1),
(109,'租户管理员','tenant_admin',0,1,'',0,1,'系统自动生成','1','2022-02-22 00:56:14','1','2022-02-22 00:56:14','\0',121),
(110,'测试角色','test',0,1,'[]',0,2,'嘿嘿','110','2022-02-23 00:14:34','110','2022-02-23 13:14:58','\0',121),
(111,'租户管理员','tenant_admin',0,1,'',0,1,'系统自动生成','1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(113,'租户管理员','tenant_admin',0,1,'',0,1,'系统自动生成','1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(123,'租户管理员','tenant_admin',0,1,'',0,1,'系统自动生成','1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(124,'租户管理员','tenant_admin',0,1,'',0,1,'系统自动生成','1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(128,'财务人员','financial_officer',0,1,'[]',0,2,NULL,'120','2022-07-18 21:46:30','120','2022-08-05 16:45:29','\0',135),
(129,'成员','member',0,5,'[]',0,2,'团队（部门）成员','120','2022-07-18 22:57:14','120','2022-08-09 17:00:59','\0',135),
(130,'负责人','team_leader',0,4,'[]',0,2,'团队（部门）负责人','120','2022-07-18 22:57:56','120','2022-08-09 10:05:13','\0',135);

/*Table structure for table `system_role_menu` */

DROP TABLE IF EXISTS `system_role_menu`;

CREATE TABLE `system_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2957 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色和菜单关联表';

/*Data for the table `system_role_menu` */

insert  into `system_role_menu`(`id`,`role_id`,`menu_id`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(263,109,1,'1','2022-02-22 00:56:14','1','2022-02-22 00:56:14','\0',121),
(434,2,1,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(454,2,1093,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(455,2,1094,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(460,2,1100,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(467,2,1107,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(470,2,1110,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(476,2,1117,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(477,2,100,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(478,2,101,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(479,2,102,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(480,2,1126,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(481,2,103,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(483,2,104,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(485,2,105,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(488,2,107,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(490,2,108,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(492,2,109,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(498,2,1138,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(523,2,1224,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(524,2,1225,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(541,2,500,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(543,2,501,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12','\0',1),
(675,2,2,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(689,2,1077,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(690,2,1078,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(692,2,1083,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(693,2,1084,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(699,2,1090,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(703,2,106,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(704,2,110,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(705,2,111,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(706,2,112,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(707,2,113,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57','\0',1),
(1296,110,1,'110','2022-02-23 00:23:55','110','2022-02-23 00:23:55','\0',121),
(1486,109,103,'1','2022-02-23 19:32:14','1','2022-02-23 19:32:14','\0',121),
(1487,109,104,'1','2022-02-23 19:32:14','1','2022-02-23 19:32:14','\0',121),
(1489,1,1,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1490,1,2,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1494,1,1077,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1495,1,1078,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1496,1,1083,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1497,1,1084,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1498,1,1090,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1499,1,1093,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1500,1,1094,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1501,1,1100,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1502,1,1107,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1503,1,1110,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1505,1,1117,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1506,1,100,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1507,1,101,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1508,1,102,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1509,1,1126,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1510,1,103,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1511,1,104,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1512,1,105,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1513,1,106,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1514,1,107,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1515,1,108,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1516,1,109,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1517,1,110,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1518,1,111,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1519,1,112,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1520,1,113,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1522,1,1138,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1525,1,1224,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1526,1,1225,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1527,1,500,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1528,1,501,'1','2022-02-23 20:03:57','1','2022-02-23 20:03:57','\0',1),
(1529,109,1024,'1','2022-02-23 20:30:14','1','2022-02-23 20:30:14','\0',121),
(1530,109,1025,'1','2022-02-23 20:30:14','1','2022-02-23 20:30:14','\0',121),
(1536,109,1017,'1','2022-02-23 20:30:14','1','2022-02-23 20:30:14','\0',121),
(1537,109,1018,'1','2022-02-23 20:30:14','1','2022-02-23 20:30:14','\0',121),
(1538,109,1019,'1','2022-02-23 20:30:14','1','2022-02-23 20:30:14','\0',121),
(1539,109,1020,'1','2022-02-23 20:30:14','1','2022-02-23 20:30:14','\0',121),
(1540,109,1021,'1','2022-02-23 20:30:14','1','2022-02-23 20:30:14','\0',121),
(1541,109,1022,'1','2022-02-23 20:30:14','1','2022-02-23 20:30:14','\0',121),
(1542,109,1023,'1','2022-02-23 20:30:14','1','2022-02-23 20:30:14','\0',121),
(1576,111,1024,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1577,111,1025,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1578,111,1,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1584,111,103,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1585,111,104,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1587,111,1017,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1588,111,1018,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1589,111,1019,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1590,111,1020,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1591,111,1021,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1592,111,1022,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1593,111,1023,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),
(1594,109,102,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',121),
(1595,109,1013,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',121),
(1596,109,1014,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',121),
(1597,109,1015,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',121),
(1598,109,1016,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',121),
(1599,111,102,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',122),
(1600,111,1013,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',122),
(1601,111,1014,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',122),
(1602,111,1015,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',122),
(1603,111,1016,'1','2022-03-19 18:39:13','1','2022-03-19 18:39:13','\0',122),
(1604,101,1216,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1605,101,1217,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1606,101,1218,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1607,101,1219,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1608,101,1220,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1609,101,1221,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1610,101,5,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1611,101,1222,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1612,101,1118,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1613,101,1119,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1614,101,1120,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1615,101,1185,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1616,101,1186,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1617,101,1187,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1618,101,1188,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1619,101,1189,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1620,101,1190,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1621,101,1191,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1622,101,1192,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1623,101,1193,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1624,101,1194,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1625,101,1195,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1626,101,1196,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1627,101,1197,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1628,101,1198,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1629,101,1199,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1630,101,1200,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1631,101,1201,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1632,101,1202,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1633,101,1207,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1634,101,1208,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1635,101,1209,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1636,101,1210,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1637,101,1211,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1638,101,1212,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1639,101,1213,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1640,101,1215,'1','2022-03-19 21:45:52','1','2022-03-19 21:45:52','\0',1),
(1641,101,2,'1','2022-04-01 22:21:24','1','2022-04-01 22:21:24','\0',1),
(1642,101,1031,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1643,101,1032,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1644,101,1033,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1645,101,1034,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1646,101,1035,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1647,101,1050,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1648,101,1051,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1649,101,1052,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1650,101,1053,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1651,101,1054,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1652,101,1056,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1653,101,1057,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1654,101,1058,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1655,101,1059,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1656,101,1060,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1657,101,1066,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1658,101,1067,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1659,101,1070,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1660,101,1071,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1661,101,1072,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1662,101,1073,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1663,101,1074,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1664,101,1075,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1665,101,1076,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1666,101,1077,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1667,101,1078,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1668,101,1082,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1669,101,1083,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1670,101,1084,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1671,101,1085,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1672,101,1086,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1673,101,1087,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1674,101,1088,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1675,101,1089,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1676,101,1090,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1677,101,1091,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1678,101,1092,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1679,101,1237,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1680,101,1238,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1681,101,1239,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1682,101,1240,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1683,101,1241,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1684,101,1242,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1685,101,1243,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1687,101,106,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1688,101,110,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1689,101,111,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1690,101,112,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1691,101,113,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1692,101,114,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1693,101,115,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1694,101,116,'1','2022-04-01 22:21:37','1','2022-04-01 22:21:37','\0',1),
(1712,113,1024,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1713,113,1025,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1714,113,1,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1715,113,102,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1716,113,103,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1717,113,104,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1718,113,1013,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1719,113,1014,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1720,113,1015,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1721,113,1016,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1722,113,1017,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1723,113,1018,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1724,113,1019,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1725,113,1020,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1726,113,1021,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1727,113,1022,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1728,113,1023,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),
(1882,123,1024,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1883,123,1025,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1884,123,1,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1885,123,102,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1886,123,103,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1887,123,104,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1888,123,1013,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1889,123,1014,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1890,123,1015,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1891,123,1016,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1892,123,1017,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1893,123,1018,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1894,123,1019,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1895,123,1020,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1896,123,1021,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1897,123,1022,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1898,123,1023,'1','2022-06-24 18:18:20','1','2022-06-24 18:18:20','\0',134),
(1899,1,1024,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1900,1,1025,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1901,1,1026,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1902,1,1027,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1903,1,1028,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1904,1,1029,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1905,1,5,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1906,1,1030,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1907,1,1031,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1908,1,1032,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1909,1,1033,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1910,1,1034,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1911,1,1035,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1912,1,1036,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1913,1,1037,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1914,1,1038,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1915,1,1039,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1916,1,1040,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1917,1,1042,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1918,1,1043,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1919,1,1045,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1920,1,1046,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1921,1,1048,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1922,1,1050,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1923,1,1051,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1924,1,1052,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1925,1,1053,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1926,1,1054,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1927,1,1056,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1928,1,1057,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1929,1,1058,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1930,1,1059,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1931,1,1060,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1932,1,1063,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1933,1,1064,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1934,1,1065,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1935,1,1066,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1936,1,1067,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1937,1,1070,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1938,1,1071,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1939,1,1072,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1940,1,1073,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1941,1,1074,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1942,1,1075,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1943,1,1076,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1944,1,1082,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1945,1,1085,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1946,1,1086,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1947,1,1087,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1948,1,1088,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1949,1,1089,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1950,1,1091,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1951,1,1092,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1952,1,1095,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1953,1,1096,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1954,1,1097,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1955,1,1098,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1956,1,1101,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1957,1,1102,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1958,1,1103,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1959,1,1104,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1960,1,1105,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1961,1,1106,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1962,1,1108,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1963,1,1109,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1964,1,1111,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1965,1,1112,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1966,1,1113,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1967,1,1114,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1968,1,1115,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1969,1,1118,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1970,1,1119,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1971,1,1120,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1972,1,1127,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1973,1,1128,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1974,1,1129,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1975,1,1130,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1976,1,1131,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1977,1,1132,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1978,1,1133,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1979,1,1134,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1980,1,1135,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1981,1,1136,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1982,1,1137,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1983,1,114,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1984,1,1139,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1985,1,115,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1986,1,1140,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1987,1,116,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1988,1,1141,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1989,1,1142,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1990,1,1143,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1991,1,1150,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1992,1,1161,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1993,1,1162,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1994,1,1163,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1995,1,1164,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1996,1,1165,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1997,1,1166,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1998,1,1173,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(1999,1,1174,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2000,1,1175,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2001,1,1176,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2002,1,1177,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2003,1,1178,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2004,1,1179,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2005,1,1180,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2006,1,1181,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2007,1,1182,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2008,1,1183,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2009,1,1184,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2010,1,1185,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2011,1,1186,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2012,1,1187,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2013,1,1188,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2014,1,1189,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2015,1,1190,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2016,1,1191,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2017,1,1192,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2018,1,1193,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2019,1,1194,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2020,1,1195,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2021,1,1196,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2022,1,1197,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2023,1,1198,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2024,1,1199,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2025,1,1200,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2026,1,1201,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2027,1,1202,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2028,1,1207,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2029,1,1208,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2030,1,1209,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2031,1,1210,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2032,1,1211,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2033,1,1212,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2034,1,1213,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2035,1,1215,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2036,1,1216,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2037,1,1217,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2038,1,1218,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2039,1,1219,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2040,1,1220,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2041,1,1221,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2042,1,1222,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2043,1,1226,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2044,1,1227,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2045,1,1228,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2046,1,1229,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2047,1,1237,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2048,1,1238,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2049,1,1239,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2050,1,1240,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2051,1,1241,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2052,1,1242,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2053,1,1243,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2054,1,1247,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2055,1,1248,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2056,1,1249,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2057,1,1250,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2058,1,1251,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2059,1,1252,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2060,1,1254,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2061,1,1255,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2062,1,1256,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2063,1,1257,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2064,1,1258,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2065,1,1259,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2066,1,1260,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2067,1,1261,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2068,1,1263,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2069,1,1264,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2070,1,1265,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2071,1,1266,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2072,1,1267,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2073,1,1268,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2074,1,1269,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2075,1,1270,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2076,1,1001,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2077,1,1002,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2078,1,1003,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2079,1,1004,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2080,1,1005,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2081,1,1006,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2082,1,1007,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2083,1,1008,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2084,1,1009,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2085,1,1010,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2086,1,1011,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2087,1,1012,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2088,1,1013,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2089,1,1014,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2090,1,1015,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2091,1,1016,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2092,1,1017,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2093,1,1018,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2094,1,1019,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2095,1,1020,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2096,1,1021,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2097,1,1022,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2098,1,1023,'1','2022-07-14 23:31:37','1','2022-07-14 23:31:37','\0',1),
(2099,123,1026,'1','2022-07-18 00:28:01','1','2022-07-18 00:28:01','\0',134),
(2100,123,2,'1','2022-07-18 00:28:01','1','2022-07-18 00:28:01','\0',134),
(2101,123,1027,'1','2022-07-18 00:28:01','1','2022-07-18 00:28:01','\0',134),
(2102,123,1028,'1','2022-07-18 00:28:01','1','2022-07-18 00:28:01','\0',134),
(2103,123,1029,'1','2022-07-18 00:28:01','1','2022-07-18 00:28:01','\0',134),
(2104,123,5,'1','2022-07-18 00:28:01','1','2022-07-18 00:28:01','\0',134),
(2105,123,1030,'1','2022-07-18 00:28:01','1','2022-07-18 00:28:01','\0',134),
(2106,123,1031,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2107,123,1032,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2108,123,1033,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2109,123,1034,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2110,123,1035,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2111,123,1036,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2112,123,1037,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2113,123,1038,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2114,123,1039,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2115,123,1040,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2116,123,1042,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2117,123,1043,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2118,123,1045,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2119,123,1046,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2120,123,1048,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2121,123,1050,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2122,123,1051,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2123,123,1052,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2124,123,1053,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2125,123,1054,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2126,123,1056,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2127,123,1057,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2128,123,1058,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2129,123,1059,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2130,123,1060,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2131,123,1063,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2132,123,1064,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2133,123,1065,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2134,123,1066,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2135,123,1067,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2136,123,1070,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2137,123,1071,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2138,123,1072,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2139,123,1073,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2140,123,1074,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2141,123,1075,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2142,123,1076,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2143,123,1077,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2144,123,1078,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2145,123,1082,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2146,123,1083,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2147,123,1084,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2148,123,1085,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2149,123,1086,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2150,123,1087,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2151,123,1088,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2152,123,1089,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2153,123,1090,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2154,123,1091,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2155,123,1092,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2156,123,1093,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2157,123,1094,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2158,123,1095,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2159,123,1096,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2160,123,1097,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2161,123,1098,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2162,123,1100,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2163,123,1101,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2164,123,1102,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2165,123,1103,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2166,123,1104,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2167,123,1105,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2168,123,1106,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2169,123,1107,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2170,123,1108,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2171,123,1109,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2172,123,1110,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2173,123,1111,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2174,123,1112,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2175,123,1113,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2176,123,1114,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2177,123,1115,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2178,123,1117,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2179,123,1118,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2180,123,1119,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2181,123,1120,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2182,123,100,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2183,123,101,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2184,123,1126,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2185,123,1127,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2186,123,1128,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2187,123,105,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2188,123,1129,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2189,123,1130,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2190,123,106,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2191,123,107,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2192,123,1131,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2193,123,108,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2194,123,1132,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2195,123,109,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2196,123,1133,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2197,123,1134,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2198,123,110,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2199,123,1135,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2200,123,111,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2201,123,1136,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2202,123,112,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2203,123,1137,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2204,123,113,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2205,123,1138,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2206,123,114,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2207,123,1139,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2208,123,115,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2209,123,1140,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2210,123,116,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2211,123,1141,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2212,123,1142,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2213,123,1143,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2214,123,1150,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2215,123,1161,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2216,123,1162,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2217,123,1163,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2218,123,1164,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2219,123,1165,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2220,123,1166,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2221,123,1173,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2222,123,1174,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2223,123,1175,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2224,123,1176,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2225,123,1177,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2226,123,1178,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2227,123,1179,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2228,123,1180,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2229,123,1181,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2230,123,1182,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2231,123,1183,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2232,123,1184,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2233,123,1185,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2234,123,1186,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2235,123,1187,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2236,123,1188,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2237,123,1189,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2238,123,1190,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2239,123,1191,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2240,123,1192,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2241,123,1193,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2242,123,1194,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2243,123,1195,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2244,123,1196,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2245,123,1197,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2246,123,1198,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2247,123,1199,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2248,123,1200,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2249,123,1201,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2250,123,1202,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2251,123,1207,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2252,123,1208,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2253,123,1209,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2254,123,1210,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2255,123,1211,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2256,123,1212,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2257,123,1213,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2258,123,1215,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2259,123,1216,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2260,123,1217,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2261,123,1218,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2262,123,1219,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2263,123,1220,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2264,123,1221,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2265,123,1222,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2266,123,1224,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2267,123,1225,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2268,123,1226,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2269,123,1227,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2270,123,1228,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2271,123,1229,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2272,123,1237,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2273,123,1238,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2274,123,1239,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2275,123,1240,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2276,123,1241,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2277,123,1242,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2278,123,1243,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2279,123,1247,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2280,123,1248,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2281,123,1249,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2282,123,1250,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2283,123,1251,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2284,123,1252,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2285,123,1254,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2286,123,1255,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2287,123,1256,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2288,123,1257,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2289,123,1258,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2290,123,1259,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2291,123,1260,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2292,123,1261,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2293,123,1263,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2294,123,1264,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2295,123,1265,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2296,123,1266,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2297,123,1267,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2298,123,1268,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2299,123,1269,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2300,123,1270,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2301,123,1271,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2302,123,1272,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2303,123,1001,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2304,123,1002,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2305,123,1003,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2306,123,1004,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2307,123,1005,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2308,123,1006,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2309,123,1007,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2310,123,1008,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2311,123,1009,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2312,123,1010,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2313,123,1011,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2314,123,1012,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2315,123,500,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2316,123,501,'1','2022-07-18 00:28:02','1','2022-07-18 00:28:02','\0',134),
(2317,124,1024,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2318,124,1,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2319,124,1025,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2320,124,1026,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2321,124,2,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2322,124,1027,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2323,124,1028,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2324,124,1029,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2325,124,5,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2326,124,1030,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2327,124,1031,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2328,124,1032,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2329,124,1033,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2330,124,1034,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2331,124,1035,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2332,124,1036,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2333,124,1037,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2334,124,1038,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2335,124,1039,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2336,124,1040,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2337,124,1042,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2338,124,1043,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2339,124,1045,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2340,124,1046,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2341,124,1048,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2342,124,1050,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2343,124,1051,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2344,124,1052,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2345,124,1053,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2346,124,1054,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2347,124,1056,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2348,124,1057,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2349,124,1058,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2350,124,1059,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2351,124,1060,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2352,124,1063,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2353,124,1064,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2354,124,1065,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2355,124,1066,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2356,124,1067,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2357,124,1070,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2358,124,1071,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2359,124,1072,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2360,124,1073,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2361,124,1074,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2362,124,1075,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2363,124,1076,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2364,124,1077,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2365,124,1078,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2366,124,1082,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2367,124,1083,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2368,124,1084,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2369,124,1085,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2370,124,1086,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2371,124,1087,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2372,124,1088,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2373,124,1089,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2374,124,1090,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2375,124,1091,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2376,124,1092,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2377,124,1093,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2378,124,1094,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2379,124,1095,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2380,124,1096,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2381,124,1097,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2382,124,1098,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2383,124,1100,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2384,124,1101,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2385,124,1102,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2386,124,1103,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2387,124,1104,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2388,124,1105,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2389,124,1106,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2390,124,1107,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2391,124,1108,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2392,124,1109,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2393,124,1110,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2394,124,1111,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2395,124,1112,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2396,124,1113,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2397,124,1114,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2398,124,1115,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2399,124,1117,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2400,124,1118,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2401,124,1119,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2402,124,1120,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2403,124,100,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2404,124,101,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2405,124,102,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2406,124,1126,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2407,124,103,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2408,124,1127,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2409,124,104,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2410,124,1128,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2411,124,105,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2412,124,1129,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2413,124,1130,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2414,124,106,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2415,124,107,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2416,124,1131,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2417,124,108,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2418,124,1132,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2419,124,109,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2420,124,1133,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2421,124,1134,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2422,124,110,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2423,124,1135,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2424,124,111,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2425,124,1136,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2426,124,112,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2427,124,1137,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2428,124,113,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2429,124,1138,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2430,124,114,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2431,124,1139,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2432,124,115,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2433,124,1140,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2434,124,116,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2435,124,1141,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2436,124,1142,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2437,124,1143,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2438,124,1150,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2439,124,1161,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2440,124,1162,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2441,124,1163,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2442,124,1164,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2443,124,1165,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2444,124,1166,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2445,124,1173,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2446,124,1174,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2447,124,1175,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2448,124,1176,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2449,124,1177,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2450,124,1178,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2451,124,1179,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2452,124,1180,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2453,124,1181,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2454,124,1182,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2455,124,1183,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2456,124,1184,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2457,124,1185,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2458,124,1186,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2459,124,1187,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2460,124,1188,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2461,124,1189,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2462,124,1190,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2463,124,1191,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2464,124,1192,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2465,124,1193,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2466,124,1194,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2467,124,1195,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2468,124,1196,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2469,124,1197,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2470,124,1198,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2471,124,1199,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2472,124,1200,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2473,124,1201,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2474,124,1202,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2475,124,1207,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2476,124,1208,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2477,124,1209,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2478,124,1210,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2479,124,1211,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2480,124,1212,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2481,124,1213,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2482,124,1215,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2483,124,1216,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2484,124,1217,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2485,124,1218,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2486,124,1219,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2487,124,1220,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2488,124,1221,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2489,124,1222,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2490,124,1224,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2491,124,1225,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2492,124,1226,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2493,124,1227,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2494,124,1228,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2495,124,1229,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2496,124,1237,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2497,124,1238,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2498,124,1239,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2499,124,1240,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2500,124,1241,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2501,124,1242,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2502,124,1243,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2503,124,1247,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2504,124,1248,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2505,124,1249,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2506,124,1250,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2507,124,1251,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2508,124,1252,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2509,124,1254,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2510,124,1255,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2511,124,1256,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2512,124,1257,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2513,124,1258,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2514,124,1259,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2515,124,1260,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2516,124,1261,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2517,124,1263,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2518,124,1264,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2519,124,1265,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2520,124,1266,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2521,124,1267,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2522,124,1268,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2523,124,1269,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2524,124,1270,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2525,124,1271,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2526,124,1272,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2527,124,1001,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2528,124,1002,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2529,124,1003,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2530,124,1004,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2531,124,1005,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2532,124,1006,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2533,124,1007,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2534,124,1008,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2535,124,1009,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2536,124,1010,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2537,124,1011,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2538,124,1012,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2539,124,500,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2540,124,1013,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2541,124,501,'1','2022-07-18 00:57:05','1','2022-07-19 11:56:37','',135),
(2542,124,1014,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2543,124,1015,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2544,124,1016,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2545,124,1017,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2546,124,1018,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2547,124,1019,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2548,124,1020,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2549,124,1021,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2550,124,1022,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2551,124,1023,'1','2022-07-18 00:57:05','1','2022-07-18 00:57:05','\0',135),
(2552,125,1,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2553,125,100,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2554,125,103,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2555,125,1001,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2556,125,1002,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2557,125,1003,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2558,125,1004,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2559,125,1005,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2560,125,1006,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2561,125,1007,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2562,125,1268,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2563,125,1269,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2564,125,1270,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2565,125,1271,'120','2022-07-18 12:17:11','120','2022-07-18 21:21:50','',135),
(2566,125,1272,'120','2022-07-18 12:17:11','120','2022-07-18 21:21:50','',135),
(2567,125,1017,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2568,125,1018,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2569,125,1019,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2570,125,1020,'120','2022-07-18 12:17:11','120','2022-07-18 21:46:00','',135),
(2571,126,1,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2572,126,100,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2573,126,1001,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2574,126,1002,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2575,126,1003,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2576,126,1004,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2577,126,1005,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2578,126,1006,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2579,126,1007,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2580,126,1268,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2581,126,1269,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2582,126,1270,'120','2022-07-18 12:20:45','120','2022-07-18 21:45:57','',135),
(2583,126,1271,'120','2022-07-18 12:20:45','120','2022-07-18 21:21:47','',135),
(2584,126,1272,'120','2022-07-18 12:20:45','120','2022-07-18 21:21:47','',135),
(2585,127,1272,'120','2022-07-18 12:21:25','120','2022-07-18 21:21:44','',135),
(2586,127,1268,'120','2022-07-18 12:21:25','120','2022-07-18 21:05:21','',135),
(2587,127,1269,'120','2022-07-18 12:21:25','120','2022-07-18 21:05:21','',135),
(2588,127,1270,'120','2022-07-18 12:21:25','120','2022-07-18 21:05:21','',135),
(2589,127,1271,'120','2022-07-18 12:21:25','120','2022-07-18 21:21:44','',135),
(2590,126,1185,'120','2022-07-18 21:04:14','120','2022-07-18 21:45:57','',135),
(2591,126,1221,'120','2022-07-18 21:04:14','120','2022-07-18 21:45:57','',135),
(2592,126,1222,'120','2022-07-18 21:04:14','120','2022-07-18 21:45:57','',135),
(2593,126,1200,'120','2022-07-18 21:04:14','120','2022-07-18 21:45:57','',135),
(2594,126,1207,'120','2022-07-18 21:04:14','120','2022-07-18 21:45:57','',135),
(2595,125,1221,'120','2022-07-18 21:04:28','120','2022-07-18 21:46:00','',135),
(2596,125,1222,'120','2022-07-18 21:04:28','120','2022-07-18 21:46:00','',135),
(2597,125,1185,'120','2022-07-18 21:04:28','120','2022-07-18 21:46:00','',135),
(2598,125,1200,'120','2022-07-18 21:04:28','120','2022-07-18 21:46:00','',135),
(2599,125,1207,'120','2022-07-18 21:04:28','120','2022-07-18 21:46:00','',135),
(2600,127,1268,'120','2022-07-18 21:05:29','120','2022-07-18 21:45:55','',135),
(2601,127,1269,'120','2022-07-18 21:05:29','120','2022-07-18 21:45:55','',135),
(2602,127,1270,'120','2022-07-18 21:05:29','120','2022-07-18 21:45:55','',135),
(2603,128,1268,'120','2022-07-18 22:56:44','120','2022-07-19 11:56:37','',135),
(2604,128,1269,'120','2022-07-18 22:56:44','120','2022-07-19 11:56:37','',135),
(2605,128,1270,'120','2022-07-18 22:56:44','120','2022-07-19 11:56:37','',135),
(2606,129,1268,'120','2022-07-18 22:57:20','120','2022-07-19 11:56:37','',135),
(2607,129,1269,'120','2022-07-18 22:57:20','120','2022-07-19 11:56:37','',135),
(2608,129,1270,'120','2022-07-18 22:57:20','120','2022-07-19 11:56:37','',135),
(2609,130,1268,'120','2022-07-18 22:58:00','120','2022-07-19 11:56:37','',135),
(2610,130,1269,'120','2022-07-18 22:58:00','120','2022-07-19 11:56:37','',135),
(2611,130,1270,'120','2022-07-18 22:58:00','120','2022-07-19 11:56:37','',135),
(2612,124,1026,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2613,124,2,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2614,124,1027,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2615,124,1028,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2616,124,1029,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2617,124,5,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2618,124,1030,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2619,124,1031,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2620,124,1032,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2621,124,1033,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2622,124,1034,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2623,124,1035,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2624,124,1036,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2625,124,1037,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2626,124,1038,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2627,124,1039,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2628,124,1040,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2629,124,1042,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2630,124,1043,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2631,124,1045,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2632,124,1046,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2633,124,1048,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2634,124,1050,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2635,124,1051,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2636,124,1052,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2637,124,1053,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2638,124,1054,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2639,124,1056,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2640,124,1057,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2641,124,1058,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2642,124,1059,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2643,124,1060,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2644,124,1063,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2645,124,1064,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2646,124,1065,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2647,124,1066,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2648,124,1067,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2649,124,1070,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2650,124,1071,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2651,124,1072,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2652,124,1073,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2653,124,1074,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2654,124,1075,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2655,124,1076,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2656,124,1077,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2657,124,1078,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2658,124,1082,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2659,124,1083,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2660,124,1084,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2661,124,1085,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2662,124,1086,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2663,124,1087,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2664,124,1088,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2665,124,1089,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2666,124,1090,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2667,124,1091,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2668,124,1092,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2669,124,1093,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2670,124,1094,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2671,124,1095,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2672,124,1096,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2673,124,1097,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2674,124,1098,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2675,124,1100,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2676,124,1101,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2677,124,1102,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2678,124,1103,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2679,124,1104,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2680,124,1105,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2681,124,1106,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2682,124,1107,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2683,124,1108,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2684,124,1109,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2685,124,1110,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2686,124,1111,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2687,124,1112,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2688,124,1113,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2689,124,1114,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2690,124,1115,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2691,124,1117,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2692,124,1118,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2693,124,1119,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2694,124,1120,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2695,124,100,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2696,124,101,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2697,124,1126,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2698,124,1127,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2699,124,1128,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2700,124,105,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2701,124,1129,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2702,124,1130,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2703,124,106,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2704,124,107,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2705,124,1131,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2706,124,108,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2707,124,1132,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2708,124,109,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2709,124,1133,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2710,124,1134,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2711,124,110,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2712,124,1135,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2713,124,111,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2714,124,1136,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2715,124,112,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2716,124,1137,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2717,124,113,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2718,124,1138,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2719,124,114,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2720,124,1139,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2721,124,115,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2722,124,1140,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2723,124,116,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2724,124,1141,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2725,124,1142,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2726,124,1143,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2727,124,1150,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2728,124,1161,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2729,124,1162,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2730,124,1163,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2731,124,1164,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2732,124,1165,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2733,124,1166,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2734,124,1173,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2735,124,1174,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2736,124,1175,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2737,124,1176,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2738,124,1177,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2739,124,1178,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2740,124,1179,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2741,124,1180,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2742,124,1181,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2743,124,1182,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2744,124,1183,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2745,124,1184,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2746,124,1185,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2747,124,1186,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2748,124,1187,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2749,124,1188,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2750,124,1189,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2751,124,1190,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2752,124,1191,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2753,124,1192,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2754,124,1193,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2755,124,1194,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2756,124,1195,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2757,124,1196,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2758,124,1197,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2759,124,1198,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2760,124,1199,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2761,124,1200,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2762,124,1201,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2763,124,1202,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2764,124,1207,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2765,124,1208,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2766,124,1209,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2767,124,1210,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2768,124,1211,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2769,124,1212,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2770,124,1213,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2771,124,1215,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2772,124,1216,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2773,124,1217,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2774,124,1218,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2775,124,1219,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2776,124,1220,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2777,124,1221,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2778,124,1222,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2779,124,1224,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2780,124,1225,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2781,124,1226,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2782,124,1227,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2783,124,1228,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2784,124,1229,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2785,124,1237,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2786,124,1238,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2787,124,1239,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2788,124,1240,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2789,124,1241,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2790,124,1242,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2791,124,1243,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2792,124,1247,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2793,124,1248,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2794,124,1249,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2795,124,1250,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2796,124,1251,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2797,124,1252,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2798,124,1254,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:25','',135),
(2799,124,1255,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2800,124,1256,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2801,124,1257,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2802,124,1258,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2803,124,1259,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2804,124,1260,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2805,124,1261,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2806,124,1263,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2807,124,1264,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2808,124,1265,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2809,124,1266,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2810,124,1267,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2811,124,1268,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2812,124,1269,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2813,124,1270,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2814,124,1271,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2815,124,1272,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2816,124,1001,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2817,124,1002,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2818,124,1003,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2819,124,1004,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2820,124,1005,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2821,124,1006,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2822,124,1007,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2823,124,1008,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2824,124,1009,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2825,124,1010,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2826,124,1011,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2827,124,1012,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2828,124,500,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2829,124,501,'1','2022-07-19 11:57:16','1','2022-07-19 11:57:16','\0',135),
(2830,124,1273,'1','2022-07-19 11:57:25','1','2022-07-19 11:57:25','\0',135),
(2831,124,1274,'1','2022-07-19 11:57:25','1','2022-07-19 11:57:25','\0',135),
(2832,130,1273,'120','2022-07-19 11:58:35','120','2022-07-19 11:58:35','\0',135),
(2833,130,1274,'120','2022-07-19 11:58:35','120','2022-07-19 11:58:35','\0',135),
(2834,130,1268,'120','2022-07-19 11:58:35','120','2022-07-19 11:58:35','\0',135),
(2835,130,1269,'120','2022-07-19 11:58:35','120','2022-07-19 11:58:35','\0',135),
(2836,130,1270,'120','2022-07-19 11:58:35','120','2022-07-19 11:58:35','\0',135),
(2837,129,1273,'120','2022-07-19 11:58:40','120','2022-07-19 11:58:40','\0',135),
(2838,129,1274,'120','2022-07-19 11:58:40','120','2022-07-19 11:58:40','\0',135),
(2839,129,1268,'120','2022-07-19 11:58:40','120','2022-07-19 11:58:40','\0',135),
(2840,129,1269,'120','2022-07-19 11:58:40','120','2022-07-19 11:58:40','\0',135),
(2841,129,1270,'120','2022-07-19 11:58:40','120','2022-07-19 11:58:40','\0',135),
(2842,128,1273,'120','2022-07-19 11:58:44','120','2022-07-19 11:58:44','\0',135),
(2843,128,1274,'120','2022-07-19 11:58:44','120','2022-07-19 11:58:44','\0',135),
(2844,128,1268,'120','2022-07-19 11:58:44','120','2022-07-19 11:58:44','\0',135),
(2845,128,1269,'120','2022-07-19 11:58:44','120','2022-07-19 11:58:44','\0',135),
(2846,128,1270,'120','2022-07-19 11:58:44','120','2022-07-19 11:58:44','\0',135),
(2847,130,1200,'120','2022-07-19 11:59:01','120','2022-07-20 14:55:31','',135),
(2848,130,1185,'120','2022-07-19 11:59:01','120','2022-07-20 14:55:31','',135),
(2849,130,1221,'120','2022-07-19 11:59:01','120','2022-07-20 14:55:31','',135),
(2850,130,1222,'120','2022-07-19 11:59:01','120','2022-07-20 14:55:31','',135),
(2851,130,1207,'120','2022-07-19 11:59:01','120','2022-07-20 14:55:31','',135),
(2852,128,1200,'120','2022-07-19 11:59:16','120','2022-07-20 14:55:52','',135),
(2853,128,1185,'120','2022-07-19 11:59:16','120','2022-07-20 14:55:52','',135),
(2854,128,1221,'120','2022-07-19 11:59:16','120','2022-07-20 14:55:52','',135),
(2855,128,1222,'120','2022-07-19 11:59:16','120','2022-07-20 14:55:52','',135),
(2856,128,1207,'120','2022-07-19 11:59:16','120','2022-07-20 14:55:52','',135),
(2857,124,1275,'1','2022-07-19 12:22:56','1','2022-07-19 12:22:56','\0',135),
(2858,124,1276,'1','2022-07-19 12:22:56','1','2022-07-19 12:22:56','\0',135),
(2859,130,1275,'120','2022-07-19 12:23:17','120','2022-07-19 12:23:17','\0',135),
(2860,130,1276,'120','2022-07-19 12:23:17','120','2022-07-19 12:23:17','\0',135),
(2861,129,1275,'120','2022-07-19 12:23:23','120','2022-07-19 12:23:23','\0',135),
(2862,129,1276,'120','2022-07-19 12:23:23','120','2022-07-19 12:23:23','\0',135),
(2863,128,1275,'120','2022-07-19 12:23:30','120','2022-07-19 12:23:30','\0',135),
(2864,128,1276,'120','2022-07-19 12:23:30','120','2022-07-19 12:23:30','\0',135),
(2865,130,1219,'120','2022-07-19 18:08:13','120','2022-07-20 14:55:31','',135),
(2866,130,1220,'120','2022-07-19 18:08:13','120','2022-07-20 14:55:31','',135),
(2867,130,1201,'120','2022-07-19 18:08:13','120','2022-07-20 14:55:31','',135),
(2868,130,1202,'120','2022-07-19 18:08:13','120','2022-07-20 14:55:31','',135),
(2869,130,1208,'120','2022-07-19 18:08:13','120','2022-07-20 14:55:31','',135),
(2870,129,1185,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2871,129,1219,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2872,129,1220,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2873,129,1221,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2874,129,1222,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2875,129,1200,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2876,129,1201,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2877,129,1202,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2878,129,1207,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2879,129,1208,'120','2022-07-19 18:08:26','120','2022-07-20 14:55:42','',135),
(2880,128,1219,'120','2022-07-19 18:08:33','120','2022-07-20 14:55:52','',135),
(2881,128,1220,'120','2022-07-19 18:08:33','120','2022-07-20 14:55:52','',135),
(2882,128,1201,'120','2022-07-19 18:08:33','120','2022-07-20 14:55:52','',135),
(2883,128,1202,'120','2022-07-19 18:08:33','120','2022-07-20 14:55:52','',135),
(2884,128,1208,'120','2022-07-19 18:08:33','120','2022-07-20 14:55:52','',135),
(2885,124,1279,'1','2022-07-20 14:54:28','1','2022-07-20 14:54:28','\0',135),
(2886,124,1280,'1','2022-07-20 14:54:28','1','2022-07-20 14:54:28','\0',135),
(2887,124,1281,'1','2022-07-20 14:54:28','1','2022-07-20 14:54:28','\0',135),
(2888,124,1282,'1','2022-07-20 14:54:28','1','2022-07-20 14:54:28','\0',135),
(2889,124,1283,'1','2022-07-20 14:54:28','1','2022-07-20 14:54:28','\0',135),
(2890,124,1284,'1','2022-07-20 14:54:28','1','2022-07-20 14:54:28','\0',135),
(2891,130,1280,'120','2022-07-20 14:55:32','120','2022-07-20 14:55:32','\0',135),
(2892,130,1281,'120','2022-07-20 14:55:32','120','2022-07-20 14:55:32','\0',135),
(2893,130,1282,'120','2022-07-20 14:55:32','120','2022-07-20 14:55:32','\0',135),
(2894,130,1283,'120','2022-07-20 14:55:32','120','2022-07-20 14:55:32','\0',135),
(2895,130,1284,'120','2022-07-20 14:55:32','120','2022-07-20 14:55:32','\0',135),
(2896,130,1279,'120','2022-07-20 14:55:32','120','2022-07-20 14:55:32','\0',135),
(2897,129,1280,'120','2022-07-20 14:55:43','120','2022-08-08 14:39:37','',135),
(2898,129,1281,'120','2022-07-20 14:55:43','120','2022-08-08 14:39:37','',135),
(2899,129,1282,'120','2022-07-20 14:55:43','120','2022-08-08 14:39:37','',135),
(2900,129,1283,'120','2022-07-20 14:55:43','120','2022-08-08 14:39:37','',135),
(2901,129,1284,'120','2022-07-20 14:55:43','120','2022-08-08 14:39:37','',135),
(2902,129,1279,'120','2022-07-20 14:55:43','120','2022-08-08 14:39:37','',135),
(2903,128,1280,'120','2022-07-20 14:55:52','120','2022-07-20 14:55:52','\0',135),
(2904,128,1281,'120','2022-07-20 14:55:52','120','2022-07-20 14:55:52','\0',135),
(2905,128,1282,'120','2022-07-20 14:55:52','120','2022-07-20 14:55:52','\0',135),
(2906,128,1283,'120','2022-07-20 14:55:52','120','2022-07-20 14:55:52','\0',135),
(2907,128,1284,'120','2022-07-20 14:55:52','120','2022-07-20 14:55:52','\0',135),
(2908,128,1279,'120','2022-07-20 14:55:52','120','2022-07-20 14:55:52','\0',135),
(2909,129,1185,'120','2022-07-22 14:56:16','120','2022-08-05 16:44:43','',135),
(2910,129,1219,'120','2022-07-22 14:56:16','120','2022-07-22 15:22:25','',135),
(2911,129,1220,'120','2022-07-22 14:56:16','120','2022-07-22 15:22:25','',135),
(2912,129,1200,'120','2022-07-22 14:56:16','120','2022-07-22 15:22:25','',135),
(2913,129,1201,'120','2022-07-22 14:56:16','120','2022-07-22 15:22:25','',135),
(2914,129,1202,'120','2022-07-22 14:56:16','120','2022-07-22 15:22:25','',135),
(2915,129,1120,'120','2022-07-22 15:22:26','120','2022-08-05 16:44:43','',135),
(2916,129,5,'120','2022-07-22 15:22:26','120','2022-08-05 16:44:43','',135),
(2917,129,1118,'120','2022-07-22 15:22:26','120','2022-08-05 16:44:43','',135),
(2918,129,1119,'120','2022-07-22 15:22:26','120','2022-08-05 16:44:43','',135),
(2919,129,1220,'120','2022-07-23 14:23:14','120','2022-08-05 16:44:43','',135),
(2920,129,1200,'120','2022-07-23 14:23:14','120','2022-08-05 16:44:43','',135),
(2921,129,1201,'120','2022-07-23 14:23:14','120','2022-08-05 16:44:43','',135),
(2922,130,1185,'120','2022-07-23 14:23:48','120','2022-08-05 16:44:34','',135),
(2923,130,1220,'120','2022-07-23 14:23:48','120','2022-08-05 16:44:34','',135),
(2924,130,1200,'120','2022-07-23 14:23:48','120','2022-08-05 16:44:34','',135),
(2925,130,1201,'120','2022-07-23 14:23:48','120','2022-08-05 16:44:34','',135),
(2926,128,1185,'120','2022-07-23 14:24:01','120','2022-08-05 16:44:57','',135),
(2927,128,1220,'120','2022-07-23 14:24:01','120','2022-08-05 16:44:57','',135),
(2928,128,1200,'120','2022-07-23 14:24:01','120','2022-08-05 16:44:57','',135),
(2929,128,1201,'120','2022-07-23 14:24:01','120','2022-08-05 16:44:57','',135),
(2930,124,1285,'1','2022-08-05 16:44:12','1','2022-08-05 16:44:12','\0',135),
(2931,130,1285,'120','2022-08-05 16:44:35','120','2022-08-05 16:44:35','\0',135),
(2932,129,1285,'120','2022-08-05 16:44:43','120','2022-08-05 16:44:43','\0',135),
(2933,128,1285,'120','2022-08-05 16:44:58','120','2022-08-05 16:44:58','\0',135),
(2934,124,1286,'1','2022-08-08 14:39:10','1','2022-08-08 14:39:10','\0',135),
(2935,124,1287,'1','2022-08-08 14:39:10','1','2022-08-08 14:39:10','\0',135),
(2936,130,1286,'120','2022-08-08 14:39:33','120','2022-08-08 14:39:33','\0',135),
(2937,130,1287,'120','2022-08-08 14:39:33','120','2022-08-08 14:39:33','\0',135),
(2938,129,1286,'120','2022-08-08 14:39:38','120','2022-08-08 14:39:38','\0',135),
(2939,129,1287,'120','2022-08-08 14:39:38','120','2022-08-08 14:39:38','\0',135),
(2940,128,1286,'120','2022-08-08 14:39:41','120','2022-08-08 14:39:41','\0',135),
(2941,128,1287,'120','2022-08-08 14:39:41','120','2022-08-08 14:39:41','\0',135),
(2942,124,1288,'1','2022-08-08 15:23:47','1','2022-08-08 15:23:47','\0',135),
(2943,130,1288,'120','2022-08-08 15:24:03','120','2022-08-08 15:24:03','\0',135),
(2944,129,1288,'120','2022-08-08 15:24:09','120','2022-08-08 15:24:09','\0',135),
(2945,128,1288,'120','2022-08-08 15:24:13','120','2022-08-08 15:24:13','\0',135),
(2946,124,1289,'1','2022-08-08 18:01:19','1','2022-08-08 18:01:19','\0',135),
(2947,130,1289,'120','2022-08-08 18:01:41','120','2022-08-08 18:01:41','\0',135),
(2948,129,1289,'120','2022-08-08 18:01:46','120','2022-08-08 18:01:46','\0',135),
(2949,128,1289,'120','2022-08-08 18:01:52','120','2022-08-08 18:01:52','\0',135),
(2950,124,1290,'1','2022-08-09 10:03:15','1','2022-08-09 10:03:15','\0',135),
(2951,130,1290,'120','2022-08-09 10:05:22','120','2022-08-09 10:05:22','\0',135),
(2952,129,1290,'120','2022-08-09 10:05:26','120','2022-08-09 10:05:26','\0',135),
(2953,128,1290,'120','2022-08-09 10:05:31','120','2022-08-09 10:05:31','\0',135),
(2954,124,1291,'1','2022-08-09 15:17:00','1','2022-08-09 15:17:00','\0',135),
(2955,130,1291,'120','2022-08-09 15:17:17','120','2022-08-09 15:17:17','\0',135),
(2956,128,1291,'120','2022-08-09 15:17:28','120','2022-08-09 15:17:28','\0',135);

/*Table structure for table `system_sensitive_word` */

DROP TABLE IF EXISTS `system_sensitive_word`;

CREATE TABLE `system_sensitive_word` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '敏感词',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签数组',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='敏感词';

/*Data for the table `system_sensitive_word` */

insert  into `system_sensitive_word`(`id`,`name`,`description`,`tags`,`status`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(3,'土豆','好呀','蔬菜,短信',0,'1','2022-04-08 21:07:12','1','2022-04-09 10:28:14','\0'),
(4,'XXX',NULL,'短信',0,'1','2022-04-08 21:27:49','1','2022-04-08 21:27:49','\0');

/*Table structure for table `system_sms_channel` */

DROP TABLE IF EXISTS `system_sms_channel`;

CREATE TABLE `system_sms_channel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `signature` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信签名',
  `code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道编码',
  `status` tinyint(4) NOT NULL COMMENT '开启状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `api_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信 API 的账号',
  `api_secret` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 的秘钥',
  `callback_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信发送回调 URL',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信渠道';

/*Data for the table `system_sms_channel` */

insert  into `system_sms_channel`(`id`,`signature`,`code`,`status`,`remark`,`api_key`,`api_secret`,`callback_url`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(1,'芋道','YUN_PIAN',0,'呵呵呵哒','1555a14277cb8a608cf45a9e6a80d510',NULL,'http://vdwapu.natappfree.cc/admin-api/system/sms/callback/yunpian','','2021-03-31 06:12:20','1','2022-02-23 16:48:44','\0'),
(2,'Ballcat','ALIYUN',0,'啦啦啦','LTAI5tCnKso2uG3kJ5gRav88','fGJ5SNXL7P1NHNRmJ7DJaMJGPyE55C',NULL,'','2021-03-31 11:53:10','1','2021-04-14 00:08:37','\0'),
(4,'测试渠道','DEBUG_DING_TALK',0,'123','696b5d8ead48071237e4aa5861ff08dbadb2b4ded1c688a7b7c9afc615579859','SEC5c4e5ff888bc8a9923ae47f59e7ccd30af1f14d93c55b4e2c9cb094e35aeed67',NULL,'1','2021-04-13 00:23:14','1','2022-03-27 20:29:49','\0'),
(6,'测试演示','DEBUG_DING_TALK',0,NULL,'696b5d8ead48071237e4aa5861ff08dbadb2b4ded1c688a7b7c9afc615579859','SEC5c4e5ff888bc8a9923ae47f59e7ccd30af1f14d93c55b4e2c9cb094e35aeed67',NULL,'1','2022-04-10 23:07:59','1','2022-05-16 20:34:49','\0');

/*Table structure for table `system_sms_code` */

DROP TABLE IF EXISTS `system_sms_code`;

CREATE TABLE `system_sms_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '验证码',
  `create_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建 IP',
  `scene` tinyint(4) NOT NULL COMMENT '发送场景',
  `today_index` tinyint(4) NOT NULL COMMENT '今日发送的第几条',
  `used` tinyint(4) NOT NULL COMMENT '是否使用',
  `used_time` datetime DEFAULT NULL COMMENT '使用时间',
  `used_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用 IP',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_mobile` (`mobile`) USING BTREE COMMENT '手机号'
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='手机验证码';

/*Data for the table `system_sms_code` */

/*Table structure for table `system_sms_log` */

DROP TABLE IF EXISTS `system_sms_log`;

CREATE TABLE `system_sms_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `channel_id` bigint(20) NOT NULL COMMENT '短信渠道编号',
  `channel_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信渠道编码',
  `template_id` bigint(20) NOT NULL COMMENT '模板编号',
  `template_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板编码',
  `template_type` tinyint(4) NOT NULL COMMENT '短信类型',
  `template_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信内容',
  `template_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信参数',
  `api_template_id` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信 API 的模板编号',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户编号',
  `user_type` tinyint(4) DEFAULT NULL COMMENT '用户类型',
  `send_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发送状态',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `send_code` int(11) DEFAULT NULL COMMENT '发送结果的编码',
  `send_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发送结果的提示',
  `api_send_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 发送结果的编码',
  `api_send_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 发送失败的提示',
  `api_request_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 发送返回的唯一请求 ID',
  `api_serial_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 发送返回的序号',
  `receive_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '接收状态',
  `receive_time` datetime DEFAULT NULL COMMENT '接收时间',
  `api_receive_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API 接收结果的编码',
  `api_receive_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API 接收结果的说明',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信日志';

/*Data for the table `system_sms_log` */

insert  into `system_sms_log`(`id`,`channel_id`,`channel_code`,`template_id`,`template_code`,`template_type`,`template_content`,`template_params`,`api_template_id`,`mobile`,`user_id`,`user_type`,`send_status`,`send_time`,`send_code`,`send_msg`,`api_send_code`,`api_send_msg`,`api_request_id`,`api_serial_no`,`receive_status`,`receive_time`,`api_receive_code`,`api_receive_msg`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(144,4,'DEBUG_DING_TALK',9,'bpm_task_assigned',2,'您收到了一条新的待办任务：采购设备报销-财务审批，申请人：芋道源码，处理链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=31105b01-e891-11ec-9162-a4bb6ddb930e','{\"startUserNickname\":\"芋道源码\",\"taskName\":\"财务审批\",\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=31105b01-e891-11ec-9162-a4bb6ddb930e\",\"processInstanceName\":\"采购设备报销\"}','suibian','15612345678',1,2,10,'2022-06-10 15:44:45',0,'成功','0',NULL,NULL,'655678dd-eba1-4b60-be84-38066e2231b8',0,NULL,NULL,NULL,'1','2022-06-10 15:44:43',NULL,'2022-06-10 15:44:45','\0'),
(145,4,'DEBUG_DING_TALK',11,'bpm_process_instance_approve',2,'您的流程被审批通过：采购设备报销，查看链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=31105b01-e891-11ec-9162-a4bb6ddb930e','{\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=31105b01-e891-11ec-9162-a4bb6ddb930e\",\"processInstanceName\":\"采购设备报销\"}','suibian','15612345678',1,2,10,'2022-06-10 15:48:10',0,'成功','0',NULL,NULL,'8cf7ffe7-feb9-4d26-a437-ac1728946956',0,NULL,NULL,NULL,'1','2022-06-10 15:48:09',NULL,'2022-06-10 15:48:10','\0'),
(146,4,'DEBUG_DING_TALK',9,'bpm_task_assigned',2,'您收到了一条新的待办任务：采购设备报销-财务审批，申请人：芋道源码，处理链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=18659bd6-eaf2-11ec-9162-a4bb6ddb930e','{\"startUserNickname\":\"芋道源码\",\"taskName\":\"财务审批\",\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=18659bd6-eaf2-11ec-9162-a4bb6ddb930e\",\"processInstanceName\":\"采购设备报销\"}','suibian','15612345678',1,2,10,'2022-06-13 16:23:26',0,'成功','0',NULL,NULL,'db5421f0-b1ce-446c-be90-e0a014c5283f',0,NULL,NULL,NULL,'1','2022-06-13 16:23:25',NULL,'2022-06-13 16:23:26','\0'),
(147,4,'DEBUG_DING_TALK',9,'bpm_task_assigned',2,'您收到了一条新的待办任务：采购设备报销-财务审批，申请人：芋道源码，处理链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=f111a657-eaf7-11ec-9162-a4bb6ddb930e','{\"startUserNickname\":\"芋道源码\",\"taskName\":\"财务审批\",\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=f111a657-eaf7-11ec-9162-a4bb6ddb930e\",\"processInstanceName\":\"采购设备报销\"}','suibian','15612345678',1,2,10,'2022-06-13 17:05:17',0,'成功','0',NULL,NULL,'66fb9077-4e4b-441a-b748-7f2143f63f1e',0,NULL,NULL,NULL,'1','2022-06-13 17:05:16',NULL,'2022-06-13 17:05:17','\0'),
(148,4,'DEBUG_DING_TALK',9,'bpm_task_assigned',2,'您收到了一条新的待办任务：采购设备报销-财务审批，申请人：芋道源码，处理链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=102b76a8-eafa-11ec-9162-a4bb6ddb930e','{\"startUserNickname\":\"芋道源码\",\"taskName\":\"财务审批\",\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=102b76a8-eafa-11ec-9162-a4bb6ddb930e\",\"processInstanceName\":\"采购设备报销\"}','suibian','15612345678',1,2,10,'2022-06-13 17:20:28',0,'成功','0',NULL,NULL,'4bbb823f-b5c2-413e-9eff-98f81c0fdf94',0,NULL,NULL,NULL,'1','2022-06-13 17:20:28',NULL,'2022-06-13 17:20:28','\0'),
(149,4,'DEBUG_DING_TALK',9,'bpm_task_assigned',2,'您收到了一条新的待办任务：采购报销-团队（部门）负责人 审批，申请人：jackson，处理链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=2eb31de1-06ae-11ed-aac6-a4bb6ddb930e','{\"startUserNickname\":\"jackson\",\"taskName\":\"团队（部门）负责人 审批\",\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=2eb31de1-06ae-11ed-aac6-a4bb6ddb930e\",\"processInstanceName\":\"采购报销\"}','suibian','13530198701',125,2,10,'2022-07-18 23:27:51',0,'成功','0',NULL,NULL,'2892b60d-102f-4070-82af-fdc73b6e4d9f',0,NULL,NULL,NULL,'125','2022-07-18 23:27:50',NULL,'2022-07-18 23:27:51','\0'),
(150,4,'DEBUG_DING_TALK',9,'bpm_task_assigned',2,'您收到了一条新的待办任务：采购报销-财务人员 审批，申请人：jackson，处理链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=2eb31de1-06ae-11ed-aac6-a4bb6ddb930e','{\"startUserNickname\":\"jackson\",\"taskName\":\"财务人员 审批\",\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=2eb31de1-06ae-11ed-aac6-a4bb6ddb930e\",\"processInstanceName\":\"采购报销\"}','suibian','13530198701',125,2,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'121','2022-07-19 17:47:35','121','2022-07-19 17:47:35','\0'),
(151,4,'DEBUG_DING_TALK',11,'bpm_process_instance_approve',2,'您的流程被审批通过：采购报销，查看链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=2eb31de1-06ae-11ed-aac6-a4bb6ddb930e','{\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=2eb31de1-06ae-11ed-aac6-a4bb6ddb930e\",\"processInstanceName\":\"采购报销\"}','suibian','13530198701',125,2,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'122','2022-07-19 17:49:16','122','2022-07-19 17:49:16','\0'),
(152,4,'DEBUG_DING_TALK',9,'bpm_task_assigned',2,'您收到了一条新的待办任务：采购报销-财务人员 审批，申请人：jackson，处理链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=fd2cbdc8-06ad-11ed-aac6-a4bb6ddb930e','{\"startUserNickname\":\"jackson\",\"taskName\":\"财务人员 审批\",\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=fd2cbdc8-06ad-11ed-aac6-a4bb6ddb930e\",\"processInstanceName\":\"采购报销\"}','suibian','13530198701',125,2,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'121','2022-07-19 18:26:10','121','2022-07-19 18:26:10','\0'),
(153,4,'DEBUG_DING_TALK',11,'bpm_process_instance_approve',2,'您的流程被审批通过：采购报销，查看链接：http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=fd2cbdc8-06ad-11ed-aac6-a4bb6ddb930e','{\"detailUrl\":\"http://dashboard.yudao.iocoder.cn/bpm/process-instance/detail?id=fd2cbdc8-06ad-11ed-aac6-a4bb6ddb930e\",\"processInstanceName\":\"采购报销\"}','suibian','13530198701',125,2,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'122','2022-07-19 21:33:39','122','2022-07-19 21:33:39','\0');

/*Table structure for table `system_sms_template` */

DROP TABLE IF EXISTS `system_sms_template`;

CREATE TABLE `system_sms_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` tinyint(4) NOT NULL COMMENT '短信签名',
  `status` tinyint(4) NOT NULL COMMENT '开启状态',
  `code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板编码',
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板内容',
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数数组',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `api_template_id` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信 API 的模板编号',
  `channel_id` bigint(20) NOT NULL COMMENT '短信渠道编号',
  `channel_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信渠道编码',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信模板';

/*Data for the table `system_sms_template` */

insert  into `system_sms_template`(`id`,`type`,`status`,`code`,`name`,`content`,`params`,`remark`,`api_template_id`,`channel_id`,`channel_code`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(2,1,0,'test_01','测试验证码短信','正在进行登录操作{operation}，您的验证码是{code}','[\"operation\",\"code\"]',NULL,'4383920',1,'YUN_PIAN','','2021-03-31 10:49:38','1','2021-04-10 01:22:00','\0'),
(3,1,0,'test_02','公告通知','您的验证码{code}，该验证码5分钟内有效，请勿泄漏于他人！','[\"code\"]',NULL,'SMS_207945135',2,'ALIYUN','','2021-03-31 11:56:30','1','2021-04-10 01:22:02','\0'),
(6,3,0,'test-01','测试模板','哈哈哈 {name}','[\"name\"]','f哈哈哈','4383920',1,'YUN_PIAN','1','2021-04-10 01:07:21','1','2021-04-10 01:22:05','\0'),
(7,3,0,'test-04','测试下','老鸡{name}，牛逼{code}','[\"name\",\"code\"]',NULL,'suibian',4,'DEBUG_DING_TALK','1','2021-04-13 00:29:53','1','2021-04-14 00:30:38','\0'),
(8,1,0,'user-sms-login','前台用户短信登录','您的验证码是{code}','[\"code\"]',NULL,'4372216',1,'YUN_PIAN','1','2021-10-11 08:10:00','1','2021-10-11 08:10:00','\0'),
(9,2,0,'bpm_task_assigned','【工作流】任务被分配','您收到了一条新的待办任务：{processInstanceName}-{taskName}，申请人：{startUserNickname}，处理链接：{detailUrl}','[\"processInstanceName\",\"taskName\",\"startUserNickname\",\"detailUrl\"]',NULL,'suibian',4,'DEBUG_DING_TALK','1','2022-01-21 22:31:19','120','2022-08-11 09:38:18','\0'),
(10,2,0,'bpm_process_instance_reject','【工作流】流程被不通过','您的流程被审批不通过：{processInstanceName}，原因：{reason}，查看链接：{detailUrl}','[\"processInstanceName\",\"reason\",\"detailUrl\"]',NULL,'suibian',4,'DEBUG_DING_TALK','1','2022-01-22 00:03:31','120','2022-08-11 09:38:14','\0'),
(11,2,0,'bpm_process_instance_approve','【工作流】流程被通过','您的流程被审批通过：{processInstanceName}，查看链接：{detailUrl}','[\"processInstanceName\",\"detailUrl\"]',NULL,'suibian',4,'DEBUG_DING_TALK','1','2022-01-22 00:04:31','120','2022-08-11 09:38:09','\0'),
(12,2,0,'demo','演示模板','我就是测试一下下','[]',NULL,'biubiubiu',6,'DEBUG_DING_TALK','1','2022-04-10 23:22:49','1','2022-04-10 23:22:49','\0'),
(13,1,0,'admin-sms-login','后台用户短信登录','您的验证码是{code}','[\"code\"]','','4372216',1,'YUN_PIAN','1','2021-10-11 08:10:00','1','2021-10-11 08:10:00','\0');

/*Table structure for table `system_social_user` */

DROP TABLE IF EXISTS `system_social_user`;

CREATE TABLE `system_social_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键(自增策略)',
  `type` tinyint(4) NOT NULL COMMENT '社交平台的类型',
  `openid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '社交 openid',
  `token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '社交 token',
  `raw_token_info` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原始 Token 数据，一般是 JSON 格式',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `raw_user_info` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原始用户数据，一般是 JSON 格式',
  `code` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '最后一次的认证 code',
  `state` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最后一次的认证 state',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='社交用户表';

/*Data for the table `system_social_user` */

/*Table structure for table `system_social_user_bind` */

DROP TABLE IF EXISTS `system_social_user_bind`;

CREATE TABLE `system_social_user_bind` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键(自增策略)',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL COMMENT '用户类型',
  `social_type` tinyint(4) NOT NULL COMMENT '社交平台的类型',
  `social_user_id` bigint(20) NOT NULL COMMENT '社交用户的编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='社交绑定表';

/*Data for the table `system_social_user_bind` */

/*Table structure for table `system_tenant` */

DROP TABLE IF EXISTS `system_tenant`;

CREATE TABLE `system_tenant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '租户编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '租户名',
  `contact_user_id` bigint(20) DEFAULT NULL COMMENT '联系人的用户编号',
  `contact_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系人',
  `contact_mobile` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系手机',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '租户状态（0正常 1停用）',
  `domain` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '绑定域名',
  `package_id` bigint(20) NOT NULL COMMENT '租户套餐编号',
  `expire_time` datetime NOT NULL COMMENT '过期时间',
  `account_count` int(11) NOT NULL COMMENT '账号数量',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='租户表';

/*Data for the table `system_tenant` */

insert  into `system_tenant`(`id`,`name`,`contact_user_id`,`contact_name`,`contact_mobile`,`status`,`domain`,`package_id`,`expire_time`,`account_count`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(1,'芋道源码',NULL,'芋艿','17321315478',0,'https://www.iocoder.cn',0,'2099-02-19 17:14:16',9999,'1','2021-01-05 17:03:47','1','2022-02-23 12:15:11','\0'),
(121,'小租户',110,'小王2','15601691300',0,'http://www.iocoder.cn',111,'2024-03-11 00:00:00',20,'1','2022-02-22 00:56:14','1','2022-05-17 10:03:59','\0'),
(122,'测试租户',113,'芋道','15601691300',0,'https://www.iocoder.cn',111,'2022-04-30 00:00:00',50,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0'),
(135,'HKCRC',120,'yushan','54392642',0,'https://hkcrc.hk',0,'2040-12-31 00:00:00',99999,'1','2022-07-18 00:57:05','1','2022-08-10 11:17:29','\0');

/*Table structure for table `system_tenant_package` */

DROP TABLE IF EXISTS `system_tenant_package`;

CREATE TABLE `system_tenant_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '套餐编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '套餐名',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '租户状态（0正常 1停用）',
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `menu_ids` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关联的菜单编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='租户套餐表';

/*Data for the table `system_tenant_package` */

insert  into `system_tenant_package`(`id`,`name`,`status`,`remark`,`menu_ids`,`creator`,`create_time`,`updater`,`update_time`,`deleted`) values 
(111,'普通套餐',0,'小功能','[1024,1025,1,102,103,104,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023]','1','2022-02-22 00:54:00','1','2022-03-19 18:39:13','\0'),
(112,'大套餐',0,'包含系统所有功能','[1024,1,1025,1026,2,1027,1028,1029,5,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1042,1043,1045,1046,1048,1050,1051,1052,1053,1054,1056,1057,1058,1059,1060,1063,1064,1065,1066,1067,1070,1071,1072,1073,1074,1075,1076,1077,1078,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1117,1118,1119,1120,100,101,102,1126,103,1127,104,1128,105,1129,1130,106,107,1131,108,1132,109,1133,1134,110,1135,111,1136,112,1137,113,1138,114,1139,115,1140,116,1141,1142,1143,1150,1161,1162,1163,1164,1165,1166,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1207,1208,1209,1210,1211,1212,1213,1215,1216,1217,1218,1219,1220,1221,1222,1224,1225,1226,1227,1228,1229,1237,1238,1239,1240,1241,1242,1243,1247,1248,1249,1250,1251,1252,1255,1256,1257,1258,1259,1260,1261,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,500,1013,501,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023]','1','2022-07-18 00:27:51','1','2022-08-10 11:24:52','');

/*Table structure for table `system_user_post` */

DROP TABLE IF EXISTS `system_user_post`;

CREATE TABLE `system_user_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '岗位ID',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户岗位表';

/*Data for the table `system_user_post` */

insert  into `system_user_post`(`id`,`user_id`,`post_id`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(112,1,1,'admin','2022-05-02 07:25:24','admin','2022-05-02 07:25:24','\0',1),
(113,100,1,'admin','2022-05-02 07:25:24','admin','2022-05-02 07:25:24','\0',1),
(114,114,3,'admin','2022-05-02 07:25:24','admin','2022-05-02 07:25:24','\0',1),
(115,104,1,'1','2022-05-16 19:36:28','1','2022-05-16 19:36:28','\0',1);

/*Table structure for table `system_user_role` */

DROP TABLE IF EXISTS `system_user_role`;

CREATE TABLE `system_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户和角色关联表';

/*Data for the table `system_user_role` */

insert  into `system_user_role`(`id`,`user_id`,`role_id`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(1,1,1,'','2022-01-11 13:19:45','','2022-05-12 12:35:17','\0',1),
(18,1,2,'1','2022-05-12 20:39:29','1','2022-05-12 20:39:29','\0',1),
(23,120,1,'1','2022-07-18 00:57:05','1','2022-08-10 11:17:49','\0',135);

/*Table structure for table `system_user_session` */

DROP TABLE IF EXISTS `system_user_session`;

CREATE TABLE `system_user_session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '会话编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型',
  `session_timeout` datetime NOT NULL COMMENT '会话超时时间',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户账号',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户 IP',
  `user_agent` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浏览器 UA',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户在线 Session';

/*Data for the table `system_user_session` */

/*Table structure for table `system_users` */

DROP TABLE IF EXISTS `system_users`;

CREATE TABLE `system_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户账号',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户昵称',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `post_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '岗位编号数组',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户邮箱',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号码',
  `sex` tinyint(4) DEFAULT '0' COMMENT '用户性别',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像地址',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_username` (`username`,`update_time`,`tenant_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';

/*Data for the table `system_users` */

insert  into `system_users`(`id`,`username`,`password`,`nickname`,`remark`,`dept_id`,`post_ids`,`email`,`mobile`,`sex`,`avatar`,`status`,`login_ip`,`login_date`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values 
(1,'admin','$2a$10$0acJOIk2D25/oC87nyclE..0lzeu9DtQ/n3geP4fkun/zIVRhHJIO','芋道源码','管理员',103,'[1]','aoteman@126.com','15612345678',1,'http://test.yudao.iocoder.cn/48934f2f-92d4-4250-b917-d10d2b262c6a',0,'127.0.0.1','2022-08-10 11:08:52','admin','2021-01-05 17:03:47',NULL,'2022-08-10 11:08:52','\0',1),
(120,'admin','$2a$10$yc4jPAfShsDj3g5s35mUquKHF9bnltDz6U4Zpc5oGHHP9leUynMq2','yushan',NULL,NULL,NULL,'fernandozhang517@gmail.com','54392642',0,'',0,'127.0.0.1','2022-08-14 20:46:09','1','2022-07-18 00:57:05',NULL,'2022-08-14 20:46:09','\0',135);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
