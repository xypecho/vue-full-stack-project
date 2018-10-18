/*
 * @Author: xypecho
 * @Date: 2018-10-17 21:20:30
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-10-18 17:04:56
 */
<template>
    <div class="toDoList">
        <el-card class="box-card">
            <div slot="header" class="clearfix">
                <input type="text" placeholder="please enter your todo list here" v-model="num">
                <el-button style="float: right; padding: 3px 0" type="text" @click="test1">新增</el-button>
            </div>
            <div v-for="o in test" :key="o" class="text item">
                <input type="checkbox" name="" id="" v-model="radio">
                <label>{{ o }}</label>
                <span class="icon-__"></span>
            </div>
        </el-card>
    </div>
</template>

<script>
export default {
  data() {
    return {
      test: [1, 2, 3, 4, 5, 6],
      radio: '1',
      num: ''
    };
  },
  methods: {
    test1() {
      this.test.push(this.num);
    }
  }
};
</script>
<style lang='stylus' scoped>
.box-card {
    width: 100%;

    .clearfix {
        &:before, &:after {
            display: table;
            content: '';
        }

        &:after {
            clear: both;
        }

        input {
            border: none;
            outline: none;
            width: 80%;
        }
    }

    .item {
        margin-bottom: 18px;
        font-size: 14px;
        background: #fff;
        color: #4d4d4d;
        font: 14px Helvetica Neue, Helvetica, Arial, sans-serif;
        font-weight: 300;
        line-height: 44px;
        margin: 0 auto;
        z-index: 1;
        border-bottom: 1px solid #ededed;
        position: relative;

        input {
            position: absolute;
            border: none;
            bottom: 0;
            height: auto;
            margin: auto 0;
            opacity: 0;
            text-align: center;
            top: 0;
            width: 40px;
        }

        label {
            background-image: url('~@/assets/images/选择_勾选状态_商品详情.svg');
            background-size: 40px 40px;
        }
    }
}
</style>
