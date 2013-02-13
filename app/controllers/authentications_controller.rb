class AuthenticationsController < ApplicationController

	def index
		@authentications = current_user.authentications if current_user
	end	

	def create
	  omniauth = request.env["omniauth.auth"] #|| session[:omniauth]
	  # check to see if authentication already exist
	  authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
	  if authentication 
	  	#if user has an authentication via omniauth
	    flash[:notice] = "Signed in successfully."
    	UserSession.create(authentication.user)
      redirect_to root_url
	  elsif current_user 
	  	#if user is already logged in and wanting to create authentication through omniauth
	    current_user.authentications.create(:provider => omniauth['provider'], :uid => omniauth['uid'])
	    current_user.save
	    flash[:notice] = "Authentication successful."
	    redirect_to root_url
	  else
	  	#if new user wants to get authenticated
	    @user = User.new
	    @user.apply_omniauth(omniauth)
	    if @user.save
	      flash[:notice] = "Signed in successfully."
	      session = UserSession.new(@user)
	      redirect_to root_url
	    else #if user does not have email address or username ask for it.
	    	#return render :text => "#{@user.as_json}   #{@user.authentications.as_json}"
	    	@user
	      #session[:omniauth] = omniauth.except('extra')
	      render :add_details
	    end
  	end
  end

  def add_detail
  	auth = request.session
  	user = User.new(params[:user])
  	user.apply_omniauth(request.session['ouath'])
  	if user.save
  		render :text => user.id
  	end

  	#render :text => request.session #user.valid? #request.session.inspect #params[:user]
  end	




	def destroy
	  @authentication = current_user.authentications.find(params[:id])
	  @authentication.destroy
	  flash[:notice] = "Successfully destroyed authentication."
	  redirect_to authentications_exit

exit
exit
?
t

z
x
xi
exit
stop
:qw
:q
:w
eixt
end
;
EndEdit
EditEnd
End
exit
end
stop
exit
quit
sotp
c
c
xt
t
exit
t
t
t
t
t

