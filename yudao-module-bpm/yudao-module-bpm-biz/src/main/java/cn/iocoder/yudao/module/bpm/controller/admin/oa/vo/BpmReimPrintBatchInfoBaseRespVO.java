package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

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
 * Date: 2022/8/4 14:20
 * Description: 查询报销批量打印详情 response
 */
@Data
@ToString(callSuper = true)
public class BpmReimPrintBatchInfoBaseRespVO {

    @ApiModelProperty(value = "关联报销表单主键", required = true)
    private Long id;

    @ApiModelProperty(value = "总价（港币）", required = true)
    @NotNull(message = "总价（港币）不能为空")
    private Double totalHkd;

    @ApiModelProperty(value = "提交时间", required = true)
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private Date createTime;

    @ApiModelProperty(value = "流程实例编号", required = true)
    private String processInstanceId;

    @ApiModelProperty(value = "报销提交人", required = true)
    private String reimPersonName;
}
