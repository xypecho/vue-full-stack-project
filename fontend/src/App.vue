<template>
  <div id="app">
    <router-view />
  </div>
</template>

<script>
import { mapGetters } from 'vuex';

export default {
  name: 'App',
  mounted() {
    console.log(this.isLoadComplete);
    console.log(document.getElementById('Loading-wrapper') && this.isLoadComplete);
    if (document.getElementById('Loading-wrapper') && this.isLoadComplete) {
      document.body.removeChild(document.getElementById('Loading-wrapper'));
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
