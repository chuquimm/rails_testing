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

require 'rails_helper'

RSpec.describe Admin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
