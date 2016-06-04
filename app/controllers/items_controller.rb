class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def show
		@item = Item.find_by(id: params[:id])
		if @item == nil
				redirect_to root_path
		end	
		if @item.model.nil?
  			@model = "No model is set for this item"
  		else
  			@model = @item.model.name
		end	
		if @item.manufacturer.nil?
  			@manufacturer = "No manufacturer is set for this item"
  		else
  			@manufacturer = @item.manufacturer.name
		end
		if @item.purchase.nil?
  			@purchase = "No purchase is set for this item"
  		else
  			@purchase = @item.purchase.order
		end
	end	

	def new
		@item = Item.new
	end
	
	def create
		item = Item.new
		item.serial = params[:item][:serial]
		item.value = params[:item][:value]
		item.model_id = params[:item][:model_id]
		item.manufacturer_id = params[:item][:manufacturer_id]
		item.purchase_id = params[:item][:purchase_id]
		item.save
		redirect_to item_path(item.id)
	end 

	def destroy
		item = Item.find_by(id: params[:id])
		if item
			item.delete
		end
		redirect_to employees_root
	end

	def edit
		@item = Item.find_by(id: params[:id])
	end

	def update
		item = Item.find_by(id: params[:id])
		item.serial = params[:item][:serial]
		item.value = params[:item][:value]
		item.model_id = params[:item][:model_id]
		item.manufacturer_id = params[:item][:manufacturer_id]
		item.purchase_id = params[:item][:purchase_id]
		item.save
		redirect_to item_path(item.id)
	end

end

