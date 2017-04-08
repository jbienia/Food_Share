class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.string :company_history
      t.string :vision_statement

      t.timestamps
    end
  end
end
