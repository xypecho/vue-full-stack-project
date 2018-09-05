"use strict"

const mysqlJs = require('../../common/mysql.js')
const mysql = require('mysql')
class user {

    // 用户注册
    async register(ctx) {
        return ctx.body = '这是用户注册'
    }

    // 用户登录
    async login(ctx) {
        let userInfo = await mysqlJs.queryFromMysql('SELECT * FROM users');
        console.log(userInfo)
        return ctx.body = userInfo;
    }

}
module.exports = new user();
