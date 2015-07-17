class EmployeesController < ApplicationController
  def index
  	contact = Contact.find(params[:contact_id])
  	employees = contact.employees.all
  	render json: employees
  end
end
