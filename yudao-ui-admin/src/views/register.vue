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
            <el-form
              ref="regForm"
              :model="regForm"
              :rules="RegRules"
              class="reg-form"
            >
              <!-- 输入账号、邮箱、密码 -->
              <div>
                <el-form-item prop="username">
                  <el-input
                    v-model="regForm.username"
                    type="text"
                    auto-complete="off"
                    placeholder="账号"
                  >
                    <svg-icon
                      slot="prefix"
                      icon-class="user"
                      class="el-input__icon input-icon"
                    />
                  </el-input>
                </el-form-item>
                <el-form-item prop="email">
                  <el-input
                    v-model="regForm.email"
                    type="text"
                    auto-complete="off"
                    placeholder="邮箱"
                  >
                    <!-- <i class="el-icon-edit"></i> -->
                    <svg-icon
                      slot="prefix"
                      icon-class="email"
                      class="el-input__icon input-icon"
                    />
                  </el-input>
                </el-form-item>
                <el-form-item prop="password">
                  <el-input
                    v-model="regForm.password"
                    type="password"
                    auto-complete="off"
                    placeholder="密码"
                  >
                    <svg-icon
                      slot="prefix"
                      icon-class="password"
                      class="el-input__icon input-icon"
                    />
                  </el-input>
                </el-form-item>
              </div>

              <!-- 下方的登录按钮 -->
              <el-form-item style="width: 100%">
                <el-button
                  :loading="loading"
                  size="medium"
                  type="primary"
                  style="width: 100%"
                  @click.native.prevent="handleRegister"
                >
                  <span v-if="!loading">注 册</span>
                  <span v-else>注 册 中...</span>
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

export default {
  name: "Register",
  data() {
    return {
      captchaEnable: true,
      tenantEnable: true,
      mobileCodeTimer: 0,
      regForm: {
        username: "",
        password: "",
        email: "",
        tenantId: "134",
      },
      scene: 21,

      RegRules: {
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
    };
  },

  created() {
    // 租户开关
    this.tenantEnable = getTenantEnable();
    // 重定向地址
    this.redirect = this.$route.query.redirect;
  },
  methods: {
    handleRegister() {
      this.$refs.regForm.validate((valid) => {
        if (valid) {
          this.loading = true;
          // 发起注册
          console.log("发起注册", this.regForm);
          const { username, email, password, tenantId } = this.regForm;
          register(username, email, password, tenantId)
            .then(() => {
              this.$router.push({ path: this.redirect || "/" }).catch(() => {});
            })
            .catch(() => {
              this.loading = false;
            });
        }
      });
    },
  },
};
</script>
<style lang="scss" scoped>
@import "~@/assets/styles/register.scss";
</style>
