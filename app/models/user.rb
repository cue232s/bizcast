class User < ActiveRecord::Base
  attr_accessible :birthday, :country, :email, :fname, :gender, :lname, :state, :username, :zip, :password, :password_confirmation

  acts_as_authentic

end
