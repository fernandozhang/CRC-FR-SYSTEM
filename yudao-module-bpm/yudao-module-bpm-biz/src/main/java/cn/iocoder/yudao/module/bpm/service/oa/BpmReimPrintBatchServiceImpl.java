package cn.iocoder.yudao.module.bpm.service.oa;

import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchCreateReqVO;
import cn.iocoder.yudao.module.bpm.convert.oa.BpmReimPrintBatchConvert;
import cn.iocoder.yudao.module.bpm.convert.oa.BpmReimPrintBatchRelateIdConvert;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmReimPrintBatchDO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmReimPrintBatchRelateIdDO;
import cn.iocoder.yudao.module.bpm.dal.mysql.oa.BpmReimPrintBatchMapper;
import cn.iocoder.yudao.module.bpm.dal.mysql.oa.BpmReimPrintBatchRelateIdMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
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

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Long createBatch(Long userId, BpmReimPrintBatchCreateReqVO createVO) {
        // 新增批量信息
        BpmReimPrintBatchDO batchDO = BpmReimPrintBatchConvert.INSTANCE.convert(createVO);
        batchMapper.insert(batchDO);
        Long batchId = batchDO.getId();
        // 关联报销编号
        List<BpmReimPrintBatchRelateIdDO> batchRelateIdDOS = BpmReimPrintBatchRelateIdConvert.INSTANCE.convert(batchId, createVO.getRelateIds());
        batchRelateIdMapper.insertBatch(batchRelateIdDOS);
        return batchId;
    }


}
