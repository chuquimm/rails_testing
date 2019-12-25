# == Schema Information
#
# Table name: providers
#
#  id                 :bigint           not null, primary key
#  name               :string(255)
#  country_id         :bigint           not null
#  active             :boolean          default(TRUE)
#  delivery_condition :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  return_policy      :text(65535)
#

FactoryBot.define do
  factory :provider do
    name { "MyString" }
    country { nil }
    active { false }
    delivery_condition { "MyText" }
  end
end
