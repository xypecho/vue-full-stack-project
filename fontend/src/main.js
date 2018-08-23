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

Vue.use(Vuex);
Vue.use(ElementUI);
Vue.config.productionTip = false;
axios.defaults.baseURL = process.env.BASE_URL;
Vue.prototype.$axios = axios;

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
});
