class MovieFactory
	def make_imdb_movie(movie_name)
		arr =  Imdb::Search.new(movie_name)
		puts arr[0]
	end
end