package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import java.util.List;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimBaseVO
 * Author: Zhang Yushan
 * Date: 2022/7/5 14:37
 * Description: 报销申请 Base VO，
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@Data
public class BpmOAReimBaseVO {
    @ApiModelProperty(value = "报销批次表单主键", required = false)
    private Integer id;

    @ApiModelProperty(value = "报销申请人员姓名", required = true)
    @NotEmpty(message = "报销申请人姓名不能为空")
    private String reimPersonName;

    private List<BpmOAReimPurchaseBaseVO> purchaseList;// 购物表单列表
}
