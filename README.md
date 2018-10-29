## 0、写在前面
作为一个切图仔，这是我个人写的第一个全栈项目:smile:，之前看了点node相关的视频本来准备后端用原生node的，后来转念一想，干脆直接上框架吧，正好可以顺便多学一个框架于是就现学现卖的上了koa2.x，感觉写接口也不是那么难啊:smirk:，前端就用的目前比较主流的vue + element，之所以想写这么一个项目是因为我之前从来没从头到尾的写过一个完整的vue项目，都是接手的前人的代码，写这个项目正好可以巩固一下之前学的技术  
项目地址：http://94.191.2.25

## 1、技术栈
前端：vue2 、 vuex 、 vue-router 、 axios 、 webpack 、 ES6 、 stylus 、 element-ui


后端：node 、koa2 、 mysql

## 2、项目结构
```js
+-- build/                                  ---打包的文件目录
+-- config/                                 ---npm run eject 后的配置文件目录
+-- node_modules/                           ---npm下载文件目录
+-- public/                                 
|   --- index.html							---首页入口html文件
|   --- npm.json							---echarts测试数据
|   --- weibo.json							---echarts测试数据
+-- src/                                    ---核心代码目录
|   +-- axios                               ---http请求存放目录
|   |    --- index.js
|   +-- components                          ---各式各样的组件存放目录
|   |    +-- animation                      ---动画组件
|   |    |    --- ...   
|   |    +-- charts                         ---图表组件
|   |    |    --- ...   
|   |    +-- dashboard                      ---首页组件
|   |    |    --- ...   
|   |    +-- forms                          ---表单组件
|   |    |    --- ...   
|   |    +-- pages                          ---页面组件
|   |    |    --- ...   
|   |    +-- tables                         ---表格组件
|   |    |    --- ...   
|   |    +-- ui                             ---ui组件
|   |    |    --- ...   
|   |    --- BreadcrumbCustom.jsx           ---面包屑组件
|   |    --- HeaderCustom.jsx               ---顶部导航组件
|   |    --- Page.jsx                       ---页面容器
|   |    --- SiderCustom.jsx                ---左边菜单组件
|   +-- style                               ---项目的样式存放目录，主要采用less编写
|   +-- utils                               ---工具文件存放目录
|   --- App.js                              ---组件入口文件
|   --- index.js                            ---项目的整体js入口文件，包括路由配置等
--- .env                                    ---启动项目自定义端口配置文件
--- .eslintrc                               ---自定义eslint配置文件，包括增加的react jsx语法限制
--- package.json                                    
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