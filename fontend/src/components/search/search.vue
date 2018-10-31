/*
 * @Author: xueyp
 * @Date: 2018-10-22 14:20:01
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-31 22:09:44
 */
<template>
  <div class="search">
    <el-select v-model="value5" placeholder="请选择" size='mini'>
      <el-option v-for="item in searchCondition" :key="item.value" :label="item.label" :value="item.value">
      </el-option>
    </el-select>
    <span class="search-btn earch-btn-search" @click='search'>搜索</span>
    <span class="search-btn earch-btn-reset" @click="reset">重置</span>
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
    },
    reset() {
      this.value5 = [];
    }
  }
};
</script>
<style lang="stylus" scoped>
.search
  margin-bottom 20px
  .search-btn
    color #409EFF
    font-size 14px
    cursor pointer
    margin 0 7px
    &:last-child
      margin-left 0px
</style>
