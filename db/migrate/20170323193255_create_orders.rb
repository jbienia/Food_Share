class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :delivery_date

      t.timestamps
    end
  end
end
