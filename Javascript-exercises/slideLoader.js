var fs = require("fs")
function slideLoader (path, func) {

fs.readFile(path, 'utf8', function(error, content) {

	if (!error)
	{
		var slides = content.split('\n---\n');
		func(slides);
	} else {
		console.log('Error', error);
	}
});
}

module.exports = slideLoader; 