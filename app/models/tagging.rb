class Tagging < ActiveRecord::Base
  validates_presence_of :message_id, :hashtag_id

  belongs_to :hashtag
  belongs_to :message

end
