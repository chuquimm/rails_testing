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

require 'rails_helper'

RSpec.describe Provider, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
