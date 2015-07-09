class UsersController < ApplicationController
	def show
		@user = User.find(session[:user_id])
		@products = @user.products.all
		render 'show'
	end

	def add
		@user = User.new
		render 'login'
	end

	def create
		user = User.new
		user.email = params[:user][:email]

		user.password = params[:user][:password]
		


		if User.find_by(:email => user.email, :password => user.password)
			session[:user_id] = User.find_by(:email => user.email).id
			redirect_to (user_path(session[:user_id]))
		else 
			redirect_to '/'
		end

	end

	def destroy
		
	end
end
