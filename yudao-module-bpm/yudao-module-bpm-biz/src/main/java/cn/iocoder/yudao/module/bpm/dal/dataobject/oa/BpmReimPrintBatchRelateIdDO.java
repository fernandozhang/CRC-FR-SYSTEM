package cn.iocoder.yudao.module.bpm.dal.dataobject.oa;

import cn.iocoder.yudao.framework.mybatis.core.dataobject.BaseDO;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 11:32
 * Description: 报销批次打印关联报销记录表
 */
@TableName("bpm_reim_print_batch_relate_id")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BpmReimPrintBatchRelateIdDO extends BaseDO {
    @TableId
    private Long id;
    /**
     * 报销批量打印表主键
     * {@link BpmReimPrintBatchDO}
     */
    private Long batchId;
    /**
     * 报销记录表主键
     * 采购报销 {@link BpmOAReimPurchaseDO}
     */
    private Long relateId;
}
