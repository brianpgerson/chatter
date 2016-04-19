class CreateHashtags < ActiveRecord::Migration

  add_index :hashtags, :hashtag
  add_index :hashtags, :message_id

end
