class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  def current_user
  @current_user ||= fetch_user(session[:user_id])
  end

  def fetch_user(id)
    User.find_by_id(id) || reset_session unless id.nil?
  end

  helper_method :current_user

  def ensure_logged_in
    unless current_user
      flash[:alert] = "Please log in"
      redirect_to new_session_url
    end
  end
end
