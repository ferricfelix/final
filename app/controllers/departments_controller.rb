class DepartmentsController < ApplicationController
 include TechnicianAuth
def index
	tech_auth
		@departments = Department.all
	end

	def show
		tech_auth
		@department = Department.find_by(id: params[:id])
		if @department == nil
				redirect_to root_path
		end		
	end	

	def new
		tech_auth
		@department = Department.new
	end
	
	def create
		tech_auth
		department = Department.new
		department.name = params[:department][:name]
		department.phone = params[:department][:phone]
		department.address = params[:department][:address]
		department.save
		redirect_to department_path(department.id)
	end 

	def destroy
		tech_auth
		department = Department.find_by(id: params[:id])
		if department
			department.delete
		end
		redirect_to department_path
	end

	def edit
		tech_auth
		@department = Department.find_by(id: params[:id])
	end

	def update
		tech_auth
		department = Department.find_by(id: params[:id])
		department.name = params[:department][:name]
		department.phone = params[:department][:phone]
		department.address = params[:department][:address]
		department.save
		redirect_to department_path(department.id)
	end

end