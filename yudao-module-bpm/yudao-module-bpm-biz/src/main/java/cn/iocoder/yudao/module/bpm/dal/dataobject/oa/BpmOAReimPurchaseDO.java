package cn.iocoder.yudao.module.bpm.dal.dataobject.oa;

import cn.iocoder.yudao.framework.mybatis.core.dataobject.BaseDO;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;

import java.util.Date;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimPurchaseDO
 * Author: Zhang Yushan
 * Date: 2022/7/5 15:11
 * Description: 购物报销表单DO
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@TableName("bpm_reim_purchase")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BpmOAReimPurchaseDO extends BaseDO {
    @TableId
    private Long id;// 购物报销表单主键
    private Boolean paperReceipt;// 是否有纸质收据
    private Date payDate;// 付款日期
    private Double exchangeRate;// 兑港币汇率
    private Double totalPrice;// 总价
    private Integer totalUnit;// 付款金额单位(1rmb,2hkd,3usd)
    private Double totalHkd;// 总价（港币）
    @TableField(value = "`usage`")
    private String usage;// 用途
    private Integer purBy;// 购买途径（1线上，2线下）
    private String remark;// 备注
    private String orderImg;// 订单截图
    private String payImg;// 付款截图
    private String objsImg;// 付款截图
    private String reimPersonName;// 报销申请人员姓名
    private Integer result;// 报销结果
    private String processInstanceId;// 流程实例编号
    private Long tenantId;// 租户编号
    private String purchaseObjs;// 采购项目
    /**
     * 申请人的用户编号
     * <p>
     * 关联 AdminUserDO 的 id 属性
     */
    private Long userId;
    private Long deptId;// 部门编号
}
