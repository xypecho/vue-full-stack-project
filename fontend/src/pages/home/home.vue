<template>
    <div class="home">
        <div class="home-header">
            <el-row>
                <el-col :span="24">
                    <div class="grid-content bg-purple-dark">
                        <p>『 {{ hitokoto }} 』 —— 《{{ from }}》 </p>
                        <i class="el-icon-refresh" @click='getHitokoto'></i>
                    </div>
                </el-col>
            </el-row>
            <el-row :gutter="20">
                <el-col :span="16">
                    <div class="home-header-left">
                        <div class="home-header-left-child">
                            <span class="avatar-wrapper">
                                <img v-if="!user.avatar || user.avatar == 'null' || user.avatar == ''" src="~@/assets/images/avatar.gif" alt="">
                                <img v-else :src="user.avatar" alt="">
                            </span>
                        </div>
                        <div class="home-header-left-secondChild">
                            <div class="home-header-left-secondChild-top">
                                {{ greetings }}{{ user.username }}，祝你开心每一天！
                            </div>
                            <div class="home-header-left-secondChild-bottom">
                                技术部 | 只会切图的切图仔
                            </div>
                        </div>
                    </div>
                </el-col>
                <el-col :span="8">
                    <div class="home-header-right">
                        <div class="home-header-right-child">
                            <p>任务数</p>
                            <p>8</p>
                        </div>
                        <div class="home-header-right-child">
                            <p>团队内排名</p>
                            <p>3
                                <span> / 8</span>
                            </p>
                        </div>
                        <div class="home-header-right-child">
                            <p>项目总数</p>
                            <p>2</p>
                        </div>
                    </div>
                </el-col>
            </el-row>
        </div>
    </div>
</template>
<script>
import { mapGetters } from 'vuex';

export default {
  created() {
    this.getHitokoto();
  },
  data() {
    return {
      hitokoto: '',
      from: ''
    };
  },
  methods: {
    getHitokoto() {
      this.$axios
        .post('/api/spider/hitokoto')
        .then(res => {
          this.hitokoto = res.data.hitokoto;
          this.from = res.data.from;
        })
        .catch(err => {
          console.log(err);
        });
    }
  },
  computed: {
    greetings() {
      const currentHours = new Date().getHours();
      let res;
      if (currentHours < 6) {
        res = '快睡觉，小心猝死哦！';
      } else if (currentHours < 9) {
        res = '今天，又是充满希望的一天！';
      } else if (currentHours < 12) {
        res = '午饭吃的什么呢？';
      } else if (currentHours < 14) {
        res = '记得午休哦！';
      } else if (currentHours < 17) {
        res = '各部门注意，马上6点了！';
      } else if (currentHours < 19) {
        res = '吃完饭不要马上运动哦！';
      } else {
        res = '在加班吗？辛苦了！';
      }
      return res;
    },
    ...mapGetters(['user'])
  }
};
</script>
<style lang="stylus" scoped>
.home {
    padding: 20px;
    font-size: 14px;
    display: flex;
    padding-bottom: 70px;
    margin: 20px;
    background-color: #fff;
    font-family: Chinese Quote, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
}

.home-header {
    height: 150px;
    width: 100%;
    border-bottom: 1px solid #e8e8e8;
}

.home-header-left, .home-header-right {
    height: 100%;
    display: flex;
}

.home-header-left {
    .home-header-left-child {
        flex: 0 0 72px;

        & span {
            border-radius: 72px;
            display: block;
            height: 72px;
            width: 72px;
            overflow: hidden;

            & img {
                display: block;
                height: 100%;
                width: 100%;
            }
        }
    }

    .home-header-left-secondChild {
        flex: 1;
        margin-left: 24px;

        .home-header-left-secondChild-top {
            margin-top: 4px;
            color: rgba(0, 0, 0, 0.85);
            font-size: 20px;
            font-weight: 500;
            line-height: 28px;
            margin-bottom: 12px;
        }

        .home-header-left-secondChild-bottom {
            line-height: 22px;
            color: rgba(0, 0, 0, 0.45);
        }
    }
}

.home-header-right {
    .home-header-right-child {
        flex: 1;
        text-align: center;

        p {
            color: rgba(0, 0, 0, 0.85);
            font-size: 30px;
            line-height: 38px;
            margin: 0;

            span {
                color: rgba(0, 0, 0, 0.45);
                font-size: 20px;
            }
        }

        p:first-child {
            color: rgba(0, 0, 0, 0.45);
            font-size: 14px;
            line-height: 22px;
            margin-bottom: 4px;
        }
    }
}

.grid-content {
    padding-bottom: 10px;

    p {
        display: inline-block;
    }

    i {
        cursor: pointer;
    }
}
</style>

