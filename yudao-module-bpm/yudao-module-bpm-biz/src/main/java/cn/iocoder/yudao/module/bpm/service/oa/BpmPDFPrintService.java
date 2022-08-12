package cn.iocoder.yudao.module.bpm.service.oa;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/6 15:16
 * Description: 打印PDF service
 */
public interface BpmPDFPrintService<T> {

    /**
     * 生成PDF
     *
     * @param reqVO
     */
    public String generate(T reqVO);
}
