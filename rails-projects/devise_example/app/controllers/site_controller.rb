class SiteController < ApplicationController
	before_action(:authenticate_dog)
	def home
		render 'home'
	end
end
