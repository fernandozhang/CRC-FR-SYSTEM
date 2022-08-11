package cn.iocoder.yudao.module.bpm.enums.email;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 邮件消息枚举
 */
@AllArgsConstructor
@Getter
public enum BpmEmailEnum {

    PROCESS_INSTANCE_APPROVE(16L), // 流程任务被审批通过时，发送给申请人
    PROCESS_INSTANCE_REJECT(15L), // 流程任务被审批不通过时，发送给申请人
    TASK_ASSIGNED(14L); // 任务被分配时，发送给审批人

    /**
     * 短信模板的标识
     *
     * @link EmailTemplateDO 的 Id 字段
     */
    private final Long emailTemplateId;

}
