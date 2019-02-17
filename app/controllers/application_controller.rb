class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def set_search
	#@search = Post.search(params[:q])
	@search = Post.ransack(params[:q]) #ransackメソッド推奨
  p @serch
	@search_posts = @search.result #page(params[:page])
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:birth])
  end
end
