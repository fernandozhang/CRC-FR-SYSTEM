package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/6 15:52
 * Description: 打印采购报销PDF request
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class BpmPDFPrintPurchaseReqVO {

    @NotNull(message = "采购列表不能为空")
    private List<BpmOAReimPurchaseDO> purchaseDOS;

    @NotNull(message = "报销人员姓名不能为空")
    private String staffName;

    @NotNull(message = "总金额")
    private Double amount;

    @NotNull(message = "打印批次号不能为空")
    private Long batchId;
}
