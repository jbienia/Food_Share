class AddUserNameColumnToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :user_name, :string
  end
end
