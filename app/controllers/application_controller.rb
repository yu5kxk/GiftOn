class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search
  # root
  def after_sign_in_path_for(resource)
    if manager_signed_in?
      managers_menu_path
    elsif user_signed_in?
      user_path(current_user.id)
    end
  end

  # キーワード検索
  def set_search
    @search = Post.ransack(params[:q])
    @search_posts = @search.result(distinct: true)
  end

  # バリデーション
  def user_or_manager_signed_in?
    if user_signed_in?
    elsif manager_signed_in?
    else
      redirect_to new_user_session_path, alert: 'ログインしてください。'
    end
  end

  def post_user_sugned_in?
    @post = Post.find(params[:id])
    if manager_signed_in?
    elsif current_user != @post.user
      redirect_to root_path
    else
    end
  end

  def post_image_user_sugned_in?
    @post = Post.find(params[:post_id])
    if manager_signed_in?
    elsif current_user != @post.user
      redirect_to root_path
    else
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:birth])
  end

  def post_params
    params.require(:post).permit(:user_id, :stance_id, :gender_id, :age_id, :maker_name, :maker_address, :url_address, :prefecture_id, :small_category_id, :item_name, :item_price, :keeping_quality, :rating_feeling, :rating_looks, :rating_price, :rating_matching, :small_scene_id, :review)
  end
end
