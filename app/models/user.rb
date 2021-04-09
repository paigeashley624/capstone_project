class User < ApplicationRecord
  has_many :book_users
  has_many :books, through: :book_users

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end
