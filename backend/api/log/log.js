/*
 * @Author: xypecho
 * @Date: 2018-11-14 22:13:55
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-19 11:07:28
 */
class log {
    async operationLog(ctx) {
        let record = JSON.parse(ctx.request.body.record);
        console.log(record);
        console.log('========================================');
        let url = record.request.url;
        let status = record.response.data.status;
        let operator = `${record.user.username}(uid:${record.user.uid})`
        let operationTime = new Date().getTime();
        // 本来这边准备用炒鸡简单的面条式的switch的，但是看到 https://juejin.im/post/5bdfef86e51d453bf8051bf8 这个后有了启发
        let operationDescription = new Map([
            ['/api/user/login', [status === 200 ? `${record.request.data.username}登录了平台` : `未知用户用帐号${record.request.data.username},密码${record.request.data.password}登录平台未遂`]],
            ['/api/user/register', [status === 200 ? `新增注册用户，用户名为${record.request.data.username}` : `未知用户尝试注册帐号${record.request.data.username}未遂`]],
            ['/api/user/changePassword', [status === 200 ? `${record.request.data.username}修改了密码` : `未知用户尝试修改${record.request.data.username}的密码未遂`]]
        ])
        console.log(operationDescription.get(url)[0]);
        return ctx.body = 'test';
    }
}
module.exports = new log();