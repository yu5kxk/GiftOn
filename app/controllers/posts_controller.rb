class PostsController < ApplicationController
  # before_action :user_or_manager_signed_in?, only:[:edit, :update, :destroy]
  before_action :authenticate_user!, only:[:new, :create]

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def index
    @posts = Post.all
    @scenes = SmallScene.all
    @categories = SmallCategory.all
    @q = Post.ransack(params[:q])
    @search_posts = @q.result(distinct: true)
  end

  def top
    @large_scenes = LargeScene.all
    @small_scenes = SmallScene.all
    @large_categories = LargeCategory.all
    @small_categories = SmallCategory.all
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to new_post_post_image_path(@post.id)
    else
      render :new
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    post = Post.find_by(id: params[:id])
    post.update(post_params)
    redirect_to new_post_post_image_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end


private
  def post_params
    params.require(:post).permit(:user_id, :stance_id, :gender_id, :age_id, :maker_name, :maker_address, :url_address, :prefecture_id, :small_category_id, :item_name, :item_price, :keeping_quality, :rating_feeling, :rating_looks, :rating_price, :rating_matching, :small_scene_id, :review)
  end

end
