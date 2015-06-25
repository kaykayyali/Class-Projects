require('sinatra')
require('sinatra/reloader') if development?

enable(:sessions)

get '/session/:value'  do
	session[:value] = params[:value]
	"Saved the value : #{params[:value]}"
end
get '/session' do
	"Currently in the session: #{session[:value].inspect}"
	end