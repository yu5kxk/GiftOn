class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def lnquiry
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to
  end

  private
    def user_params
    params.require(:user).permit(:name, :gender_id, :birth, :image_id, :deleted_user, :email)
  end
end
