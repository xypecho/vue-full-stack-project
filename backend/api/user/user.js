"use strict"
class user {

    // 用户注册
    async register(ctx) {
        return ctx.body = '这是用户注册'
    }

    // 用户登录
    async login(ctx) {
        console.log(ctx)
        return ctx.body = '这是用户登录'
    }

}
module.exports = new user();
