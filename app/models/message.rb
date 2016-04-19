class Message < ActiveRecord::Base
  validates_presence_of :body

  has_many :taggings

  has_many :hashtags, through: :taggings, source: :hashtag

  def extract_hashtags
    self.body.scan(/\#\w*/)
  end

end
