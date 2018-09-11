/*
 * @Author: xueyp 
 * @Date: 2018-09-11 15:36:02 
 * @Last Modified by:   xueyp 
 * @Last Modified time: 2018-09-11 15:36:02 
 */
const crypto = require('crypto');

module.exports = {
    // md5加密密码
    md5: (str) => {
        return crypto.createHash('md5').update(str).digest('hex');
    }
}