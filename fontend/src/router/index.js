import Vue from 'vue';
import Router from 'vue-router';
import login from '@/pages/login/login';
import index from '@/pages/index/index';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      component: login
    },
    {
      path: '/index',
      component: index
    }
  ]
});
