/*
 * @Author: xypecho
 * @Date: 2018-09-07 21:03:17
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-09-07 22:26:13
 */
export const setLocalStorage = (obj) => {
  Object.keys(obj).forEach((key) => {
    localStorage.setItem(key, obj[key]);
  });
};
