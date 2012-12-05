class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.string :business_name
      t.string :address
      t.string :zipcode
      t.string :state
      t.string :country_code
      t.text :description
      t.string :email
      t.string :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
