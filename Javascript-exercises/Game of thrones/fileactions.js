var Question = require('question.js')
function fileactions(err, file){ 
    if (err) {
        throw err;
    }
    var data = JSON.parse(file);
    var questions;

    data.forEach(function(file){
    	
    	var newQuestion = new Question(file.question, file.answer, file.tag);
    	questions.push(newQuestion);
    })

    return questions;
}

module.exports = fileactions;