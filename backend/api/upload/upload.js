/*
 * @Author: xueyp 
 * @Date: 2018-09-13 09:52:39 
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-13 09:53:47
 */
class upload {
    async image(ctx) {
        console.log(ctx);
        return ctx.body = '这是图片上传的接口';
    }
}