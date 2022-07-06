CREATE TABLE `ruoyi-vue-pro`.`bpm_reim_batch` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '报销批次表单主键',
  `user_id` BIGINT NOT NULL COMMENT '申请人的用户编号',
  `reim_person_name` VARCHAR(64) NOT NULL COMMENT '报销申请人员姓名',
  `result` TINYINT COMMENT '报销结果',
  `process_instance_id` VARCHAR(64) DEFAULT 'null' COMMENT '流程实例编号',
  `creator` VARCHAR(64) NOT NULL COMMENT '创建者',
  `create_time` DATETIME NOT NULL COMMENT '创建时间',
  `updater` VARCHAR(64) COMMENT '更新者',
  `update_time` DATETIME COMMENT '更新时间',
  `deleted` BIT(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` BIGINT NOT NULL COMMENT '租户编号',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
COMMENT='报销批次表';

CREATE TABLE `ruoyi-vue-pro`.`bpm_reim_purchase` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '购物报销表单主键',
  `paper_receipt` BIT NOT NULL COMMENT '是否有纸质收据',
  `pay_date` DATETIME NOT NULL COMMENT '付款日期',
  `exchange_rate` DOUBLE NOT NULL COMMENT '兑港币汇率',
  `total_price` DOUBLE NOT NULL COMMENT '总价',
  `total_unit` TINYINT NOT NULL COMMENT '付款金额单位(1rmb,2hkd,3usd)',
  `total_hkd` DOUBLE NOT NULL COMMENT '总价（港币）',
  `usage` VARCHAR(256) NOT NULL COMMENT '用途',
  `pur_by` TINYINT NOT NULL COMMENT '购买途径（1线上，2线下）',
  `remark` VARCHAR(256) COMMENT '备注',
  `order_img` VARCHAR(256) COMMENT '订单截图',
  `pay_img` VARCHAR(256) COMMENT '付款截图',
  `objs_img` VARCHAR(256) COMMENT '物品照片',
  `batch_id` BIGINT NOT NULL COMMENT '报销批次编号',
  `creator` BIGINT NOT NULL COMMENT '创建者',
  `create_time` DATETIME NOT NULL COMMENT '创建时间',
  `updater` BIGINT COMMENT '更新者',
  `update_time` DATETIME COMMENT '更新时间',
  `deleted` BIT NOT NULL DEFAULT b'0' COMMENT '是否删除（0否，1是）',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
COMMENT='购物报销表';

ALTER TABLE `ruoyi-vue-pro`.`bpm_reim_purchase`
  ADD CONSTRAINT `reim_purchase_fk` FOREIGN KEY (`batch_id`) REFERENCES `ruoyi-vue-pro`.`bpm_reim_batch`(`id`) ON DELETE CASCADE;