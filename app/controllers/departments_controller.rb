class DepartmentsController < ApplicationController

def index
		@departments = Department.all
	end

	def show
		@department = Department.find_by(id: params[:id])
		if @department == nil
				redirect_to root_path
		end		
	end	

	def new
		@department = Department.new
	end
	
	def create
		department = Department.new
		department.name = params[:department][:name]
		department.phone = params[:department][:phone]
		department.address = params[:department][:address]
		department.save
		redirect_to department_path(department.id)
	end 

	def destroy
		department = Department.find_by(id: params[:id])
		if department
			department.delete
		end
		redirect_to department_path
	end

	def edit
		@department = Department.find_by(id: params[:id])
	end

	def update
		department = Department.find_by(id: params[:id])
		department.name = params[:department][:name]
		department.phone = params[:department][:phone]
		department.address = params[:department][:address]
		department.save
		redirect_to department_path(department.id)
	end

end