package cn.iocoder.yudao.module.bpm.convert.oa;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchaseCreateReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchasePageRespVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchaseRespVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchaseUpdateReqVO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;
import org.flowable.task.api.Task;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;
import java.util.Map;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/7/6 20:33
 * Description: 报销申请 Convert
 */
@Mapper
public interface BpmOAReimPurchaseConvert {

    BpmOAReimPurchaseConvert INSTANCE = Mappers.getMapper(BpmOAReimPurchaseConvert.class);

    BpmOAReimPurchaseDO convert(BpmOAReimPurchaseCreateReqVO bean);

    BpmOAReimPurchaseRespVO convert(BpmOAReimPurchaseDO bean);

    PageResult<BpmOAReimPurchasePageRespVO> convertPage(PageResult<BpmOAReimPurchaseDO> page);

    default PageResult<BpmOAReimPurchasePageRespVO> convertPage(PageResult<BpmOAReimPurchaseDO> page,
                                                                Map<String, List<Task>> taskMap) {
        List<BpmOAReimPurchasePageRespVO> list = convertList(page.getList());
        list.forEach(respVO -> respVO.setTasks(convertList2(taskMap.get(respVO.getProcessInstanceId()))));
        return new PageResult<>(list, page.getTotal());
    }

    List<BpmOAReimPurchasePageRespVO> convertList(List<BpmOAReimPurchaseDO> list);

    List<BpmOAReimPurchasePageRespVO.Task> convertList2(List<Task> tasks);

    BpmOAReimPurchaseDO convert(BpmOAReimPurchaseUpdateReqVO bean);
}
