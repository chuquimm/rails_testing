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

require 'rails_helper'

RSpec.describe TypeProduct, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
