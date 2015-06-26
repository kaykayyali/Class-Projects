require 'sinatra'
require 'sinatra/reloader' if development?
require 'imdb'
require 'require_all'
require_all 'lib'
require 'pry'

enable(:sessions)
movie_search_results = []


	validAnswer = "first"
	qfactory = nil
	cur_question = nil
	questions_correct = 0
	questions_incorrect = 0
	questions_total = 0
get '/' do 
	redirect to ('/home')
end
get '/home' do
	validAnswer = "first"
	qfactory = nil
	cur_question = nil
	questions_correct = 0
	questions_incorrect = 0
	questions_total = 0

	erb(:home)
end

post '/search' do 

	validAnswer = "first"
	movie_name = params[:movie_name]
	movie_search_results = Movie_Search.new.search(movie_name)
	qfactory = Gen_Question.new(movie_search_results)
	redirect to ('/movie_display')
end

get '/movie_display' do
@validAnswer = validAnswer
cur_question = qfactory.generate
@cur_question = cur_question
@incorrect =questions_incorrect
@correct = questions_correct
@trivia_movies = movie_search_results
erb(:movie_display)
end

post '/check_answer' do
input = params[:answer]

if input == cur_question.answer.title
	
	validAnswer = "Correct"
	questions_correct += 1
else

	validAnswer = "Incorrect"
	questions_incorrect += 1

end
questions_total += 1

redirect to 'movie_display'

end



