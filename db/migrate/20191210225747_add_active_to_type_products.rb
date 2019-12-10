class AddActiveToTypeProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :type_products, :active, :boolean
  end
end
