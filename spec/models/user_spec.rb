require 'rails_helper'
RSpec.describe User, type: :model do
  subject { User.new( password: "8889995678", email: "jsmith@sample.com", id: 5 )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without an email" do
    subject.email=nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password=nil
    expect(subject).to_not be_valid
  end

  #it "has many courses" do 
    #course1 = Course.new(title: "Medicine 101", description: "You can do it", user_id: 5, slug: "bbb", short_description: "dddghgghg", language: "English", level: "Beginner", price: 0 )
    #course2 = Course.new(title: "Medicine 201", description: "You can do that", user_id: 5, slug: "bbob", short_description: "dddgghg", language: "English", level: "Beginner", price: 0 )
    #subject.reload
    #expect(subject.courses).to eq [course1, course2]
   #end

end