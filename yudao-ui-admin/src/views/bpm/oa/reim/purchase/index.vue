<template>
  <div class="app-container">
    <el-row type="flex" justify="start" align="middle">
      <el-col :span="16">
        <el-steps :active="7" style="margin-top: 15px; margin-bottom: 20px">
          <el-step title="填写、提交报销单"></el-step>
          <el-step title="部门负责人审批"></el-step>
          <el-step title="财务人员审批"></el-step>
          <el-step title="打印报销单"></el-step>
          <el-step
            title="粘贴收据"
            description="没有收据需填写遗失收据声明"
          ></el-step>
          <el-step title="寄送文件到中心" description="">
            <template v-slot:description>
              <span>地址：中国香港，沙田区，科学园三期17W，808-815室</span
              ><br />
              <span>收件人：Kathy Mak</span><br />
              <span>联系电话：xxxxxxxx</span>
            </template>
          </el-step>
          <el-step title="出纳"></el-step>
        </el-steps>
      </el-col>
    </el-row>
    <!-- 搜索工作栏 -->
    <el-form
      :model="queryParams"
      ref="queryForm"
      size="small"
      :inline="true"
      v-show="showSearch"
      label-width="68px"
    >
      <el-form-item label="申请人" prop="reimPersonName">
        <el-input
          v-model="queryParams.reimPersonName"
          placeholder="请输入申请人姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="申请时间" prop="createTime">
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
      <el-form-item label="报销项目" prop="purchaseObjs">
        <el-input
          v-model="queryParams.purchaseObjs"
          placeholder="请输入报销项目"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="结果" prop="result">
        <el-select
          v-model="queryParams.result"
          placeholder="请选择流结果"
          clearable
        >
          <el-option
            v-for="dict in this.getDictDatas(
              DICT_TYPE.BPM_PROCESS_INSTANCE_RESULT
            )"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
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
          v-hasPermi="['bpm:oa-reim-purchase:create']"
          @click="handleAdd"
          v-show="printMode === false"
          >发起报销</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-printer"
          size="mini"
          v-hasPermi="['bpm:reim-print-batch:create']"
          @click="handleSelectPrint"
          :disabled="!(showPrintBtn === true && printMode === false)"
          v-show="printMode === false"
          >打印</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-back"
          size="mini"
          v-hasPermi="['bpm:reim-print-batch:create']"
          @click="handleCancelPrint"
          v-show="printMode === true"
          >返回</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-printer"
          size="mini"
          v-hasPermi="['bpm:reim-print-batch:create']"
          @click="handlePrint"
          v-show="printMode === true"
          :disabled="multipleSelection.length === 0"
          >确认</el-button
        >
      </el-col>
      <right-toolbar
        :showSearch.sync="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <!-- 列表 -->
    <el-table
      v-loading="loading"
      :data="list"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" v-if="printMode === true">
      </el-table-column>
      <el-table-column
        label="是否已打印"
        align="center"
        prop="isPrinted"
        :min-width="columnWidth"
        v-if="printMode === true"
      >
        <template slot-scope="scope">
          <dict-tag
            :type="DICT_TYPE.REIM_APPLICATION_IS_PRINTED"
            :value="scope.row.isPrinted"
          />
        </template>
      </el-table-column>
      <el-table-column
        label="任务编号"
        align="center"
        prop="processInstanceId"
        :min-width="columnWidth"
        fixed
      />
      <el-table-column
        label="申请人"
        align="center"
        prop="reimPersonName"
        :min-width="columnWidth"
      />
      <el-table-column
        label="报销项目"
        align="center"
        prop="purchaseObjs"
        :min-width="columnWidth"
        :show-overflow-tooltip="true"
      />
      <el-table-column
        label="总价（港币）"
        align="center"
        prop="totalHkd"
        :min-width="columnWidth"
      />
      <el-table-column
        label="当前审批任务"
        align="center"
        prop="tasks"
        :min-width="columnWidth"
        :show-overflow-tooltip="true"
      >
        <template slot-scope="scope">
          <el-button v-for="task in scope.row.tasks" :key="task.id" type="text">
            <span>{{ task.name }}</span>
          </el-button>
        </template>
      </el-table-column>
      <el-table-column
        label="结果"
        align="center"
        prop="result"
        min-width="100"
      >
        <template slot-scope="scope">
          <dict-tag
            :type="DICT_TYPE.BPM_PROCESS_INSTANCE_RESULT"
            :value="scope.row.result"
          />
        </template>
      </el-table-column>
      <el-table-column
        label="申请时间"
        align="center"
        prop="createTime"
        :min-width="columnWidth"
      >
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime) }}</span>
        </template>
      </el-table-column>
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
        :min-width="columnWidth"
      >
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleEdit(scope.row)"
            v-hasPermi="['bpm:oa-reim-purchase:create']"
            v-show="scope.row.result === 3"
            >编辑</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-view"
            @click="handleDetail(scope.row)"
            v-hasPermi="['bpm:oa-reim-purchase:query']"
            >详情</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleProcessDetail(scope.row)"
            v-hasPermi="['bpm:process-instance:query']"
            >审批进度</el-button
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
      @pagination="getList()"
    />
  </div>
