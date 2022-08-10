package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import cn.iocoder.yudao.framework.common.pojo.PageParam;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

import static cn.iocoder.yudao.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 17:30
 * Description: 分页查询批量打印
 */
@ApiModel("管理后台 - 批量打印分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class BpmReimPrintBatchPageReqVO extends PageParam {

    @ApiModelProperty(value = "打印批次号", example = "1")
    private Long batchId;

    @ApiModelProperty(value = "总金额", example = "100.00")
    private Double amount;

    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    @ApiModelProperty(value = "创建时间")
    private Date[] createTime;

    @ApiModelProperty(value = "报销申请人", example = "张三")
    private String staffName;

}
