class CreateStashes < ActiveRecord::Migration
  def change
    create_table :stashes do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
