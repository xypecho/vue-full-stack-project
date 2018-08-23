<template>
  <div class="login">
    <div class="signIn" v-show='status'>
      <div class="signInInfo">
        <h2>新用户？注册以创建您的帐户</h2>
        <span @click='changeStatus'>注册</span>
      </div>
      <div class="signInBox">
        <h2>登录</h2>
        <el-form :model="signInForm" :rules="rules" ref="signInForm" label-width="100px" class="signInForm">
          <el-form-item label="用户名" prop="username">
            <el-input v-model="signInForm.username"></el-input>
          </el-form-item>
          <el-form-item label="密码" prop="password">
            <el-input type="password" v-model="signInForm.password"></el-input>
          </el-form-item>
          <el-form-item class="btn" >
            <el-button type="primary" @click="submitForm('signInForm')">登录</el-button>
          </el-form-item>
        </el-form>
      </div>
    </div>
    <div class="signUp" v-show='!status'>
      <div class="signUpBox">
        <h2>注册</h2>
        <el-form :model="signUpForm" :rules="rules" ref="signUpForm" label-width="100px" class="signUpForm">
          <el-form-item label="用户名" prop="username">
            <el-input v-model="signUpForm.username"></el-input>
          </el-form-item>
          <el-form-item label="密码" prop="password">
            <el-input type="password" v-model="signUpForm.password"></el-input>
          </el-form-item>
          <el-form-item label="确认密码" prop="confirmPassword">
            <el-input type="password" v-model="signUpForm.confirmPassword"></el-input>
          </el-form-item>
          <el-form-item class="btn">
            <el-button type="primary" @click="submitForm('signUpForm')">立即注册</el-button>
          </el-form-item>
        </el-form>
      </div>
      <div class="signUpInfo">
        <h2>已有账号？点击登录</h2>
        <span @click='changeStatus'>登录</span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    const validateConfirm = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请再次输入密码'));
      } else if (value !== this.signUpForm.password) {
        callback(new Error('两次输入密码不一致!'));
      } else {
        callback();
      }
    };
    return {
      status: true, // false为注册，true为登录
      signInForm: {
        username: '',
        password: ''
      },
      signUpForm: {
        username: '',
        password: '',
        confirmPassword: ''
      },
      rules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur' }
        ],
        password: [{ required: true, message: '请输入密码', trigger: 'blur' }],
        confirmPassword: [
          { validator: validateConfirm, required: true, trigger: 'blur' }
        ]
      }
    };
  },
  methods: {
    changeStatus() {
      this.status = !this.status;
    },
    submitForm(formName) {
      this.$refs[formName].validate(valid => {
        if (valid) {
          alert('submit!');
        }
      });
    },
    resetForm(formName) {
      this.$refs[formName].resetFields();
    }
  }
};
</script>

<style lang="stylus" scoped>
.login {
  display: flex;
  background-color: rgba(0, 0, 0, 0.2);
  height: 100%;
  justify-content: space-around;
  align-items: center;

  &::before {
    background-image: url('~@/assets/images/marvin-meyer-571072-unsplash.jpg');
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

.signIn, .signUp {
  width: 60%;
  height: 40%;
  display: flex;
  background-color: rgba(0, 0, 0, 0.7);
  align-items: center;
  padding: 0 1%;
}

.signInInfo, .signUpInfo {
  flex: 1;
  color: #ffffff;
}

.signInInfo, .signUpInfo {
  h2 {
    font-weight: 500;
    text-align: center;
  }
}

.signInInfo, .signUpInfo {
  span {
    width: 100px;
    height: 40px;
    background-color: transparent;
    line-height: 40px;
    display: block;
    border: 2px solid #86888a;
    text-align: center;
    cursor: pointer;
    margin: 0 auto;
  }
}

.signInBox, .signUpBox {
  background-color: #fff;
  width: 50%;
  padding: 20px;
  height: 110%;
  flex: 1;
  transform: all 5s;
}

.signInBox, .signUpBox {
  h2 {
    font-weight: 500;
    color: #409EFF;
    margin-top: 0px;
  }
}

.btn {
  text-align: right;
}
</style>

