package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimPurchaseCreateReqVO
 * Author: Zhang Yushan
 * Date: 2022/7/6 1:25
 * Description: 购物报销申请创建 Request VO
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@ApiModel("管理后台 - 购物报销申请创建 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class BpmOAReimPurchaseCreateReqVO extends BpmOAReimPurchaseBaseVO {
}
