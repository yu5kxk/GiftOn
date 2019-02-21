class SmallScenesController < ApplicationController
	before_action :authenticate_manager!, only:[:new, :create, :edit, :update, :destroy]

	def create
		small_scene = SmallScene.new(small_scene_params)
		small_scene.save
		redirect_to new_large_scene_path
	end

	def edit
		@small_scene = SmallScene.find(params[:id])
  	end

 	def update
		small_scene = SmallScene.find(params[:id])
		small_scene.update(small_scene_params)
		redirect_to new_large_scene_path
	end

	def destroy
		small_scene = SmallScene.find(params[:id])
		small_scene.destroy
		redirect_to new_large_scene_path
	end

	private
	  	def small_scene_params
	    	params.require(:small_scene).permit(:name, :number, :large_scene_id)
	  	end
end
