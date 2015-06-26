class Gen_Question
	def initialize(movie_array)
		@array = movie_array
		@factory = Trivia_Factory.new(@array)
	end


	def generate
		
		

		random_question_num = rand(3)
				case random_question_num
				when 0
					new_question = @factory.by_year
				when 1
					new_question = @factory.by_company
				when 2
					new_question = @factory.by_director
				end
		
		# question = "Which movie was made in #{@array[random_movie_num].year}"
		
		# new_question = Question.new(question, @array[random_movie_num])
		return new_question

	end
end