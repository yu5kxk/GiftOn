class PostImagesController < ApplicationController
	before_action :authenticate_user!, only:[:new, :create]
	before_action :user_or_manager_signed_in?, only:[:edit, :update, :destroy]

	def new
		@post = Post.find(params[:post_id])
		@post_image = PostImage.new
		@post_images = PostImage.all
	end

	def create
		@post = Post.find(params[:post_id])
		@post_images = @post.post_images.new(post_image_params)
		@post_images.post_id = @post.id
		@post_images.save
		redirect_to new_post_post_image_path(@post.id)
	end

	def edit
		@post = Post.find(params[:post_id])
		@post_image = PostImage.new
		@post_images = PostImage.all
	end

	def update
		post_image = PostImage.find(params[:id])
		post_image.update(post_image_params)
		redirect_to new_post_post_image_path(@post.id)
	end

	def destroy
		@post = Post.find(params[:post_id])
		post_image = @post.post_images.find(params[:id])
		post_image.destroy
		redirect_to new_post_post_image_path(@post.id)
	end

	private
  	def post_image_params
    	params.require(:post_image).permit(:post_id, :image)
  	end

end
