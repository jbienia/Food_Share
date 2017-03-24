class Meal < ApplicationRecord
  belongs_to :category
  has_attached_file :image

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  #validates_attachment_file_name :image, :matches => [/_\d+_\d+_\d+\.bin$/]
  #validates_uniqueness_of :image_file_name # this is a standard ActiveRecord validator
end
