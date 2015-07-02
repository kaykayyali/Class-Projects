var display = require('./display.js');
var filter = require('./filter.js')
function fileactions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    display(filter(episodes));
}

module.exports = fileactions;