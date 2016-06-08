class EmployeesController < ApplicationController
	include TechnicianAuth

	def index
		tech_auth
		@employees = Employee.all
	end

	def show
		tech_auth
		@employee = Employee.find_by(id: params[:id])
		if @employee == nil
			flash.now[:notice] = 'No such employee!'
			redirect_to employees_path
		end		
	end	

	def new
		tech_auth
		@employee = Employee.new
	end
	
	def create
		tech_auth
		employee = Employee.new
		employee.department_id = params[:employee][:department_id]
		employee.person_id = params[:employee][:person_id]
		employee.title = params[:employee][:title]
		employee.supported = params[:employee][:supported]
		employee.phone = params[:employee][:phone]
		employee.address = params[:employee][:address]	
		employee.save
		if employee.valid?
			redirect_to employee_path(employee.id)
		else
			# flash[:error] = employee.errors.messages #this is way too revealing
			flash[:error] = "You entered an incomplete record, your submission was rolled back."
			redirect_to new_employee_path
		end
	end 

	def destroy
		tech_auth
		employee = Employee.find_by(id: params[:id])
		if employee
			employee.delete
		end
		redirect_to employees_path
	end

	def edit
		tech_auth
		@employee = Employee.find_by(id: params[:id])
	end

	def update
		tech_auth
		employee = Employee.find_by(id: params[:id])
		employee.department_id = params[:employee][:department_id]
		employee.person_id = params[:employee][:person_id]
		employee.title = params[:employee][:title]
		employee.supported = params[:employee][:supported]
		employee.phone = params[:employee][:phone]
		employee.address = params[:employee][:address]	
		employee.save
		redirect_to employee_path(employee.id)
	end
end