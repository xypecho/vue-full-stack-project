// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import 'normalize.css';
import 'element-ui/lib/theme-chalk/index.css';
import Vue from 'vue';
import Vuex from 'vuex';
import ElementUI from 'element-ui';
import axios from 'axios';
import App from './App';
import router from './router';
import store from './store';

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

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
});
