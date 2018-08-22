const crypto = require('crypto');

module.exports = {
	md5:(str) => {
		const hash = crypto.createHash('md5').update(str).digest('hex');
		return hash;
	}
}