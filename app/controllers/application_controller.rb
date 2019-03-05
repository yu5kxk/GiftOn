class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def after_sign_in_path_for(resource)
    if manager_signed_in?
      managers_menu_path
    elsif user_signed_in?
      user_path(current_user.id)
    end
  end


  def set_search
    @search = Post.ransack(params[:q])
    @search_posts = @search.result(distinct: true)
  end

  def user_or_manager_signed_in?
    if user_signed_in?
    elsif manager_signed_in?
    else
      redirect_to new_user_session_path, alert: 'ログインしてください。'
    end
  end


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:birth])
  end
end
