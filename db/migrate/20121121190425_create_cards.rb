class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :business_name
      t.integer :user_id
      t.string :message_title
      t.text :message_description

      t.timestamps
    end
  end
end
