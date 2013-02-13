require 'debugger'; debugger
class User < ActiveRecord::Base
  attr_accessible :birthday, :country, :email, :fname, :gender, :lname, :state, :username, :zip, :password, :password_confirmation
  has_one :business_profile
  has_many :cards
  has_many :authentications


  acts_as_authentic do |c|
    c.login_field = :email
  end

	def apply_omniauth(omniauth)
    debugger
	  self.email = omniauth['info']['email'] if omniauth['provider'] == 'facebook'
    self.username = omniauth['info']['nickname'] if omniauth['provider'] == 'twitter'
	  authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
	end

end
