class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user_session, :current_user

  protected 

    def confirm_logged_in
    unless current_user
      flash[:notice] = "Please log in."
      redirect_to new_user_session_path
      return false # halts the before_filter
    else
      return true
    end
  end

  private

  def current_user_session
  	return @current_user_session if defined?(@current_user_session)
  	@current_user_session = UserSession.find
  end

  def current_user
  	return @current_user if defined?(@current_user)
  	@current_user = current_user_session && current_user_session.user
  end
end

