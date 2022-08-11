package cn.iocoder.yudao.module.system.controller.admin.emailmailbox.vo;

import lombok.*;
import java.util.*;
import io.swagger.annotations.*;
import cn.iocoder.yudao.framework.common.pojo.PageParam;
import org.springframework.format.annotation.DateTimeFormat;

import static cn.iocoder.yudao.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@ApiModel("管理后台 - Mailbox分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class EmailMailboxPageReqVO extends PageParam {

    @ApiModelProperty(value = "渠道编码", example = "GMAIL")
    private String code;

    @ApiModelProperty(value = "开启状态", example = "1")
    private Integer status;

    @ApiModelProperty(value = "发件人邮箱地址", example = "1235@gmail.com")
    private String fromEmail;

    @ApiModelProperty(value = "邮箱授权码", example = "AFSGWES")
    private String authCode;

    @ApiModelProperty(value = "邮件发送回调 URL")
    private String callbackUrl;

    @ApiModelProperty(value = "创建者")
    private String creator;

    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    @ApiModelProperty(value = "创建时间")
    private Date createTime;

    @ApiModelProperty(value = "更新者")
    private String updater;

    @ApiModelProperty(value = "是否删除")
    private Boolean deleted;

}
