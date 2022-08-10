package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.validation.constraints.NotNull;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/4 15:45
 * Description: 更新采购报销申请 Request VO
 */
@ApiModel("管理后台 - 更新采购报销申请 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class BpmOAReimPurchaseUpdateReqVO extends BpmOAReimPurchaseBaseVO {
    @ApiModelProperty(value = "采购报销表单主键", required = true)
    @NotNull(message = "采购报销编号不能为空")
    private Long id;
}
