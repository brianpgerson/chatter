class Hashtag < ActiveRecord::Base
  validates_presence_of :hashtag

  has_many :taggings

  has_many :messages, through: :taggings, source: :message

  def self.update_hashtags(hashtags, message_id)
    hashtags.each do |htext|
      @hashtag = Hashtag.find_by_hashtag(htext)
      if @hashtag
        count = @hashtag[:count]
        @hashtag.update({count: (count + 1)})
        Tagging.create({message_id: message_id, hashtag_id: @hashtag.id})
      else
        @hashtag = Hashtag.new({hashtag: htext, count: 1})
        if @hashtag.save
          Tagging.create({message_id: message_id, hashtag_id: @hashtag.id})
        end
      end
    end
  end



end
