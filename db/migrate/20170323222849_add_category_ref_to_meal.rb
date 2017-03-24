class AddCategoryRefToMeal < ActiveRecord::Migration[5.0]
  def change
    add_reference :meals, :category, foreign_key: true
  end
end
