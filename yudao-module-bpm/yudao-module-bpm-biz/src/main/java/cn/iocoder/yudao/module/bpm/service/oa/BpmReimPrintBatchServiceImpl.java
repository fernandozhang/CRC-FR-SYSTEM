package cn.iocoder.yudao.module.bpm.service.oa;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.common.util.collection.CollectionUtils;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.*;
import cn.iocoder.yudao.module.bpm.convert.oa.BpmReimPrintBatchConvert;
import cn.iocoder.yudao.module.bpm.convert.oa.BpmReimPrintBatchRelateIdConvert;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmReimPrintBatchDO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmReimPrintBatchRelateIdDO;
import cn.iocoder.yudao.module.bpm.dal.mysql.oa.BpmOAReimPurchaseMapper;
import cn.iocoder.yudao.module.bpm.dal.mysql.oa.BpmReimPrintBatchMapper;
import cn.iocoder.yudao.module.bpm.dal.mysql.oa.BpmReimPrintBatchRelateIdMapper;
import cn.iocoder.yudao.module.system.api.user.AdminUserApi;
import cn.iocoder.yudao.module.system.api.user.dto.AdminUserRespDTO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 9:39
 * Description: 报销批量打印 Service
 */
@Service
public class BpmReimPrintBatchServiceImpl implements BpmReimPrintBatchService {

    @Resource
    private BpmReimPrintBatchMapper batchMapper;

    @Resource
    private BpmReimPrintBatchRelateIdMapper batchRelateIdMapper;

    @Resource
    private BpmOAReimPurchaseMapper purchaseMapper;

    @Resource
    private BpmPDFPrintService<BpmPDFPrintPurchaseReqVO> printService;

    @Resource
    private AdminUserApi userApi;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public String createBatch(Long userId, BpmReimPrintBatchCreateReqVO createVO) {
        // 查询用户信息
        AdminUserRespDTO userRespDTO = userApi.getUser(userId);
        // 新增批量信息
        BpmReimPrintBatchDO batchDO = BpmReimPrintBatchConvert.INSTANCE.convert(createVO);
        batchDO.setDeptId(userRespDTO.getDeptId());
        batchMapper.insert(batchDO);
        Long batchId = batchDO.getId();
        // 关联报销编号
        List<BpmReimPrintBatchRelateIdDO> batchRelateIdDOS = BpmReimPrintBatchRelateIdConvert.INSTANCE.convert(batchId, createVO.getRelateIds());
        batchRelateIdMapper.insertBatch(batchRelateIdDOS);
        // 查询采购报销信息数组
        List<BpmOAReimPurchaseDO> purchaseDOS = purchaseMapper.selectBatchIds(createVO.getRelateIds());
        // 打印PDF
        return printService.generate(new BpmPDFPrintPurchaseReqVO(purchaseDOS, createVO.getStaffName(), createVO.getAmount(), batchId));
    }

    @Override
    public PageResult<BpmReimPrintBatchPageRespVO> getPage(BpmReimPrintBatchPageReqVO reqVO) {
        return BpmReimPrintBatchConvert.INSTANCE.convertPage(batchMapper.selectPage(reqVO));
    }

    @Override
    public List<BpmReimPrintBatchInfoPurchaseRespVO> getPurchaseBatch(Long id) {
        // 查询批次号关联的报销信息
        List<BpmReimPrintBatchRelateIdDO> list = batchRelateIdMapper.selectList(new LambdaQueryWrapperX<BpmReimPrintBatchRelateIdDO>()
                .eqIfPresent(BpmReimPrintBatchRelateIdDO::getBatchId, id));
        // 查询采购信息
        List<BpmOAReimPurchaseDO> purchaseDOS = new ArrayList<>();
        if (!CollectionUtils.isAnyEmpty(list)) {
            list.forEach(bpmReimPrintBatchRelateIdDO -> {
                BpmOAReimPurchaseDO purchaseDO = purchaseMapper.selectOne(new LambdaQueryWrapperX<BpmOAReimPurchaseDO>()
                        .eqIfPresent(BpmOAReimPurchaseDO::getId, bpmReimPrintBatchRelateIdDO.getRelateId()));
                purchaseDOS.add(purchaseDO);
            });
        }
        // 转换
        return BpmReimPrintBatchConvert.INSTANCE.convertPurchaseList(purchaseDOS);
    }

    @Override
    public String printBatch(Long batchId) {
        // 查询批次关联的报销记录
        List<BpmReimPrintBatchRelateIdDO> batchRelateIdDOS = batchRelateIdMapper.selectList(new LambdaQueryWrapperX<BpmReimPrintBatchRelateIdDO>()
                .eqIfPresent(BpmReimPrintBatchRelateIdDO::getBatchId, batchId));
        List<Long> relateIds = new ArrayList<>();
        Double amount = 0.00d;
        // 整理关联编号和总金额
        for (BpmReimPrintBatchRelateIdDO batchRelateIdDO : batchRelateIdDOS) {
            relateIds.add(batchRelateIdDO.getRelateId());
            BpmOAReimPurchaseDO purchaseDO = purchaseMapper.selectOne(new LambdaQueryWrapperX<BpmOAReimPurchaseDO>().
                    eqIfPresent(BpmOAReimPurchaseDO::getId, batchRelateIdDO.getRelateId()));
            amount = amount + purchaseDO.getTotalHkd();
            relateIds.add(purchaseDO.getId());
        }
        // 报销信息数组
        List<BpmOAReimPurchaseDO> purchaseDOS = purchaseMapper.selectList(new LambdaQueryWrapperX<BpmOAReimPurchaseDO>()
                .inIfPresent(BpmOAReimPurchaseDO::getId, relateIds));
        // 查询批次信息
        BpmReimPrintBatchDO batchDO = batchMapper.selectOne(new LambdaQueryWrapperX<BpmReimPrintBatchDO>()
                .eqIfPresent(BpmReimPrintBatchDO::getId, batchId));
        // 打印PDF
        return printService.generate(new BpmPDFPrintPurchaseReqVO(purchaseDOS, batchDO.getStaffName(), batchDO.getAmount(), batchId));
    }

}
