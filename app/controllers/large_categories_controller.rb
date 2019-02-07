class LargeCategoriesController < ApplicationController
  def index
  end

  def new
  	@large_category = LargeCategory.new
  	@small_category = SmallCategory.new
  	@large_categories = LargeCategory.all
  	@small_categories = SmallCategory.all
  end

  def create
  	large_category = LargeCategory.new(large_category_params)
  	large_category.save
  	redirect_to new_large_category_path
  end

  def update
  	large_category = LargeCategory.find(params[:id])
  	large_category.update(large_category_params)
  	redirect_to new_large_category_path
  end

  def destroy
  	large_category = LargeCategory.find(params[:id])
  	large_category.destroy
  	redirect_to new_large_category_path
  end

   private
   	def large_category_params
   	params.require(:large_category).permit(:name, :number)
   end
end
