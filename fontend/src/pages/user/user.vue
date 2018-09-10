/*
 * @Author: xypecho
 * @Date: 2018-09-09 20:55:25
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-10 12:26:08
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
.user {
  width: 100%;
  height: 100%;
  background-color: red;
}
</style>
