class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :description, presence: true
end
