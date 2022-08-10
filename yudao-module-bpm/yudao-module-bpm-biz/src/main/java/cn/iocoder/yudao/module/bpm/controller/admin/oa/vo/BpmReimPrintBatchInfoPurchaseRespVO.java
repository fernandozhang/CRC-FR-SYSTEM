package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/4 15:05
 * Description: 采购报销批量打印 Response VO
 */
@ApiModel("管理后台 - 采购报销批量打印 Response VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class BpmReimPrintBatchInfoPurchaseRespVO extends BpmReimPrintBatchInfoBaseRespVO {

    @ApiModelProperty(value = "报销项目", example = "华硕", notes = "模糊匹配", required = true)
    private String purchaseObjs;

}
