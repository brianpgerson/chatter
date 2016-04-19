class ChangeHashtagStructure < ActiveRecord::Migration
  def change
    remove_column :hashtags, :message_id

    create_table :taggings do |t|
      t.integer :message_id, null: false
      t.integer :hashtag_id, null: false
      t.timestamps null: false
    end

    add_index :taggings, :message_id
    add_index :taggings, :hashtag_id


  end
end
