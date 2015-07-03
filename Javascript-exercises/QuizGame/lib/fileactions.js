var Question = require('./question.js')
function fileactions(err, file){ 
    if (err) {
        throw err;
    }
    var data = JSON.parse(file);
    var questions = []

    data.forEach(function(item){
    	
    	var newQuestion = new Question(item.question, item.answer, item.tag);

    	questions.push(newQuestion);
        
    })

    return 5
}

module.exports = fileactions