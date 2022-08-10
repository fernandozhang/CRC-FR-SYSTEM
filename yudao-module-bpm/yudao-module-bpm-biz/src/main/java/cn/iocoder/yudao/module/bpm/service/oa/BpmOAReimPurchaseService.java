package cn.iocoder.yudao.module.bpm.service.oa;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchaseCreateReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchasePageReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchasePageRespVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchaseUpdateReqVO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;

import javax.validation.Valid;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimService
 * Author: Zhang Yushan
 * Date: 2022/7/4 18:01
 * Description: 申请报销 Service
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
public interface BpmOAReimPurchaseService {

    /**
     * 创建采购报销申请
     *
     * @param userId      用户编号
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createReim(Long userId, @Valid BpmOAReimPurchaseCreateReqVO createReqVO);

    /**
     * 更新采购报销申请的状态
     *
     * @param id     编号
     * @param result 结果
     */
    void updateReimResult(Long id, Integer result);

    /**
     * 查询采购报销申请
     *
     * @param id
     * @return
     */
    BpmOAReimPurchaseDO getReim(Long id);

    /**
     * 获得采购报销申请分页
     *
     * @param userId    用户编号
     * @param pageReqVO 分页查询
     * @return 采购报销申请分页
     */
    PageResult<BpmOAReimPurchasePageRespVO> getReimPage(Long userId, BpmOAReimPurchasePageReqVO pageReqVO);

    /**
     * 修改采购报销信息
     *
     * @param reqVO
     */
    void updatePurchase(BpmOAReimPurchaseUpdateReqVO reqVO);
}
