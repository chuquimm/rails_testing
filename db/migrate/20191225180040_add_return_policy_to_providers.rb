class AddReturnPolicyToProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :return_policy, :text
  end
end
