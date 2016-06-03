class UsersController < ApplicationController

	def index
		@users = Users.all
	end

	def show
		@user = User.find_by(id: params[:id])
		if @user == nil
				redirect_to users_path, notice: "This user relationship does not seem to exist, here is the list of current User entities"
		end	
	end

	def new
		@user = User.new
	end

	def create
		user = User.new
		user.employee_id = params[:user][:employee_id]
		user.item_id = params[:user][:item_id]
		user.type_id = params[:user][:type_id]
		user.note = params[:user][:note]
		user.created_ad = params[:user][:created_at]
		user.updated_at = params[:user][:updated_at]
	end

	def edit
		@user = User.find_by(id: params[:id])
	end

	def update
		user = User.find_by(id: params[:id])
		user.employee_id = params[:user][:employee_id]
		user.item_id = params[:user][:item_id]
		user.type_id = params[:user][:type_id]
		user.note = params[:user][:note]
		user.created_ad = params[:user][:created_at]
		user.updated_at = params[:user][:updated_at]
	end

	def destroy
		user = User.find_by(id: params[:id])
		if user
			user.delete
		end
		redirect_to root_path, notice: "User deleted successfully"
	end

end