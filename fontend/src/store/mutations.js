export default {
  changeCollapseStatus(state) {
    state.isCollapse = !state.isCollapse;
  },
  setUserInfo(state, user) {
    state.user = user;
  },
  changeRouterMatched(state, routerMatched) {
    state.routerMatched = routerMatched;
  }
};
