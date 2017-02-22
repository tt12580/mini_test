class Address < ApplicationRecord
  validates :name, presence: true
  validates :title, length: { maximum: 10 }
end
