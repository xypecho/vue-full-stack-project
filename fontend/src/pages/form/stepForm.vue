/*
 * @Author: xypecho
 * @Date: 2018-11-06 20:17:56
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-08 16:28:30
 */
<template>
  <div class="stepForm">
    <el-steps :active="step" align-center>
      <el-step title="开单" description="这是一段很长很长很长的描述性文字"></el-step>
      <el-step title="待付款" description="这是一段很长很长很长的描述性文字"></el-step>
      <el-step title="完成" description="这是一段很长很长很长的描述性文字"></el-step>
    </el-steps>
    <router-view></router-view>
    <div class="stepForm-btn">
      <el-button @click="next" size='mini' type="primary">{{ stepName }}</el-button>
      <el-button @click="prev" size='mini' v-show='step===2'>上一步</el-button>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      step: 1
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
      return this.step === 2 ? '提交' : '下一步';
    }
  }
};
</script>
<style lang='stylus' scoped>
.stepForm {
  padding: 60px;

  .stepForm-btn {
    text-align: center;
  }
}
</style>
