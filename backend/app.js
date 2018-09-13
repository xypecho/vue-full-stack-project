/*
 * @Author: xypecho
 * @Date: 2018-09-08 21:45:02
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-13 16:44:54
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

app.use(bodyParser({
    multipart: true
}));

app.use(cors({
    origin: function (ctx) {
        if (ctx.url === '/test') {
            return "*"; // 允许来自所有域名请求
        } else {
            return 'http://localhost:8080'; // 这样就能只允许 http:/ / localhost: 8080 这个域名的请求了
        }
    },
    exposeHeaders: ['WWW-Authenticate', 'Server-Authorization'],
    maxAge: 5,
    credentials: true,
    allowMethods: ['GET', 'POST', 'DELETE'],
    allowHeaders: ['Content-Type', 'Authorization', 'Accept'],
}))

router
    .post('/api/user/login', user.login)
    .post('/api/user/register', user.register)
    .post('/api/user/list', user.list)
    .post('/api/user/edit', user.edit)
    .get('/api/user/userInfo', user.userInfo)
    .post('/api/upload/image', upload.image)
app.use(router.routes()).use(router.allowedMethods());

app.listen(8081, () => {
    console.log('koa starts at port 8081!');
})