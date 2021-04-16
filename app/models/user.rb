class User < ApplicationRecord
  has_many :user_books
  has_many :books, through: :user_books

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end
