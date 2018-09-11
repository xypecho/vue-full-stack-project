// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import 'normalize.css';
import 'babel-polyfill';
import 'element-ui/lib/theme-chalk/index.css';
import Vue from 'vue';
import Vuex from 'vuex';
import ElementUI from 'element-ui';
import axios from 'axios';
import App from './App';
import router from './router';
import store from './store';
import { timeDifference } from './tools/index';

Vue.use(Vuex);
Vue.use(ElementUI);
Vue.config.productionTip = false;
axios.defaults.baseURL = process.env.BASE_URL;
Vue.prototype.$axios = axios;
Vue.prototype.$tips = ({ type, message }) => {
  Vue.prototype.$message({
    duration: 2000,
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
  if (uid === null && to.path !== '/') {
    Vue.prototype.$tips({
      message: '登录过期，请重新登录',
      type: 'error'
    });
    next('/');
  } else if (uid !== null && diffMinute > 59 && to.path !== '/') {
    localStorage.clear();
    next('/');
  } else if (uid !== null && to.path === '/') {
    next('/index');
  } else {
    next();
  }
});

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
});
