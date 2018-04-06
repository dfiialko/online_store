class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  mount_uploader :image, ImageUploader
  has_many :manufacturer_categories, dependent: :destroy
  has_many :manufacturers, through: :manufacturer_categories, dependent: :destroy
  accepts_nested_attributes_for :manufacturer_categories, allow_destroy: true
  validates :name, presence: true, uniqueness: true
end
