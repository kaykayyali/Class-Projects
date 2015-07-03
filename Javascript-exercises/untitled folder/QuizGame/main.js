// Let’s create a quiz game in JavaScript!

// This is about as simple as it sounds, let's create a command line game in Node that asks the user questions, and allows the user to answer.

// First Iteration

// Create the basic quiz. Create a “question” class. Each question should have the text for the question (obviously), an answer, 
// and an ID in the form of an integer. Create the Quiz class to move the user from question to question. Quiz the user with the questions, 
// and if they provide the correct answer allow them to move on to the next question. 
// If the user incorrectly answers, notify the user and repeat the same question again.

var fs = require('fs');
var Question = require('./lib/question.js');
var Quiz = require('./lib/quiz.js')




fs.readFile("./lib/data.json", 'utf8', fileActions);


function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var data = JSON.parse(file);
    var questions = []

    data.forEach(function(item){
    	
    	var newQuestion = new Question(item.question, item.answer, item.tag);

    	questions.push(newQuestion);
        
    })
    var game = new Quiz(questions)
    
    game.ask_Questions()

}

   
   

   
  
    
