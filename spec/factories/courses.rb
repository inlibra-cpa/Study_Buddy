require 'faker'
FactoryBot.define do
  factory :course do |f|
    f.association :user
    f.title { 'goodtitle' }
    f.description { 'baddescription' }
    f.short_description { 'baddescription' }
    f.price { 1 }
  end
end