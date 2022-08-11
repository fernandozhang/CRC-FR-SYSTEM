package cn.iocoder.yudao.module.system.controller.admin.user.vo.register;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.*;

/**
 * Copyright(C),2020-2022,Skyland
 * FileName:UserRegisterReqVO
 * Author: Zhang Yushan
 * Date: 2022/6/24 15:34
 * Description: 管理后台 - 用户注册 Request VO
 * History:
 * <author>   <time>      <version>   <desc>
 * 作者        修改时间      版本号        描述
 */
@Data
@ApiModel("管理后台 - 用户注册 Request VO")
public class UserRegisterReqVO {

    @ApiModelProperty(value = "部门编号", required = true, example = "116")
    @NotNull(message = "部门不能为空")
    private Long deptId;

    @ApiModelProperty(value = "用户账号", required = true, example = "yudao")
    @NotBlank(message = "用户账号不能为空")
    @Pattern(regexp = "^[a-zA-Z0-9]{4,30}$", message = "用户账号至少由 4位数字、字母 组成")
    @Size(min = 4, max = 30, message = "用户账号长度为 4-30 个字符")
    private String username;

    @ApiModelProperty(value = "用户邮箱", example = "yudao@iocoder.cn")
    @NotEmpty(message = "邮箱不能为空")
    @Email(message = "邮箱格式不正确")
    @Size(max = 50, message = "邮箱长度不能超过 50 个字符")
    private String email;


    @ApiModelProperty(value = "密码", required = true, example = "123456")
    @NotEmpty(message = "密码不能为空")
    @Length(min = 4, max = 16, message = "密码长度为 4-16 位")
    private String password;

    @NotNull(message = "租户编号不能为空")
    private Long tenantId;
}
