## 0、写在前面
作为一个切图仔，这是我个人写的第一个全栈项目:smile:，之前看了点node相关的视频本来准备后端用原生node的，后来转念一想，干脆直接上框架吧，正好可以顺便多学一个框架于是就现学现卖的上了koa2.x，感觉写接口也不是那么难啊:smirk:，前端就用的目前比较主流的vue + element，之所以想写这么一个项目是因为我之前从来没从头到尾的写过一个完整的vue项目，都是接手的前人的代码，写这个项目正好可以巩固一下之前学的技术  
项目地址：http://94.191.2.25

## 1、技术栈
前端：vue2 、 vuex 、 vue-router 、 axios 、 webpack 、 ES6 、 stylus 、 element-ui


后端：node 、koa2 、 mysql

## 2、项目结构

### 2.1前端项目结构


```
├──  build                               
├──  config                              
├──  node_modules                          
├──  src                                    ---核心代码目录
|   ├──  assets                            
|   |    ├── images                         ---静态资源存放目录
|   ├──  common                             ---字体图标存放目录
|   ├──  components                         ---组件存放目录
|   ├──  pages                              ---页面存放目录(可复用的则封装为组件，不可以的写为页面)
|   ├──  router                             ---路由
|   ├──  store                              ---vuex相关的文件
|   ├──  tools                              
|   |    ├── index.js                       ---封装了一些常用的函数
|   ├── App.vue                           
|   ├── main.js                          
├── .eslintrc                               ---自定义eslint配置文件
├── package.json     
......                               
```

### 2.2后端项目结构

```                       
├──  api                                    ---接口目录
|   ├──  spider                             ---爬虫相关的接口(开发中...)
|   ├──  upload                             ---上传文件相关的接口
|   ├──  user                               ---用户相关的接口                 
├── common                                  ---封装了一些常用的函数
├── upload                                  ---文件上传的路径
├── app.js                                  ---入口文件
├── package.json                                
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