</template>

<script>
import { getReimPage } from "@/api/bpm/purchase";
import { createPrintReimBatch } from "@/api/bpm/printReimBatch";

export default {
  name: "采购报销",
  components: {},
  data() {
    return {
      // 遮罩层
      loading: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 请假申请列表
      list: [],
      //审批进度弹出层
      // 查询参数
      queryParams: {
        pageNo: 1,
        pageSize: 10,
        reimPersonName: null, // 申请报销人姓名
        purchaseObjs: null, // 采购项目
        result: null,
        createTime: [],
      },
      PROCESS_RESULT_SUCCESS: 2,
      showPrintBtn: false, // 显示打印按钮
      printMode: false, // 打印模式
      multipleSelection: [], // 选择列表
      PRINT_REIM_TYPE_PURCHASE: 1, // 打印信息类型：采购
      columnWidth: "200",
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询列表 */
    getList(params) {
      this.loading = true;
      // 执行查询
      getReimPage(params ? params : this.queryParams).then((response) => {
        this.list = response.data.list;
        this.total = response.data.total;
        this.loading = false;
      });
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNo = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.dateRangeCreateTime = [];
      this.resetForm("queryForm");
      this.handleQuery();
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.$router.push({ path: "/purchase/create" });
    },
    /** 详情按钮操作 */
    handleDetail(row) {
      this.$router.push({
        path: "/purchase/detail",
        query: { id: row.id },
      });
    },
    /** 查看审批进度的操作 */
    handleProcessDetail(row) {
      this.$router.push({
        path: "/bpm/process-instance/detail",
        query: { id: row.processInstanceId },
      });
    },
    /** 详情按钮操作 */
    handleEdit(row) {
      this.$router.push({
        path: "/purchase/create",
        query: { id: row.id },
      });
    },
    /** 进入选择打印状态 */
    handleSelectPrint() {
      this.printMode = true;
      this.loading = true;
      // 查询已通过记录
      this.queryParams.result = this.PROCESS_RESULT_SUCCESS;
      // 执行查询
      this.getList(this.queryParams);
    },
    /**退出打印状态 */
    handleCancelPrint() {
      this.printMode = false;
      // 查询记录
      this.queryParams.result = null;
      this.getList(this.queryParams);
    },
    /**打印报销单 */
    handlePrint() {
      // 总金额
      let amount = 0;
      // 关联编号数组
      let relateIds = [];
      this.multipleSelection.forEach((element) => {
        relateIds.push(element.id);
        amount += element.totalHkd;
      });
      if (amount >= process.env.VUE_APP_REIMBURSEMENT_PURCHASE_AMOUNT_MAX) {
        this.$modal.alertError("报销金额超过HK$10000，请检查");
        return;
      }
      this.$prompt("请输入员工姓名，报销费用会结算给该员工：", "填写员工姓名", {
        type: "warning",
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        inputPattern: /^[\s\S]*.*[^\s][\s\S]*$/, // 判断非空，且非空格
        inputErrorMessage: "报销申请人不能为空",
      })
        .then(({ value }) => {
          let data = {
            amount,
            staffName: value,
            reimType: this.PRINT_REIM_TYPE_PURCHASE,
            relateIds,
          };
          // console.log(data);
          createPrintReimBatch(data).then((resp) => {
            // 下载报销PDF
            window.open(resp.data);
          });
        })
        .then(() => {
          this.handleCancelPrint();
          this.$modal.msgSuccess("打印成功");
        });
    },
    /**选择列表事件 */
    handleSelectionChange(val) {
      this.multipleSelection = val;
    },
  },
  watch: {
    list(value) {
      // 存在审批通过的记录，可以打印
      value.forEach((puchase) => {
        if (puchase.result === this.PROCESS_RESULT_SUCCESS) {
          this.showPrintBtn = true;
          return;
        }
      });
    },
  },
};
</script>
