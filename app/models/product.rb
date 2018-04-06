class Product < ApplicationRecord
  belongs_to :category
  belongs_to :manufacturer
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :name, uniqueness: true
end
