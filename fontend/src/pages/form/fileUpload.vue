/*
 * @Author: xypecho
 * @Date: 2018-11-21 21:45:27
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-04 22:04:31
 */
<template>
  <div
    class='fileUpload'
    v-loading='loading'
  >
    <v-upload></v-upload>
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
      >
      </el-table-column>
      <el-table-column label='操作'>
        <template slot-scope='scope'>
          <el-dropdown trigger="click">
            <span
              class='el-dropdown-link'
              style='cursor:pointer;color:#409eff'
            >
              操作
            </span>
            <el-dropdown-menu slot='dropdown'>
              <el-dropdown-item>查看</el-dropdown-item>
              <el-dropdown-item>删除</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
import vUpload from '@/components/vUpload/vUpload';

export default {
  created() {
    this.getFileLIst();
  },
  methods: {
    handleClick(row) {
      console.log(row);
    },
    getFileLIst() {
      this.$axios.post('/api/upload/getFilesList').then(res => {
        console.log(res.data);
        this.tableData = res.data;
      }).catch(err => {
        console.error(err);
      }).then(() => {
        console.log('end');
      });
    }
  },
  data() {
    return {
      loading: false,
      tableData: [
        {
          date: '2016-05-03',
          zip: 200333
        },
        {
          date: '2016-05-02',
          zip: 200333
        },
        {
          date: '2016-05-04',
          zip: 200333
        },
        {
          date: '2016-05-01',
          zip: 200333
        }
      ]
    };
  },
  components: {
    vUpload
  }
};
</script>
<style lang='stylus' scoped>
.fileUpload {
  padding: 20px;
}
</style>
