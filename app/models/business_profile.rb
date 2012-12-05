class BusinessProfile < ActiveRecord::Base
  attr_accessible :address, :business_name, :country_code, :description, :email, :phone, :state, :user_id, :zipcode
  belongs_to :user

  def cards #method which relates cards to business profiles
  	self.user.cards
  end

end
