package cn.iocoder.yudao.module.bpm.convert.oa;

import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchCreateReqVO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmReimPrintBatchDO;
import org.mapstruct.factory.Mappers;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 11:16
 * Description: 报销批量打印 convert
 */
public interface BpmReimPrintBatchConvert {
    BpmReimPrintBatchConvert INSTANCE = Mappers.getMapper(BpmReimPrintBatchConvert.class);

    BpmReimPrintBatchDO convert(BpmReimPrintBatchCreateReqVO bean);
}
