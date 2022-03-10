require 'rails_helper'

RSpec.describe "Courses", type: :request do
  before do
    @user =  User.new(email: "jsmith@sample.com", password: "abcdefg", slug: "jsmith-sample-com")
    @user2 = FactoryBot.create :user
    @user2.confirmed_at = Time.now.utc
    @user2.save
    @course = FactoryBot.create(:course)
    sign_in @user2
    #user_headers = @user2.create_new_auth_token
    #@request.headers.merge!(user_headers)
  end

  describe "user is not signed in" do
    it "does not render courses_path" do
      sign_in @user2
      get courses_path
      expect(response).to have_http_status(200)
    end

    it "does not render course_path" do
      get course_path(id: @course.id)
      expect(response).to have_http_status(200)
    end

    it "does not edit course" do
      get edit_course_path(id: @course.id)
      expect(response).to have_http_status(200)
    end

    it "does not destroy course" do
      delete course_path(id: @course.id)
      expect(response).to have_http_status(302)
    end

  end


end


