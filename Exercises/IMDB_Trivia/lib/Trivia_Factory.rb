class Trivia_Factory
	def initialize(array)
		@array = array
	end




	def by_year
		random_movie_num = rand(9)
		new_question = Question.new("Which movie was made in #{@array[random_movie_num].year}", @array[random_movie_num])
		return new_question
		
	end

	def by_company
		random_movie_num = rand(9)
		new_question = Question.new("Which movie was made by #{@array[random_movie_num].company}", @array[random_movie_num])
		return new_question
	end

	def by_director
		random_movie_num = rand(9)
		if @array[random_movie_num].director.class == Array 
			string = @array[random_movie_num].director[0]
		else
			string = @array[random_movie_num].director
		end


		new_question = Question.new("Which movie was made by Director #{string}", @array[random_movie_num])
		return new_question
	end

end