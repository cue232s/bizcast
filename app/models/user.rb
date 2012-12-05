class User < ActiveRecord::Base
  attr_accessible :birthday, :country, :email, :fname, :gender, :lname, :state, :username, :zip, :password, :password_confirmation
  has_one :business_profile
  has_many :cards


  acts_as_authentic do |c|
    c.login_field = :email
  end
end
