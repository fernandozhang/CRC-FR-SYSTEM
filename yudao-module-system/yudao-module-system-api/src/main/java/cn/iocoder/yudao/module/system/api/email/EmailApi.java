package cn.iocoder.yudao.module.system.api.email;

import cn.iocoder.yudao.module.system.api.email.dto.EmailPostmanReqDTO;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/11 10:26
 * Description: 邮件API
 */
public interface EmailApi {
    public void send(EmailPostmanReqDTO reqDTO) throws Exception;
}
