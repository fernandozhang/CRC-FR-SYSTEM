package cn.razgriz.email.core.impl.mail163;

import cn.razgriz.email.core.AbstractEmailPath;
import cn.razgriz.email.core.dto.EmailReqDTO;
import lombok.NoArgsConstructor;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/11 14:35
 * Description: 163邮箱
 */
@NoArgsConstructor
public class Mail163Path extends AbstractEmailPath {
    @Override
    protected void doSetProperties(EmailReqDTO emailReqDTO) {
        properties.setProperty("mail.smtp.host","smtp.163.com");
    }
}
