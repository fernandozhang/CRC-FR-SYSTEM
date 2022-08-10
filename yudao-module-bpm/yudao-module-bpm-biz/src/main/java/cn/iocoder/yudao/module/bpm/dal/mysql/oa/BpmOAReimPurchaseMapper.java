package cn.iocoder.yudao.module.bpm.dal.mysql.oa;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchasePageReqVO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimPurchaseMapper
 * Author: Zhang Yushan
 * Date: 2022/7/5 16:20
 * Description: 采购报销 Mapper
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@Mapper
public interface BpmOAReimPurchaseMapper extends BaseMapperX<BpmOAReimPurchaseDO> {
    default PageResult<BpmOAReimPurchaseDO> selectPage(BpmOAReimPurchasePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<BpmOAReimPurchaseDO>()
                .eqIfPresent(BpmOAReimPurchaseDO::getResult, reqVO.getResult())
                .likeIfPresent(BpmOAReimPurchaseDO::getReimPersonName, reqVO.getReimPersonName())
                .likeIfPresent(BpmOAReimPurchaseDO::getPurchaseObjs, reqVO.getPurchaseObjs())
                .betweenIfPresent(BpmOAReimPurchaseDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(BpmOAReimPurchaseDO::getId));
    }
}
