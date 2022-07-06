package cn.iocoder.yudao.module.bpm.dal.dataobject.oa;

import cn.iocoder.yudao.framework.mybatis.core.dataobject.BaseDO;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimBatchDO
 * Author: Zhang Yushan
 * Date: 2022/7/4 16:06
 * Description: OA 申请报销批次DO
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@TableName("bpm_reim_batch")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BpmOAReimBatchDO extends BaseDO {
    @TableId
    private Long id;// 报销批次表单主键
    private Long userId;// 申请人的用户编号
    private String reimPersonName;// 报销人员姓名
    private Integer result;// 报销结果
    private String processInstanceId;// 流程实例编号
    private Long tenantId;// 租户编号
}
