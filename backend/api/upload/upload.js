/*
 * @Author: xueyp 
 * @Date: 2018-09-13 09:52:39 
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-23 16:09:18
 */
const url = require('url');
const mysqlJs = require('../../common/mysql.js')
const fs = require('fs');

class upload {
    async image(ctx) {
        let res;
        const file = ctx.req.file	// 获取上传文件
        res = ctx.request.header.host + '/' + file.filename;
        const uid = url.parse(ctx.request.url, true).query.uid;
        let userInfo = await mysqlJs.queryFromMysql(`UPDATE users SET avatar = '${ctx.request.origin}/${file.filename}' WHERE uid = '${uid}'`);
        if (userInfo.affectedRows == 1) {
            res = {
                status: 200,
                data: { res, path: file.path }
            }
        } else {
            res = {
                status: 201,
                message: '上传头像失败，请稍候重试'
            }
        }
        return ctx.body = res;
    }
    async deleteImage(ctx) {
        let res;
        const path = ctx.request.body.path;
        try {
            fs.unlinkSync(path);
        } catch (error) {
            res = {
                status: 201,
                message: '删除文件失败，请稍候重试'
            }
        }
        return ctx.body = res;
    }
    async uploadFile(ctx) {
        console.log(ctx.request.body);
        console.log('===============');
        console.log(ctx.req.file);
        return ctx.body = 'test';
    }
}
module.exports = new upload();