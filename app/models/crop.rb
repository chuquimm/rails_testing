# frozen_string_literal: true

# == Schema Information
#
# Table name: crops
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Crop < ApplicationRecord
  strip_attributes only: %i[name]
  
  validates :name, presence: true
end
