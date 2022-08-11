<template>
  <div class="app-container">
    <!-- <doc-alert title="邮件配置" url="" /> -->
    <!-- 搜索工作栏 -->
    <el-form
      :model="queryParams"
      ref="queryForm"
      size="small"
      :inline="true"
      v-show="showSearch"
      label-width="150px"
    >
      <el-form-item label="消息类型" prop="type">
        <el-select
          v-model="queryParams.type"
          placeholder="请选择消息类型"
          clearable
        >
          <el-option
            v-for="dict in this.getDictDatas(DICT_TYPE.EMAIL_MSG_TYPE)"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="开启状态" prop="status">
        <el-select
          v-model="queryParams.status"
          placeholder="请选择开启状态"
          clearable
        >
          <el-option
            v-for="dict in this.getDictDatas(DICT_TYPE.COMMON_STATUS)"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="模板编码" prop="code">
        <el-input
          v-model="queryParams.code"
          placeholder="请输入模板编码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="模板内容" prop="content">
        <el-input
          v-model="queryParams.content"
          placeholder="请输入模板内容"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="邮箱类型" prop="mailboxCode">
        <el-select
          v-model="queryParams.mailboxCode"
          placeholder="请选择邮箱类型"
          clearable
        >
          <el-option
            v-for="dict in this.getDictDatas(DICT_TYPE.EMAIL_TYPE)"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="创建时间" prop="createTime">
        <el-date-picker
          v-model="queryParams.createTime"
          style="width: 240px"
          value-format="yyyy-MM-dd HH:mm:ss"
          type="daterange"
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
          :default-time="['00:00:00', '23:59:59']"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="el-icon-refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <!-- 操作工具栏 -->
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:email-template:create']"
          >新增</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          :loading="exportLoading"
          v-hasPermi="['system:email-template:export']"
          >导出</el-button
        >
      </el-col>
      <right-toolbar
        :showSearch.sync="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <!-- 列表 -->
    <el-table v-loading="loading" :data="list">
      <el-table-column label="模板编码" align="center" prop="code" />
      <el-table-column label="模板名称" align="center" prop="name" />
      <el-table-column
        label="模板内容"
        align="center"
        prop="content"
        width="300"
      />
      <el-table-column label="消息类型" align="center" prop="type">
        <template slot-scope="scope">
          <dict-tag :type="DICT_TYPE.EMAIL_MSG_TYPE" :value="scope.row.type" />
        </template>
      </el-table-column>
      <el-table-column label="开启状态" align="center" prop="status">
        <template slot-scope="scope">
          <dict-tag :type="DICT_TYPE.COMMON_STATUS" :value="scope.row.status" />
        </template>
      </el-table-column>
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="邮箱类型" align="center" width="120">
        <template slot-scope="scope">
          <dict-tag
            :type="DICT_TYPE.EMAIL_TYPE"
            :value="scope.row.mailboxCode"
          />
        </template>
      </el-table-column>
      <el-table-column
        label="创建时间"
        align="center"
        prop="createTime"
        width="180"
      >
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime) }}</span>
        </template>
      </el-table-column>
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
        width="150"
      >
        <template slot-scope="scope">
          <!-- <el-button size="mini" type="text" icon="el-icon-share" @click="handleSendSmail(scope.row)"
                     v-hasPermi="['system:smail-template:send-smail']">测试</el-button> -->
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:email-template:update']"
            >修改</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:email-template:delete']"
            >删除</el-button
          >
        </template>
      </el-table-column>
    </el-table>
    <!-- 分页组件 -->
    <pagination
      v-show="total > 0"
      :total="total"
      :page.sync="queryParams.pageNo"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 对话框(添加 / 修改) -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="140px">
        <el-form-item label="邮箱类型" prop="mailboxCode">
          <el-select v-model="form.mailboxCode" placeholder="请选择邮箱类型">
            <el-option
              v-for="dict in this.getDictDatas(DICT_TYPE.EMAIL_TYPE)"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="消息类型" prop="type">
          <el-select v-model="form.type" placeholder="消息类型">
            <el-option
              v-for="dict in this.getDictDatas(DICT_TYPE.EMAIL_MSG_TYPE)"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="模板编号" prop="code">
          <el-input v-model="form.code" placeholder="请输入模板编号" />
        </el-form-item>
        <el-form-item label="模板名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入模板名称" />
        </el-form-item>
        <el-form-item label="模板内容" prop="content">
          <el-input
            type="textarea"
            v-model="form.content"
            placeholder="请输入模板内容"
          />
        </el-form-item>
        <el-form-item label="开启状态" prop="status">
          <el-radio-group v-model="form.status">
            <el-radio
              v-for="dict in this.getDictDatas(DICT_TYPE.COMMON_STATUS)"
              :key="dict.value"
              :label="parseInt(dict.value)"
              >{{ dict.label }}</el-radio
            >
          </el-radio-group>
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入备注" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 对话框(发送邮件) -->
    <el-dialog
      title="测试发送邮件"
      :visible.sync="sendSmailOpen"
      width="500px"
      append-to-body
    >
      <el-form
        ref="sendSmailForm"
        :model="sendSmailForm"
        :rules="sendSmailRules"
        label-width="140px"
      >
        <el-form-item label="模板内容" prop="content">
          <el-input
            v-model="sendSmailForm.content"
            type="textarea"
            placeholder="请输入模板内容"
            readonly
          />
        </el-form-item>
        <el-form-item label="手机号" prop="mobile">
          <el-input v-model="sendSmailForm.mobile" placeholder="请输入手机号" />
        </el-form-item>
        <el-form-item
          v-for="param in sendSmailForm.params"
          :key="param"
          :label="'参数 {' + param + '}'"
          :prop="'templateParams.' + param"
        >
          <el-input
            v-model="sendSmailForm.templateParams[param]"
            :placeholder="'请输入 ' + param + ' 参数'"
          />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitSendSmailForm">确 定</el-button>
        <el-button @click="cancelSendSmail">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  createSmailTemplate,
  updateSmailTemplate,
  deleteSmailTemplate,
  getSmailTemplate,
  getSmailTemplatePage,
  exportSmailTemplateExcel,
  sendSmail,
} from "@/api/system/smail/smailTemplate";
import { getSimpleSmailChannels } from "@/api/system/smail/smailChannel";

