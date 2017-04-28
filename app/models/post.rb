class Post < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :title, presence: true
  validates :description, length: { minimum: 250 }
  validates :description, presence: true
end
