package cn.iocoder.yudao.module.bpm.controller.admin.oa;

import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchCreateReqVO;
import cn.iocoder.yudao.module.bpm.service.oa.BpmReimPrintBatchService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.validation.Valid;

import static cn.iocoder.yudao.framework.security.core.util.SecurityFrameworkUtils.getLoginUserId;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/3 15:17
 * Description: 批量打印报销 Controller
 */
@Api(tags = "管理后台 - 批量打印报销接口")
@RestController
@RequestMapping("/bpm/oa/reim/print")
@Validated
public class BpmReimPrintBatchController {

    @Resource
    private BpmReimPrintBatchService bpmReimPrintBatchService;

    @PostMapping("/create")
    @PreAuthorize("@ss.hasPermission('bpm:reim-print-batch:create')")
    @ApiOperation("创建采购报销申请")
    public Long createPrintBatch(@Valid BpmReimPrintBatchCreateReqVO createReqVO) {
        return bpmReimPrintBatchService.createBatch(getLoginUserId(), createReqVO);
    }


}
