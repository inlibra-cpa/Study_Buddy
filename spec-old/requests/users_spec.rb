require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "get users_path" do
    it "renders the index view" do
      FactoryBot.create_list(:user, 10)
      get users_path
      expect(response).to render_template(:index)
    end
  end

  describe "get user_path" do
    it "renders the :show template" do
      user = FactoryBot.create(:user)
      get user_path(id: user.id)
      expect(response).to render_template(:show)
    end
    it "redirects to the users_path if the user roles were successfully updated" do
      get users_path(id: 5000) #an ID that doesn't exist
      expect(response).to redirect_to users_path
    end
  end

  describe "put user_path with invalid data" do
    it "does not update the user record or redirect"
 do
      user = FactoryBot.create(:user)
      put user_path(user.id), params: {user: {id: "123"}}
      user.reload
      expect(user.id).not_to eq("123")
      expect(response).to render_template(:edit) 
    end
  end
end
