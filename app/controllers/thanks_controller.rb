class ThanksController < ApplicationController
	before_action :authenticate_user!, only:[:create, :destroy]

	def create
		post = Post.find(params[:post_id])
    	thank = current_user.thanks.new(post_id: post.id)
    	thank.save
    	redirect_to post_path(post)
	end

	def destroy
		post = Post.find(params[:post_id])
    	thank = current_user.thanks.find_by(post_id: post.id)
    	thank.destroy
    	redirect_to post_path(post)
	end
end
