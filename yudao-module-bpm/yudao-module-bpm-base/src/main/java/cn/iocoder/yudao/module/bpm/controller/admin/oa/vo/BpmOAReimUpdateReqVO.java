package cn.iocoder.yudao.module.bpm.controller.admin.oa.vo;


import cn.hutool.core.util.ObjectUtil;

import javax.validation.constraints.AssertTrue;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimUpdateReqVO
 * Author: Zhang Yushan
 * Date: 2022/7/6 0:26
 * Description: 更新报销申请 Request VO
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
public class BpmOAReimUpdateReqVO extends BpmOAReimBaseVO {

    @AssertTrue(message = "报销批次编号不能为空")
    public Boolean isIdNull() {
        return ObjectUtil.isNull(getId());
    }
}
