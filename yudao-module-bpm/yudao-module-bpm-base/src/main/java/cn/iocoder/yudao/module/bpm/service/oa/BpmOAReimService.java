package cn.iocoder.yudao.module.bpm.service.oa;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOALeaveCreateReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOALeavePageReqVO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOALeaveDO;

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
public interface BpmOAReimService {

    /**
     * 创建报销申请
     *
     * @param userId      用户编号
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createReim(Long userId, @Valid BpmOALeaveCreateReqVO createReqVO);

    /**
     * 更新报销申请
     *
     * @param userId      用户编号
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long updateReim(Long userId, @Valid BpmOALeaveCreateReqVO createReqVO);

    /**
     * 更新报销申请的状态
     *
     * @param id     编号
     * @param result 结果
     */
    void updateReimResult(Long id, Integer result);

    /**
     * 查询报销申请
     *
     * @param id 编号
     * @return 报销申请
     */
    BpmOALeaveDO getReim(Long id);

    /**
     * 分页查询报销申请
     *
     * @param userId    用户编号
     * @param pageReqVO 分页查询
     * @return 报销申请分页
     */
    PageResult<BpmOALeaveDO> getReimPage(Long userId, BpmOALeavePageReqVO pageReqVO);

}
