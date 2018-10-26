/*
 * @Author: xueyp 
 * @Date: 2018-09-11 15:36:02 
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-26 21:22:22
 */
const crypto = require('crypto');
const request = require('request');

module.exports = {
    // md5加密密码
    md5: (str) => {
        return crypto.createHash('md5').update(str).digest('hex');
    },
    // 将request包变成同步
    awaitRequest: (url) => {
        return new Promise((resolve, reject) => {
            request.get(url, (error, response, body) => {
                if (error) {
                    reject(error)
                } else {
                    resolve(body)
                }
            })
        })
    },
    // 判断是生产环境还是开发环境
    env: () => {
        return process.env.NODE_ENV || 'production'; 
    }
}
