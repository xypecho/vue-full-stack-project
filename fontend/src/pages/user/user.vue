/*
 * @Author: xypecho
 * @Date: 2018-09-09 20:55:25
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-06 14:07:50
 */
<template>
  <div class="user" v-loading='loading'>
    <v-search @search='search' @reset="reset"></v-search>
    <el-table :data="userList" style="width: 100%;height:100%">
      <el-table-column fixed prop="username" label="用户名" width="130">
      </el-table-column>
      <el-table-column prop="uid" label="id" width='50'>
      </el-table-column>
      <el-table-column label="头像">
        <template slot-scope="scope">
          <img v-if="scope.row.avatar && scope.row.avatar !== 'null' && scope.row.avatar !== ''" :src="scope.row.avatar" alt="" width="50" height="50">
          <img v-else src="~@/assets/images/avatar.gif" alt="" width="50" height="50">
        </template>
      </el-table-column>
      <el-table-column prop="utype" label="角色" :formatter="formatterUtype">
      </el-table-column>
      <el-table-column label="是否启用">
        <template slot-scope="scope">
          <el-switch v-model="scope.row.status" active-color="#13ce66" inactive-color="#ff4949" :active-value='1' :inactive-value='0' :disabled='user.uid !=1 || scope.row.uid==1' @change="accountBan(scope.row)">
          </el-switch>
        </template>
      </el-table-column>
      <el-table-column prop="is_deleted" label="帐号状态" :formatter="formatterIs_deleted">
      </el-table-column>
      <el-table-column prop="email" label="邮箱" width='180'>
      </el-table-column>
      <el-table-column prop="register_time" label="注册时间" :formatter="formatterRegister_time" width='200'>
      </el-table-column>
      <el-table-column prop="last_login_time" label="最后登录时间" :formatter="formatterLast_login_time" width='200'>
      </el-table-column>
      <el-table-column label="操作">
        <template slot-scope="scope">
          <el-button type="text" size="small" @click='deleteUser(scope.row)'>
            删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>
    <div class="block">
      <el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange" :current-page.sync="currentPage" :page-sizes="[2, 5, 10, 20, 30]" :page-size="pageSize" layout="total,sizes, prev, pager, next" :total="total">
      </el-pagination>
    </div>
  </div>
</template>
<script>
import { formatterTime } from '@/tools/index';
import { mapGetters } from 'vuex';
import vSearch from '@/components/search/search';

export default {
  created() {
    this.getUserList();
  },
  components: {
    vSearch
  },
  computed: {
    ...mapGetters(['user'])
  },
  data() {
    return {
      userList: [],
      loading: false,
      currentPage: 1,
      pageSize: 5,
      total: 0,
      searchCondition: {}
    };
  },
  methods: {
    search(value) {
      this.currentPage = 1;
      this.searchCondition = value;
      this.getUserList(value);
    },
    reset() {
      this.currentPage = 1;
      this.searchCondition = {};
      this.getUserList();
    },
    getUserList() {
      this.loading = true;
      this.$axios
        .post('/api/user/list', {
          currentPage: this.currentPage,
          pageSize: this.pageSize,
          data: this.searchCondition || ''
        })
        .then(res => {
          if (res.data.status === 200) {
            this.userList = res.data.data;
            this.total = res.data.total;
          } else {
            this.userList = [];
            this.total = 0;
            this.$tips({
              type: 'error',
              message: res.data.message
            });
          }
          this.loading = false;
        });
    },
    formatterUtype(row) {
      return row.utype === 0 ? '管理员' : '普通会员';
    },
    formatterIs_deleted(row) {
      return row.is_deleted === 0 ? '已注销' : '正常';
    },
    formatterRegister_time(row) {
      return formatterTime(row.register_time);
    },
    formatterLast_login_time(row) {
      return formatterTime(row.last_login_time);
    },
    handleSizeChange(val) {
      this.pageSize = val;
      this.getUserList();
    },
    handleCurrentChange(val) {
      this.currentPage = val;
      this.getUserList();
    },
    accountBan(data) {
      this.$axios.post('/api/user/edit', { userInfo: data }).then(res => {
        if (res.data.status === 200) {
          this.$tips({
            type: 'success',
            message: `${
              data.status === 1
                ? `成功启用${data.username}帐号`
                : `已禁用${data.username}帐号`
            }`
          });
        } else {
          this.$tips({
            type: 'error',
            message: '操作失败请重试'
          });
        }
      });
    },
    deleteUser(data) {
      const uid = data.uid;
      const userUid = this.user.uid;
      if (uid === 1) {
        this.$tips({
          type: 'error',
          message: '管理员不可以删除'
        });
      } else if (userUid !== '1') {
        this.$tips({
          type: 'error',
          message: '当前登录帐号无操作权限'
        });
      } else {
        this.$axios.post('/api/user/delete', { uid }).then(res => {
          this.$tips({
            type: `${res.data.status === 200 ? 'success' : 'error'}`,
            message: res.data.message
          });
        });
      }
    }
  }
};
</script>
<style lang='stylus' scoped>
.user {
  padding: 20px;

  & img {
    border-radius: 50%;
  }
}

.block {
  text-align: right;
  margin-top: 50px;
}
</style>
