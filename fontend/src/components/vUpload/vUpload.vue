/*
 * @Author: xypecho
 * @Date: 2018-11-22 20:24:10
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-22 21:17:12
 */
<template>
    <div class="vUpload">
        <div class="vUpload-progress"></div>
        <div class="vUpload-button">
            <el-button type="primary" size='mini' @click='uploadFile'>上传文件</el-button>
            <input type="file" style="display:none" ref="uploadBtn">
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
          callback: action => {
            this.$message({
              type: 'info',
              message: `action: ${action}`
            });
            this.$refs.uploadBtn.click();
          }
        }
      );
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
