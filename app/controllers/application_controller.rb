class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 def current_user
    @current_user ||= User.find_by_id(session[:user_id])
    
  end

  helper_method :current_user
  
  def is_authenticated
    redirect_to root_url unless current_user
  end

end
