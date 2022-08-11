package cn.iocoder.yudao.module.system.dal.dataobject.emailtemplate;

import com.baomidou.mybatisplus.extension.handlers.JacksonTypeHandler;
import lombok.*;
import java.util.*;
import com.baomidou.mybatisplus.annotation.*;
import cn.iocoder.yudao.framework.mybatis.core.dataobject.BaseDO;

/**
 * 邮件模板 DO
 *
 * @author 芋道源码
 */
@TableName("system_email_template")
@KeySequence("system_email_template_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class EmailTemplateDO extends BaseDO {

    /**
     * 编号
     */
    @TableId
    private Long id;
    /**
     * 邮件类型
     */
    private Integer type;
    /**
     * 开启状态
     *
     * 枚举 {@link  cn.iocoder.yudao.framework.common.enums.CommonStatusEnum 对应的类}
     */
    private Integer status;
    /**
     * 模板编码
     */
    private String code;
    /**
     * 模板名称
     */
    private String name;
    /**
     * 模板内容
     */
    private String content;
    /**
     * 参数数组
     */
    @TableField(typeHandler = JacksonTypeHandler.class)
    private List<String> params;
    /**
     * 备注
     */
    private String remark;
    /**
     * mailbox渠道编码
     */
    private String mailboxCode;

}
