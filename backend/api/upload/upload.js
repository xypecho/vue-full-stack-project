/*
 * @Author: xueyp 
 * @Date: 2018-09-13 09:52:39 
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-14 17:23:13
 */
const fs = require('fs');
const buffer = require('buffer');

class upload {
    async image(ctx) {
        const file = ctx.req.file	// 获取上传文件
        console.log(file);
        console.log('===========')
        console.log(ctx)
        if (!fs.existsSync('upload')) {
            fs.mkdirSync('upload');
            fs.mkdirSync('upload/images');
        }
        // fs.writeFileSync('./upload/images/avatar2.txt', file, 'binary', err => {
        //     if (err) {
        //         console.log('err')
        //     } else {
        //         console.log('上传成功')
        //     }
        // });
        return ctx.body = ctx.request.header.referer + '/' + file.filename;
    }
}
module.exports = new upload();