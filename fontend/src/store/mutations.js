/*
 * @Author: xueyp
 * @Date: 2018-09-11 11:17:08
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-20 15:20:35
 */
export default {
  changeCollapseStatus(state) {
    state.isCollapse = !state.isCollapse;
  },
  setUserInfo(state, user) {
    state.user = user;
  },
  changeRouterMatched(state, router) {
    state.routerMatched = router;
  },
  setNewRouter(state, newrouter) {
    state.newrouter = newrouter;
  }
};
