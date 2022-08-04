package cn.iocoder.yudao.module.bpm.service.oa;

import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchCreateReqVO;

import javax.validation.Valid;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 9:34
 * Description: 报销批量打印 Service
 */
public interface BpmReimPrintBatchService {

    /**
     * 创建报销批量打印
     *
     * @param userId
     * @param createVO
     * @return
     */
    public Long createBatch(Long userId, @Valid BpmReimPrintBatchCreateReqVO createVO);
}
