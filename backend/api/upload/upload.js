/*
 * @Author: xueyp 
 * @Date: 2018-09-13 09:52:39 
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-09-17 22:04:52
 */
const url = require('url');
const mysqlJs = require('../../common/mysql.js')

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
                data: res
            }
        } else {
            res = {
                status: 201,
                message: '删除用户信息，请稍候重试'
            }
        }
        return ctx.body = res;
    }
}
module.exports = new upload();