/*
 * @Author: xypecho
 * @Date: 2018-11-21 21:45:27
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-21 21:48:28
 */
<template>
    <div class="fileUpload">
        <el-upload class="upload-demo" drag action="https://jsonplaceholder.typicode.com/posts/" multiple>
            <i class="el-icon-upload"></i>
            <div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
            <div class="el-upload__tip" slot="tip">只能上传jpg/png文件，且不超过500kb</div>
        </el-upload>
    </div>
</template>

<script>
export default {};
</script>
<style lang='stylus' scoped>
.fileUpload
    padding: 40px 160px 60px 160px;
    .upload-demo
        text-align center
</style>
