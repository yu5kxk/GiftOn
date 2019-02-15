class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all
  end

  def index
    @users = User.all
  end

  def lnquiry
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to posts_top_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end

  def unsubscribe
    user = User.find(params[:id])
    user.deleted_user = 1
    user.save
    if user_signed_in?
      reset_session
      redirect_to posts_top_path, alert: '退会しました。'
    elsif manager_signed_in?
      redirect_to users_path, notice: '会員の退会処理が完了しました'
    end
  end



  private
    def user_params
    params.require(:user).permit(:name, :gender_id, :birth, :image, :deleted_user, :email, :introduction)
  end
end
