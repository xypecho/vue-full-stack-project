/*
 * @Author: xueyp 
 * @Date: 2018-09-13 09:52:39 
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-15 09:37:37
 */
class upload {
    async image(ctx) {
        const file = ctx.req.file	// 获取上传文件
        console.log(file);
        console.log('===========')
        console.log(ctx.request)
        return ctx.body = ctx.request.header.host + '/' + file.filename;
    }
}
module.exports = new upload();