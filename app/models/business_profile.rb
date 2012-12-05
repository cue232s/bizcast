class BusinessProfile < ActiveRecord::Base
  attr_accessible :address, :business_name, :country_code, :description, :email, :phone, :state, :user_id, :zipcode
end
