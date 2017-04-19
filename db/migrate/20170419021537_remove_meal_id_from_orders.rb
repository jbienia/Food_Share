class RemoveMealIdFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :meal_id, :integer
  end
end
