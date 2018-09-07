const mysql = require('mysql')
const mysqlJs = require('../../common/mysql.js')
const tool = require('../../common/tool.js');
class user {
    // 用户注册
    async register(ctx) {
        let register_time = new Date().getTime();
        let username = ctx.request.body.username;
        let password = tool.md5(ctx.request.body.password);
        let insertUser = await mysqlJs.queryFromMysql(`INSERT INTO users (username,password,register_time) VALUES ('${username}','${password}','${register_time}')`);
        let userInfo = await mysqlJs.queryFromMysql(`SELECT * FROM users WHERE uid = ${insertUser.insertId}`);
        let res;
        if (!insertUser) {
            res = {
                status: 400,
                message: insertUser
            }
        } else {
            res = {
                status: 200,
                message: '注册成功',
                data: userInfo[0]
            }
        }
        return ctx.body = res;
    }
    // 用户登录
    async login(ctx) {
        let userInfo = await mysqlJs.queryFromMysql('SELECT * FROM users');
        return ctx.body = userInfo;
    }

}
module.exports = new user();
