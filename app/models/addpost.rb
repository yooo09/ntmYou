class Addpost < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :keyword4, presence: true
end
