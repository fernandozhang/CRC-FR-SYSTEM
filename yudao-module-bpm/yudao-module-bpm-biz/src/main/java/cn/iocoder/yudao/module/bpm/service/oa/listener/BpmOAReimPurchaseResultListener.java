package cn.iocoder.yudao.module.bpm.service.oa.listener;

import cn.iocoder.yudao.module.bpm.framework.bpm.core.event.BpmProcessInstanceResultEvent;
import cn.iocoder.yudao.module.bpm.framework.bpm.core.event.BpmProcessInstanceResultEventListener;
import cn.iocoder.yudao.module.bpm.service.oa.BpmOAReimPurchaseService;
import cn.iocoder.yudao.module.bpm.service.oa.BpmOAReimPurchaseServiceImpl;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/7/14 17:59
 * Description: 采购申请单 结果监听器实现类
 */
@Component
public class BpmOAReimPurchaseResultListener extends BpmProcessInstanceResultEventListener {
    @Resource
    private BpmOAReimPurchaseService purchaseService;

    @Override
    protected String getProcessDefinitionKey() {
        return BpmOAReimPurchaseServiceImpl.PROCESS_KEY;
    }

    @Override
    protected void onEvent(BpmProcessInstanceResultEvent event) {
        purchaseService.updateReimResult(Long.parseLong(event.getBusinessKey()), event.getResult());
    }
}
