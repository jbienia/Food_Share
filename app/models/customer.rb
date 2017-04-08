# Customer Mode
class Customer < ApplicationRecord
  has_many :orders
  belongs_to :province
  validates :full_name, :address, :city, :email, presence: true
  validates :user_name, uniqueness: true
  # validates :password, length: { minimum: 6 }
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
end
