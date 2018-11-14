/*
 * @Author: xypecho
 * @Date: 2018-09-08 21:44:26
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-14 15:26:24
 */
<template>
  <div class="vHeader">
    <div class="vHeader-left">
      <span class="el-icon-menu" @click='changeCollapseStatus'></span>
    </div>
    <div class="vHeader-right">
      <div class="fullScreen">
        <span @click='toggleFullScreen' class="el-icon-zoom-in">
        </span>
      </div>
      <div class="avatar">
        <img v-if="!user.avatar || user.avatar == 'null' || user.avatar == ''" src="~@/assets/images/avatar.gif" alt="" height="40" width="40">
        <img v-else :src="user.avatar" alt="" height="40" width="40">
      </div>
      <el-dropdown @command="handleCommand">
        <div class="username">
          {{user.username}}
        </div>
        <el-dropdown-menu slot="dropdown">
          <el-dropdown-item command="accountSetting">帐号设置</el-dropdown-item>
          <el-dropdown-item command="signOut">退出登录</el-dropdown-item>
        </el-dropdown-menu>
      </el-dropdown>
    </div>
  </div>
</template>
<script>
import { mapMutations, mapGetters } from 'vuex';

export default {
  data() {
    return {
      isFullScreen: false // 为true则全屏，反正则退出全屏
    };
  },
  computed: {
    ...mapGetters(['user'])
  },
  methods: {
    toggleFullScreen() {
      this.isFullScreen = !this.isFullScreen;
      if (this.isFullScreen) {
        const e = document.documentElement;
        if (e.requestFullscreen) {
          e.requestFullscreen();
        } else if (e.mozRequestFullScreen) {
          e.mozRequestFullScreen();
        } else if (e.webkitRequestFullScreen) {
          e.webkitRequestFullScreen();
        } else if (typeof window.ActiveXObject !== 'undefined') {
          const t = new ActiveXObject('WScript.Shell');
          if (t) {
            t.SendKeys('{F11}'); // t && t.SendKeys('{F11}');
          }
        }
      } else {
        const exitMethod =
          document.exitFullscreen || // W3C
          document.mozCancelFullScreen || // Chrome等
          document.webkitExitFullscreen || // FireFox
          document.webkitExitFullscreen; // IE11
        if (exitMethod) {
          exitMethod.call(document);
        } else if (typeof window.ActiveXObject !== 'undefined') {
          // for Internet Explorer
          const t = new ActiveXObject('WScript.Shell');
          if (t) {
            t.SendKeys('{F11}');
          }
        }
      }
    },
    changeCollapseStatus() {
      this.CHANGECOLLAPSESTATUS();
    },
    handleCommand(command) {
      switch (command) {
        case 'accountSetting':
          this.$router.push('/account');
          break;
        case 'signOut':
          this.$confirm('此操作将退出系统, 是否继续?', '警告', {
            confirmButtonText: '确定',
            cancelButtonText: '取消',
            type: 'warning'
          }).then(() => {
            localStorage.clear();
            location.reload();
            // this.$tips({
            //   type: 'success',
            //   message: '退出成功!'
            // });
            // this.$router.push('/');
            // 退出登陆后，需要刷新页面，因为我们是通过addRoutes添加的，router没有deleteRoutes这个api，所以刷新页面是最保险的。
          });
          break;
        default:
          break;
      }
    },
    ...mapMutations({
      CHANGECOLLAPSESTATUS: 'changeCollapseStatus'
    })
  }
};
</script>
<style lang="stylus" scoped>
.vHeader {
  width: 100%;
  height: 50px;
  line-height: 50px;
  background: #fff;
  box-shadow: 4px 4px 40px 0 rgba(0, 0, 0, 0.05);
  color: #97a8be;
  font-size: 14px;
}

.vHeader-left {
  float: left;
  padding: 0 20px;

  & span {
    cursor: pointer;
  }
}

.vHeader-right {
  float: right;
}

.avatar, .username, .fullScreen {
  display: block;
  margin-right: 40px;
  float: left;
}

.avatar {
  width: 50px;
  height: 50px;
  margin-right: 0;

  & img {
    border-radius: 50%;
    vertical-align: middle;
  }

  & img:hover {
    transform: rotate(666turn);
    transition-duration: 59s;
    transition-timing-function: cubic-bezier(0.34, 0, 0.84, 1);
  }
}

.username {
  height: 50px;
  line-height: 50px;
  margin-right: 20px;
  cursor: pointer;
}
</style>
