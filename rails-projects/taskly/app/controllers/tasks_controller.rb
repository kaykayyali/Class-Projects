class TasksController < ApplicationController
	def show
		user = User.find_by(:id => params[:user_id])
		task = user.Task.find_by(:id => params[:task_id])
		render(:json => user)
		
	end

	def index
		# user = User.find_by(:id => params(:user_id))
		user = User.find(1)
		tasks = user.tasks
		render :json => tasks
		   
	end

	def complete
		user = User.find_by(:id => params[:user_id])
		task = Task.find_by(:id => params[:id])
		task.completion_date = DateTime.now
		task.save
		render :json =>  task

	end

	def create 
		user = User.find_by(:id => params[:user_id])
		if !user.nil?
			task = Task.new(:name => params[:task][:name])
			user.tasks.push(task)
			render :json =>  task
		else
			render :status => 404, :json =>{
				:error => "User not found"
			}
		end
		# POST /users/:user_id/tasks(.:format) tasks#create
	end

	def update
		user = User.find_by(:id => params[:user_id])
		task = Task.find_by(:id => params[:id])
		if user.nil?
			info = {:error => 'User not found.'}
			render(:statu => 404, :json => info)
		else 
			task.update(task_params)
			render(:json => task)
		end
		# PATCH  /users/:user_id/tasks/:id(.:format) tasks#update
	end

	def destroy
		user = User.find_by(:id => params[:user_id])
		if user.nil?
			info = {:error => 'User not found.'}
			render(:statu => 404, :json => info)
		else 
			user.destroy(user_params)
			render(:json => user)
		end
	end
	private
	def task_params()
		params.require(:task).permit(:name)
	end

end
