class Manufacturer < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :manufacturer_categories, dependent: :destroy
  has_many :categories, through: :manufacturer_categories, dependent: :destroy
  accepts_nested_attributes_for :manufacturer_categories, allow_destroy: true
  validates :name, presence: true, uniqueness: true
end
