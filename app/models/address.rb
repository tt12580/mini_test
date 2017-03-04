class Address < ApplicationRecord
  mount_uploader :image, PictureUploader
  # validates :image_src, presence: true
  validates :title, length: { maximum: 10 }
end
