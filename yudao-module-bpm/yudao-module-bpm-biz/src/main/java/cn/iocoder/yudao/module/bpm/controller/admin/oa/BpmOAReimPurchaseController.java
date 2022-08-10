package cn.iocoder.yudao.module.bpm.controller.admin.oa;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.datapermission.core.annotation.DataPermission;
import cn.iocoder.yudao.module.bpm.controller.admin.oa.vo.*;
import cn.iocoder.yudao.module.bpm.convert.oa.BpmOAReimPurchaseConvert;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;
import cn.iocoder.yudao.module.bpm.service.oa.BpmOAReimPurchaseService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;
import static cn.iocoder.yudao.framework.security.core.util.SecurityFrameworkUtils.getLoginUserId;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:BpmOAReimPurchaseController
 * Author: Zhang Yushan
 * Date: 2022/7/4 12:00
 * Description: OA 申请报销
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@Api(tags = "管理后台 - OA 采购报销申请")
@RestController
@RequestMapping("/bpm/oa/reim/purchase")
@Validated
@DataPermission
public class BpmOAReimPurchaseController {

    @Resource
    private BpmOAReimPurchaseService purchaseService;

    @PostMapping("/create")
    @PreAuthorize("@ss.hasPermission('bpm:oa-reim-purchase:create')")
    @ApiOperation("创建采购报销申请")
    public CommonResult<Long> createReim(@Valid @RequestBody BpmOAReimPurchaseCreateReqVO createReqVO) {
        return success(purchaseService.createReim(getLoginUserId(), createReqVO));
    }

    @GetMapping("/get")
    @PreAuthorize("@ss.hasPermission('bpm:oa-reim-purchase:query')")
    @ApiOperation("获得采购报销申请")
    @ApiImplicitParam(name = "id", value = "编号", required = true, example = "1024", dataTypeClass = Long.class)
    public CommonResult<BpmOAReimPurchaseRespVO> getReim(@RequestParam("id") Long id) {
        BpmOAReimPurchaseDO purchase = purchaseService.getReim(id);
        return success(BpmOAReimPurchaseConvert.INSTANCE.convert(purchase));
    }

    @GetMapping("/page")
    @PreAuthorize("@ss.hasPermission('bpm:oa-reim-purchase:queryPage')")
    @ApiOperation("分页查询报销申请")
    public CommonResult<PageResult<BpmOAReimPurchasePageRespVO>> getReimPage(@Valid BpmOAReimPurchasePageReqVO pageReqVO) {
        PageResult<BpmOAReimPurchasePageRespVO> pageResult = purchaseService.getReimPage(getLoginUserId(), pageReqVO);
        return success(pageResult);
    }

    @PostMapping("/update")
    @PreAuthorize("@ss.hasPermission('bpm:oa-reim-purchase:update')")
    @ApiOperation("修改采购报销申请")
    public void updatePurchase(@Valid @RequestBody BpmOAReimPurchaseUpdateReqVO reqVO) {
        purchaseService.updatePurchase(reqVO);
    }

}
