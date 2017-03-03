class Address < ApplicationRecord
  mount_uploader :image, PictureUploader
  # validates :name, presence: true
  validates :title, length: { maximum: 10 }
end
