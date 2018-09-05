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
        // console.log(ctx)
        // return ctx.body = '这是用户登录'
        let userInfo = await mysqlJs.queryFromMysql('SELECT * FROM users');
        console.log(userInfo[0])
        return ctx.body = userInfo[0];
    }

}
module.exports = new user();
