/*
 * @Author: xueyp
 * @Date: 2018-09-11 17:07:52
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-11 17:32:24
 */
import Vue from 'vue';
import Router from 'vue-router';
import login from '@/pages/login/login';

Vue.use(Router);

const normalRouter = [
  {
    path: '/',
    component: login
  },
  {
    path: '/index',
    component: resolve => require(['@/pages/index/index'], resolve),
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
        component: resolve => require(['@/components/404/404'], resolve),
        name: '404',
        icon: 'el-icon-menu'
      }
    ]
  },
  {
    path: '*',
    redirect: '/404'
  }
];
export default new Router({
  routes: normalRouter
});
