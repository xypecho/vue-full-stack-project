/*
 * @Author: xypecho
 * @Date: 2018-09-07 21:03:17
 * @Last Modified by: xypecho
 * @Last Modified time: 2018-10-11 22:13:26
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
export const formatterUserLoginData = (data) => {
  const obj = [];
  // 按时间戳先后进行排序
  const compare = (obj1, obj2) => {
    if (obj1.register_time > obj2.register_time) {
      return 1;
    } else if (obj1.register_time < obj2.register_time) {
      return -1;
    }
    return 0;
  };
  // 统计数组中某值的出现次数
  const count = (arr, item) => {
    let s = 0;
    arr.forEach(val => {
      if (val.data === item) {
        s++;
      }
    });
    return s;
  };
  data.sort(compare);
  data.forEach(key => {
    obj.push({ data: formatterTime(key.register_time, 'yy-mm-dd') });
  });
  obj.forEach(key => {
    key.count = count(obj, key.data);
  });
  // 数组去重
  const newArr = [];
  for (let i = 0; i < obj.length; i++) {
    let tag = true;
    for (let j = 0; j < newArr.length; j++) {
      if (obj[i].data === newArr[j].data && obj[i].count === newArr[j].count) {
        tag = false;
      }
    }
    if (tag) {
      newArr.push(obj[i]);
    }
  }
  // 填补空缺的日期，格式为{data: '2018年05年23', count: 0 }
  const hasTime = [];// 已经存在的时间
  const timestamp = newArr.map(item => {
    hasTime.push(item.data);
    item.data = Date.parse(transformToTimestamp(item.data));
    return item;
  });
  const totalDays = (timestamp[timestamp.length - 1].data - timestamp[0].data) / (1000 * 60 * 60 * 24);
  const resultArr = [];// 最终返回的格式
  for (let i = 0; i < totalDays; i++) {
    resultArr.push({
      data: formatterTime(timestamp[0].data + (i * (1000 * 60 * 60 * 24)), 'yy-mm-dd'),
      count: hasTime.indexOf(formatterTime(timestamp[0].data + (i * (1000 * 60 * 60 * 24)), 'yy-mm-dd')) === -1 ? 0 : newArr[hasTime.indexOf(formatterTime(timestamp[0].data + (i * (1000 * 60 * 60 * 24)), 'yy-mm-dd'))].count
    });
  }
  return resultArr;
};
