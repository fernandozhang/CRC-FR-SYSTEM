package cn.iocoder.yudao.module.bpm.convert.email;

import cn.iocoder.yudao.module.bpm.convert.message.BpmMessageConvert;
import cn.iocoder.yudao.module.system.api.email.dto.EmailPostmanReqDTO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.Map;

/**
 * Copyright(C),2020-2022,Skyland
 * Author: YushanZhang
 * Date: 2022/8/11 10:57
 * Description: 邮件 convert
 */
@Mapper
public interface BpmEmailConvert {
    BpmEmailConvert INSTANCE = Mappers.getMapper(BpmEmailConvert.class);

    EmailPostmanReqDTO convert(Long userId, Long templateId, Map<String, Object> params);
}
