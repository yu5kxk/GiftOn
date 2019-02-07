class LargeScenesController < ApplicationController
  def index
  end

  def new
  	@large_scene = LargeScene.new
  	@small_scene = SmallScene.new
  	@large_scenes = LargeScene.all
  	@small_scenes = SmallScene.all
  end

  def create
  	large_scene = LargeScene.new(large_scene_params)
  	large_scene.save
  	redirect_to new_large_scene_path
  end

  def edit
  	@large_scene = LargeScene.find(params[:id])
  end

  def update
  	large_scene = LargeScene.find(params[:id])
  	large_scene.update(large_scene_params)
  	redirect_to
  end

  def destroy
  	large_scene = LargeScene.find(params[:id])
  	large_scene.destroy
  	redirect_to
  end

  private
  	def large_scene_params
    params.require(:large_scene).permit(:name, :number)
  end
end
