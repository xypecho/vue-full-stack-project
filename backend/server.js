const express = require('express');
// const mysql = require('mysql');
// const bodyParser = require('body-parser');
// const cookieParser = require('cookie-parser');
// const cookieSession = require('cookie-session');
// const expressRoute = require('express-route');
// const multer = require('multer');
// const multerobj = multer({ dest: './static/web/upload' }); // 设置存放图片的位置

const app = express();
app.listen('8081')
const router = express.Router();
//设置跨域请求头
router.all('*', function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    res.header("X-Powered-By", ' 3.2.1')
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
});
app.get('/get_banner', (req, res) => {
    res.send(`{'status':'ok','data':123}`).end();
})
