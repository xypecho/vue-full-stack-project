/*
 * @Author: xypecho
 * @Date: 2018-10-17 21:20:30
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-10-22 10:54:34
 */
<template>
    <div class="toDoList">
        <el-card class="box-card">
            <div slot="header" class="clearfix">
                <input type="text" placeholder="please enter your todo list here" v-model="newToDoList" @keyup.enter="addTodoList">
                <el-button style="float: right; padding: 3px 0" type="text" @click='addTodoList'>新增</el-button>
            </div>
            <div v-for="(val,key) in todoList" :key="key" class="text item">
                <input type="checkbox" name="" id="" v-model="val.checked">
                <img v-if="val.checked" src="~@/assets/images/checked.svg" alt="" height="40">
                <img v-else src="~@/assets/images/unchecked.svg" alt="" height="40">
                <label :class="{ isComplete:val.checked }">{{ val.name }}</label>
                <span class="el-icon-close delete-icon" @click='deleteThisTodoList(key)'></span>
            </div>
        </el-card>
    </div>
</template>

<script>
export default {
  data() {
    return {
      todoList: [
        { name: '完成目前在写的这个项目', checked: false },
        { name: '将该项目成功部署到服务器', checked: true },
        { name: '学会react和angular', checked: false },
        {
          name: '看完《Javascript权威指南》，话说已经很久没看了。。。',
          checked: false
        },
        { name: '学linux', checked: false },
        { name: '工资突破10k，三线小县城能达到这水平么。。。', checked: false },
        { name: '买房买车买老婆，呸，说错了，是娶老婆', checked: false }
      ],
      newToDoList: ''
    };
  },
  methods: {
    addTodoList() {
      if (!this.newToDoList) {
        this.$tips({
          type: 'error',
          message: '不能为空哦!'
        });
        return;
      }
      this.todoList.push({ name: this.newToDoList, checked: false });
      this.newToDoList = '';
    },
    deleteThisTodoList(key) {
      this.todoList.splice(key, 1);
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
            width: 50%;
        }
    }

    .item {
        background: #fff;
        color: #4d4d4d;
        font: 14px Helvetica Neue, Helvetica, Arial, sans-serif;
        font-weight: 300;
        margin: 0 auto;
        line-height: 50px;
        border-bottom: 1px solid #ededed;
        position: relative;
        display: flex;
        align-items: center;

        &:hover .delete-icon {
            display: block;
        }

        img {
            flex: 0 0 40px;
        }

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
            height: 50px;
        }

        label {
            font-size: 14px;
            flex: 1;
            padding-left: 10px;
        }

        .isComplete {
            text-decoration: line-through;
            color: #d9d9d9;
        }

        .delete-icon {
            float: right;
            font-size: 20px;
            color: #F56C6C;
            cursor: pointer;
            display: none;
            flex: 0 0 20px;
        }
    }
}
</style>
