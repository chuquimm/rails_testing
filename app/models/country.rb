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
class Country < ApplicationRecord
  strip_attributes only: %i[country_id name]

  validates :country_id, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  default_scope { order(:name) }
end
