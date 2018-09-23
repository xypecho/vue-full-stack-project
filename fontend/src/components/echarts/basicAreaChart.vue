/*
 * @Author: xypecho
 * @Date: 2018-09-23 22:59:26
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-09-24 00:17:47
 */
<template>
    <div class="baseAreaCharts">
        <h1>baseAreaCharts</h1>
        <div id="main" style="width:400px;height:400px"></div>
    </div>
</template>

<script>
import echarts from 'echarts';

export default {
  mounted() {
    this.initEcharts();
  },
  methods: {
    initEcharts() {
      const myChart = echarts.init(document.getElementById('main'));
      // 绘制图表
      myChart.setOption({
        title: {
          text: 'ECharts 入门示例'
        },
        tooltip: {},
        xAxis: {
          data: ['衬衫', '羊毛衫', '雪纺衫', '裤子', '高跟鞋', '袜子']
        },
        yAxis: {},
        series: [
          {
            name: '销量',
            type: 'bar',
            data: [5, 20, 36, 10, 10, 20]
          }
        ]
      });
    }
  }
};
</script>
<style lang='stylus' scoped>
.baseAreaCharts {
    padding: 20px;
    margin: 20px;
    font-size: 14px;
    padding-bottom: 70px;
    background-color: #fff;
}
</style>
