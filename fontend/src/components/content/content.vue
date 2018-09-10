<template>
    <div class="content">
        <vHeader></vHeader>
        <el-breadcrumb separator-class="el-icon-arrow-right" style="margin:20px">
            <el-breadcrumb-item v-for='(item,index) in routerMatched.router' :key='index'>{{item.name}}</el-breadcrumb-item>
        </el-breadcrumb>
        <router-view></router-view>
    </div>
</template>
<script>
import vHeader from '@/components/header/header';
import { mapGetters } from 'vuex';

export default {
  components: {
    vHeader
  },
  computed: {
    ...mapGetters(['routerMatched'])
  }
};
</script>
<style lang="stylus" scoped>
.content {
    width: 100%;
    background-color: #f5f7f9;
}
</style>
