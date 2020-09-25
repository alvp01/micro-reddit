class Post < ApplicationRecord
  belongs_to :user
  has_many :comment
end
