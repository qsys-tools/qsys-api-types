const fs = require('fs');
const path = require('path');
const repeat = require('repeat-string');

const apiDir = path.join(__dirname, 'api');
const output = path.join(__dirname, 'qsys-api-types.lua');

const content = fs.readdirSync(apiDir)
	.filter(file => file.match(/\.lua$/))
	.sort()
	.map(filename => ({filename, filepath: path.join(apiDir, filename)}))
	.map(({filename, filepath}) => ({filename, contents: fs.readFileSync(filepath, 'utf8')}))
	.map(({filename, contents}) => {
		const dividerLine = `-- ${repeat('*', filename.length * 3)}`;
		const filenameLine = `-- ${repeat(' ', filename.length)}${filename}`;
		return `${dividerLine}\n${filenameLine}\n${dividerLine}\n${contents}`
	})
	.join('\n');

fs.writeFileSync(output, content);
