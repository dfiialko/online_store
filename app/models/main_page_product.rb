class MainPageProduct < ApplicationRecord
  has_many :products, dependent: :destroy
end
