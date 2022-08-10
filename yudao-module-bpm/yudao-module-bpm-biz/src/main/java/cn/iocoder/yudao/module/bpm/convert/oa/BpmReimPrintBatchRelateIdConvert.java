package cn.iocoder.yudao.module.bpm.convert.oa;

import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmReimPrintBatchRelateIdDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.ArrayList;
import java.util.List;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 14:38
 * Description: 报销批量打印关联表 convert
 */
@Mapper
public interface BpmReimPrintBatchRelateIdConvert {
    BpmReimPrintBatchRelateIdConvert INSTANCE = Mappers.getMapper(BpmReimPrintBatchRelateIdConvert.class);

    /**
     * 转换打印批次和销量编号关系
     *
     * @param batchId
     * @param relateIds
     * @return
     */
    default List<BpmReimPrintBatchRelateIdDO> convert(Long batchId, List<Long> relateIds) {
        List<BpmReimPrintBatchRelateIdDO> list = new ArrayList<>();
        relateIds.forEach(id -> list.add(new BpmReimPrintBatchRelateIdDO().setBatchId(batchId).setRelateId(id)));
        return list;
    }
}
