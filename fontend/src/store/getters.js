export default {
  isCollapse: state => state.isCollapse,
  user: (state) => {
    if (!state.user.username) {
      state.user = JSON.parse(JSON.stringify(localStorage));
    }
    return state.user;
  },
  routerMatched: state => state.routerMatched
};
