/*
 * @Author: xypecho
 * @Date: 2018-09-07 21:03:17
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-09-11 16:53:34
 */

// 设置localStorage
export const setLocalStorage = (obj) => {
  Object.keys(obj).forEach((key) => {
    localStorage.setItem(key, obj[key]);
  });
  const currentTime = new Date().getTime();
  localStorage.setItem('currentTime', currentTime);
};

// 将时间戳格式化为 yy-mm-dd hh:mm:ss
export const formatterTime = (timestamp) => {
  if (!timestamp || typeof timestamp !== 'number') {
    return '暂无数据';
  }
  const date = new Date(timestamp);
  const y = date.getFullYear();
  const m = date.getMonth() + 1 >= 10 ? date.getMonth() + 1 : `0${date.getMonth() + 1}`;
  const d = date.getDate() >= 10 ? date.getDate() : `0${date.getDate()}`;
  const h = date.getHours() >= 10 ? date.getHours() : `0${date.getHours()}`;
  const minute = date.getMinutes() >= 10 ? date.getMinutes() : `0${date.getMinutes()}`;
  const seconds = date.getSeconds() >= 10 ? date.getSeconds() : `0${date.getSeconds()}`;
  return `${y}年${m}月${d}日 ${h}:${minute}:${seconds}`;
};

// 计算两个时间戳之间间隔的时间
export const timeDifference = (pastTime, currentTime) => {
  const diff = (currentTime - pastTime) / 1000;
  const minute = Math.floor(diff / 60);
  const hours = Math.floor(diff / 3600);
  const day = Math.floor(diff / 86400);
  return { day, hours, minute };
};
