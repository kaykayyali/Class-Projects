var fs = require('fs');
function print (error,content) {
	console.log(content);
}
fs.readFile('text.txt', 'utf8', print)