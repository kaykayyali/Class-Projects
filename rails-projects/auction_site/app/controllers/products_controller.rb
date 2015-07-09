class ProductsController < ApplicationController
		
		def index
		@products = Product.all
		render 'index'
		end

	def all
		@products = Product.all
		render 'all'
	end
	def show
		@bid = Bid.new
		@user = User.find(session[:user_id])
		@product = Product.find(params[:id])
		render 'show'
		
	end
	def new
		#Dont forget to make this dynamic
		@user = User.find(1)
		@product = @user.products.new
		render 'new'
	end

	def create
		@user =User.find(1)
		@product = @user.products.new(product_params)
		if @product.save 
			redirect_to products_path
		else 
			
			render 'new'
		end
	end

	def destroy
		
	end

	private 
	def product_params
	return	params.require(:product).permit(:title,:description,:deadline)
	end
end
