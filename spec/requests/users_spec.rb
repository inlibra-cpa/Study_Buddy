require 'rails_helper'

RSpec.describe "Users", type: :request do
  #describe "GET /users" do
    #it "works! (now write some real specs)" do
      #get users_index_path
      #expect(response).to have_http_status(200)
    #end
  #end
  describe "get user_path" do
    it "redirects to the index path if the user id is invalid" do
      get user_path(id: 5000) #an ID that doesn't exist
      expect(response).to redirect_to 'http://www.example.com/users/sign_in'
    end
  end
end
