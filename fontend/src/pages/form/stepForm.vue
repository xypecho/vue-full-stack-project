/*
 * @Author: xypecho
 * @Date: 2018-11-06 20:17:56
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-09 09:15:06
 */
<template>
  <div class="stepForm">
    <el-switch v-model="type" active-text="simple" inactive-text="normal" style="padding:20px">
    </el-switch>
    <div class="stepForm-content">
      <el-steps :active="step" :align-center='!type' :simple='type'>
        <el-step title="填写转账信息"></el-step>
        <el-step title="确认转账信息"></el-step>
        <el-step title="完成"></el-step>
      </el-steps>
      <router-view></router-view>
      <div class="stepForm-btn">
        <el-button @click="next" size='mini' type="primary">{{ stepName }}</el-button>
        <el-button @click="prev" size='mini' v-show='step===2'>上一步</el-button>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      step: 1,
      type: false
    };
  },
  methods: {
    next() {
      this.step++;
      this.$router.push(`/stepForm/step${this.step}`);
    },
    prev() {
      this.step--;
      this.$router.push(`/stepForm/step${this.step}`);
    }
  },
  computed: {
    stepName() {
      switch (this.step) {
        case 2:
          return '提交';
        case 3:
          return '完成';
        default:
          return '下一步';
      }
    }
  }
};
</script>
<style lang='stylus' scoped>
.stepForm {
  .stepForm-content {
    padding: 40px 60px 60px 60px;

    .stepForm-btn {
      text-align: center;
    }
  }
}
</style>
