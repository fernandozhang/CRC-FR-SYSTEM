<template>
  <div class="container">
    <!-- 注册区域 -->
    <div class="content">
      <!-- 配图 -->
      <div class="pic"></div>
      <!-- 表单 -->
      <div class="field">
        <!-- [移动端]标题 -->
        <h2 class="mobile-title">
          <h3 class="title">HKCRC财务报销系统</h3>
        </h2>

        <!-- 表单 -->
        <div class="form-cont">
          <div class="form">
            <el-form ref="regForm" :model="regForm" :rules="RegRules" class="reg-form">
              <!-- 输入部门、账号、邮箱、密码 -->
              <div>
                <el-form-item prop="deptId">
                  <el-select v-model="regForm.deptId" placeholder="请选择部门">
                    <el-option v-for="item in depts" :key="item.id" :label="item.name" :value="item.id">
                    </el-option>
                    <svg-icon slot="prefix" icon-class="tree" class="el-input__icon input-icon" />
                  </el-select>
                </el-form-item>
                <el-form-item prop="username">
                  <el-input v-model="regForm.username" type="text" auto-complete="off" placeholder="账号">
                    <svg-icon slot="prefix" icon-class="user" class="el-input__icon input-icon" />
                  </el-input>
                </el-form-item>
                <el-form-item prop="email">
                  <el-input v-model="regForm.email" type="text" auto-complete="off" placeholder="邮箱">
                    <!-- <i class="el-icon-edit"></i> -->
                    <svg-icon slot="prefix" icon-class="email" class="el-input__icon input-icon" />
                  </el-input>
                </el-form-item>
                <el-form-item prop="password">
                  <el-input v-model="regForm.password" type="password" auto-complete="off" placeholder="密码">
                    <svg-icon slot="prefix" icon-class="password" class="el-input__icon input-icon" />
                  </el-input>
                </el-form-item>
              </div>

              <!-- 下方的登录按钮 -->
              <el-form-item style="width: 100%">
                <el-button :loading="loading" size="medium" type="primary" style="width: 100%"
                  @click.native.prevent="handleRegister">
                  <span v-if="!loading">注 册</span>
                  <span v-else>注 册 中...</span>
                </el-button>
              </el-form-item>
              <el-form-item style="width: 100%">
                <el-button :loading="loading" size="medium" type="primary" style="width: 100%"
                  @click.native.prevent="handleReturn">
                  <span>返 回</span>
                </el-button>
              </el-form-item>
            </el-form>
          </div>
        </div>
      </div>
    </div>
    <!-- footer -->
    <div class="footer">
      Copyright © 2020-2022 hkcrc.hk All Rights Reserved.
    </div>
  </div>
</template>

<script>
import { getTenantEnable } from "@/utils/ruoyi";
import { register } from "@/api/register";
import { listSimpleDepts } from "@/api/system/dept";

export default {
  name: "Register",
  data() {
    return {
      captchaEnable: true,
      tenantEnable: true,
      mobileCodeTimer: 0,
      regForm: {
        deptId: undefined,
        username: "",
        password: "",
        email: "",
        tenantId: process.env.VUE_APP_DEFAULT_TENANT_ID,
      },
      scene: 21,

      RegRules: {
        deptId: [{ required: true, trigger: "blue", message: "部门不能为空" }],
        username: [
          { required: true, trigger: "blur", message: "用户名不能为空" },
        ],
        password: [
          { required: true, trigger: "blur", message: "密码不能为空" },
        ],
        email: [
          { required: true, trigger: "blur", message: "邮箱不能为空" },
          {
            validator: function (rule, value, callback) {
              if (
                /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(
                  value
                ) == false
              ) {
                callback(new Error("邮箱格式错误"));
              } else {
                callback();
              }
            },
            trigger: "blur",
          },
        ],
      },
      loading: false,
      redirect: undefined,
      depts: [],
    };
  },

  created() {
    // 租户开关
    this.tenantEnable = getTenantEnable();
    // 重定向地址
    this.redirect = this.$route.query.redirect;
    listSimpleDepts().then((resp) => {
      this.depts = resp.data
      let index = this.depts.findIndex(ele => ele.id === 113)
      this.depts.splice(index, 1);
    });
  },
  methods: {
    handleRegister() {
      this.$refs.regForm.validate((valid) => {
        if (valid) {
          this.loading = true;
          // 发起注册
          console.log("发起注册", this.regForm);
          register(this.regForm)
            .then(() => {
              this.$router.push({ path: this.redirect || "/" }).catch(() => { });
            })
            .catch(() => {
              this.loading = false;
            });
        }
      });
    },
    handleReturn() {
      this.$router.push({ path: this.redirect || "/" }).catch(() => { });
    },
  },
};
</script>
<style lang="scss" scoped>
@import "~@/assets/styles/register.scss";
</style>
