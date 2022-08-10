package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotNull;
import java.util.Date;

import static cn.iocoder.yudao.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/4 10:56
 * Description: 报销批量打印 response
 */
@ApiModel("管理后台 - 报销批量打印 Response VO")
@Data
@ToString(callSuper = true)
public class BpmReimPrintBatchPageRespVO {
    @ApiModelProperty(value = "报销批量打印表单主键", required = true)
    @NotNull(message = "批量打印编号不能为空")
    private Long id;

    @ApiModelProperty(value = "总金额", required = true)
    @NotNull(message = "总金额不能为空")
    private Double amount;

    @ApiModelProperty(value = "报销申请人", required = true)
    @NotNull(message = "报销申请人")
    private String staffName;

    @ApiModelProperty(value = "提交时间", required = true)
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private Date createTime;
}
