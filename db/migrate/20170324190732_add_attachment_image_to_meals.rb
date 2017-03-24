class AddAttachmentImageToMeals < ActiveRecord::Migration
  change_table :meals do |t|
    t.remove :image
  end

  def self.up
    change_table :meals do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :meals, :image
  end
end
