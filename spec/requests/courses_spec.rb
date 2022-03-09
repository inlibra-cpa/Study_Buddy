require 'rails_helper'

RSpec.describe "Courses", type: :request do
  before do
    @user =  User.new(id: nil, email: "jsmith@sample.com", password: "abcdefg", created_at: nil, updated_at: nil, slug: "jsmith-sample-com")
  end

  describe "user is not signed in" do
    it "does not render courses_path" do
      get courses_path
      expect(response).to have_http_status(302)
    end

    it "does not render curse_path" do
      get course_path(id: 5)
      expect(response).to have_http_status(302)
    end

    it "does not destroy course" do
      delete course_path(id: 6)
      expect(response).to have_http_status(302)
    end

    it "does not edit course" do
      get edit_course_path(id: 7)
      expect(response).to have_http_status(302)
    end

  end


end


