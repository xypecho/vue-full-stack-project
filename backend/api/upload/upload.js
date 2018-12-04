/*
 * @Author: xueyp 
 * @Date: 2018-09-13 09:52:39 
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-04 22:02:57
 */
const url = require('url');
const mysqlJs = require('../../common/mysql.js')
const fs = require('fs');

class upload {
    // 上传头像
    async image(ctx) {
        let res;
        const file = ctx.req.file	// 获取上传文件
        res = ctx.request.header.host + '/' + file.filename;
        const uid = url.parse(ctx.request.url, true).query.uid;
        let userInfo = await mysqlJs.queryFromMysql(`UPDATE users SET avatar = '${ctx.request.origin}/upload/images/${file.filename}' WHERE uid = '${uid}'`);
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
    // 删除头像
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
    // 上传文件
    async uploadFile(ctx) {
        let res;
        const username = ctx.req.body.username;
        const uid = ctx.req.body.uid;
        const upload_time = new Date().getTime();
        let files = [];
        for (let i = 0; i < ctx.req.files.length; i++) {
            files.push(`${ctx.request.origin}/${ctx.req.files[i].destination}/${ctx.req.files[i].filename}`)
        }
        console.log(files);
        console.log(username);
        console.log(uid);
        console.log(upload_time);
        let result = await mysqlJs.queryFromMysql(`INSERT INTO files (uid, username, files, upload_time) VALUES ('${uid}', '${username}', '${files.join(';')}', '${upload_time}')`);
        if (result.affectedRows == 1) {
            res = {
                status: 200,
                message: '上传成功'
            }
        } else {
            res = {
                status: 201,
                message: '上传失败，请稍候重试'
            }
        }
        return ctx.body = res;
    }
    // 获取上传文件列表
    async getFilesList(ctx){
        let res;
        let fileList=await mysqlJs.queryFromMysql(`SELECT * FROM files`);
        return ctx.body = fileList;
    }
}
module.exports = new upload();