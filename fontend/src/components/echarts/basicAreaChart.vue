/*
 * @Author: xypecho
 * @Date: 2018-09-23 22:59:26
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-15 22:51:31
 */
<template>
  <div class="baseAreaCharts" v-loading='loading'>
    <div class="charts-header">
      <span>15天内新增注册用户</span>
    </div>
    <ve-line :data="chartData" :toolbox='toolbox' height='330px' ref='charts'></ve-line>
  </div>
</template>

<script>
import { formatterUserLoginData } from '@/tools/index';
import { mapGetters } from 'vuex';

export default {
  data() {
    this.toolbox = {
      feature: {
        magicType: { type: ['line', 'bar'] },
        saveAsImage: {}
      }
    };
    return {
      loading: false,
      chartData: {}
    };
  },
  created() {
    this.loading = true;
  },
  mounted() {
    this.getChartsData();
  },
  methods: {
    getChartsData() {
      this.$axios
        .post('/api/user/userLoginCount')
        .then(res => {
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
  },
  watch: {
    isCollapse(v) {
      this.$nextTick(() => {
        console.log(v);
        // this.$refs['charts'].echarts.resize();
      });
    }
  },
  computed: {
    ...mapGetters(['isCollapse'])
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
