/*
 * @Author: xueyp 
 * @Date: 2018-09-13 09:52:39 
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-06 21:11:02
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
        const files_description = `${ctx.req.files[0].originalname}等${ctx.req.files.length}张图片`;
        let files = [];
        for (let i = 0; i < ctx.req.files.length; i++) {
            files.push(`${ctx.request.origin}/${ctx.req.files[i].destination}${ctx.req.files[i].filename}`)
        }
        let result = await mysqlJs.queryFromMysql(`INSERT INTO files (uid, username, files, files_description, upload_time) VALUES ('${uid}', '${username}', '${files.join(';')}', '${files_description}', '${upload_time}')`);
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
    async getFilesList(ctx) {
        let res;
        const currentPage = ctx.request.body.currentPage;//当前是第几页
        const pageSize = ctx.request.body.pageSize;//每页显示多少条
        let fileList = await mysqlJs.queryFromMysql(`SELECT * FROM files LIMIT ${(currentPage - 1) * pageSize}, ${pageSize}`);
        let total = await mysqlJs.queryFromMysql(`SELECT COUNT(*) FROM files`);
        if (fileList && fileList.length > 0) {
            res = {
                status: 200,
                total: total[0]['COUNT(*)'],
                data: fileList
            };
        } else {
            res = {
                status: 201,
                total: total[0]['COUNT(*)'],
                message: '获取文件列表失败，请稍候重试'
            };
        }
        return ctx.body = res;
    }
    // 删除文件
    async deleteFiles(ctx) {
        let res;
        const id = ctx.request.body.id;
        const uid = ctx.request.body.uid;
        let fileDetail = await mysqlJs.queryFromMysql(`SELECT * FROM files WHERE id = '${id}'`);
        if (+uid !== 1) {
            res = {
                status: 201,
                message: '当前用户没有删除文件的权限哦'
            }
        } else {
            if (fileDetail && fileDetail.length === 1) {
                await mysqlJs.queryFromMysql(`DELETE FROM files WHERE id = '${id}'`);
                let filePath = JSON.parse(JSON.stringify(fileDetail))[0].files.split(';');
                let index = filePath[0].lastIndexOf('/');
                let newfilePath = filePath.map((k, v) => {
                    return k.substring(index - 12);
                })
                // console.log(filePath)
                // console.log(newfilePath)
                try {
                    newfilePath.map((k, v) => {
                        fs.unlinkSync(k);
                    })
                    res = {
                        status: 200,
                        message: '文件删除成功'
                    }
                } catch (error) {
                    res = {
                        status: 201,
                        message: '删除文件失败，请稍候重试'
                    }
                }
            }
        }
        return ctx.body = res;
    }
}
module.exports = new upload();