require 'faker'
FactoryBot.define do
  factory :course do |f|
    f.email { Faker::Internet.email }
  end
end