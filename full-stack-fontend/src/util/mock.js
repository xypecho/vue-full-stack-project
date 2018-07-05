import Mock from 'mockjs';

export default Mock.mock('http://g.cn', {
	'regexp1': /[a-z][A-Z][0-9]/,
	'age': '123',
	'name|+1': 1
})