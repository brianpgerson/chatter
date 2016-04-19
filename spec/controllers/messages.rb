require 'byebug'
require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe 'GET #index' do
    it "renders the messages index page" do
      get :index
      expect(response).to be_success
      expect(response).to render_template(:index)
    end
  end


end
