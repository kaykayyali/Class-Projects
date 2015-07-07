class ContactsController < ApplicationController

	def index
		contacts = Contact.all 
		@contacts = contacts.order("name ASC")
		render 'index'
	end

	def search
		# @contact = Contact.where("name like '#{params[:search_field]}%'").limit(1)
		contact = Contact.find(3)
		
		redirect_to 'show/?id=#{contact.id}'


	end

	def show
		@contact = Contact.find(params[:id])
		render 'show'
	end

	def create
		Contact.create(name: params[:user_name], address: params[:user_address], phone1: params[:user_phone1], phone2: params[:user_phone2], email1: params[:user_email1], email2: params[:user_email2])
		redirect_to '/index'
	end

	def add
		render 'add'
	end

	def destroy
		render 'destroy'
	end
end
