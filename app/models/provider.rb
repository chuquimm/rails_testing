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
class Provider < ApplicationRecord
  belongs_to :country

  strip_attributes only: %i[name]

  validates :name, presence: true

  default_scope { order(:name) }
end
