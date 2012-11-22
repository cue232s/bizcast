class Card < ActiveRecord::Base
  attr_accessible :business_name, :message_description, :message_title, :user_id, :photo
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
