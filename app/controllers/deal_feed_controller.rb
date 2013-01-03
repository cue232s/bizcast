class DealFeedController < ApplicationController
  before_filter :user_access, :except => [:private]
  
  def public
  	@deals = Card.all
  end

  def private
  end



	protected 
  #if there is no user, show public feed
	def user_access
		if !current_user
		  return true
		#if there is a user logged in, show private feed.
		else
		  redirect_to deal_feed_private_path
		end
	end

end
