/*
 * @Author: xypecho
 * @Date: 2018-09-07 21:33:55
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-12-12 21:52:49
 */
export default {
  isCollapse: false, // 导航栏是否收缩，false为未收缩
  user: {},
  routerMatched: '', // 存储路由的名字
  newrouter: [], // 实现动态路由
  isLoadComplete: '', // 用来判断首页背景图是否加载完成
  step: 1, // 分布表单的步骤数
  stepForm: {
    username: '',
    password: '',
    confirmPassword: ''
  } // 分布表单中填写的数据
};
