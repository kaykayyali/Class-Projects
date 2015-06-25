require 'sinatra'
require("sinatra/reloader") if development?
require_relative("calculator")
require_relative("Memory")

get '/calculator' do
	@memory = ""
erb(:calculator)	
end

post '/calculator' do
 value = params[:memory]
 @memory = Memory.new.determine(value)
 erb(:calculator)
end


post '/result' do
	user_num1 = params[:user_num1].to_i
	user_num2 = params[:user_num2].to_i
	operation = params[:operation].downcase
	@result = Calculator.new.calculate(user_num1,user_num2,operation)
	erb(:result)
end

post '/save_answer' do
	@result = params[:save]
	IO.write("public/data.txt", @result)
redirect to('/calculator')

end