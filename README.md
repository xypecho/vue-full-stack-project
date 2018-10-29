## 0、写在前面
作为一个切图仔，这是我个人写的第一个全栈项目:smile:，之前看了点node相关的视频本来准备后端用原生node的，后来转念一想，干脆直接上框架吧，正好可以顺便多学一个框架于是就现学现卖的上了koa2.x，感觉写接口也不是那么难啊:smirk:，前端就用的目前比较主流的vue + element，之所以想写这么一个项目是因为我之前从来没从头到尾的写过一个完整的vue项目，都是接手的前人的代码，写这个项目正好可以巩固一下之前学的技术  
项目地址：http://94.191.2.25

## 1、技术栈
前端：vue2 、 vuex 、 vue-router 、 axios 、 webpack 、 ES6 、 stylus 、 element-ui


后端：node 、koa2 、 mysql

## 2、项目结构

### 2.1前面项目结构

```shell
├── build                      // 构建相关  
├── config                     // 配置相关
├── exampleImgs                // 项目示例图片
├── outdb                      // 导入数据库的初始化数据
├── server                     // node服务端
│   ├── api.js                    // 封装的接口请求
│   ├── db.js                     // db数据模型定义
│   ├── index.js                  // express服务器
│   ├── mutils.js                 // 服务端工具类
├── src                        // 源代码
│   ├── assets                 // 图片等静态资源
│   ├── components             // 全局公用组件
│   ├── config                 // 接口请求配置
│   ├── fonts                  // fontawesome字体库文件
│   ├── layout                 // 全局 组件
│   ├── page                   // 项目所有的视图
│   ├── register               // 第三方库注册
│   ├── router                 // 登录路由
│   ├── store                  // 项目vuex数据存储器
│   ├── style                  // 全局样式
│   ├── utils                  // 全局公用方法
│   ├── vendor                 // 公用vendor
│   ├── App.vue                // 入口页面
│   ├── main.js                // 入口 加载组件 初始化
├── static                     // 第三方不打包资源
│   └── Tinymce                // 富文本
├── .babelrc                   // babel-loader 配置
├── .gitignore                 // git 忽略项
├── eslintrc.js                // eslint 配置项
├── favicon.ico                // favicon图标
├── index.html                 // html模板
├── package.json               // 包依赖配置
└── README.md                  // 说明文件

```

## 3、部署
```
git clone https://github.com/xypecho/vue-full-stack-project.git
cd fontend
npm install 
npm run dev

cd ../  //回到根目录,需要运行mysql，然后运行test.sql
cd backend
npm install
node app.js
```