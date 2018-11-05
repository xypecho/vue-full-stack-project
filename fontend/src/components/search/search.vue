/*
 * @Author: xueyp
 * @Date: 2018-10-22 14:20:01
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-05 22:46:09
 */
<template>
  <div class="search">
    <el-select v-model="status" placeholder="请选择帐号状态" size='mini' class="search-item">
      <el-option v-for="item in accountStatus" :key="item.value" :label="item.label" :value="item.value">
      </el-option>
    </el-select>
    <el-date-picker v-model="timeRange" type="daterange" range-separator="至" start-placeholder="注册起始日期" end-placeholder="注册终止日期" size='mini' value-format="timestamp" class="search-item search-item-data">
    </el-date-picker>
    <el-input v-model="like" placeholder="请输入用户名" class="search-item" size='mini'></el-input>
    <span class="search-btn earch-btn-search" @click='search'>搜索</span>
    <span class="search-btn earch-btn-reset" @click="reset">重置</span>
  </div>
</template>
<script>
export default {
  data() {
    return {
      accountStatus: [
        {
          value: '1',
          label: '正常'
        },
        {
          value: '0',
          label: '已注销'
        }
      ],
      status: '',
      timeRange: '',
      like: ''
    };
  },
  methods: {
    search() {
      this.$emit('search', {
        status: this.status,
        timeRange: this.timeRange,
        like: this.like
      });
    },
    reset() {
      this.status = '';
      this.timeRange = '';
      this.like = '';
      this.$emit('reset', {
        status: this.status,
        timeRange: this.timeRange,
        like: this.like
      });
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
