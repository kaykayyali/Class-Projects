class SiteController < ApplicationController
	def home
		render 'home'
	end

	def send_profile
		profile = User.find(1)
		render :json => profile
	end
end
