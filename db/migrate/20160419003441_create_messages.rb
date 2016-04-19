class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body, null: false, limit: 141
      t.timestamps null: false
    end

    create_table :hashtags do |t|
      t.string :hashtag, null: false
      t.integer :message_id, null: false
      t.timestamps null: false
    end
  end
end
