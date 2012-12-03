class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Email
      t.string :Fname
      t.string :Lname
      t.string :Username
      t.string :Gender
      t.string :State
      t.string :Zip
      t.string :Country
      t.string :Birthday

      t.timestamps
    end
  end
end
