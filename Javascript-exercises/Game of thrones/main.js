var fs = require('fs');
var fileActions = require('./fileactions.js');
fs.readFile("./Episodes.json", 'utf8', fileActions);
