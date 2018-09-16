/*
 * @Author: xueyp 
 * @Date: 2018-09-13 09:52:39 
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-09-16 13:06:34
 */
class upload {
    async image(ctx) {
        const file = ctx.req.file	// 获取上传文件
        console.log(file);
        console.log('=========1==')
        console.log(ctx.request)
        return ctx.body = ctx.request.header.host + '/' + file.filename;
    }
}
module.exports = new upload();