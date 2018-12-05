/*
 * @Author: xypecho
 * @Date: 2018-11-21 21:45:27
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-05 22:37:23
 */
<template>
  <div
    class='fileUpload'
    v-loading='loading'
  >
    <v-upload @successUpload='getFileLIst'></v-upload>
    <el-table
      :data='tableData'
      style='width: 100%'
    >
      <el-table-column
        prop='username'
        label='上传者'
      >
      </el-table-column>
      <el-table-column
        prop='upload_time'
        label='上传时间'
        :formatter='formatterTime'
      >
      </el-table-column>
      <el-table-column
        prop='files_description'
        label='文件描述'
        :formatter='formatterDescription'
      >
      </el-table-column>
      <el-table-column
        label='操作'
        width='80'
      >
        <template slot-scope='scope'>
          <el-dropdown trigger="click">
            <span
              class='el-dropdown-link'
              style='cursor:pointer;color:#409eff'
            >
              操作
            </span>
            <el-dropdown-menu slot='dropdown'>
              <el-dropdown-item @click.native="getFileDetail(scope.row)">查看</el-dropdown-item>
              <el-dropdown-item @click.native="deleteFile(scope.row)">删除</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </template>
      </el-table-column>
    </el-table>
    <div class="block">
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page.sync="currentPage"
        :page-sizes="[2, 5, 10, 20, 30]"
        :page-size="pageSize"
        layout="total,sizes, prev, pager, next"
        :total="total"
      >
      </el-pagination>
    </div>
  </div>
</template>

<script>
import vUpload from '@/components/vUpload/vUpload';
import { formatterTime } from '@/tools/index';

export default {
  created() {
    this.getFileLIst();
  },
  data() {
    return {
      loading: false,
      tableData: [],
      currentPage: 1,
      pageSize: 5,
      total: 0
    };
  },
  methods: {
    handleClick(row) {
      console.log(row);
    },
    formatterDescription(row) {
      return row.files_description ? row.files_description : '暂无文件描述';
    },
    formatterTime(row) {
      return formatterTime(row.upload_time);
    },
    handleSizeChange(val) {
      this.currentPage = 1;
      this.pageSize = val;
      this.getFileLIst();
    },
    handleCurrentChange(val) {
      this.currentPage = val;
      this.getFileLIst();
    },
    getFileLIst() {
      this.loading = true;
      this.$axios.post('/api/upload/getFilesList', {
        currentPage: this.currentPage,
        pageSize: this.pageSize
      }).then(res => {
        this.tableData = res.data.data;
        this.total = res.data.total;
      }).catch(err => {
        console.error(err);
      }).then(() => {
        setTimeout(() => {
          this.loading = false;
        }, this.globalVariable.duration);
      });
    },
    getFileDetail(row) {
      console.log(row);
    },
    deleteFile(row) {
      this.$axios.post('/api/upload/deleteFiles', { id: row.id }).then(res => {
        this.$tips({
          type: `${res.data.status === 200 ? 'success' : 'error'}`,
          message: res.data.message
        });
        this.getFileLIst();
      }).catch(err => {
        console.error(err);
      });
    }
  },
  components: {
    vUpload
  }
};
</script>
<style lang='stylus' scoped>
.fileUpload {
  padding: 20px;

  .block {
    text-align: right;
    margin-top: 50px;
  }
}
</style>
