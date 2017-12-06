require "rails_helper"

RSpec.describe PagesController, type: :controller do
  it "index" do
    get :index
    expect(response).to have_http_status :success
  end
end
