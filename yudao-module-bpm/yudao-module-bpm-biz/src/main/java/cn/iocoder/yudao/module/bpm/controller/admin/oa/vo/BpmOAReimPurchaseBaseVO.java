package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import cn.hutool.core.util.StrUtil;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

import static cn.iocoder.yudao.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimPurchaseBaseVO
 * Author: Zhang Yushan
 * Date: 2022/7/5 20:34
 * Description: 购物报销申请 Request VO
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@Data
public class BpmOAReimPurchaseBaseVO {
    @ApiModelProperty(value = "购物报销表单主键", required = false)
    private Long id;

    @ApiModelProperty(value = "报销申请人员姓名", required = false)
    private String reimPersonName;

    @ApiModelProperty(value = "是否有纸质收据", required = true)
    @NotNull(message = "请选择是否有纸质收据")
    private Boolean paperReceipt;

    @ApiModelProperty(value = "付款日期", required = true)
    @NotNull(message = "请选择付款日期")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY)
    private Date payDate;

    @ApiModelProperty(value = "采购项目", required = true)
    @NotEmpty(message = "采购项目不能为空")
    private String purchaseObjs;

    @ApiModelProperty(value = "物品用途", required = true)
    @NotEmpty(message = "物品用途不能为空")
    private String usage;

    @ApiModelProperty(value = "总价", required = true)
    @NotNull(message = "总价不能为空")
    private Double totalPrice;

    @ApiModelProperty(value = "付款金额单位(1rmb,2hkd,3usd)", required = true)
    @NotNull(message = "付款金额单位不能为空")
    private Integer totalUnit;

    @ApiModelProperty(value = "兑港币汇率", required = true)
    @NotNull(message = "汇率不能为空")
    private Double exchangeRate;

    @ApiModelProperty(value = "总价（港币）", required = true)
    @NotNull(message = "总价（港币）不能为空")
    private Double totalHkd;

    @ApiModelProperty(value = "购买途径（1线上，2线下）", required = true)
    @NotNull(message = "购买途径不能为空")
    private Integer purBy;

    @ApiModelProperty(value = "备注", required = false)
    private String remark;

    @ApiModelProperty(value = "订单截图", required = false)
    private String orderImg;

    @ApiModelProperty(value = "付款截图", required = false)
    private String payImg;

    @ApiModelProperty(value = "物品照片", required = false)
    private String objsImg;

    @AssertTrue
    public Boolean noReceiptAndNoOrderImg() {
        // 没有收据，也没有订单截图
        if (!getPaperReceipt() && StrUtil.isEmpty(getOrderImg()))
            return true;
        else
            return false;
    }

    @AssertTrue
    public Boolean noReceiptAndNoPayImg() {
        // 没有收据，也没有付款截图
        if (!getPaperReceipt() && StrUtil.isEmpty(getPayImg()))
            return true;
        else
            return false;
    }
}
