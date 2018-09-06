const mysqlJs = require('../../common/mysql.js')
const mysql = require('mysql')
class user {

    // 用户注册
    async register(ctx) {
        console.log(ctx.request.body)
        return ctx.body = ctx.request.body;
    }

    // 用户登录
    async login(ctx) {
        let userInfo = await mysqlJs.queryFromMysql('SELECT * FROM users');
        return ctx.body = userInfo;
    }

}
module.exports = new user();
