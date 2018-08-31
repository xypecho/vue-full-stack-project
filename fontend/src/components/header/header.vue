<template>
    <div class="vHeader">
        <div class="vHeader-left">
            <span class="el-icon-menu"></span>
        </div>
        <div class="vHeader-right">
            <div class="fullScreen">
                <span @click='fullScreen' class="el-icon-zoom-in">
                </span>
            </div>
            <div class="avatar">
                <img src="https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif?imageView2/1/w/80/h/80" alt="" height="40">
            </div>
            <div class="username">
                admin
            </div>
        </div>
        <!-- <span>
            <el-radio-group v-model="isCollapse" style="margin-bottom: 20px;">
                <el-radio-button :label="false">展开</el-radio-button>
                <el-radio-button :label="true">收起</el-radio-button>
            </el-radio-group>
        </span> -->
    </div>
</template>
<script>
export default {
  data() {
    return {
      //   isCollapse: false
    };
  },
  methods: {
    fullScreen() {
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
    }
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
    margin-right: 20px;
    float: left;
}

.avatar {
    width: 50px;
    height: 50px;

    & img {
        border-radius: 50%;
        vertical-align: middle;
    }
}

.username {
    height: 50px;
    line-height: 50px;
}
</style>
