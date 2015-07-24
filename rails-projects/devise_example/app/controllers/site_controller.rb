class SiteController < ApplicationController
	before_action(:authenticate_dog!)
	def home
		@email = current_dog.email
		render 'home'
	end

end
