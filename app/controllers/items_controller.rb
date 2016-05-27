class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def show
		@item = Item.find_by(id: params[:id])
		if @item == nil
				redirect_to root_path
		end		
	end	

	def new
		@item = Item.new
	end
	
	def create
		m = Item.new
		m.serial = params[:item][:serial]
		m.value = params[:item][:value]
		m.model_id = params[:item][:model_id]
		m.manufacturer_id = params[:item][:manufacturer_id]
		m.purchase_id = params[:item][:purchase_id]
		m.save
		redirect_to root_path
	end 

	def destroy
		item = Item.find_by(id: params[:id])
		if item
			item.delete
		end
		redirect_to root_path
	end


end

