<template>
    <div class="content">
        <vHeader></vHeader>
        <el-breadcrumb separator-class="el-icon-arrow-right" style="margin:20px">
            <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
            <el-breadcrumb-item>活动管理</el-breadcrumb-item>
            <el-breadcrumb-item>活动列表</el-breadcrumb-item>
            <el-breadcrumb-item>活动详情</el-breadcrumb-item>
        </el-breadcrumb>
        <router-view></router-view>
    </div>
</template>
<script>
import vHeader from '@/components/header/header';

export default {
  components: {
    vHeader
  }
};
</script>
<style lang="stylus" scoped>
.content {
    width: 100%;
    height: 100%;
    background-color: #f5f7f9;
}
</style>
