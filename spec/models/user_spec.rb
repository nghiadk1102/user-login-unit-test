require "rails_helper"

RSpec.describe User, type: :model do
  let(:database_authenticatable) {Class.new {include User}}
  let(:registerable) {Class.new {include User}}
  let(:recoverable) {Class.new {include User}}
  let(:rememberable) {Class.new {include User}}
  let(:trackable) {Class.new {include User}}
  let(:validatable) {Class.new {include User}}

  context "test model" do
    let!(:user){FactoryGirl.create :user, email: "nghiadk@gmail.com"}
    it{expect(User.find_user(user.id)).to eq(user)}
  end
end
