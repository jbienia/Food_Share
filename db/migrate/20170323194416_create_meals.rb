class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :description
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
