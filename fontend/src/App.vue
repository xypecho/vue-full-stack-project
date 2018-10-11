/*
 * @Author: xypecho
 * @Date: 2018-10-11 21:16:05
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-11 21:33:57
 */
<template>
  <div id="app">
    <router-view />
  </div>
</template>

<script>
import { mapGetters } from 'vuex';

export default {
  name: 'App',
  watch: {
    isLoadComplete() {
      if (
        document.getElementById('Loading-wrapper') &&
        (this.isLoadComplete === 'true' || this.isLoadComplete === true)
      ) {
        document.body.removeChild(document.getElementById('Loading-wrapper'));
      }
    }
  },
  computed: {
    ...mapGetters(['isLoadComplete'])
  }
};
</script>
<style lang="stylus">
html, body, #app {
  width: 100%;
  height: 100%;
  font-family: Helvetica Neue, Helvetica, PingFang SC, Hiragino Sans GB, Microsoft YaHei, '\5FAE\8F6F\96C5\9ED1', Arial, sans-serif;
}
</style>
