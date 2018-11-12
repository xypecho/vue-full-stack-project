/*
 * @Author: xypecho
 * @Date: 2018-11-06 21:00:17
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-12 21:24:55
 */
<template>
  <div class="step2">
    <el-form :model="stepForm2" status-icon :rules="rules" ref="stepForm2" label-width="100px" size='mini'>
      <el-form-item label="新密码" prop="pass">
        <el-input type="password" v-model="stepForm2.pass" auto-complete='off'></el-input>
      </el-form-item>
      <el-form-item label="确认新密码" prop="checkPass">
        <el-input type="password" v-model="stepForm2.checkPass" auto-complete='off'></el-input>
      </el-form-item>
    </el-form>
    <div class="step2-btn">
      <el-button class="step2-btn" type="primary" size='mini' @click='submitForm' :loading="loading">提交</el-button>
      <el-button size='mini' @click='prev()'>上一步</el-button>
    </div>
  </div>
</template>

<script>
import { mapGetters, mapMutations } from 'vuex';

export default {
  mounted() {
    this.CHANGEPAGENUMBER(2);
  },
  data() {
    const validatePass = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入密码'));
      } else if (value.length < 6) {
        callback(new Error('密码最少不得少于6位数'));
      } else if (value === this.stepForm.password) {
        callback(new Error('新密码不得与原密码相同'));
      } else {
        callback();
      }
    };
    const validatePass2 = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请再次输入密码'));
      } else if (value !== this.stepForm2.pass) {
        callback(new Error('两次输入密码不一致!'));
      } else {
        callback();
      }
    };
    return {
      loading: false,
      stepForm2: {
        pass: '',
        checkPass: ''
      },
      rules: {
        pass: [{ validator: validatePass, trigger: 'blur' }],
        checkPass: [{ validator: validatePass2, trigger: 'blur' }]
      }
    };
  },
  methods: {
    submitForm() {
      this.$refs.stepForm2.validate(valid => {
        this.loading = true;
        if (valid) {
          setTimeout(() => {
            this.$axios
              .post('/api/user/changePassword', {
                uid: this.user.uid,
                password: this.stepForm2.checkPass
              })
              .then(res => {
                if (res.data.status === 201) {
                  this.$tips({
                    type: 'error',
                    message: res.data.message
                  });
                } else {
                  this.CHANGEPAGENUMBER(3);
                  this.$router.push('/stepForm/step3');
                }
              })
              .catch(err => {
                console.log(err);
              })
              .then(() => {
                this.loading = false;
              });
          }, 1000);
        } else {
          this.loading = false;
        }
      });
    },
    prev() {
      this.CHANGEPAGENUMBER(1);
      this.$router.push('/stepForm/step1');
    },
    ...mapMutations({
      CHANGEPAGENUMBER: 'changePageNumber'
    })
  },
  computed: {
    ...mapGetters(['stepForm', 'user'])
  }
};
</script>
<style lang='stylus' scoped>
.step2 {
  text-align: center;
  margin: 0 auto;

  .step2-btn {
    margin-top: 30px;
  }
}
</style>
