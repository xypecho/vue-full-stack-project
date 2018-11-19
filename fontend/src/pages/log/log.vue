/*
 * @Author: xypecho
 * @Date: 2018-11-14 21:06:51
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-19 16:49:10
 */
<template>
  <div class="log" v-loading='loading'>
    <el-table :data="tableData" stripe style="width: 100%">
      <el-table-column prop="id" label="序号" width="80">
      </el-table-column>
      <el-table-column prop="operator" label="操作人" width="140">
      </el-table-column>
      <el-table-column prop="operationTime" label="操作时间" width="240">
      </el-table-column>
      <el-table-column prop="operationDescription" label="操作描述">
      </el-table-column>
    </el-table>
    <div class="block">
      <el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange" :current-page.sync="currentPage" :page-sizes="[2, 5, 10, 20, 30]" :page-size="pageSize" layout="total,sizes, prev, pager, next" :total="total">
      </el-pagination>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      tableData: [],
      loading: false,
      currentPage: 1,
      pageSize: 5,
      total: 0
    };
  },
  created() {
    this.loading = true;
    this.getOperationLogList();
  },
  methods: {
    getOperationLogList() {
      this.$axios
        .post('/api/log/operationLogList', {
          currentPage: this.currentPage,
          pageSize: this.pageSize
        })
        .then(res => {
          console.log(res.data);
          this.tableData = res.data.data;
          this.total = res.data.total;
        })
        .catch(err => {
          console.log(err);
        })
        .then(() => {
          setTimeout(() => {
            this.loading = false;
          }, this.globalVariable.duration);
        });
    },
    handleSizeChange(val) {
      this.pageSize = val;
    },
    handleCurrentChange(val) {
      this.currentPage = val;
    }
  }
};
</script>

<style lang='stylus' scoped>
.log {
  padding: 20px;
}

.block {
  text-align: right;
  margin-top: 50px;
}
</style>
