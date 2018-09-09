/*
 * @Author: xypecho
 * @Date: 2018-09-09 20:55:25
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-09-09 21:19:49
 */
<template>
    <div class="user">
        <span>user</span>
    </div>
</template>
<script>
export default {
  created() {
    console.log(this.$route.path);
  }
};
</script>
<style lang='stylus' scoped>
</style>
