/*
 * @Author: xypecho
 * @Date: 2018-09-09 20:55:25
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-11 16:57:01
 */
<template>
  <div class="user" v-loading='loading'>
    <el-table :data="userList" style="width: 100%;height:100%">
      <el-table-column fixed prop="username" label="用户名" width="150">
      </el-table-column>
      <el-table-column prop="uid" label="id">
      </el-table-column>
      <el-table-column prop="utype" label="角色" :formatter="formatterUtype">
      </el-table-column>
      <el-table-column prop="status" label="是否启用" :formatter="formatterStatus">
      </el-table-column>
      <el-table-column prop="is_deleted" label="帐号状态" :formatter="formatterIs_deleted">
      </el-table-column>
      <el-table-column prop="email" label="邮箱">
      </el-table-column>
      <el-table-column prop="register_time" label="注册时间" :formatter="formatterRegister_time">
      </el-table-column>
      <el-table-column prop="last_login_time" label="最后登录时间" :formatter="formatterLast_login_time">
      </el-table-column>
      <el-table-column label="操作">
        <template slot-scope="scope">
          <el-button type="text" size="small">
            移除
          </el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>
<script>
import { formatterTime } from '@/tools/index';

export default {
  created() {
    this.getUserList();
  },
  data() {
    return {
      userList: [],
      loading: false
    };
  },
  methods: {
    getUserList() {
      this.loading = true;
      this.$axios
        .post('/api/user/list')
        .then(res => {
          if (res.data.status === 200) {
            this.userList = res.data.data;
          } else {
            this.$tips({
              type: 'error',
              message: res.data.message
            });
          }
        })
        .finally(() => {
          this.loading = false;
        });
    },
    formatterUtype(row) {
      return row.utype === 0 ? '管理员' : '普通用户';
    },
    formatterStatus(row) {
      return row.status === 0 ? '禁用' : '启用';
    },
    formatterIs_deleted(row) {
      return row.is_deleted === 0 ? '已注销' : '正常';
    },
    formatterRegister_time(row) {
      return formatterTime(row.register_time);
    },
    formatterLast_login_time(row) {
      return formatterTime(row.last_login_time);
    }
  }
};
</script>
<style lang='stylus' scoped>
.user {
  padding: 20px;
}
</style>
