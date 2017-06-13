require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: "user@bloc.com", password: "password") }

  describe "attributes" do
    it "has an email and password attribute" do
      expect(user).to have_attributes(email: "user@bloc.com", password: "password")
    end
  end
end
