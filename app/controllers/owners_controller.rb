class OwnersController < ApplicationController

	def validate_owner(owner)
		if owner.valid?
			# Client.where("orders_count = ? AND locked = ?", params[:orders], false)
			if Owner.where("department_id = ? AND item_id = ?", params[:owner][:department_id], params[:owner][:item_id]).present?
				flash[:error] = "You entered a duplicate record, your submission was rolled back."
				redirect_to department_path(owner.department.id)
			else 
				redirect_to department_path(owner.department.id)
				owner.save
			end
		else
			flash[:error] = "You entered an incomplete record, your submission was rolled back."
			redirect_to department_path(owner.department.id)
		end
	end


	def index
		@owners = Owners.all
	end

	def show
		@owner = Owner.find_by(id: params[:id])
		if @owner == nil
				redirect_to owners_path, notice: "This owner relationship does not seem to exist, here is the list of current Owner entities"
		end	
	end

	def new
		@owner = Owner.new
		if params.has_key?(:department_id)
			@department = Department.find_by(id: params[:department_id])
		# and what if we can't find a matching employee record? the case below is clearly not ideal
		else
			@department = "no department found"
		end
	end

	def create
		owner = Owner.new
		owner.department_id = params[:owner][:department_id]
		owner.item_id = params[:owner][:item_id]
		owner.type_id = params[:owner][:type_id]
		owner.note = params[:owner][:note]
		owner.created_at = params[:owner][:created_at]
		owner.updated_at = params[:owner][:updated_at]
		validate_owner(owner)
	end

	def edit
		@owner = Owner.find_by(id: params[:id])
	end

	def update
		owner = Owner.new
		owner.employee_id = params[:owner][:department_id]
		owner.item_id = params[:owner][:item_id]
		owner.type_id = params[:owner][:type_id]
		owner.note = params[:owner][:note]
		owner.created_at = params[:owner][:created_at]
		owner.updated_at = params[:owner][:updated_at]
		validate_owner(owner)
	end

	def destroy
		owner = Owner.find_by(id: params[:id])
		if owner
			owner.delete
		end
		redirect_to department_path(owner.department.id)
	end

end