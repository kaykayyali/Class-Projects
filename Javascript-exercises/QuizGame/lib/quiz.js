var read = require('read')

var Quiz = function(questions,index){

		this.question_array = questions;
		this.question_counter = 0
		this.correct = 0
		this.incorrect = 0

	}



	Quiz.prototype.validate = function(err, result){

		if (result === this.question_array[this.question_counter].answer){
			console.log('Correct!');
			this.correct++;
			this.question_counter++;
			console.log(this.question_counter);
		} else {
			console.log('Incorrect');
			this.incorrect++;
		}

		if (this.question_counter < (this.question_array.length)){
			this.ask_Questions()
		} else if (this.question_counter === (this.question_array.length)){
			console.log('Bonus!')
			this.bonus_Question()
		}else{
			console.log('Answers correct: ', this.correct, "  Answers incorrect: ", this.incorrect);
			console.log('End of quiz!');
		}
	}



	Quiz.prototype.ask_Questions = function(){
					
		
		options = {
					
				prompt: this.question_array[this.question_counter].question,
				timeout: 10000
				}
				
		read(options, this.validate.bind(this));
		
	}



	Quiz.prototype.bonus_Question = function(){
		
		var randnum = Math.floor(Math.random()*6)
		options = {
					
					prompt: this.question_array[randnum].question,
					timeout: 10000
				}
		this.question_counter = randnum
		read(options, this.validate_bonus.bind(this));
	}



	Quiz.prototype.validate_bonus = function(err, result){
			if (result === this.question_array[this.question_counter].answer){
				console.log('Correct!');
				this.correct++;
						
			} else {
				console.log('Incorrect');
				this.incorrect++;
			}
			
			console.log('Answers correct: ', this.correct, "  Answers incorrect: ", this.incorrect);
			console.log('End of quiz!');

		}




module.exports = Quiz