'use strict'
const merge = require('webpack-merge')
const prodEnv = require('./prod.env')

module.exports = merge(prodEnv, {
  NODE_ENV: '"development"',
  BASE_URL: '"https://fapi.m304.net"' //配置为本地地址才会访问到本地虚拟的服务器，从而通过第1步中代理访问API服务，避免跨域
})
