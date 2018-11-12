/*
 * @Author: xypecho
 * @Date: 2018-11-06 21:00:17
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-12 14:30:36
 */
<template>
  <div class="step2">
    <el-form :model="stepForm2" status-icon :rules="rules" ref="stepForm2" label-width="100px" size='mini'>
      <el-form-item label="密码" prop="pass">
        <el-input type="password" v-model="stepForm2.pass" autocomplete="off"></el-input>
      </el-form-item>
      <el-form-item label="确认密码" prop="checkPass">
        <el-input type="password" v-model="stepForm2.checkPass" autocomplete="off"></el-input>
      </el-form-item>
      <el-form-item label="年龄" prop="age">
        <el-input v-model.number="stepForm2.age"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="submitForm('stepForm2')">提交</el-button>
        <el-button @click="resetForm('stepForm2')">重置</el-button>
      </el-form-item>
    </el-form>
    <el-button class="step2-btn" type="primary" size='mini'>提交</el-button>
    <el-button type="primary" size='mini' @click='prev()'>上一步</el-button>
  </div>
</template>

<script>
import { mapMutations } from 'vuex';

export default {
  data() {
    var checkAge = (rule, value, callback) => {
      if (!value) {
        callback(new Error('年龄不能为空'));
      }
      setTimeout(() => {
        if (!Number.isInteger(value)) {
          callback(new Error('请输入数字值'));
        } else {
          callback();
        }
      }, 1000);
    };
    var validatePass = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入密码'));
      } else {
        if (this.stepForm2.checkPass !== '') {
          this.$refs.stepForm2.validateField('checkPass');
        }
        callback();
      }
    };
    var validatePass2 = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请再次输入密码'));
      } else if (value !== this.stepForm2.pass) {
        callback(new Error('两次输入密码不一致!'));
      } else {
        callback();
      }
    };
    return {
      stepForm2: {
        pass: '',
        checkPass: '',
        age: ''
      },
      rules: {
        pass: [{ validator: validatePass, trigger: 'blur' }],
        checkPass: [{ validator: validatePass2, trigger: 'blur' }],
        age: [{ validator: checkAge, trigger: 'blur' }]
      }
    };
  },
  methods: {
    submitForm(formName) {
      this.$refs[formName].validate(valid => {
        if (valid) {
          alert('submit!');
        }
      });
    },
    resetForm(formName) {
      this.$refs[formName].resetFields();
    },
    prev() {
      this.CHANGEPAGENUMBER(1);
      this.$router.push('/stepForm/step1');
    },
    ...mapMutations({
      CHANGEPAGENUMBER: 'changePageNumber'
    })
  }
};
</script>
<style lang='stylus' scoped>
</style>
