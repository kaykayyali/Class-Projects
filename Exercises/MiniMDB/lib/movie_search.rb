class Movie_Search




			def search(movie_name)

				return Imdb::Search.new(movie_name).movies[0]

			end





end