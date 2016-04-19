require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe 'GET #show' do
    it "renders the show page" do
      get :show
      expect(response).to be_success
      expect(response).to render_template(:show)
    end
  end


end
