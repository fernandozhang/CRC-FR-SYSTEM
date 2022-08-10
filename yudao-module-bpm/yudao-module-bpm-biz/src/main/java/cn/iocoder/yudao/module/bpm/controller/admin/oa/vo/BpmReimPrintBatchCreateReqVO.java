package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 10:44
 * Description: 创建打印批次 Request
 */
@ApiModel("管理后台 - 报销打印批次创建 Request VO")
@Data
@ToString(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
public class BpmReimPrintBatchCreateReqVO {
    @ApiModelProperty(value = "总金额", required = true)
    @NotNull(message = "总金额不能为空")
    private Double amount;

    @ApiModelProperty(value = "报销人员姓名", required = true)
    @NotNull(message = "报销人员姓名不能为空")
    private String staffName;

    @ApiModelProperty(value = "报销类型", required = true)
    @NotNull(message = "报销类型不能为空")
    private Integer reimType;

    @ApiModelProperty(value = "报销编号数组", required = true)
    @NotNull(message = "报销编号数组不能为空")
    private List<Long> relateIds;
}
