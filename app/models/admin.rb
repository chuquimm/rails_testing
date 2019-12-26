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

class Admin < ApplicationRecord
  strip_attributes only: %i[admin_id name]
  has_secure_password

  validates :admin_id, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true

  default_scope { order(:name) }
end
