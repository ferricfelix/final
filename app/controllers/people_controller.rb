class PeopleController < ApplicationController
	include TechnicianAuth

	def index
		tech_auth
		@persons = Person.all
	end

	def show
		tech_auth
		@person = Person.find_by(id: params[:id])
		if @person == nil
				redirect_to root_path
		end		
	end	

	def new
		tech_auth
		@person = Person.new
	end
	
	def create
		tech_auth
		person = Person.new
		person.first_name = params[:person][:first_name]
		person.last_name = params[:person][:last_name]
		person.nickname = params[:person][:nickname]
		person.save
		redirect_to person_path(person.id)
	end 

	def destroy
		tech_auth
		person = Person.find_by(id: params[:id])
		if person
			person.delete
		end
		redirect_to root_path
	end

	def edit
		tech_auth
		@person = Person.find_by(id: params[:id])
	end

	def update
		tech_auth
		person = Person.find_by(id: params[:id])
		person.first_name = params[:person][:first_name]
		person.last_name = params[:person][:last_name]
		person.nickname = params[:person][:nickname]
		person.save
		redirect_to person_path(person.id)
	end

end

