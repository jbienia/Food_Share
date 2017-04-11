class AddColumnsToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :password_hash, :string
    add_column :customers, :password_salt, :string
  end
end
