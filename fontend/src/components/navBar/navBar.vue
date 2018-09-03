<template>
    <div class="navBar">
        <el-menu class="el-menu-vertical-demo" @open="handleOpen" @close="handleClose" :collapse="isCollapse" background-color="#545c64" text-color="#fff" active-text-color="#ffd04b" router unique-opened>
            <el-submenu index="1">
                <template slot="title">
                    <i class="el-icon-location"></i>
                    <span slot="title">首页</span>
                </template>
                <el-menu-item-group>
                    <el-menu-item index="test111111111111111555">选项1</el-menu-item>
                    <el-menu-item index="test11111111111111133">选项2</el-menu-item>
                </el-menu-item-group>
                <el-menu-item-group>
                    <el-menu-item index="test111111111111111">选项3</el-menu-item>
                </el-menu-item-group>
                <el-menu-item-group>
                    <el-menu-item index="test1111111111111112">分组3</el-menu-item>
                </el-menu-item-group>
            </el-submenu>
            <el-menu-item index="test">
                <i class="el-icon-menu"></i>
                <span slot="title">添加数据test</span>
            </el-menu-item>
            <el-menu-item index="test1">
                <i class="el-icon-document"></i>
                <span slot="title">添加数据test212</span>
            </el-menu-item>
            <el-menu-item index="fatherTEST">
                <i class="el-icon-setting"></i>
                <span slot="title">fatherTEST123</span>
            </el-menu-item>
        </el-menu>
    </div>
</template>
<script>
import { mapGetters } from 'vuex';

export default {
  created() {
    console.log(this.$route);
  },
  computed: {
    ...mapGetters(['isCollapse'])
  },
  data() {
    return {};
  },
  methods: {
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    }
  }
};
</script>
<style lang="stylus" scoped>
.el-menu-vertical-demo:not(.el-menu--collapse) {
    width: 200px;
    min-height: 400px;
}

.el-menu-vertical-demo {
    height: 100%;
}
</style>
