class ArticlesController < ApplicationController

	def index
		@articles = Article.all
		render 'index'
	end

	def show
		render 'show'
	end

end
