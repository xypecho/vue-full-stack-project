/*
 * @Author: xypecho
 * @Date: 2018-11-06 20:17:56
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-06 21:39:46
 */
<template>
    <div class="stepForm">
        <el-steps :active="active" align-center>
            <el-step title="开单" description="这是一段很长很长很长的描述性文字">123</el-step>
            <el-step title="待付款" description="这是一段很长很长很长的描述性文字">456</el-step>
            <el-step title="完成" description="这是一段很长很长很长的描述性文字">789</el-step>
        </el-steps>
        <router-view></router-view>
        <el-button style="margin-top: 12px;" @click="next">下一步</el-button>
    </div>
</template>

<script>
export default {
  data() {
    return {
      active: 1
    };
  },
  methods: {
    next() {
      console.log(this.$route);
      this.active++;
      this.$router.push(`/stepForm/step${this.active}`);
    }
  }
};
</script>
<style lang='stylus' scoped>
</style>
