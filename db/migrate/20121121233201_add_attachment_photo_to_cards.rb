class AddAttachmentPhotoToCards < ActiveRecord::Migration
  def self.up
    change_table :cards do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :cards, :photo
  end
end
