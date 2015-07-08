class UrlController < ApplicationController
	def index
		@links = Url.all
		render 'index'
	end

	def most_recently_visited
		@links = Url.order("updated_at DESC").limit(10)
		render 'most_recently_visited'
	end

	def show
		link_search = Url.find_by(:shortlink => params[:shortlink])
		link_search.times_visited += 1
		link_search.save
		redirect_to link_search.link
	end

	def add
		render 'add'
	end

	def error_link_exists
		@link = params[:shortlink]
		render 'error_link_exists'
	end

	def create
		
		if params[:user_link].include?("http://") == false
			params[:user_link].prepend("http://")
		end


		item = Url.find_by link: params[:user_link]
		if item == nil
			new_link = Url.create(link: params[:user_link], shortlink: Url.randomlink(3), times_visited: 0)
			redirect_to '/index'
		else 
			redirect_to "/error_link_exists/"+item.shortlink 
		end
		
	end

	def destroy

	end

end
