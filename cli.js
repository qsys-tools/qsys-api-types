#!/usr/bin/env node
'use strict';
const fs = require('fs')
const path = require('path');
const argv = require('yargs-parser')(process.argv.slice(2));
const apiTypes = require('.');

if (argv.version) {
	console.log(require('./package.json').version);
	return;
}

let output = argv.output || argv.out || argv.o;

if (output) {
	if (output === true) {
		output = path.join(process.cwd(), 'qsys-api-types.lua');
	} else if (typeof output === 'string') {
		output = path.join(process.cwd(), output);
	} else {
		throw new Error('TypeError: output ' + output);
	}

	fs.writeFileSync(output, apiTypes.contents);
	return;
}

console.log(apiTypes.contents);
