class Post < ApplicationRecord
  belongs_to :user

  validates :keyword1, presence: true
  mount_uploader :image, ImageUploader
end
