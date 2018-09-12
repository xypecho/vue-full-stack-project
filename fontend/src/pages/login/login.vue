/*
 * @Author: xypecho
 * @Date: 2018-09-07 21:22:42
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-12 15:45:44
 */

<template>
  <div class="login">
    <div class="loginBox" v-loading='loading'>
      <el-tabs v-model="activeName">
        <el-tab-pane label="注册" name="signUp">
          <el-form :model="signUpForm" ref="signUpForm" label-width="100px" class="demo-dynamic" :rules="signUpFormRules">
            <el-form-item prop="username" label="用户名">
              <el-input v-model="signUpForm.username" size='small'></el-input>
            </el-form-item>
            <el-form-item prop="password" label="密码">
              <el-input type="password" v-model="signUpForm.password" size='small'></el-input>
            </el-form-item>
            <el-form-item prop="confirmPassword" label="确认密码" @keyup.enter.native="register">
              <el-input type="password" v-model="signUpForm.confirmPassword" size='small'></el-input>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" size='small' @click='register'>注册</el-button>
              <el-button size='small' @click="resetForm('signUpForm')">重置</el-button>
            </el-form-item>
          </el-form>
        </el-tab-pane>
        <el-tab-pane label="登录" name="signIn">
          <el-form :model="signInForm" ref="signInForm" label-width="100px" class="demo-dynamic" :rules="signInFormRules">
            <el-form-item prop="username" label="用户名">
              <el-input v-model="signInForm.username" size='small'></el-input>
            </el-form-item>
            <el-form-item prop="password" label="密码">
              <el-input type="password" v-model="signInForm.password" size='small' @keyup.enter.native="login"></el-input>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" size='small' @click='login'>登陆</el-button>
            </el-form-item>
          </el-form>
        </el-tab-pane>
      </el-tabs>
    </div>
  </div>
</template>
<script>
import { mapMutations } from 'vuex';
import { setLocalStorage } from '@/tools/index';

export default {
  data() {
    const validConfirm = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请再次输入密码'));
      } else if (value !== this.signUpForm.password) {
        callback(new Error('两次输入密码不一致!'));
      } else {
        callback();
      }
    };
    return {
      loading: false,
      activeName: 'signIn',
      signUpForm: {
        username: '',
        password: '',
        confirmPassword: ''
      },
      signInForm: {
        username: '',
        password: ''
      },
      signUpFormRules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur' },
          {
            min: 6,
            message: '密码最少不得少于6位数',
            trigger: 'blur'
          }
        ],
        confirmPassword: [
          { required: true, validator: validConfirm, trigger: 'blur' }
        ]
      },
      signInFormRules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur' },
          {
            min: 6,
            message: '密码最少不得少于6位数',
            trigger: 'blur'
          }
        ]
      }
    };
  },
  methods: {
    resetForm(formName) {
      this.$refs[formName].resetFields();
    },
    register() {
      this.$refs.signUpForm.validate(valid => {
        if (valid) {
          this.loading = true;
          this.$axios
            .post('/api/user/register', {
              username: this.signUpForm.username,
              password: this.signUpForm.password,
              confirmPassword: this.signUpForm.confirmPassword
            })
            .then(res => {
              if (res.data.status === 200) {
                this.setUserInfo(res.data.data);
                setLocalStorage(res.data.data);
                this.$tips({
                  message: res.data.message,
                  type: 'success'
                });
                this.$router.push('index');
              } else {
                this.$tips({
                  message: res.data.message,
                  type: 'error'
                });
              }
              this.loading = false;
            });
        }
      });
    },
    login() {
      this.$refs.signInForm.validate(valid => {
        if (valid) {
          this.loading = true;
          this.$axios
            .post('/api/user/login', {
              username: this.signInForm.username,
              password: this.signInForm.password
            })
            .then(res => {
              if (res.data.status === 200) {
                this.setUserInfo(res.data.data);
                setLocalStorage(res.data.data);
                this.$tips({
                  message: res.data.message,
                  type: 'success'
                });
                this.$router.push('index');
              } else {
                this.$tips({
                  message: res.data.message,
                  type: 'error'
                });
              }
              this.loading = false;
            });
        }
      });
    },
    ...mapMutations({
      setUserInfo: 'setUserInfo'
    })
  }
};
</script>
<style lang="stylus" scoped>
.login {
  background: rgba(0, 0, 0, 0.2);
  display: flex;
  justify-content: space-around;
  align-items: center;
  position: relative;
  width: 100%;
  height: 100%;

  &:before {
    background-image: url('~@/assets/images/code.jpg');
    background-size: cover;
    content: '';
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
    z-index: -999;
  }
}

.loginBox {
  background-color: #fff;
  margin-left: auto;
  margin-right: 100px;
  padding: 43px 43px 15px 43px;
  font-size: 17px;
}
</style>
