
class ConcertsController < ApplicationController

	def show

		@concert = Concert.find(params[:id])
		artists =  RSpotify::Artist.search(@concert.artist)
		@artist = artists[0]
		
		render 'show'
	end

	def new
		@concert = Concert.new
		render 'new'
	end

	def index
		@concerts = Concert.all
		render 'index'
	end

	def create
		
		@concert = Concert.new(concert_params)

		if @concert.save 
			flash[:notice] = "Added new concert!"
			redirect_to action: 'index', controller: 'concerts'
		else 
			flash[:alert] = "Creation Failed."
			render 'new'
		end
	end

	def home
		@concerts_today = Concert.where(:date => Date.today)
		@concerts_month = Concert.where('extract(month from date) = ?', Time.now.month)
			render 'home'
	end

	def update

	end

	private
	def concert_params
		return params.require(:concert).permit(:venue, :description, :date, :ticket_price, :city, :artist)
	end
end
