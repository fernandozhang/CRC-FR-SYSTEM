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
 * FileName:BpmOAReimPageReqVO
 * Author: Zhang Yushan
 * Date: 2022/7/6 17:27
 * Description: 报销申请分页 Request VO
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@ApiModel("管理后台 - 请假申请分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class BpmOAReimPurchasePageReqVO extends PageParam {
    @ApiModelProperty(value = "申请人", example = "张三", notes = "模糊匹配")
    private String reimPersonName;

    @ApiModelProperty(value = "报销项目", example = "华硕", notes = "模糊匹配")
    private String purchaseObjs;

    @ApiModelProperty(value = "结果", example = "1", notes = "参见 bpm_process_instance_result 枚举")
    private Integer result;

    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    @ApiModelProperty(value = "申请时间")
    private Date[] createTime;
}
