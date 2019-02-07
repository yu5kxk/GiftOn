class ItemsController < ApplicationController
	def create
		@item = Item.new(item_params)
		item.save
		redirect_to
	end

	def update
		item = Item.find(params[:id])
		item.update(item_params)
		redirect_to
	end

	def destroy
		item = Item.find(params[:id])
		item.destroy
		redirect_to
	end

	private
  		def item_params
    	params.require(:item).permit(:l_category_id, :s_category_id, :name, :maker_id, :price, :keeping_quality)
  	end
end
