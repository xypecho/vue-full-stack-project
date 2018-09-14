/*
 * @Author: xueyp 
 * @Date: 2018-09-13 09:52:39 
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-09-14 22:42:07
 */
class upload {
    async image(ctx) {
        const file = ctx.req.file	// 获取上传文件
        console.log(file);
        console.log('===========')
        console.log(ctx)
        return ctx.body = ctx.request.header.referer + '/' + file.filename;
    }
}
module.exports = new upload();