/*
 * @Author: xypecho
 * @Date: 2018-09-23 23:15:45
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-12 22:41:02
 */
<template>
    <div class="home-wrapper">
        <div class="home">
            <a href="https://github.com/xypecho/vue-full-stack-project" class="github-corner" target="_blank" aria-label="Follow me on GitHub">
                <svg width="80" height="80" viewBox="0 0 250 250" style="fill:#409EFF; color:#fff; position: absolute; top: 0; border: 0; right: 0;cursor:pointer" aria-hidden="true">
                    <path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path>
                    <path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path>
                    <path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" class="octo-body"></path>
                </svg>
            </a>
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
        <div class="dynamic">
            <div class="github-time-line" v-loading='githubLoading'>
                <div class="charts-header">
                    <span>github动态</span>
                </div>
                <div class="github-time-line-item" v-for='(item, index) in githubCommitStatus' :key='index' v-if='index<6'>
                    <div class="github-time-line-item-left">
                        <img :src="item.author.avatar_url" alt="" height="32">
                    </div>
                    <div class="github-time-line-item-right">
                        <p><span style="color:rgb(64, 158, 255)">{{ item.commit.committer.name }}</span> 在 vue-full-stack-project 提交了内容为<span style="color:rgb(64, 158, 255)">{{ item.commit.message }}</span>的更新</p>
                        <span>{{ item.commit.committer.date | formatterGithubCommitTime }}</span>
                    </div>
                </div>
            </div>
            <div class="features-to-developed">
                <div class="charts-header">
                    <span>Todo List</span>
                </div>
            </div>
        </div>
        <div class="home-echarts">
            <baseAreaCharts></baseAreaCharts>
        </div>
    </div>
</template>
<script>
import { mapGetters } from 'vuex';
import { formatterTime } from '@/tools/index';
import baseAreaCharts from '@/components/echarts/basicAreaChart';

