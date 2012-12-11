class UserSessionsController < ApplicationController
  def new
  	@user_session = UserSession.new
  end

  def create
  	@user_session = UserSession.new(params[:user_session])

  	if @user_session.save
  		flash[:notice] = "Welcome to BizCast"
  		redirect_to root_path
  	else
  		flash[:notice] = "Sorry we could not log you ass in."
  		render :new
  	end
   end

  def destroy
  	current_user_session && current_user_session.destroy
  	flash[:notice] = "You are now logged out"
  	redirect_to cards_url
  end

end
