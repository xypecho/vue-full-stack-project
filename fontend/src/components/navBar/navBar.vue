/*
 * @Author: xueyp
 * @Date: 2018-11-12 13:42:55
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-12 13:43:39
 */
<template>
  <div class="navBar">
    <el-menu class="el-menu-vertical-demo" :default-active="defaultActive" :collapse="isCollapse" background-color="#545c64" text-color="#fff" active-text-color="#409EFF" router unique-opened>
      <template v-for="(item,index) in $router.options.routes[1].children">
        <el-submenu :index="item.path" v-if="item.children&&item.children.length>0" :key="index">
          <template slot="title">
            <i :class="item.icon"></i>
            <span slot="title">{{item.name}}</span>
          </template>
          <el-menu-item v-for="(child,idx) in item.children" :index="child.path" :key='idx'>{{child.name}}</el-menu-item>
        </el-submenu>
        <el-menu-item :index="item.path" v-if="!item.children" :key="index">
          <i :class="item.icon"></i>
          <span slot="title">{{item.name}}</span>
        </el-menu-item>
      </template>
    </el-menu>
  </div>
</template>
<script>
import { mapGetters } from 'vuex';

export default {
  computed: {
    defaultActive() {
      let path;
      if (this.$route.path.lastIndexOf('/') !== 0) {
        path = this.$route.path.substring(0, this.$route.path.lastIndexOf('/'));
      } else {
        path = this.$route.path;
      }
      return path;
    },
    ...mapGetters(['isCollapse'])
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
