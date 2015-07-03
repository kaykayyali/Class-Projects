
var Quiz = require('./quiz.js')
function startGame(questions) {
   
   var quiz = new Quiz(questions) 



   quiz.ask_questions    
              

}

module.exports = startGame

// options = { 
//                     prompt: cur_question.question,
//                     timeout: 10000
//                 }
//                  read(options, validate(cur_question.answer))