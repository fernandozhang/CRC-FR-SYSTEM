<template>
  <div class="app-container">
    <!-- 对话框(添加 / 修改) -->
    <el-form
      ref="form"
      :model="form"
      label-width="10vw"
      label-position="left"
      label-suffix="："
    >
      <el-row>
        <el-col :span="12">
          <el-form-item label="申请人" prop="reimPersonName">
            {{ form.reimPersonName }}
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="是否有纸质收据" prop="paperReceipt">
            {{ form.paperReceipt ? "有" : "没有" }}
          </el-form-item>
        </el-col>
      </el-row>
      <el-row>
        <el-col :span="12">
          <el-form-item label="付款日期" prop="payDate">
            {{ parseTime(form.payDate, "{y}-{m}-{d}") }}
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="采购项目" prop="purchaseObjs">
            {{ form.purchaseObjs }}
          </el-form-item>
        </el-col>
      </el-row>
      <el-row>
        <el-col :span="12">
          <el-form-item label="用途" prop="usage">
            {{ form.usage }}
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="购买途径" prop="purBy">
            <dict-tag
              :type="DICT_TYPE.REIM_PURCHASE_WAY_TYPE"
              :value="form.purBy"
            />
          </el-form-item>
        </el-col>
      </el-row>
      <el-row>
        <el-col :span="12">
          <el-form-item label="货币种类" prop="totalUnit">
            <dict-tag
              :type="DICT_TYPE.REIM_PURCHASE_CURRENCY_TYPE"
              :value="form.totalUnit"
            />
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="总价" prop="totalPrice">
            {{ form.totalPrice }}
          </el-form-item>
        </el-col>
      </el-row>
      <el-row>
        <el-col :span="12">
          <el-form-item label="汇率" prop="exchangeRate">
            {{ form.exchangeRate }}
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="总价（港币）" prop="totalHkd">
            {{ form.totalHkd }}
          </el-form-item>
        </el-col>
      </el-row>
      <el-row>
        <el-col :span="12">
          <el-form-item
            label="备注"
            prop="remark"
            v-show="form.remerk != undefined && form.remerk"
          >
            {{ form.remark }}
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item
            label="物品照片"
            prop="objsImg"
            v-if="form.objsImg != undefined && form.objsImg"
          >
            <image-preview :src="form.objsImg" :width="192" :height="108" />
          </el-form-item>
        </el-col>
      </el-row>
      <el-row>
        <el-col :span="12">
          <el-form-item
            label="订单截图"
            prop="orderImg"
            v-if="form.orderImg != undefined && form.orderImg"
          >
            <image-preview :src="form.orderImg" :width="10" :height="10" />
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item
            label="付款记录截图"
            prop="payImg"
            v-if="form.payImg != undefined && form.payImg"
          >
            <image-preview :src="form.payImg" :width="10" :height="10" />
          </el-form-item>
        </el-col>
      </el-row>
    </el-form>
  </div>
</template>

<script>
import { getReim } from "@/api/bpm/purchase";
import ImagePreview from "@/components/ImagePreview";

export default {
  name: "PurchaseDetail",
  components: { ImagePreview },
  data() {
    return {
      id: undefined, // 采购报销编号
      // 表单参数
      form: {
        id: undefined,
        reimPersonName: undefined,
        paperReceipt: undefined,
        payDate: undefined,
        purchaseObjs: undefined,
        usage: undefined,
        totalPrice: undefined,
        totalUnit: undefined,
        exchangeRate: undefined,
        totalHkd: undefined,
        purBy: undefined,
        remark: undefined,
        orderImg: undefined,
        payImg: undefined,
        objsImg: undefined,
      },
    };
  },
  created() {
    this.id = this.$route.query.id;
    if (!this.id) {
      this.$message.error("未传递 id 参数，无法查看采购报销信息");
      return;
    }
    this.getDetail();
  },
  methods: {
    /** 获得请假信息 */
    getDetail() {
      getReim(this.id).then((response) => {
        this.form = response.data;
      });
    },
  },
};
</script>
<style scoped>
.app-container {
  width: 100%;
  display: table;
  margin: 0 auto;
}
</style>
