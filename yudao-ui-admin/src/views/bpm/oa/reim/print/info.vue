<template>
  <div class="app-container">
    <!-- 操作 -->
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-print"
          size="mini"
          v-hasPermi="['bpm:reim-print-batch:print']"
          @click="handlePrint"
          >打印</el-button
        >
      </el-col>
    </el-row>
    <!-- 列表 -->
    <el-table v-loading="loading" :data="list">
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
            v-hasPermi="['bpm:oa-reim-purchase:update']"
            >编辑</el-button
          >
        </template>
      </el-table-column>
      <el-table-column
        label="报销编号"
        align="center"
        prop="id"
        :min-width="columnWidth"
      />
      <el-table-column
        label="报销项目"
        align="center"
        prop="purchaseObjs"
        :min-width="columnWidth"
      />
      <el-table-column
        label="总价（港币）"
        align="center"
        prop="totalHkd"
        :min-width="columnWidth"
      />
      <el-table-column
        label="提交人"
        align="center"
        prop="reimPersonName"
        :min-width="columnWidth"
      />
      <el-table-column
        label="提交时间"
        align="center"
        prop="createTime"
        :min-width="columnWidth"
      >
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime) }}</span>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
import { getPurchaseBatch, printBatch } from "@/api/bpm/printReimBatch";

export default {
  name: "PrintBatchInfo",
  components: {},
  data() {
    return {
      // 遮罩层
      loading: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 报销记录列表
      list: [],
      columnWidth: "300",
      id: null,
    };
  },
  created() {
    this.id = Number.parseInt(this.$route.query.id);
    this.getList();
  },
  methods: {
    /** 查询列表 */
    getList() {
      this.loading = true;
      // 处理查询参数
      getPurchaseBatch(this.id).then((response) => {
        this.list = response.data;
        this.loading = false;
      });
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    /** 查询详情按钮 */
    handleEdit(row) {
      this.$router.push({
        path: "/print/edit",
        query: { id: row.id, batchId: this.id },
      });
    },
    /**打印批次 */
    handlePrint() {
      printBatch(this.id).then((resp) => {
        // 下载PDF
        window.open(resp.data);
      });
    },
  },
};
</script>
