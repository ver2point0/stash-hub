class AddUserIdToStashes < ActiveRecord::Migration
  def change
    add_column :stashes, :user_id, :integer
    add_index :stashes, :user_id
  end
end