export default {
  name: "SmailTemplate",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 导出遮罩层
      exportLoading: false,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 邮件模板列表
      list: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNo: 1,
        pageSize: 10,
        type: null,
        status: null,
        code: null,
        content: null,
        mailboxCode: null,
        createTime: [],
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        type: [
          { required: true, message: "消息类型不能为空", trigger: "change" },
        ],
        status: [
          { required: true, message: "开启状态不能为空", trigger: "blur" },
        ],
        code: [
          { required: true, message: "模板编码不能为空", trigger: "blur" },
        ],
        name: [
          { required: true, message: "模板名称不能为空", trigger: "blur" },
        ],
        content: [
          { required: true, message: "模板内容不能为空", trigger: "blur" },
        ],
        mailboxCode: [
          {
            required: true,
            message: "邮箱类型不能为空",
            trigger: "change",
          },
        ],
      },
      // 发送邮件
      sendSmailOpen: false,
      sendSmailForm: {
        params: [], // 模板的参数列表
      },
      sendSmailRules: {
        mobile: [{ required: true, message: "邮箱不能为空", trigger: "blur" }],
        templateCode: [
          { required: true, message: "邮箱不能为空", trigger: "blur" },
        ],
        templateParams: {},
      },
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询列表 */
    getList() {
      this.loading = true;
      // 执行查询
      getSmailTemplatePage(this.queryParams).then((response) => {
        this.list = response.data.list;
        this.total = response.data.total;
        this.loading = false;
      });
    },
    /** 取消按钮 */
    cancel() {
      this.open = false;
      this.reset();
    },
    /** 表单重置 */
    reset() {
      this.form = {
        id: undefined,
        type: undefined,
        status: undefined,
        code: undefined,
        name: undefined,
        content: undefined,
        remark: undefined,
        mailboxCode: undefined,
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNo = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加邮件模板";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id;
      getSmailTemplate(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改邮件模板";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (!valid) {
          return;
        }
        // 修改的提交
        if (this.form.id != null) {
          updateSmailTemplate(this.form).then((response) => {
            this.$modal.msgSuccess("修改成功");
            this.open = false;
            this.getList();
          });
          return;
        }
        // 添加的提交
        createSmailTemplate(this.form).then((response) => {
          this.$modal.msgSuccess("新增成功");
          this.open = false;
          this.getList();
        });
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const id = row.id;
      this.$modal
        .confirm('是否确认删除邮件模板编号为"' + id + '"的数据项?')
        .then(() => {
          return deleteSmailTemplate(id);
        })
        .then(() => {
          this.getList();
          this.$modal.msgSuccess("删除成功");
        })
        .catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      // 处理查询参数
      let params = { ...this.queryParams };
      params.pageNo = undefined;
      params.pageSize = undefined;
      // 执行导出
      this.$modal
        .confirm("是否确认导出所有邮件模板数据项?", "警告")
        .then(() => {
          this.exportLoading = true;
          return exportSmailTemplateExcel(params);
        })
        .then((response) => {
          this.$download.excel(response, "邮件模板.xls");
          this.exportLoading = false;
        })
        .catch(() => {});
    },
    /** 发送短息按钮 */
    handleSendSmail(row) {
      this.resetSendSmail(row);
      // 设置参数
      this.sendSmailForm.content = row.content;
      this.sendSmailForm.params = row.params;
      this.sendSmailForm.templateCode = row.code;
      this.sendSmailForm.templateParams = row.params.reduce(function (
        obj,
        item
      ) {
        obj[item] = undefined;
        return obj;
      },
      {});
      // 根据 row 重置 rules
      this.sendSmailRules.templateParams = row.params.reduce(function (
        obj,
        item
      ) {
        obj[item] = {
          required: true,
          message: "参数 " + item + " 不能为空",
          trigger: "change",
        };
        return obj;
      },
      {});
      // 设置打开
      this.sendSmailOpen = true;
    },
    /** 重置发送邮件的表单 */
    resetSendSmail() {
      // 根据 row 重置表单
      this.sendSmailForm = {
        content: undefined,
        params: undefined,
        mobile: undefined,
        templateCode: undefined,
        templateParams: {},
      };
      this.resetForm("sendSmailForm");
    },
    /** 取消发送邮件 */
    cancelSendSmail() {
      this.sendSmailOpen = false;
      this.resetSendSmail();
    },
    /** 提交按钮 */
    submitSendSmailForm() {
      this.$refs["sendSmailForm"].validate((valid) => {
        if (!valid) {
          return;
        }
        // 添加的提交
        sendSmail(this.sendSmailForm).then((response) => {
          this.$modal.msgSuccess(
            "提交发送成功！发送结果，见发送日志编号：" + response.data
          );
          this.sendSmailOpen = false;
        });
      });
    },
  },
};
</script>
