package cn.iocoder.yudao.module.bpm.framework.datapermission.config;

import cn.iocoder.yudao.framework.datapermission.core.rule.dept.DeptDataPermissionRuleCustomizer;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmOAReimPurchaseDO;
import cn.iocoder.yudao.module.bpm.dal.dataobject.oa.BpmReimPrintBatchDO;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * bpm 模块的数据权限 Configuration
 *
 * @author YushanZHANG
 */
@Configuration(value = "BpmDataPermissionConfiguration", proxyBeanMethods = false)
public class DataPermissionConfiguration {

    @Bean
    public DeptDataPermissionRuleCustomizer bpmDeptDataPermissionRuleCustomizer() {
        return rule -> {
            // dept
            rule.addDeptColumn(BpmOAReimPurchaseDO.class, "dept_id");
            rule.addDeptColumn(BpmReimPrintBatchDO.class, "dept_id");

            // user
            rule.addUserColumn(BpmOAReimPurchaseDO.class, "user_id");
            rule.addUserColumn(BpmReimPrintBatchDO.class, "creator");
        };
    }

}
