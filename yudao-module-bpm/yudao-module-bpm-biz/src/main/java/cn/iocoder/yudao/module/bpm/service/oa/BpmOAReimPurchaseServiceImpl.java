package cn.iocoder.yudao.module.bpm.service.oa;

import cn.hutool.core.collection.CollUtil;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.bpm.api.task.BpmProcessInstanceApi;
import cn.iocoder.yudao.module.bpm.api.task.dto.BpmProcessInstanceCreateReqDTO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchaseCreateReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchasePageReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchasePageRespVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmOAReimPurchaseUpdateReqVO;
import cn.iocoder.yudao.module.bpm.convert.oa.BpmOAReimPurchaseConvert;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;
import cn.iocoder.yudao.module.bpm.dal.mysql.oa.BpmOAReimPurchaseMapper;
import cn.iocoder.yudao.module.bpm.enums.task.BpmProcessInstanceResultEnum;
import cn.iocoder.yudao.module.system.api.user.AdminUserApi;
import cn.iocoder.yudao.module.system.api.user.dto.AdminUserRespDTO;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

import static cn.iocoder.yudao.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.iocoder.yudao.framework.common.util.collection.CollectionUtils.convertList;
import static cn.iocoder.yudao.module.bpm.enums.ErrorCodeConstants.OA_REIM_PURCHASE_NOT_EXISTS;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimServiceImpl
 * Author: Zhang Yushan
 * Date: 2022/7/6 17:12
 * Description: OA 报销申请 Service 实现类
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@Service
public class BpmOAReimPurchaseServiceImpl implements BpmOAReimPurchaseService {

    /**
     * OA 报销对应的流程定义 KEY
     */
    public static final String PROCESS_KEY = "oa_reim_purchase";

    @Resource
    private BpmOAReimPurchaseMapper purchaseMapper;

    @Resource
    private BpmProcessInstanceApi processInstanceApi;

    @Resource
    private BpmProcessInstanceApi bpmProcessInstanceApi;

    @Resource
    private AdminUserApi userApi;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Long createReim(Long userId, BpmOAReimPurchaseCreateReqVO createReqVO) {
        // 查询登录用户
        AdminUserRespDTO userRespDTO = userApi.getUser(userId);
        // 创建 OA 采购报销
        BpmOAReimPurchaseDO purchase = BpmOAReimPurchaseConvert.INSTANCE.convert(createReqVO).setUserId(userId)
                .setReimPersonName(userRespDTO.getNickname())
                .setDeptId(userRespDTO.getDeptId())
                .setResult(BpmProcessInstanceResultEnum.PROCESS.getResult());
        purchaseMapper.insert(purchase);

        // 发起 BPM 流程
        String processInstanceId = processInstanceApi.createProcessInstance(userId,
                new BpmProcessInstanceCreateReqDTO().setProcessDefinitionKey(PROCESS_KEY).setBusinessKey(String.valueOf(purchase.getId())));

        // 将工作流的编号，更新到 OA 报销单中
        purchaseMapper.updateById(new BpmOAReimPurchaseDO().setId(purchase.getId()).setProcessInstanceId(processInstanceId));
        return purchase.getId();
    }

    @Override
    public void updateReimResult(Long id, Integer result) {
        validateLeaveExists(id);
        purchaseMapper.updateById(new BpmOAReimPurchaseDO().setId(id).setResult(result));
    }

    private void validateLeaveExists(Long id) {
        if (purchaseMapper.selectById(id) == null) {
            throw exception(OA_REIM_PURCHASE_NOT_EXISTS);
        }
    }

    @Override
    public BpmOAReimPurchaseDO getReim(Long id) {
        return purchaseMapper.selectById(id);
    }

    @Override
    public PageResult<BpmOAReimPurchasePageRespVO> getReimPage(Long userId, BpmOAReimPurchasePageReqVO pageReqVO) {
        // 查询对应分页
        PageResult<BpmOAReimPurchaseDO> pageResult = purchaseMapper.selectPage(pageReqVO);
        if (CollUtil.isEmpty(pageResult.getList())) {
            return new PageResult<>(pageResult.getTotal());
        }
        // 获得流程 Task Map
        List<String> processInstanceIds = convertList(pageResult.getList(), BpmOAReimPurchaseDO::getProcessInstanceId);
        Map<String, List<Task>> taskMap = bpmProcessInstanceApi.getTaskMapByProcessInstanceIds(processInstanceIds);
        // 转换返回
        return BpmOAReimPurchaseConvert.INSTANCE.convertPage(pageResult, taskMap);
    }

    @Override
    public void updatePurchase(BpmOAReimPurchaseUpdateReqVO reqVO) {
        purchaseMapper.updateById(BpmOAReimPurchaseConvert.INSTANCE.convert(reqVO));
    }
}
