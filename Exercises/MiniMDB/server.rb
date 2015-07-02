require 'sinatra'
require 'sinatra/reloader' if development?
require 'imdb'
require 'require_all'
require 'pry'
require_all ('lib')
enable (:sessions)

movies_added = []
movie_handler = Movie_Search.new


get '/' do 
	movies_added = []
	redirect to '/home'
end
get '/home' do 

	@movies_added = movies_added
	
	erb(:home)
end

get '/add_movie' do 
	redirect to '/home'
end

post '/home' do 
	
movies_added.push(movie_handler.search(params[:movie_name]))

	redirect to('/home')
end





# # Yeah, back to TV shows now. Really, I only think about TV shows. 
# Everything is a TV show. E-v-e-r-y-t-h-i-n-g. This is an improvement from Spotinatra, but based on TV shows.

# # We will have a form in the top, to add TV show & movie names. For example, 
# we will add “Gotham” (new exciting TV show about Batman, began two days ago!), “Masters of Sex” (TV show) and “Garden State” (movie).

# # Then, we will also have a list that, for each TV show or movie we added to 
# the web application, shows the name, the IMDB rating, the IMDB cover for that and, 
# finally, a link to the IMDB url for that TV show or movie.

# Also, each TV show or movie in the list will have a color based on the IMDB rating:

# Dark green for those with 9 or above
# Green for those with 8 or more, but less than 9
# Yellow for those with 5.5 or more, but less than 8
# Red for the rest
# Hint: yeah, use the IMDB gem :)