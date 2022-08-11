package cn.iocoder.yudao.module.system.api.email.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Map;

/**
 * 向Postman层传入信息时的DTO类
 *
 * @author : Razgriz
 * @since : 2022/8/4 14:15
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmailPostmanReqDTO {

    private Long userId;// 用户编号

    private Long templateId;  //Postman使用模板的id

    private Map<String, Object> params;  //传入的参数-{code}-


}
