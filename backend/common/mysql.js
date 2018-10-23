const mysql = require('mysql');

db = mysql.createPool({
    host: 'localhost',
    post: '3306',
    user: 'root',
    password: 'xyp681210',
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
