/*
 * @Author: xueyp
 * @Date: 2018-09-11 11:17:46
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-09 22:52:18
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
  isLoadComplete: state => state.isLoadComplete
};
