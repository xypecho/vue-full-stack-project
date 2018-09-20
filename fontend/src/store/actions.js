/*
 * @Author: xueyp
 * @Date: 2018-09-11 11:17:54
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-20 15:46:58
 */
export default {
  changeRouterMatched(context) {
    context.commit('changeRouterMatched');
  },
  setNewRouter(context) {
    context.commit('setNewRouter');
  }
};
