# == Schema Information
#
# Table name: type_products
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  active      :boolean
#

FactoryBot.define do
  factory :type_product do
    name { "MyString" }
    description { "MyString" }
  end
end
