/*
 * @Author: xueyp
 * @Date: 2018-09-11 11:17:46
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-11 14:27:06
 */
export default {
  isCollapse: state => state.isCollapse,
  user: (state) => {
    if (!state.user.username) {
      state.user = JSON.parse(JSON.stringify(localStorage));
    }
    return state.user;
  },
  routerMatched: state => state.routerMatched,
  newrouter: state => state.newrouter, // 动态路由
  isLoadComplete: (state) => {
    if (!state.isLoadComplete) {
      state.isLoadComplete = JSON.parse(JSON.stringify(localStorage.getItem('isLoadComplete')));
    }
    return state.isLoadComplete;
  },
  step: state => state.step
};
