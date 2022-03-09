require 'faker'
FactoryBot.define do
  factory :users do |f|
    f.encrypted_password { Faker::Number.number(digits: 10) }
    f.email { Faker::Internet.email }
  end
end