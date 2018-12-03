/*
 * @Author: xypecho
 * @Date: 2018-11-22 20:24:10
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-03 21:24:26
 */
<template>
  <div class='vUpload'>
    <div class='vUpload-progress'>
      <el-progress
        :text-inside="true"
        :stroke-width="18"
        :percentage="percentage"
      ></el-progress>
    </div>
    <div class='vUpload-button'>
      <el-button
        type='primary'
        size='mini'
        @click='uploadFile'
      >上传文件</el-button>
      <input
        type='file'
        style='display:none'
        ref='uploadBtn'
        @change='confirmUpload'
        multiple='multiple'
      >
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      percentage: 0
    };
  },
  methods: {
    uploadFile() {
      this.$alert(
        '上传文件功能仅供学习交流之用，所上传的文件将在24小时之内自动删除。(目前只能上传图片，请不要上传奇♂怪的东西哦→_→)',
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
        const allowType = ['image/jpeg', 'image/png', 'image/gif'];
        for (let i = 0; i < this.$refs.uploadBtn.files.length; i++) {
          if (allowType.indexOf(this.$refs.uploadBtn.files[i].type) !== -1) {
            formData.append('file', this.$refs.uploadBtn.files[i]);
          } else {
            this.$tips({
              type: 'error',
              message: `${this.$refs.uploadBtn.files[i].name}上传失败，只允许上传图片哦`,
              duration: `2${i}00`
            });
            return;
          }
        }
        console.log(formData.getAll('file'));
        this.$axios({
          url: '/api/upload/uploadFile',
          method: 'post',
          headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
          onUploadProgress: e => {
            this.percentage = Math.round((e.loaded / e.total) * 100);
          },
          data: formData
        }).then(res => {
          console.log(res);
          this.$tips({
            type: 'success',
            message: `已成功上传张${this.$refs.uploadBtn.files.length}图片`
          });
        }).catch(e => {
          console.log(e);
          this.$tips({
            type: 'error',
            message: '上传失败，请稍候重试'
          });
        }).then(() => {
          this.percentage = 0;
        });
      } else {
        this.$tips({
          type: 'error',
          message: '批量上传单次最多允许上传666张图片'
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
