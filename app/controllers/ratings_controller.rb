class RatingsController < ApplicationController
	def create
		rating = Rating.new(rating_params)
		rating.save
		redirect_to new_post_path
	end

	def update
		rating = Rating.find(params[:id])
		rating.update(rating_params)
		redirect_to
	end

	private
  		def rating_params
    	params.require(:rating).permit(:post_id, :feeling, :looks, :price, :scene_matching)
  	end
end
