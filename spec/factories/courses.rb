require 'faker'
FactoryBot.define do
  factory :course do |f|
    f.title { 'goodtitle' }
    f.description { 'baddescription' }
    f.price { 1 }
  end
end