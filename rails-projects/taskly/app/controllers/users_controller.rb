class UsersController < ApplicationController
	def show
		user = User.find_by(:id => params[:id])
		render(:json => user)
		
	end
	def index
		users = User.all
		render :json => users
	end

	def create 
		user = User.create(user_params)
		render :json => user
	end
	def update
		user = User.find_by(:id => params[:id])
		if user.nil?
			info = {:error => 'User not found.'}
			render(:status => 404, :json => info)
		else 
			user.update(user_params)
			render(:json => user)
		end
	end
	def destroy
		user = User.find_by(:id => params[:id])
		if user.nil?
			info = {:error => 'User not found.'}
			render(:statu => 404, :json => info)
		else 
			user.destroy(user_params)
			render(:json => user)
		end
	end



	private
	def user_params()
		params.require(:user).permit(:name, :email)
	end
end
