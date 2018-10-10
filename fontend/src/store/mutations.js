/*
 * @Author: xueyp
 * @Date: 2018-09-11 11:17:08
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-09 23:03:44
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
  },
  changeLoadStatus(state) {
    state.isLoadComplete = true;
  }
};
