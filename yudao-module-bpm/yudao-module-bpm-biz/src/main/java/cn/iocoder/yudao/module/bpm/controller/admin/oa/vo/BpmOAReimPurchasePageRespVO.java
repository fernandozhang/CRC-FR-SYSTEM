package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotEmpty;
import java.util.Date;
import java.util.List;

import static cn.iocoder.yudao.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/7/7 11:38
 * Description: 分页查询报销申请 Response
 */
@ApiModel("管理后台 - 分页查询报销申请 Response VO")
@Data
@ToString(callSuper = true)
public class BpmOAReimPurchasePageRespVO {
    @ApiModelProperty(value = "购物报销表单主键", required = true)
    private Long id;

    @ApiModelProperty(value = "报销申请人员姓名", required = true)
    @NotEmpty(message = "报销申请人姓名不能为空")
    private String reimPersonName;

    @ApiModelProperty(value = "报销项目", example = "华硕", notes = "模糊匹配", required = true)
    private String purchaseObjs;

    @ApiModelProperty(value = "总价（港币）", required = true)
    @NotEmpty(message = "总价（港币）不能为空")
    private Double totalHkd;

    @ApiModelProperty(value = "结果", required = true)
    private Integer result;

    @ApiModelProperty(value = "提交时间", required = true)
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private Date createTime;

    @ApiModelProperty(value = "流程实例编号", required = true)
    private String processInstanceId;

    /**
     * 当前任务
     */
    private List<BpmOAReimPurchasePageRespVO.Task> tasks;

    @ApiModel("流程任务")
    @Data
    public static class Task {

        @ApiModelProperty(value = "流程任务的编号", required = true, example = "1024")
        private String id;

        @ApiModelProperty(value = "任务名称", required = true, example = "芋道")
        private String name;

    }
}
