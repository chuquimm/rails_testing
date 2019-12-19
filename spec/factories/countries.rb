# == Schema Information
#
# Table name: countries
#
#  id         :bigint           not null, primary key
#  country_id :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :country do
    country_id { "MyString" }
    name { "MyString" }
  end
end
