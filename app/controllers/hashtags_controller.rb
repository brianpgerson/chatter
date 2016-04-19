class HashtagsController < ApplicationController

  def show
    @hashtag = Hashtag.find(params[:id])
    @messages = @hashtag.messages
    render :show
  end

end
