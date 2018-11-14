/*
 * @Author: xypecho
 * @Date: 2018-11-14 22:13:55
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-14 22:17:36
 */
class log {
    async operationLog(ctx) {
        return ctx.body = 'test';
    }
}
module.exports = new log();