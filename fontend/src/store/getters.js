/*
 * @Author: xueyp
 * @Date: 2018-09-11 11:17:46
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-10 22:17:39
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
  }
};
