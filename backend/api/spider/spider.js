/*
 * @Author: xypecho
 * @Date: 2018-09-21 22:27:22
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-09-21 23:36:14
 */
const mysqlJs = require('../../common/mysql.js');
const request = require('request');


class spider {
    async hitokoto(ctx) {
        let id;
        let result = await request({ url: 'https://v1.hitokoto.cn/?encode=json', method: 'GET', json: true });
        console.log(result);
        //let is_exists = mysqlJs.queryFromMysql(`SELECT * FROM hitokoto WHERE id = '${res.}'`)
        return ctx.body = result;
    }
}
module.exports = new spider();