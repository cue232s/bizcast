class Card < ActiveRecord::Base
  attr_accessible :business_name, :message_description, :message_title, :user_id
end
