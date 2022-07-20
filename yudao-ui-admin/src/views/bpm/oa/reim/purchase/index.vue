<template>
  <div class="app-container">
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
      <el-form-item label="申请时间">
        <el-date-picker
          v-model="dateRangeCreateTime"
          style="width: 240px"
          value-format="yyyy-MM-dd"
          type="daterange"
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
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
          >发起报销</el-button
        >
      </el-col>
      <right-toolbar
        :showSearch.sync="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <!-- 列表 -->
    <el-table v-loading="loading" :data="list">
      <el-table-column
        label="任务编号"
        align="center"
        prop="processInstanceId"
        width="320"
        fixed
      />
      <el-table-column
        label="报销项目"
        align="center"
        prop="purchaseObjs"
        width="180"
        :show-overflow-tooltip="true"
      />
      <el-table-column
        label="总价（港币）"
        align="center"
        prop="totalHkd"
        width="100"
      />
      <el-table-column label="当前审批任务" align="center" prop="tasks" :show-overflow-tooltip="true">
        <template slot-scope="scope">
          <el-button
            v-for="task in scope.row.tasks"
            :key="task.id"
            type="text"
          >
            <span>{{ task.name }}</span>
          </el-button>
        </template>
      </el-table-column>
      <el-table-column label="结果" align="center" prop="result" width="100">
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
        width="180"
      >
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime) }}</span>
        </template>
      </el-table-column>
      <el-table-column
        label="申请人"
        align="center"
        prop="reimPersonName"
        width="100"
      />
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
        width="200"
      >
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleCancel(scope.row)"
            v-hasPermi="['bpm:oa-reim-purchase:create']"
            v-show="scope.row.result === 1"
            >取消报销</el-button
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
      @pagination="getList"
    />
  </div>
</template>

<script>
import { getReimPage } from "@/api/bpm/purchase";
import { getDictDatas, DICT_TYPE } from "@/utils/dict";
import { cancelProcessInstance } from "@/api/bpm/processInstance";

export default {
  name: "Purchase",
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
      dateRangeCreateTime: [],
      // 查询参数
      queryParams: {
        pageNo: 1,
        pageSize: 10,
        reimPersonName: null, // 申请报销人姓名
        purchaseObjs: null, // 采购项目
        result: null,
      },

      leaveTypeDictData: getDictDatas(DICT_TYPE.BPM_OA_LEAVE_TYPE),
      leaveResultData: getDictDatas(DICT_TYPE.BPM_PROCESS_INSTANCE_RESULT),
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询列表 */
    getList() {
      this.loading = true;
      // 处理查询参数
      let params = { ...this.queryParams };
      this.addBeginAndEndTime(params, this.dateRangeCreateTime, "createTime");
      // 执行查询
      getReimPage(params).then((response) => {
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
      this.$router.push({ path: "/reim/purchase/create" });
    },
    /** 详情按钮操作 */
    handleDetail(row) {
      this.$router.push({
        path: "/reim/purchase/detail",
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
    /** 取消请假 */
    handleCancel(row) {
      const id = row.processInstanceId;
      this.$prompt("请输入取消原因？", "取消流程", {
        type: "warning",
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        inputPattern: /^[\s\S]*.*[^\s][\s\S]*$/, // 判断非空，且非空格
        inputErrorMessage: "取消原因不能为空",
      })
        .then(({ value }) => {
          return cancelProcessInstance(id, value);
        })
        .then(() => {
          this.getList();
          this.$modal.msgSuccess("取消成功");
        });
    },
  },
};
</script>
