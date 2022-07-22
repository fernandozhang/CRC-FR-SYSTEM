package cn.iocoder.yudao.module.bpm.controller.admin.task.vo.task;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;

@ApiModel("管理后台 - 查询是不是第一个节点任务的 Request VO")
@Data
public class BpmTaskIsFirstReqVO {

    @ApiModelProperty(value = "任务编号", required = true, example = "1024")
    @NotEmpty(message = "任务编号不能为空")
    private String id;

}
