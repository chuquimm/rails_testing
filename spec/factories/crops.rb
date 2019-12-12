# == Schema Information
#
# Table name: crops
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :crop do
    name { "MyString" }
  end
end
