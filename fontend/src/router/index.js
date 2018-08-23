import Vue from 'vue';
import Router from 'vue-router';
import login from '@/pages/login/login';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      component: login
    }
  ]
});
