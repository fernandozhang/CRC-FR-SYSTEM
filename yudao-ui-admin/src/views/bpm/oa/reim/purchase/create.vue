<template>
  <div class="app-container">
    <!-- 对话框(添加 / 修改) -->
    <el-form
      ref="form"
      :model="form"
      :rules="rules"
      label-width="10vw"
      label-position="left"
    >
      <el-form-item label="是否有纸质收据" prop="paperReceipt">
        <el-radio-group
          v-model="form.paperReceipt"
          @change="resetOrderPayImg()"
        >
          <el-radio :label="true">有</el-radio>
          <el-radio :label="false">没有</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item prop="payDate">
        <span slot="label">
          <el-tooltip content="从付款日期起，三个月内可报销" placement="top">
            <i class="el-icon-question" />
          </el-tooltip>
          付款日期
        </span>
        <el-date-picker
          clearable
          size="small"
          v-model="form.payDate"
          type="date"
          value-format="timestamp"
          placeholder="选择付款时间"
          :picker-options="pickerOptions"
        />
      </el-form-item>
      <el-form-item label="采购项目" prop="purchaseObjs">
        <el-col :span="10">
          <el-input
            type="textarea"
            :rows="3"
            v-model="form.purchaseObjs"
            placeholder="请输入物品名称，可输入多个"
            :maxlength="500"
            :show-word-limit="true"
          />
        </el-col>
      </el-form-item>
      <el-form-item label="用途" prop="usage">
        <el-col :span="10">
          <el-input
            type="textarea"
            :rows="3"
            v-model="form.usage"
            placeholder="请输入物品用途"
            :maxlength="500"
            :show-word-limit="true"
          />
        </el-col>
      </el-form-item>
      <el-form-item label="购买途径" prop="purBy">
        <el-select v-model="form.purBy" placeholder="请选择途径">
          <el-option
            v-for="dict in wayTypeDictData"
            :key="parseInt(dict.value)"
            :label="dict.label"
            :value="parseInt(dict.value)"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="货币种类" prop="totalUnit">
        <el-select v-model="form.totalUnit" placeholder="请选择货币种类">
          <el-option
            v-for="dict in currencyTypeDictData"
            :key="parseInt(dict.value)"
            :label="dict.label"
            :value="parseInt(dict.value)"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="总价" prop="totalPrice">
        <el-col :span="10">
          <el-input-number
            :rows="3"
            v-model="form.totalPrice"
            placeholder="请输入采购物品总价"
            :controls="false"
            :precision="2"
          />
        </el-col>
      </el-form-item>
      <el-form-item prop="exchangeRate">
        <!-- v-show="
          form.totalUnit != undefined && form.totalUnit != currencyTypeHKD
        " -->
        <span slot="label">
          <el-tooltip
            content="汇率数据是根据付款日期和货币种类，查询网址 https://tw.exchange-rates.org "
            placement="top"
          >
            <i class="el-icon-question" />
          </el-tooltip>
          兑港币汇率
        </span>
        <el-col :span="10">
          <el-input-number
            :rows="3"
            v-model="form.exchangeRate"
            :disabled="true"
            :controls="false"
          />
        </el-col>
      </el-form-item>
      <el-form-item label="总价（港币）" prop="totalHkd">
        <el-col :span="10">
          <el-input-number
            :rows="3"
            v-model="form.totalHkd"
            :disabled="true"
            :controls="false"
            :precision="2"
          />
        </el-col>
      </el-form-item>
      <el-form-item label="备注" prop="remark">
        <el-col :span="10">
          <el-input
            type="textarea"
            :rows="3"
            v-model="form.remark"
            placeholder="请输入备注"
            :maxlength="500"
            :show-word-limit="true"
          />
        </el-col>
      </el-form-item>
      <el-form-item label="物品照片" prop="objsImg">
        <imageUpload v-model="form.objsImg" :limit="1" />
      </el-form-item>
      <el-form-item
        label="订单截图"
        v-show="form.paperReceipt != undefined && !form.paperReceipt"
        prop="orderImg"
      >
        <imageUpload v-model="form.orderImg" :limit="1" />
      </el-form-item>
      <el-form-item
        label="付款截图"
        v-show="form.paperReceipt != undefined && !form.paperReceipt"
        prop="payImg"
      >
        <imageUpload v-model="form.payImg" :limit="1" />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="submitForm">提 交</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import { createReim, getReim } from "@/api/bpm/purchase";
import { getDictDatas, DICT_TYPE } from "@/utils/dict";
import ImageUpload from "@/components/ImageUpload";
import { getExchangeRate } from "@/utils/exchangeRate";
import { parseTime } from "@/utils/ruoyi";

