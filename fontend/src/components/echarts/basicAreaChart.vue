/*
 * @Author: xypecho
 * @Date: 2018-09-23 22:59:26
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-09-24 20:41:56
 */
<template>
  <div class="baseAreaCharts" v-loading='loading'>
    <ve-line :data="chartData"></ve-line>
  </div>
</template>

<script>
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
          console.log(res.data);
          res.data.map(
            data =>
              data.isToday = new Date(data.last_login_time).toDateString()
          );
          console.log(res.data);
          // this.chartData = {
          //   columns: ['日期', '访问用户'],
          //   rows: [
          //     { 日期: '2018-05-22', 访问用户: 32371 },
          //     { 日期: '2018-05-23', 访问用户: 12328 },
          //     { 日期: '2018-05-24', 访问用户: 92381 }
          //   ]
          // };
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
</style>
