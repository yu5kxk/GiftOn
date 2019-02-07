class SmallCategoriesController < ApplicationController
	def create
		small_category = SmallCategory.new(small_category_params)
		small_category.save
		redirect_to new_large_category_path
	end

	def update
		small_category = SmallCategory.find(params[:id])
		small_category.update(small_category_params)
		redirect_to new_large_category_path
	end

	def destroy
		small_category = SmallCategory.find(params[:id])
		small_category.destroy
		redirect_to new_large_category_path
	end

	private
  		def small_category_params
    	params.require(:small_category).permit(:name, :number, :large_category_id)
  	end
end
