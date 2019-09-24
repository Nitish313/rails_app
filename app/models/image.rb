class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :name, presence: true
end
