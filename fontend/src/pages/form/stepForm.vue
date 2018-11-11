/*
 * @Author: xypecho
 * @Date: 2018-11-06 20:17:56
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-11 15:09:52
 */
<template>
  <div class="stepForm">
    <el-switch v-model="type" active-text="simple" inactive-text="normal" style="padding:20px">
    </el-switch>
    <div class="stepForm-content">
      <el-steps :active="step" :align-center='!type' :simple='type'>
        <el-step title="验证身份"></el-step>
        <el-step title="设置新密码"></el-step>
        <el-step title="完成"></el-step>
      </el-steps>
      <div class="stepForm-view">
        <router-view></router-view>
      </div>
    </div>
  </div>
</template>
<script>
import { mapGetters } from 'vuex';

export default {
  data() {
    return {
      type: false
    };
  },
  computed: {
    ...mapGetters(['step']),
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
    padding: 40px 160px 60px 160px;
  }

  .stepForm-view {
    max-width: 560px;
    margin: 30px auto;
  }
}
</style>
