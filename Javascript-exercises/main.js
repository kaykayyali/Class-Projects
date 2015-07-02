var slideLoader = require('./slideLoader.js')
slideLoader('text.txt', function(slides){
	console.log(slides);
});