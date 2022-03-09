require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(id: nil, email: "jsmith@sample.com", password: "abcdefg", created_at: nil, updated_at: nil, slug: "jsmith-sample-com" )}
it "is valid with valid attributes" do
  expect(subject).to be_valid
end
it "is not valid without an email" do
  subject.email=nil
  subject.password=nil
  expect(subject).to_not be_valid
end

  describe 'validations' do
    #it { should validate_presence_of(:email) }
    #it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_confirmation_of(:password) }
  end
end

