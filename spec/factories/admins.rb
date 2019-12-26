# == Schema Information
#
# Table name: admins
#
#  id              :bigint           not null, primary key
#  admin_id        :string(255)
#  password_digest :string(255)
#  name            :string(255)
#  root            :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :admin do
    admin_id { "MyString" }
    password_digest { "MyString" }
    name { "MyString" }
    root { false }
  end
end
