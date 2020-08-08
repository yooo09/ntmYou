class Post < ApplicationRecord
  belongs_to :user
  has_many :addposts

  validates :keyword1, presence: true
  mount_uploader :image, ImageUploader
end
