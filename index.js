const fs = require('fs');
const path = require('path');

const filepath = path.join(__dirname, 'qsys-api-types.lua');

module.exports = {
	path: filepath,
	get contents() {
		// lazy load.
		const contents = fs.readFileSync(filepath, 'utf8');
		Object.defineProperty(module.exports, 'contents', {
			value: contents,
			enumerable: true
		});
		return contents;
	}
};
