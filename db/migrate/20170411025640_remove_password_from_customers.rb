class RemovePasswordFromCustomers < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :password, :string
  end
end
