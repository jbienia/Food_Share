# Meal Mode
class Meal < ApplicationRecord
  belongs_to :category
  has_attached_file :image,
                    url: ':rails_root/app/assets/images/:basename.:extension'
                  #  path: ':rails_root/public/assets/:basename.:extension'
  validates :description, :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

  # Displays the description column name of a meal in the timeoutable
  # Used especially because i have a column name called description
  # and not name
  def name
    title
  end
end