export default {
  name: "PurchaseCreate",
  components: { ImageUpload },
  data() {
    /**校验总金额大小 */
    var checkTotalHkd = (rule, value, callback) => {
      if (value < 0) {
        console.log(value);
        callback(new Error("报销范围在 HK$ 0-10000"));
      } else if (value > 10000) {
        callback(new Error("报销范围在 HK$ 0-10000"));
      } else {
        callback();
      }
    };
    return {
      // 表单参数
      form: {
        // reimPersonName: undefined, // 报销申请人员姓名
        paperReceipt: undefined, // 是否有纸质收据
        payDate: undefined, // 付款日期
        purchaseObjs: undefined, // 采购项目
        usage: undefined, // 物品用途
        totalPrice: undefined, // 总价
        totalUnit: undefined, // 付款金额单位(1rmb,2hkd,3usd)
        exchangeRate: undefined, // 兑港币汇率
        totalHkd: undefined, // 总价（港币）
        purBy: undefined, // 购买途径（1线上，2线下）
        remark: undefined, // 备注
        orderImg: undefined, // 订单截图
        payImg: undefined, // 付款截图
        objsImg: undefined, // 物品照片
      },
      // 表单校验
      rules: {
        reimPersonName: [
          { required: true, message: "申请人不能为空", trigger: "blur" },
        ],
        paperReceipt: [
          {
            required: true,
            message: "请选择是否有纸质收据",
            trigger: "change",
          },
        ],
        payDate: [
          { required: true, message: "付款日期不能为空", trigger: "blur" },
        ],
        purchaseObjs: [
          { required: true, message: "采购项目不能为空", trigger: "blur" },
        ],
        usage: [{ required: true, message: "用途不能为空", trigger: "blur" }],
        totalPrice: [
          { required: true, message: "总价不能为空", trigger: "blur" },
        ],
        purBy: [
          { required: true, message: "购买途径不能为空", trigger: "change" },
        ],
        totalUnit: [
          { required: true, message: "货币种类不能为空", trigger: "change" },
        ],
        totalHkd: [
          { type: "number", validator: checkTotalHkd, trigger: "blur" },
        ],
        orderImg: [],
        payImg: [],
      },

      wayTypeDictData: getDictDatas(DICT_TYPE.REIM_PURCHASE_WAY_TYPE),
      currencyTypeDictData: getDictDatas(DICT_TYPE.REIM_PURCHASE_CURRENCY_TYPE),

      // 币种：港元
      currencyTypeHKD: 2,

      pickerOptions: {
        disabledDate(time) {
          let curDate = new Date().getTime();
          let three = 3 * 30 * 24 * 3600 * 1000;
          let threeMonths = curDate - three;
          return time.getTime() > Date.now() || time.getTime() < threeMonths;
        },
      },

      /**采购报销编号 */
      id: undefined,
    };
  },
  created() {
    this.id = this.$route.query.id;
    if (this.id) {
      this.getDetail();
    }
  },
  methods: {
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (!valid) {
          return;
        }

        // 添加的提交
        createReim(this.form).then((response) => {
          this.$modal.msgSuccess("发起成功");
          this.$modal
            .confirm("发起成功，再创建一单？", "提示")
            .then(() => {
              // ...
              this.$tab.closeOpenPage({ path: "/purchase/index" });
            })
            .then(() => {
              // ...
              this.$tab.openPage("发起采购报销", "/purchase/create");
            })
            .catch(() => {
              this.$tab.closeOpenPage({ path: "/purchase/index" });
            });
        });
      });
    },
    queryExchangeRate(payDate, currency) {
      if (
        payDate != undefined &&
        payDate &&
        currency &&
        currency != undefined
      ) {
        if (currency == 1) {
          getExchangeRate("CNY", parseTime(payDate, "{y}-{m}-{d}")).then(
            (resp) => (this.form.exchangeRate = resp)
          );
        } else if (currency == 2) this.form.exchangeRate = 1.0;
        else if (currency == 3)
          getExchangeRate("USD", parseTime(payDate, "{y}-{m}-{d}")).then(
            (resp) => (this.form.exchangeRate = resp)
          );
        else console.log("unknown currency!");
      }
    },
    resetOrderPayImg() {
      if (this.form.paperReceipt) {
        this.rules.orderImg = [];
        this.rules.payImg = [];
      } else {
        // 没有收据需要订单截图和付款截图
        this.rules.orderImg = [
          {
            required: true,
            message: "订单截图不能为空",
            trigger: "blur",
          },
        ];
        this.rules.payImg = [
          {
            required: true,
            message: "付款截图不能为空",
            trigger: "blur",
          },
        ];
      }
      this.$refs.form.clearValidate();
    },
    /** 获得请假信息 */
    getDetail() {
      getReim(this.id).then((response) => {
        this.form = response.data;
        // 去掉id
        this.form.id = undefined;
      });
    },
  },
  watch: {
    "form.totalPrice"(value) {
      // 监听总价
      if (
        value != undefined &&
        value &&
        this.form.exchangeRate != undefined &&
        this.form.exchangeRate
      )
        this.form.totalHkd = Number.parseFloat(value * this.form.exchangeRate);
    },

    "form.totalUnit"(value) {
      // 监听币种
      this.queryExchangeRate(this.form.payDate, value);
    },

    "form.exchangeRate"(value) {
      // 监听汇率
      if (
        value != undefined &&
        value &&
        this.form.totalPrice != undefined &&
        this.form.totalPrice
      )
        this.form.totalHkd = Number.parseFloat(this.form.totalPrice * value);
    },
    "form.payDate"(value) {
      // 监听付款日期
      this.queryExchangeRate(value, this.form.totalUnit);
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
