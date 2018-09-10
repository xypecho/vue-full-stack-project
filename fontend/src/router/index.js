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
      redirect: '/home',
      name: '首页',
      children: [
        {
          path: '/home',
          component: resolve => require(['@/pages/home/home'], resolve),
          name: '工作台',
          icon: 'el-icon-menu'
        },
        {
          path: '/test',
          component: resolve => require(['@/components/test/test'], resolve),
          name: '添加数据test',
          icon: 'el-icon-menu'
        },
        {
          path: '/fatherTEST1',
          component: fatherTEST1,
          name: 'fatherTEST1',
          icon: 'el-icon-menu',
          children: [
            {
              path: '/fatherTEST',
              component: fatherTEST,
              name: 'fatherTEST123',
              icon: 'el-icon-menu'
            },
            {
              path: '/test1',
              component: test1,
              name: '添加数据1',
              icon: 'el-icon-menu'
            }
          ]
        },
        {
          path: '/system',
          component: resolve => require(['@/pages/system/system'], resolve),
          name: '系统设置',
          icon: 'el-icon-menu',
          children: [
            {
              path: '/user',
              component: resolve => require(['@/pages/user/user'], resolve),
              name: '用户管理',
              icon: 'el-icon-menu'
            }
          ]
        },
        {
          path: '/404',
          component: notFound,
          name: '404',
          icon: 'el-icon-menu'
        }
      ]
    },
    {
      path: '*',
      redirect: '/404'
    }
  ]
});
