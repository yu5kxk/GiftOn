class LargeCategoriesController < ApplicationController
  before_action :authenticate_manager!, only:[:new, :create, :edit, :update, :destroy]

  def new
  	@large_category = LargeCategory.new
  	@small_category = SmallCategory.new
  	@large_categories = LargeCategory.all.order(:number)
  	@small_categories = SmallCategory.all.order(:number)
  end

  def create
  	large_category = LargeCategory.new(large_category_params)
  	large_category.save
  	redirect_to new_large_category_path
  end

  def edit
    @large_category = LargeCategory.find(params[:id])
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
