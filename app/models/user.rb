class User < ActiveRecord::Base
  attr_accessible :Birthday, :Country, :Email, :Fname, :Gender, :Lname, :State, :Username, :Zip
end
