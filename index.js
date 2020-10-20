const fs = require('fs');
const path = require('path');

const filepath = path.join(__dirname, 'qsys-api-types.lua');

let contents;

module.exports = {
	path: filepath,
	get contents() {
		if (!contents) {
			contents = fs.readFileSync(filepath, 'utf8');
		}
		return contents;
	}
};
