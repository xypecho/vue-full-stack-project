/*
 * @Author: xueyp
 * @Date: 2018-09-11 17:07:52
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-11-14 21:14:19
 */
import Vue from 'vue';
import Router from 'vue-router';
import login from '@/pages/login/login';

Vue.use(Router);

export const normalRouter = [
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
        path: '/form',
        component: resolve => require(['@/pages/system/system'], resolve),
        name: '表单页',
        icon: 'el-icon-menu',
        children: [
          {
            path: '/stepForm',
            component: resolve => require(['@/pages/form/stepForm'], resolve),
            name: '分步表单',
            children: [
              {
                path: '/', redirect: '/stepForm/step1'
              },
              {
                path: '/stepForm/step1',
                component: resolve => require(['@/pages/stepFormSteps/step1'], resolve),
                name: '验证身份'
              },
              {
                path: '/stepForm/step2',
                component: resolve => require(['@/pages/stepFormSteps/step2'], resolve),
                name: '设置新密码'
              },
              {
                path: '/stepForm/step3',
                component: resolve => require(['@/pages/stepFormSteps/step3'], resolve),
                name: '完成'
              }
            ]
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
            name: '用户管理'
          },
          {
            path: '/account',
            component: resolve => require(['@/pages/account/account'], resolve),
            name: '帐号设置'
          },
          {
            path: '/log',
            component: resolve => require(['@/pages/log/log'], resolve),
            name: '操作日志'
          }
        ]
      },
      {
        path: '/testAdmin',
        name: '权限测试页',
        icon: 'el-icon-menu',
        redirect: '/admin'
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

export const authRouter = [
  {
    path: '/admin',
    name: 'admin',
    component: resolve => require(['@/pages/admin/admin'], resolve),
    meta: { role: 'admin' }
  }
];
