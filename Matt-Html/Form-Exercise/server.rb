require 'sinatra'
require 'sinatra/reloader'



get '/' do 
	erb(:clone)
end