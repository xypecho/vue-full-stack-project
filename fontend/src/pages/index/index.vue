/*
 * @Author: xueyp
 * @Date: 2018-09-10 14:34:51
 * @Last Modified by:   xueyp
 * @Last Modified time: 2018-09-10 14:34:51
 */
<template>
    <div class="index">
        <nav-bar></nav-bar>
        <vueContent></vueContent>
    </div>
</template>
<script>
import navBar from '@/components/navBar/navBar';
import vueContent from '@/components/content/content';

export default {
  components: {
    navBar,
    vueContent
  }
};
</script>
<style lang="stylus" scoped>
.index {
    display: flex;
    width: 100%;
    height: 100%;
    overflow: hidden;

    nav-bar {
        flex: 0 0 200px;
    }

    content {
        flex: 1;
    }
}
</style>
