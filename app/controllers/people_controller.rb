class PeopleController < ApplicationController
	def index
		@persons = Person.all
	end

	def show
		@person = Person.find_by(id: params[:id])
		if @person == nil
				redirect_to root_path
		end		
	end	

	def new
		@person = Person.new
	end
	
	def create
		person = Person.new
		person.first_name = params[:person][:first_name]
		person.last_name = params[:person][:last_name]
		person.nickname = params[:person][:nickname]
		person.save
		redirect_to person_path(person.id)
	end 

	def destroy
		person = Person.find_by(id: params[:id])
		if person
			person.delete
		end
		redirect_to root_path
	end

	def edit
		@person = Person.find_by(id: params[:id])
	end

	def update
		person = Person.find_by(id: params[:id])
		person.first_name = params[:person][:first_name]
		person.last_name = params[:person][:last_name]
		person.nickname = params[:person][:nickname]
		person.save
		redirect_to person_path(person.id)
	end

end

