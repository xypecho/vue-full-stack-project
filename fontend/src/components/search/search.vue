/*
 * @Author: xueyp
 * @Date: 2018-10-22 14:20:01
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-31 22:09:44
 */
<template>
  <div class="search">
    <el-select v-model="value5" placeholder="请选择帐号状态" size='mini' class="search-item">
      <el-option v-for="item in searchCondition" :key="item.value" :label="item.label" :value="item.value">
      </el-option>
    </el-select>
    <el-date-picker v-model="value6" type="daterange" range-separator="至" start-placeholder="注册起始日期" end-placeholder="注册终止日期" size='mini' class="search-item search-item-data">
    </el-date-picker>
    <el-input v-model="input" placeholder="请输入用户名" class="search-item" size='mini'></el-input>
    <span class="search-btn earch-btn-search" @click='search'>搜索</span>
    <span class="search-btn earch-btn-reset" @click="reset">重置</span>
  </div>
</template>
<script>
export default {
  data() {
    return {
      value5: [],
      value6: ''
    };
  },
  props: {
    searchCondition: {
      type: Array,
      defailt: [],
      input: ''
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
.search {
  margin-bottom: 20px;
  display: flex;
  align-items: center;

  .search-item {
    margin: 0 10px;
    flex: 0 0 200px;

    &:first-child {
      margin-left: 0;
    }
  }

  .search-item-data {
    flex: 0 0 290px;
  }

  .search-btn {
    color: #409EFF;
    font-size: 14px;
    cursor: pointer;
    margin: 0 10px;

    &:last-child {
      margin-left: 0px;
    }
  }
}
</style>
