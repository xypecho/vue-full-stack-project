const mysqlJs = require('../../common/mysql.js');
const https = require('https');

for (let i = 0; i < 100; i++) {
    https.get('https://v1.hitokoto.cn/?encode=json', res => {
        let arr = '';
        res.on('data', data => {
            arr += data
        })
        res.on('end', () => {
            arr = JSON.parse(arr)
            let now = new Date().getTime();
            console
            mysqlJs.queryFromMysql(`INSERT INTO hitokoto (id, hitokoto, source, insert_time) VALUES ("${arr["id"]}", "${arr["hitokoto"]}", "${arr["from"]}", "${now}")`)
        })
    }).on('err', err => {
        console.log(err)
    })
}
