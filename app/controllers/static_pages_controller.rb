class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home_page]
  def home_page
    @courses = Course.all.limit(3)
    @latest_couses = Course.all.limit(3).order(created_at: :desc)
  end

  def activity
    @activities = PublicActivity::Activity.all
  end

end
