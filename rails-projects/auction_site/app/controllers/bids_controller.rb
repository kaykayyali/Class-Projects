class BidsController < ApplicationController
	def create
		
		bid = Bid.new(:user_id => params[:user_id], :product_id => params[:product_id], :amount => params[:bid][:amount])
		
		if bid.save 
			redirect_to (user_product_path(session[:user_id], params[:product_id]))
		else
			redirect_to
		end

	end
end
