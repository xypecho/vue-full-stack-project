/*
 * @Author: xypecho
 * @Date: 2018-11-22 20:24:10
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-23 16:42:13
 */
<template>
  <div class="vUpload">
    <div class="vUpload-progress"></div>
    <div class="vUpload-button">
      <el-button type="primary" size='mini' @click='uploadFile'>上传文件</el-button>
      <input type="file" style="display:none" ref="uploadBtn" @change="confirmUpload" multiple="multiple">
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    uploadFile() {
      this.$alert(
        '上传文件功能仅供学习交流之用，所上传的文件将在24小时之内自动删除。(请不要上传奇♂怪的东西哦→_→)',
        '提示',
        {
          confirmButtonText: '确定',
          callback: () => {
            this.$refs.uploadBtn.click();
          }
        }
      );
    },
    confirmUpload() {
      if (this.$refs.uploadBtn.files.length) {
        const formData = new FormData();
        for (let i = 0; i < this.$refs.uploadBtn.files.length; i++) {
          formData.append('file', this.$refs.uploadBtn.files[i]);
        }
        console.log(formData.getAll('file'));
        this.$axios
          .post('/api/upload/uploadFile', formData, {
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
          })
          .then(res => {
            console.log(res);
          });
      }
    }
  }
};
</script>
<style lang='stylus' scoped>
.vUpload {
  margin-bottom: 20px;
  display: flex;
  align-items: center;

  .vUpload-progress {
    flex: 1;
  }

  .vUpload-button {
    flex: 0 0 200px;
    text-align: right;
  }
}
</style>
