/*
 * @Author: xueyp
 * @Date: 2018-10-22 14:20:01
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-26 22:47:10
 */
<template>
  <div class="search">
    <el-select v-model="value5" placeholder="请选择" size='mini'>
      <el-option v-for="item in searchCondition" :key="item.value" :label="item.label" :value="item.value">
      </el-option>
    </el-select>
    <span style="#409EFF" @click='search'>搜索</span>
    <span style="#409EFF">重置</span>
  </div>
</template>
<script>
export default {
  data() {
    return {
      value5: []
    };
  },
  props: {
    searchCondition: {
      type: Array,
      defailt: []
    }
  },
  methods: {
    search() {
      this.$emit('search', this.value5);
    }
  }
};
</script>
<style lang="stylus" scoped>
</style>
