require_relative("MovieFileHandler")
require_relative("MovieFactory")
require_relative("Display")
require "imdb"


movie_names = MovieFileHandler.new.handle(IO.read("movies.txt"))

movies = []

 	movie_names.each do |movie|
 		movies.push(MovieFactory.new.make_imdb_movie(movie))
 	end

Display.new.display_data(movie_names,movie_ratings)



