/*
 * @Author: xypecho
 * @Date: 2018-11-06 21:00:17
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-12 22:33:15
 */
<template>
    <div class="step3">
        <i class="el-icon-success"></i>
        <div class="step3-result">操作成功</div>
        <el-button class="step3-btn" type="primary" size='mini' @click="revise">重新修改</el-button>
    </div>
</template>

<script>
import { mapMutations, mapGetters } from 'vuex';

export default {
  mounted() {
    this.CHANGEPAGENUMBER(3);
    console.log(this.stepForm);
  },
  methods: {
    revise() {
      this.CHANGEPAGENUMBER(1);
      this.$router.push('/stepForm/step1');
    },
    ...mapMutations({
      CHANGEPAGENUMBER: 'changePageNumber'
    })
  },
  computed: {
    ...mapGetters(['stepForm'])
  }
};
</script>
<style lang='stylus' scoped>
.step3 {
    text-align: center;
    margin: 0 auto;

    .el-icon-success {
        font-size: 72px;
        color: #52c41a;
    }

    .step3-result {
        font-size: 24px;
        color: rgba(0, 0, 0, 0.85);
        font-weight: 500;
        line-height: 32px;
        margin: 16px 0;
    }

    .step3-btn {
        margin-top: 30px;
    }
}
</style>
