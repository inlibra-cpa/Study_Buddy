require 'rails_helper'

RSpec.describe Course, type: :model do
  it { should belong_to(:user) }
  
  it { should have_rich_text(:description) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:level) }
end
