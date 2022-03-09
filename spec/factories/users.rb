require 'faker'
FactoryBot.define do
  factory :user do |f|
    f.email { 'admin@admin.com' }
    f.encrypted_password { 'pswrd123' }
  end
end