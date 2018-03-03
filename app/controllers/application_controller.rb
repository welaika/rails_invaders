class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :user_signed_in?

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue StandardError
    nil
  end

  def user_signed_in?
    return true if current_user
  end

  def authenticate_user!
    redirect_to root_url, alert: 'You need to sign in to access this page.' unless current_user
  end
end
