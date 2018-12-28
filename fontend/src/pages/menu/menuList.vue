/*
 * @Author: xypecho
 * @Date: 2018-12-28 21:26:06
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-28 22:05:00
 */
/*
 * @Author: xypecho
 * @Date: 2018-09-11 21:48:05
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-28 21:31:44
 */
<template>
  <div
    class="menuList"
    v-loading='loading'
  >
    <div
      class="menuList-left"
      v-show='!loading'
    >
      <div class="menuList-content">
        <el-row>
          <el-col :span="8">
            <div class="grid-content bg-purple inputClass">父级菜单</div>
          </el-col>
          <el-col :span="16">
            <div class="grid-content bg-purple-light">
              <el-input
                placeholder="请输入帐号名称"
                size='mini'
                suffix-icon="el-icon-edit-outline"
                v-model="userInfo.username"
              >
              </el-input>
            </div>
          </el-col>
        </el-row>
      </div>
      <div class="menuList-content">
        <el-row>
          <el-col :span="8">
            <div class="grid-content bg-purple">名称</div>
          </el-col>
          <el-col :span="16">
            <div class="grid-content bg-purple-light">{{ userInfo.utype | formatterUtype }}</div>
          </el-col>
        </el-row>
      </div>
      <div class="menuList-content">
        <el-row>
          <el-col :span="8">
            <div class="grid-content bg-purple inputClass">URL</div>
          </el-col>
          <el-col :span="16">
            <div class="grid-content bg-purple-light">
              <el-input
                placeholder="请输入邮箱"
                size='mini'
                suffix-icon="el-icon-message"
                v-model="userInfo.email"
              >
              </el-input>
            </div>
          </el-col>
        </el-row>
      </div>
      <div class="menuList-content">
        <el-row>
          <el-col :span="8">
            <div class="grid-content bg-purple switchClass">是否创建页面模版</div>
          </el-col>
          <el-col :span="16">
            <div class="grid-content bg-purple-light">
              <el-switch
                v-model="userInfo.status"
                active-color="#13ce66"
                inactive-color="#ff4949"
                :active-value='1'
                :inactive-value='0'
                disabled
              >
              </el-switch>
            </div>
          </el-col>
        </el-row>
      </div>
      <div class="menuList-content">
        <el-row>
          <el-col :span="8">
            <div class="grid-content bg-purple switchClass">模版页面内容</div>
          </el-col>
          <el-col :span="16">
            <div class="grid-content bg-purple-light">
              <el-switch
                v-model="userInfo.is_deleted"
                active-color="#13ce66"
                inactive-color="#ff4949"
                :active-value='0'
                :inactive-value='1'
                @change='deleteAccount'
              >
              </el-switch>
            </div>
          </el-col>
        </el-row>
      </div>
      <el-button
        type="primary"
        size='mini'
        style="margin-top:10px"
        @click="editUserInfo"
      >提交修改</el-button>
    </div>
  </div>
</template>

<script>
import { mapGetters, mapMutations } from 'vuex';
import { formatterTime, setLocalStorage } from '@/tools/index';

export default {
  created() {
    this.getUserInfo();
  },
  data() {
    return {
      loading: false,
      userInfo: {},
      dialogImageUrl: '',
      dialogVisible: false,
      imgPath: ''
    };
  },
  computed: {
    ...mapGetters(['user'])
  },
  methods: {
    actionUrl() {
      return process.env.NODE_ENV === 'development'
        ? `http://localhost:8081/api/upload/image?uid=${this.user.uid}`
        : `http://94.191.2.25:8081/api/upload/image?uid=${this.user.uid}`;
    },
    getUserInfo() {
      this.loading = true;
      const uid = this.user.uid;
      this.$axios
        .get('/api/user/userInfo', { params: { uid } })
        .then(res => {
          if (res.status === 200) {
            this.userInfo = res.data.data;
          } else {
            this.$tips({
              type: 'error',
              message: res.message
            });
          }
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
    deleteAccount(val) {
      if (!val) {
        this.$tips({
          type: 'warning',
          message: '您正在进行账户注销操作，继续操作您的账户将被注销'
        });
      }
    },
    handleAvatarSuccess(res) {
      if (res.status === 200) {
        this.userInfo.avatar = `${document.location.protocol}//${res.data.res.substring(0, res.data.res.indexOf('/'))}/${res.data.path}`;
        this.imgPath = res.data.path;
        this.setUserInfo(this.userInfo);
        setLocalStorage(this.userInfo);
      } else {
        this.$tips({
          type: 'error',
          message: '头像上传失败，请稍候重试'
        });
      }
    },
    handleRemove() {
      this.$axios
        .post('/api/upload/deleteImage', { path: this.imgPath })
        .then(res => {
          if (res.data && res.data.status === 201) {
            this.$tips({
              type: 'error',
              message: res.data.message
            });
          } else {
            this.userInfo.avatar = '';
            this.setUserInfo(this.userInfo);
            setLocalStorage(this.userInfo);
          }
        });
    },
    handlePictureCardPreview(file) {
      this.dialogImageUrl = file.url;
      this.dialogVisible = true;
    },
    beforeAvatarUpload(file) {
      const extension = file.name.substring(file.name.lastIndexOf('.') + 1);
      const allowImage = ['GIF', 'PNG', 'JPEG', 'JPG'];
      const isImage = allowImage.indexOf(extension.toUpperCase()) === -1;
      const isLt2M = file.size / 1024 / 1024 < 1;
      if (isImage) {
        this.$tips({
          type: 'error',
          message: '只能上传GIF, PNG, JPEG, JPG等格式图片'
        });
        return false;
      }
      if (!isLt2M) {
        this.$tips({
          type: 'error',
          message: '上传头像图片大小不能超过1MB'
        });
        return false;
      }
      return !isImage && isLt2M;
    },
    editUserInfo() {
      this.$axios
        .post('/api/user/edit', { userInfo: this.userInfo })
        .then(res => {
          if (res.data.status === 200) {
            this.$tips({
              type: 'success',
              message: '编辑成功'
            });
            this.setUserInfo(res.data.data);
          } else {
            this.$tips({
              type: 'error',
              message: res.data.message
            });
          }
        });
    },
    ...mapMutations({
      setUserInfo: 'setUserInfo'
    })
  },
  filters: {
    formatterUtype(value) {
      switch (value) {
        case 0:
          return '管理员';
        default:
          return '普通会员';
      }
    },
    formatterRegisterTime(value) {
      return formatterTime(value);
    },
    formatterLastLoginTime(value) {
      return formatterTime(value);
    }
  }
};
</script>
<style lang='stylus' scoped>
.menuList {
  padding: 20px;
  font-size: 14px;
  padding-bottom: 70px;
}

.menuList-left, .menuList-right {
  width: 50%;
  margin: 0 auto;

  & .menuList-header {
    border-bottom: 1px solid #e5e5e5;
    padding-bottom: 12px;
  }
}

.menuList-content {
  color: #606266;
  font-size: 14px;
  width: 100%;
  padding: 20px 0;
  border-bottom: 1px solid #e5e5e5;
}

.inputClass {
  height: 28px;
  line-height: 28px;
}

.el-input {
  width: 193px;
}

.switchClass {
  height: 20px;
  line-height: 20px;
}
</style>

