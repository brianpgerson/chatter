require 'byebug'
class Api::MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    hashtags = @message.extract_hashtags
    if @message.save
      Hashtag.update_hashtags(hashtags, @message.id)
      redirect_to :messages
    else
      render json: {errors: @message.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
