class PostsController < ApplicationController
  def new
    @post = Post.new
    @post.post_images.build
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def index
    @posts = Post.all
  end

  def top
  end

  def create
    post = Post.new(product_params)
    post.save
    redirect_to
  end

  def edit
    @post = post.find_by(id: params[:id])
  end

  def update
    post = Post.find(post_params[:id])
    post.update(post_params)
    redirect_to
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to
  end


private
  def post_params
    params.require(:post).permit(:user_id, :stance_id, :item_id, :target_id, :s_scene_id, post_images_images: [])
  end
end