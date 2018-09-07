const mysql = require('mysql')
const mysqlJs = require('../../common/mysql.js')
const tool = require('../../common/tool.js');
class user {
    // 用户注册
    async register(ctx) {
        let res;
        let register_time = new Date().getTime();
        let username = ctx.request.body.username;
        let password = tool.md5(ctx.request.body.password);
        let is_exist = await mysqlJs.queryFromMysql(`SELECT * FROM users WHERE username = '${username}' AND password = '${password}'`);
        console.log(is_exist);
        if (is_exist && is_exist.length > 0) {
            res = {
                status: 500,
                message: '该用户名已被注册'
            }
            return ctx.body = res;
        } else {
            let insertUser = await mysqlJs.queryFromMysql(`INSERT INTO users (username,password,register_time) VALUES ('${username}','${password}','${register_time}')`);
            let userInfo = await mysqlJs.queryFromMysql(`SELECT * FROM users WHERE uid = ${insertUser.insertId}`);
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
    }
    // 用户登录
    async login(ctx) {
        let res;
        let username = ctx.request.body.username;
        let password = tool.md5(ctx.request.body.password);
        let userInfo = await mysqlJs.queryFromMysql(`SELECT * FROM users WHERE username = '${username}' AND password = '${password}'`);
        console.log(userInfo)
        if (userInfo && userInfo.length === 1) {
            res = {
                status: 200,
                message: '登录成功',
                data: userInfo[0]
            }
        } else {
            res = {
                status: 500,
                message: '用户名或密码错误'
            }
        }
        return ctx.body = res;
    }

}
module.exports = new user();
