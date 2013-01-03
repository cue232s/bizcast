#change the users table to allow nil values for fname and lname  to allow for authentication from social networks.
class ChangeUserTable < ActiveRecord::Migration
  def up
  	change_column :users, :fname, :string, :null => true
  	change_column :users, :lname, :string, :null => true
  end

  def down
  	change_column :users, :fname, :string, :null => false
   	change_column :users, :lname, :string, :null => false
  end
end
