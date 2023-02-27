# frozen_string_literal: true

Ransack.configure do |c|
  c.non_searchable_attributes = %i[encrypted_password password]
end
