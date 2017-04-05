class MonetizeMeal < ActiveRecord::Migration[5.0]
  def change
      add_monetize :meals, :cost
  end
end
