# The Order Model
class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :meal

  validates :delivery_date, presence: true
end
