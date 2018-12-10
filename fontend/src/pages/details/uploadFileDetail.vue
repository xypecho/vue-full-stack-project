/*
 * @Author: xypecho
 * @Date: 2018-12-10 19:58:29
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-10 21:16:33
 */
<template>
  <div class="uploadFileDetail">
    <h1>uploadFileDetail</h1>
    <h1>{{ id }}</h1>
  </div>
</template>

<script>
export default {
  data() {
    return {
      id: this.$route.query.id
    };
  },
  created() {
    this.getFileDetails();
  },
  methods: {
    getFileDetails() {
      this.$axios.post('/api/upload/getFileDetails', { id: this.id }).then(res => {
        console.log('==========');
        console.log(res.data.data[0]);
        console.log('==========');
      }).catch(err => {
        console.error(err);
      });
    }
  }
};
</script>
<style lang='stylus' scoped>
.uploadFileDetail {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: #fff;
}
</style>
