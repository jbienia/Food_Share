class AddCustomerRefToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :customer, foreign_key: true
  end
end
