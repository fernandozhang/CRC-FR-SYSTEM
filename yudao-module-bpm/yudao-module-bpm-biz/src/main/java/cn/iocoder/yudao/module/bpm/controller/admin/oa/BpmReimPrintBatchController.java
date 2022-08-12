package cn.iocoder.yudao.module.bpm.controller.admin.oa;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchCreateReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchInfoPurchaseRespVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchPageReqVO;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.BpmReimPrintBatchPageRespVO;
import cn.iocoder.yudao.module.bpm.service.oa.BpmReimPrintBatchService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;
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
    @ApiOperation("创建报销批量打印记录")
    public CommonResult<String> createPrintBatch(@Valid @RequestBody BpmReimPrintBatchCreateReqVO createReqVO) {
        return success(bpmReimPrintBatchService.createBatch(getLoginUserId(), createReqVO));
    }

    @GetMapping("/page")
    @PreAuthorize("@ss.hasPermission('bpm:reim-print-batch:page')")
    @ApiOperation("分页查询报销批量打印信息")
    public CommonResult<PageResult<BpmReimPrintBatchPageRespVO>> getPrintBatchPage(@Valid BpmReimPrintBatchPageReqVO reqVO) {
        return success(bpmReimPrintBatchService.getPage(reqVO));
    }

    @GetMapping("/info/purchase")
    @PreAuthorize("@ss.hasPermission('bpm:reim-print-batch:query')")
    @ApiOperation("查询报销批量打印详情")
    public CommonResult<List<BpmReimPrintBatchInfoPurchaseRespVO>> getPurchaseBatch(@RequestParam("id") Long id) {
        return success(bpmReimPrintBatchService.getPurchaseBatch(id));
    }

    /**
     * 打印报销批次
     *
     * @param batchId
     * @return
     */
    @GetMapping("/batch/purchase")
    @PreAuthorize("@ss.hasPermission('bpm:reim-print-batch:print')")
    @ApiOperation("创建报销批量打印记录")
    public CommonResult<String> printPurchaseBatch(@RequestParam("batchId") Long batchId) {
        return success(bpmReimPrintBatchService.printBatch(batchId));
    }

}
