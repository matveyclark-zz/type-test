class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?

  # Helper method to get logged in user
  def current_user
    User.find_by(id: session[:user_id])
  end

  # Helper method for conditional logic if User is logged in
  def logged_in?
    !current_user.nil?
  end
end
