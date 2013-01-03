class User < ActiveRecord::Base
  attr_accessible :birthday, :country, :email, :fname, :gender, :lname, :state, :username, :zip, :password, :password_confirmation
  has_one :business_profile
  has_many :cards
  has_many :authentications


  acts_as_authentic do |c|
    c.login_field = :email
  end

	def apply_omniauth(omniauth)
		#e = omniauth['user_info']['email']
	  #self.email = e if e && email.blank?
    self.username = omniauth['info']['nickname']
    #build 
	  authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
	end

end
