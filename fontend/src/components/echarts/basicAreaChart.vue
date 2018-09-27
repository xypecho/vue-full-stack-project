/*
 * @Author: xypecho
 * @Date: 2018-09-23 22:59:26
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-09-27 23:17:16
 */
<template>
  <div class="baseAreaCharts" v-loading='loading'>
    <div class="charts-header">
      <span>15天内新增注册用户</span>
    </div>
    <ve-line :data="chartData" height='330px'></ve-line>
  </div>
</template>

<script>
import { formatterUserLoginData } from '@/tools/index';

export default {
  data() {
    return {
      loading: false,
      chartData: {}
    };
  },
  created() {
    this.getChartsData();
  },
  methods: {
    getChartsData() {
      this.loading = true;
      this.$axios
        .post('/api/user/userLoginCount')
        .then(res => {
          console.log(formatterUserLoginData(res.data));
          this.chartData = {
            columns: ['data', 'count'],
            rows: formatterUserLoginData(res.data)
          };
          this.loading = false;
        })
        .catch(err => {
          console.log(err);
          this.loading = false;
        });
    }
  }
};
</script>
<style lang='stylus' scoped>
.baseAreaCharts {
  padding: 20px;
  padding-bottom: 0;
  margin: 20px;
  margin-bottom: 0;
  font-size: 14px;
  background-color: #fff;
}

.charts-header {
  border-radius: 2px 2px 0 0;
  zoom: 1;
  margin-bottom: -1px;
  min-height: 24px;
  font-size: 16px;
  color: rgba(0, 0, 0, 0.85);
  font-weight: 500;
}
</style>
