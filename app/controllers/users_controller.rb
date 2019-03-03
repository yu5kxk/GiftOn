class UsersController < ApplicationController
  before_action :authenticate_manager!, only:[:index]
  before_action :user_or_manager_signed_in?, only:[:edit, :update, :unsubscribe]


  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).reverse_order
  end

  def index
    @users = User.all
  end

  def lnquiry
    if user_signed_in?
      @user = User.find(params[:id])
    else
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to posts_top_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def unsubscribe
    user = User.find(params[:id])
    user.deleted_user = 1
    user.save
    if user_signed_in?
      reset_session
      redirect_to posts_top_path, alert: '退会しました。'
    elsif manager_signed_in?
      redirect_to users_path, alert: '退会処理が完了しました。'
    end
  end



  private
    def user_params
    params.require(:user).permit(:name, :gender_id, :birth, :image, :deleted_user, :email, :introduction)
  end
end
