class Movie_Search


		def search(movie_name)
			movie_search_array = Imdb::Search.new(movie_name)
			movie_list = []


				movie_search_array.movies.each do |movie|
						if movie.poster != nil 

						movie_list.push(movie)
						end
					break if movie_list.count == 9
				end 


			return movie_list

		end


end