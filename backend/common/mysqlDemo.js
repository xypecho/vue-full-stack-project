/*
 * @Author: xypecho
 * @Date: 2018-10-26 21:31:24
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-19 10:44:05
 */
const mysql = require('mysql');
const tool = require('./tool.js');


db = mysql.createPool({
    host: 'localhost',
    post: '3306',
    user: 'root',
    password: tool.env() === 'production' ? 'bu-gao-su-ni' : '123456',
    database: 'test'
});

module.exports = {
    queryFromMysql: (sql => {
        return new Promise((resolve, reject) => {
            db.query(sql, (err, data) => {
                if (err) {
                    reject(err)
                } else {
                    resolve(data)
                }
            })
        })
    })
}
