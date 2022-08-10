package cn.iocoder.yudao.module.bpm.service.oa;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchCreateReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchInfoPurchaseRespVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchPageReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchPageRespVO;

import javax.validation.Valid;
import java.util.List;

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
    public String createBatch(Long userId, @Valid BpmReimPrintBatchCreateReqVO createVO);

    /**
     * 分页查询批量打印记录
     *
     * @param reqVO
     * @return
     */
    public PageResult<BpmReimPrintBatchPageRespVO> getPage(@Valid BpmReimPrintBatchPageReqVO reqVO);


    /**
     * 获取打印批次详情
     *
     * @param id
     * @return
     */
    public List<BpmReimPrintBatchInfoPurchaseRespVO> getPurchaseBatch(Long id);

    /**
     * 打印报销批次
     *
     * @param batchId
     * @return
     */
    public String printBatch(Long batchId);

}
