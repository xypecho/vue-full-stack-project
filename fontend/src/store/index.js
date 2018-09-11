/*
 * @Author: xueyp
 * @Date: 2018-09-11 11:17:35
 * @Last Modified by:   xueyp
 * @Last Modified time: 2018-09-11 11:17:35
 */
import Vue from 'vue';
import Vuex from 'vuex';
import actions from './actions';
import getters from './getters';
import mutations from './mutations';
import state from './state';

Vue.use(Vuex);

export default new Vuex.Store({
  actions,
  getters,
  mutations,
  state
});
