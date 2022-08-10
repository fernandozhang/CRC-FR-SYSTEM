package cn.iocoder.yudao.module.bpm.dal.mysql.oa;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchPageReqVO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmReimPrintBatchDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 9:25
 * Description: 报销批量打印 Mapper
 */
@Mapper
public interface BpmReimPrintBatchMapper extends BaseMapperX<BpmReimPrintBatchDO> {

    default PageResult<BpmReimPrintBatchDO> selectPage(BpmReimPrintBatchPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<BpmReimPrintBatchDO>()
                .eqIfPresent(BpmReimPrintBatchDO::getId, reqVO.getBatchId())
                .eqIfPresent(BpmReimPrintBatchDO::getAmount, reqVO.getAmount())
                .likeIfPresent(BpmReimPrintBatchDO::getStaffName, reqVO.getStaffName())
                .orderByDesc(BpmReimPrintBatchDO::getCreateTime));
    }

}
