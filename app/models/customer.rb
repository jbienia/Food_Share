# Customer Mode
class Customer < ApplicationRecord
  has_many :orders
  belongs_to :province
  validates :full_name, :address, :city, :email, presence: true
  validates :user_name, uniqueness: true
  # validates :password, length: { minimum: 6 }
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
  attr_accessor :password
  before_save :encrypted_password
  validates_confirmation_of :password

def encrypted_password
  if password.present?
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
end

end
end
