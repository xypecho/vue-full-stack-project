/*
 * @Author: xueyp
 * @Date: 2018-09-11 11:17:54
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-11-11 15:21:24
 */
export default {
  changeRouterMatched(context) {
    context.commit('changeRouterMatched');
  },
  setNewRouter(context) {
    context.commit('setNewRouter');
  },
  changePageNumber(context) {
    context.commit('changePageNumber');
  }
};
