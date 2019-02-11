class MakersController < ApplicationController
  def index
    @makers = Maker.all
  end

  def create
    maker = Maker.new(maker_params)
    maker.save
    redirect_to new_post_path
  end

  def update
    maker = Maker.find(params[:id])
    maker.update(maker_params)
    redirect_to
  end

  def destroy
    maker = Maker.find(params[:id])
    maker.destroy
    redirect_to
  end

  private
  	def maker_params
    params.require(:maker).permit(:name, :address, :url_address, :prefecture_id)
  end
end
