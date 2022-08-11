package cn.iocoder.yudao.module.system.service.email.mailbox;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.system.controller.admin.emailmailbox.vo.EmailMailboxCreateReqVO;
import cn.iocoder.yudao.module.system.controller.admin.emailmailbox.vo.EmailMailboxExportReqVO;
import cn.iocoder.yudao.module.system.controller.admin.emailmailbox.vo.EmailMailboxPageReqVO;
import cn.iocoder.yudao.module.system.controller.admin.emailmailbox.vo.EmailMailboxUpdateReqVO;
import cn.iocoder.yudao.module.system.convert.emailmailbox.EmailMailboxConvert;
import cn.iocoder.yudao.module.system.dal.dataobject.emailmailbox.EmailMailboxDO;
import cn.iocoder.yudao.module.system.dal.mysql.emailmailbox.EmailMailboxMapper;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.List;

import static cn.iocoder.yudao.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.iocoder.yudao.module.system.enums.ErrorCodeConstants.EMAIL_MAILBOX_NOT_EXISTS;

/**
 * Mailbox Service 实现类
 *
 * @author 芋道源码
 */
@Service
@Validated
public class EmailMailboxServiceImpl implements EmailMailboxService {

    @Resource
    private EmailMailboxMapper emailMailboxMapper;

    @Override
    public Long createEmailMailbox(EmailMailboxCreateReqVO createReqVO) {
        // 插入
        EmailMailboxDO emailMailbox = EmailMailboxConvert.INSTANCE.convert(createReqVO);
        emailMailboxMapper.insert(emailMailbox);
        // 返回
        return emailMailbox.getId();
    }

    @Override
    public void updateEmailMailbox(EmailMailboxUpdateReqVO updateReqVO) {
        // 校验存在
        this.validateEmailMailboxExists(updateReqVO.getId());
        // 更新
        EmailMailboxDO updateObj = EmailMailboxConvert.INSTANCE.convert(updateReqVO);
        emailMailboxMapper.updateById(updateObj);
    }

    @Override
    public void deleteEmailMailbox(Long id) {
        // 校验存在
        this.validateEmailMailboxExists(id);
        // 删除
        emailMailboxMapper.deleteById(id);
    }

    private void validateEmailMailboxExists(Long id) {
        if (emailMailboxMapper.selectById(id) == null) {
            throw exception(EMAIL_MAILBOX_NOT_EXISTS);
        }
    }

    @Override
    public EmailMailboxDO getEmailMailbox(Long id) {
        return emailMailboxMapper.selectById(id);
    }

    @Override
    public List<EmailMailboxDO> getEmailMailboxList(Collection<Long> ids) {
        return emailMailboxMapper.selectBatchIds(ids);
    }

    @Override
    public PageResult<EmailMailboxDO> getEmailMailboxPage(EmailMailboxPageReqVO pageReqVO) {
        return emailMailboxMapper.selectPage(pageReqVO);
    }

    @Override
    public List<EmailMailboxDO> getEmailMailboxList(EmailMailboxExportReqVO exportReqVO) {
        return emailMailboxMapper.selectList(exportReqVO);
    }

    @Override
    public EmailMailboxDO getEmailMailbox(String code) {
        return emailMailboxMapper.selectOne(new LambdaQueryWrapperX<EmailMailboxDO>()
                .eqIfPresent(EmailMailboxDO::getCode, code));
    }

}
