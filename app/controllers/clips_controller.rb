class ClipsController < ApplicationController
  def index
  	@clips = Clip.all
  end

  def create
    clip = Clip.new(clip_params)
    clip.save
    redirect_to
  end

  def destroy
    clip = Clip.find(params[:id])
    clip.destroy
    redirect_to
  end

  private
  def clip_params
    params.require(:clip).permit(:user_id, :post_id)
  end

end
