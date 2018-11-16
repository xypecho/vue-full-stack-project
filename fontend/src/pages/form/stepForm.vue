/*
 * @Author: xypecho
 * @Date: 2018-11-06 20:17:56
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-16 22:22:28
 */
<template>
  <div class="stepForm" v-loading='loading'>
    <el-switch v-model="type" active-text="simple" inactive-text="normal" style="padding:20px">
    </el-switch>
    <div class="stepForm-content">
      <el-steps :active="step" :align-center='!type' :simple='type'>
        <el-step title="验证身份"></el-step>
        <el-step title="设置新密码"></el-step>
        <el-step title="完成"></el-step>
      </el-steps>
      <div class="stepForm-view">
        <router-view v-show="!loading"></router-view>
      </div>
    </div>
  </div>
</template>
<script>
import { mapGetters } from 'vuex';

export default {
  created() {
    this.loading = true;
  },
  mounted() {
    setTimeout(() => {
      this.loading = false;
    }, this.globalVariable.duration);
  },
  data() {
    return {
      type: false,
      loading: false
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
