import Vue from 'vue';
import Router from 'vue-router';
import login from '@/pages/login/login';
import index from '@/pages/index/index';
import test from '@/components/test/test';
import test1 from '@/components/test1/test1';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      component: login
    },
    {
      path: '/index',
      component: index,
      meta: [],
      children: [{
        path: '/test',
        component: test,
        meta: ['添加数据test']
      }, {
        path: '/test1',
        component: test1,
        meta: ['添加数据test212']
      }]
    }
  ]
});
