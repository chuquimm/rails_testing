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

require 'rails_helper'

RSpec.describe Country, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
