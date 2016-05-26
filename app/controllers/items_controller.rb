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
		m.serial = params[:serial]
		m.value = params[:value]
		m.model_id = params[:model_id]
		m.manufacturer_id = params[:manufacturer_id]
		m.purchase_id = params[:purchase_id]
		m.save
		redirect_to root_path
	end 


end

