/*
 * @Author: xypecho
 * @Date: 2018-09-11 21:48:05
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-12 16:57:11
 */
<template>
  <div class="account">
    <div class="account-left">
      <p class="account-header">帐号信息</p>
      <div class="account-content">
        <el-row>
          <el-col :span="4">
            <div class="grid-content bg-purple">帐号名称</div>
          </el-col>
          <el-col :span="20">
            <div class="grid-content bg-purple-light">admin</div>
          </el-col>
        </el-row>
      </div>
    </div>
    <div class="account-right">
      <p class="account-header">其他信息</p>
      <el-form :model="ruleForm" ref="ruleForm" label-width="100px" class="demo-ruleForm" size="mini">
        <el-form-item label="帐号名称" prop="name">
          <el-input v-model="ruleForm.name" readonly></el-input>
        </el-form-item>
        <el-form-item label="活动区域" prop="region">
          <el-select v-model="ruleForm.region" placeholder="请选择活动区域">
            <el-option label="区域一" value="shanghai"></el-option>
            <el-option label="区域二" value="beijing"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="活动时间" required>
          <el-col :span="11">
            <el-form-item prop="date1">
              <el-date-picker type="date" placeholder="选择日期" v-model="ruleForm.date1" style="width: 100%;"></el-date-picker>
            </el-form-item>
          </el-col>
          <el-col class="line" :span="2">-</el-col>
          <el-col :span="11">
            <el-form-item prop="date2">
              <el-time-picker type="fixed-time" placeholder="选择时间" v-model="ruleForm.date2" style="width: 100%;"></el-time-picker>
            </el-form-item>
          </el-col>
        </el-form-item>
        <el-form-item label="即时配送" prop="delivery">
          <el-switch v-model="ruleForm.delivery"></el-switch>
        </el-form-item>
        <el-form-item label="活动性质" prop="type">
          <el-checkbox-group v-model="ruleForm.type">
            <el-checkbox label="美食/餐厅线上活动" name="type"></el-checkbox>
            <el-checkbox label="地推活动" name="type"></el-checkbox>
            <el-checkbox label="线下主题活动" name="type"></el-checkbox>
            <el-checkbox label="单纯品牌曝光" name="type"></el-checkbox>
          </el-checkbox-group>
        </el-form-item>
        <el-form-item label="特殊资源" prop="resource">
          <el-radio-group v-model="ruleForm.resource">
            <el-radio label="线上品牌商赞助"></el-radio>
            <el-radio label="线下场地免费"></el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="活动形式" prop="desc">
          <el-input type="textarea" v-model="ruleForm.desc"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="submitForm('ruleForm')">提交修改</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
export default {
  created() {
    this.getUserInfo();
  },
  data() {
    return {
      userInfo: {},
      ruleForm: {
        name: '',
        region: '',
        date1: '',
        date2: '',
        delivery: false,
        type: [],
        resource: '',
        desc: ''
      }
    };
  },
  computed: {
    ...mapGetters(['user'])
  },
  methods: {
    getUserInfo() {
      let uid = this.user.uid;
      this.$axios
        .get('/api/user/userInfo', { params: { uid: uid } })
        .then(res => {
          if (res.status == 200) {
            this.userInfo = res.data;
          } else {
            this.$tips({
              type: 'error',
              message: res.message
            });
          }
        });
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
<style lang='stylus' scoped>
.account {
  padding: 20px;
  font-size: 14px;
  display: flex;
}

.account-left, .account-right {
  flex: 1;
  margin: 0 20px;

  & .account-header {
    border-bottom: 1px solid #e5e5e5;
    padding-bottom: 12px;
  }
}

.account-content {
  color: #606266;
  font-size: 14px;
  width: 100%;
  padding: 20px 0;
  border-bottom: 1px solid #e5e5e5;
}
</style>
