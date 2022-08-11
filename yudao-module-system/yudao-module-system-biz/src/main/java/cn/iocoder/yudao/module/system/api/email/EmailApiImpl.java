package cn.iocoder.yudao.module.system.api.email;

import cn.iocoder.yudao.module.system.api.email.dto.EmailPostmanReqDTO;
import cn.iocoder.yudao.module.system.service.email.postman.EmailPostmanService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/11 10:30
 * Description: 邮件API实现
 */
@Service
public class EmailApiImpl implements EmailApi {

    @Resource
    private EmailPostmanService postmanService;

    @Override
    public void send(EmailPostmanReqDTO reqDTO) throws Exception {
        postmanService.send(reqDTO);
    }
}
