require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:user) { User.create!(email: "user@bloc.com", password: "password") }
  let(:wiki) { Wiki.create!(title: "New Wiki Title", body: "New Wiki body", user: user) }

  # it { is_expected.to belong_to(:user) }
  #
  # it { is_expected.to validate_presence_of(:title) }
  # it { is_expected.to validate_presence_of(:body) }
  # it { is_expected.to validate_presence_of(:user) }

  describe "attributes" do
    it "has title, body, and user attribute" do
      expect(wiki).to have_attributes(title: "New Wiki Title", body: "New Wiki body", user: user)
    end
  end
end
