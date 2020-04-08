require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  it "redirected if not logged in" do
    user = FactoryBot.create :user
    sign_in user
    get :index
    assert_response :redirect
  end
end
