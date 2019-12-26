class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :admin_id
      t.string :password_digest
      t.string :name
      t.boolean :root, default: false

      t.timestamps
    end
  end
end
