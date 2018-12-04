/*
 * @Author: xypecho
 * @Date: 2018-09-08 21:45:02
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-04 21:56:55
 */
const Koa = require('koa');
const logger = require('koa-logger');
const Router = require('koa-router');
const cors = require('@koa/cors');
const bodyParser = require('koa-bodyparser');
const app = new Koa();
const router = new Router();
const user = require('./api/user/user');// 用户信息的接口
const upload = require('./api/upload/upload');// 上传相关的接口
const spider = require('./api/spider/spider');// 爬虫以及一言相关的接口
const log = require('./api/log/log'); // 日志相关的接口
const tool = require('./common/tool.js');

/* 文件上传相关 */
const fs = require('fs');
const multer = require('koa-multer');//加载koa-multer模块
const path = require('path');
const static = require('koa-static');
if (!fs.existsSync('upload')) {
    fs.mkdirSync('upload');
    fs.mkdirSync('upload/images');
    fs.mkdirSync('upload/files');
}
// 上传头像的相关配置
var storage = multer.diskStorage({
    //文件保存路径
    destination: function (req, file, cb) {
        cb(null, 'upload/images/')
    },
    //修改文件名称
    filename: function (req, file, cb) {
        var fileFormat = (file.originalname).split(".");
        cb(null, Date.now() + "." + fileFormat[fileFormat.length - 1]);
    }
})
var uploadMiddleware = multer({ storage: storage });

// 文件上传的相关配置
var fileStorage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'upload/files/')
    },
    filename: function (req, file, cb) {
        var fileFormat = (file.originalname).split(".");
        cb(null, Date.now() + "." + fileFormat[fileFormat.length - 1]);
    }
})
var fileUploadMiddleware = multer({ storage: fileStorage });

//设置静态资源的路径
app.use(static(__dirname));

/* 文件上传相关 */

app.use(bodyParser());

app.use(cors({
    origin: function (ctx) {
        if (ctx.url === '/test') {
            return "*"; // 允许来自所有域名请求
        } else {
            if (tool.env() === 'production') {
                return 'http://94.191.2.25';
            } else {
                return 'http://localhost:8080'; // 这样就能只允许 http:/ / localhost: 8080 这个域名的请求了   
            }
        }
    },
    exposeHeaders: ['WWW-Authenticate', 'Server-Authorization'],
    maxAge: 600, // 缓存接口数据的最长时间,每一次请求都需要提供预检请求，即用OPTIONS请求进行检测,我们这边设置为10分钟,即10分钟内请求同一个接口不再会额外来一个options请求
    credentials: true,
    allowMethods: ['GET', 'POST', 'DELETE'],
    allowHeaders: ['Content-Type', 'Authorization', 'Accept'],
}))

router
    .get('/', async (ctx) => {
        ctx.body = 'hello world';
    })
    .post('/api/user/login', user.login)
    .post('/api/user/register', user.register)
    .post('/api/user/list', user.list)
    .post('/api/user/edit', user.edit)
    .post('/api/user/delete', user.delete)
    .get('/api/user/userInfo', user.userInfo)
    .post('/api/user/userLoginCount', user.userLoginCount)
    .post('/api/user/md5Password', user.md5Password)
    .post('/api/user/changePassword', user.changePassword)
    .post('/api/upload/image', uploadMiddleware.single('file'), upload.image)
    .post('/api/upload/uploadFile', fileUploadMiddleware.array('file', 666), upload.uploadFile)
    .post('/api/upload/getFilesList', upload.getFilesList)
    .post('/api/upload/deleteImage', upload.deleteImage)
    .post('/api/spider/hitokoto', spider.hitokoto)
    .post('/api/log/insertOperationLog', log.insertOperationLog)
    .post('/api/log/operationLogList', log.operationLogList)
app.use(router.routes()).use(router.allowedMethods());

app.listen(8081, () => {
    console.log(`You are running project in ${tool.env() === 'production' ? 'production' : 'development'} mode & koa starts at port 8081!`);
})