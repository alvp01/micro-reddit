class User < ApplicationRecord
  validates :name, :email, :password, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }
  has_many :posts
  has_many :comments
end
