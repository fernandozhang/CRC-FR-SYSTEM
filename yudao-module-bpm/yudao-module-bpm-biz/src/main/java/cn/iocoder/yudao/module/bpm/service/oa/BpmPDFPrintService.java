package cn.iocoder.yudao.module.bpm.service.oa;

import javax.servlet.http.HttpServletResponse;

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
     * @param response
     */
    public String generate(T reqVO);
}
