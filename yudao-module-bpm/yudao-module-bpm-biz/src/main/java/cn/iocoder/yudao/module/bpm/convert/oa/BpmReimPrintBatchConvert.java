package cn.iocoder.yudao.module.bpm.convert.oa;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchCreateReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchInfoPurchaseRespVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchPageRespVO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmReimPrintBatchDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 11:16
 * Description: 报销批量打印 convert
 */
@Mapper
public interface BpmReimPrintBatchConvert {
    BpmReimPrintBatchConvert INSTANCE = Mappers.getMapper(BpmReimPrintBatchConvert.class);

    BpmReimPrintBatchDO convert(BpmReimPrintBatchCreateReqVO bean);

    PageResult<BpmReimPrintBatchPageRespVO> convertPage(PageResult<BpmReimPrintBatchDO> page);

    List<BpmReimPrintBatchInfoPurchaseRespVO> convertPurchaseList(List<BpmOAReimPurchaseDO> list);
}
