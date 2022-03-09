require 'rails_helper'

RSpec.describe CoursesController, type: :request do
  describe "get courses_path" do
    it "renders the index view" do
      FactoryBot.create_list(:courses, 10)
      get courses_path
      expect(response).to render_template(:index)
    end
  end

  