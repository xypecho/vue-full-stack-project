import Vue from 'vue';
import Router from 'vue-router';
import login from '@/pages/login/login';
import index from '@/pages/index/index';
// import test from '@/components/test/test';
import test1 from '@/components/test1/test1';
import fatherTEST from '@/components/fatherTEST/fatherTEST';
import fatherTEST1 from '@/components/fatherTEST1/fatherTEST1';
import notFound from '@/components/404/404';

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
      children: [
        // {
        //   path: '',
        //   redirect: '/index'
        // },
        {
          path: '/test',
          component: resolve => require(['@/components/test/test'], resolve),
          meta: ['添加数据test']
        },
        {
          path: '/test1',
          component: test1,
          meta: ['添加数据1']
        },
        {
          path: '/fatherTEST',
          component: fatherTEST,
          meta: ['fatherTEST123']
        },
        {
          path: '/fatherTEST1',
          component: fatherTEST1,
          meta: ['fatherTEST1']
        },
        {
          path: '/404',
          component: notFound,
          meta: ['404']
        }
      ]
    },
    {
      path: '*',
      redirect: '/404'
    }
  ]
});
