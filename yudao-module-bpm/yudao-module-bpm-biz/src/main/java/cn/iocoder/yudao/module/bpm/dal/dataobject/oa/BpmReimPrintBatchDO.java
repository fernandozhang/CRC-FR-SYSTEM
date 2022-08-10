package cn.iocoder.yudao.module.bpm.dal.dataobject.oa;

import cn.iocoder.yudao.framework.mybatis.core.dataobject.BaseDO;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 9:12
 * Description: 报销批量打印表
 */
@TableName("bpm_reim_print_batch")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BpmReimPrintBatchDO extends BaseDO {
    @TableId
    private Long Id;// 报销打印批次表主键
    private Double amount;// 总金额
    private String staffName;// 报销员工姓名
    private Integer reimType;// 报销类型（1：采购）
    private Long tenantId;// 租户编号
    private Long deptId;// 部门编号
}
