class AddAttachmentImageToStashes < ActiveRecord::Migration
  def self.up
    change_table :stashes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :stashes, :image
  end
end
