class DealFeedController < ApplicationController
  before_filter :user_access, :except => [:private]
  
  def public
  	@deals = Card.all
  end

  def private
  end



	protected 

	def user_access
		if !current_user
		  return true
		else
		  redirect_to deal_feed_private_path
		end
	end

end
