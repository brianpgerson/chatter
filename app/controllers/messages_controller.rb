require 'byebug'
class MessagesController < ApplicationController

  def index
    @messages = Message.all.order(created_at: :desc)
    @hashtags = Hashtag.all.order(count: :desc)
    render :index
  end

end
