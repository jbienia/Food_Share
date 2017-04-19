# The Order Model
class Order < ApplicationRecord
  belongs_to :customer
  
  validates :delivery_date, presence: true
end
