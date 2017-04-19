class AddMealsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :meals, :string
  end
end
