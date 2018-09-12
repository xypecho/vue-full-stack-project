/*
 * @Author: xueyp
 * @Date: 2018-09-11 11:17:46
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-12 15:43:17
 */
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
