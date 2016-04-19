class HashtagsController < ApplicationController

  def index
  end
  
  def show
    @hashtag = Hashtag.find(params[:id])
    @messages = @hashtag.messages
    render :show
  end

end
