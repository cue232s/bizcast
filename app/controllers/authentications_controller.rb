class AuthenticationsController < ApplicationController

	def index
		@authentications = current_user.authentications if current_user
	end	

	def create
		# return render :text => session.inspect
	  omniauth = request.env["omniauth.auth"] || session[:omniauth]
	  # return render :text => session.inspect
	  authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
	   return render :text => session.inspect
	  if authentication #if user has an authentication via omniauth
	  	user = authentication.user
	    flash[:notice] = "Signed in successfully."
	    session[:omniauth] = nil
      session = UserSession.create(user)
      redirect_to root_url
	  # elsif current_user #if user is already logged in and wanting to create authentication through omniauth
	  #   current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'])
	  #   flash[:notice] = "Authentication successful."
	  #   redirect_to root_url
	  else #if new user wants to get authenticated
	  	 return render :text => session.inspect
	    @user = !session[:omniauth] ? User.new : User.new(params[:user]) if session
	    @user = User.new unless @user
	    @user.apply_omniauth(omniauth)
	    if @user.save
	      flash[:notice] = "Signed in successfully."
	      session[:omniauth] = nil
	      session = UserSession.new(@user)
	      redirect_to root_url
	    else #if user does not have email address or username ask for it.
	    	@user
	      session[:omniauth] = omniauth.except('extra')
	      render :add_details
	    end
  	end
  end




	def destroy
	  @authentication = current_user.authentications.find(params[:id])
	  @authentication.destroy
	  flash[:notice] = "Successfully destroyed authentication."
	  redirect_to authentications_url
	end
 end
