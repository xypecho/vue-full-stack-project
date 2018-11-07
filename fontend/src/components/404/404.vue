/*
 * @Author: xueyp
 * @Date: 2018-11-03 14:00:05
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-07 22:34:35
 */
<template>
    <div class="notFound">
        <div class="notFound-left">
            <img src="~@/assets/images/xuexiaoban.png" alt="">
        </div>
        <div class="notFound-right">
            <p>似乎来到了神秘的世界哦...</p>
            <span>请检查您输入的网址是否正确，可点击以下按钮返回主页或者去往源码主页</span>
            <p @click="$router.push('/')">返回工作台</p>
        </div>
    </div>
</template>
<script>
export default {
  created() {
    this.judgeIsComeFromAdmin();
  },
  methods: {
    judgeIsComeFromAdmin() {
      if (
        this.$route.redirectedFrom &&
        this.$route.redirectedFrom === '/testAdmin'
      ) {
        this.$tips({
          type: 'error',
          message: '只有管理员可以进入权限测试页哦'
        });
      }
    }
  }
};
</script>
<style lang="stylus" scoped>
.notFound {
    padding: 0 20px 20px 20px;
    display: flex;
    justify-content: center;
    align-items: center;

    .notFound-left {
        flex: 1;
        text-align: center;

        img {
            height: 400px;
        }
    }

    .notFound-right {
        flex: 1;
        color: #409EFF;

        p {
            color: #222;
            font-size: 20px;
            line-height: 24px;
            margin-bottom: 10px;
            font-weight: 700;

            &:last-child {
                color: #409eff;
                font-size: 14px;
                cursor: pointer;
                font-weight: 100;
            }
        }

        span {
            font-size: 13px;
            line-height: 21px;
            color: grey;
            margin-bottom: 30px;
        }
    }
}
</style>

