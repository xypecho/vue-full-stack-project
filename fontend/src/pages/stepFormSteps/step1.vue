/*
 * @Author: xypecho
 * @Date: 2018-11-06 21:00:17
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-11 15:06:59
 */
<template>
  <div class="step1">
    <el-form :model="stepForm1" status-icon :rules="rules" ref="stepForm1" label-width="100px" size='mini'>
      <el-form-item label="用户名" prop="username">
        <el-input v-model="stepForm1.username"></el-input>
      </el-form-item>
      <el-form-item label="旧密码" prop="password">
        <el-input type="password" v-model="stepForm1.password"></el-input>
      </el-form-item>
      <el-form-item label="确认旧密码" prop="confirmPassword">
        <el-input type="password" v-model="stepForm1.confirmPassword"></el-input>
      </el-form-item>
    </el-form>
    <el-button class="step1-btn" type="primary" size='mini' @click="submitForm('stepForm1')">下一步</el-button>
  </div>
</template>

<script>
import { mapGetters, mapMutations } from 'vuex';

export default {
  data() {
    const validateUsername = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入用户名'));
      }
      setTimeout(() => {
        if (value !== this.user.username) {
          callback(new Error('用户名不正确，请重新输入'));
        } else {
          callback();
        }
      }, 500);
    };
    const validatePassword = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入旧密码'));
      } else if (value.length < 6) {
        callback(new Error('密码最少不得少于6位数'));
      } else {
        callback();
      }
    };
    const validateConfirmPassword = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请再次输入旧密码'));
      } else if (value !== this.stepForm1.password) {
        callback(new Error('两次输入密码不一致!'));
      } else {
        this.$axios
          .post('/api/user/md5Password', {
            password: value
          })
          .then(res => {
            if (res.data.data.password !== this.user.password) {
              callback(new Error('密码不正确!'));
            } else {
              callback();
            }
          });
      }
    };
    return {
      passwordMd5: '',
      stepForm1: {
        username: '',
        password: '',
        confirmPassword: ''
      },
      rules: {
        username: [{ validator: validateUsername, trigger: 'blur' }],
        password: [{ validator: validatePassword, trigger: 'blur' }],
        confirmPassword: [
          { validator: validateConfirmPassword, trigger: 'blur' }
        ]
      }
    };
  },
  methods: {
    submitForm(formName) {
      this.$refs[formName].validate(valid => {
        if (valid) {
          this.CHANGEPAGENUMBER(2);
          this.$router.push('/stepForm/step2');
        }
      });
    },
    md5Password() {
      console.log(11123);
      this.$axios
        .post('/api/user/md5Password', {
          password: this.stepForm1.confirmPassword
        })
        .then(res => {
          this.passwordMd5 = res.data.data.password;
          console.log(this.passwordMd5, this.stepForm1.confirmPassword);
        });
    },
    ...mapMutations({
      CHANGEPAGENUMBER: 'changePageNumber'
    })
  },
  computed: {
    ...mapGetters(['user'])
  }
};
</script>
<style lang='stylus' scoped>
.step1 {
  text-align: center;
  margin: 0 auto;

  .step1-btn {
    margin-top: 50px;
  }
}
</style>
