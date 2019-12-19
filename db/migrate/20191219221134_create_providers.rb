# frozen_string_literal: true

# Providers Migration
class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.references :country, null: false, foreign_key: true
      t.boolean :active, default: true
      t.text :delivery_condition

      t.timestamps
    end
  end
end
