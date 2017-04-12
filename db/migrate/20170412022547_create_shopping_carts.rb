class CreateShoppingCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_carts do |t|
      t.integer :meal
      t.integer :quantity
      t.integer :customer

      t.timestamps
    end
  end
end
