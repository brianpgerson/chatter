class Message < ActiveRecord::Base
  validates :body, presence: true, length: { maximum: 141 }

  has_many :taggings

  has_many :hashtags, through: :taggings, source: :hashtag

  def extract_hashtags
    self.body.scan(/\#\w*/)
  end

end
