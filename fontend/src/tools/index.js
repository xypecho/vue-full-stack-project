/*
 * @Author: xypecho
 * @Date: 2018-09-07 21:03:17
 * @Last Modified by: xueyp
 * @Last Modified time: 2018-10-15 13:00:00
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
export const formatterTime = (timestamp, type) => {
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
  let res;
  if (type === 'yy-mm-dd') {
    res = `${y}年${m}月${d}日`;
  } else if (type === 'y-m-d') {
    res = `${y}-${m}-${d}`;
  } else {
    res = `${y}年${m}月${d}日 ${h}:${minute}:${seconds}`;
  }
  return res;
};

// 计算两个时间戳之间间隔的时间
export const timeDifference = (pastTime, currentTime) => {
  const diff = (currentTime - pastTime) / 1000;
  const minute = Math.floor(diff / 60);
  const hours = Math.floor(diff / 3600);
  const day = Math.floor(diff / 86400);
  return { day, hours, minute };
};

// 格式化日期，将2018年9月28格式化为2018-9-28
export const transformToTimestamp = (data) => {
  const time = data.match(/\d+/g);
  return time.join('-');
};

// 15天内新增注册用户数据,预期的数据格式为  [{ data: '2018-05-22', count: 32371 },{ data: '2018-05-23', count: 12328 }]
// 1.统计该时间戳所属的当天，注册的人数
// 2.将数据格式转成[{ data: '2018-05-22', count: 32371 },{ data: '2018-05-23', count: 12328 }]
// 3.二维数组去重
// 4.缺失的时间段，count补0
export const formatterUserLoginData = (data) => {
  console.log(data);
  // const now = new Date().getTime();
  // const fifteenDayAgo = now - (15 * 24 * 60 * 60 * 1000);
};
