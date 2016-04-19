require 'rails_helper'

RSpec.describe Message, :type => :model do
  let(:message) { FactoryGirl.build(:message) }
  let(:too_long) { FactoryGirl.build(:too_long) }
  let(:no_body) { FactoryGirl.build(:no_body) }

  context "when no body" do
    it "should require a body" do
      expect(no_body).not_to be_valid
    end
  end

  context "when body is too too long" do
    it "should require that password.length < 141" do
      expect(too_long).not_to be_valid
    end
  end

  context "awesome message is valid" do
    it "should be valid with a valid body length" do
      expect(message).to be_valid
    end
  end

end
