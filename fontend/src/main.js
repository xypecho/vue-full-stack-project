// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import 'normalize.css';
import 'babel-polyfill';
import 'element-ui/lib/theme-chalk/index.css';
import 'v-charts/lib/style.css';
import Vue from 'vue';
import VCharts from 'v-charts';
import Vuex from 'vuex';
import ElementUI from 'element-ui';
import axios from 'axios';
import './common/stylus/style.styl';
import App from './App';
import router, { authRouter } from './router';
import store from './store';
import { timeDifference } from './tools/index';

Vue.use(Vuex);
Vue.use(ElementUI);
Vue.use(VCharts);
Vue.config.productionTip = false;
axios.defaults.baseURL = process.env.BASE_URL;
Vue.prototype.$axios = axios;
Vue.prototype.$tips = ({ duration, type, message }) => {
  Vue.prototype.$message({
    duration: duration || 2000,
    showClose: true,
    type,
    message
  });
};

/* 路由守卫，判断用户登录状态，如果用户没有点击退出登录直接关闭浏览器，则1小时内打开网站自动登录 */
router.beforeEach((to, from, next) => {
  store.commit('changeRouterMatched', {
    router: to.matched
  });
  const uid = JSON.parse(JSON.stringify(localStorage.getItem('username')));
  const pastTime = JSON.parse(JSON.stringify(localStorage.getItem('currentTime')));
  const currentTime = new Date().getTime();
  const diffMinute = timeDifference(pastTime, currentTime).minute;
  /* 动态路由相关js */
  if (+store.getters.user.uid === 1) {
    if (store.getters.newrouter.length !== 0) {
      next();
    } else {
      router.addRoutes(authRouter);
      store.commit('setNewRouter', {
        newrouter: authRouter
      });
    }
  }
  /* 动态路由相关js */
  /* 判断是否在内页刷新，取消加载动画 */
  if (document.getElementById('Loading-wrapper') && (store.getters.isLoadComplete === 'true' || store.getters.isLoadComplete === true)) {
    document.body.removeChild(document.getElementById('Loading-wrapper'));
    next();
  }
  /* 判断是否在内页刷新，取消加载动画 */
  if (uid === null && to.path !== '/') {
    Vue.prototype.$tips({
      message: '登录过期，请重新登录1',
      type: 'error'
    });
    next('/');
  } else if (uid !== null && diffMinute > 59 && to.path !== '/') {
    localStorage.clear();
    Vue.prototype.$tips({
      message: '登录过期，请重新登录2',
      type: 'error'
    });
    next('/');
  } else if (uid !== null && to.path === '/') {
    next('/index');
  } else {
    next();
  }
});

/* 添加请求拦截器 */
// axios.interceptors.request.use(
//   config => {
//     console.log('发起请求-----------------------------');
//     console.log(config);
//     console.log('发起请求=============================');
//     // store.commit('changeLoading');
//     return config;
//   },
//   error =>
//     Promise.reject(error)
// );

/* 添加响应拦截器,先注释，响应太快，基本看不到loading效果... */
// axios.interceptors.response.use(
//   response => {
//     store.commit('changeLoading');
//     return response;
//   },
//   error =>
//     Promise.reject(error)
// );

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
});