export default {
  created() {
    this.getHitokoto();
    this.getGithubCommitStatus();
  },
  data() {
    return {
      hitokoto: '',
      from: '',
      githubLoading: true,
      githubCommitStatus: []
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
    },
    getGithubCommitStatus() {
      this.$axios
        .get(
          'https://api.github.com/repos/xypecho/vue-full-stack-project/commits'
        )
        .then(res => {
          this.githubCommitStatus = res.data;
          this.githubLoading = false;
        })
        .catch(err => {
          console.log(err);
        });
    }
  },
  filters: {
    formatterGithubCommitTime(val) {
      val = new Date(val).getTime();
      return formatterTime(val);
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
  },
  components: {
    baseAreaCharts
  }
};
</script>
<style lang="stylus" scoped>
.home {
    position: relative;
    padding: 20px;
    font-size: 14px;
    display: flex;
    margin: 20px;
    padding-bottom: 0;
    background-color: #fff;
    font-family: Chinese Quote, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
}

.home-header {
    height: 150px;
    width: 100%;
    border-bottom: 1px solid #e8e8e8;
    display: block;
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

.dynamic {
    display: flex;
    width: 100%;

    .github-time-line {
        flex: 1;
        background: #fff;
        margin-left: 20px;
        margin-right: 10px;
        padding: 20px;

        .charts-header {
            border-radius: 2px 2px 0 0;
            zoom: 1;
            margin-bottom: -1px;
            min-height: 24px;
            font-size: 16px;
            color: rgba(0, 0, 0, 0.85);
            font-weight: 500;
        }

        .github-time-line-item {
            display: flex;
            align-items: center;
            border-bottom: 1px solid #e8e8e8;
            padding-bottom: 15px;

            &:last-child {
                border-bottom: none;
            }

            .github-time-line-item-left {
                flex: 0 0 50px;

                & img {
                    border-radius: 50%;
                }
            }

            .github-time-line-item-right {
                flex: 1;

                & p {
                    color: rgba(0, 0, 0, 0.65);
                    margin-bottom: 4px;
                    font-size: 14px;
                    line-height: 22px;
                }

                & span {
                    color: rgba(0, 0, 0, 0.45);
                    font-size: 14px;
                    line-height: 22px;
                }
            }
        }
    }

    .features-to-developed {
        flex: 1;
        margin-right: 20px;
        background: #fff;
        padding: 20px;

        .charts-header {
            border-radius: 2px 2px 0 0;
            zoom: 1;
            margin-bottom: -1px;
            min-height: 24px;
            font-size: 16px;
            color: rgba(0, 0, 0, 0.85);
            font-weight: 500;
        }
    }
}

.home-echarts {
    width: 100%;
    display: block;
}

/* GitHub Cornor */
.github-corner :hover .octo-arm {
    animation: octocat-wave 560ms ease-in-out;
}

@media (max-width: 991px) {
    .github-corner >svg {
        fill: #fff !important;
        color: #222 !important;
    }

    .github-corner .github-corner:hover .octo-arm {
        animation: none;
    }

    .github-corner .github-corner .octo-arm {
        animation: octocat-wave 560ms ease-in-out;
    }
}

@keyframes octocat-wave {
    0%, 100% {
        -webkit-transform: rotate(0);
        -moz-transform: rotate(0);
        -ms-transform: rotate(0);
        -o-transform: rotate(0);
        transform: rotate(0);
    }

    20%, 60% {
        -webkit-transform: rotate(-25deg);
        -moz-transform: rotate(-25deg);
        -ms-transform: rotate(-25deg);
        -o-transform: rotate(-25deg);
        transform: rotate(-25deg);
    }

    40%, 80% {
        -webkit-transform: rotate(10deg);
        -moz-transform: rotate(10deg);
        -ms-transform: rotate(10deg);
        -o-transform: rotate(10deg);
        transform: rotate(10deg);
    }
}

@keyframes octocat-wave {
    0%, 100% {
        -webkit-transform: rotate(0);
        -moz-transform: rotate(0);
        -ms-transform: rotate(0);
        -o-transform: rotate(0);
        transform: rotate(0);
    }

    20%, 60% {
        -webkit-transform: rotate(-25deg);
        -moz-transform: rotate(-25deg);
        -ms-transform: rotate(-25deg);
        -o-transform: rotate(-25deg);
        transform: rotate(-25deg);
    }

    40%, 80% {
        -webkit-transform: rotate(10deg);
        -moz-transform: rotate(10deg);
        -ms-transform: rotate(10deg);
        -o-transform: rotate(10deg);
        transform: rotate(10deg);
    }
}

@keyframes octocat-wave {
    0%, 100% {
        -webkit-transform: rotate(0);
        -moz-transform: rotate(0);
        -ms-transform: rotate(0);
        -o-transform: rotate(0);
        transform: rotate(0);
    }

    20%, 60% {
        -webkit-transform: rotate(-25deg);
        -moz-transform: rotate(-25deg);
        -ms-transform: rotate(-25deg);
        -o-transform: rotate(-25deg);
        transform: rotate(-25deg);
    }

    40%, 80% {
        -webkit-transform: rotate(10deg);
        -moz-transform: rotate(10deg);
        -ms-transform: rotate(10deg);
        -o-transform: rotate(10deg);
        transform: rotate(10deg);
    }
}

@keyframes octocat-wave {
    0%, 100% {
        -webkit-transform: rotate(0);
        -moz-transform: rotate(0);
        -ms-transform: rotate(0);
        -o-transform: rotate(0);
        transform: rotate(0);
    }

    20%, 60% {
        -webkit-transform: rotate(-25deg);
        -moz-transform: rotate(-25deg);
        -ms-transform: rotate(-25deg);
        -o-transform: rotate(-25deg);
        transform: rotate(-25deg);
    }

    40%, 80% {
        -webkit-transform: rotate(10deg);
        -moz-transform: rotate(10deg);
        -ms-transform: rotate(10deg);
        -o-transform: rotate(10deg);
        transform: rotate(10deg);
    }
}
</style>

